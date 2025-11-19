@interface AFLanguageDetectionUserContext
+ (id)defaultContextWithPrimaryLanguage:(id)a3;
- (AFLanguageDetectionUserContext)init;
- (AFLanguageDetectionUserContext)initWithCoder:(id)a3;
- (BOOL)shouldSimulateLanguageDetectorAssetsAvailability;
- (id)context;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getContextForAnalytics;
- (id)getDictationLanguagesForSupportedLocales:(id)a3 error:(id *)a4;
- (id)getSiriDictationLanguagesFromLanguages:(id)a3;
- (id)languageDetectorUserContext;
- (id)priorsByReplacingKeyboardLanguage:(id)a3;
- (id)simulatingLanguageCodes;
- (id)userContextLanguageCodeForKeyboardLangauge:(id)a3 overrideLanguageCode:(id)a4;
- (void)_removeContextValueForKey:(id)a3 context:(id)a4;
- (void)_setContextValue:(id)a3 forKey:(id)a4 context:(id)a5;
- (void)_setDictationLanguageCodeMappingCache:(id)a3;
- (void)_setFinalFilteredDictationLanguages:(id)a3;
- (void)_setLanguageDetectorContext:(id)a3;
- (void)_updateContextValue:(id)a3 forKey:(id)a4 context:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setCurrentKeyboard:(id)a3;
- (void)setDictationLanguages:(id)a3;
- (void)setGlobalLastUsedKeyboard:(id)a3;
- (void)setKeyboardConversationLanguagePriors:(id)a3;
- (void)setKeyboardConvoRecentMessages:(id)a3;
- (void)setKeyboardGlobalLanguagePriors:(id)a3;
- (void)setMultiLingualKeyboardLanguages:(id)a3;
- (void)setPrevMessageLanguage:(id)a3;
- (void)setPrimaryLanguageCode:(id)a3;
- (void)setShouldSimulateLanguageDetectorAssetsAvailability:(BOOL)a3;
- (void)setSimulatingLanguageCodes:(id)a3;
@end

@implementation AFLanguageDetectionUserContext

- (id)simulatingLanguageCodes
{
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v3 = self->_simulatingLanguageCodes;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSimulatingLanguageCodes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (AFIsInternalInstall_onceToken == -1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = v4;
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
    v5 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  if (AFIsInternalInstall_isInternal)
  {
    v9 = v5;
    v6 = [v5 count];
    v5 = v9;
    if (v6)
    {
      v7 = [v9 copy];
      simulatingLanguageCodes = self->_simulatingLanguageCodes;
      self->_simulatingLanguageCodes = v7;

      v5 = v9;
    }
  }

LABEL_6:
}

- (BOOL)shouldSimulateLanguageDetectorAssetsAvailability
{
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  return AFIsInternalInstall_isInternal == 1 && self->_simulateLanguageDetectorAssetsAvailability;
}

- (void)setShouldSimulateLanguageDetectorAssetsAvailability:(BOOL)a3
{
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    self->_simulateLanguageDetectorAssetsAvailability = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setWasLanguageToggled:self->_languageToggled];
  [v4 setCurrentKeyboard:self->_currentKeyboard];
  [v4 setPrimaryLanguageCode:self->_primaryLanguageCode];
  [v4 setPrevMessageLanguage:self->_prevMessageLanguage];
  [v4 setGlobalLastUsedKeyboard:self->_globalLastUsedKeyboard];
  [v4 setMultiLingualKeyboardLanguages:self->_multiLingualKeyboardLanguages];
  [v4 setKeyboardConvoRecentMessages:self->_keyboardConvoRecentMessages];
  [v4 setDictationLanguages:self->_dictationLanguages];
  [v4 setKeyboardConversationLanguagePriors:self->_keyboardConversationLanguagePriors];
  [v4 setKeyboardGlobalLanguagePriors:self->_keyboardGlobalLanguagePriors];
  [v4 setLanguageCodeOverrides:self->_languageCodeOverrides];
  [v4 setSimulatingLanguageCodes:self->_simulatingLanguageCodes];
  [v4 setShouldSimulateLanguageDetectorAssetsAvailability:self->_simulateLanguageDetectorAssetsAvailability];
  [v4 _setUserContextChangeBit:self->_userContextChangeBit];
  [v4 _setLanguageDetectorContext:self->_lidUserContext];
  [v4 _setFinalFilteredDictationLanguages:self->_finalDictationLanguages];
  [v4 _setDictationLanguageCodeMappingCache:self->_dictationLanguageMappingCache];
  return v4;
}

- (id)userContextLanguageCodeForKeyboardLangauge:(id)a3 overrideLanguageCode:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    dictationLanguageMappingCache = self->_dictationLanguageMappingCache;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(AFLanguageDetectionUserContext *)self _setDictationLanguageCodeMappingCache:self->_dictationLanguageMappingCache];
    }

    v9 = [(NSMutableDictionary *)self->_dictationLanguageMappingCache objectForKey:v6];
    if (!v9)
    {
      v9 = AFOverrideLanguageCode(v6, v7);
      if (v9)
      {
        [(NSMutableDictionary *)self->_dictationLanguageMappingCache setObject:v9 forKey:v6];
      }
    }

    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v13 = 136315906;
      v14 = "[AFLanguageDetectionUserContext userContextLanguageCodeForKeyboardLangauge:overrideLanguageCode:]";
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s User context language code mapping %@ -> %@ (override: %@)", &v13, 0x2Au);
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)getDictationLanguagesForSupportedLocales:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v34 = [(AFLanguageDetectionUserContext *)self languageDetectorUserContext];
  v8 = [v34 objectForKey:@"DictationLanguages"];
  if (v8)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    dictationLanguages = v8;
    if ((isKindOfClass & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"AFLanguageDetectionUserContext.m" lineNumber:409 description:@"The cached dictation languages is not a instance of NSArray"];

      dictationLanguages = v8;
    }
  }

  else
  {
    dictationLanguages = self->_dictationLanguages;
  }

  v33 = a4;
  v12 = dictationLanguages;
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = v12;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v39 + 1) + 8 * i);
        v20 = [(NSDictionary *)self->_languageCodeOverrides objectForKey:v19, v33];
        v21 = [(AFLanguageDetectionUserContext *)self userContextLanguageCodeForKeyboardLangauge:v19 overrideLanguageCode:v20];

        if (v21 && [v7 containsObject:v21])
        {
          [v13 addObject:v21];
        }
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v16);
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = v13;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [v22 addObject:{*(*(&v35 + 1) + 8 * j), v33}];
      }

      v25 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v25);
  }

  if ([v22 count])
  {
    [(AFLanguageDetectionUserContext *)self _setFinalFilteredDictationLanguages:v22];
    v28 = v22;
  }

  else
  {
    if (v33)
    {
      v29 = [AFError errorWithCode:2802 description:@"The input dictation languages are not supported by language detector. This is a critical error." underlyingError:0];
      *v33 = v29;
      v30 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v44 = "[AFLanguageDetectionUserContext getDictationLanguagesForSupportedLocales:error:]";
        v45 = 2112;
        v46 = v29;
        _os_log_error_impl(&dword_1912FE000, v30, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }
    }

    v28 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)getContextForAnalytics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AFLanguageDetectionUserContext *)self languageDetectorUserContext];
  [v3 addEntriesFromDictionary:v4];

  [v3 removeObjectForKey:@"RecentConversationalMessages"];
  if ([v3 count])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)languageDetectorUserContext
{
  lidUserContext = self->_lidUserContext;
  if (!self->_userContextChangeBit)
  {
    v7 = [(NSMutableDictionary *)self->_lidUserContext copy];
    goto LABEL_42;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = self->_lidUserContext;
  if (isKindOfClass)
  {
    v6 = v5;
  }

  else
  {
    v6 = [(NSMutableDictionary *)v5 mutableCopy];
  }

  v8 = v6;
  userContextChangeBit = self->_userContextChangeBit;
  if (userContextChangeBit)
  {
    self->_userContextChangeBit = userContextChangeBit & 0xFFFFFFFE;
    [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:@"WasLanguageToggled" context:v6];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_languageToggled];
    [(NSMutableDictionary *)v8 setObject:v10 forKey:@"WasLanguageToggled"];

    userContextChangeBit = self->_userContextChangeBit;
    if ((userContextChangeBit & 2) == 0)
    {
LABEL_8:
      if ((userContextChangeBit & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((userContextChangeBit & 2) == 0)
  {
    goto LABEL_8;
  }

  self->_userContextChangeBit = userContextChangeBit & 0xFFFFFFFD;
  [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:@"CurrentKeyboard" context:v8];
  v11 = [(AFLanguageDetectionUserContext *)self siriDictationLanguageForLanguage:self->_primaryLanguageCode];
  if (v11)
  {
    [(NSMutableDictionary *)v8 setObject:v11 forKey:@"CurrentKeyboard"];
  }

  userContextChangeBit = self->_userContextChangeBit;
  if ((userContextChangeBit & 4) == 0)
  {
LABEL_9:
    if ((userContextChangeBit & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_20:
  self->_userContextChangeBit = userContextChangeBit & 0xFFFFFFFB;
  [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:@"LastMessageLanguage" context:v8];
  v12 = [(AFLanguageDetectionUserContext *)self siriDictationLanguageForLanguage:self->_prevMessageLanguage];
  if (v12)
  {
    [(NSMutableDictionary *)v8 setObject:v12 forKey:@"LastMessageLanguage"];
  }

  userContextChangeBit = self->_userContextChangeBit;
  if ((userContextChangeBit & 8) == 0)
  {
LABEL_10:
    if ((userContextChangeBit & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_23:
  self->_userContextChangeBit = userContextChangeBit & 0xFFFFFFF7;
  [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:@"GlobalLastUsedKeyboard" context:v8];
  v13 = [(AFLanguageDetectionUserContext *)self siriDictationLanguageForLanguage:self->_globalLastUsedKeyboard];
  if (v13)
  {
    [(NSMutableDictionary *)v8 setObject:v13 forKey:@"GlobalLastUsedKeyboard"];
  }

  userContextChangeBit = self->_userContextChangeBit;
  if ((userContextChangeBit & 0x10) == 0)
  {
LABEL_11:
    if ((userContextChangeBit & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_26:
  self->_userContextChangeBit = userContextChangeBit & 0xFFFFFFEF;
  [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:@"MultilingualKeyboardLanguages" context:v8];
  v14 = [(AFLanguageDetectionUserContext *)self getSiriDictationLanguagesFromLanguages:self->_multiLingualKeyboardLanguages];
  v15 = [v14 allValues];

  if (v15)
  {
    [(NSMutableDictionary *)v8 setObject:v15 forKey:@"MultilingualKeyboardLanguages"];
  }

  userContextChangeBit = self->_userContextChangeBit;
  if ((userContextChangeBit & 0x20) == 0)
  {
LABEL_12:
    if ((userContextChangeBit & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_29:
  self->_userContextChangeBit = userContextChangeBit & 0xFFFFFFDF;
  [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:@"RecentConversationalMessages" context:v8];
  keyboardConvoRecentMessages = self->_keyboardConvoRecentMessages;
  if (keyboardConvoRecentMessages)
  {
    [(NSMutableDictionary *)v8 setObject:keyboardConvoRecentMessages forKey:@"RecentConversationalMessages"];
  }

  userContextChangeBit = self->_userContextChangeBit;
  if ((userContextChangeBit & 0x40) == 0)
  {
LABEL_13:
    if ((userContextChangeBit & 0x80) == 0)
    {
      goto LABEL_14;
    }

LABEL_35:
    self->_userContextChangeBit = userContextChangeBit & 0xFFFFFF7F;
    [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:@"KeyboardConversationLanguagePriors" context:v8];
    v19 = [(AFLanguageDetectionUserContext *)self priorsByReplacingKeyboardLanguage:self->_keyboardConversationLanguagePriors];
    if (v19)
    {
      [(NSMutableDictionary *)v8 setObject:v19 forKey:@"KeyboardConversationLanguagePriors"];
    }

    userContextChangeBit = self->_userContextChangeBit;
    if ((userContextChangeBit & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_32:
  self->_userContextChangeBit = userContextChangeBit & 0xFFFFFFBF;
  [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:@"DictationLanguages" context:v8];
  v17 = [(AFLanguageDetectionUserContext *)self getSiriDictationLanguagesFromLanguages:self->_dictationLanguages];
  v18 = [v17 allValues];

  if (v18)
  {
    [(NSMutableDictionary *)v8 setObject:v18 forKey:@"DictationLanguages"];
  }

  userContextChangeBit = self->_userContextChangeBit;
  if ((userContextChangeBit & 0x80) != 0)
  {
    goto LABEL_35;
  }

LABEL_14:
  if ((userContextChangeBit & 0x100) != 0)
  {
LABEL_38:
    self->_userContextChangeBit = userContextChangeBit & 0xFFFFFEFF;
    [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:@"KeyboardGlobalLanguagePriors" context:v8];
    v20 = [(AFLanguageDetectionUserContext *)self priorsByReplacingKeyboardLanguage:self->_keyboardGlobalLanguagePriors];
    if (v20)
    {
      [(NSMutableDictionary *)v8 setObject:v20 forKey:@"KeyboardGlobalLanguagePriors"];
    }
  }

LABEL_41:
  v21 = self->_lidUserContext;
  self->_lidUserContext = v8;
  v22 = v8;

  v7 = [(NSMutableDictionary *)v22 copy];
LABEL_42:

  return v7;
}

- (id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_languageToggled];
  [(AFLanguageDetectionUserContext *)self _setContextValue:v4 forKey:@"WasLanguageToggled" context:v3];

  [(AFLanguageDetectionUserContext *)self _setContextValue:self->_currentKeyboard forKey:@"CurrentKeyboard" context:v3];
  [(AFLanguageDetectionUserContext *)self _setContextValue:self->_prevMessageLanguage forKey:@"LastMessageLanguage" context:v3];
  [(AFLanguageDetectionUserContext *)self _setContextValue:self->_globalLastUsedKeyboard forKey:@"GlobalLastUsedKeyboard" context:v3];
  [(AFLanguageDetectionUserContext *)self _setContextValue:self->_multiLingualKeyboardLanguages forKey:@"MultilingualKeyboardLanguages" context:v3];
  [(AFLanguageDetectionUserContext *)self _setContextValue:self->_keyboardConvoRecentMessages forKey:@"RecentConversationalMessages" context:v3];
  [(AFLanguageDetectionUserContext *)self _setContextValue:self->_dictationLanguages forKey:@"DictationLanguages" context:v3];
  [(AFLanguageDetectionUserContext *)self _setContextValue:self->_keyboardConversationLanguagePriors forKey:@"KeyboardConversationLanguagePriors" context:v3];
  [(AFLanguageDetectionUserContext *)self _setContextValue:self->_keyboardGlobalLanguagePriors forKey:@"KeyboardGlobalLanguagePriors" context:v3];
  [(AFLanguageDetectionUserContext *)self _setContextValue:self->_primaryLanguageCode forKey:@"CurrentKeyboard" context:v3];

  return v3;
}

- (void)_setDictationLanguageCodeMappingCache:(id)a3
{
  v4 = [a3 mutableCopy];
  dictationLanguageMappingCache = self->_dictationLanguageMappingCache;
  self->_dictationLanguageMappingCache = v4;
}

- (void)_setFinalFilteredDictationLanguages:(id)a3
{
  v4 = [a3 copy];
  finalDictationLanguages = self->_finalDictationLanguages;
  self->_finalDictationLanguages = v4;
}

- (void)_setLanguageDetectorContext:(id)a3
{
  v4 = [a3 mutableCopy];
  lidUserContext = self->_lidUserContext;
  self->_lidUserContext = v4;
}

- (id)priorsByReplacingKeyboardLanguage:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [(AFLanguageDetectionUserContext *)self getSiriDictationLanguagesFromLanguages:v5];

  if (v6 && [v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__AFLanguageDetectionUserContext_priorsByReplacingKeyboardLanguage___block_invoke;
    v12[3] = &unk_1E7342760;
    v13 = v4;
    v8 = v7;
    v14 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
    v9 = v14;
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __68__AFLanguageDetectionUserContext_priorsByReplacingKeyboardLanguage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  v6 = [*(a1 + 40) objectForKey:v13];
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [v5 floatValue];
    v9 = v8;
    [v6 floatValue];
    *&v11 = v9 + v10;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];

    v5 = v12;
  }

  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKey:v13];
  }
}

- (id)getSiriDictationLanguagesFromLanguages:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __73__AFLanguageDetectionUserContext_getSiriDictationLanguagesFromLanguages___block_invoke;
    v14 = &unk_1E7342738;
    v15 = self;
    v16 = v6;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:&v11];
    if ([v7 count])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __73__AFLanguageDetectionUserContext_getSiriDictationLanguagesFromLanguages___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) userContextLanguageCodeForKeyboardLangauge:? overrideLanguageCode:?];
  if (v3)
  {
    [*(a1 + 40) setValue:v3 forKey:v4];
  }
}

- (void)setPrimaryLanguageCode:(id)a3
{
  v4 = [a3 copy];
  primaryLanguageCode = self->_primaryLanguageCode;
  self->_primaryLanguageCode = v4;

  self->_userContextChangeBit |= 2u;
}

- (void)setKeyboardGlobalLanguagePriors:(id)a3
{
  v4 = [a3 copy];
  keyboardGlobalLanguagePriors = self->_keyboardGlobalLanguagePriors;
  self->_keyboardGlobalLanguagePriors = v4;

  self->_userContextChangeBit |= 0x100u;
}

- (void)setKeyboardConversationLanguagePriors:(id)a3
{
  v4 = [a3 copy];
  keyboardConversationLanguagePriors = self->_keyboardConversationLanguagePriors;
  self->_keyboardConversationLanguagePriors = v4;

  self->_userContextChangeBit |= 0x80u;
}

- (void)setDictationLanguages:(id)a3
{
  v4 = [a3 copy];
  dictationLanguages = self->_dictationLanguages;
  self->_dictationLanguages = v4;

  self->_userContextChangeBit |= 0x40u;
}

- (void)setKeyboardConvoRecentMessages:(id)a3
{
  v4 = [a3 copy];
  keyboardConvoRecentMessages = self->_keyboardConvoRecentMessages;
  self->_keyboardConvoRecentMessages = v4;

  self->_userContextChangeBit |= 0x20u;
}

- (void)setMultiLingualKeyboardLanguages:(id)a3
{
  v4 = [a3 copy];
  multiLingualKeyboardLanguages = self->_multiLingualKeyboardLanguages;
  self->_multiLingualKeyboardLanguages = v4;

  self->_userContextChangeBit |= 0x10u;
}

- (void)setGlobalLastUsedKeyboard:(id)a3
{
  v4 = [a3 copy];
  globalLastUsedKeyboard = self->_globalLastUsedKeyboard;
  self->_globalLastUsedKeyboard = v4;

  self->_userContextChangeBit |= 8u;
}

- (void)setPrevMessageLanguage:(id)a3
{
  v4 = [a3 copy];
  prevMessageLanguage = self->_prevMessageLanguage;
  self->_prevMessageLanguage = v4;

  self->_userContextChangeBit |= 4u;
}

- (void)setCurrentKeyboard:(id)a3
{
  v4 = [a3 copy];
  currentKeyboard = self->_currentKeyboard;
  self->_currentKeyboard = v4;

  self->_userContextChangeBit |= 2u;
}

- (void)_setContextValue:(id)a3 forKey:(id)a4 context:(id)a5
{
  if (a3)
  {
    [(AFLanguageDetectionUserContext *)self _updateContextValue:a3 forKey:a4 context:a5];
  }

  else
  {
    [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:a4 context:a5];
  }
}

- (void)_updateContextValue:(id)a3 forKey:(id)a4 context:(id)a5
{
  v10 = a3;
  v8 = a5;
  v9 = a4;
  [(AFLanguageDetectionUserContext *)self _removeContextValueForKey:v9 context:v8];
  if (v10)
  {
    [v8 setObject:v10 forKey:v9];
  }
}

- (void)_removeContextValueForKey:(id)a3 context:(id)a4
{
  if (a3)
  {
    [a4 removeObjectForKey:?];
  }
}

- (AFLanguageDetectionUserContext)initWithCoder:(id)a3
{
  v56[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = AFLanguageDetectionUserContext;
  v5 = [(AFLanguageDetectionUserContext *)&v51 init];
  if (v5)
  {
    v5->_languageToggled = [v4 decodeBoolForKey:@"_languageToggled"];
    v5->_simulateLanguageDetectorAssetsAvailability = [v4 decodeBoolForKey:@"_simulateLanguageDetectorAssetsAvailability"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentKeyboard"];
    currentKeyboard = v5->_currentKeyboard;
    v5->_currentKeyboard = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_primaryLanguageCode"];
    primaryLanguageCode = v5->_primaryLanguageCode;
    v5->_primaryLanguageCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_prevMessageLanguage"];
    prevMessageLanguage = v5->_prevMessageLanguage;
    v5->_prevMessageLanguage = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_globalLastUsedKeyboard"];
    globalLastUsedKeyboard = v5->_globalLastUsedKeyboard;
    v5->_globalLastUsedKeyboard = v12;

    v5->_userContextChangeBit = [v4 decodeInt32ForKey:@"_userContextChangeBit"];
    v14 = MEMORY[0x1E695DFD8];
    v56[0] = objc_opt_class();
    v56[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_multiLingualKeyboardLanguages"];
    multiLingualKeyboardLanguages = v5->_multiLingualKeyboardLanguages;
    v5->_multiLingualKeyboardLanguages = v17;

    v19 = MEMORY[0x1E695DFD8];
    v55[0] = objc_opt_class();
    v55[1] = objc_opt_class();
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v21 = [v19 setWithArray:v20];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"_keyboardConvoRecentMessages"];
    keyboardConvoRecentMessages = v5->_keyboardConvoRecentMessages;
    v5->_keyboardConvoRecentMessages = v22;

    v24 = MEMORY[0x1E695DFD8];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v26 = [v24 setWithArray:v25];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"_dictationLanguages"];
    dictationLanguages = v5->_dictationLanguages;
    v5->_dictationLanguages = v27;

    v29 = MEMORY[0x1E695DFD8];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v31 = [v29 setWithArray:v30];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"_simulatingLanguageCodes"];
    simulatingLanguageCodes = v5->_simulatingLanguageCodes;
    v5->_simulatingLanguageCodes = v32;

    v34 = MEMORY[0x1E695DFD8];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v36 = [v34 setWithArray:v35];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"_finalDictationLanguages"];
    finalDictationLanguages = v5->_finalDictationLanguages;
    v5->_finalDictationLanguages = v37;

    v39 = [v4 decodePropertyListForKey:@"_keyboardConversationLanguagePriors"];
    keyboardConversationLanguagePriors = v5->_keyboardConversationLanguagePriors;
    v5->_keyboardConversationLanguagePriors = v39;

    v41 = [v4 decodePropertyListForKey:@"_keyboardGlobalLanguagePriors"];
    keyboardGlobalLanguagePriors = v5->_keyboardGlobalLanguagePriors;
    v5->_keyboardGlobalLanguagePriors = v41;

    v43 = [v4 decodePropertyListForKey:@"_languageCodeOverrides"];
    languageCodeOverrides = v5->_languageCodeOverrides;
    v5->_languageCodeOverrides = v43;

    v45 = [v4 decodePropertyListForKey:@"_lidUserContext"];
    lidUserContext = v5->_lidUserContext;
    v5->_lidUserContext = v45;

    v47 = [v4 decodePropertyListForKey:@"_dictationLanguageMappingCache"];
    dictationLanguageMappingCache = v5->_dictationLanguageMappingCache;
    v5->_dictationLanguageMappingCache = v47;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  languageToggled = self->_languageToggled;
  v5 = a3;
  [v5 encodeBool:languageToggled forKey:@"_languageToggled"];
  [v5 encodeBool:self->_simulateLanguageDetectorAssetsAvailability forKey:@"_simulateLanguageDetectorAssetsAvailability"];
  [v5 encodeObject:self->_currentKeyboard forKey:@"_currentKeyboard"];
  [v5 encodeObject:self->_primaryLanguageCode forKey:@"_primaryLanguageCode"];
  [v5 encodeObject:self->_prevMessageLanguage forKey:@"_prevMessageLanguage"];
  [v5 encodeObject:self->_globalLastUsedKeyboard forKey:@"_globalLastUsedKeyboard"];
  [v5 encodeInt32:self->_userContextChangeBit forKey:@"_userContextChangeBit"];
  [v5 encodeObject:self->_multiLingualKeyboardLanguages forKey:@"_multiLingualKeyboardLanguages"];
  [v5 encodeObject:self->_keyboardConvoRecentMessages forKey:@"_keyboardConvoRecentMessages"];
  [v5 encodeObject:self->_dictationLanguages forKey:@"_dictationLanguages"];
  [v5 encodeObject:self->_simulatingLanguageCodes forKey:@"_simulatingLanguageCodes"];
  [v5 encodeObject:self->_finalDictationLanguages forKey:@"_finalDictationLanguages"];
  [v5 encodeObject:self->_keyboardConversationLanguagePriors forKey:@"_keyboardConversationLanguagePriors"];
  [v5 encodeObject:self->_keyboardGlobalLanguagePriors forKey:@"_keyboardGlobalLanguagePriors"];
  [v5 encodeObject:self->_languageCodeOverrides forKey:@"_languageCodeOverrides"];
  [v5 encodeObject:self->_lidUserContext forKey:@"_lidUserContext"];
  [v5 encodeObject:self->_dictationLanguageMappingCache forKey:@"_dictationLanguageMappingCache"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"Language toggled = %d, \n", self->_languageToggled];
  [v3 appendFormat:@"Current keyboard = %@, \n", self->_currentKeyboard];
  [v3 appendFormat:@"Previous message language = %@, \n", self->_prevMessageLanguage];
  [v3 appendFormat:@"Last used keyboard = %@, \n", self->_globalLastUsedKeyboard];
  [v3 appendFormat:@"Multilingual keyboard languages = %@, \n", self->_multiLingualKeyboardLanguages];
  [v3 appendFormat:@"Primary language = %@, \n", self->_primaryLanguageCode];
  [v3 appendFormat:@"Dictation languages = %@, \n", self->_dictationLanguages];
  [v3 appendFormat:@"Global Conversational Language Priors = %@, \n", self->_keyboardConversationLanguagePriors];
  [v3 appendFormat:@"Global Keyboard Language Priors = %@, \n", self->_keyboardGlobalLanguagePriors];
  [v3 appendFormat:@"Dictation input origin = %@.\n\n", self->_dictationInputOrigin];

  return v3;
}

- (AFLanguageDetectionUserContext)init
{
  v9.receiver = self;
  v9.super_class = AFLanguageDetectionUserContext;
  v2 = [(AFLanguageDetectionUserContext *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_userContextChangeBit = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lidUserContext = v3->_lidUserContext;
    v3->_lidUserContext = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictationLanguageMappingCache = v3->_dictationLanguageMappingCache;
    v3->_dictationLanguageMappingCache = v6;
  }

  return v3;
}

+ (id)defaultContextWithPrimaryLanguage:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(AFLanguageDetectionUserContext);
  v5 = v4;
  if (v3)
  {
    [(AFLanguageDetectionUserContext *)v4 setPrimaryLanguageCode:v3];
    v6 = [(AFLanguageDetectionUserContext *)v5 primaryLanguageCode];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(AFLanguageDetectionUserContext *)v5 setDictationLanguages:v7];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

@end