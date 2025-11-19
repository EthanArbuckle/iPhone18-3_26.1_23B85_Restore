@interface ATXInitializeInOwnerProcess
@end

@implementation ATXInitializeInOwnerProcess

void ___ATXInitializeInOwnerProcess_block_invoke()
{
  v66 = *MEMORY[0x277D85DE8];
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);
  v2 = dispatch_queue_create("deferredInit", v1);

  [MEMORY[0x277CC5A40] setPredicatePropertyLoadMode:2];
  v3 = +[ATXPrivacyReset sharedInstance];
  [MEMORY[0x277CEBCB0] createDirectoriesIfNeeded];
  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:&__block_literal_global_389];
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    if (_ATXDECBackupNeedsRestoring(v5))
    {
      v6 = __atxlog_handle_backup();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Taking old backup path", buf, 2u);
      }

      v7 = [v5 stringByAppendingPathComponent:@"Backups/AppPredictionExpert"];
      v8 = _ATXExtractFilesFromDECBackupArchiveIfExists(v7, v5);
      v4 = v8;
      if (v8)
      {
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        [v9 removeItemAtPath:v7 error:0];

        v10 = __atxlog_handle_backup();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Restored old backup", buf, 2u);
        }
      }
    }

    else
    {
      v11 = +[ATXBackupService backupService];
      [v11 restoreFromBackupIfNeccessary:&__block_literal_global_394];

      v4 = 0;
    }
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v14 = [v13 stringByAppendingPathComponent:@"restore_finished"];
  v15 = [v12 fileExistsAtPath:v14];

  if (v15)
  {
    v16 = __atxlog_handle_backup();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "already restored, not registering for restore state notifications", buf, 2u);
    }
  }

  else
  {
    if (!registerForRestoreStateNotifications_mobileBackup)
    {
      registerForRestoreStateNotifications_mobileBackup = dlopen("/System/Library/PrivateFrameworks/MobileBackup.framework/MobileBackup", 1);
      if (!registerForRestoreStateNotifications_mobileBackup)
      {
        v17 = __atxlog_handle_backup();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          ___ATXInitializeInOwnerProcess_block_invoke_cold_1();
        }
      }
    }

    v16 = restoreStateQueue();
    dispatch_async(v16, &__block_literal_global_489);
  }

  v18 = *MEMORY[0x277D86238];
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.apppredictionupdate", *MEMORY[0x277D86238], &__block_literal_global_498);
  atxRegisterCTSJobHandler("com.apple.duetexpertd.atxbackupnow", v18, &__block_literal_global_501);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.atxbackup", &__block_literal_global_514);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.atxtrain", &__block_literal_global_518);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.action.timeestimate", v18, &__block_literal_global_520);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.everydayshortcuts", v18, &__block_literal_global_523);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.everydayshortcuts-trigger", v18, &__block_literal_global_527);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.dailyroutines", v18, &__block_literal_global_529);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.dailyroutines-trigger", v18, &__block_literal_global_532);
  atxRegisterCTSJobHandler("com.apple.duetexpertd.updateAssetMetadata", v18, &__block_literal_global_535);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.magicalmoments", &__block_literal_global_539);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.anchormodeldataharvesting", &__block_literal_global_542);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.anchormodeltraining", &__block_literal_global_547);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.biome-ui-feedback-result-stream-writing", v18, &__block_literal_global_551);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.mode-entity-model-training", &__block_literal_global_555);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.mode-setup-prediction-training", v18, &__block_literal_global_559);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.urgency-tuning-global-metrics-logging", v18, &__block_literal_global_563);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.infoStorePeriodicCleanup", v18, &__block_literal_global_567);
  atxRegisterCTSJobHandlerForNonClassCLocked([@"com.apple.duetexpertd.appdirectory" UTF8String], v18, &__block_literal_global_573);
  atxRegisterCTSJobHandler([@"com.apple.duetexpertd.appdirectorylogging" UTF8String], v18, &__block_literal_global_578);
  v19 = MEMORY[0x277CFE360];
  v20 = [MEMORY[0x277CFE338] keyPathForFirstWakeupStatus];
  v21 = [v19 predicateForKeyPath:v20 equalToValue:&unk_283A55F28 withMinimumDurationInPreviousState:14400.0];

  v22 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.information.userWakeUp" contextualPredicate:v21 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:&__block_literal_global_582];
  v23 = [MEMORY[0x277CFE318] userContext];
  [v23 registerCallback:v22];

  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.timelinerelevance", v18, &__block_literal_global_593);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.tl_prediction", v18, &__block_literal_global_596);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.cardSuggestionClientCacheCleanup", v18, &__block_literal_global_602);
  v24 = objc_alloc(MEMORY[0x277CBEBD0]);
  v25 = [v24 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v26 = [v25 integerForKey:*MEMORY[0x277CEBB98]];
  if (v26 < 1)
  {
    atxRegisterCTSJobHandlerForNonClassCLocked([@"com.apple.duetexpertd.defaultwidgetsuggester" UTF8String], v18, &__block_literal_global_607);
  }

  else
  {
    v27 = v26;
    v28 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v65 = v27;
      _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "No longer running ATXDefaultWidgetSuggester CTS job due to feedback: %ld", buf, 0xCu);
    }
  }

  atxRegisterCTSJobHandler("com.apple.duetexpertd.widgetonboarding", v18, &__block_literal_global_610);
  atxRegisterCTSJobHandler("com.apple.duetexpertd.biomepruning", v18, &__block_literal_global_618);
  atxRegisterCTSJobHandler([@"com.apple.duetexpertd.focusMetricsLogging" UTF8String], v18, &__block_literal_global_624);
  atxRegisterCTSJobHandler("com.apple.duetexpertd.homescreenlogging", v18, &__block_literal_global_629);
  atxRegisterCTSJobHandler("com.apple.duetexpertd.nPlusOneStudyLogging", v18, &__block_literal_global_633);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.blendingbiomestreamlogging", v18, &__block_literal_global_637);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.refreshfacesuggestions", v18, &__block_literal_global_641);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.collectlockscreenmetrics", v18, &__block_literal_global_648);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.collectzkwmetrics", v18, &__block_literal_global_652);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.verticalmodelstraining", v18, &__block_literal_global_656);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.modelscoreharvesting", v18, &__block_literal_global_660);
  atxRegisterCTSJobHandlerForNonClassCLocked([@"com.apple.duetexpertd.updateInferredModeBiomeStream" UTF8String], v18, &__block_literal_global_666);
  atxRegisterCTSJobHandlerForNonClassCLocked([@"com.apple.duetexpertd.updateSuggestedPages" UTF8String], v18, &__block_literal_global_672);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.blending-shadow-logging", v18, &__block_literal_global_675);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.logModeActivityMetrics", v18, &__block_literal_global_679);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.logNotificationDigestMetrics", v18, &__block_literal_global_682);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.logDigestGlobalNotificationFeedback", v18, &__block_literal_global_686);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.pruneNotificationSuggestionDatastore", v18, &__block_literal_global_690);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.pruneNotificationsBasedOnHardLimits", v18, &__block_literal_global_695);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.pruneSuggestionsBasedOnHardLimits", v18, &__block_literal_global_698);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.analyzeNotificationsAndSuggestionsDatabase", v18, &__block_literal_global_701);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.notificationAndSuggestionDatastorePerfMetricsLogging", v18, &__block_literal_global_704);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.datastoremaintenance", &__block_literal_global_707);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.activitySuggestionFeedbackProcessing", v18, &__block_literal_global_711);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.homeScreenModificationMetricsLogger", v18, &__block_literal_global_715);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.ambientmetrics", v18, &__block_literal_global_719);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.carPlayMetrics", &__block_literal_global_724);
  atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.timelinedonationspruning", v18, &__block_literal_global_729);
  atxRegisterBGSTJobHandlerForNonClassCLocked("com.apple.duetexpertd.notificationmetrics", &__block_literal_global_733);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, languagePrefChanged, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v30 = MEMORY[0x277D42598];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = ___ATXInitializeInOwnerProcess_block_invoke_401;
  v62[3] = &unk_278596BB8;
  v31 = v2;
  v63 = v31;
  [v30 runBlockWhenDeviceIsClassCUnlocked:v62];
  v32 = [MEMORY[0x277CCAB98] defaultCenter];
  v33 = [v32 addObserverForName:*MEMORY[0x277CEBB18] object:0 queue:0 usingBlock:&__block_literal_global_421];

  v34 = [MEMORY[0x277CCA9A0] defaultCenter];
  v35 = [v34 addObserverForName:*MEMORY[0x277CFC818] object:0 queue:0 usingBlock:&__block_literal_global_426];

  v36 = [MEMORY[0x277CCA9A0] defaultCenter];
  v37 = [v36 addObserverForName:*MEMORY[0x277CEBA78] object:0 queue:0 usingBlock:&__block_literal_global_430];

  dispatch_async(v31, &__block_literal_global_434);
  PMMInitializeInOwnerProcess();
  v38 = +[ATXServer sharedInstance];
  v39 = +[ATXParameterSuggestionServer sharedInstance];
  v40 = +[ATXActionPredictionServer sharedInstance];
  v41 = [MEMORY[0x277D785B0] sharedInstance];
  if (_PASIsInternalDevice())
  {
    v42 = +[ATXModeAutomationSuggestionTester sharedInstance];
  }

  [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:&__block_literal_global_442];
  [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlockedWithQoS:25 block:&__block_literal_global_464];
  v43 = +[ATXWifiStateMonitor sharedInstance];
  v44 = [MEMORY[0x277CCAA00] defaultManager];
  v45 = restoreStateFinishedPath();
  if ([v44 fileExistsAtPath:v45])
  {
    v46 = +[ATXBackupService isBackupRestore];

    if (!v46)
    {
      v47 = __atxlog_handle_backup();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v47, OS_LOG_TYPE_DEFAULT, "Scheduling app directory update after restore", buf, 2u);
      }

      [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:&__block_literal_global_474];
    }
  }

  else
  {
  }

  v48 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v49 = [v48 stringByAppendingPathComponent:@"restored"];

  if ((v4 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "fileExistsAtPath:", v49), v50, v51))
  {
    v52 = __atxlog_handle_backup();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v52, OS_LOG_TYPE_DEFAULT, "Restore marker seen, updating predictions immediately", buf, 2u);
    }

    v53 = __atxlog_handle_backup();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = +[ATXBackupService isBackupRestore];
      *buf = 67109120;
      LODWORD(v65) = v54;
      _os_log_impl(&dword_2263AA000, v53, OS_LOG_TYPE_DEFAULT, "Scheduling app directory update after restore (based on ATXBackupService marker); isBackupRestore=%{BOOL}d", buf, 8u);
    }

    v55 = MEMORY[0x277D42598];
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = ___ATXInitializeInOwnerProcess_block_invoke_475;
    v60 = &unk_278596BB8;
    v61 = v49;
    [v55 runBlockWhenDeviceIsClassCUnlocked:&v57];
  }

  [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:{&__block_literal_global_479, v57, v58, v59, v60}];

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t ___ATXInitializeInOwnerProcess_block_invoke_2()
{
  v0 = __atxlog_handle_backup();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Unlock seen. Checking for restore.", v2, 2u);
  }

  return xpc_transaction_exit_clean();
}

void ___ATXInitializeInOwnerProcess_block_invoke_391(uint64_t a1, int a2)
{
  v3 = __atxlog_handle_backup();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Restored new style backup. Restarting process...", buf, 2u);
    }

    v5 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    v6 = [v5 stringByAppendingPathComponent:@"restored"];

    v7 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    v8 = [v7 stringByAppendingPathComponent:@"restore_finished"];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    [v9 createFileAtPath:v6 contents:0 attributes:0];

    v10 = [MEMORY[0x277CCAA00] defaultManager];
    [v10 createFileAtPath:v8 contents:0 attributes:0];

    exit(0);
  }

  if (v4)
  {
    *v11 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Didn't restore new style backup", v11, 2u);
  }
}

void ___ATXInitializeInOwnerProcess_block_invoke_401(uint64_t a1)
{
  ATXEnableMobileAssetDataVault();
  v2 = +[ATXHeuristicActionProducer sharedInstance];
  v3 = +[ATXIntentMetadataCache sharedInstance];
  v4 = +[_ATXAppPredictor sharedInstance];
  v5 = +[_ATXFeedback sharedInstance];
  v6 = +[ATXUpdatePredictionsManager sharedInstance];
  v7 = dispatch_time(0, 100000000);
  dispatch_after(v7, *(a1 + 32), &__block_literal_global_409);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = [v9 addObserverForName:*MEMORY[0x277CEBAF0] object:0 queue:0 usingBlock:&__block_literal_global_416];
}

void ___ATXInitializeInOwnerProcess_block_invoke_2_407()
{
  v0 = +[ATXDigitalHealthBlacklist sharedInstance];
  v1 = [MEMORY[0x277CEB998] sharedInstance];
  v2 = [MEMORY[0x277CEB988] sharedInstance];
  [v2 refreshWithCompletion:0];
}

void ___ATXInitializeInOwnerProcess_block_invoke_3()
{
  v3 = [MEMORY[0x277CEB998] sharedInstance];
  v0 = [v3 fetchHomeScreenWidgetDescriptorMetadataWithError:0];
  if (v0)
  {
    v1 = ATXSharedDefaultHomeScreenItemUpdater();
    v2 = [v3 homeScreenDescriptors];
    [v1 updateDefaultsWithSystemDescriptors:v2 updateCarPlayDefaults:0 installDatesCache:v0 reason:@"Descriptor change"];
  }
}

void ___ATXInitializeInOwnerProcess_block_invoke_5()
{
  v0 = ATXSharedDefaultHomeScreenItemUpdater();
  [v0 updateDefaultsDueToRelevantHomeScreenConfigUpdate];
}

void ___ATXInitializeInOwnerProcess_block_invoke_7()
{
  v0 = ATXSharedDefaultHomeScreenItemUpdater();
  [v0 updateDefaultsDueToAmbientConfigUpdate];
}

void ___ATXInitializeInOwnerProcess_block_invoke_9()
{
  v0 = ATXSharedDefaultHomeScreenItemUpdater();
  [v0 updateDefaultsDueToCarPlayConfigUpdate];
}

id ___ATXInitializeInOwnerProcess_block_invoke_11()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    ___ATXInitializeInOwnerProcess_block_invoke_11_cold_1();
  }

  v1 = +[ATXMagicalMomentsAppPredictor sharedInstance];
  v2 = +[ATXClientModelSuggestionReceiver sharedInstance];
  [v2 start];

  v3 = +[ATXActionPredictionServer sharedInstance];
  v4 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v5 = [v4 blendingLayerServer];
  [v3 registerForRealTimeRequestsWithBlendingLayerServer:v5];

  v6 = +[ATXModeAnchorModelSuggestionClient sharedInstance];
  v7 = +[ATXNotificationsLoggingServer sharedInstance];
  v8 = +[ATXActionNotificationServer sharedInstance];
  if ([MEMORY[0x277CEBC58] widgetSuggestionsEnabled])
  {
    v9 = +[ATXInfoSuggestionServer sharedInstance];
  }

  v10 = +[ATXContextHeuristicsServer sharedInstance];
  v11 = +[ATXModeEntityScorerServer sharedInstance];
  v12 = +[ATXSmartActivationEarlyExitDetectionLogger sharedInstance];
  v13 = +[ATXNotificationDigestRankerServer sharedInstance];
  v14 = +[ATXUserEducationSuggestionServer sharedInstance];
  v15 = +[ATXContextualEngine sharedInstance];
  v16 = +[ATXAnchorModelInferenceEngine sharedInstance];
  [v16 start];

  v17 = objc_alloc(MEMORY[0x277CBEBD0]);
  v18 = *MEMORY[0x277CEBD00];
  v19 = [v17 initWithSuiteName:*MEMORY[0x277CEBD00]];
  if ([v19 BOOLForKey:@"ATXInitializationLanguageChangeDirty"])
  {
    v20 = __atxlog_handle_default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "Language change detected upon process start - updating predictions once and immediately", &v51, 2u);
    }

    v51 = MEMORY[0x277D85DD0];
    v52 = 3221225472;
    v53 = __updatePredictionsIfLanguageChanged_block_invoke;
    v54 = &unk_278596BB8;
    v55 = v19;
    dispatch_async(MEMORY[0x277D85CD0], &v51);
  }

  v21 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v18];
  v22 = *MEMORY[0x277CEBD78];
  v23 = [v21 objectForKey:*MEMORY[0x277CEBD78]];

  if (!v23)
  {
    v24 = [MEMORY[0x277CBEAA8] now];
    [v21 setObject:v24 forKey:v22];
    if ([v21 BOOLForKey:*MEMORY[0x277CEBD20]])
    {
      [v21 setObject:v24 forKey:*MEMORY[0x277CEBD18]];
      v25 = objc_alloc_init(MEMORY[0x277CEB568]);
      v26 = [v25 hasWidgetsOnTheHomeScreen];

      v27 = *MEMORY[0x277CEBD10];
      if (v26)
      {
        v28 = @"active";
      }

      else
      {
        v28 = @"abandoned";
      }
    }

    else
    {
      v27 = *MEMORY[0x277CEBD10];
      v28 = @"neverUsed";
    }

    [v21 setObject:v28 forKey:v27];
  }

  v29 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v18];
  v30 = *MEMORY[0x277CEBD48];
  v31 = [v29 integerForKey:*MEMORY[0x277CEBD48]];
  v32 = [MEMORY[0x277CCAC38] processInfo];
  v33 = v32;
  if (v32)
  {
    [v32 operatingSystemVersion];
    v34 = v52;
  }

  else
  {
    v34 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
  }

  v35 = [MEMORY[0x277CCAC38] processInfo];
  v36 = v35;
  if (v35)
  {
    [v35 operatingSystemVersion];
    v37 = v56;
  }

  else
  {
    v37 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
  }

  v38 = MEMORY[0x277CEBD58];
  v39 = MEMORY[0x277CEBD50];
  if (v37 <= v31)
  {
    v40 = [v29 integerForKey:*MEMORY[0x277CEBD58]];
  }

  else
  {
    [v29 removeObjectForKey:*MEMORY[0x277CEBD50]];
    v40 = -1;
  }

  if (v34 > v40)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v29 setDouble:*v39 forKey:?];
    [v29 setInteger:v34 forKey:*v38];
  }

  v41 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v18];
  v42 = [v41 integerForKey:v30];
  v43 = [MEMORY[0x277CCAC38] processInfo];
  v44 = v43;
  if (v43)
  {
    [v43 operatingSystemVersion];
    v45 = v51;
  }

  else
  {
    v45 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
  }

  if (v45 > v42)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v41 setDouble:*MEMORY[0x277CEBD40] forKey:?];
    [v41 setInteger:v45 forKey:v30];
  }

  v46 = +[ATXSleepSuggestionServer sharedInstance];
  v47 = +[ATXSportsServer sharedInstance];
  if ([MEMORY[0x277CEBC58] isDigitalBalanceEnabled])
  {
    v48 = +[ATXUsageInsightsServer sharedInstance];
  }

  if ([MEMORY[0x277CEBC58] isNotificationCategorizationEnabled])
  {
    v49 = +[ATXNotificationCategorizationServer sharedInstance];
  }

  return +[ATXSettingsActionsServer sharedInstance];
}

id ___ATXInitializeInOwnerProcess_block_invoke_462()
{
  v0 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  v1 = +[ATXAppDirectoryServer sharedInstance];
  v2 = +[ATXDefaultWidgetSuggesterServer sharedInstance];
  v3 = +[ATXSuggestedPagesServer sharedInstance];
  v4 = +[ATXFaceSuggestionServer sharedInstance];
  return +[_ATXAppProtectionMonitor sharedInstance];
}

void ___ATXInitializeInOwnerProcess_block_invoke_472()
{
  performPostRestoreTasks();
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v0 = restoreStateFinishedPath();
  [v1 removeItemAtPath:v0 error:0];
}

void ___ATXInitializeInOwnerProcess_block_invoke_475(uint64_t a1)
{
  performPostRestoreTasks();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ATXInitializeInOwnerProcess_block_invoke_2_476;
  block[3] = &unk_278596BB8;
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void ___ATXInitializeInOwnerProcess_block_invoke_2_476(uint64_t a1)
{
  ATXUpdatePredictionsImmediatelyWithReason(11);
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtPath:*(a1 + 32) error:0];
}

void ___ATXInitializeInOwnerProcess_block_invoke_3_477()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    ___ATXInitializeInOwnerProcess_block_invoke_3_477_cold_1();
  }

  v1 = +[ATXServer consumerSubTypesToUpdate];
  v2 = [ATXFileUtil cachesAreValidForConsumerSubTypes:v1];

  if (!v2)
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "At least one cache is invalid or stale. Triggering an update", v4, 2u);
    }

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_483);
  }
}

void ___ATXInitializeInOwnerProcess_block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  dlerror();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v0, v1, "Could not load MobileBackup: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end