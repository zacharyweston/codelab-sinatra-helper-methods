require 'sinatra'
# Top-level class documentation comment
class ZakWebApp < Sinatra::Base
  get '/' do
    erb :home
  end
  helpers do
    def icon_button(icon, type = 'default', message = '')
      %(
        <button type="#{type}" class="btn btn-default btn-lg">
          <span class="#{icon}" aria-hidden="true"></span> #{message}
        </button>
      )
    end

    def current_year
      Time.now.year
    end

    def pluralize(singular_name, count)
      if count == 1
        %(
          <h1>
            #{count} #{singular_name}
          </h1>
        )
      else
        %(
          <h1>
            #{count} #{singular_name}'s
          </h1>
        )
      end
    end

    def use_google_font(font)
      # fontName = font.gsub!(/\s/,'+')
      %(
        <style>
          p {
            font-family: #{font}, sans-serif;
          }
        </style>
        <p>#{font}</p>
      )
    end
  end
end
