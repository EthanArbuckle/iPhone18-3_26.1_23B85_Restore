@interface AFLocalization
+ (id)effectiveGenderKeyForKey:(id)key gender:(int64_t)gender;
+ (id)sharedInstance;
- ($2AC1CA6B41BA5ED35C064565198F84D5)_voiceMaps;
- (AFLocalization)init;
- (id)_getVoiceOrdering;
- (id)_localizedStringForKey:(id)key tables:(id)tables localizations:(id)localizations bundle:(id)bundle;
- (id)_relevantTablesForTableName:(id)name tableExtension:(id)extension bundle:(id)bundle;
- (id)_voicesFromVoiceMapWithLanguage:(id)language;
- (id)allOutputVoiceIdentifiersForSiriLanguage:(id)language;
- (id)baseLocaleToDialectMapForLanguage:(id)language;
- (id)compactDisplayNameInLanguage:(id)language forSiriLanguage:(id)siriLanguage;
- (id)defaultOutputVoiceForSiriSessionLanguage:(id)language;
- (id)dialectForBaseLanguageCode:(id)code;
- (id)dialectsMap;
- (id)getBaseLocale:(id)locale;
- (id)getValidOutputVoiceWithDialects:(id)dialects;
- (id)loadInfoForVoicesWithLanguageCode:(id)code;
- (id)localizedGenderOfOutputVoice:(id)voice inDisplayLanguage:(id)language;
- (id)localizedNameOfOutputVoice:(id)voice inDisplayLanguage:(id)language;
- (id)localizedNameOfOutputVoiceWithIdentifier:(id)identifier inDisplayLanguage:(id)language;
- (id)localizedNameOfVoiceGender:(int64_t)gender inDisplayLanguage:(id)language;
- (id)localizedStringForKey:(id)key gender:(int64_t)gender table:(id)table bundle:(id)bundle languageCode:(id)code;
- (id)localizedStringFromCatalogForKey:(id)key gender:(int64_t)gender table:(id)table bundle:(id)bundle languageCode:(id)code defaultValue:(id)value;
- (id)localizedStringOrNilFromCatalogForKey:(id)key gender:(int64_t)gender table:(id)table bundle:(id)bundle languageCode:(id)code defaultValue:(id)value;
- (id)localizedUIUtteranceForKey:(id)key languageCode:(id)code;
- (id)longDisplayNameInLanguage:(id)language forSiriLanguage:(id)siriLanguage;
- (id)outputVoiceColorDescriptorForOutputLanguageCode:(id)code voiceName:(id)name;
- (id)outputVoiceComparator;
- (id)outputVoiceDescriptorForOutputLanguageCode:(id)code voiceName:(id)name;
- (id)voiceNamesForOutputLanguageCode:(id)code gender:(int64_t)gender;
- (id)voiceSimilarToVoice:(id)voice inSiriSessionLanguage:(id)language;
@end

@implementation AFLocalization

- (id)getValidOutputVoiceWithDialects:(id)dialects
{
  v57 = *MEMORY[0x1E69E9840];
  dialectsCopy = dialects;
  languageCode = [dialectsCopy languageCode];
  name = [dialectsCopy name];
  gender = [dialectsCopy gender];
  v7 = +[AFLocalization sharedInstance];
  v8 = [v7 allOutputVoiceIdentifiersForSiriLanguage:languageCode];

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v8;
  v35 = [v10 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (!v35)
  {

    v21 = v10;
    if (name)
    {
      [v9 containsObject:name];
    }

    v11 = 0;
    goto LABEL_29;
  }

  obj = v10;
  v31 = name;
  v32 = languageCode;
  v11 = 0;
  v34 = *v42;
  do
  {
    v12 = 0;
    do
    {
      if (*v42 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v36 = v12;
      v13 = *(*(&v41 + 1) + 8 * v12);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v14 = +[AFLocalization sharedInstance];
      v15 = [v14 voiceNamesForOutputLanguageCode:v13 gender:gender];

      v16 = [v15 countByEnumeratingWithState:&v37 objects:v55 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v38;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v37 + 1) + 8 * i);
            if (!v11)
            {
              v11 = [[AFVoiceInfo alloc] initWithLanguageCode:v13 gender:gender name:v20 footprint:2 isCustom:1];
            }

            [v9 addObject:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v37 objects:v55 count:16];
        }

        while (v17);
      }

      v12 = v36 + 1;
    }

    while (v36 + 1 != v35);
    v35 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
  }

  while (v35);
  v21 = obj;

  name = v31;
  if (v31)
  {
    languageCode = v32;
    if (([v9 containsObject:v31] & 1) != 0 || !v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
    languageCode = v32;
    if (!v11)
    {
LABEL_29:
      v27 = dialectsCopy;
      goto LABEL_30;
    }
  }

  name2 = [(AFVoiceInfo *)v11 name];

  if (name2 == v31)
  {
    goto LABEL_29;
  }

  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v24 = v23;
    name3 = [(AFVoiceInfo *)v11 name];
    languageCode2 = [(AFVoiceInfo *)v11 languageCode];
    *buf = 136316162;
    v46 = "[AFLocalization getValidOutputVoiceWithDialects:]";
    v47 = 2112;
    v48 = v31;
    v49 = 2112;
    v50 = languageCode;
    v51 = 2112;
    v52 = name3;
    v53 = 2112;
    v54 = languageCode2;
    _os_log_impl(&dword_1912FE000, v24, OS_LOG_TYPE_INFO, "%s Invalid output voice '%@:%@' found. Updated to '%@:%@'", buf, 0x34u);

    v21 = obj;
  }

  v27 = v11;
  v11 = v27;
LABEL_30:
  v28 = v27;

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)voiceSimilarToVoice:(id)voice inSiriSessionLanguage:(id)language
{
  v61 = *MEMORY[0x1E69E9840];
  voiceCopy = voice;
  languageCopy = language;
  v8 = [(AFLocalization *)self defaultOutputVoiceForSiriSessionLanguage:languageCopy];
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v54 = "[AFLocalization voiceSimilarToVoice:inSiriSessionLanguage:]";
    v55 = 2112;
    v56 = languageCopy;
    v57 = 2112;
    v58 = v8;
    v59 = 2112;
    v60 = voiceCopy;
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s language code: %@ output language code: %@, output voice: %@", buf, 0x2Au);
  }

  languageCode = [voiceCopy languageCode];

  if (!languageCode)
  {
    v35 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v54 = "[AFLocalization voiceSimilarToVoice:inSiriSessionLanguage:]";
      v55 = 2112;
      v56 = voiceCopy;
      _os_log_error_impl(&dword_1912FE000, v35, OS_LOG_TYPE_ERROR, "%s %@ missing languageCode", buf, 0x16u);
    }

    goto LABEL_24;
  }

  name = [voiceCopy name];
  if (!name)
  {
    languageCode2 = [voiceCopy languageCode];
    v13 = -[AFLocalization voiceNamesForOutputLanguageCode:gender:](self, "voiceNamesForOutputLanguageCode:gender:", languageCode2, [voiceCopy gender]);
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      name = firstObject;
      v15 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v54 = "[AFLocalization voiceSimilarToVoice:inSiriSessionLanguage:]";
        v55 = 2112;
        v56 = voiceCopy;
        v57 = 2112;
        v58 = name;
        _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s Voice name not specified for %@, using %@", buf, 0x20u);
      }

      goto LABEL_9;
    }

    v38 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v54 = "[AFLocalization voiceSimilarToVoice:inSiriSessionLanguage:]";
      v55 = 2112;
      v56 = voiceCopy;
      _os_log_impl(&dword_1912FE000, v38, OS_LOG_TYPE_INFO, "%s Voice name not specified for %@, can't determine default name", buf, 0x16u);
    }

LABEL_24:
    v22 = 0;
    goto LABEL_27;
  }

LABEL_9:
  v42 = languageCopy;
  [(AFLocalization *)self _voiceMaps];
  v16 = v51;
  __destructor_8_s0_s8_s16_s24(v50);
  v43 = voiceCopy;
  languageCode3 = [voiceCopy languageCode];
  v40 = name;
  v18 = [languageCode3 stringByAppendingString:name];

  v45 = v16;
  v39 = v18;
  v19 = [v16 objectForKey:v18];
  v41 = v8;
  [(AFLocalization *)self _voicesFromVoiceMapWithLanguage:v8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v49 = 0u;
  v20 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v47;
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v46 + 1) + 8 * i);
        languageCode4 = [v26 languageCode];
        name2 = [v26 name];
        v29 = [languageCode4 stringByAppendingString:name2];

        v30 = [v45 objectForKey:v29];
        integerValue = [v30 integerValue];
        integerValue2 = [v19 integerValue];
        if (integerValue - integerValue2 >= 0)
        {
          v33 = integerValue - integerValue2;
        }

        else
        {
          v33 = integerValue2 - integerValue;
        }

        if (v33 < v24)
        {
          v34 = v26;

          v22 = v34;
          v24 = v33;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  languageCopy = v42;
  voiceCopy = v43;
  v8 = v41;
LABEL_27:

  v36 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)outputVoiceComparator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__AFLocalization_outputVoiceComparator__block_invoke;
  v4[3] = &unk_1E7344A48;
  v4[4] = self;
  v2 = MEMORY[0x193AFB7B0](v4, a2);

  return v2;
}

uint64_t __39__AFLocalization_outputVoiceComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 name];

  if (!v7)
  {
    v20 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v19 = 0;
      goto LABEL_20;
    }

    v25 = 136315394;
    v26 = "[AFLocalization outputVoiceComparator]_block_invoke";
    v27 = 2112;
    v28 = v5;
LABEL_22:
    _os_log_error_impl(&dword_1912FE000, v20, OS_LOG_TYPE_ERROR, "%s %@ missing name cannot compare voices", &v25, 0x16u);
    goto LABEL_11;
  }

  v8 = [v6 name];

  if (!v8)
  {
    v20 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v25 = 136315394;
    v26 = "[AFLocalization outputVoiceComparator]_block_invoke";
    v27 = 2112;
    v28 = v6;
    goto LABEL_22;
  }

  v9 = [v5 languageCode];
  v10 = [v5 name];
  v11 = [v9 stringByAppendingString:v10];

  v12 = [v6 languageCode];
  v13 = [v6 name];
  v14 = [v12 stringByAppendingString:v13];

  if (v11 && v14)
  {
    v15 = [*(a1 + 32) _getVoiceOrdering];
    v16 = [v15 objectForKey:v11];

    v17 = [*(a1 + 32) _getVoiceOrdering];
    v18 = [v17 objectForKey:v14];

    if (v16 && v18)
    {
      v19 = [v16 compare:v18];
    }

    else
    {
      v22 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315650;
        v26 = "[AFLocalization outputVoiceComparator]_block_invoke";
        v27 = 2112;
        v28 = v5;
        v29 = 2112;
        v30 = v6;
        _os_log_error_impl(&dword_1912FE000, v22, OS_LOG_TYPE_ERROR, "%s Cannot resolve ordering for voice one: %@, voice two: %@ ", &v25, 0x20u);
      }

      v19 = 0;
    }
  }

  else
  {
    v21 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315650;
      v26 = "[AFLocalization outputVoiceComparator]_block_invoke";
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v11;
      _os_log_error_impl(&dword_1912FE000, v21, OS_LOG_TYPE_ERROR, "%s Cannot compare voices with keys (%@, %@)", &v25, 0x20u);
    }

    v19 = 0;
  }

LABEL_20:
  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)voiceNamesForOutputLanguageCode:(id)code gender:(int64_t)gender
{
  v22 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(AFLocalization *)self _voicesFromVoiceMapWithLanguage:codeCopy, 0];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 gender] == gender)
        {
          name = [v13 name];
          [array addObject:name];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];

  return array;
}

- ($2AC1CA6B41BA5ED35C064565198F84D5)_voiceMaps
{
  if (_voiceMaps_onceToken != -1)
  {
    dispatch_once(&_voiceMaps_onceToken, &__block_literal_global_134);
  }

  retstr->var0 = _voiceMaps_voiceMaps_0;
  retstr->var1 = _voiceMaps_voiceMaps_1;
  retstr->var2 = _voiceMaps_voiceMaps_2;
  result = _voiceMaps_voiceMaps_3;
  retstr->var3 = result;
  return result;
}

void __28__AFLocalization__voiceMaps__block_invoke()
{
  v0 = [MEMORY[0x1E69D3328] assistantVoiceMaps];
  v1 = [v0 voicesForLanguageMap];
  v2 = [v0 relativeOrderForVoicesMap];
  v3 = [v0 relativePitchOrderForVoicesMap];
  v4 = [v0 identifiersForVoicesMap];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __28__AFLocalization__voiceMaps__block_invoke_2;
  v15[3] = &unk_1E7344A20;
  v6 = v5;
  v16 = v6;
  [v1 enumerateKeysAndObjectsUsingBlock:v15];
  v7 = _voiceMaps_voiceMaps_0;
  _voiceMaps_voiceMaps_0 = v6;
  v8 = v6;

  v9 = _voiceMaps_voiceMaps_2;
  _voiceMaps_voiceMaps_2 = v2;
  v10 = v2;

  v11 = _voiceMaps_voiceMaps_1;
  _voiceMaps_voiceMaps_1 = v3;
  v12 = v3;

  v13 = _voiceMaps_voiceMaps_3;
  _voiceMaps_voiceMaps_3 = v4;
  v14 = v4;
}

void __28__AFLocalization__voiceMaps__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = [AFVoiceInfo alloc];
        v13 = [v11 assistantGender];
        v14 = [v11 isCustom];
        v15 = [v11 name];
        v16 = [(AFVoiceInfo *)v12 initWithLanguageCode:v4 gender:v13 isCustom:v14 name:v15 footprint:2 contentVersion:0 masteredVersion:0];

        [v6 addObject:v16];
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) setObject:v6 forKey:v4];
  v17 = *MEMORY[0x1E69E9840];
}

- (id)_getVoiceOrdering
{
  [(AFLocalization *)self _voiceMaps];
  v2 = v4[2];
  __destructor_8_s0_s8_s16_s24(v4);

  return v2;
}

- (id)_voicesFromVoiceMapWithLanguage:(id)language
{
  v25 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if (languageCopy)
  {
    v5 = [(AFLocalization *)self dialectForBaseLanguageCode:languageCopy];
    if ([v5 count] == 1)
    {
      [(AFLocalization *)self _voiceMaps];
      v6 = [v21[0] objectForKey:languageCopy];
      __destructor_8_s0_s8_s16_s24(v21);
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            [(AFLocalization *)self _voiceMaps];
            v13 = [v16[0] objectForKey:v12];
            [v6 addObjectsFromArray:v13];

            __destructor_8_s0_s8_s16_s24(v16);
          }

          v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }
    }
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[AFLocalization _voicesFromVoiceMapWithLanguage:]";
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s nil language code provided", buf, 0xCu);
    }

    v6 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)loadInfoForVoicesWithLanguageCode:(id)code
{
  v15 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v5 = [(AFLocalization *)self _voicesFromVoiceMapWithLanguage:codeCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[AFLocalization loadInfoForVoicesWithLanguageCode:]";
      v13 = 2112;
      v14 = codeCopy;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s Missing voice map for language %@", &v11, 0x16u);
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)defaultOutputVoiceForSiriSessionLanguage:(id)language
{
  languageCopy = language;
  if ([languageCopy length])
  {
    v4 = AFOutputVoiceLanguageForRecognitionLanguage(languageCopy);
  }

  else
  {
    v4 = @"en-US";
    v5 = @"en-US";
  }

  return v4;
}

- (id)dialectForBaseLanguageCode:(id)code
{
  codeCopy = code;
  v5 = [(AFLocalization *)self baseLocaleToDialectMapForLanguage:codeCopy];
  v6 = [(AFLocalization *)self getBaseLocale:codeCopy];

  v7 = [v5 objectForKey:v6];

  return v7;
}

- (id)getBaseLocale:(id)locale
{
  localeCopy = locale;
  [localeCopy rangeOfString:@"[^-]+-[^-]+-" options:1024 range:{0, objc_msgSend(localeCopy, "length")}];
  if (v4)
  {
    v5 = [localeCopy substringToIndex:v4 - 1];
  }

  else
  {
    v5 = localeCopy;
  }

  v6 = v5;

  return v6;
}

- (id)allOutputVoiceIdentifiersForSiriLanguage:(id)language
{
  v12[1] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if ([languageCopy length])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__AFLocalization_allOutputVoiceIdentifiersForSiriLanguage___block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    if (allOutputVoiceIdentifiersForSiriLanguage__onceToken != -1)
    {
      dispatch_once(&allOutputVoiceIdentifiersForSiriLanguage__onceToken, block);
    }

    v5 = [allOutputVoiceIdentifiersForSiriLanguage__dialectMapping objectForKey:languageCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v12[0] = languageCopy;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __59__AFLocalization_allOutputVoiceIdentifiersForSiriLanguage___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = allOutputVoiceIdentifiersForSiriLanguage__dialectMapping;
  allOutputVoiceIdentifiersForSiriLanguage__dialectMapping = v2;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [*(a1 + 32) dialectsMap];
  v5 = [v4 allKeys];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [*(a1 + 32) dialectsMap];
        v12 = [v11 objectForKey:v9];

        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          do
          {
            v16 = 0;
            do
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(a1 + 32) getBaseLocale:*(*(&v21 + 1) + 8 * v16)];
              if (([v10 containsObject:v17] & 1) == 0)
              {
                [v10 addObject:v17];
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v14);
        }

        [allOutputVoiceIdentifiersForSiriLanguage__dialectMapping setObject:v10 forKey:v9];
        ++v8;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)baseLocaleToDialectMapForLanguage:(id)language
{
  v17[1] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if ([languageCopy length])
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __52__AFLocalization_baseLocaleToDialectMapForLanguage___block_invoke;
    v14 = &unk_1E73497C8;
    selfCopy = self;
    if (baseLocaleToDialectMapForLanguage__onceToken != -1)
    {
      dispatch_once(&baseLocaleToDialectMapForLanguage__onceToken, &v11);
    }

    selfCopy = [(AFLocalization *)self getBaseLocale:languageCopy, v11, v12, v13, v14, selfCopy];
    v6 = [baseLocaleToDialectMapForLanguage__rootLocaleMap objectForKey:selfCopy];
    v7 = v6;
    if (v6)
    {
      v16 = selfCopy;
      v17[0] = v6;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __52__AFLocalization_baseLocaleToDialectMapForLanguage___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dialectsMap];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = baseLocaleToDialectMapForLanguage__rootLocaleMap;
  baseLocaleToDialectMapForLanguage__rootLocaleMap = v3;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [*(a1 + 32) getBaseLocale:{v10, v19}];
        v12 = [baseLocaleToDialectMapForLanguage__rootLocaleMap objectForKey:v11];

        if (!v12)
        {
          v13 = baseLocaleToDialectMapForLanguage__rootLocaleMap;
          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v13 setValue:v14 forKey:v11];
        }

        v15 = [baseLocaleToDialectMapForLanguage__rootLocaleMap objectForKeyedSubscript:v11];
        v16 = [v15 containsObject:v10];

        if ((v16 & 1) == 0)
        {
          v17 = [baseLocaleToDialectMapForLanguage__rootLocaleMap objectForKeyedSubscript:v11];
          [v17 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)dialectsMap
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"AssistantVoiceDialects" ofType:@"plist"];

  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v3];

  return v4;
}

- (id)outputVoiceDescriptorForOutputLanguageCode:(id)code voiceName:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  nameCopy = name;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[AFLocalization outputVoiceDescriptorForOutputLanguageCode:voiceName:]";
    *&buf[12] = 2112;
    *&buf[14] = codeCopy;
    *&buf[22] = 2112;
    v46 = nameCopy;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s languageCode: %@, voiceName: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v46 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [(AFLocalization *)self _voicesFromVoiceMapWithLanguage:codeCopy];
  outputVoiceComparator = [(AFLocalization *)self outputVoiceComparator];
  v11 = [v9 sortedArrayUsingComparator:outputVoiceComparator];

  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __71__AFLocalization_outputVoiceDescriptorForOutputLanguageCode_voiceName___block_invoke;
  v36 = &unk_1E73449F0;
  v12 = nameCopy;
  v37 = v12;
  v38 = buf;
  [v11 enumerateObjectsUsingBlock:&v33];
  if (*(*&buf[8] + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v39 = 136315650;
      v40 = "[AFLocalization outputVoiceDescriptorForOutputLanguageCode:voiceName:]";
      v41 = 2112;
      v42 = codeCopy;
      v43 = 2112;
      v44 = v12;
      _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s No descriptor found for language code %@, voice name %@", v39, 0x20u);
    }

    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [(AFLocalization *)self localizedStringForKey:@"VOICE" table:@"SiriLanguages" bundle:v15 languageCode:0];
    v17 = v16;
    v18 = @"Voice";
    if (v16)
    {
      v18 = v16;
    }

    v19 = v18;

    v20 = [(AFLocalization *)self localizedStringForKey:@"VOICE_AND_NUMBER" table:@"SiriLanguages" bundle:v15 languageCode:0];
    v21 = v20;
    v22 = @"%1$@ %2$lu";
    if (v20)
    {
      v22 = v20;
    }

    v23 = v22;

    v24 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v23, v19, *(*&buf[8] + 24) + 1, v33, v34, v35, v36];

    v25 = [(AFLocalization *)self localizedNameOfOutputVoiceWithIdentifier:codeCopy inDisplayLanguage:0];
    v26 = [(AFLocalization *)self localizedStringForKey:@"REGION_AND_VOICE" table:@"SiriLanguages" bundle:v15 languageCode:0];
    v27 = v26;
    v28 = @"%1$@ (%2$@)";
    if (v26)
    {
      v28 = v26;
    }

    v29 = v28;

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:v29, v25, v24];

    v14 = [[AFOutputVoiceDescriptor alloc] initWithLocalizedDisplay:v24 localizedDisplayWithRegion:v30];
  }

  _Block_object_dispose(buf, 8);
  v31 = *MEMORY[0x1E69E9840];

  return v14;
}

void __71__AFLocalization_outputVoiceDescriptorForOutputLanguageCode_voiceName___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 name];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)outputVoiceColorDescriptorForOutputLanguageCode:(id)code voiceName:(id)name
{
  v4 = [(AFLocalization *)self outputVoiceDescriptorForOutputLanguageCode:code voiceName:name];
  if (v4)
  {
    v5 = [AFOutputVoiceColorDescriptor alloc];
    localizedDisplay = [v4 localizedDisplay];
    localizedDisplayWithRegion = [v4 localizedDisplayWithRegion];
    LODWORD(v8) = 1.0;
    v9 = [(AFOutputVoiceColorDescriptor *)v5 initWithHexColor:@"#1190E4" colorName:&stru_1F0512680 alpha:localizedDisplay localizedOutputVoiceColor:localizedDisplayWithRegion localizedOutputVoice:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedNameOfVoiceGender:(int64_t)gender inDisplayLanguage:(id)language
{
  if ((gender - 1) > 2)
  {
    v5 = @"VOICE_GENDER_UNSPECIFIED";
  }

  else
  {
    v5 = off_1E7344A68[gender - 1];
  }

  v6 = MEMORY[0x1E696AAE8];
  languageCopy = language;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [(AFLocalization *)self localizedStringForKey:v5 table:@"SiriLanguages" bundle:v8 languageCode:languageCopy];

  return v9;
}

- (id)localizedGenderOfOutputVoice:(id)voice inDisplayLanguage:(id)language
{
  languageCopy = language;
  if (voice)
  {
    gender = [voice gender];
  }

  else
  {
    gender = 0;
  }

  v8 = [(AFLocalization *)self localizedNameOfVoiceGender:gender inDisplayLanguage:languageCopy];

  return v8;
}

- (id)localizedNameOfOutputVoice:(id)voice inDisplayLanguage:(id)language
{
  languageCopy = language;
  languageCode = [voice languageCode];
  v8 = [(AFLocalization *)self localizedNameOfOutputVoiceWithIdentifier:languageCode inDisplayLanguage:languageCopy];

  return v8;
}

- (id)localizedNameOfOutputVoiceWithIdentifier:(id)identifier inDisplayLanguage:(id)language
{
  identifierCopy = identifier;
  languageCopy = language;
  if ([identifierCopy length])
  {
    v8 = [@"VOICE_" stringByAppendingString:identifierCopy];
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [(AFLocalization *)self localizedStringForKey:v8 table:@"SiriLanguages" bundle:v9 languageCode:languageCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)compactDisplayNameInLanguage:(id)language forSiriLanguage:(id)siriLanguage
{
  languageCopy = language;
  siriLanguageCopy = siriLanguage;
  if ([siriLanguageCopy length])
  {
    v8 = [@"COMPACT_" stringByAppendingString:siriLanguageCopy];
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [(AFLocalization *)self localizedStringForKey:v8 table:@"SiriLanguages" bundle:v9 languageCode:languageCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)longDisplayNameInLanguage:(id)language forSiriLanguage:(id)siriLanguage
{
  languageCopy = language;
  siriLanguageCopy = siriLanguage;
  if ([siriLanguageCopy length])
  {
    v8 = [@"LONG_" stringByAppendingString:siriLanguageCopy];
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [(AFLocalization *)self localizedStringForKey:v8 table:@"SiriLanguages" bundle:v9 languageCode:languageCopy];

    if (([siriLanguageCopy hasPrefix:@"zh"] & 1) != 0 || objc_msgSend(siriLanguageCopy, "hasPrefix:", @"yue"))
    {
      if (AFHasGreenTeaCapability_onceToken != -1)
      {
        dispatch_once(&AFHasGreenTeaCapability_onceToken, &__block_literal_global_75_45985);
      }

      if (AFHasGreenTeaCapability_result)
      {
        goto LABEL_10;
      }

      if (AFIsChinaSKU_onceToken != -1)
      {
        dispatch_once(&AFIsChinaSKU_onceToken, &__block_literal_global_80_45992);
      }

      if (AFIsChinaSKU_isRunningOnChinaSKU == 1)
      {
LABEL_10:
        v11 = [@"GREENTEA_" stringByAppendingString:siriLanguageCopy];
        v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v13 = [(AFLocalization *)self localizedStringForKey:v11 table:@"SiriLanguages" bundle:v12 languageCode:languageCopy];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v10;
        }

        v16 = v15;

        v10 = v16;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)localizedStringForKey:(id)key gender:(int64_t)gender table:(id)table bundle:(id)bundle languageCode:(id)code
{
  v41 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  tableCopy = table;
  bundleCopy = bundle;
  codeCopy = code;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__16988;
  v37 = __Block_byref_object_dispose__16989;
  v38 = 0;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  if (![(__CFString *)tableCopy length])
  {

    tableCopy = @"Localizable";
  }

  if (![codeCopy length])
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v18 = [currentLocale objectForKey:*MEMORY[0x1E695D9A8]];

    codeCopy = v18;
  }

  v19 = 0;
  if (codeCopy && bundleIdentifier)
  {
    v20 = [objc_opt_class() effectiveGenderKeyForKey:keyCopy gender:gender];
    if (keyCopy | v20)
    {
      queue = self->_queue;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __73__AFLocalization_localizedStringForKey_gender_table_bundle_languageCode___block_invoke;
      v25[3] = &unk_1E73449C8;
      v25[4] = self;
      v26 = bundleIdentifier;
      v27 = tableCopy;
      v28 = codeCopy;
      v29 = v20;
      v32 = &v33;
      v30 = keyCopy;
      v31 = bundleCopy;
      dispatch_sync(queue, v25);
      v19 = v34[5];
    }

    else
    {
      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v40 = "[AFLocalization localizedStringForKey:gender:table:bundle:languageCode:]";
        _os_log_error_impl(&dword_1912FE000, v21, OS_LOG_TYPE_ERROR, "%s Missing key and genderKey, unable to perform localized string lookup", buf, 0xCu);
      }

      v19 = 0;
    }
  }

  _Block_object_dispose(&v33, 8);
  v23 = *MEMORY[0x1E69E9840];

  return v19;
}

void __73__AFLocalization_localizedStringForKey_gender_table_bundle_languageCode___block_invoke(uint64_t a1)
{
  v1 = a1;
  v91[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(*(v1 + 32) + 16) setObject:v2 forKey:*(v1 + 40)];
  }

  v3 = [v2 objectForKey:*(v1 + 48)];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v2 setObject:v3 forKey:*(v1 + 48)];
  }

  v4 = [v3 objectForKey:*(v1 + 56)];
  if (!v4)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!*(v1 + 64))
  {
    goto LABEL_65;
  }

  v5 = [v4 objectForKey:?];
  v6 = [v5 copy];
  v7 = *(*(v1 + 88) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(v1 + 88) + 8) + 40))
  {
LABEL_65:
    if (!*(v1 + 72))
    {
      goto LABEL_11;
    }

    v9 = [v4 objectForKey:?];
    v10 = [v9 copy];
    v11 = *(*(v1 + 88) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(v1 + 88) + 8) + 40))
    {
LABEL_11:
      v13 = [*(v1 + 80) localizations];
      v91[0] = *(v1 + 56);
      v14 = CFBundleCopyLocalizationsForPreferences(v13, [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:1]);
      v15 = [*(v1 + 32) _relevantTablesForTableName:*(v1 + 48) tableExtension:@"loctable" bundle:*(v1 + 80)];
      v16 = *(v1 + 64);
      v64 = (v1 + 64);
      v17 = v4;
      if (v16)
      {
        v18 = [*(v1 + 32) _localizedStringForKey:v16 tables:v15 localizations:v14 bundle:*(v1 + 80)];
        if (v18)
        {
          v19 = v18;
          v20 = v15;
          v21 = (v1 + 64);
          goto LABEL_17;
        }
      }

      v22 = *(v1 + 72);
      v63 = (v1 + 72);
      if (v22)
      {
        v23 = [*(v1 + 32) _localizedStringForKey:v22 tables:v15 localizations:v14 bundle:*(v1 + 80)];
        if (v23)
        {
          v19 = v23;
          v20 = v15;
          v21 = (v1 + 72);
LABEL_17:
          v24 = *v21;
          if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v4];
          }

          else
          {
            v26 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v82 = "[AFLocalization localizedStringForKey:gender:table:bundle:languageCode:]_block_invoke";
              v83 = 2112;
              v84 = v4;
              _os_log_debug_impl(&dword_1912FE000, v26, OS_LOG_TYPE_DEBUG, "%s stringsMap: %@", buf, 0x16u);
            }

            v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v27 = v25;
          [v25 setObject:v19 forKey:v24];
          v4 = v27;

          [v3 setObject:v4 forKey:*(v1 + 56)];
          v28 = [v19 copy];
          v29 = *(*(v1 + 88) + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;

          v15 = v20;
LABEL_61:

          goto LABEL_62;
        }
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v31 = v14;
      v70 = [(__CFArray *)v31 countByEnumeratingWithState:&v77 objects:v90 count:16];
      if (v70)
      {
        v61 = v15;
        v62 = v2;
        v65 = 0;
        v66 = v3;
        v67 = *v78;
        v68 = v31;
        v69 = v1;
LABEL_26:
        v32 = 0;
        while (1)
        {
          v72 = v4;
          if (*v78 != v67)
          {
            objc_enumerationMutation(v31);
          }

          v33 = *(*(&v77 + 1) + 8 * v32);
          v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v35 = [*(v1 + 80) URLsForResourcesWithExtension:@"strings" subdirectory:0 localization:v33];
          v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@-*\\w*\\.%@$", *(v1 + 48), @"strings"];
          v36 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:? options:? error:?];
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v37 = v35;
          v38 = [v37 countByEnumeratingWithState:&v73 objects:v89 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v74;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v74 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v73 + 1) + 8 * i);
                v43 = [v42 lastPathComponent];
                if ([v36 numberOfMatchesInString:v43 options:0 range:{0, objc_msgSend(v43, "length")}])
                {
                  v44 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v42];
                  [v34 addEntriesFromDictionary:v44];
                }
              }

              v39 = [v37 countByEnumeratingWithState:&v73 objects:v89 count:16];
            }

            while (v39);
          }

          v45 = [v34 count];
          if (v45)
          {
            v1 = v69;
            if (v72 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v34 addEntriesFromDictionary:v72];
            }

            else
            {
              v46 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v82 = "[AFLocalization localizedStringForKey:gender:table:bundle:languageCode:]_block_invoke";
                v83 = 2112;
                v84 = v72;
                _os_log_debug_impl(&dword_1912FE000, v46, OS_LOG_TYPE_DEBUG, "%s stringsMap: %@", buf, 0x16u);
              }
            }

            v4 = v34;

            [v66 setObject:v4 forKey:*(v69 + 56)];
            v65 = 1;
          }

          else
          {
            v1 = v69;
            v4 = v72;
          }

          v31 = v68;
          if (v45)
          {
            break;
          }

          if (++v32 == v70)
          {
            v70 = [(__CFArray *)v68 countByEnumeratingWithState:&v77 objects:v90 count:16];
            if (v70)
            {
              goto LABEL_26;
            }

            break;
          }
        }

        v2 = v62;
        v3 = v66;
        v15 = v61;
        if (v65)
        {
          goto LABEL_53;
        }
      }

      else
      {
      }

      v47 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v47 forKey:*(v1 + 56)];

LABEL_53:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_66;
      }

      if (!*v64)
      {
        goto LABEL_67;
      }

      v48 = [v4 objectForKey:?];
      v49 = [v48 copy];
      v50 = *(*(v1 + 88) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = v49;

      if (!*(*(*(v1 + 88) + 8) + 40))
      {
LABEL_67:
        if (!*v63)
        {
          goto LABEL_66;
        }

        v52 = [v4 objectForKey:?];
        v53 = [v52 copy];
        v54 = *(*(v1 + 88) + 8);
        v55 = *(v54 + 40);
        *(v54 + 40) = v53;

        if (!*(*(*(v1 + 88) + 8) + 40))
        {
LABEL_66:
          if (!*(*(*(v1 + 88) + 8) + 40))
          {
            v56 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
            {
              v58 = *(v1 + 72);
              v59 = *(v1 + 48);
              v60 = *(v1 + 56);
              *buf = 136315906;
              v82 = "[AFLocalization localizedStringForKey:gender:table:bundle:languageCode:]_block_invoke";
              v83 = 2112;
              v84 = v58;
              v85 = 2112;
              v86 = v59;
              v87 = 2112;
              v88 = v60;
              _os_log_error_impl(&dword_1912FE000, v56, OS_LOG_TYPE_ERROR, "%s Missing localization strings for key: %@, table: %@, languageCode: %@", buf, 0x2Au);
            }
          }
        }
      }

      goto LABEL_61;
    }
  }

LABEL_62:

  v57 = *MEMORY[0x1E69E9840];
}

- (id)_localizedStringForKey:(id)key tables:(id)tables localizations:(id)localizations bundle:(id)bundle
{
  v57 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  tablesCopy = tables;
  localizationsCopy = localizations;
  bundleCopy = bundle;
  if (keyCopy && [tablesCopy count] && (v13 = objc_msgSend(localizationsCopy, "count"), bundleCopy) && v13)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = localizationsCopy;
    v14 = localizationsCopy;
    v32 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v32)
    {
      v15 = *v42;
      v34 = v14;
      v35 = tablesCopy;
      v31 = *v42;
      do
      {
        v16 = 0;
        do
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(v14);
          }

          v33 = v16;
          v17 = *(*(&v41 + 1) + 8 * v16);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v18 = tablesCopy;
          v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v38;
            while (2)
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v38 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v37 + 1) + 8 * i);
                keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"NOT_FOUND:(%@)", keyCopy];
                v25 = [bundleCopy localizedStringForKey:keyCopy value:keyCopy table:v23 localization:v17];
                v26 = v25;
                if (v25 && ![v25 isEqualToString:keyCopy])
                {

                  tablesCopy = v35;
                  goto LABEL_31;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          v16 = v33 + 1;
          v14 = v34;
          tablesCopy = v35;
          v15 = v31;
        }

        while (v33 + 1 != v32);
        v32 = [v34 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v32);
    }

    v27 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v48 = "[AFLocalization _localizedStringForKey:tables:localizations:bundle:]";
      v49 = 2112;
      v50 = keyCopy;
      v51 = 2112;
      v52 = tablesCopy;
      v53 = 2112;
      v54 = v14;
      v55 = 2112;
      v56 = bundleCopy;
      _os_log_error_impl(&dword_1912FE000, v27, OS_LOG_TYPE_ERROR, "%s Could not find localization for key: %@, tables: %@, localizations: %@, bundle: %@", buf, 0x34u);
    }

    v26 = 0;
LABEL_31:
    localizationsCopy = v36;
  }

  else
  {
    v28 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v48 = "[AFLocalization _localizedStringForKey:tables:localizations:bundle:]";
      v49 = 2112;
      v50 = keyCopy;
      v51 = 2112;
      v52 = tablesCopy;
      v53 = 2112;
      v54 = localizationsCopy;
      v55 = 2112;
      v56 = bundleCopy;
      _os_log_error_impl(&dword_1912FE000, v28, OS_LOG_TYPE_ERROR, "%s Missing parameter(s). key: %@, tables: %@, localizations: %@, bundle: %@", buf, 0x34u);
    }

    v26 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)_relevantTablesForTableName:(id)name tableExtension:(id)extension bundle:(id)bundle
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  extensionCopy = extension;
  bundleCopy = bundle;
  v10 = bundleCopy;
  v11 = 0;
  if (!nameCopy)
  {
    goto LABEL_21;
  }

  if (!bundleCopy)
  {
    goto LABEL_21;
  }

  v12 = [nameCopy length];
  v11 = 0;
  if (!extensionCopy || !v12)
  {
    goto LABEL_21;
  }

  if (![extensionCopy length])
  {
LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  if (([extensionCopy isEqualToString:@"loctable"] & 1) == 0 && (objc_msgSend(extensionCopy, "isEqualToString:", @"strings") & 1) == 0)
  {
    v21 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[AFLocalization _relevantTablesForTableName:tableExtension:bundle:]";
      _os_log_error_impl(&dword_1912FE000, v21, OS_LOG_TYPE_ERROR, "%s tableExtension must be loctable or strings", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  extensionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@-*\\w*\\.%@$", nameCopy, extensionCopy];
  v13 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:? options:? error:?];
  v25 = v10;
  v14 = [v10 URLsForResourcesWithExtension:extensionCopy subdirectory:0];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        lastPathComponent = [*(*(&v26 + 1) + 8 * i) lastPathComponent];
        if ([v13 numberOfMatchesInString:lastPathComponent options:0 range:{0, objc_msgSend(lastPathComponent, "length")}])
        {
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
          [v11 addObject:stringByDeletingPathExtension];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  v10 = v25;
LABEL_21:

  v22 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)localizedUIUtteranceForKey:(id)key languageCode:(id)code
{
  codeCopy = code;
  keyCopy = key;
  v8 = +[AFFeatureFlags isUIUtteranceJSStringCatalogEnabled];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (v8)
  {
    [(AFLocalization *)self localizedStringOrNilFromCatalogForKey:keyCopy gender:0 table:@"UIUtterances-JS-catalog" bundle:v9 languageCode:codeCopy defaultValue:0];
  }

  else
  {
    [(AFLocalization *)self localizedStringForKey:keyCopy table:@"UIUtterances-JS" bundle:v9 languageCode:codeCopy];
  }
  v10 = ;

  return v10;
}

- (AFLocalization)init
{
  v9.receiver = self;
  v9.super_class = AFLocalization;
  v2 = [(AFLocalization *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AFLocalization", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tables = v2->_tables;
    v2->_tables = v6;
  }

  return v2;
}

+ (id)effectiveGenderKeyForKey:(id)key gender:(int64_t)gender
{
  v5 = @"_MALE";
  if (gender != 1)
  {
    v5 = 0;
  }

  if (gender == 2)
  {
    v5 = @"_FEMALE";
  }

  if (v5)
  {
    v6 = [key stringByAppendingString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_17036 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_17036, &__block_literal_global_17037);
  }

  v3 = sharedInstance_sLocalization;

  return v3;
}

void __32__AFLocalization_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AFLocalization);
  v1 = sharedInstance_sLocalization;
  sharedInstance_sLocalization = v0;
}

- (id)localizedStringFromCatalogForKey:(id)key gender:(int64_t)gender table:(id)table bundle:(id)bundle languageCode:(id)code defaultValue:(id)value
{
  v35 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  tableCopy = table;
  bundleCopy = bundle;
  codeCopy = code;
  valueCopy = value;
  v18 = [objc_opt_class() effectiveGenderKeyForKey:keyCopy gender:gender];
  if (!v18)
  {
    v21 = 0;
LABEL_8:
    v22 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v30 = "[AFLocalization(StringCatalog) localizedStringFromCatalogForKey:gender:table:bundle:languageCode:defaultValue:]";
      v31 = 2112;
      v32 = keyCopy;
      v33 = 2112;
      v34 = codeCopy;
      _os_log_debug_impl(&dword_1912FE000, v22, OS_LOG_TYPE_DEBUG, "%s Getting localized string for key: %@ for locale: %@", buf, 0x20u);
    }

    v27 = codeCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v24 = [bundleCopy localizedStringForKey:keyCopy value:valueCopy table:tableCopy localizations:v23];

    v21 = v24;
    goto LABEL_11;
  }

  v19 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v30 = "[AFLocalization(StringCatalog) localizedStringFromCatalogForKey:gender:table:bundle:languageCode:defaultValue:]";
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = codeCopy;
    _os_log_debug_impl(&dword_1912FE000, v19, OS_LOG_TYPE_DEBUG, "%s Getting localized string for effective key: %@ for locale: %@", buf, 0x20u);
  }

  v28 = codeCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v21 = [bundleCopy localizedStringForKey:v18 value:valueCopy table:tableCopy localizations:v20];

  if (!v21 || [v21 isEqual:@"default"])
  {
    goto LABEL_8;
  }

LABEL_11:

  v25 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)localizedStringOrNilFromCatalogForKey:(id)key gender:(int64_t)gender table:(id)table bundle:(id)bundle languageCode:(id)code defaultValue:(id)value
{
  if (value)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = @"default";
  }

  v15 = valueCopy;
  codeCopy = code;
  bundleCopy = bundle;
  tableCopy = table;
  keyCopy = key;
  v20 = [(AFLocalization *)self localizedStringFromCatalogForKey:keyCopy gender:gender table:tableCopy bundle:bundleCopy languageCode:codeCopy defaultValue:v15];

  if ([v20 isEqual:@"default"])
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v22 = v21;

  return v21;
}

@end