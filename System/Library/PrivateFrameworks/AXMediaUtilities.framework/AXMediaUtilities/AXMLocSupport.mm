@interface AXMLocSupport
+ (id)sharedInstance;
- (BOOL)localeBaseLanguageIsEnglish:(id)english;
- (NSLocale)en_USLocale;
- (id)localeForLanguageCode:(id)code;
- (id)localeMatchingBaseLanguageOfLocale:(id)locale fromLocales:(id)locales;
@end

@implementation AXMLocSupport

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[AXMLocSupport sharedInstance];
  }

  v3 = sharedInstance__Shared_0;

  return v3;
}

void __31__AXMLocSupport_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXMLocSupport);
  v1 = sharedInstance__Shared_0;
  sharedInstance__Shared_0 = v0;
}

- (NSLocale)en_USLocale
{
  en_USLocale = self->_en_USLocale;
  if (!en_USLocale)
  {
    v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
    v5 = self->_en_USLocale;
    self->_en_USLocale = v4;

    en_USLocale = self->_en_USLocale;
  }

  return en_USLocale;
}

- (id)localeForLanguageCode:(id)code
{
  v3 = MEMORY[0x1E695DF58];
  v4 = [code stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v5 = [v3 localeWithLocaleIdentifier:v4];

  return v5;
}

- (BOOL)localeBaseLanguageIsEnglish:(id)english
{
  languageCode = [english languageCode];
  v4 = [languageCode isEqual:@"en"];

  return v4;
}

- (id)localeMatchingBaseLanguageOfLocale:(id)locale fromLocales:(id)locales
{
  v20 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  localesCopy = locales;
  v7 = [localesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(localesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        languageCode = [localeCopy languageCode];
        languageCode2 = [v10 languageCode];
        v13 = [languageCode isEqual:languageCode2];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [localesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end