@interface SFUtilities
+ (BOOL)canAccessPathAt:(id)a3 methodName:(id)a4 error:(id *)a5;
+ (BOOL)hasSPIAccess;
+ (BOOL)isANETypeAtLeastVersion:(int)a3 prefix:(id)a4;
+ (BOOL)isCacheDirInternal;
+ (BOOL)isGeneralASRSupportedOnDevice;
+ (BOOL)isSpeechXPCEnabled;
+ (double)continuousTimeToNanoseconds:(unint64_t)a3;
+ (id)SFTop21Locales;
+ (id)SFTop41Locales;
+ (id)_alignTokenToFirstSeenPartialResult:(id)a3 tokenIndex:(unint64_t)a4 firstSeenPartialResultTokens:(id)a5 firstSeenPartialResultIndex:(unint64_t)a6;
+ (id)_firstSeenPartialResultIndicesForTokens:(id)a3 firstSeenPartialResultTokens:(id)a4;
+ (id)alignedPartialResultIndicesForTokens:(id)a3 firstSeenPartialResultTokens:(id)a4;
+ (id)allSpeechProfileContainersForSharedUserInfos:(id)a3;
+ (id)aneSubType;
+ (id)defaultClientID;
+ (id)generalASRLanguageForLocaleIdentifier:(id)a3;
+ (id)getNormString:(id)a3;
+ (id)issueReadSandboxExtensionForFilePath:(id)a3 error:(id *)a4;
+ (id)issueReadWriteSandboxExtensionForDirectoryPath:(id)a3 error:(id *)a4;
+ (id)languageCodeForLocaleIdentifier:(id)a3;
+ (id)localeCodeForLocale:(id)a3;
+ (id)localeIdentifiersForGeneralASRLanguageCode:(id)a3;
+ (id)recognitionMetadataFromSpeechPhrases:(id)a3 afAudioAnalytics:(id)a4 utteranceStart:(double)a5;
+ (id)recognizedResultFromPackage:(id)a3;
+ (id)sandboxExtensionsForCustomLmConfig:(id)a3;
+ (id)sandboxExtensionsForUsingANEAndAssets;
+ (id)speechProfileDateLastModifiedForLanguage:(id)a3;
+ (id)speechProfilePathsForLanguage:(id)a3 personaId:(id)a4;
+ (id)speechProfilePathsForLanguage:(id)a3 speechProfileContainers:(id)a4;
+ (id)speechProfilePathsForLanguage:(id)a3 userType:(id)a4;
+ (id)speechProfileRootDirectoriesWithUserType:(id)a3;
+ (id)supportedDictationLanguages;
+ (id)taskNameFromTaskHint:(int64_t)a3;
+ (id)transcriptionFromSpeechPhrases:(id)a3 afAudioAnalytics:(id)a4 utteranceStart:(double)a5;
+ (id)transcriptionsWithTokens:(id)a3;
+ (id)userSpecificSpeechProfileContainersForSharedUserInfos:(id)a3;
+ (unint64_t)cooldownTimerTimeoutSeconds;
+ (void)createDirPath:(id)a3;
+ (void)initialize;
+ (void)loadSpeechProfiles:(id)a3 language:(id)a4;
+ (void)loadSpeechProfiles:(id)a3 speechProfileContainers:(id)a4 language:(id)a5;
+ (void)supportedLocalesWithCompletion:(id)a3;
@end

@implementation SFUtilities

+ (void)initialize
{
  if (objc_opt_class() == a1 && SFLogInitIfNeeded_once != -1)
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

+ (double)continuousTimeToNanoseconds:(unint64_t)a3
{
  if (continuousTimeToNanoseconds__onceToken != -1)
  {
    dispatch_once(&continuousTimeToNanoseconds__onceToken, &__block_literal_global_465);
  }

  return *&continuousTimeToNanoseconds__clockToNanoseconds * a3;
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
      v3 = [v2 unsignedIntegerValue];
    }

    else
    {
      v3 = 120;
    }
  }

  else
  {
    v3 = 120;
  }

  v4 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "+[SFUtilities cooldownTimerTimeoutSeconds]";
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "%s On-Device ASR: Cooldown scheduled for %zus.", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (BOOL)isANETypeAtLeastVersion:(int)a3 prefix:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4;
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

  v8 = [(__CFString *)v6 rangeOfString:v5];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = strlen([v5 fileSystemRepresentation]) + v8;
  v11 = [(__CFString *)v6 substringWithRange:v10, [(__CFString *)v6 length]- v10];
  v12 = atoi([v11 fileSystemRepresentation]);
  v13 = v12 >= a3;
  isANETypeAtLeastVersion_prefix__isANETypeHigher = v12 >= a3;
  v14 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
  {
    v17 = @"is NOT";
    v18 = 136315906;
    v19 = "+[SFUtilities isANETypeAtLeastVersion:prefix:]";
    v20 = 2112;
    if (v12 >= a3)
    {
      v17 = @"is";
    }

    v21 = v17;
    v22 = 2112;
    v23 = v5;
    v24 = 1024;
    v25 = a3;
    _os_log_debug_impl(&dword_1AC5BC000, v14, OS_LOG_TYPE_DEBUG, "%s Device %@ %@%d+", &v18, 0x26u);
    v13 = isANETypeAtLeastVersion_prefix__isANETypeHigher;
  }

LABEL_8:
  v15 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

+ (id)speechProfileDateLastModifiedForLanguage:(id)a3
{
  v3 = [a1 speechProfilePathsForLanguage:a3];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 attributesOfItemAtPath:v4 error:0];

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

+ (void)loadSpeechProfiles:(id)a3 language:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v39 = v7;
    v8 = [a1 speechProfilePathsForLanguage:v7];
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
          v15 = [v6 objectForKey:v14];
          if (v15)
          {
            v16 = [MEMORY[0x1E696AC08] defaultManager];
            v17 = [v16 attributesOfItemAtPath:v14 error:0];

            if (v17)
            {
              v18 = [v17 objectForKey:v41];
              [v18 timeIntervalSinceReferenceDate];
              v20 = v19;
              v21 = [v15 loadDate];
              [v21 timeIntervalSinceReferenceDate];
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

    [v6 removeAllObjects];
    [v6 addEntriesFromDictionary:v40];
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
          v32 = [v6 objectForKey:v31];

          if (!v32)
          {
            v33 = [MEMORY[0x1E695DF00] date];
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
                [v34 setLoadDate:v33];
                [v6 setObject:v34 forKey:v31];
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

    v7 = v39;
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

+ (void)loadSpeechProfiles:(id)a3 speechProfileContainers:(id)a4 language:(id)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SFLogFramework;
  if (v7)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *buf = 136315394;
      v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
      v69 = 2048;
      v70 = [v8 count];
      _os_log_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_DEFAULT, "%s MUX: Checking %zu container(s) for valid speech profiles.", buf, 0x16u);
    }

    v12 = [SFUtilities speechProfilePathsForLanguage:v9 speechProfileContainers:v8, v9, v8];
    v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v52 = v12;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = [v12 allKeys];
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
          v18 = [v7 objectForKey:v17];
          if (v18)
          {
            v19 = [MEMORY[0x1E696AC08] defaultManager];
            v61 = 0;
            v20 = [v19 attributesOfItemAtPath:v17 error:&v61];
            v21 = v61;

            if (v20)
            {
              v22 = [v20 objectForKey:v53];
              [v22 timeIntervalSinceReferenceDate];
              v24 = v23;
              v25 = [v18 loadDate];
              [v25 timeIntervalSinceReferenceDate];
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

    [v7 removeAllObjects];
    [v7 addEntriesFromDictionary:v51];
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
          v37 = [v7 objectForKey:v36];

          if (!v37)
          {
            v38 = [v52 objectForKey:v36];
            v39 = [v38 userId];

            v40 = objc_alloc(MEMORY[0x1E699BA30]);
            v56 = 0;
            v41 = [v40 initWithPath:v36 userId:v39 recognitionOnly:0 error:&v56];
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

              v44 = [MEMORY[0x1E695DF00] date];
              [v41 setLoadDate:v44];

              [v7 setObject:v41 forKey:v36];
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
      v47 = [v7 count];
      *buf = 136315394;
      v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
      v69 = 2048;
      v70 = v47;
      _os_log_impl(&dword_1AC5BC000, v46, OS_LOG_TYPE_DEFAULT, "%s MUX: Loaded %zu speech profile(s) in total.", buf, 0x16u);
    }

    v9 = v49;
    v8 = v50;
  }

  else if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v68 = "+[SFUtilities loadSpeechProfiles:speechProfileContainers:language:]";
    _os_log_error_impl(&dword_1AC5BC000, v10, OS_LOG_TYPE_ERROR, "%s MUX: loadedProfiles cannot be nil.", buf, 0xCu);
  }

  v48 = *MEMORY[0x1E69E9840];
}

+ (id)userSpecificSpeechProfileContainersForSharedUserInfos:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v42 = [MEMORY[0x1E695DFA8] set];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v3;
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
        v10 = [*(v7 + 3312) sharedInstance];
        v11 = [v9 personaId];
        v12 = [v10 personaMatchesEnrolledUser:v11];

        if (v12)
        {
          v13 = +[SFSpeechProfileContainerManager sharedInstance];
          v14 = [v9 personaId];
          v15 = [v13 containerForPersona:v14];

          if (v15)
          {
            v16 = [SFSpeechProfileContainer alloc];
            v17 = [v15 url];
            v18 = [v9 personaId];
            v19 = [v9 sharedUserId];
            v20 = [v9 loggableSharedUserId];
            v21 = [(SFSpeechProfileContainer *)v16 initWithURL:v17 personaId:v18 userId:v19 loggableUserId:v20];

            [v42 addObject:v21];
            v22 = SFLogFramework;
            if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
            {
              v23 = v22;
              v24 = [v9 personaId];
              *buf = 136315394;
              v48 = "+[SFUtilities userSpecificSpeechProfileContainersForSharedUserInfos:]";
              v49 = 2112;
              v50 = v24;
              _os_log_impl(&dword_1AC5BC000, v23, OS_LOG_TYPE_INFO, "%s MUX: Discovered UserVault container for personaId: %@", buf, 0x16u);
            }
          }

          v25 = [SFSpeechProfileContainer alloc];
          v26 = SFSpeechProfileRootDirectoryURL();
          v27 = [v9 personaId];
          v28 = [v9 sharedUserId];
          v29 = [v9 loggableSharedUserId];
          v30 = [(SFSpeechProfileContainer *)v25 initWithURL:v26 personaId:v27 userId:v28 loggableUserId:v29];

          [v42 addObject:v30];
          v31 = SFLogFramework;
          if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
          {
            v32 = v31;
            v33 = [v9 personaId];
            *buf = 136315394;
            v48 = "+[SFUtilities userSpecificSpeechProfileContainersForSharedUserInfos:]";
            v49 = 2112;
            v50 = v33;
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
            v36 = [v9 personaId];
            *buf = 136315394;
            v48 = "+[SFUtilities userSpecificSpeechProfileContainersForSharedUserInfos:]";
            v49 = 2112;
            v50 = v36;
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

  v37 = [v42 allObjects];

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

+ (id)allSpeechProfileContainersForSharedUserInfos:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [SFUtilities userSpecificSpeechProfileContainersForSharedUserInfos:v3];
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
    v17 = [v3 count];
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_INFO, "%s MUX: Discovered %zu speech profile container(s) for %zu user(s).", &v12, 0x20u);
  }

  v9 = [v4 allObjects];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)speechProfilePathsForLanguage:(id)a3 speechProfileContainers:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v5 = a4;
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v5;
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
        v13 = [v12 personaId];
        if (v13)
        {
          v14 = +[SFSpeechProfileContainerManager sharedInstance];
          v15 = [v14 containerForPersona:v13];

          v16 = [v12 url];
          v17 = v16;
          v18 = v13;
        }

        else
        {
          v16 = [v12 url];
          v17 = v16;
          v18 = 0;
        }

        v19 = SFDataSiteURL(v16, v18);

        v20 = [v19 path];
        v21 = [v20 length];

        if (v21)
        {
          v22 = MEMORY[0x1E696AEC0];
          v23 = [v19 path];
          v49[0] = v23;
          v49[1] = @"0000000000000000";
          v49[2] = v38;
          v49[3] = @"SpeechProfile";
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
          v25 = [v22 pathWithComponents:v24];

          v26 = [MEMORY[0x1E696AC08] defaultManager];
          LOBYTE(v23) = [v26 fileExistsAtPath:v25];

          if (v23)
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
            v46 = v13;
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
    v32 = [v37 allKeys];
    v33 = [v32 count];
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

+ (id)speechProfilePathsForLanguage:(id)a3 personaId:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
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

      v12 = [SFUtilities speechProfilePathsForLanguage:v5 speechProfileContainers:v11];
      v13 = [v12 allKeys];
    }

    else
    {
      v15 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v25 = "+[SFUtilities speechProfilePathsForLanguage:personaId:]";
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_1AC5BC000, v15, OS_LOG_TYPE_INFO, "%s Returning the %@ speech profile path for the default user.", buf, 0x16u);
      }

      v13 = [SFUtilities speechProfilePathsForLanguage:v5 userType:@"Default"];
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

    v13 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)speechProfilePathsForLanguage:(id)a3 userType:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [SFUtilities stringByReplacingUnderscoresWithHyphens:v5];

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
    v29 = v6;
    [SFUtilities speechProfileRootDirectoriesWithUserType:v6];
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
          v14 = [MEMORY[0x1E696AC08] defaultManager];
          v15 = [v14 enumeratorAtPath:v13];

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

                v24 = [MEMORY[0x1E696AC08] defaultManager];
                v25 = [v24 fileExistsAtPath:v23];

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

    v6 = v29;
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

+ (id)speechProfileRootDirectoriesWithUserType:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = SFSpeechProfileSiteDirectoriesWithUserType(v3);
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

        v10 = [*(*(&v13 + 1) + 8 * i) path];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_alignTokenToFirstSeenPartialResult:(id)a3 tokenIndex:(unint64_t)a4 firstSeenPartialResultTokens:(id)a5 firstSeenPartialResultIndex:(unint64_t)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v40 = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v41[0] = v12;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];

  v37 = v9;
  v13 = [v9 count];
  v14 = [v10 count];
  v35 = v13;
  if (v13 > a4)
  {
    v15 = v14;
    v16 = 0;
    v33 = a6;
    v34 = a6 + a4;
    v17 = -1;
    v18 = a6;
    while (1)
    {
      v19 = [v37 objectAtIndexedSubscript:{a4, v33}];
      v20 = [v19 tokenName];
      v21 = [SFUtilities getNormString:v20];

      v22 = v18;
      if (v15 > v18)
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
      v27 = a4 - v34 + v22 + v26;
      if (v27 < v17)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
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

      ++a4;
      v18 = v33;
      if (a4 == v35)
      {
        goto LABEL_17;
      }
    }

    v23 = v16;
    v22 = v18;
    while (1)
    {
      v24 = [v10 objectAtIndex:v22];
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

+ (id)_firstSeenPartialResultIndicesForTokens:(id)a3 firstSeenPartialResultTokens:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v24 = v5;
  v8 = [v5 count];
  v23 = v6;
  v9 = [v6 count];
  if (v8)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = [SFUtilities _alignTokenToFirstSeenPartialResult:v24 tokenIndex:v11 firstSeenPartialResultTokens:v23 firstSeenPartialResultIndex:v12];
      v14 = [v13 allKeys];
      v15 = [v14 firstObject];
      v16 = [v15 unsignedIntegerValue];

      v17 = [v13 allValues];
      v18 = [v17 firstObject];
      v19 = [v18 unsignedIntegerValue];

      v20 = v16 - v11;
      if (v16 > v11)
      {
        do
        {
          [v7 addObject:&unk_1F214A188];
          --v20;
        }

        while (v20);
      }

      if (v19 >= v10)
      {
        [v7 addObject:&unk_1F214A188];
        v12 = v10;
      }

      else
      {
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
        [v7 addObject:v21];

        v12 = v19 + 1;
      }

      v11 = v16 + 1;
    }

    while (v16 + 1 < v8);
  }

  return v7;
}

+ (id)alignedPartialResultIndicesForTokens:(id)a3 firstSeenPartialResultTokens:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v34 = v5;
  v8 = [SFUtilities _firstSeenPartialResultIndicesForTokens:v5 firstSeenPartialResultTokens:v6];
  v9 = [v8 count];
  v33 = v6;
  v10 = [v6 count];
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
        v18 = [v17 unsignedIntegerValue];

        if (v18 < v11)
        {
          v19 = v14;
          v20 = v13;
          v21 = v9;
          v22 = v11;
          v23 = v7;
          v24 = [v34 objectAtIndex:v12];
          v25 = [v24 tokenName];
          v26 = [SFUtilities getNormString:v25];

          v27 = [v33 objectAtIndex:v18];
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

          v7 = v23;
          v11 = v22;
          v9 = v21;
          v13 = v20;
          v14 = v19;
          v8 = v32;
        }
      }

      [v7 addObject:v37[5]];
      _Block_object_dispose(&v36, 8);

      ++v12;
    }

    while (v9 != v12);
  }

  return v7;
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

+ (id)getNormString:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 lowercaseString];
  v6 = [v5 componentsSeparatedByString:@" "];

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
        v12 = [v11 firstObject];
        [v4 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v4 componentsJoinedByString:@" "];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)localeIdentifiersForGeneralASRLanguageCode:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-", v3];
  v5 = [SFSpeechAssetManager supportedLanguagesForTaskHint:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__SFUtilities_localeIdentifiersForGeneralASRLanguageCode___block_invoke;
  v12[3] = &unk_1E797C980;
  v13 = v4;
  v6 = v4;
  v7 = [v5 indexesOfObjectsPassingTest:v12];
  v8 = [v5 objectsAtIndexes:v7];
  v9 = [v8 mutableCopy];

  if ([v3 isEqualToString:@"cmn"])
  {
    [v9 addObject:@"zh-CN"];
    [v9 addObject:@"zh-TW"];
  }

  if ([v3 isEqualToString:@"yue"])
  {
    [v9 addObject:@"zh-HK"];
  }

  v10 = [v9 copy];

  return v10;
}

+ (id)generalASRLanguageForLocaleIdentifier:(id)a3
{
  v3 = a3;
  v4 = SFGeneralASRReplacementLanguageCodeForLocaleIdentifier(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [SFUtilities languageCodeForLocaleIdentifier:v3];
  }

  v7 = v6;

  return v7;
}

+ (id)localeCodeForLocale:(id)a3
{
  v3 = *MEMORY[0x1E695D9B0];
  v4 = a3;
  v5 = [v4 objectForKey:v3];
  v6 = [v4 objectForKey:*MEMORY[0x1E695D978]];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

+ (id)languageCodeForLocaleIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a3];
  v4 = [v3 languageCode];

  return v4;
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

+ (void)createDirPath:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v4 fileExistsAtPath:v3 isDirectory:0] & 1) == 0)
  {
    v9 = 0;
    v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v9];
    v6 = v9;
    v7 = SFLogFramework;
    if (v5)
    {
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v11 = "+[SFUtilities createDirPath:]";
        v12 = 2112;
        v13 = v3;
        _os_log_debug_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_DEBUG, "%s Write successful %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "+[SFUtilities createDirPath:]";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_INFO, "%s Failed to create directory %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)sandboxExtensionsForCustomLmConfig:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [v3 languageModel];
    v6 = [v5 path];
    v7 = [SFUtilities issueReadSandboxExtensionForFilePath:v6 error:0];

    if (v7)
    {
      [v4 addObject:v7];
      v8 = [v3 vocabulary];

      if (v8)
      {
        v9 = [v3 vocabulary];
        v10 = [v9 path];
        v11 = [SFUtilities issueReadSandboxExtensionForFilePath:v10 error:0];

        if (v11)
        {
          [v4 addObject:v11];
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v5 = [v4 firstObject];

    v6 = [v5 stringByAppendingPathComponent:@"com.apple.speech.localspeechrecognition"];
    [SFUtilities createDirPath:v6];
    v7 = [SFUtilities issueReadWriteSandboxExtensionForDirectoryPath:v6 error:0];
    if (v7)
    {
      [v3 addObject:v7];
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (BOOL)isCacheDirInternal
{
  v2 = 1;
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v4 = [v3 firstObject];

  if (([v4 hasPrefix:@"/var/mobile/Library/Caches"] & 1) == 0)
  {
    v2 = [v4 hasPrefix:@"/private/var/mobile/Library/Caches"];
  }

  return v2;
}

+ (id)issueReadSandboxExtensionForFilePath:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
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
    v35 = v6;
    _os_log_debug_impl(&dword_1AC5BC000, v21, OS_LOG_TYPE_DEBUG, "%s %@: path=%@", buf, 0x20u);
  }

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  v29 = 0;
  v10 = [v8 canAccessPathAt:v6 methodName:v9 error:&v29];
  v11 = v29;

  if (v10)
  {
    [v6 UTF8String];
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
      v35 = v6;
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
    v35 = v6;
    v36 = 2112;
    v37 = v11;
    _os_log_error_impl(&dword_1AC5BC000, v25, OS_LOG_TYPE_ERROR, "%s %@: Inaccessible file (%@) : error=%@", buf, 0x2Au);

    if (a4)
    {
      goto LABEL_8;
    }
  }

  else if (a4)
  {
LABEL_8:
    v16 = v11;
    v14 = 0;
    *a4 = v11;
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

+ (id)issueReadWriteSandboxExtensionForDirectoryPath:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
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
    v36 = v6;
    _os_log_debug_impl(&dword_1AC5BC000, v19, OS_LOG_TYPE_DEBUG, "%s %@: path=%@", buf, 0x20u);
  }

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  v30 = 0;
  v10 = [v8 canAccessPathAt:v6 methodName:v9 error:&v30];
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
      v36 = v6;
      v37 = 2112;
      v38 = v11;
      _os_log_error_impl(&dword_1AC5BC000, v21, OS_LOG_TYPE_ERROR, "%s %@: Inaccessible file (%@) : error=%@", buf, 0x2Au);

      if (a4)
      {
        goto LABEL_8;
      }
    }

    else if (a4)
    {
LABEL_8:
      v17 = v11;
      v15 = 0;
      *a4 = v11;
      goto LABEL_15;
    }

    v15 = 0;
    goto LABEL_15;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/", v6];
  [v12 UTF8String];
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
      v36 = v12;
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

+ (BOOL)canAccessPathAt:(id)a3 methodName:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v7];
  v11 = v10;
  if (a5 && (v10 & 1) == 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E698D280];
    v18 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to access path: %@ method:%@", v7, v8];
    v19[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a5 = [v12 errorWithDomain:v13 code:203 userInfo:v15];
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

+ (id)recognizedResultFromPackage:(id)a3
{
  v3 = a3;
  v4 = [v3 recognition];
  v5 = [v4 phrases];
  v6 = [v3 audioAnalytics];
  [v3 utteranceStart];
  v7 = [SFUtilities transcriptionFromSpeechPhrases:v5 afAudioAnalytics:v6 utteranceStart:?];

  v8 = [v3 rawRecognition];
  v9 = [v8 phrases];
  v10 = [v3 audioAnalytics];
  [v3 utteranceStart];
  v11 = [SFUtilities transcriptionFromSpeechPhrases:v9 afAudioAnalytics:v10 utteranceStart:?];

  v12 = [v3 recognition];
  v13 = [v12 phrases];
  v14 = [v3 audioAnalytics];
  [v3 utteranceStart];
  v15 = [SFUtilities recognitionMetadataFromSpeechPhrases:v13 afAudioAnalytics:v14 utteranceStart:?];

  v16 = [SFSpeechRecognitionResult alloc];
  v17 = [v3 isFinal];

  v18 = [(SFSpeechRecognitionResult *)v16 _initWithBestTranscription:v7 rawTranscription:v11 final:v17 speechRecognitionMetadata:v15];

  return v18;
}

+ (id)transcriptionsWithTokens:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v27 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AD60] string];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
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
          [v4 appendString:@" "];
        }

        v12 = [v11 text];
        v13 = [v4 length];
        v14 = [v12 length];
        [v11 startTime];
        v16 = v15;
        v17 = [SFTranscriptionSegment alloc];
        [v11 silenceStartTime];
        v19 = v18 - v16;
        *&v20 = [v11 confidenceScore] * 0.001;
        v21 = [(SFTranscriptionSegment *)v17 _initWithSubstring:v12 range:v13 timestamp:v14 duration:v8 confidence:v8 alternativeSubstrings:v16 alternativeConfidences:v19 phoneSequence:v20 ipaPhoneSequence:&stru_1F2139F58 voiceAnalytics:0];
        [v27 addObject:v21];
        [v4 appendString:v12];
        v7 = v11;
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v22 = [[SFTranscription alloc] _initWithSegments:v27 formattedString:v4 speakingRate:0.0 averagePauseDuration:0.0];
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)recognitionMetadataFromSpeechPhrases:(id)a3 afAudioAnalytics:(id)a4 utteranceStart:(double)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v25 = a4;
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
  obj = v7;
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
        v12 = [v11 interpretations];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __84__SFUtilities_recognitionMetadataFromSpeechPhrases_afAudioAnalytics_utteranceStart___block_invoke;
        v27[3] = &unk_1E797C958;
        v27[4] = v28;
        v27[5] = &v33;
        v27[6] = &v37;
        [v12 enumerateObjectsUsingBlock:v27];

        _Block_object_dispose(v28, 8);
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v8);
  }

  v13 = VoiceAnalyticsForSegment(v25, v38[3], v34[3]);
  v14 = [v25 speechRecognitionFeatures];
  v15 = [v14 objectForKey:@"speakingRate"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [v14 objectForKey:@"averagePauseDuration"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [SFSpeechRecognitionMetadata alloc];
  v22 = [(SFSpeechRecognitionMetadata *)v21 _initWithSpeechStartTimestamp:v13 speechDuration:v38[3] + a5 voiceAnalytics:v34[3] - v38[3] speakingRate:v17 averagePauseDuration:v20];

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

+ (id)transcriptionFromSpeechPhrases:(id)a3 afAudioAnalytics:(id)a4 utteranceStart:(double)a5
{
  v97 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v43 = a4;
  v42 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E696AD60] string];
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
  obj = v7;
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
        v11 = [v10 interpretations];
        v12 = [v11 firstObject];
        if (v12)
        {
          v86 = 0;
          v87 = &v86;
          v88 = 0x2020000000;
          v89 = [v49 length];
          v13 = [MEMORY[0x1E696AD60] string];
          v14 = [MEMORY[0x1E695DF70] array];
          v15 = [MEMORY[0x1E695DF70] array];
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
          v16 = [v10 interpretations];
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __78__SFUtilities_transcriptionFromSpeechPhrases_afAudioAnalytics_utteranceStart___block_invoke;
          v50[3] = &unk_1E797C930;
          v55 = &v82;
          v56 = &v78;
          v17 = v14;
          v51 = v17;
          v18 = v15;
          v52 = v18;
          v57 = v94;
          v19 = v49;
          v53 = v19;
          v58 = &v86;
          v20 = v13;
          v54 = v20;
          v59 = &v74;
          v60 = &v68;
          v61 = &v62;
          [v16 enumerateObjectsUsingBlock:v50];

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

            v25 = VoiceAnalyticsForSegment(v43, v83[3], v79[3]);
            v26 = [SFTranscriptionSegment alloc];
            v27 = v83[3];
            v28 = v27 + a5;
            v29 = v79[3];
            v30 = v29 - v27;
            LODWORD(v29) = *(v75 + 6);
            v31 = [(SFTranscriptionSegment *)v26 _initWithSubstring:v20 range:v44 timestamp:v22 - v23 duration:v17 confidence:v18 alternativeSubstrings:v45 alternativeConfidences:v28 phoneSequence:v30 ipaPhoneSequence:v29 voiceAnalytics:v24, v25];
            [v42 addObject:v31];
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

  v32 = [v43 speechRecognitionFeatures];
  v33 = [v32 objectForKey:@"speakingRate"];
  [v33 doubleValue];
  v35 = v34;

  v36 = [v32 objectForKey:@"averagePauseDuration"];
  [v36 doubleValue];
  v38 = v37;

  v39 = [[SFTranscription alloc] _initWithSegments:v42 formattedString:v49 speakingRate:v35 averagePauseDuration:v38];
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

+ (id)taskNameFromTaskHint:(int64_t)a3
{
  v3 = @"Dictation";
  v4 = @"Tshot";
  v5 = @"SpellCC";
  v6 = @"SiriDictation";
  if (a3 != 1011)
  {
    v6 = @"Dictation";
  }

  if (a3 != 1006)
  {
    v5 = v6;
  }

  v7 = @"VoiceMail";
  if ((a3 - 1007) >= 2)
  {
    v4 = v5;
  }

  v8 = @"Captioning";
  v9 = @"DictationCC";
  if (a3 != 1005)
  {
    v9 = @"Dictation";
  }

  if (a3 != 1004)
  {
    v8 = v9;
  }

  if (a3 != 1002)
  {
    v7 = v8;
  }

  if (a3 == 1001)
  {
    v3 = @"SearchOrMessaging";
  }

  if (a3 == 2)
  {
    v3 = @"WebSearch";
  }

  if (a3 > 1001)
  {
    v3 = v7;
  }

  if (a3 <= 1005)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (void)supportedLocalesWithCompletion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = a3;
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

  v15[2](v15, v17, v4);
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