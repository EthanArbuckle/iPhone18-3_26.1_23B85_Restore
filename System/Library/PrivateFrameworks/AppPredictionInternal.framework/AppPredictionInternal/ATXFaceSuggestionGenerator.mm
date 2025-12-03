@interface ATXFaceSuggestionGenerator
- (ATXFaceGalleryConfiguration)faceGalleryConfiguration;
- (ATXFaceSuggestionGenerator)initWithDescriptorCache:(id)cache configurationCache:(id)configurationCache complicationProvider:(id)provider complicationDescriptorProvider:(id)descriptorProvider parameters:(id)parameters;
- (ATXFaceSuggestionGeneratorDelegate)delegate;
- (BOOL)shouldUseDayZeroCuration;
- (void)_generateFaceGalleryConfigurationNotifyingWithGuardedData:(id)data;
- (void)configurationCacheDidUpdateWithNewConfigurations:(id)configurations oldConfigurations:(id)oldConfigurations;
- (void)regenerateFaceGalleryConfigurationCoalescedWithReason:(id)reason;
- (void)regenerateFaceGalleryConfigurationImmediatelyWithReason:(id)reason;
- (void)regenerateFaceSuggestionsForFocusModesWithReason:(id)reason;
@end

@implementation ATXFaceSuggestionGenerator

- (ATXFaceSuggestionGenerator)initWithDescriptorCache:(id)cache configurationCache:(id)configurationCache complicationProvider:(id)provider complicationDescriptorProvider:(id)descriptorProvider parameters:(id)parameters
{
  cacheCopy = cache;
  configurationCacheCopy = configurationCache;
  providerCopy = provider;
  descriptorProviderCopy = descriptorProvider;
  parametersCopy = parameters;
  v36.receiver = self;
  v36.super_class = ATXFaceSuggestionGenerator;
  v17 = [(ATXFaceSuggestionGenerator *)&v36 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_descriptorCache, cache);
    [(ATXPosterDescriptorCache *)v18->_descriptorCache registerObserver:v18];
    objc_storeStrong(&v18->_configurationCache, configurationCache);
    [(ATXPosterConfigurationCache *)v18->_configurationCache registerObserver:v18];
    objc_storeStrong(&v18->_complicationProvider, provider);
    objc_storeStrong(&v18->_complicationDescriptorProvider, descriptorProvider);
    objc_storeStrong(&v18->_parameters, parameters);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.proactive.ATXFaceSuggestionGenerator", v19);

    v21 = objc_alloc(MEMORY[0x277D42610]);
    v22 = objc_opt_new();
    v23 = [v21 initWithGuardedData:v22 serialQueue:v20];
    lock = v18->_lock;
    v18->_lock = v23;

    objc_initWeak(&location, v18);
    v25 = objc_alloc(MEMORY[0x277D42628]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __136__ATXFaceSuggestionGenerator_initWithDescriptorCache_configurationCache_complicationProvider_complicationDescriptorProvider_parameters___block_invoke;
    v33[3] = &unk_2785977B0;
    objc_copyWeak(&v34, &location);
    v26 = [v25 initWithQueue:v20 operation:v33];
    regenerationCoalescingTimer = v18->_regenerationCoalescingTimer;
    v18->_regenerationCoalescingTimer = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("com.apple.proactive.ATXFaceSuggestionGenerator.Output", v28);
    outputQueue = v18->_outputQueue;
    v18->_outputQueue = v29;

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __136__ATXFaceSuggestionGenerator_initWithDescriptorCache_configurationCache_complicationProvider_complicationDescriptorProvider_parameters___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "running coalesced regeneration operation", v4, 2u);
    }

    v3 = [WeakRetained[6] guardedDataAssertingLockContext];
    [WeakRetained _generateFaceGalleryConfigurationNotifyingWithGuardedData:v3];
  }
}

- (ATXFaceGalleryConfiguration)faceGalleryConfiguration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__54;
  v10 = __Block_byref_object_dispose__54;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ATXFaceSuggestionGenerator_faceGalleryConfiguration__block_invoke;
  v5[3] = &unk_27859D530;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__ATXFaceSuggestionGenerator_faceGalleryConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    v5 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 136315394;
      v14 = "[ATXFaceSuggestionGenerator faceGalleryConfiguration]_block_invoke";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: returning in-memory configuration: %@", &v13, 0x16u);
    }

LABEL_10:

    goto LABEL_11;
  }

  v7 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[ATXFaceSuggestionGenerator faceGalleryConfiguration]_block_invoke";
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: no in-memory configuration, generating new configuration", &v13, 0xCu);
  }

  [*(a1 + 32) _generateFaceGalleryConfigurationNotifyingWithGuardedData:v3];
  if (v3[1])
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v3[1];
      v13 = 136315394;
      v14 = "[ATXFaceSuggestionGenerator faceGalleryConfiguration]_block_invoke";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: generated new configuration: %@", &v13, 0x16u);
    }

    v10 = *(*(a1 + 40) + 8);
    v11 = v3[1];
    v5 = *(v10 + 40);
    *(v10 + 40) = v11;
    goto LABEL_10;
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)regenerateFaceGalleryConfigurationCoalescedWithReason:(id)reason
{
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ATXFaceSuggestionGenerator regenerateFaceGalleryConfigurationCoalescedWithReason:]";
    v9 = 2112;
    v10 = reasonCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: requesting coalesced face gallery regeneration for reason: %@", &v7, 0x16u);
  }

  [(_PASSimpleCoalescingTimer *)self->_regenerationCoalescingTimer runAfterDelaySeconds:0 coalescingBehavior:2.0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)regenerateFaceGalleryConfigurationImmediatelyWithReason:(id)reason
{
  v13 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[ATXFaceSuggestionGenerator regenerateFaceGalleryConfigurationImmediatelyWithReason:]";
    v11 = 2112;
    v12 = reasonCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: requesting immediate face gallery regeneration for reason: %@", buf, 0x16u);
  }

  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__ATXFaceSuggestionGenerator_regenerateFaceGalleryConfigurationImmediatelyWithReason___block_invoke;
  v8[3] = &unk_27859D558;
  v8[4] = self;
  [(_PASQueueLock *)lock runWithLockAcquired:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)regenerateFaceSuggestionsForFocusModesWithReason:(id)reason
{
  v13 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ATXFaceSuggestionGenerator regenerateFaceSuggestionsForFocusModesWithReason:]";
    v11 = 2112;
    v12 = reasonCopy;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: requesting immediate face suggestions regeneration for Focus Modes with reason: %@", &v9, 0x16u);
  }

  v5 = objc_alloc_init(ATXModeFaceSuggestionGenerator);
  v6 = +[ATXPosterDescriptorCache sharedInstance];
  allDescriptors = [v6 allDescriptors];
  [(ATXModeFaceSuggestionGenerator *)v5 generateAndCacheFacesFromDescriptors:allDescriptors];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_generateFaceGalleryConfigurationNotifyingWithGuardedData:(id)data
{
  v54 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  sel_getName(a2);
  v45 = os_transaction_create();
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v51 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
    v52 = 2112;
    v53 = currentLocale;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: using locale: %@", buf, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x277CBEBD0]);
  v44 = [v8 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v9 = [v44 integerForKey:*MEMORY[0x277CEBDB8]];
  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  v49 = 0;
  v11 = [mEMORY[0x277CEB998] fetchAccessoryWidgetDescriptorMetadataWithError:&v49];
  v12 = v49;

  if (!v11)
  {
    v13 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXFaceSuggestionGenerator *)v12 _generateFaceGalleryConfigurationNotifyingWithGuardedData:v13];
    }

    v11 = MEMORY[0x277CBEC10];
  }

  v43 = v12;
  v14 = objc_alloc_init(MEMORY[0x277CEB388]);
  rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v14 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  allKeys = [rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps allKeys];
  v17 = [_TtC21AppPredictionInternal26ATXCompanionBundleIdMapper generateMappingForAppBundleIds:allKeys];

  if (!v9)
  {
    shouldUseDayZeroCuration = [(ATXFaceSuggestionGenerator *)self shouldUseDayZeroCuration];
    v24 = __atxlog_handle_lock_screen();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (shouldUseDayZeroCuration)
    {
      if (v25)
      {
        *buf = 136315138;
        v51 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
        v26 = "%s: day zero criteria met, using day zero curation";
LABEL_21:
        _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
      }
    }

    else if (v25)
    {
      *buf = 136315138;
      v51 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
      v26 = "%s: day zero criteria not met, generating personalized layout";
      goto LABEL_21;
    }

    selfCopy3 = self;
    v28 = shouldUseDayZeroCuration;
    goto LABEL_25;
  }

  v18 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v51 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
    v52 = 2048;
    v53 = v9;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "%s: using face gallery source override: %zd", buf, 0x16u);
  }

  switch(v9)
  {
    case 1:
      selfCopy3 = self;
      v28 = 0;
      break;
    case 2:
      selfCopy3 = self;
      v28 = 1;
      break;
    case 3:
      shouldUseDayZeroCuration2 = [(ATXFaceSuggestionGenerator *)self shouldUseDayZeroCuration];
      v20 = __atxlog_handle_lock_screen();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (shouldUseDayZeroCuration2)
      {
        if (v21)
        {
          *buf = 136315138;
          v51 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
          v22 = "%s: day zero criteria met, using day zero curation for demo mode";
LABEL_34:
          _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
        }
      }

      else if (v21)
      {
        *buf = 136315138;
        v51 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
        v22 = "%s: day zero criteria not met, generating personalized layout for demo mode";
        goto LABEL_34;
      }

      v29 = [(ATXFaceSuggestionGenerator *)self _createLayoutGeneratorWithDayZero:shouldUseDayZeroCuration2 locale:currentLocale];
      v31 = [[ATXFaceGalleryFileReader alloc] initWithSource:0];
      v39 = [v29 generatedConfigurationWithWidgetDescriptorsAdditionalData:v11 aggregatedAppLaunchData:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps bundleIdToCompanionBundleId:v17];
      configuration = [(ATXFaceGalleryFileReader *)v31 configuration];
      v41 = [v39 configurationByApplyingConfiguration:configuration];
      v42 = dataCopy[1];
      dataCopy[1] = v41;

      goto LABEL_26;
    default:
      goto LABEL_27;
  }

LABEL_25:
  v29 = [(ATXFaceSuggestionGenerator *)selfCopy3 _createLayoutGeneratorWithDayZero:v28 locale:currentLocale];
  v30 = [v29 generatedConfigurationWithWidgetDescriptorsAdditionalData:v11 aggregatedAppLaunchData:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps bundleIdToCompanionBundleId:v17];
  v31 = dataCopy[1];
  dataCopy[1] = v30;
LABEL_26:

LABEL_27:
  v32 = [dataCopy[1] copy];
  if (!v32)
  {
    v33 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v51 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
      _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "%s: no configuration generated, creating blank configuration", buf, 0xCu);
    }

    v34 = objc_alloc(MEMORY[0x277CEB518]);
    v32 = [v34 initWithSections:MEMORY[0x277CBEBF8] source:1 locale:currentLocale dayZero:0];
  }

  outputQueue = self->_outputQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ATXFaceSuggestionGenerator__generateFaceGalleryConfigurationNotifyingWithGuardedData___block_invoke;
  block[3] = &unk_278597828;
  block[4] = self;
  v47 = v32;
  v48 = v45;
  v36 = v45;
  v37 = v32;
  dispatch_async(outputQueue, block);

  v38 = *MEMORY[0x277D85DE8];
}

id __88__ATXFaceSuggestionGenerator__generateFaceGalleryConfigurationNotifyingWithGuardedData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 generatorDidUpdateFaceGalleryConfiguration:*(a1 + 40)];

  v3 = *(a1 + 48);
  return objc_opt_self();
}

- (BOOL)shouldUseDayZeroCuration
{
  v9 = *MEMORY[0x277D85DE8];
  configurations = [(ATXPosterConfigurationCache *)self->_configurationCache configurations];
  if ([configurations count] == 1)
  {
    v3 = [MEMORY[0x277CEB448] isDayZeroByFirstAppLaunchDateWithThresholdDateFromDaysAgo:7];
  }

  else
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[ATXFaceSuggestionGenerator shouldUseDayZeroCuration]";
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: day zero criteria not met- multiple poster configurations exist", &v7, 0xCu);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)configurationCacheDidUpdateWithNewConfigurations:(id)configurations oldConfigurations:(id)oldConfigurations
{
  v55 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  oldConfigurationsCopy = oldConfigurations;
  if (!oldConfigurationsCopy)
  {
    goto LABEL_25;
  }

  selfCopy = self;
  v40 = configurationsCopy;
  v8 = objc_opt_new();
  v42 = objc_opt_new();
  v9 = objc_opt_new();
  v41 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v39 = oldConfigurationsCopy;
  v10 = oldConfigurationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v47 + 1) + 8 * i);
        extensionBundleIdentifier = [v15 extensionBundleIdentifier];
        [v42 addObject:extensionBundleIdentifier];

        complications = [v15 complications];
        v18 = [complications _pas_mappedArrayWithTransform:&__block_literal_global_118];
        [v8 addObjectsFromArray:v18];

        inlineComplication = [v15 inlineComplication];

        if (inlineComplication)
        {
          inlineComplication2 = [v15 inlineComplication];
          v21 = personalityStringFromComplication(inlineComplication2);
          [v8 addObject:v21];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = v40;
  v23 = [v22 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v43 + 1) + 8 * j);
        extensionBundleIdentifier2 = [v27 extensionBundleIdentifier];
        [v41 addObject:extensionBundleIdentifier2];

        complications2 = [v27 complications];
        v30 = [complications2 _pas_mappedArrayWithTransform:&__block_literal_global_47_0];
        [v9 addObjectsFromArray:v30];

        inlineComplication3 = [v27 inlineComplication];

        if (inlineComplication3)
        {
          inlineComplication4 = [v27 inlineComplication];
          v33 = personalityStringFromComplication(inlineComplication4);
          [v9 addObject:v33];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v24);
  }

  v34 = [v8 isEqualToSet:v9];
  v35 = [v42 isEqualToSet:v41];

  oldConfigurationsCopy = v39;
  configurationsCopy = v40;
  self = selfCopy;
  if (!v35)
  {
    goto LABEL_25;
  }

  if (v34)
  {
    v36 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v52 = "[ATXFaceSuggestionGenerator configurationCacheDidUpdateWithNewConfigurations:oldConfigurations:]";
      _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "%s: not regenerating, no significant changes to poster configurations", buf, 0xCu);
    }
  }

  else
  {
LABEL_25:
    [(ATXFaceSuggestionGenerator *)self regenerateFaceGalleryConfigurationCoalescedWithReason:@"poster configurations had significant changes"];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (ATXFaceSuggestionGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_generateFaceGalleryConfigurationNotifyingWithGuardedData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: unable to fetch accessory widget descriptors: %@; using empty dictionary", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end