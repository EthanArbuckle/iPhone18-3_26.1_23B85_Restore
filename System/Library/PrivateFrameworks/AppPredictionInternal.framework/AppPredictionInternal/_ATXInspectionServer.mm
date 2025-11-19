@interface _ATXInspectionServer
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_ATXInspectionServer)init;
- (id)_filterAndSortAppIntentEventsWithUUID:(id)a3 events:(id)a4;
- (void)_getActionLogs:(id)a3 obfuscation:(BOOL)a4;
- (void)addToDigestFeedbackHistogramForBundleId:(id)a3 location:(id)a4 feedback:(id)a5 withReply:(id)a6;
- (void)allHistogramsBySize:(id)a3;
- (void)appAndActionHistoryClear:(id)a3;
- (void)appHistoryActionWithUUID:(id)a3 reply:(id)a4;
- (void)appHistoryAddAppIntentLaunch:(id)a3 intent:(id)a4 source:(id)a5 date:(id)a6 timeZone:(id)a7 reply:(id)a8;
- (void)appHistoryAddLaunch:(id)a3 launchReason:(id)a4 date:(id)a5 timeZone:(id)a6 reply:(id)a7;
- (void)appHistoryAddNSUALaunch:(id)a3 requiredString:(id)a4 itemIdentifier:(id)a5 date:(id)a6 timeZone:(id)a7 reply:(id)a8;
- (void)appHistoryClearAppIntent:(id)a3;
- (void)appHistoryStartDeltaRecording:(id)a3;
- (void)appHistoryStopDeltaRecording:(id)a3;
- (void)appHistoryUpdateActionPredictionPipelineWithAction:(id)a3 date:(id)a4 timeZone:(id)a5 reply:(id)a6;
- (void)appInstallHistoryClear:(id)a3;
- (void)appInstallHistorySet:(id)a3 date:(id)a4 reply:(id)a5;
- (void)appInstallHistoryStartDeltaRecording:(id)a3;
- (void)appInstallHistoryStopDeltaRecording:(id)a3;
- (void)appIntentHistoryDonateINIntent:(id)a3 intentType:(id)a4 startDate:(id)a5 endDate:(id)a6 timeZone:(id)a7 reply:(id)a8;
- (void)appIntentHistoryMockIntentLaunch:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 timeZone:(id)a7 reply:(id)a8;
- (void)appLaunchDatesWithReply:(id)a3;
- (void)appLaunchInformationWithReply:(id)a3;
- (void)blendedSuggestionsForConsumerSubType:(unsigned __int8)a3 reply:(id)a4;
- (void)buildAnchorModelTrainingDataset:(id)a3;
- (void)categoryLaunchInformationWithReply:(id)a3;
- (void)clearAllDataForStressTestWithReply:(id)a3;
- (void)clearBlendingSuggestionsForClientModel:(int64_t)a3 withReply:(id)a4;
- (void)clearNotificationsWithReply:(id)a3;
- (void)createAppPredictionLogs:(id)a3;
- (void)donateSuggestion:(id)a3 forClientModel:(int64_t)a4 withReply:(id)a5;
- (void)dumpPredictionTableForMMExpert:(id)a3 reply:(id)a4;
- (void)evaluateInfoSuggestionsWithCompletionHandler:(id)a3;
- (void)feedbackClear:(id)a3;
- (void)fetchPIDFromServer:(id)a3;
- (void)fetchPosterDescriptorsWithReply:(id)a3;
- (void)fetchSuggestionsForSourceId:(id)a3 reply:(id)a4;
- (void)forceMagicalMomentsAppPredictionForBundleId:(id)a3 expert:(id)a4 reply:(id)a5;
- (void)forceNotificationAndSuggestionDbUpdate:(id)a3;
- (void)generateDataForStressTestWithReply:(id)a3;
- (void)generateSerializedMissedNotificationBundleFromFileData:(id)a3 modeString:(id)a4 reply:(id)a5;
- (void)generateSerializedNotificationDigestFromFileData:(id)a3 digestTimeString:(id)a4 reply:(id)a5;
- (void)getAppFeedbackData:(id)a3;
- (void)getCurrentLocationWithReply:(id)a3;
- (void)getInfoPredictionsInString:(id)a3;
- (void)getInfoSuggestionsInString:(id)a3;
- (void)getModeTimelineDataFromStartDate:(id)a3 reply:(id)a4;
- (void)histogramsInMemory:(id)a3;
- (void)histogramsInMemoryBySize:(id)a3;
- (void)inspectInferredActivitySessionStream:(id)a3 fromTimestamp:(double)a4 reply:(id)a5;
- (void)inspectInferredActivityTransitionStream:(id)a3 fromTimestamp:(double)a4 reply:(id)a5;
- (void)lockScreenBundleIdsWithReply:(id)a3;
- (void)logNotificationMetricsFromStartTimestamp:(id)a3 toEndTimestamp:(id)a4 withCompletion:(id)a5;
- (void)nPlusOneStudyDryRunResultFilterByExtensionBundleId:(id)a3 reply:(id)a4;
- (void)performHomeScreenCoreAnalyticsDryRunWithCustomStartDate:(id)a3 reply:(id)a4;
- (void)processAppDirectoryFeedbackWithReply:(id)a3;
- (void)processHomeScreenFeedbackWithReply:(id)a3;
- (void)processLockscreenFeedbackWithReply:(id)a3;
- (void)processSpotlightActionFeedbackWithReply:(id)a3;
- (void)processSpotlightAppFeedbackWithReply:(id)a3;
- (void)promoteSuggestionsFromClientModel:(id)a3 reply:(id)a4;
- (void)rankAndReturnInfoPredictionsInString:(id)a3;
- (void)refreshBlendingLayer:(id)a3;
- (void)resetActionPredictions:(id)a3;
- (void)resetHistogramsAndRemoveUICaches:(id)a3;
- (void)retrainActionHistograms:(id)a3;
- (void)retrainActionSlotDatabase:(id)a3;
- (void)schedulePredictionsForAnchorModel:(id)a3 anchorType:(id)a4 reply:(id)a5;
- (void)scheduledPredictionsForAnchorModelWithReply:(id)a3;
- (void)setDigestFeedbackHistogramValueForBundleId:(id)a3 location:(id)a4 feedback:(id)a5 value:(id)a6 withReply:(id)a7;
- (void)showDigestFeedbackHistogramForBundleId:(id)a3 withReply:(id)a4;
- (void)trainAnchorModel:(id)a3;
- (void)trainMagicalMomentsAppPredictor:(id)a3;
- (void)trainModeSetupPredictionModelWithReply:(id)a3;
- (void)triggerBackgroundJobWithIdentifier:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)triggerPredictionsUpdateWithCompletion:(id)a3;
- (void)updateAppDirectoryCache:(id)a3;
- (void)validPredictionsRightNowForAnchorModelWithReply:(id)a3;
- (void)widgetBundleIdentifiersForAllInfoSuggestionsInString:(id)a3;
@end

@implementation _ATXInspectionServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_33 != -1)
  {
    +[_ATXInspectionServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_40;

  return v3;
}

- (_ATXInspectionServer)init
{
  v6.receiver = self;
  v6.super_class = _ATXInspectionServer;
  v2 = [(_ATXInspectionServer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.duet.appPrediction.inspection"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.duet.appPrediction.inspection"];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue] & 1) != 0)
  {
    v7 = _ATXInspectionInterface();
    [v5 setExportedInterface:v7];

    [v5 setExportedObject:self];
    [v5 setInterruptionHandler:&__block_literal_global_24_1];
    [v5 setInvalidationHandler:&__block_literal_global_27_0];
    [v5 resume];
    v8 = 1;
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_ATXInspectionServer listener:shouldAcceptNewConnection:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)appAndActionHistoryClear:(id)a3
{
  v5 = a3;
  v3 = +[_ATXAppPredictor sharedInstance];
  v4 = [v3 appLaunchMonitor];
  [v4 clearHistory];

  v5[2](v5, 0);
}

- (void)appHistoryClearAppIntent:(id)a3
{
  v5 = a3;
  v3 = +[_ATXAppPredictor sharedInstance];
  v4 = [v3 appLaunchMonitor];
  [v4 clearIntentHistogramHistory];

  v5[2](v5, 0);
}

- (void)appHistoryAddLaunch:(id)a3 launchReason:(id)a4 date:(id)a5 timeZone:(id)a6 reply:(id)a7
{
  v17 = a7;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = +[_ATXAppPredictor sharedInstance];
  v16 = [v15 appLaunchMonitor];
  [v16 addLaunchWithBundleId:v14 date:v12 timeZone:v11 reason:v13];

  v17[2](v17, 0);
}

- (void)appHistoryUpdateActionPredictionPipelineWithAction:(id)a3 date:(id)a4 timeZone:(id)a5 reply:(id)a6
{
  v103 = *MEMORY[0x277D85DE8];
  v94 = a3;
  v9 = a4;
  v10 = a6;
  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer appHistoryUpdateActionPredictionPipelineWithAction:v94 date:v11 timeZone:? reply:?];
  }

  v12 = objc_alloc_init(MEMORY[0x277CEB5E0]);
  v13 = [MEMORY[0x277CBEAA8] distantPast];
  v14 = [MEMORY[0x277CBEAA8] now];
  v90 = v12;
  v15 = [v12 getIntentEventsBetweenStartDate:v13 endDate:v14 forSource:4];

  v93 = v15;
  v16 = [(_ATXInspectionServer *)self _filterAndSortAppIntentEventsWithUUID:v94 events:v15];
  v17 = [v16 lastObject];

  v18 = objc_alloc_init(MEMORY[0x277CEB918]);
  v19 = [MEMORY[0x277CBEAA8] distantPast];
  v20 = [MEMORY[0x277CBEAA8] now];
  v92 = v18;
  v21 = [v18 getActivityIntentEventsBetweenStartDate:v19 endDate:v20];

  v91 = v21;
  v22 = [(_ATXInspectionServer *)self _filterAndSortAppIntentEventsWithUUID:v94 events:v21];
  v23 = [v22 lastObject];

  if (v17 && v23)
  {
    v24 = [v17 endDate];
    v25 = [v23 endDate];
    if ([v24 compare:v25])
    {
      v26 = v23;
    }

    else
    {
      v26 = v17;
    }

    v27 = v26;
  }

  else
  {
    if (v17)
    {
      v28 = v17;
    }

    else
    {
      v28 = v23;
    }

    v27 = v28;
  }

  v29 = __atxlog_handle_default();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v27 description];
    *buf = 138543618;
    v100 = v30;
    v101 = 2080;
    v102 = "[_ATXInspectionServer appHistoryUpdateActionPredictionPipelineWithAction:date:timeZone:reply:]";
    _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "Biome query result: %{public}@, %s", buf, 0x16u);
  }

  if (v27)
  {
    if ([v27 isEqual:v17])
    {
      v31 = [v27 intent];
      v32 = [v31 _intents_bundleIdForDisplay];
      v33 = v32;
      v34 = v23;
      if (v32)
      {
        v35 = v32;
      }

      else
      {
        v35 = [v27 bundleId];
      }

      v37 = v35;

      v38 = [v27 intentType];
      v42 = objc_alloc(MEMORY[0x277CEB2C8]);
      v43 = [v27 intent];
      v44 = objc_opt_new();
      LOBYTE(v77) = 0;
      v45 = [v42 initWithIntent:v43 actionUUID:v44 bundleId:v37 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v77 title:0 subtitle:0];

      v23 = v34;
      v41 = v45;
    }

    else
    {
      v41 = 0;
      v38 = 0;
      v37 = 0;
    }

    v89 = v23;
    if ([v27 isEqual:v23])
    {
      v87 = v9;
      v46 = [v27 action];
      v47 = [v46 contentAttributeSet];

      v48 = [v47 contentURL];
      v49 = [v47 relatedUniqueIdentifier];
      v50 = [v47 contentDescription];
      v85 = v47;
      v86 = v10;
      v83 = v49;
      v84 = v50;
      v82 = v48;
      if (v48 || v49 || v50)
      {
        v52 = v50;
        v53 = objc_alloc(MEMORY[0x277CC34B8]);
        v54 = [v53 initWithContentType:*MEMORY[0x277CE1D40]];
        v55 = v49;
        v51 = v54;
        [v54 setRelatedUniqueIdentifier:v55];
        [v51 setContentURL:v48];
        [v51 setContentDescription:v52];
      }

      else
      {
        v51 = 0;
      }

      v81 = [v27 bundleId];

      v56 = [v27 action];
      v79 = [v56 itemIdentifier];

      v57 = [v27 action];
      v58 = [v57 userActivityString];

      v59 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityStrings:v58 secondaryString:0 optionalData:0];
      v60 = MEMORY[0x277CEB2C8];
      v61 = [v59 activityType];
      v80 = [v60 getNSUATypefromActivityType:v61];

      v62 = objc_alloc(MEMORY[0x277CEB2C8]);
      v63 = objc_opt_new();
      LOBYTE(v78) = 0;
      v37 = v81;
      v64 = [v62 initWithNSUserActivityString:v58 actionUUID:v63 bundleId:v81 itemIdentifier:v79 contentAttributeSet:v51 heuristic:0 heuristicMetadata:0 isFutureMedia:v78 title:0 subtitle:0];

      v41 = v64;
      v38 = v80;
      v10 = v86;
      v9 = v87;
    }

    if (v37 && v38 && v41 && ([v41 actionTitle], v65 = objc_claimAutoreleasedReturnValue(), v65, v65))
    {
      v66 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v9];
      v67 = [objc_alloc(MEMORY[0x277CEB5D8]) initWithBundleId:v37 intentType:v38 dateInterval:v66 action:v41];
      v68 = +[_ATXAppPredictor sharedInstance];
      [v68 appIntentMonitor];
      v88 = v41;
      v69 = v38;
      v70 = v17;
      v71 = v10;
      v73 = v72 = v9;
      LODWORD(v74) = 1.0;
      [v73 updateActionPredictionPipelineForIntentEvent:v67 weight:0 appSessionStartDate:0 appSessionEndDate:v74];

      v9 = v72;
      v10 = v71;
      v17 = v70;
      v38 = v69;
      v41 = v88;

      v40 = [v88 description];

      v39 = 0;
    }

    else
    {
      v75 = objc_alloc(MEMORY[0x277CCA9B8]);
      v97 = *MEMORY[0x277CCA450];
      v98 = @"The action does not have a bundleId, intentType, or title.";
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v39 = [v75 initWithDomain:@"appHistoryUpdateActionPredictionPipelineWithAction" code:-1 userInfo:v66];
      v40 = 0;
    }

    v23 = v89;
  }

  else
  {
    v36 = objc_alloc(MEMORY[0x277CCA9B8]);
    v95 = *MEMORY[0x277CCA450];
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"No events found for UUID: %@", v94];
    v96 = v37;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v39 = [v36 initWithDomain:@"appHistoryUpdateActionPredictionPipelineWithAction" code:-1 userInfo:v38];
    v40 = 0;
  }

  v10[2](v10, v40, v39);
  v76 = *MEMORY[0x277D85DE8];
}

- (id)_filterAndSortAppIntentEventsWithUUID:(id)a3 events:(id)a4
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69___ATXInspectionServer__filterAndSortAppIntentEventsWithUUID_events___block_invoke;
  v10[3] = &unk_27859C198;
  v11 = v5;
  v6 = v5;
  v7 = [a4 _pas_filteredArrayWithTest:v10];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_53];

  return v8;
}

- (void)appHistoryActionWithUUID:(id)a3 reply:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__83;
  v26 = __Block_byref_object_dispose__83;
  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v29 = *MEMORY[0x277CCA450];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v5 UUIDString];
  v10 = [v8 stringWithFormat:@"There is no action found with UUID: %@", v9];
  v30[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v27 = [v7 initWithDomain:@"appHistoryActionWithUUID" code:-1 userInfo:v11];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__83;
  v20 = __Block_byref_object_dispose__83;
  v21 = 0;
  v12 = +[_ATXDataStore sharedInstance];
  v28 = v5;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55___ATXInspectionServer_appHistoryActionWithUUID_reply___block_invoke;
  v15[3] = &unk_27859F9B8;
  v15[4] = &v22;
  v15[5] = &v16;
  [v12 enumerateActionsInUUIDSet:v13 block:v15];

  v6[2](v6, v17[5], v23[5]);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)appHistoryAddNSUALaunch:(id)a3 requiredString:(id)a4 itemIdentifier:(id)a5 date:(id)a6 timeZone:(id)a7 reply:(id)a8
{
  v29 = a3;
  v12 = a6;
  v13 = a8;
  v14 = MEMORY[0x277CEB2C8];
  v15 = a5;
  v16 = a4;
  v17 = [v14 alloc];
  v18 = objc_opt_new();
  LOBYTE(v28) = 0;
  v19 = [v17 initWithNSUserActivityString:v16 actionUUID:v18 bundleId:v29 itemIdentifier:v15 contentAttributeSet:0 heuristic:0 heuristicMetadata:0 isFutureMedia:v28 title:0 subtitle:0];

  v20 = [v19 userActivity];
  v21 = [v20 activityType];

  if (v21)
  {
    v22 = [MEMORY[0x277CEB2C8] getNSUATypefromActivityType:v21];
    v23 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v12];
    v24 = [objc_alloc(MEMORY[0x277CEB5D8]) initWithBundleId:v29 intentType:v22 dateInterval:v23 action:v19];
    v25 = +[_ATXAppPredictor sharedInstance];
    v26 = [v25 appIntentMonitor];
    LODWORD(v27) = 1.0;
    [v26 updateActionPredictionPipelineForIntentEvent:v24 weight:0 appSessionStartDate:0 appSessionEndDate:v27];
  }

  v13[2](v13, 0);
}

- (void)appHistoryAddAppIntentLaunch:(id)a3 intent:(id)a4 source:(id)a5 date:(id)a6 timeZone:(id)a7 reply:(id)a8
{
  v21 = a4;
  v12 = a8;
  v13 = a6;
  v14 = a3;
  v15 = v21;
  if ([a5 isEqualToString:@"NSUA"])
  {
    v15 = [MEMORY[0x277CEB2C8] getNSUATypefromActivityType:v21];
  }

  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v13];

  v17 = [objc_alloc(MEMORY[0x277CEB5D8]) initWithBundleId:v14 intentType:v15 dateInterval:v16];
  v18 = +[_ATXAppPredictor sharedInstance];
  v19 = [v18 appIntentMonitor];
  LODWORD(v20) = 1.0;
  [v19 updateActionPredictionPipelineForIntentEvent:v17 weight:0 appSessionStartDate:0 appSessionEndDate:v20];

  v12[2](v12, 0);
}

- (void)appIntentHistoryMockIntentLaunch:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 timeZone:(id)a7 reply:(id)a8
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  if (([v12 isEqualToString:@"NSUA"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"INIntent"))
  {
    v16 = +[_ATXAppPredictor sharedInstance];
    v17 = [v16 appIntentMonitor];
    [v17 updateActionPredictionPipelineForAppSession:v18 startDate:v13 endDate:v14];
  }

  v15[2](v15, 0);
}

- (void)appIntentHistoryDonateINIntent:(id)a3 intentType:(id)a4 startDate:(id)a5 endDate:(id)a6 timeZone:(id)a7 reply:(id)a8
{
  v48[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = MEMORY[0x277CD3E98];
  v43 = a8;
  v41 = a6;
  v40 = a5;
  v42 = a3;
  v14 = [v13 alloc];
  v15 = [@"alice" stringByAppendingString:@"@example.com"];
  v16 = *MEMORY[0x277CD38A8];
  v17 = [v14 initWithValue:v15 type:1 label:*MEMORY[0x277CD38A8]];

  v18 = objc_alloc(MEMORY[0x277CD3E90]);
  v19 = [MEMORY[0x277CCAD78] UUID];
  v20 = [v19 UUIDString];
  v44 = v17;
  v21 = [v18 initWithPersonHandle:v17 nameComponents:0 displayName:@"Alice" image:0 contactIdentifier:v20 customIdentifier:0];

  v22 = objc_alloc(MEMORY[0x277CD3E98]);
  v23 = [@"bob" stringByAppendingString:@"@example.com"];
  v24 = [v22 initWithValue:v23 type:1 label:v16];

  v25 = objc_alloc(MEMORY[0x277CD3E90]);
  v26 = [MEMORY[0x277CCAD78] UUID];
  v27 = [v26 UUIDString];
  v28 = [v25 initWithPersonHandle:v24 nameComponents:0 displayName:@"Bob" image:0 contactIdentifier:v27 customIdentifier:0];

  if ([v12 isEqualToString:@"SendMessage"])
  {
    v29 = objc_alloc(MEMORY[0x277CD4078]);
    v48[0] = v21;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    v31 = [objc_alloc(MEMORY[0x277CD4188]) initWithSpokenPhrase:@"Hello"];
    v32 = [v29 initWithRecipients:v30 outgoingMessageType:0 content:@"Hello" speakableGroupName:v31 conversationIdentifier:@"Conversation" serviceName:@"Service" sender:v28 attachments:0];
  }

  else
  {
    if (![v12 isEqualToString:@"AudioCall"])
    {
      v34 = v21;
      v35 = 0;
      goto LABEL_7;
    }

    v33 = objc_alloc(MEMORY[0x277CD41A8]);
    v47 = v21;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    v32 = [v33 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:v30 callCapability:1];
  }

  v34 = v21;

  v35 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v32 response:0];
LABEL_7:
  v36 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v40 endDate:v41];

  [v35 setDateInterval:v36];
  v37 = dispatch_semaphore_create(0);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __99___ATXInspectionServer_appIntentHistoryDonateINIntent_intentType_startDate_endDate_timeZone_reply___block_invoke;
  v45[3] = &unk_27859EE08;
  v46 = v37;
  v38 = v37;
  [v35 _donateInteractionWithBundleId:v42 completion:v45];

  [MEMORY[0x277D425A0] waitForSemaphore:v38 timeoutSeconds:5.0];
  v43[2](v43, 0);

  v39 = *MEMORY[0x277D85DE8];
}

- (void)appHistoryStartDeltaRecording:(id)a3
{
  v5 = a3;
  v3 = +[_ATXAppPredictor sharedInstance];
  v4 = [v3 appLaunchMonitor];
  [v4 startDeltaRecording];

  v5[2](v5, 0);
}

- (void)appHistoryStopDeltaRecording:(id)a3
{
  v3 = a3;
  v4 = +[_ATXAppPredictor sharedInstance];
  v5 = [v4 appLaunchMonitor];
  v6 = [v5 stopDeltaRecording];

  v3[2](v3, v6, 0);
}

- (void)appInstallHistoryClear:(id)a3
{
  v4 = a3;
  v3 = +[_ATXAppInfoManager sharedInstance];
  [v3 clearAppInstallInfo];

  v4[2](v4, 0);
}

- (void)appInstallHistorySet:(id)a3 date:(id)a4 reply:(id)a5
{
  v10 = a5;
  v7 = a4;
  v8 = a3;
  v9 = +[_ATXAppInfoManager sharedInstance];
  [v9 addInstallForBundleId:v8 date:v7];

  v10[2](v10, 0);
}

- (void)appInstallHistoryStartDeltaRecording:(id)a3
{
  v4 = a3;
  v3 = +[_ATXAppInfoManager sharedInstance];
  [v3 startInstallDeltaRecording];

  v4[2](v4, 0);
}

- (void)appInstallHistoryStopDeltaRecording:(id)a3
{
  v3 = a3;
  v4 = +[_ATXAppInfoManager sharedInstance];
  v5 = [v4 stopInstallDeltaRecording];

  v3[2](v3, v5, 0);
}

- (void)feedbackClear:(id)a3
{
  v5 = a3;
  v3 = +[_ATXFeedback sharedInstance];
  [v3 resetData];

  v4 = +[ATXActionFeedback sharedInstance];
  [v4 resetData];

  v5[2](v5, 0);
}

- (void)createAppPredictionLogs:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v3 = +[ATXPredictionJSONScoreLogger sharedInstance];
  v4 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [&unk_283A589A0 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(&unk_283A589A0);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        dispatch_group_enter(v4);
        LOBYTE(v9) = [v9 unsignedIntegerValue];
        v11 = +[_ATXAppPredictor sharedInstance];
        v12 = [v11 predictWithLimit:8 consumerSubType:v9 intent:0 candidateBundleIdentifiers:0 candidateActiontypes:0 scoreLogger:v3];

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __48___ATXInspectionServer_createAppPredictionLogs___block_invoke;
        v21[3] = &unk_278596BB8;
        v22 = v4;
        [v3 flushWithCompletion:v21];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [&unk_283A589A0 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v13 = MEMORY[0x277D425A0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48___ATXInspectionServer_createAppPredictionLogs___block_invoke_134;
  v19[3] = &unk_2785969B8;
  v20 = v16;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48___ATXInspectionServer_createAppPredictionLogs___block_invoke_135;
  v17[3] = &unk_2785969B8;
  v18 = v20;
  v14 = v20;
  [v13 waitForGroup:v4 timeoutSeconds:v19 onGroupComplete:v17 onTimeout:3.0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_getActionLogs:(id)a3 obfuscation:(BOOL)a4
{
  v4 = a4;
  v69 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[_ATXDataStore sharedInstance];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v41 = v5;
  if (v4)
  {
    v46 = [v6 bundleIdMapping];
  }

  else
  {
    v46 = 0;
  }

  v48 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [v6 actionLogKeys];
  v9 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  v47 = v6;
  if (v9)
  {
    v10 = v9;
    v44 = *v62;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v62 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v61 + 1) + 8 * i);
        v13 = [v12 first];
        v14 = [v12 second];
        if (v4)
        {
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v16 = [v46 objectForKeyedSubscript:v13];
          v17 = [v15 initWithFormat:@"bundle-id-%@", v16];
        }

        else
        {
          v17 = v13;
        }

        v18 = [v7 objectForKeyedSubscript:v17];

        if (!v18)
        {
          v19 = objc_opt_new();
          [v7 setObject:v19 forKeyedSubscript:v17];
        }

        v20 = [v7 objectForKeyedSubscript:v17];
        v21 = [v20 objectForKeyedSubscript:v14];

        if (!v21)
        {
          v21 = objc_opt_new();
          v22 = [v7 objectForKeyedSubscript:v17];
          [v22 setObject:v21 forKeyedSubscript:v14];
        }

        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __51___ATXInspectionServer__getActionLogs_obfuscation___block_invoke;
        v57[3] = &unk_27859F9E0;
        v60 = v4;
        v58 = v48;
        v59 = v21;
        v23 = v21;
        v6 = v47;
        [v47 enumerateActionOfType:v14 bundleId:v13 block:v57];
      }

      v10 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v10);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obja = [v6 actionFeedbackLogKeys];
  v24 = [obja countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v24)
  {
    v25 = v24;
    v45 = *v54;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v54 != v45)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v53 + 1) + 8 * j);
        v28 = [v27 first];
        v29 = [v27 second];
        if (v4)
        {
          v30 = objc_alloc(MEMORY[0x277CCACA8]);
          v31 = [v46 objectForKeyedSubscript:v28];
          v32 = [v30 initWithFormat:@"bundle-id-%@", v31];
        }

        else
        {
          v32 = v28;
        }

        v33 = [v8 objectForKeyedSubscript:v32];

        if (!v33)
        {
          v34 = objc_opt_new();
          [v8 setObject:v34 forKeyedSubscript:v32];
        }

        v35 = [v8 objectForKeyedSubscript:v32];
        v36 = [v35 objectForKeyedSubscript:v29];

        if (!v36)
        {
          v36 = objc_opt_new();
          v37 = [v8 objectForKeyedSubscript:v32];
          [v37 setObject:v36 forKeyedSubscript:v29];
        }

        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __51___ATXInspectionServer__getActionLogs_obfuscation___block_invoke_2;
        v49[3] = &unk_27859FA08;
        v52 = v4;
        v50 = v48;
        v51 = v36;
        v38 = v36;
        v6 = v47;
        [v47 enumerateFeedbackForActionOfType:v29 bundleId:v28 block:v49];
      }

      v25 = [obja countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v25);
  }

  v65[0] = @"actions";
  v65[1] = @"feedback";
  v66[0] = v7;
  v66[1] = v8;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  (v41)[2](v41, v39, 0);

  v40 = *MEMORY[0x277D85DE8];
}

- (void)histogramsInMemory:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43___ATXInspectionServer_histogramsInMemory___block_invoke;
  v15[3] = &unk_27859FA30;
  v6 = v4;
  v16 = v6;
  [v5 enumerateInMemoryHistogramsWithBlock:v15];

  v7 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __43___ATXInspectionServer_histogramsInMemory___block_invoke_2;
  v13 = &unk_27859FA58;
  v14 = v6;
  v8 = v6;
  [v7 enumerateInMemoryCategoricalHistogramsWithBlock:&v10];

  v9 = [v8 copy];
  v3[2](v3, v9, 0);
}

- (void)histogramsInMemoryBySize:(id)a3
{
  v3 = a3;
  v4 = +[_ATXDataStore sharedInstance];
  v5 = objc_opt_new();
  v6 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49___ATXInspectionServer_histogramsInMemoryBySize___block_invoke;
  v20[3] = &unk_27859FA80;
  v7 = v4;
  v21 = v7;
  v8 = v5;
  v22 = v8;
  [v6 enumerateInMemoryHistogramsWithBlock:v20];

  v9 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __49___ATXInspectionServer_histogramsInMemoryBySize___block_invoke_2;
  v17 = &unk_27859FAA8;
  v18 = v7;
  v19 = v8;
  v10 = v8;
  v11 = v7;
  [v9 enumerateInMemoryCategoricalHistogramsWithBlock:&v14];

  v12 = [v10 sortedArrayUsingComparator:{&__block_literal_global_232, v14, v15, v16, v17}];
  v13 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_235];
  v3[2](v3, v13, 0);
}

- (void)allHistogramsBySize:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v3 = +[_ATXDataStore sharedInstance];
  v4 = objc_opt_new();
  for (i = 0; i != 114; ++i)
  {
    v6 = [v3 histogramDataForHistogramType:i];
    if (v6)
    {
      v7 = v6;
      v8 = [_ATXDataStore stringForHistogramType:i];
      v21 = v8;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
      v22[0] = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = v22;
      v12 = &v21;
    }

    else
    {
      v13 = [v3 categoricalHistogramDataForHistogramType:i];
      if (!v13)
      {
        continue;
      }

      v7 = v13;
      v8 = [_ATXDataStore stringForHistogramType:i];
      v19 = v8;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
      v20 = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v20;
      v12 = &v19;
    }

    v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    [v4 addObject:v14];
  }

  v15 = [v4 sortedArrayUsingComparator:&__block_literal_global_240];
  v16 = [v15 _pas_mappedArrayWithTransform:&__block_literal_global_242];
  v18[2](v18, v16, 0);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)retrainActionHistograms:(id)a3
{
  v3 = a3;
  +[_ATXActionUtils prefillActionHistograms];
  v3[2](v3, 0);
}

- (void)retrainActionSlotDatabase:(id)a3
{
  v3 = a3;
  +[_ATXActionUtils prefillActionSlotDatabase];
  v3[2](v3, 0);
}

- (void)resetHistogramsAndRemoveUICaches:(id)a3
{
  v3 = a3;
  +[_ATXActionUtils resetHistogramsAndRemoveUICaches];
  v3[2](v3, 0);
}

- (void)resetActionPredictions:(id)a3
{
  v3 = a3;
  +[_ATXActionUtils resetActionPredictions];
  v3[2](v3, 0);
}

- (void)getAppFeedbackData:(id)a3
{
  v51[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[_ATXFeedback sharedInstance];
  v50[0] = @"baseAlpha";
  v5 = MEMORY[0x277CCABB0];
  +[_ATXFeedbackConstants baseAlpha];
  v6 = [v5 numberWithDouble:?];
  v51[0] = v6;
  v50[1] = @"baseBeta";
  v7 = MEMORY[0x277CCABB0];
  +[_ATXFeedbackConstants baseBeta];
  v8 = [v7 numberWithDouble:?];
  v51[1] = v8;
  v50[2] = @"currentAlpha";
  v9 = MEMORY[0x277CCABB0];
  [v4 currentAlpha];
  v10 = [v9 numberWithDouble:?];
  v51[2] = v10;
  v50[3] = @"currentBeta";
  v11 = MEMORY[0x277CCABB0];
  v42 = v4;
  [v4 currentBeta];
  v12 = [v11 numberWithDouble:?];
  v51[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:4];

  v14 = +[_ATXAppIconState sharedInstance];
  v15 = [v14 allInstalledAppsKnownToSpringBoard];
  v44 = [v15 count];
  v16 = 8 * v44;
  v17 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  v41 = v13;
  v19 = 0x277CCA000uLL;
  v20 = malloc_type_malloc(v16, 0x100004000313F17uLL);
  if (!v20 || (v21 = v20, v39 = v14, v40 = v3, (v22 = malloc_type_malloc(v16, 0x100004000313F17uLL)) == 0))
  {
LABEL_8:
    v38 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v38);
  }

  v23 = v22;
  [v42 putFeedbackScoresForApps:v15 intoScores:v18 confirms:v21 rejects:v22];
  v43 = objc_opt_new();
  v24 = 0x277CBE000uLL;
  v25 = v15;
  if (v44)
  {
    for (i = 0; i != v44; ++i)
    {
      v48[0] = @"score";
      v45 = [*(v19 + 2992) numberWithDouble:v18[i]];
      v49[0] = v45;
      v48[1] = @"confirms";
      v27 = [*(v19 + 2992) numberWithDouble:v21[i]];
      v49[1] = v27;
      v48[2] = @"rejects";
      v28 = [*(v19 + 2992) numberWithDouble:v23[i]];
      v49[2] = v28;
      v29 = [*(v24 + 2752) dictionaryWithObjects:v49 forKeys:v48 count:3];
      [v25 objectAtIndexedSubscript:i];
      v30 = v24;
      v31 = v23;
      v32 = v21;
      v33 = v18;
      v35 = v34 = v25;
      [v43 setObject:v29 forKeyedSubscript:v35];

      v25 = v34;
      v18 = v33;
      v21 = v32;
      v23 = v31;
      v24 = v30;

      v19 = 0x277CCA000;
    }
  }

  free(v18);
  free(v21);
  free(v23);
  v46[0] = @"params";
  v46[1] = @"apps";
  v47[0] = v41;
  v47[1] = v43;
  v36 = [*(v24 + 2752) dictionaryWithObjects:v47 forKeys:v46 count:2];
  (v40)[2](v40, v36, 0);

  v37 = *MEMORY[0x277D85DE8];
}

- (void)trainMagicalMomentsAppPredictor:(id)a3
{
  v4 = a3;
  v3 = +[ATXMagicalMomentsAppPredictor sharedInstance];
  [v3 trainWithTask:0];

  v4[2](v4, 1, 0);
}

- (void)forceMagicalMomentsAppPredictionForBundleId:(id)a3 expert:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = __atxlog_handle_default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer forceMagicalMomentsAppPredictionForBundleId:expert:reply:];
  }

  v11 = NSClassFromString(v8);
  if (([(objc_class *)v11 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    NSClassFromString(v8);
    v12 = objc_opt_new();
    v13 = [[ATXMagicalMomentsPrediction alloc] initWithConfidence:v7 predictionIdentifier:1.0];
    v14 = objc_opt_class();
    v15 = [objc_opt_class() sampleEventForExpert];
    v20 = v13;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [v14 broadcastMMPredictionsForEvent:v15 predictions:v16];

    v9[2](v9, 1, 0);
  }

  else
  {
    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_ATXInspectionServer forceMagicalMomentsAppPredictionForBundleId:expert:reply:];
    }

    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"ATXMM: Tried to force a MagicalMoments App Prediction with an unrecognized expert. Terminating operation.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v18 initWithDomain:@"ATXMM" code:-1 userInfo:v12];
    (v9)[2](v9, 0, v13);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dumpPredictionTableForMMExpert:(id)a3 reply:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer dumpPredictionTableForMMExpert:v5 reply:v7];
  }

  v8 = NSClassFromString(v5);
  if (([(objc_class *)v8 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    NSClassFromString(v5);
    v9 = objc_opt_new();
    v10 = [objc_opt_class() predictionTable];
    v11 = [v10 describeTable];
    v6[2](v6, v11, 0);
  }

  else
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_ATXInspectionServer forceMagicalMomentsAppPredictionForBundleId:expert:reply:];
    }

    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"ATXMM: Tried to force a MagicalMoments App Prediction with an unrecognized expert. Terminating operation.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v13 initWithDomain:@"ATXMM" code:-1 userInfo:v9];
    (v6)[2](v6, 0, v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)evaluateInfoSuggestionsWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[ATXInfoSuggestionServer sharedInstance];
  [v4 refreshInfoSuggestionsWithCompletionHandler:v3];
}

- (void)getInfoSuggestionsInString:(id)a3
{
  v3 = a3;
  v4 = +[ATXInfoSuggestionServer sharedInstance];
  v5 = [v4 infoEngine];
  v7 = [v5 allRelevantInfoSuggestions];

  v6 = [v7 componentsJoinedByString:@"\n"];
  v3[2](v3, v6, 0);
}

- (void)fetchSuggestionsForSourceId:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ATXInfoSuggestionServer sharedInstance];
  v8 = [v7 infoEngine];
  v10 = [v8 allInfoSuggestionsForSourceId:v6];

  v9 = [v10 componentsJoinedByString:@"\n"];
  v5[2](v5, v9, 0);
}

- (void)widgetBundleIdentifiersForAllInfoSuggestionsInString:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[ATXInfoSuggestionServer sharedInstance];
  v5 = [v4 infoEngine];
  v6 = [v5 allInfoSuggestions];

  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) widgetBundleIdentifier];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 allObjects];
  v15 = [v14 componentsJoinedByString:@"\n"];
  v3[2](v3, v15, 0);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)getInfoPredictionsInString:(id)a3
{
  v3 = a3;
  v4 = +[ATXInfoSuggestionServer sharedInstance];
  v5 = [v4 infoEngine];
  v7 = [v5 currentPredictions];

  v6 = [v7 componentsJoinedByString:@"\n"];
  v3[2](v3, v6, 0);
}

- (void)rankAndReturnInfoPredictionsInString:(id)a3
{
  v3 = a3;
  v4 = +[ATXInfoSuggestionServer sharedInstance];
  v5 = [v4 infoEngine];
  v7 = [v5 forceUpdateAndReturnPredictions];

  v6 = [v7 componentsJoinedByString:@"\n"];
  v3[2](v3, v6, 0);
}

- (void)getModeTimelineDataFromStartDate:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ATXNotificationsLoggingServer sharedInstance];
  [v7 getModeTimelineDataFromStartDate:v6 reply:v5];
}

- (void)lockScreenBundleIdsWithReply:(id)a3
{
  v4 = a3;
  v6 = +[ATXNotificationsLoggingServer sharedInstance];
  v5 = [v6 getLockscreenBundleIds];
  (*(a3 + 2))(v4, v5, 0);
}

- (void)appLaunchInformationWithReply:(id)a3
{
  v3 = a3;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer appLaunchInformationWithReply:];
  }

  v5 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v5 appLaunchInformationWithReply:v3];
}

- (void)categoryLaunchInformationWithReply:(id)a3
{
  v3 = a3;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer categoryLaunchInformationWithReply:];
  }

  v5 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v5 categoryLaunchInformationWithReply:v3];
}

- (void)appLaunchDatesWithReply:(id)a3
{
  v3 = a3;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_ATXInspectionServer categoryLaunchInformationWithReply:];
  }

  v5 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v5 appLaunchDatesWithReply:v3];
}

- (void)updateAppDirectoryCache:(id)a3
{
  v3 = a3;
  v4 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48___ATXInspectionServer_updateAppDirectoryCache___block_invoke;
  v6[3] = &unk_27859A480;
  v7 = v3;
  v5 = v3;
  [v4 updateCacheWithActivity:0 completionHandler:v6];
}

- (void)refreshBlendingLayer:(id)a3
{
  v3 = a3;
  v8 = objc_opt_new();
  v4 = [v8 cachedSuggestionsForAllClientModels];
  v5 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v6 = [v5 blendingLayerServer];
  v7 = [v6 blendingLayer];

  [v7 updateSuggestionsForAllConsumerSubTypesWithClientModelSuggestions:v4];
  v3[2](v3, 0);
}

- (void)promoteSuggestionsFromClientModel:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v8 = [v7 blendingLayerServer];
  v11 = [v8 blendingLayer];

  [v11 promoteSuggestionsFromClientModelWithIdentifier:v6];
  v9 = objc_opt_new();
  v10 = [v9 cachedSuggestionsForAllClientModels];
  [v11 updateSuggestionsForAllConsumerSubTypesWithClientModelSuggestions:v10];
  v5[2](v5, 0);
}

- (void)donateSuggestion:(id)a3 forClientModel:(int64_t)a4 withReply:(id)a5
{
  v7 = MEMORY[0x277D42070];
  v8 = a5;
  v9 = a3;
  v20 = [v7 clientModelIdFromClientModelType:a4];
  v10 = objc_alloc(MEMORY[0x277D42070]);
  v11 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v12 = [v11 blendingLayerServer];
  v13 = [v10 initWithClientModelId:v20 blendingLayerServer:v12];

  v14 = objc_opt_new();
  v15 = [v14 cachedSuggestionsForAllClientModels];

  v16 = MEMORY[0x277CBEB18];
  v17 = [v15 objectForKeyedSubscript:v20];
  v18 = [v17 suggestions];
  v19 = [v16 arrayWithArray:v18];

  [v19 addObject:v9];
  [v13 updateSuggestions:v19];
  v8[2](v8, 0);
}

- (void)clearBlendingSuggestionsForClientModel:(int64_t)a3 withReply:(id)a4
{
  v5 = MEMORY[0x277D42070];
  v6 = a4;
  v11 = [v5 clientModelIdFromClientModelType:a3];
  v7 = objc_alloc(MEMORY[0x277D42070]);
  v8 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v9 = [v8 blendingLayerServer];
  v10 = [v7 initWithClientModelId:v11 blendingLayerServer:v9];

  [v10 updateSuggestions:MEMORY[0x277CBEBF8]];
  v6[2](v6, 0);
}

- (void)blendedSuggestionsForConsumerSubType:(unsigned __int8)a3 reply:(id)a4
{
  v4 = a4;
  v5 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v6 = [v5 blendingLayerServer];
  v10 = [v6 blendingLayer];

  v7 = objc_opt_new();
  v8 = [v7 cachedSuggestionsForAllClientModels];
  v9 = [v10 rerankedValidSuggestionsFromClientModelSuggestions:v8];
  v4[2](v4, v9, 0);
}

- (void)buildAnchorModelTrainingDataset:(id)a3
{
  v4 = a3;
  v3 = objc_opt_new();
  [v3 addNewTrainingSamplesToDatabase];

  v4[2](v4, 0);
}

- (void)trainAnchorModel:(id)a3
{
  v4 = a3;
  v3 = objc_opt_new();
  [v3 train];

  v4[2](v4, 0);
}

- (void)scheduledPredictionsForAnchorModelWithReply:(id)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  v4 = [v5 predictions];
  v3[2](v3, v4, 0);
}

- (void)validPredictionsRightNowForAnchorModelWithReply:(id)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  v4 = [v5 predictionsValidNow];
  v3[2](v3, v4, 0);
}

- (void)schedulePredictionsForAnchorModel:(id)a3 anchorType:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a3;
  [ATXAnchor anchorClassFromAnchorTypeString:a4];
  v10 = objc_opt_new();
  v9 = objc_opt_new();
  [v9 schedulePredictions:v8 anchor:v10];

  v7[2](v7, 0);
}

- (void)processLockscreenFeedbackWithReply:(id)a3
{
  v4 = a3;
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  [v3 processLockscreenFeedback];

  v4[2](v4, 0);
}

- (void)processHomeScreenFeedbackWithReply:(id)a3
{
  v4 = a3;
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  [v3 processHomeScreenFeedback];

  v4[2](v4, 0);
}

- (void)processSpotlightAppFeedbackWithReply:(id)a3
{
  v4 = a3;
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  [v3 processSpotlightAppFeedback];

  v4[2](v4, 0);
}

- (void)processSpotlightActionFeedbackWithReply:(id)a3
{
  v4 = a3;
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  [v3 processSpotlightActionFeedback];

  v4[2](v4, 0);
}

- (void)processAppDirectoryFeedbackWithReply:(id)a3
{
  v4 = a3;
  v3 = +[ATXUpdatePredictionsManager sharedInstance];
  [v3 processAppDirectoryFeedback];

  v4[2](v4, 0);
}

- (void)performHomeScreenCoreAnalyticsDryRunWithCustomStartDate:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:0 customStartDate:v6 dryRunCompletionHandler:v5];
}

- (void)nPlusOneStudyDryRunResultFilterByExtensionBundleId:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 dryRunResultFilterByExtensionBundleId:v6 completionHandler:v5];
}

- (void)trainModeSetupPredictionModelWithReply:(id)a3
{
  v4 = a3;
  v3 = objc_opt_new();
  [v3 train];

  v4[2](v4, 0);
}

- (void)inspectInferredActivitySessionStream:(id)a3 fromTimestamp:(double)a4 reply:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = __atxlog_handle_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "[%@] Inspecting stream %@ from timestamp %f", &v13, 0x20u);
  }

  [ATXUnifiedInferredActivityBiomeInspector retrieveInferredActivitySessionsFromPublisherName:v7 startTime:v8 reply:a4];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)inspectInferredActivityTransitionStream:(id)a3 fromTimestamp:(double)a4 reply:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = __atxlog_handle_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "[%@] Inspecting stream %@ from timestamp %f", &v13, 0x20u);
  }

  [ATXUnifiedInferredActivityBiomeInspector retrieveInferredActivityTransitionsFromPublisherName:v7 startTime:v8 reply:a4];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)forceNotificationAndSuggestionDbUpdate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "[%@] Forcing notification and suggestion DB update", &v9, 0xCu);
  }

  v7 = objc_opt_new();
  [v7 updateDatabase];
  v3[2](v3, 0);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generateSerializedNotificationDigestFromFileData:(id)a3 digestTimeString:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v13 = 0;
  v11 = [v10 fetchSerializedNotificationDigestFromFileData:v9 digestTimeString:v8 outError:&v13];

  v12 = v13;
  v7[2](v7, v11, v12);
}

- (void)generateSerializedMissedNotificationBundleFromFileData:(id)a3 modeString:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v13 = 0;
  v11 = [v10 fetchSerializedMissedNotificationRankingFromFileData:v9 modeString:v8 outError:&v13];

  v12 = v13;
  v7[2](v7, v11, v12);
}

- (void)clearNotificationsWithReply:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v6 = 0;
  [v4 clearAllNotificationData:&v6];
  v5 = v6;
  v3[2](v3, v5);
}

- (void)showDigestFeedbackHistogramForBundleId:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 showHistogramForBundleId:v6 withReply:v5];
}

- (void)addToDigestFeedbackHistogramForBundleId:(id)a3 location:(id)a4 feedback:(id)a5 withReply:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 addToHistogramForBundleId:v12 location:v11 feedback:v10 withReply:v9];
}

- (void)setDigestFeedbackHistogramValueForBundleId:(id)a3 location:(id)a4 feedback:(id)a5 value:(id)a6 withReply:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  [v16 setHistogramValueForBundleId:v15 location:v14 feedback:v13 value:v12 withReply:v11];
}

- (void)getCurrentLocationWithReply:(id)a3
{
  v3 = MEMORY[0x277D41BF8];
  v4 = a3;
  v6 = [v3 sharedInstance];
  v5 = [v6 getCurrentLocation];
  v4[2](v4, v5, 0);
}

- (void)generateDataForStressTestWithReply:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59___ATXInspectionServer_generateDataForStressTestWithReply___block_invoke;
  v6[3] = &unk_278598B30;
  v7 = v3;
  v5 = v3;
  [v4 setupForStressCyclerWithCompletion:v6];
}

- (void)clearAllDataForStressTestWithReply:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59___ATXInspectionServer_clearAllDataForStressTestWithReply___block_invoke;
  v6[3] = &unk_278598B30;
  v7 = v3;
  v5 = v3;
  [v4 clearAllDataForStressCyclerWithCompletion:v6];
}

- (void)fetchPosterDescriptorsWithReply:(id)a3
{
  v4 = a3;
  v7 = +[ATXPosterDescriptorCache sharedInstance];
  v5 = [v7 allDescriptors];
  v6 = [v5 allObjects];
  (*(a3 + 2))(v4, v6, 0);
}

- (void)logNotificationMetricsFromStartTimestamp:(id)a3 toEndTimestamp:(id)a4 withCompletion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [ATXNotificationTelemetryLogger alloc];
  v11 = objc_opt_new();
  v12 = [(ATXNotificationTelemetryLogger *)v10 initWithContactStore:v11];

  [(ATXNotificationTelemetryLogger *)v12 logNotificationMetricsFromStartTimestamp:v9 toEndTimestamp:v8 withTask:0];
  v7[2](v7, 0);
}

- (void)triggerPredictionsUpdateWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CEBC70] sharedInstance];
  v5 = [v4 isTestModeEnabled];

  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("ATXUpdatePredictionsTesting", v7);

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63___ATXInspectionServer_triggerPredictionsUpdateWithCompletion___block_invoke;
    block[3] = &unk_2785969B8;
    v11 = v3;
    dispatch_sync(v8, block);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:5 userInfo:0];
    (*(v3 + 2))(v3, v9);
  }
}

- (void)triggerBackgroundJobWithIdentifier:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x277CEB3D0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [[v7 alloc] initForTestingWithIdentifier:v10 configuration:v9];

  LODWORD(v9) = [v10 isEqualToString:@"com.apple.duetexpertd.atxtrain"];
  if (v9)
  {
    v11 = +[_ATXAppPredictor sharedInstance];
    [v11 trainWithTask:v13];

    v12 = [v13 resultStatusForJob];
    v8[2](v8, v12, 0);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:3 userInfo:0];
    (v8)[2](v8, 0, v12);
  }
}

- (void)fetchPIDFromServer:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInt:getpid()];
  (*(a3 + 2))(v5, v6, 0);
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "Rejecting connection %@ without entitlement %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)appHistoryUpdateActionPredictionPipelineWithAction:(uint64_t)a1 date:(NSObject *)a2 timeZone:reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[_ATXInspectionServer appHistoryUpdateActionPredictionPipelineWithAction:date:timeZone:reply:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)forceMagicalMomentsAppPredictionForBundleId:expert:reply:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "ATXMM: Forcing MM App Prediction for bundleId: %@, expert: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)dumpPredictionTableForMMExpert:(uint64_t)a1 reply:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXMM: Dumping prediction table for expert: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end