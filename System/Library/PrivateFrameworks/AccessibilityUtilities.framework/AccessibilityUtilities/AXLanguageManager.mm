@interface AXLanguageManager
+ (AXLanguageManager)sharedInstance;
+ (BOOL)voiceOverSupportedInCurrentLanguage;
+ (id)commonPunctuationCharacters;
+ (id)dialectForAlternativeVoiceIdentifier:(id)identifier;
+ (id)doNotTranslateWords;
+ (id)nonlocalizedNameForLanguage:(id)language;
+ (id)stringByReplacingFatWidthCharactersWithBasicCharacters:(id)characters;
- (AXDialectMap)dialectForCurrentLocale;
- (AXDialectMap)dialectForCurrentRegion;
- (AXDialectMap)dialectForSystemLanguage;
- (AXDialectMap)dialectForUserLocale;
- (AXLanguageManager)init;
- (BOOL)didUpdateForLocaleChange;
- (BOOL)isCharacterCommon:(unsigned __int16)common;
- (BOOL)isStringComposedByCommonCharacters:(id)characters;
- (NSArray)langMaps;
- (NSSet)preferredLanguageIDsFromUserSelectedKeyboards;
- (NSString)systemLanguageID;
- (id)_dialectsThatCanSpeak:(id)speak dialectIsSecondary:(id)secondary overridePreferredLanguages:(id)languages preferOverrides:(BOOL)overrides;
- (id)_loadLangMaps;
- (id)_preferredOverrideDialectsThatCanSpeak:(id)speak dialectIsSecondary:(id)secondary overridePreferredLanguages:(id)languages preferOverrides:(BOOL)overrides;
- (id)_systemPreferredDialectThatCanSpeak:(id)speak;
- (id)ambiguousDialectsFromUserKeyboardPreferences;
- (id)characterSetForRanges:(id)ranges;
- (id)debugDescription;
- (id)descriptionOfWord:(id)word forLanguage:(id)language;
- (id)dialectForLanguageID:(id)d;
- (id)dialectThatCanSpeakCharacter:(unsigned __int16)character;
- (id)dialectsThatCanSpeakCharacter:(unsigned __int16)character overridePreferredLanguages:(id)languages allowTransliteration:(BOOL)transliteration preferOverrides:(BOOL)overrides;
- (id)dialectsThatCanSpeakString:(id)string overridePreferredLanguages:(id)languages;
- (void)_addDialectMapsForLanguageCodes:(id)codes toResults:(id)results;
- (void)_handleUserLocaleDidChange:(id)change;
- (void)dealloc;
- (void)setDialectForCurrentLocale:(id)locale;
- (void)setDialectForCurrentRegion:(id)region;
- (void)setDialectForSystemLanguage:(id)language;
- (void)updateCachedDialects;
@end

@implementation AXLanguageManager

+ (AXLanguageManager)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[AXLanguageManager sharedInstance];
  }

  v3 = sharedInstance__shared_0;

  return v3;
}

uint64_t __35__AXLanguageManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXLanguageManager);
  v1 = sharedInstance__shared_0;
  sharedInstance__shared_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)voiceOverSupportedInCurrentLanguage
{
  if (voiceOverSupportedInCurrentLanguage_onceToken != -1)
  {
    +[AXLanguageManager voiceOverSupportedInCurrentLanguage];
  }

  return (voiceOverSupportedInCurrentLanguage_Supported & 1) == 0;
}

void __56__AXLanguageManager_voiceOverSupportedInCurrentLanguage__block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = voiceOverSupportedInCurrentLanguage_NonSupportedLanguages;
  voiceOverSupportedInCurrentLanguage_NonSupportedLanguages = v0;

  [voiceOverSupportedInCurrentLanguage_NonSupportedLanguages addObject:@"vi"];
  [voiceOverSupportedInCurrentLanguage_NonSupportedLanguages addObject:@"ca"];
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 objectForKey:*MEMORY[0x1E695D9B0]];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = voiceOverSupportedInCurrentLanguage_NonSupportedLanguages;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v3 hasPrefix:{v9, v10}] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", v9))
        {
          voiceOverSupportedInCurrentLanguage_Supported = 1;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

+ (id)nonlocalizedNameForLanguage:(id)language
{
  v3 = [language stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v3];
  v5 = [v4 localizedStringForLanguage:v3 context:3];

  if (!v5)
  {
    v6 = nonlocalizedNameForLanguage__AXBundle;
    if (!nonlocalizedNameForLanguage__AXBundle)
    {
      v7 = NSOpenStepRootDirectory();
      v8 = [v7 stringByAppendingString:@"System/Library/PreferenceBundles/AccessibilitySettings.bundle"];

      v9 = [MEMORY[0x1E696AAE8] bundleWithPath:v8];
      v10 = nonlocalizedNameForLanguage__AXBundle;
      nonlocalizedNameForLanguage__AXBundle = v9;

      v6 = nonlocalizedNameForLanguage__AXBundle;
    }

    v5 = [v6 localizedStringForKey:v3 value:v3 table:@"RegionNamesNonLocalized"];
  }

  if ([v5 isEqualToString:v3])
  {
    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

+ (id)commonPunctuationCharacters
{
  if (commonPunctuationCharacters_onceToken != -1)
  {
    +[AXLanguageManager commonPunctuationCharacters];
  }

  v3 = commonPunctuationCharacters_charSet;

  return v3;
}

uint64_t __48__AXLanguageManager_commonPunctuationCharacters__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"~!@#*$%&+|=(){}[]<>, ./?:'_-\"\\""}];;
  v1 = commonPunctuationCharacters_charSet;
  commonPunctuationCharacters_charSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)doNotTranslateWords
{
  if (doNotTranslateWords_onceToken != -1)
  {
    +[AXLanguageManager doNotTranslateWords];
  }

  v3 = doNotTranslateWords_Set;

  return v3;
}

void __40__AXLanguageManager_doNotTranslateWords__block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = doNotTranslateWords_Set;
  doNotTranslateWords_Set = v0;

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v12 pathForResource:@"DNTTerms" ofType:@"plist"];
  v3 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v2];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = doNotTranslateWords_Set;
        v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v11 = [v8 stringByTrimmingCharactersInSet:v10];
        [v9 addObject:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

+ (id)stringByReplacingFatWidthCharactersWithBasicCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = [MEMORY[0x1E696AB08] characterSetWithRange:{65296, 75}];
  v5 = [charactersCopy rangeOfCharacterFromSet:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = charactersCopy;
  }

  else
  {
    v7 = v5;
    v8 = [charactersCopy length];
    v9 = MEMORY[0x1E696AD60];
    v10 = [charactersCopy substringToIndex:v7];
    v6 = [v9 stringWithString:v10];

    if (v7 >= v8)
    {
      v11 = v7;
    }

    else
    {
      v11 = v7;
      do
      {
        v12 = [charactersCopy characterAtIndex:v7];
        if ([v4 characterIsMember:v12])
        {
          v13 = v7 - v11;
          if (v7 > v11)
          {
            v14 = [charactersCopy substringWithRange:{v11, v13}];
            [v6 appendString:v14];
          }

          [v6 appendFormat:@"%C ", v13, (v12 + 288)];
          v11 = ++v7;
        }

        else
        {
          ++v7;
        }
      }

      while (v7 != v8);
    }

    if (v8 > v11)
    {
      v15 = [charactersCopy substringWithRange:{v11, v8 - v11}];
      [v6 appendString:v15];
    }
  }

  return v6;
}

- (AXLanguageManager)init
{
  v13.receiver = self;
  v13.super_class = AXLanguageManager;
  v2 = [(AXLanguageManager *)&v13 init];
  if (v2)
  {
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(AXLanguageManager *)v2 setUserLocale:autoupdatingCurrentLocale];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleUserLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v5 = objc_alloc_init(MEMORY[0x1E696AD48]);
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    [v5 formUnionWithCharacterSet:whitespaceAndNewlineCharacterSet];

    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v5 formUnionWithCharacterSet:punctuationCharacterSet];

    v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789•■"];
    [v5 formUnionWithCharacterSet:v8];

    controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
    [v5 formUnionWithCharacterSet:controlCharacterSet];

    [(AXLanguageManager *)v2 setCommonCharacters:v5];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _updateLocaleForLanguagePreference, *MEMORY[0x1E69E4E88], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v11 = v2;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = AXLanguageManager;
  [(AXLanguageManager *)&v5 dealloc];
}

- (id)debugDescription
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  basicDescription = [(AXLanguageManager *)self basicDescription];
  v5 = [v3 stringWithFormat:@"%@\n", basicDescription];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  selfCopy = self;
  obj = self->_langMaps;
  v26 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v25 = *v33;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v6;
        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = [v7 description];
        [v5 appendFormat:@"  %@\n", v8];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        dialects = [v7 dialects];
        v10 = [dialects countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(dialects);
              }

              v14 = *(*(&v28 + 1) + 8 * i);
              userPreferredDialect = [v7 userPreferredDialect];

              v16 = [v14 description];
              v17 = v16;
              if (userPreferredDialect == v14)
              {
                v18 = @"    USER-PREF %@\n";
              }

              else
              {
                v18 = @"    %@\n";
              }

              [v5 appendFormat:v18, v16];
            }

            v11 = [dialects countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v11);
        }

        v6 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  dialectForSystemLanguage = [(AXLanguageManager *)selfCopy dialectForSystemLanguage];
  [v5 appendFormat:@"system Lang dialect: %@\n", dialectForSystemLanguage];

  dialectForCurrentLocale = [(AXLanguageManager *)selfCopy dialectForCurrentLocale];
  [v5 appendFormat:@"system current locale dialect: %@\n", dialectForCurrentLocale];

  dialectForCurrentRegion = [(AXLanguageManager *)selfCopy dialectForCurrentRegion];
  [v5 appendFormat:@"system current region dialect: %@\n", dialectForCurrentRegion];

  return v5;
}

- (NSString)systemLanguageID
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([preferredLanguages count])
  {
    userLocale = [preferredLanguages objectAtIndex:0];
    v5 = AXCLanguageCanonicalFormToGeneralLanguage();
  }

  else
  {
    userLocale = [(AXLanguageManager *)self userLocale];
    v6 = [userLocale objectForKey:*MEMORY[0x1E695D9B0]];
    v5 = AXCLanguageCanonicalFormToGeneralLanguage();
  }

  return v5;
}

- (NSArray)langMaps
{
  langMaps = self->_langMaps;
  if (!langMaps)
  {
    _loadLangMaps = [(AXLanguageManager *)self _loadLangMaps];
    v5 = self->_langMaps;
    self->_langMaps = _loadLangMaps;

    langMaps = self->_langMaps;
  }

  return langMaps;
}

- (AXDialectMap)dialectForSystemLanguage
{
  dialectForSystemLanguage = self->_dialectForSystemLanguage;
  if (!dialectForSystemLanguage)
  {
    [(AXLanguageManager *)self updateCachedDialects];
    dialectForSystemLanguage = self->_dialectForSystemLanguage;
    if (!dialectForSystemLanguage)
    {
      _AXLogWithFacility();
      dialectForSystemLanguage = self->_dialectForSystemLanguage;
    }
  }

  return dialectForSystemLanguage;
}

- (void)setDialectForSystemLanguage:(id)language
{
  languageCopy = language;
  dialectForSystemLanguage = self->_dialectForSystemLanguage;
  p_dialectForSystemLanguage = &self->_dialectForSystemLanguage;
  v8 = languageCopy;
  if (([(AXDialectMap *)dialectForSystemLanguage isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_dialectForSystemLanguage, language);
  }
}

- (AXDialectMap)dialectForUserLocale
{
  dialectForSystemLanguage = [(AXLanguageManager *)self dialectForSystemLanguage];
  langMap = [dialectForSystemLanguage langMap];
  userLocaleDialect = [langMap userLocaleDialect];

  return userLocaleDialect;
}

- (AXDialectMap)dialectForCurrentLocale
{
  dialectForCurrentLocale = self->_dialectForCurrentLocale;
  if (!dialectForCurrentLocale)
  {
    [(AXLanguageManager *)self updateCachedDialects];
    dialectForCurrentLocale = self->_dialectForCurrentLocale;
  }

  return dialectForCurrentLocale;
}

- (AXDialectMap)dialectForCurrentRegion
{
  dialectForCurrentRegion = self->_dialectForCurrentRegion;
  if (!dialectForCurrentRegion)
  {
    [(AXLanguageManager *)self updateCachedDialects];
    dialectForCurrentRegion = self->_dialectForCurrentRegion;
  }

  return dialectForCurrentRegion;
}

- (void)setDialectForCurrentLocale:(id)locale
{
  localeCopy = locale;
  dialectForCurrentLocale = self->_dialectForCurrentLocale;
  p_dialectForCurrentLocale = &self->_dialectForCurrentLocale;
  v8 = localeCopy;
  if (([(AXDialectMap *)dialectForCurrentLocale isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_dialectForCurrentLocale, locale);
  }
}

- (void)setDialectForCurrentRegion:(id)region
{
  regionCopy = region;
  dialectForCurrentRegion = self->_dialectForCurrentRegion;
  p_dialectForCurrentRegion = &self->_dialectForCurrentRegion;
  v8 = regionCopy;
  if (([(AXDialectMap *)dialectForCurrentRegion isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_dialectForCurrentRegion, region);
  }
}

- (id)dialectForLanguageID:(id)d
{
  v53 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
    v6 = [(AXLanguageManager *)self outputLanguageIdentifierForLanguage:dCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;

      v5 = v8;
    }

    else
    {
      v10 = AXLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v52 = v5;
        _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_INFO, "We passed in %@ to TTSPreferencesCopyDefaultOutputLanguageIdentifierForLanguage and got back nil", buf, 0xCu);
      }
    }

    dialectForSystemLanguage = [(AXLanguageManager *)self dialectForSystemLanguage];
    specificLanguageID = [dialectForSystemLanguage specificLanguageID];
    v13 = [specificLanguageID hasPrefix:v5];

    if (v13)
    {
      defaultDialect = dialectForSystemLanguage;
    }

    else
    {
      dialectForCurrentLocale = [(AXLanguageManager *)self dialectForCurrentLocale];
      specificLanguageID2 = [dialectForCurrentLocale specificLanguageID];
      v16 = [specificLanguageID2 hasPrefix:v5];

      if (v16)
      {
        defaultDialect = dialectForCurrentLocale;
      }

      else
      {
        dialectForCurrentRegion = [(AXLanguageManager *)self dialectForCurrentRegion];
        specificLanguageID3 = [dialectForCurrentRegion specificLanguageID];
        v19 = [specificLanguageID3 hasPrefix:v5];

        if (v19)
        {
          defaultDialect = dialectForCurrentRegion;
        }

        else
        {
          v37 = dialectForCurrentRegion;
          v38 = [v5 rangeOfString:@"-"];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          obj = [(AXLanguageManager *)self langMaps];
          v20 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v46;
            v36 = dialectForCurrentLocale;
            while (2)
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v46 != v22)
                {
                  objc_enumerationMutation(obj);
                }

                v24 = *(*(&v45 + 1) + 8 * i);
                generalLanguageID = [v24 generalLanguageID];
                if ([v5 hasPrefix:generalLanguageID])
                {

LABEL_25:
                  if (v38 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v43 = 0u;
                    v44 = 0u;
                    v41 = 0u;
                    v42 = 0u;
                    dialects = [v24 dialects];
                    v28 = [dialects countByEnumeratingWithState:&v41 objects:v49 count:16];
                    if (v28)
                    {
                      v29 = v28;
                      v30 = *v42;
                      while (2)
                      {
                        for (j = 0; j != v29; ++j)
                        {
                          if (*v42 != v30)
                          {
                            objc_enumerationMutation(dialects);
                          }

                          v32 = *(*(&v41 + 1) + 8 * j);
                          specificLanguageID4 = [v32 specificLanguageID];
                          v34 = [specificLanguageID4 isEqualToString:v5];

                          if (v34)
                          {
                            defaultDialect = v32;

                            goto LABEL_37;
                          }
                        }

                        v29 = [dialects countByEnumeratingWithState:&v41 objects:v49 count:16];
                        if (v29)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

                  defaultDialect = [v24 defaultDialect];
LABEL_37:

                  dialectForCurrentLocale = v36;
                  goto LABEL_38;
                }

                alternateLanguageIDs = [v24 alternateLanguageIDs];
                v27 = [alternateLanguageIDs containsObject:v5];

                if (v27)
                {
                  goto LABEL_25;
                }
              }

              v21 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
              dialectForCurrentLocale = v36;
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          defaultDialect = 0;
LABEL_38:
          dialectForCurrentRegion = v37;
        }
      }
    }
  }

  else
  {
    _AXAssert();
    defaultDialect = [(AXLanguageManager *)self dialectForSystemLanguage];
  }

  return defaultDialect;
}

- (id)_systemPreferredDialectThatCanSpeak:(id)speak
{
  v12[1] = *MEMORY[0x1E69E9840];
  speakCopy = speak;
  dialectForSystemLanguage = [(AXLanguageManager *)self dialectForSystemLanguage];
  if (speakCopy[2](speakCopy, dialectForSystemLanguage))
  {
    v12[0] = dialectForSystemLanguage;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    dialectForCurrentLocale = [(AXLanguageManager *)self dialectForCurrentLocale];
    if (speakCopy[2](speakCopy, dialectForCurrentLocale))
    {
      v11 = dialectForCurrentLocale;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    }

    else
    {
      dialectForCurrentRegion = [(AXLanguageManager *)self dialectForCurrentRegion];
      if (speakCopy[2](speakCopy, dialectForCurrentRegion))
      {
        v10 = dialectForCurrentRegion;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
      }

      else
      {
        v6 = MEMORY[0x1E695E0F0];
      }
    }
  }

  return v6;
}

- (void)_addDialectMapsForLanguageCodes:(id)codes toResults:(id)results
{
  resultsCopy = results;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AXLanguageManager__addDialectMapsForLanguageCodes_toResults___block_invoke;
  v7[3] = &unk_1E71EB6E0;
  v8 = resultsCopy;
  v6 = resultsCopy;
  [codes enumerateObjectsWithOptions:2 usingBlock:v7];
}

void __63__AXLanguageManager__addDialectMapsForLanguageCodes_toResults___block_invoke(uint64_t a1)
{
  v2 = AXCLanguageConvertToCanonicalForm();
  v3 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__AXLanguageManager__addDialectMapsForLanguageCodes_toResults___block_invoke_2;
  v15[3] = &unk_1E71EBC88;
  v4 = v2;
  v16 = v4;
  v5 = [v3 indexOfObjectPassingTest:v15];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v5;
LABEL_6:
    v10 = [*(a1 + 32) objectAtIndexedSubscript:v8];
    [*(a1 + 32) removeObjectAtIndex:v8];
    [*(a1 + 32) insertObject:v10 atIndex:0];

    goto LABEL_7;
  }

  v6 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__AXLanguageManager__addDialectMapsForLanguageCodes_toResults___block_invoke_3;
  v13[3] = &unk_1E71EBC88;
  v7 = v4;
  v14 = v7;
  v8 = [v6 indexOfObjectPassingTest:v13];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v9 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__AXLanguageManager__addDialectMapsForLanguageCodes_toResults___block_invoke_4;
  v11[3] = &unk_1E71EBC88;
  v12 = v7;
  v8 = [v9 indexOfObjectPassingTest:v11];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t __63__AXLanguageManager__addDialectMapsForLanguageCodes_toResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 specificLanguageID];
  v4 = [v2 isEqual:v3];

  return v4;
}

uint64_t __63__AXLanguageManager__addDialectMapsForLanguageCodes_toResults___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 langMap];
  v4 = [v3 generalLanguageID];
  v5 = [v2 hasPrefix:v4];

  return v5;
}

uint64_t __63__AXLanguageManager__addDialectMapsForLanguageCodes_toResults___block_invoke_4(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a2 langMap];
  v4 = [v3 alternateLanguageIDs];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(a1 + 32) hasPrefix:*(*(&v11 + 1) + 8 * v8)])
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)_preferredOverrideDialectsThatCanSpeak:(id)speak dialectIsSecondary:(id)secondary overridePreferredLanguages:(id)languages preferOverrides:(BOOL)overrides
{
  overridesCopy = overrides;
  v42 = *MEMORY[0x1E69E9840];
  speakCopy = speak;
  secondaryCopy = secondary;
  languagesCopy = languages;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__9;
  v39 = __Block_byref_object_dispose__9;
  v40 = objc_opt_new();
  langMaps = [(AXLanguageManager *)self langMaps];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __122__AXLanguageManager__preferredOverrideDialectsThatCanSpeak_dialectIsSecondary_overridePreferredLanguages_preferOverrides___block_invoke;
  v29[3] = &unk_1E71EBCB0;
  v34 = overridesCopy;
  v14 = languagesCopy;
  v30 = v14;
  v15 = speakCopy;
  v31 = v15;
  v16 = secondaryCopy;
  v32 = v16;
  v33 = &v35;
  [langMaps enumerateObjectsWithOptions:0 usingBlock:v29];

  [(AXLanguageManager *)self _addDialectMapsForLanguageCodes:v14 toResults:v36[5]];
  if (!overridesCopy || ![v36[5] count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    v19 = [preferredLanguages countByEnumeratingWithState:&v25 objects:v41 count:16];
    if (v19)
    {
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(preferredLanguages);
          }

          v22 = AXCLanguageConvertToCanonicalForm();
          if (v22)
          {
            [array addObject:v22];
          }
        }

        v19 = [preferredLanguages countByEnumeratingWithState:&v25 objects:v41 count:16];
      }

      while (v19);
    }

    [(AXLanguageManager *)self _addDialectMapsForLanguageCodes:array toResults:v36[5]];
  }

  array2 = [v36[5] array];

  _Block_object_dispose(&v35, 8);

  return array2;
}

void __122__AXLanguageManager__preferredOverrideDialectsThatCanSpeak_dialectIsSecondary_overridePreferredLanguages_preferOverrides___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 64) != 1 || (v5 = *(a1 + 32), [v3 generalLanguageID], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v5, "containsObject:", v6), v6, v5))
  {
    v7 = *(a1 + 40);
    v8 = [v4 defaultDialect];
    LODWORD(v7) = (*(v7 + 16))(v7, v8);

    if (v7)
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        v10 = [v4 defaultDialect];
        v11 = (*(v9 + 16))(v9, v10);

        if ((v11 & 1) == 0)
        {
          v12 = *(*(*(a1 + 56) + 8) + 40);
          v13 = [v4 defaultDialect];
          [v12 addObject:v13];
        }
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [v4 dialects];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v20 + 1) + 8 * v18);
          if ((*(*(a1 + 40) + 16))())
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v19];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }
}

- (id)_dialectsThatCanSpeak:(id)speak dialectIsSecondary:(id)secondary overridePreferredLanguages:(id)languages preferOverrides:(BOOL)overrides
{
  overridesCopy = overrides;
  speakCopy = speak;
  secondaryCopy = secondary;
  languagesCopy = languages;
  v13 = languagesCopy;
  if (overridesCopy)
  {
    if ([languagesCopy count])
    {
      v14 = 1;
      goto LABEL_8;
    }

    v15 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_DEFAULT, "preferOverrides=YES but no overridePreferredLanguages provided. forcing preferOverrides=NO", v22, 2u);
    }
  }

  v14 = 0;
LABEL_8:
  array = [MEMORY[0x1E695DF70] array];
  if (v14)
  {
    v17 = [(AXLanguageManager *)self _preferredOverrideDialectsThatCanSpeak:speakCopy dialectIsSecondary:secondaryCopy overridePreferredLanguages:v13 preferOverrides:1];
    [array addObjectsFromArray:v17];

    if ([array count])
    {
      goto LABEL_14;
    }

    v18 = [(AXLanguageManager *)self _systemPreferredDialectThatCanSpeak:speakCopy];
  }

  else
  {
    v19 = [(AXLanguageManager *)self _systemPreferredDialectThatCanSpeak:speakCopy];
    [array addObjectsFromArray:v19];

    if ([array count])
    {
      goto LABEL_14;
    }

    v18 = [(AXLanguageManager *)self _preferredOverrideDialectsThatCanSpeak:speakCopy dialectIsSecondary:secondaryCopy overridePreferredLanguages:v13 preferOverrides:0];
  }

  v20 = v18;
  [array addObjectsFromArray:v18];

LABEL_14:

  return array;
}

- (id)dialectsThatCanSpeakCharacter:(unsigned __int16)character overridePreferredLanguages:(id)languages allowTransliteration:(BOOL)transliteration preferOverrides:(BOOL)overrides
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __115__AXLanguageManager_dialectsThatCanSpeakCharacter_overridePreferredLanguages_allowTransliteration_preferOverrides___block_invoke;
  v10[3] = &__block_descriptor_35_e22_B16__0__AXDialectMap_8l;
  characterCopy = character;
  transliterationCopy = transliteration;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __115__AXLanguageManager_dialectsThatCanSpeakCharacter_overridePreferredLanguages_allowTransliteration_preferOverrides___block_invoke_2;
  v8[3] = &__block_descriptor_34_e22_B16__0__AXDialectMap_8l;
  characterCopy2 = character;
  v6 = [(AXLanguageManager *)self _dialectsThatCanSpeak:v10 dialectIsSecondary:v8 overridePreferredLanguages:languages preferOverrides:overrides];

  return v6;
}

- (id)dialectsThatCanSpeakString:(id)string overridePreferredLanguages:(id)languages
{
  stringCopy = string;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__AXLanguageManager_dialectsThatCanSpeakString_overridePreferredLanguages___block_invoke;
  v10[3] = &unk_1E71EBD18;
  v11 = stringCopy;
  v7 = stringCopy;
  v8 = [(AXLanguageManager *)self _dialectsThatCanSpeak:v10 dialectIsSecondary:0 overridePreferredLanguages:languages preferOverrides:0];

  return v8;
}

- (id)dialectThatCanSpeakCharacter:(unsigned __int16)character
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [(AXLanguageManager *)self dialectsThatCanSpeakCharacter:character overridePreferredLanguages:0 allowTransliteration:1];
  if ([v3 count] == 1)
  {
    firstObject = [v3 firstObject];
  }

  else
  {
    [MEMORY[0x1E695DF58] preferredLanguages];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = v45 = 0u;
    v31 = [v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v31)
    {
      v6 = *v43;
      v32 = v5;
      v33 = v3;
      v30 = *v43;
      do
      {
        v7 = 0;
        do
        {
          if (*v43 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = AXCLanguageConvertToCanonicalForm();
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v9 = v3;
          v10 = [v9 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v39;
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v39 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v38 + 1) + 8 * i);
                langMap = [v14 langMap];
                generalLanguageID = [langMap generalLanguageID];
                v17 = [v8 hasPrefix:generalLanguageID];

                if (v17)
                {
                  firstObject = v14;

                  v5 = v32;
                  v3 = v33;
                  goto LABEL_30;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v38 objects:v47 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          ++v7;
          v5 = v32;
          v3 = v33;
          v6 = v30;
        }

        while (v7 != v31);
        v31 = [v32 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v31);
    }

    firstObject2 = [v3 firstObject];
    langMap2 = [firstObject2 langMap];
    isAmbiguous = [langMap2 isAmbiguous];

    if (isAmbiguous)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v21 = v3;
      v22 = [v21 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v35;
        while (2)
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v35 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v34 + 1) + 8 * j);
            specificLanguageID = [v26 specificLanguageID];
            v28 = [specificLanguageID isEqualToString:@"en-US"];

            if (v28)
            {
              firstObject = v26;

              goto LABEL_30;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }
    }

    firstObject = [v3 firstObject];
LABEL_30:
  }

  return firstObject;
}

- (id)ambiguousDialectsFromUserKeyboardPreferences
{
  v19 = *MEMORY[0x1E69E9840];
  preferredLanguageIDsFromUserSelectedKeyboards = [(AXLanguageManager *)self preferredLanguageIDsFromUserSelectedKeyboards];
  v4 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = preferredLanguageIDsFromUserSelectedKeyboards;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(AXLanguageManager *)self dialectForLanguageID:*(*(&v14 + 1) + 8 * i), v14];
        langMap = [v10 langMap];
        isAmbiguous = [langMap isAmbiguous];

        if (isAmbiguous)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isCharacterCommon:(unsigned __int16)common
{
  commonCopy = common;
  commonCharacters = [(AXLanguageManager *)self commonCharacters];
  LOBYTE(commonCopy) = [commonCharacters characterIsMember:commonCopy];

  return commonCopy;
}

- (BOOL)isStringComposedByCommonCharacters:(id)characters
{
  charactersCopy = characters;
  if ([charactersCopy length])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (v5 == v8 + v7)
    {
      v8 = v5;
      v7 = v6;
      commonCharacters = [(AXLanguageManager *)self commonCharacters];
      v5 = [charactersCopy rangeOfCharacterFromSet:commonCharacters options:1 range:{v6 + v5, objc_msgSend(charactersCopy, "length") - (v6 + v5)}];
      v6 = v10;

      if (v5 + v6 >= [charactersCopy length])
      {
        v11 = v5 != 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_8;
      }
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

LABEL_8:

  return v11;
}

- (void)updateCachedDialects
{
  selfCopy = self;
  v78 = *MEMORY[0x1E69E9840];
  systemLanguageID = [(AXLanguageManager *)self systemLanguageID];
  v4 = [(AXLanguageManager *)selfCopy outputLanguageIdentifierForLanguage:systemLanguageID];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  langMaps = [(AXLanguageManager *)selfCopy langMaps];
  v6 = [langMaps countByEnumeratingWithState:&v69 objects:v77 count:16];
  v51 = selfCopy;
  if (v6)
  {
    v7 = v6;
    v8 = *v70;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v70 != v8)
        {
          objc_enumerationMutation(langMaps);
        }

        v10 = *(*(&v69 + 1) + 8 * i);
        generalLanguageID = [v10 generalLanguageID];
        v12 = [v4 hasPrefix:generalLanguageID];

        if (v12)
        {
          defaultDialect = [v10 defaultDialect];
          [(AXLanguageManager *)selfCopy setDialectForSystemLanguage:defaultDialect];
        }

        else
        {
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          defaultDialect = [v10 alternateLanguageIDs];
          v14 = [defaultDialect countByEnumeratingWithState:&v65 objects:v76 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v66;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v66 != v16)
                {
                  objc_enumerationMutation(defaultDialect);
                }

                if ([v4 hasPrefix:*(*(&v65 + 1) + 8 * j)])
                {
                  defaultDialect2 = [v10 defaultDialect];
                  selfCopy = v51;
                  [(AXLanguageManager *)v51 setDialectForSystemLanguage:defaultDialect2];

                  goto LABEL_18;
                }
              }

              v15 = [defaultDialect countByEnumeratingWithState:&v65 objects:v76 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }

            selfCopy = v51;
          }
        }

LABEL_18:
      }

      v7 = [langMaps countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v7);
  }

  userLocale = [(AXLanguageManager *)selfCopy userLocale];
  v20 = [userLocale objectForKey:*MEMORY[0x1E695D9B0]];

  v49 = v20;
  if (v20)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    langMaps2 = [(AXLanguageManager *)selfCopy langMaps];
    v22 = [langMaps2 countByEnumeratingWithState:&v61 objects:v75 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v62;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v62 != v24)
          {
            objc_enumerationMutation(langMaps2);
          }

          v26 = *(*(&v61 + 1) + 8 * k);
          generalLanguageID2 = [v26 generalLanguageID];
          v28 = [v49 hasPrefix:generalLanguageID2];

          if (v28)
          {
            defaultDialect3 = [v26 defaultDialect];
            [(AXLanguageManager *)selfCopy setDialectForCurrentLocale:defaultDialect3];
          }
        }

        v23 = [langMaps2 countByEnumeratingWithState:&v61 objects:v75 count:16];
      }

      while (v23);
    }
  }

  userLocale2 = [(AXLanguageManager *)selfCopy userLocale];
  v31 = *MEMORY[0x1E695D978];
  v32 = [userLocale2 objectForKey:*MEMORY[0x1E695D978]];

  if (v32)
  {
    v46 = v4;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = [(AXLanguageManager *)selfCopy langMaps];
    v50 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
    if (v50)
    {
      v48 = *v58;
      do
      {
        v33 = 0;
        do
        {
          if (*v58 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v52 = v33;
          v34 = *(*(&v57 + 1) + 8 * v33);
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          dialects = [v34 dialects];
          v36 = [dialects countByEnumeratingWithState:&v53 objects:v73 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v54;
            while (2)
            {
              for (m = 0; m != v37; ++m)
              {
                if (*v54 != v38)
                {
                  objc_enumerationMutation(dialects);
                }

                v40 = *(*(&v53 + 1) + 8 * m);
                locale = [v40 locale];
                v42 = [locale objectForKey:v31];
                v43 = [v42 hasSuffix:v32];

                if (v43)
                {
                  [(AXLanguageManager *)v51 setDialectForCurrentRegion:v40];
                  goto LABEL_47;
                }
              }

              v37 = [dialects countByEnumeratingWithState:&v53 objects:v73 count:16];
              if (v37)
              {
                continue;
              }

              break;
            }
          }

LABEL_47:

          v33 = v52 + 1;
        }

        while (v52 + 1 != v50);
        v50 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
      }

      while (v50);
    }

    v4 = v46;
    selfCopy = v51;
  }

  if (!selfCopy->_dialectForSystemLanguage)
  {
    if (selfCopy->_dialectForCurrentLocale)
    {
      dialectForCurrentLocale = [(AXLanguageManager *)selfCopy dialectForCurrentLocale];
LABEL_55:
      v45 = dialectForCurrentLocale;
      [(AXLanguageManager *)selfCopy setDialectForSystemLanguage:dialectForCurrentLocale];

      goto LABEL_56;
    }

    if (selfCopy->_dialectForCurrentRegion)
    {
      dialectForCurrentLocale = [(AXLanguageManager *)selfCopy dialectForCurrentRegion];
      goto LABEL_55;
    }
  }

LABEL_56:
}

- (id)descriptionOfWord:(id)word forLanguage:(id)language
{
  v5 = MEMORY[0x1E6989428];
  languageCopy = language;
  wordCopy = word;
  sharedInstance = [v5 sharedInstance];
  v9 = [sharedInstance descriptionOfWord:wordCopy forLanguage:languageCopy];

  return v9;
}

- (NSSet)preferredLanguageIDsFromUserSelectedKeyboards
{
  v20 = *MEMORY[0x1E69E9840];
  if (preferredLanguageIDsFromUserSelectedKeyboards_onceToken != -1)
  {
    [AXLanguageManager preferredLanguageIDsFromUserSelectedKeyboards];
  }

  v2 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [preferredLanguageIDsFromUserSelectedKeyboards_inputController safeValueForKey:@"enabledInputModeIdentifiers"];
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 rangeOfString:@"-"];
        v9 = v7;
        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = [v7 substringToIndex:v8];
        }

        v10 = [v7 rangeOfString:@"@"];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [v7 substringToIndex:v10];

          v9 = v11;
        }

        v12 = [v9 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
        [v2 addObject:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t __66__AXLanguageManager_preferredLanguageIDsFromUserSelectedKeyboards__block_invoke()
{
  v0 = [NSClassFromString(&cfstr_Uikeyboardinpu.isa) safeValueForKey:@"sharedInputModeController"];
  v1 = preferredLanguageIDsFromUserSelectedKeyboards_inputController;
  preferredLanguageIDsFromUserSelectedKeyboards_inputController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)characterSetForRanges:(id)ranges
{
  v22 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  if ([rangesCopy length])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD48]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = rangesCopy;
    obj = [rangesCopy componentsSeparatedByString:@" "];
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"-"];
          v10 = [v9 objectAtIndex:0];
          integerValue = [v10 integerValue];
          v12 = [v9 objectAtIndex:1];
          integerValue2 = [v12 integerValue];

          [v4 addCharactersInRange:{integerValue, integerValue2}];
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    rangesCopy = v15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_loadLangMaps
{
  v55 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"SynthesizerLanguageMap-UnifiedSpeech" ofType:@"plist"];

  v30 = v4;
  [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v29 = v52 = 0u;
  obj = [v29 objectForKey:@"languageMaps"];
  v34 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v34)
  {
    v32 = *v50;
    do
    {
      v5 = 0;
      do
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v5;
        v6 = *(*(&v49 + 1) + 8 * v5);
        v40 = [v6 objectForKey:@"languageID"];
        v39 = [v6 objectForKey:@"alternateLanguageIDs"];
        v38 = [v6 objectForKey:@"ambiguousWithLanguages"];
        v7 = [v6 objectForKey:@"isAmbiguous"];
        bOOLValue = [v7 BOOLValue];

        v8 = [v6 objectForKey:@"isWestern"];
        bOOLValue2 = [v8 BOOLValue];

        v9 = [v6 objectForKey:@"isRTL"];
        bOOLValue3 = [v9 BOOLValue];

        array2 = [MEMORY[0x1E695DF70] array];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v42 = [v6 objectForKey:@"localeLanguageMaps"];
        v10 = [v42 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v10)
        {
          v11 = v10;
          v43 = *v46;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v46 != v43)
              {
                objc_enumerationMutation(v42);
              }

              v13 = *(*(&v45 + 1) + 8 * i);
              v14 = objc_alloc(MEMORY[0x1E695DF58]);
              v15 = [v13 objectForKey:@"localeID"];
              v16 = [v14 initWithLocaleIdentifier:v15];

              v17 = [v13 objectForKey:@"languageID"];
              v18 = [v13 objectForKey:@"speakableCharacterRanges"];
              v19 = [(AXLanguageManager *)self characterSetForRanges:v18];
              v20 = [v13 objectForKey:@"supplementaryCharacterRanges"];

              v21 = [(AXLanguageManager *)self characterSetForRanges:v20];
              v22 = v21;
              if (v19)
              {
                v23 = v21 == 0;
              }

              else
              {
                v23 = 1;
              }

              if (!v23)
              {
                [v19 formUnionWithCharacterSet:v21];
              }

              v24 = [v13 objectForKeyedSubscript:@"secondaryLanguageRange"];
              v25 = [(AXLanguageManager *)self characterSetForRanges:v24];

              v26 = [[AXDialectMap alloc] initWithLocale:v16 specificLanguageID:v17 speakableCharacters:v19 secondaryLanguageRange:v25];
              [array2 addObject:v26];
            }

            v11 = [v42 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v11);
        }

        v27 = [[AXLangMap alloc] initWithLanguageID:v40 isWestern:bOOLValue2 isAmbiguous:bOOLValue isRTL:bOOLValue3 dialects:array2 alternateLanguageIDs:v39 associatedAmbiguousLanguages:v38];
        [array addObject:v27];

        v5 = v41 + 1;
      }

      while (v41 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v34);
  }

  return array;
}

- (void)_handleUserLocaleDidChange:(id)change
{
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [(AXLanguageManager *)self setUserLocale:autoupdatingCurrentLocale];

  if (self->_dialectForCurrentRegion)
  {
    [(AXLanguageManager *)self updateCachedDialects];
  }

  [(AXLanguageManager *)self set_unitTest_didUpdateForLocaleChange:1];
}

+ (id)dialectForAlternativeVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x1E69D9EC0]])
  {
    v4 = +[AXLanguageManager sharedInstance];
    v5 = [v4 dialectForLanguageID:@"en-US"];
  }

  else if ([MEMORY[0x1E69D9E98] isSiriVoiceIdentifier:identifierCopy])
  {
    TTSGetComponentsInNamedSiriVoiceIdentifier();
    v6 = 0;
    v7 = +[AXLanguageManager sharedInstance];
    v5 = [v7 dialectForLanguageID:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)didUpdateForLocaleChange
{
  _unitTest_didUpdateForLocaleChange = [(AXLanguageManager *)self _unitTest_didUpdateForLocaleChange];
  if (_unitTest_didUpdateForLocaleChange)
  {
    [(AXLanguageManager *)self set_unitTest_didUpdateForLocaleChange:0];
  }

  return _unitTest_didUpdateForLocaleChange;
}

@end