@interface AXMLocSupport
+ (id)sharedInstance;
- (BOOL)localeBaseLanguageIsEnglish:(id)a3;
- (NSLocale)en_USLocale;
- (id)localeForLanguageCode:(id)a3;
- (id)localeMatchingBaseLanguageOfLocale:(id)a3 fromLocales:(id)a4;
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

- (id)localeForLanguageCode:(id)a3
{
  v3 = MEMORY[0x1E695DF58];
  v4 = [a3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v5 = [v3 localeWithLocaleIdentifier:v4];

  return v5;
}

- (BOOL)localeBaseLanguageIsEnglish:(id)a3
{
  v3 = [a3 languageCode];
  v4 = [v3 isEqual:@"en"];

  return v4;
}

- (id)localeMatchingBaseLanguageOfLocale:(id)a3 fromLocales:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v5 languageCode];
        v12 = [v10 languageCode];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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