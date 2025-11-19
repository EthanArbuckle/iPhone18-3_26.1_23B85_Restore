@interface AFFeatureFlags
+ (BOOL)isAnnounceEnabled;
+ (BOOL)isAudioAppPredictionOnHomePodEnabled;
+ (BOOL)isCrossDeviceArbitrationFeedbackEnabled;
+ (BOOL)isHomePodNoTTSPerfTestEnabled;
+ (BOOL)isInfoDomainsRFEnabled;
+ (BOOL)isLocationSearchContinuityEnabled;
+ (BOOL)isPersistentIDLoggingDisabledForType:(int64_t)a3;
+ (BOOL)isSiriPommesEnabledForLanguage:(id)a3;
+ (BOOL)isSiriUODAvailableForLanguage:(id)a3;
+ (BOOL)isStateFeedbackEnabled;
+ (id)featureFlags;
+ (id)sharedInstance;
+ (void)dump;
@end

@implementation AFFeatureFlags

+ (BOOL)isCrossDeviceArbitrationFeedbackEnabled
{
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1 && (_os_feature_enabled_impl() & 1) != 0)
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

+ (BOOL)isAnnounceEnabled
{
  ANAnnounceFeatureStatusClass = getANAnnounceFeatureStatusClass();

  return [ANAnnounceFeatureStatusClass isEnabled];
}

+ (BOOL)isHomePodNoTTSPerfTestEnabled
{
  if (isHomePodNoTTSPerfTestEnabled_once != -1)
  {
    dispatch_once(&isHomePodNoTTSPerfTestEnabled_once, &__block_literal_global_257);
  }

  if (isHomePodNoTTSPerfTestEnabled_isDefaultSet == 1)
  {
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    v2 = AFIsHorseman_isHorseman;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

+ (BOOL)isStateFeedbackEnabled
{
  if (AFIsHorseman_onceToken != -1)
  {
    dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
  }

  if (AFIsHorseman_isHorseman)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

+ (BOOL)isAudioAppPredictionOnHomePodEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.assistant"];
  v3 = [v2 BOOLForKey:@"AudioAppPredictionHomePod"];
  v4 = _os_feature_enabled_impl() | v3;

  return v4 & 1;
}

+ (id)featureFlags
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v2 = CFPreferencesCopyKeyList(@"com.apple.assistant.features", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v2;
    v3 = [(__CFArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v16 + 1) + 8 * i);
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"X-Dev-ConfigOverride-", v7];
          v9 = CFPreferencesCopyAppValue(v7, @"com.apple.assistant.features");
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 BOOLValue])
          {
            [v14 setObject:@"true" forKey:v8];
          }
        }

        v4 = [(__CFArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v4);
    }
  }

  if (+[AFFeatureFlags isOlympusEnabled])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"X-Dev-ConfigOverride-", @"assistant.service.olympus.enabled"];
    [v14 setObject:@"true" forKey:v10];
  }

  if (+[AFFeatureFlags isInfoDomainsRFEnabled])
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"X-Dev-ConfigOverride-", @"assistant.service.InfoDomainsRF.enabled"];
    [v14 setObject:@"true" forKey:v11];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (BOOL)isInfoDomainsRFEnabled
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

+ (void)dump
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[AFFeatureFlags featureFlags];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "+[AFFeatureFlags dump]";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isLocationSearchContinuityEnabled
{
  v2 = CFPreferencesCopyAppValue(@"assistant.service.location-search.continuity.enabled", @"com.apple.assistant.features");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_14403);
  }

  v3 = sharedInstance_sFeatureFlags;

  return v3;
}

void __32__AFFeatureFlags_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AFFeatureFlags);
  v1 = sharedInstance_sFeatureFlags;
  sharedInstance_sFeatureFlags = v0;
}

+ (BOOL)isPersistentIDLoggingDisabledForType:(int64_t)a3
{
  if (a3 > 0x12)
  {
    return 0;
  }

  v3 = off_1E7344608[a3];
  return _os_feature_enabled_impl();
}

+ (BOOL)isSiriPommesEnabledForLanguage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (isSiriPommesEnabledForLanguage__once != -1)
  {
    dispatch_once(&isSiriPommesEnabledForLanguage__once, &__block_literal_global_267_14566);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = [isSiriPommesEnabledForLanguage__supportByLanguage objectForKey:v4];
  v6 = [v5 BOOLValue];

  if (!v6 || !_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  v7 = [isSiriPommesEnabledForLanguage__supportByLanguage objectForKeyedSubscript:v4];
  v8 = v7 != 0;

LABEL_8:
  return v8;
}

void __66__AFFeatureFlags_SWEFeatureFlags__isSiriPommesEnabledForLanguage___block_invoke()
{
  v50[44] = *MEMORY[0x1E69E9840];
  v49[0] = @"en-US";
  v48 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[0] = v48;
  v49[1] = @"zh-CN";
  v47 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[1] = v47;
  v49[2] = @"en-GB";
  v46 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[2] = v46;
  v49[3] = @"en-AU";
  v45 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[3] = v45;
  v49[4] = @"en-CA";
  v44 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[4] = v44;
  v49[5] = @"en-IN";
  v43 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[5] = v43;
  v49[6] = @"de-DE";
  v42 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[6] = v42;
  v49[7] = @"ja-JP";
  v41 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[7] = v41;
  v49[8] = @"fr-FR";
  v40 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[8] = v40;
  v49[9] = @"es-MX";
  v39 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[9] = v39;
  v49[10] = @"es-ES";
  v38 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[10] = v38;
  v49[11] = @"es-US";
  v37 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[11] = v37;
  v49[12] = @"zh-HK";
  v36 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[12] = v36;
  v49[13] = @"ar-SA";
  v35 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[13] = v35;
  v49[14] = @"en-SG";
  v34 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[14] = v34;
  v49[15] = @"it-IT";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[15] = v33;
  v49[16] = @"ko-KR";
  v32 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[16] = v32;
  v49[17] = @"ru-RU";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[17] = v31;
  v49[18] = @"tr-TR";
  v30 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[18] = v30;
  v49[19] = @"yue-CN";
  v29 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[19] = v29;
  v49[20] = @"zh-TW";
  v28 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[20] = v28;
  v49[21] = @"da-DK";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[21] = v27;
  v49[22] = @"de-AT";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[22] = v26;
  v49[23] = @"de-CH";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[23] = v25;
  v49[24] = @"en-IE";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[24] = v24;
  v49[25] = @"en-NZ";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[25] = v23;
  v49[26] = @"en-ZA";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[26] = v22;
  v49[27] = @"es-CL";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[27] = v21;
  v49[28] = @"fi-FI";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[28] = v20;
  v49[29] = @"fr-BE";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[29] = v19;
  v49[30] = @"fr-CA";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[30] = v18;
  v49[31] = @"fr-CH";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[31] = v17;
  v49[32] = @"he-IL";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[32] = v16;
  v49[33] = @"it-CH";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[33] = v15;
  v49[34] = @"ms-MY";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[34] = v14;
  v49[35] = @"nb-NO";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[35] = v0;
  v49[36] = @"nl-BE";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[36] = v1;
  v49[37] = @"nl-NL";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[37] = v2;
  v49[38] = @"pt-BR";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[38] = v3;
  v49[39] = @"sv-SE";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[39] = v4;
  v49[40] = @"th-TH";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[40] = v5;
  v49[41] = @"id-ID";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[41] = v6;
  v49[42] = @"vi-VN";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v50[42] = v7;
  v49[43] = @"pt-PT";
  v8 = MEMORY[0x1E696AD98];
  if (_os_feature_enabled_impl())
  {
    v9 = AFDeviceSupportsSiriUOD();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 numberWithInt:v9];
  v50[43] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:44];
  v12 = isSiriPommesEnabledForLanguage__supportByLanguage;
  isSiriPommesEnabledForLanguage__supportByLanguage = v11;

  v13 = *MEMORY[0x1E69E9840];
}

void __64__AFFeatureFlags_SWEFeatureFlags__isHomePodNoTTSPerfTestEnabled__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.assistant"];
  isHomePodNoTTSPerfTestEnabled_isDefaultSet = [v0 BOOLForKey:@"HomePodNoTTSPerfTestEnabled"];
}

+ (BOOL)isSiriUODAvailableForLanguage:(id)a3
{
  v3 = a3;
  if (isSiriUODAvailableForLanguage__once != -1)
  {
    dispatch_once(&isSiriUODAvailableForLanguage__once, &__block_literal_global_42_14753);
  }

  if ([isSiriUODAvailableForLanguage__top13Locales containsObject:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [isSiriUODAvailableForLanguage__bottom28Locales containsObject:v3];
  }

  return v4;
}

void __65__AFFeatureFlags_SWEFeatureFlags__isSiriUODAvailableForLanguage___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F056FFD8];
  v1 = isSiriUODAvailableForLanguage__top13Locales;
  isSiriUODAvailableForLanguage__top13Locales = v0;

  v2 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F056FFF0];
  v3 = isSiriUODAvailableForLanguage__bottom28Locales;
  isSiriUODAvailableForLanguage__bottom28Locales = v2;
}

@end