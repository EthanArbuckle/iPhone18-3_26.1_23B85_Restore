@interface ADDictationProperties
- (BOOL)_getIsAutoPunctuationEnabled;
- (BOOL)_getIsDictationEnabled;
- (id)_getEnabledDictationLocales;
- (id)getODDDictationProperties;
@end

@implementation ADDictationProperties

- (BOOL)_getIsAutoPunctuationEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 dictationAutoPunctuationEnabled];

  return v3;
}

- (id)_getEnabledDictationLocales
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 enabledDictationLocales];

  v4 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        v12 = [v11 BOOLValue];

        if (v12)
        {
          v13 = objc_alloc_init(SISchemaLocaleIdentifier);
          v14 = [v10 componentsSeparatedByString:@"_"];
          if ([v14 count] == 2)
          {
            v15 = [v14 firstObject];
            [v13 setLanguageCode:v15];

            v16 = [v14 lastObject];
            [v13 setCountryCode:v16];
          }

          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_getIsDictationEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 dictationIsEnabled];

  return v3;
}

- (id)getODDDictationProperties
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[ADDictationProperties getODDDictationProperties]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  v4 = objc_alloc_init(ODDSiriSchemaODDDictationProperties);
  [v4 setIsDictationEnabled:{-[ADDictationProperties _getIsDictationEnabled](self, "_getIsDictationEnabled")}];
  v5 = [(ADDictationProperties *)self _getEnabledDictationLocales];
  [v4 setEnabledDictationLocales:v5];

  [v4 setIsAutoPunctuationEnabled:{-[ADDictationProperties _getIsAutoPunctuationEnabled](self, "_getIsAutoPunctuationEnabled")}];

  return v4;
}

@end