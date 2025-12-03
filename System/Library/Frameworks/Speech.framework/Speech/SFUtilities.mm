@interface SFUtilities
+ (BOOL)canAccessPathAt:(id)at methodName:(id)name error:(id *)error;
+ (BOOL)hasSPIAccess;
+ (BOOL)isANETypeAtLeastVersion:(int)version prefix:(id)prefix;
+ (BOOL)isCacheDirInternal;
+ (BOOL)isGeneralASRSupportedOnDevice;
+ (BOOL)isSpeechXPCEnabled;
+ (double)continuousTimeToNanoseconds:(unint64_t)nanoseconds;
+ (id)SFTop21Locales;
+ (id)SFTop41Locales;
+ (id)_alignTokenToFirstSeenPartialResult:(id)result tokenIndex:(unint64_t)index firstSeenPartialResultTokens:(id)tokens firstSeenPartialResultIndex:(unint64_t)resultIndex;
+ (id)_firstSeenPartialResultIndicesForTokens:(id)tokens firstSeenPartialResultTokens:(id)resultTokens;
+ (id)alignedPartialResultIndicesForTokens:(id)tokens firstSeenPartialResultTokens:(id)resultTokens;
+ (id)allSpeechProfileContainersForSharedUserInfos:(id)infos;
+ (id)aneSubType;
+ (id)defaultClientID;
+ (id)generalASRLanguageForLocaleIdentifier:(id)identifier;
+ (id)getNormString:(id)string;
+ (id)issueReadSandboxExtensionForFilePath:(id)path error:(id *)error;
+ (id)issueReadWriteSandboxExtensionForDirectoryPath:(id)path error:(id *)error;
+ (id)languageCodeForLocaleIdentifier:(id)identifier;
+ (id)localeCodeForLocale:(id)locale;
+ (id)localeIdentifiersForGeneralASRLanguageCode:(id)code;
+ (id)recognitionMetadataFromSpeechPhrases:(id)phrases afAudioAnalytics:(id)analytics utteranceStart:(double)start;
+ (id)recognizedResultFromPackage:(id)package;
+ (id)sandboxExtensionsForCustomLmConfig:(id)config;
+ (id)sandboxExtensionsForUsingANEAndAssets;
+ (id)speechProfileDateLastModifiedForLanguage:(id)language;
+ (id)speechProfilePathsForLanguage:(id)language personaId:(id)id;
+ (id)speechProfilePathsForLanguage:(id)language speechProfileContainers:(id)containers;
+ (id)speechProfilePathsForLanguage:(id)language userType:(id)type;
+ (id)speechProfileRootDirectoriesWithUserType:(id)type;
+ (id)supportedDictationLanguages;
+ (id)taskNameFromTaskHint:(int64_t)hint;
+ (id)transcriptionFromSpeechPhrases:(id)phrases afAudioAnalytics:(id)analytics utteranceStart:(double)start;
+ (id)transcriptionsWithTokens:(id)tokens;
+ (id)userSpecificSpeechProfileContainersForSharedUserInfos:(id)infos;
+ (unint64_t)cooldownTimerTimeoutSeconds;
+ (void)createDirPath:(id)path;
+ (void)initialize;
+ (void)loadSpeechProfiles:(id)profiles language:(id)language;
+ (void)loadSpeechProfiles:(id)profiles speechProfileContainers:(id)containers language:(id)language;
+ (void)supportedLocalesWithCompletion:(id)completion;
@end

@implementation SFUtilities

+ (void)initialize
{
  if (objc_opt_class() == self && SFLogInitIfNeeded_once != -1)
  {

    dispatch_once(&SFLogInitIfNeeded_once, &__block_literal_global_3109);
  }
}

+ (BOOL)isGeneralASRSupportedOnDevice
{
  if (isGeneralASRSupportedOnDevice_onceToken != -1)
  {
    dispatch_once(&isGeneralASRSupportedOnDevice_onceToken, &__block_literal_global_440);
  }

  return isGeneralASRSupportedOnDevice_isSupported;
}

+ (id)aneSubType
{
  if (aneSubType_onceToken != -1)
  {
    dispatch_once(&aneSubType_onceToken, &__block_literal_global_448);
  }

  v3 = aneSubType_aneSubType;

  return v3;
}

BOOL __44__SFUtilities_isGeneralASRSupportedOnDevice__block_invoke()
{
  result = [SFUtilities isANETypeAtLeastVersion:13 prefix:@"H"];
  if (result || (result = [SFUtilities isANETypeAtLeastVersion:11 prefix:@"M"]))
  {
    isGeneralASRSupportedOnDevice_isSupported = 1;
  }

  return result;
}

void __25__SFUtilities_aneSubType__block_invoke()
{
  if (objc_opt_class() && [MEMORY[0x1E698CD58] hasANE])
  {
    v2 = [MEMORY[0x1E698CD58] aneSubType];
    v0 = [v2 capitalizedString];
    v1 = aneSubType_aneSubType;
    aneSubType_aneSubType = v0;
  }
}

+ (double)continuousTimeToNanoseconds:(unint64_t)nanoseconds
{
  if (continuousTimeToNanoseconds__onceToken != -1)
  {
    dispatch_once(&continuousTimeToNanoseconds__onceToken, &__block_literal_global_465);
  }

  return *&continuousTimeToNanoseconds__clockToNanoseconds * nanoseconds;
}

double __43__SFUtilities_continuousTimeToNanoseconds___block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1;
  continuousTimeToNanoseconds__clockToNanoseconds = *&result;
  return result;
}

+ (BOOL)hasSPIAccess
{
  if (hasSPIAccess_onceToken != -1)
  {
    dispatch_once(&hasSPIAccess_onceToken, &__block_literal_global_463);
  }

  return hasSPIAccess_hasAccess;
}

void __27__SFUtilities_hasSPIAccess__block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.assistant.dictation.prerecorded", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        hasSPIAccess_hasAccess = CFBooleanGetValue(v3) != 0;
      }

      CFRelease(v3);
    }

    CFRelease(v1);
  }
}

+ (unint64_t)cooldownTimerTimeoutSeconds
{
  v11 = *MEMORY[0x1E69E9840];
  if (SFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SFIsInternalInstall_onceToken, &__block_literal_global_2153);
  }

  if (SFIsInternalInstall_isInternal == 1)
  {
    v2 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v2 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 120;
    }
  }

  else
  {
    unsignedIntegerValue = 120;
  }

  v4 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "+[SFUtilities cooldownTimerTimeoutSeconds]";
    v9 = 2048;
    v10 = unsignedIntegerValue;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "%s On-Device ASR: Cooldown scheduled for %zus.", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

+ (BOOL)isANETypeAtLeastVersion:(int)version prefix:(id)prefix
{
  v26 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v6 = +[SFUtilities aneSubType];
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315394;
    v19 = "+[SFUtilities isANETypeAtLeastVersion:prefix:]";
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_DEBUG, "%s Device aneSubType: %@", &v18, 0x16u);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else if (!v6)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = [(__CFString *)v6 rangeOfString:prefixCopy];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = strlen([prefixCopy fileSystemRepresentation]) + v8;
  v11 = [(__CFString *)v6 substringWithRange:v10, [(__CFString *)v6 length]- v10];
  v12 = atoi([v11 fileSystemRepresentation]);
  v13 = v12 >= version;
  isANETypeAtLeastVersion_prefix__isANETypeHigher = v12 >= version;
  v14 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
  {
    v17 = @"is NOT";
    v18 = 136315906;
    v19 = "+[SFUtilities isANETypeAtLeastVersion:prefix:]";
    v20 = 2112;
    if (v12 >= version)
    {
      v17 = @"is";
    }

    v21 = v17;
    v22 = 2112;
    v23 = prefixCopy;
    v24 = 1024;
    versionCopy = version;
    _os_log_debug_impl(&dword_1AC5BC000, v14, OS_LOG_TYPE_DEBUG, "%s Device %@ %@%d+", &v18, 0x26u);
    v13 = isANETypeAtLeastVersion_prefix__isANETypeHigher;
  }

LABEL_8:
  v15 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

+ (id)speechProfileDateLastModifiedForLanguage:(id)language
{
  v3 = [self speechProfilePathsForLanguage:language];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [defaultManager attributesOfItemAtPath:v4 error:0];

    if (v6)
    {
      v7 = [v6 objectForKey:*MEMORY[0x1E696A350]];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)loadSpeechProfiles:(id)profiles language:(id)language
{
  v58 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  languageCopy = language;
  if (profilesCopy)
  {
    v39 = languageCopy;
    v8 = [self speechProfilePathsForLanguage:languageCopy];
    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v47;
      v41 = *MEMORY[0x1E696A350];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          v15 = [profilesCopy objectForKey:v14];
          if (v15)
          {
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v17 = [defaultManager attributesOfItemAtPath:v14 error:0];

            if (v17)
            {
              v18 = [v17 objectForKey:v41];
              [v18 timeIntervalSinceReferenceDate];
              v20 = v19;
              loadDate = [v15 loadDate];
              [loadDate timeIntervalSinceReferenceDate];
              v23 = v22;

              if (v20 > 0.0 && v23 > 0.0 && v20 <= v23)
              {
                [v40 setObject:v15 forKey:v14];
                v25 = SFLogFramework;
                if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315395;
                  v51 = "+[SFUtilities loadSpeechProfiles:language:]";
                  v52 = 2113;
                  v53 = v14;
                  _os_log_debug_impl(&dword_1AC5BC000, v25, OS_LOG_TYPE_DEBUG, "%s Reused new type of speech profile: path=%{private}@", buf, 0x16u);
                }
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v11);
    }

    [profilesCopy removeAllObjects];
    [profilesCopy addEntriesFromDictionary:v40];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = v9;
    v27 = [v26 countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        v30 = 0;
        do
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v42 + 1) + 8 * v30);
          v32 = [profilesCopy objectForKey:v31];

          if (!v32)
          {
            date = [MEMORY[0x1E695DF00] date];
            v34 = [objc_alloc(MEMORY[0x1E699BA30]) initWithPath:v31 error:0];
            v35 = SFLogFramework;
            if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315651;
              v51 = "+[SFUtilities loadSpeechProfiles:language:]";
              v52 = 2113;
              v53 = v31;
              v54 = 1024;
              v55 = v34 != 0;
              _os_log_debug_impl(&dword_1AC5BC000, v35, OS_LOG_TYPE_DEBUG, "%s Loaded new type of speech profile: path=%{private}@ profile=%d", buf, 0x1Cu);
              if (v34)
              {
LABEL_28:
                [v34 setLoadDate:date];
                [profilesCopy setObject:v34 forKey:v31];
              }
            }

            else if (v34)
            {
              goto LABEL_28;
            }
          }

          ++v30;
        }

        while (v28 != v30);
        v36 = [v26 countByEnumeratingWithState:&v42 objects:v56 count:16];
        v28 = v36;
      }

      while (v36);
    }

    languageCopy = v39;
  }

  else
  {
    v37 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v51 = "+[SFUtilities loadSpeechProfiles:language:]";
      _os_log_error_impl(&dword_1AC5BC000, v37, OS_LOG_TYPE_ERROR, "%s profiles cannot be nil.", buf, 0xCu);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

+ (void)loadSpeechProfiles:(id)profiles speechProfileContainers:(id)containers language:(id)language
{
  v74 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  containersCopy = containers;
  languageCopy = language;
  v10 = SFLogFramework;
  if (profilesCopy)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *buf = 136315394;
      v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
      v69 = 2048;
      v70 = [containersCopy count];
      _os_log_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_DEFAULT, "%s MUX: Checking %zu container(s) for valid speech profiles.", buf, 0x16u);
    }

    containersCopy = [SFUtilities speechProfilePathsForLanguage:languageCopy speechProfileContainers:containersCopy, languageCopy, containersCopy];
    v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v52 = containersCopy;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = [containersCopy allKeys];
    v13 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v63;
      v53 = *MEMORY[0x1E696A350];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v63 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v62 + 1) + 8 * i);
          v18 = [profilesCopy objectForKey:v17];
          if (v18)
          {
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v61 = 0;
            v20 = [defaultManager attributesOfItemAtPath:v17 error:&v61];
            v21 = v61;

            if (v20)
            {
              v22 = [v20 objectForKey:v53];
              [v22 timeIntervalSinceReferenceDate];
              v24 = v23;
              loadDate = [v18 loadDate];
              [loadDate timeIntervalSinceReferenceDate];
              v27 = v26;

              if (v24 > 0.0 && v27 > 0.0 && v24 <= v27)
              {
                [v51 setObject:v18 forKey:v17];
                v29 = SFLogFramework;
                if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
                  v69 = 2112;
                  v70 = v17;
                  _os_log_impl(&dword_1AC5BC000, v29, OS_LOG_TYPE_INFO, "%s MUX: Reusing cached speech profile at path: %@", buf, 0x16u);
                }
              }
            }

            else
            {
              v31 = SFLogFramework;
              if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
                v69 = 2112;
                v70 = v17;
                v71 = 2112;
                v72 = v21;
                _os_log_error_impl(&dword_1AC5BC000, v31, OS_LOG_TYPE_ERROR, "%s MUX: Failed to retrieve file attributes at path: %@, error: %@", buf, 0x20u);
              }
            }
          }

          else
          {
            v30 = SFLogFramework;
            if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
              v69 = 2112;
              v70 = v17;
              _os_log_error_impl(&dword_1AC5BC000, v30, OS_LOG_TYPE_ERROR, "%s MUX: No cached speech profile for path: %@", buf, 0x16u);
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
      }

      while (v14);
    }

    [profilesCopy removeAllObjects];
    [profilesCopy addEntriesFromDictionary:v51];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obja = [v52 allKeys];
    v32 = [obja countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v58;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v58 != v34)
          {
            objc_enumerationMutation(obja);
          }

          v36 = *(*(&v57 + 1) + 8 * j);
          v37 = [profilesCopy objectForKey:v36];

          if (!v37)
          {
            v38 = [v52 objectForKey:v36];
            userId = [v38 userId];

            v40 = objc_alloc(MEMORY[0x1E699BA30]);
            v56 = 0;
            v41 = [v40 initWithPath:v36 userId:userId recognitionOnly:0 error:&v56];
            v42 = v56;
            v43 = SFLogFramework;
            if (v41)
            {
              if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
                v69 = 2112;
                v70 = v36;
                _os_log_impl(&dword_1AC5BC000, v43, OS_LOG_TYPE_INFO, "%s MUX: Loaded speech profile at path: %@", buf, 0x16u);
              }

              date = [MEMORY[0x1E695DF00] date];
              [v41 setLoadDate:date];

              [profilesCopy setObject:v41 forKey:v36];
            }

            else if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
              v69 = 2112;
              v70 = v36;
              v71 = 2112;
              v72 = v42;
              _os_log_error_impl(&dword_1AC5BC000, v43, OS_LOG_TYPE_ERROR, "%s MUX: Failed to load speech profile at path: %@, error: %@", buf, 0x20u);
            }
          }
        }

        v33 = [obja countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v33);
    }

    v45 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v45;
      v47 = [profilesCopy count];
      *buf = 136315394;
      v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
      v69 = 2048;
      v70 = v47;
      _os_log_impl(&dword_1AC5BC000, v46, OS_LOG_TYPE_DEFAULT, "%s MUX: Loaded %zu speech profile(s) in total.", buf, 0x16u);
    }

    languageCopy = v49;
    containersCopy = v50;
  }

  else if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
    _os_log_error_impl(&dword_1AC5BC000, v10, OS_LOG_TYPE_ERROR, "%s MUX: loadedProfiles cannot be nil.", buf, 0xCu);
  }

  v48 = *MEMORY[0x1E69E9840];
}

+ (id)userSpecificSpeechProfileContainersForSharedUserInfos:(id)infos
{
  v52 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  v42 = [MEMORY[0x1E695DFA8] set];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = infosCopy;
  v4 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v44;
    v7 = 0x1E797A000uLL;
    do
    {
      v8 = 0;
      v40 = v5;
      do
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * v8);
        sharedInstance = [*(v7 + 3312) sharedInstance];
        personaId = [v9 personaId];
        v12 = [sharedInstance personaMatchesEnrolledUser:personaId];

        if (v12)
        {
          v13 = +[SFSpeechProfileContainerManager sharedInstance];
          personaId2 = [v9 personaId];
          v15 = [v13 containerForPersona:personaId2];

          if (v15)
          {
            v16 = [SFSpeechProfileContainer alloc];
            v17 = [v15 url];
            personaId3 = [v9 personaId];
            sharedUserId = [v9 sharedUserId];
            loggableSharedUserId = [v9 loggableSharedUserId];
            v21 = [(SFSpeechProfileContainer *)v16 initWithURL:v17 personaId:personaId3 userId:sharedUserId loggableUserId:loggableSharedUserId];

            [v42 addObject:v21];
            v22 = SFLogFramework;
            if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
            {
              v23 = v22;
              personaId4 = [v9 personaId];
              *buf = 136315394;
              v48 = "+[SFUtilities userSpecificSpeechProfileContainersForSharedUserInfos:]";
              v49 = 2112;
              v50 = personaId4;
              _os_log_impl(&dword_1AC5BC000, v23, OS_LOG_TYPE_INFO, "%s MUX: Discovered UserVault container for personaId: %@", buf, 0x16u);
            }
          }

          v25 = [SFSpeechProfileContainer alloc];
          v26 = SFSpeechProfileRootDirectoryURL();
          personaId5 = [v9 personaId];
          sharedUserId2 = [v9 sharedUserId];
          loggableSharedUserId2 = [v9 loggableSharedUserId];
          v30 = [(SFSpeechProfileContainer *)v25 initWithURL:v26 personaId:personaId5 userId:sharedUserId2 loggableUserId:loggableSharedUserId2];

          [v42 addObject:v30];
          v31 = SFLogFramework;
          if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
          {
            v32 = v31;
            personaId6 = [v9 personaId];
            *buf = 136315394;
            v48 = "+[SFUtilities userSpecificSpeechProfileContainersForSharedUserInfos:]";
            v49 = 2112;
            v50 = personaId6;
            _os_log_impl(&dword_1AC5BC000, v32, OS_LOG_TYPE_INFO, "%s MUX: Discovered common container for personaId: %@", buf, 0x16u);
          }

          v7 = 0x1E797A000;
          v5 = v40;
        }

        else
        {
          v34 = SFLogFramework;
          if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
          {
            v35 = v34;
            personaId7 = [v9 personaId];
            *buf = 136315394;
            v48 = "+[SFUtilities userSpecificSpeechProfileContainersForSharedUserInfos:]";
            v49 = 2112;
            v50 = personaId7;
            _os_log_impl(&dword_1AC5BC000, v35, OS_LOG_TYPE_INFO, "%s MUX: personaId (%@) does not match an enrolled user, no respective containers will be discovered.", buf, 0x16u);
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v5);
  }

  allObjects = [v42 allObjects];

  v38 = *MEMORY[0x1E69E9840];

  return allObjects;
}

+ (id)allSpeechProfileContainersForSharedUserInfos:(id)infos
{
  v18 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [SFUtilities userSpecificSpeechProfileContainersForSharedUserInfos:infosCopy];
  [v4 addObjectsFromArray:v5];
  v6 = +[SFSpeechProfileContainer defaultContainer];
  [v4 addObject:v6];
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v12 = 136315650;
    v13 = "+[SFUtilities allSpeechProfileContainersForSharedUserInfos:]";
    v14 = 2048;
    v15 = [v4 count];
    v16 = 2048;
    v17 = [infosCopy count];
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_INFO, "%s MUX: Discovered %zu speech profile container(s) for %zu user(s).", &v12, 0x20u);
  }

  allObjects = [v4 allObjects];

  v10 = *MEMORY[0x1E69E9840];

  return allObjects;
}

+ (id)speechProfilePathsForLanguage:(id)language speechProfileContainers:(id)containers
{
  v51 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  containersCopy = containers;
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = containersCopy;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v40;
    *&v8 = 136315394;
    v36 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        personaId = [v12 personaId];
        if (personaId)
        {
          v14 = +[SFSpeechProfileContainerManager sharedInstance];
          v15 = [v14 containerForPersona:personaId];

          v16 = [v12 url];
          v17 = v16;
          v18 = personaId;
        }

        else
        {
          v16 = [v12 url];
          v17 = v16;
          v18 = 0;
        }

        v19 = SFDataSiteURL(v16, v18);

        path = [v19 path];
        v21 = [path length];

        if (v21)
        {
          v22 = MEMORY[0x1E696AEC0];
          path2 = [v19 path];
          v49[0] = path2;
          v49[1] = @"0000000000000000";
          v49[2] = languageCopy;
          v49[3] = @"SpeechProfile";
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
          v25 = [v22 pathWithComponents:v24];

          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          LOBYTE(path2) = [defaultManager fileExistsAtPath:v25];

          if (path2)
          {
            [v37 setObject:v12 forKey:v25];
          }

          else
          {
            v28 = SFLogFramework;
            if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
            {
              *buf = v36;
              v44 = "+[SFUtilities speechProfilePathsForLanguage:speechProfileContainers:]";
              v45 = 2112;
              v46 = v25;
              _os_log_impl(&dword_1AC5BC000, v28, OS_LOG_TYPE_INFO, "%s MUX: No speech profile exists at path: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v27 = SFLogFramework;
          if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
          {
            *buf = v36;
            v44 = "+[SFUtilities speechProfilePathsForLanguage:speechProfileContainers:]";
            v45 = 2112;
            v46 = personaId;
            _os_log_error_impl(&dword_1AC5BC000, v27, OS_LOG_TYPE_ERROR, "%s MUX: No speech profile site URL for personaId: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v9);
  }

  v29 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v29;
    v31 = [v6 count];
    allKeys = [v37 allKeys];
    v33 = [allKeys count];
    *buf = 136315650;
    v44 = "+[SFUtilities speechProfilePathsForLanguage:speechProfileContainers:]";
    v45 = 2048;
    v46 = v31;
    v47 = 2048;
    v48 = v33;
    _os_log_impl(&dword_1AC5BC000, v30, OS_LOG_TYPE_DEFAULT, "%s MUX: Out of %zu container(s), %zu speech profile(s) are present on disk.", buf, 0x20u);
  }

  v34 = *MEMORY[0x1E69E9840];

  return v37;
}

+ (id)speechProfilePathsForLanguage:(id)language personaId:(id)id
{
  v28 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  idCopy = id;
  v7 = idCopy;
  if (languageCopy)
  {
    if (idCopy)
    {
      v8 = objc_alloc(MEMORY[0x1E698D0B8]);
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __55__SFUtilities_speechProfilePathsForLanguage_personaId___block_invoke;
      v21 = &unk_1E797C9D0;
      v22 = v7;
      v9 = [v8 initWithBuilder:&v18];
      v23 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:{1, v18, v19, v20, v21}];
      v11 = [SFUtilities userSpecificSpeechProfileContainersForSharedUserInfos:v10];

      v12 = [SFUtilities speechProfilePathsForLanguage:languageCopy speechProfileContainers:v11];
      allKeys = [v12 allKeys];
    }

    else
    {
      v15 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v25 = "+[SFUtilities speechProfilePathsForLanguage:personaId:]";
        v26 = 2112;
        v27 = languageCopy;
        _os_log_impl(&dword_1AC5BC000, v15, OS_LOG_TYPE_INFO, "%s Returning the %@ speech profile path for the default user.", buf, 0x16u);
      }

      allKeys = [SFUtilities speechProfilePathsForLanguage:languageCopy userType:@"Default"];
    }
  }

  else
  {
    v14 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "+[SFUtilities speechProfilePathsForLanguage:personaId:]";
      _os_log_error_impl(&dword_1AC5BC000, v14, OS_LOG_TYPE_ERROR, "%s language cannot be nil.", buf, 0xCu);
    }

    allKeys = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return allKeys;
}

+ (id)speechProfilePathsForLanguage:(id)language userType:(id)type
{
  v48 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  typeCopy = type;
  if (languageCopy)
  {
    v7 = [SFUtilities stringByReplacingUnderscoresWithHyphens:languageCopy];

    v8 = SFReplacementLocaleCodeForLocaleIdentifier(v7);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;

    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = typeCopy;
    [SFUtilities speechProfileRootDirectoriesWithUserType:typeCopy];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v42 = 0u;
    v32 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v32)
    {
      v31 = *v40;
      do
      {
        v12 = 0;
        do
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v12;
          v13 = *(*(&v39 + 1) + 8 * v12);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v15 = [defaultManager enumeratorAtPath:v13];

          v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v36;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v36 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v35 + 1) + 8 * i);
                v21 = MEMORY[0x1E696AEC0];
                v43[0] = v13;
                v43[1] = v20;
                v43[2] = v11;
                v43[3] = @"SpeechProfile";
                v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
                v23 = [v21 pathWithComponents:v22];

                defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
                v25 = [defaultManager2 fileExistsAtPath:v23];

                if (v25)
                {
                  [v34 addObject:v23];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v17);
          }

          v12 = v33 + 1;
        }

        while (v33 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v32);
    }

    typeCopy = v29;
  }

  else
  {
    v26 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v47 = "+[SFUtilities speechProfilePathsForLanguage:userType:]";
      _os_log_error_impl(&dword_1AC5BC000, v26, OS_LOG_TYPE_ERROR, "%s language cannot be nil.", buf, 0xCu);
    }

    v34 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v34;
}

+ (id)speechProfileRootDirectoriesWithUserType:(id)type
{
  v18 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = SFSpeechProfileSiteDirectoriesWithUserType(typeCopy);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        path = [*(*(&v13 + 1) + 8 * i) path];
        if (path)
        {
          [v4 addObject:path];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_alignTokenToFirstSeenPartialResult:(id)result tokenIndex:(unint64_t)index firstSeenPartialResultTokens:(id)tokens firstSeenPartialResultIndex:(unint64_t)resultIndex
{
  v41[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  tokensCopy = tokens;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v40 = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultIndex];
  v41[0] = v12;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];

  v37 = resultCopy;
  v13 = [resultCopy count];
  v14 = [tokensCopy count];
  v35 = v13;
  if (v13 > index)
  {
    v15 = v14;
    v16 = 0;
    resultIndexCopy = resultIndex;
    v34 = resultIndex + index;
    v17 = -1;
    resultIndexCopy2 = resultIndex;
    while (1)
    {
      v19 = [v37 objectAtIndexedSubscript:{index, resultIndexCopy}];
      tokenName = [v19 tokenName];
      v21 = [SFUtilities getNormString:tokenName];

      v22 = resultIndexCopy2;
      if (v15 > resultIndexCopy2)
      {
        break;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      v16 = 0;
      v26 = v15;
LABEL_11:
      v27 = index - v34 + v22 + v26;
      if (v27 < v17)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
        v38 = v28;
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
        v39 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];

        if (!v27)
        {

          v36 = v30;
          goto LABEL_17;
        }

        v36 = v30;
        v17 = v27;
      }

      ++index;
      resultIndexCopy2 = resultIndexCopy;
      if (index == v35)
      {
        goto LABEL_17;
      }
    }

    v23 = v16;
    v22 = resultIndexCopy2;
    while (1)
    {
      v24 = [tokensCopy objectAtIndex:v22];
      v25 = [v24 objectForKey:v21];

      if (v25)
      {
        break;
      }

      if (v15 == ++v22)
      {
        v22 = v15;
        v16 = v23;
        goto LABEL_8;
      }
    }

LABEL_9:
    v26 = 0;
    v16 = 1;
    goto LABEL_11;
  }

LABEL_17:

  v31 = *MEMORY[0x1E69E9840];

  return v36;
}

+ (id)_firstSeenPartialResultIndicesForTokens:(id)tokens firstSeenPartialResultTokens:(id)resultTokens
{
  tokensCopy = tokens;
  resultTokensCopy = resultTokens;
  array = [MEMORY[0x1E695DF70] array];
  v24 = tokensCopy;
  v8 = [tokensCopy count];
  v23 = resultTokensCopy;
  v9 = [resultTokensCopy count];
  if (v8)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = [SFUtilities _alignTokenToFirstSeenPartialResult:v24 tokenIndex:v11 firstSeenPartialResultTokens:v23 firstSeenPartialResultIndex:v12];
      allKeys = [v13 allKeys];
      firstObject = [allKeys firstObject];
      unsignedIntegerValue = [firstObject unsignedIntegerValue];

      allValues = [v13 allValues];
      firstObject2 = [allValues firstObject];
      unsignedIntegerValue2 = [firstObject2 unsignedIntegerValue];

      v20 = unsignedIntegerValue - v11;
      if (unsignedIntegerValue > v11)
      {
        do
        {
          [array addObject:&unk_1F214A188];
          --v20;
        }

        while (v20);
      }

      if (unsignedIntegerValue2 >= v10)
      {
        [array addObject:&unk_1F214A188];
        v12 = v10;
      }

      else
      {
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue2];
        [array addObject:v21];

        v12 = unsignedIntegerValue2 + 1;
      }

      v11 = unsignedIntegerValue + 1;
    }

    while (unsignedIntegerValue + 1 < v8);
  }

  return array;
}

+ (id)alignedPartialResultIndicesForTokens:(id)tokens firstSeenPartialResultTokens:(id)resultTokens
{
  tokensCopy = tokens;
  resultTokensCopy = resultTokens;
  array = [MEMORY[0x1E695DF70] array];
  v34 = tokensCopy;
  v8 = [SFUtilities _firstSeenPartialResultIndicesForTokens:tokensCopy firstSeenPartialResultTokens:resultTokensCopy];
  v9 = [v8 count];
  v33 = resultTokensCopy;
  v10 = [resultTokensCopy count];
  if (v9)
  {
    v11 = v10;
    v12 = 0;
    v13 = __Block_byref_object_copy__2196;
    v14 = __Block_byref_object_dispose__2197;
    v32 = v8;
    do
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = v13;
      v40 = v14;
      v41 = &unk_1F214A188;
      v15 = [v8 objectAtIndexedSubscript:v12];
      v16 = [v15 isEqualToNumber:&unk_1F214A188];

      if ((v16 & 1) == 0)
      {
        v17 = [v8 objectAtIndexedSubscript:v12];
        unsignedIntegerValue = [v17 unsignedIntegerValue];

        if (unsignedIntegerValue < v11)
        {
          v19 = v14;
          v20 = v13;
          v21 = v9;
          v22 = v11;
          v23 = array;
          v24 = [v34 objectAtIndex:v12];
          tokenName = [v24 tokenName];
          v26 = [SFUtilities getNormString:tokenName];

          v27 = [v33 objectAtIndex:unsignedIntegerValue];
          v28 = [v27 objectForKey:v26];
          if (v28)
          {
            objc_storeStrong(v37 + 5, v28);
          }

          else
          {
            v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-1];
            v30 = v37[5];
            v37[5] = v29;

            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __81__SFUtilities_alignedPartialResultIndicesForTokens_firstSeenPartialResultTokens___block_invoke;
            v35[3] = &unk_1E797C9A8;
            v35[4] = &v36;
            [v27 enumerateKeysAndObjectsUsingBlock:v35];
          }

          array = v23;
          v11 = v22;
          v9 = v21;
          v13 = v20;
          v14 = v19;
          v8 = v32;
        }
      }

      [array addObject:v37[5]];
      _Block_object_dispose(&v36, 8);

      ++v12;
    }

    while (v9 != v12);
  }

  return array;
}

uint64_t __81__SFUtilities_alignedPartialResultIndicesForTokens_firstSeenPartialResultTokens___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (v8 > v5)
  {
    v10 = v5;
    objc_storeStrong(v7, a3);
    v5 = v10;
  }

  return MEMORY[0x1EEE66BB8](v7, v5);
}

+ (id)getNormString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  lowercaseString = [stringCopy lowercaseString];
  v6 = [lowercaseString componentsSeparatedByString:@" "];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"\\""];
        firstObject = [v11 firstObject];
        [array addObject:firstObject];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [array componentsJoinedByString:@" "];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)localeIdentifiersForGeneralASRLanguageCode:(id)code
{
  codeCopy = code;
  codeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-", codeCopy];
  v5 = [SFSpeechAssetManager supportedLanguagesForTaskHint:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__SFUtilities_localeIdentifiersForGeneralASRLanguageCode___block_invoke;
  v12[3] = &unk_1E797C980;
  v13 = codeCopy;
  v6 = codeCopy;
  v7 = [v5 indexesOfObjectsPassingTest:v12];
  v8 = [v5 objectsAtIndexes:v7];
  v9 = [v8 mutableCopy];

  if ([codeCopy isEqualToString:@"cmn"])
  {
    [v9 addObject:@"zh-CN"];
    [v9 addObject:@"zh-TW"];
  }

  if ([codeCopy isEqualToString:@"yue"])
  {
    [v9 addObject:@"zh-HK"];
  }

  v10 = [v9 copy];

  return v10;
}

+ (id)generalASRLanguageForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = SFGeneralASRReplacementLanguageCodeForLocaleIdentifier(identifierCopy);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [SFUtilities languageCodeForLocaleIdentifier:identifierCopy];
  }

  v7 = v6;

  return v7;
}

+ (id)localeCodeForLocale:(id)locale
{
  v3 = *MEMORY[0x1E695D9B0];
  localeCopy = locale;
  v5 = [localeCopy objectForKey:v3];
  v6 = [localeCopy objectForKey:*MEMORY[0x1E695D978]];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

+ (id)languageCodeForLocaleIdentifier:(id)identifier
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifier];
  languageCode = [v3 languageCode];

  return languageCode;
}

+ (id)defaultClientID
{
  if (defaultClientID_onceToken != -1)
  {
    dispatch_once(&defaultClientID_onceToken, &__block_literal_global_402);
  }

  v3 = defaultClientID_defaultClientID;

  return v3;
}

void __30__SFUtilities_defaultClientID__block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    objc_storeStrong(&defaultClientID_defaultClientID, v1);
  }

  else
  {
    v2 = [MEMORY[0x1E696AE30] processInfo];
    v3 = [v2 processName];
    v4 = defaultClientID_defaultClientID;
    defaultClientID_defaultClientID = v3;

    v5 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315394;
      v8 = "+[SFUtilities defaultClientID]_block_invoke";
      v9 = 2112;
      v10 = defaultClientID_defaultClientID;
      _os_log_fault_impl(&dword_1AC5BC000, v5, OS_LOG_TYPE_FAULT, "%s Application does not have a bundle identifier; using unstable %@ as client identifier", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)createDirPath:(id)path
{
  v14 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:pathCopy isDirectory:0] & 1) == 0)
  {
    v9 = 0;
    v5 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v9];
    v6 = v9;
    v7 = SFLogFramework;
    if (v5)
    {
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v11 = "+[SFUtilities createDirPath:]";
        v12 = 2112;
        v13 = pathCopy;
        _os_log_debug_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_DEBUG, "%s Write successful %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "+[SFUtilities createDirPath:]";
      v12 = 2112;
      v13 = pathCopy;
      _os_log_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_INFO, "%s Failed to create directory %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)sandboxExtensionsForCustomLmConfig:(id)config
{
  configCopy = config;
  if (configCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    languageModel = [configCopy languageModel];
    path = [languageModel path];
    v7 = [SFUtilities issueReadSandboxExtensionForFilePath:path error:0];

    if (v7)
    {
      [array addObject:v7];
      vocabulary = [configCopy vocabulary];

      if (vocabulary)
      {
        vocabulary2 = [configCopy vocabulary];
        path2 = [vocabulary2 path];
        v11 = [SFUtilities issueReadSandboxExtensionForFilePath:path2 error:0];

        if (v11)
        {
          [array addObject:v11];
        }
      }
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

+ (id)sandboxExtensionsForUsingANEAndAssets
{
  v12 = *MEMORY[0x1E69E9840];
  if (+[SFUtilities isCacheDirInternal])
  {
    v2 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315138;
      v11 = "+[SFUtilities sandboxExtensionsForUsingANEAndAssets]";
      _os_log_debug_impl(&dword_1AC5BC000, v2, OS_LOG_TYPE_DEBUG, "%s Sandbox extension Cache directories not needed.", &v10, 0xCu);
    }

    array = 0;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    firstObject = [v4 firstObject];

    v6 = [firstObject stringByAppendingPathComponent:@"com.apple.speech.localspeechrecognition"];
    [SFUtilities createDirPath:v6];
    v7 = [SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:v6 error:0];
    if (v7)
    {
      [array addObject:v7];
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return array;
}

+ (BOOL)isCacheDirInternal
{
  v2 = 1;
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v3 firstObject];

  if (([firstObject hasPrefix:@"/var/mobile/Library/Caches"] & 1) == 0)
  {
    v2 = [firstObject hasPrefix:@"/private/var/mobile/Library/Caches"];
  }

  return v2;
}

+ (id)issueReadSandboxExtensionForFilePath:(id)path error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
  {
    v21 = v7;
    v22 = NSStringFromSelector(a2);
    *buf = 136315650;
    v31 = "+[SFUtilities issueReadSandboxExtensionForFilePath:error:]";
    v32 = 2112;
    v33 = v22;
    v34 = 2112;
    v35 = pathCopy;
    _os_log_debug_impl(&dword_1AC5BC000, v21, OS_LOG_TYPE_DEBUG, "%s %@: path=%@", buf, 0x20u);
  }

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  v29 = 0;
  v10 = [v8 canAccessPathAt:pathCopy methodName:v9 error:&v29];
  v11 = v29;

  if (v10)
  {
    [pathCopy UTF8String];
    v12 = sandbox_extension_issue_file();
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
      free(v13);
      goto LABEL_12;
    }

    v17 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
    {
      v27 = v17;
      v28 = NSStringFromSelector(a2);
      *buf = 136315650;
      v31 = "+[SFUtilities issueReadSandboxExtensionForFilePath:error:]";
      v32 = 2112;
      v33 = v28;
      v34 = 2112;
      v35 = pathCopy;
      _os_log_debug_impl(&dword_1AC5BC000, v27, OS_LOG_TYPE_DEBUG, "%s %@: sandbox_extension_issue_file() returned NULL. path=%@", buf, 0x20u);
    }

    goto LABEL_11;
  }

  v15 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    v25 = v15;
    v26 = NSStringFromSelector(a2);
    *buf = 136315906;
    v31 = "+[SFUtilities issueReadSandboxExtensionForFilePath:error:]";
    v32 = 2112;
    v33 = v26;
    v34 = 2112;
    v35 = pathCopy;
    v36 = 2112;
    v37 = v11;
    _os_log_error_impl(&dword_1AC5BC000, v25, OS_LOG_TYPE_ERROR, "%s %@: Inaccessible file (%@) : error=%@", buf, 0x2Au);

    if (error)
    {
      goto LABEL_8;
    }
  }

  else if (error)
  {
LABEL_8:
    v16 = v11;
    v14 = 0;
    *error = v11;
    goto LABEL_12;
  }

LABEL_11:
  v14 = 0;
LABEL_12:
  v18 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
  {
    v23 = v18;
    v24 = NSStringFromSelector(a2);
    *buf = 136315650;
    v31 = "+[SFUtilities issueReadSandboxExtensionForFilePath:error:]";
    v32 = 2112;
    v33 = v24;
    v34 = 2112;
    v35 = v14;
    _os_log_debug_impl(&dword_1AC5BC000, v23, OS_LOG_TYPE_DEBUG, "%s %@: sandboxExtension=%@", buf, 0x20u);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)issueReadWriteSandboxExtensionForDirectoryPath:(id)path error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
  {
    v19 = v7;
    v20 = NSStringFromSelector(a2);
    *buf = 136315650;
    v32 = "+[SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:error:]";
    v33 = 2112;
    v34 = v20;
    v35 = 2112;
    v36 = pathCopy;
    _os_log_debug_impl(&dword_1AC5BC000, v19, OS_LOG_TYPE_DEBUG, "%s %@: path=%@", buf, 0x20u);
  }

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  v30 = 0;
  v10 = [v8 canAccessPathAt:pathCopy methodName:v9 error:&v30];
  v11 = v30;

  if (!v10)
  {
    v16 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v21 = v16;
      v22 = NSStringFromSelector(a2);
      *buf = 136315906;
      v32 = "+[SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:error:]";
      v33 = 2112;
      v34 = v22;
      v35 = 2112;
      v36 = pathCopy;
      v37 = 2112;
      v38 = v11;
      _os_log_error_impl(&dword_1AC5BC000, v21, OS_LOG_TYPE_ERROR, "%s %@: Inaccessible file (%@) : error=%@", buf, 0x2Au);

      if (error)
      {
        goto LABEL_8;
      }
    }

    else if (error)
    {
LABEL_8:
      v17 = v11;
      v15 = 0;
      *error = v11;
      goto LABEL_15;
    }

    v15 = 0;
    goto LABEL_15;
  }

  pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/", pathCopy];
  [pathCopy UTF8String];
  v13 = sandbox_extension_issue_file();
  if (v13)
  {
    v14 = v13;
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    free(v14);
  }

  else
  {
    v18 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
    {
      v28 = v18;
      v29 = NSStringFromSelector(a2);
      *buf = 136315650;
      v32 = "+[SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:error:]";
      v33 = 2112;
      v34 = v29;
      v35 = 2112;
      v36 = pathCopy;
      _os_log_debug_impl(&dword_1AC5BC000, v28, OS_LOG_TYPE_DEBUG, "%s %@: sandbox_extension_issue_file() returned NULL. path=%@", buf, 0x20u);
    }

    v15 = 0;
  }

LABEL_15:
  v23 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
  {
    v26 = v23;
    v27 = NSStringFromSelector(a2);
    *buf = 136315650;
    v32 = "+[SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:error:]";
    v33 = 2112;
    v34 = v27;
    v35 = 2112;
    v36 = v15;
    _os_log_debug_impl(&dword_1AC5BC000, v26, OS_LOG_TYPE_DEBUG, "%s %@: sandboxExtension=%@", buf, 0x20u);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (BOOL)canAccessPathAt:(id)at methodName:(id)name error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  atCopy = at;
  nameCopy = name;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [defaultManager fileExistsAtPath:atCopy];
  v11 = v10;
  if (error && (v10 & 1) == 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E698D280];
    v18 = *MEMORY[0x1E696A578];
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to access path: %@ method:%@", atCopy, nameCopy];
    v19[0] = nameCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v12 errorWithDomain:v13 code:203 userInfo:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)isSpeechXPCEnabled
{
  if (isSpeechXPCEnabled_onceToken != -1)
  {
    dispatch_once(&isSpeechXPCEnabled_onceToken, &__block_literal_global_384);
  }

  return isSpeechXPCEnabled_result;
}

uint64_t __33__SFUtilities_isSpeechXPCEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    isSpeechXPCEnabled_result = 1;
  }

  return result;
}

+ (id)recognizedResultFromPackage:(id)package
{
  packageCopy = package;
  recognition = [packageCopy recognition];
  phrases = [recognition phrases];
  audioAnalytics = [packageCopy audioAnalytics];
  [packageCopy utteranceStart];
  v7 = [SFUtilities transcriptionFromSpeechPhrases:phrases afAudioAnalytics:audioAnalytics utteranceStart:?];

  rawRecognition = [packageCopy rawRecognition];
  phrases2 = [rawRecognition phrases];
  audioAnalytics2 = [packageCopy audioAnalytics];
  [packageCopy utteranceStart];
  v11 = [SFUtilities transcriptionFromSpeechPhrases:phrases2 afAudioAnalytics:audioAnalytics2 utteranceStart:?];

  recognition2 = [packageCopy recognition];
  phrases3 = [recognition2 phrases];
  audioAnalytics3 = [packageCopy audioAnalytics];
  [packageCopy utteranceStart];
  v15 = [SFUtilities recognitionMetadataFromSpeechPhrases:phrases3 afAudioAnalytics:audioAnalytics3 utteranceStart:?];

  v16 = [SFSpeechRecognitionResult alloc];
  isFinal = [packageCopy isFinal];

  v18 = [(SFSpeechRecognitionResult *)v16 _initWithBestTranscription:v7 rawTranscription:v11 final:isFinal speechRecognitionMetadata:v15];

  return v18;
}

+ (id)transcriptionsWithTokens:(id)tokens
{
  v33 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  array = [MEMORY[0x1E695DF70] array];
  string = [MEMORY[0x1E696AD60] string];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = tokensCopy;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v26 = *v29;
    v8 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = v7;
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if (v10 && ([*(*(&v28 + 1) + 8 * i) removeSpaceBefore] & 1) == 0 && (objc_msgSend(v10, "removeSpaceAfter") & 1) == 0)
        {
          [string appendString:@" "];
        }

        text = [v11 text];
        v13 = [string length];
        v14 = [text length];
        [v11 startTime];
        v16 = v15;
        v17 = [SFTranscriptionSegment alloc];
        [v11 silenceStartTime];
        v19 = v18 - v16;
        *&v20 = [v11 confidenceScore] * 0.001;
        v21 = [(SFTranscriptionSegment *)v17 _initWithSubstring:text range:v13 timestamp:v14 duration:v8 confidence:v8 alternativeSubstrings:v16 alternativeConfidences:v19 phoneSequence:v20 ipaPhoneSequence:&stru_1F2139F58 voiceAnalytics:0];
        [array addObject:v21];
        [string appendString:text];
        v7 = v11;
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v22 = [[SFTranscription alloc] _initWithSegments:array formattedString:string speakingRate:0.0 averagePauseDuration:0.0];
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)recognitionMetadataFromSpeechPhrases:(id)phrases afAudioAnalytics:(id)analytics utteranceStart:(double)start
{
  v42 = *MEMORY[0x1E69E9840];
  phrasesCopy = phrases;
  analyticsCopy = analytics;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0x7FEFFFFFFFFFFFFFLL;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0x10000000000000;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = phrasesCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v28[0] = 0;
        v28[1] = v28;
        v28[2] = 0x2020000000;
        v28[3] = 0x7FEFFFFFFFFFFFFFLL;
        v34[3] = 2.22507386e-308;
        interpretations = [v11 interpretations];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __84__SFUtilities_recognitionMetadataFromSpeechPhrases_afAudioAnalytics_utteranceStart___block_invoke;
        v27[3] = &unk_1E797C958;
        v27[4] = v28;
        v27[5] = &v33;
        v27[6] = &v37;
        [interpretations enumerateObjectsUsingBlock:v27];

        _Block_object_dispose(v28, 8);
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v8);
  }

  v13 = VoiceAnalyticsForSegment(analyticsCopy, v38[3], v34[3]);
  speechRecognitionFeatures = [analyticsCopy speechRecognitionFeatures];
  v15 = [speechRecognitionFeatures objectForKey:@"speakingRate"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [speechRecognitionFeatures objectForKey:@"averagePauseDuration"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [SFSpeechRecognitionMetadata alloc];
  v22 = [(SFSpeechRecognitionMetadata *)v21 _initWithSpeechStartTimestamp:v13 speechDuration:v38[3] + start voiceAnalytics:v34[3] - v38[3] speakingRate:v17 averagePauseDuration:v20];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

void __84__SFUtilities_recognitionMetadataFromSpeechPhrases_afAudioAnalytics_utteranceStart___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a2 tokens];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = *(*(a1[4] + 8) + 24);
        [v8 startTime];
        if (v9 < v10)
        {
          v10 = v9;
        }

        *(*(a1[4] + 8) + 24) = v10;
        v11 = *(*(a1[5] + 8) + 24);
        [v8 silenceStartTime];
        if (v11 >= v12)
        {
          v12 = v11;
        }

        *(*(a1[5] + 8) + 24) = v12;
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *(a1[6] + 8);
  if (*(v13 + 24) == 1.79769313e308)
  {
    *(v13 + 24) = *(*(a1[4] + 8) + 24);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)transcriptionFromSpeechPhrases:(id)phrases afAudioAnalytics:(id)analytics utteranceStart:(double)start
{
  v97 = *MEMORY[0x1E69E9840];
  phrasesCopy = phrases;
  analyticsCopy = analytics;
  array = [MEMORY[0x1E695DF70] array];
  string = [MEMORY[0x1E696AD60] string];
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x3032000000;
  v94[3] = __Block_byref_object_copy__2196;
  v94[4] = __Block_byref_object_dispose__2197;
  v95 = 0;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = phrasesCopy;
  v8 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
  if (v8)
  {
    v47 = *v91;
    do
    {
      v48 = v8;
      for (i = 0; i != v48; ++i)
      {
        if (*v91 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v90 + 1) + 8 * i);
        interpretations = [v10 interpretations];
        firstObject = [interpretations firstObject];
        if (firstObject)
        {
          v86 = 0;
          v87 = &v86;
          v88 = 0x2020000000;
          v89 = [string length];
          string2 = [MEMORY[0x1E696AD60] string];
          array2 = [MEMORY[0x1E695DF70] array];
          array3 = [MEMORY[0x1E695DF70] array];
          v82 = 0;
          v83 = &v82;
          v84 = 0x2020000000;
          v85 = 0x7FEFFFFFFFFFFFFFLL;
          v78 = 0;
          v79 = &v78;
          v80 = 0x2020000000;
          v81 = 0x10000000000000;
          v74 = 0;
          v75 = &v74;
          v76 = 0x2020000000;
          v77 = 1065353216;
          v68 = 0;
          v69 = &v68;
          v70 = 0x3032000000;
          v71 = __Block_byref_object_copy__2196;
          v72 = __Block_byref_object_dispose__2197;
          v73 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v62 = 0;
          v63 = &v62;
          v64 = 0x3032000000;
          v65 = __Block_byref_object_copy__2196;
          v66 = __Block_byref_object_dispose__2197;
          v67 = objc_alloc_init(MEMORY[0x1E696AD60]);
          interpretations2 = [v10 interpretations];
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __78__SFUtilities_transcriptionFromSpeechPhrases_afAudioAnalytics_utteranceStart___block_invoke;
          v50[3] = &unk_1E797C930;
          v55 = &v82;
          v56 = &v78;
          v17 = array2;
          v51 = v17;
          v18 = array3;
          v52 = v18;
          v57 = v94;
          v19 = string;
          v53 = v19;
          v58 = &v86;
          v20 = string2;
          v54 = v20;
          v59 = &v74;
          v60 = &v68;
          v61 = &v62;
          [interpretations2 enumerateObjectsUsingBlock:v50];

          if (v83[3] != 1.79769313e308 && v79[3] != 2.22507386e-308)
          {
            v21 = v87[3];
            v22 = [v19 length];
            v23 = v87[3];
            if ([v69[5] length])
            {
              v45 = [MEMORY[0x1E696AEC0] stringWithString:v69[5]];
            }

            else
            {
              v45 = 0;
            }

            v44 = v21;
            if ([v63[5] length])
            {
              v24 = [MEMORY[0x1E696AEC0] stringWithString:v63[5]];
            }

            else
            {
              v24 = 0;
            }

            v25 = VoiceAnalyticsForSegment(analyticsCopy, v83[3], v79[3]);
            v26 = [SFTranscriptionSegment alloc];
            v27 = v83[3];
            v28 = v27 + start;
            v29 = v79[3];
            v30 = v29 - v27;
            LODWORD(v29) = *(v75 + 6);
            v31 = [(SFTranscriptionSegment *)v26 _initWithSubstring:v20 range:v44 timestamp:v22 - v23 duration:v17 confidence:v18 alternativeSubstrings:v45 alternativeConfidences:v28 phoneSequence:v30 ipaPhoneSequence:v29 voiceAnalytics:v24, v25];
            [array addObject:v31];
          }

          _Block_object_dispose(&v62, 8);
          _Block_object_dispose(&v68, 8);

          _Block_object_dispose(&v74, 8);
          _Block_object_dispose(&v78, 8);
          _Block_object_dispose(&v82, 8);

          _Block_object_dispose(&v86, 8);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
    }

    while (v8);
  }

  speechRecognitionFeatures = [analyticsCopy speechRecognitionFeatures];
  v33 = [speechRecognitionFeatures objectForKey:@"speakingRate"];
  [v33 doubleValue];
  v35 = v34;

  v36 = [speechRecognitionFeatures objectForKey:@"averagePauseDuration"];
  [v36 doubleValue];
  v38 = v37;

  v39 = [[SFTranscription alloc] _initWithSegments:array formattedString:string speakingRate:v35 averagePauseDuration:v38];
  _Block_object_dispose(v94, 8);

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

void __78__SFUtilities_transcriptionFromSpeechPhrases_afAudioAnalytics_utteranceStart___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = [a2 tokens];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        v11 = *(*(*(a1 + 64) + 8) + 24);
        [v10 startTime];
        if (v11 < v12)
        {
          v12 = v11;
        }

        *(*(*(a1 + 64) + 8) + 24) = v12;
        v13 = *(*(*(a1 + 72) + 8) + 24);
        [v10 silenceStartTime];
        if (v13 >= v14)
        {
          v14 = v13;
        }

        *(*(*(a1 + 72) + 8) + 24) = v14;
      }

      v7 = [v5 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v7);
  }

  if (a3)
  {
    v15 = *(a1 + 32);
    v16 = v5;
    v17 = [MEMORY[0x1E696AD60] string];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v19)
    {
      v20 = v19;
      v42 = v15;
      v21 = 0;
      v22 = *v55;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          v24 = v21;
          if (*v55 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v54 + 1) + 8 * j);
          if (v24 && ([*(*(&v54 + 1) + 8 * j) removeSpaceBefore] & 1) == 0 && (objc_msgSend(v24, "removeSpaceAfter") & 1) == 0)
          {
            [v17 appendString:@" "];
          }

          v26 = [v25 text];
          [v17 appendString:v26];
          v21 = v25;
        }

        v20 = [v18 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v20);

      v15 = v42;
    }

    v27 = [v17 copy];
    [v15 addObject:v27];

    v28 = *(a1 + 40);
    v29 = MEMORY[0x1E696AD98];
    v30 = v18;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v31 = [v30 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v55;
      v34 = 1.0;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v55 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v34 = v34 * ([*(*(&v54 + 1) + 8 * k) confidenceScore] * 0.001);
        }

        v32 = [v30 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v32);
    }

    else
    {
      v34 = 1.0;
    }

    v40 = [v29 numberWithDouble:v34];
    [v28 addObject:v40];
  }

  else
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __78__SFUtilities_transcriptionFromSpeechPhrases_afAudioAnalytics_utteranceStart___block_invoke_2;
    v45[3] = &unk_1E797C908;
    v43 = *(a1 + 80);
    v36 = *(a1 + 48);
    *&v37 = v43;
    *(&v37 + 1) = *(a1 + 88);
    v44 = v37;
    v38 = *(a1 + 56);
    *&v39 = v36;
    *(&v39 + 1) = v38;
    v47 = v44;
    v46 = v39;
    v48 = *(a1 + 96);
    v49 = *(a1 + 112);
    [v5 enumerateObjectsUsingBlock:v45];

    v40 = v46;
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __78__SFUtilities_transcriptionFromSpeechPhrases_afAudioAnalytics_utteranceStart___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if (([v12 removeSpaceBefore] & 1) == 0 && (objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "removeSpaceAfter") & 1) == 0)
  {
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      [*(a1 + 32) appendString:@" "];
      if (!a3)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        goto LABEL_8;
      }
    }

    else if (!a3)
    {
      goto LABEL_8;
    }

    [*(a1 + 40) appendString:@" "];
  }

LABEL_8:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v6 = [v12 text];
  [*(a1 + 32) appendString:v6];
  [*(a1 + 40) appendString:v6];
  v7 = [v12 confidenceScore];
  v8 = *(*(a1 + 64) + 8);
  v9 = v7 * 0.001 * *(v8 + 24);
  *(v8 + 24) = v9;
  v10 = [v12 phoneSequence];
  if ([v10 length])
  {
    if (([*(*(*(a1 + 72) + 8) + 40) isEqualToString:&stru_1F2139F58] & 1) == 0)
    {
      [*(*(*(a1 + 72) + 8) + 40) appendString:@" "];
    }

    [*(*(*(a1 + 72) + 8) + 40) appendString:v10];
  }

  v11 = [v12 ipaPhoneSequence];
  if ([v11 length])
  {
    if (([*(*(*(a1 + 80) + 8) + 40) isEqualToString:&stru_1F2139F58] & 1) == 0)
    {
      [*(*(*(a1 + 80) + 8) + 40) appendString:@"."];
    }

    [*(*(*(a1 + 80) + 8) + 40) appendString:v11];
  }
}

+ (id)taskNameFromTaskHint:(int64_t)hint
{
  v3 = @"Dictation";
  v4 = @"Tshot";
  v5 = @"SpellCC";
  v6 = @"SiriDictation";
  if (hint != 1011)
  {
    v6 = @"Dictation";
  }

  if (hint != 1006)
  {
    v5 = v6;
  }

  v7 = @"VoiceMail";
  if ((hint - 1007) >= 2)
  {
    v4 = v5;
  }

  v8 = @"Captioning";
  v9 = @"DictationCC";
  if (hint != 1005)
  {
    v9 = @"Dictation";
  }

  if (hint != 1004)
  {
    v8 = v9;
  }

  if (hint != 1002)
  {
    v7 = v8;
  }

  if (hint == 1001)
  {
    v3 = @"SearchOrMessaging";
  }

  if (hint == 2)
  {
    v3 = @"WebSearch";
  }

  if (hint > 1001)
  {
    v3 = v7;
  }

  if (hint <= 1005)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (void)supportedLocalesWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v3 = +[SFUtilities supportedDictationLanguages];
  v17 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = @"hi-IN-translit";
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v10];
        if (v11)
        {
          [v17 addObject:v11];
          [v4 addObject:v10];
        }

        if ([v10 isEqualToString:@"hi-IN"])
        {
          [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v8];
          v13 = v12 = v8;
          if (v13)
          {
            [v17 addObject:v13];
            [v4 addObject:v12];
          }

          v8 = v12;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  completionCopy[2](completionCopy, v17, v4);
  v14 = *MEMORY[0x1E69E9840];
}

+ (id)SFTop21Locales
{
  if (SFTop21Locales_once != -1)
  {
    dispatch_once(&SFTop21Locales_once, &__block_literal_global_363);
  }

  v3 = SFTop21Locales_top21Locales;

  return v3;
}

uint64_t __29__SFUtilities_SFTop21Locales__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ar-SA", @"de-DE", @"en-AU", @"en-CA", @"en-GB", @"en-IN", @"en-SG", @"en-US", @"es-ES", @"es-MX", @"es-US", @"fr-FR", @"it-IT", @"ja-JP", @"ko-KR", @"ru-RU", @"tr-TR", @"yue-CN", @"zh-CN", @"zh-HK", @"zh-TW", 0}];
  v1 = SFTop21Locales_top21Locales;
  SFTop21Locales_top21Locales = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)SFTop41Locales
{
  if (SFTop41Locales_once != -1)
  {
    dispatch_once(&SFTop41Locales_once, &__block_literal_global_237);
  }

  v3 = SFTop41Locales_top41Locales;

  return v3;
}

uint64_t __29__SFUtilities_SFTop41Locales__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"en-US", @"en-GB", @"en-CA", @"en-AU", @"zh-CN", @"zh-HK", @"ja-JP", @"fr-FR", @"de-DE", @"es-ES", @"es-MX", @"es-US", @"en-IN", @"it-IT", @"zh-TW", @"yue-CN", @"ru-RU", @"tr-TR", @"fr-CA", @"en-IE", @"en-NZ", @"de-AT", @"en-ZA", @"en-SG", @"ko-KR", @"ar-SA", @"de-CH", @"it-CH", @"fr-BE", @"fr-CH", @"es-CL", @"he-IL", @"th-TH", @"ms-MY", @"fi-FI", @"da-DK", @"nb-NO", @"sv-SE", @"pt-BR", @"nl-NL", @"nl-BE", 0}];
  v1 = SFTop41Locales_top41Locales;
  SFTop41Locales_top41Locales = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)supportedDictationLanguages
{
  if (supportedDictationLanguages_onceToken != -1)
  {
    dispatch_once(&supportedDictationLanguages_onceToken, &__block_literal_global_235);
  }

  v3 = supportedDictationLanguages_supportedLanguages;

  return v3;
}

uint64_t __42__SFUtilities_supportedDictationLanguages__block_invoke()
{
  v0 = AFPreferencesSupportedDictationLanguages();
  v1 = supportedDictationLanguages_supportedLanguages;
  supportedDictationLanguages_supportedLanguages = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end