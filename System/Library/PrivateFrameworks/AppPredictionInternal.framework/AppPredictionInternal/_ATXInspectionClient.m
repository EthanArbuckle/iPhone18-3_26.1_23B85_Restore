@interface _ATXInspectionClient
- (_ATXInspectionClient)init;
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
- (void)benchmarkAppPrediction:(unint64_t)a3 reply:(id)a4;
- (void)buildAnchorModelTrainingDataset:(id)a3;
- (void)categoryLaunchInformationWithReply:(id)a3;
- (void)clearAllDataForStressTestWithReply:(id)a3;
- (void)clearBlendingSuggestionsForClientModel:(int64_t)a3 withReply:(id)a4;
- (void)clearNotificationsWithReply:(id)a3;
- (void)createAppPredictionLogs:(id)a3;
- (void)dealloc;
- (void)donateSuggestion:(id)a3 forClientModel:(int64_t)a4 withReply:(id)a5;
- (void)dumpPredictionTableForMMExpert:(id)a3 reply:(id)a4;
- (void)evaluateInfoSuggestionsWithCompletionHandler:(id)a3;
- (void)feedbackClear:(id)a3;
- (void)feedbackLaunched:(id)a3 rejected:(id)a4 reply:(id)a5;
- (void)fetchPIDFromServer:(id)a3;
- (void)fetchPosterDescriptorsWithReply:(id)a3;
- (void)fetchSuggestionsForSourceId:(id)a3 reply:(id)a4;
- (void)forceMagicalMomentsAppPredictionForBundleId:(id)a3 expert:(id)a4 reply:(id)a5;
- (void)forceNotificationAndSuggestionDbUpdate:(id)a3;
- (void)generateDataForStressTestWithReply:(id)a3;
- (void)generateSerializedMissedNotificationBundleFromFileData:(id)a3 modeString:(id)a4 reply:(id)a5;
- (void)generateSerializedNotificationDigestFromFileData:(id)a3 digestTimeString:(id)a4 reply:(id)a5;
- (void)getActionLogs:(id)a3;
- (void)getActionPrivacyFriendlyLogs:(id)a3;
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
- (void)predictAppsAndReturnInputsAndSubscores:(id)a3;
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

@implementation _ATXInspectionClient

- (_ATXInspectionClient)init
{
  v7.receiver = self;
  v7.super_class = _ATXInspectionClient;
  v2 = [(_ATXInspectionClient *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.duet.appPrediction.inspection" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = _ATXInspectionInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_35];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = _ATXInspectionClient;
  [(_ATXInspectionClient *)&v3 dealloc];
}

- (void)appAndActionHistoryClear:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49___ATXInspectionClient_appAndActionHistoryClear___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appAndActionHistoryClear:v6];
}

- (void)appHistoryClearAppIntent:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49___ATXInspectionClient_appHistoryClearAppIntent___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appHistoryClearAppIntent:v6];
}

- (void)appHistoryAddLaunch:(id)a3 launchReason:(id)a4 date:(id)a5 timeZone:(id)a6 reply:(id)a7
{
  v12 = a7;
  xpcConnection = self->_xpcConnection;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77___ATXInspectionClient_appHistoryAddLaunch_launchReason_date_timeZone_reply___block_invoke;
  v20[3] = &unk_278598B30;
  v21 = v12;
  v14 = v12;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v20];
  [v19 appHistoryAddLaunch:v18 launchReason:v17 date:v16 timeZone:v15 reply:v14];
}

- (void)appHistoryUpdateActionPredictionPipelineWithAction:(id)a3 date:(id)a4 timeZone:(id)a5 reply:(id)a6
{
  v10 = a6;
  xpcConnection = self->_xpcConnection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95___ATXInspectionClient_appHistoryUpdateActionPredictionPipelineWithAction_date_timeZone_reply___block_invoke;
  v17[3] = &unk_278598B30;
  v18 = v10;
  v12 = v10;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v17];
  [v16 appHistoryUpdateActionPredictionPipelineWithAction:v15 date:v14 timeZone:v13 reply:v12];
}

- (void)appHistoryActionWithUUID:(id)a3 reply:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55___ATXInspectionClient_appHistoryActionWithUUID_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 appHistoryActionWithUUID:v9 reply:v8];
}

- (void)appHistoryAddNSUALaunch:(id)a3 requiredString:(id)a4 itemIdentifier:(id)a5 date:(id)a6 timeZone:(id)a7 reply:(id)a8
{
  v14 = a8;
  xpcConnection = self->_xpcConnection;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __98___ATXInspectionClient_appHistoryAddNSUALaunch_requiredString_itemIdentifier_date_timeZone_reply___block_invoke;
  v23[3] = &unk_278598B30;
  v24 = v14;
  v16 = v14;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v23];
  [v22 appHistoryAddNSUALaunch:v21 requiredString:v20 itemIdentifier:v19 date:v18 timeZone:v17 reply:v16];
}

- (void)appHistoryAddAppIntentLaunch:(id)a3 intent:(id)a4 source:(id)a5 date:(id)a6 timeZone:(id)a7 reply:(id)a8
{
  v14 = a8;
  xpcConnection = self->_xpcConnection;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __87___ATXInspectionClient_appHistoryAddAppIntentLaunch_intent_source_date_timeZone_reply___block_invoke;
  v23[3] = &unk_278598B30;
  v24 = v14;
  v16 = v14;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v23];
  [v22 appHistoryAddAppIntentLaunch:v21 intent:v20 source:v19 date:v18 timeZone:v17 reply:v16];
}

- (void)appIntentHistoryMockIntentLaunch:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 timeZone:(id)a7 reply:(id)a8
{
  v14 = a8;
  xpcConnection = self->_xpcConnection;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97___ATXInspectionClient_appIntentHistoryMockIntentLaunch_source_startDate_endDate_timeZone_reply___block_invoke;
  v23[3] = &unk_278598B30;
  v24 = v14;
  v16 = v14;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v23];
  [v22 appIntentHistoryMockIntentLaunch:v21 source:v20 startDate:v19 endDate:v18 timeZone:v17 reply:v16];
}

- (void)appIntentHistoryDonateINIntent:(id)a3 intentType:(id)a4 startDate:(id)a5 endDate:(id)a6 timeZone:(id)a7 reply:(id)a8
{
  v14 = a8;
  xpcConnection = self->_xpcConnection;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99___ATXInspectionClient_appIntentHistoryDonateINIntent_intentType_startDate_endDate_timeZone_reply___block_invoke;
  v23[3] = &unk_278598B30;
  v24 = v14;
  v16 = v14;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v23];
  [v22 appIntentHistoryDonateINIntent:v21 intentType:v20 startDate:v19 endDate:v18 timeZone:v17 reply:v16];
}

- (void)appHistoryStartDeltaRecording:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54___ATXInspectionClient_appHistoryStartDeltaRecording___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appHistoryStartDeltaRecording:v6];
}

- (void)appHistoryStopDeltaRecording:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53___ATXInspectionClient_appHistoryStopDeltaRecording___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appHistoryStopDeltaRecording:v6];
}

- (void)appInstallHistoryClear:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___ATXInspectionClient_appInstallHistoryClear___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appInstallHistoryClear:v6];
}

- (void)appInstallHistorySet:(id)a3 date:(id)a4 reply:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56___ATXInspectionClient_appInstallHistorySet_date_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 appInstallHistorySet:v12 date:v11 reply:v10];
}

- (void)appInstallHistoryStartDeltaRecording:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61___ATXInspectionClient_appInstallHistoryStartDeltaRecording___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appInstallHistoryStartDeltaRecording:v6];
}

- (void)appInstallHistoryStopDeltaRecording:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60___ATXInspectionClient_appInstallHistoryStopDeltaRecording___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appInstallHistoryStopDeltaRecording:v6];
}

- (void)feedbackClear:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38___ATXInspectionClient_feedbackClear___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 feedbackClear:v6];
}

- (void)feedbackLaunched:(id)a3 rejected:(id)a4 reply:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56___ATXInspectionClient_feedbackLaunched_rejected_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 feedbackLaunchedWithConsumerSubType:9 forBundleId:v12 rejected:v11 reply:v10];
}

- (void)predictAppsAndReturnInputsAndSubscores:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___ATXInspectionClient_predictAppsAndReturnInputsAndSubscores___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 predictAppsAndReturnInputsAndSubscores:v6];
}

- (void)benchmarkAppPrediction:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53___ATXInspectionClient_benchmarkAppPrediction_reply___block_invoke;
  v10[3] = &unk_278598B30;
  v11 = v6;
  v8 = v6;
  v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v9 benchmarkAppPrediction:a3 reply:v8];
}

- (void)createAppPredictionLogs:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48___ATXInspectionClient_createAppPredictionLogs___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 createAppPredictionLogs:v6];
}

- (void)getActionLogs:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38___ATXInspectionClient_getActionLogs___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getActionLogs:v6];
}

- (void)getActionPrivacyFriendlyLogs:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53___ATXInspectionClient_getActionPrivacyFriendlyLogs___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getActionPrivacyFriendlyLogs:v6];
}

- (void)getAppFeedbackData:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43___ATXInspectionClient_getAppFeedbackData___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getAppFeedbackData:v6];
}

- (void)histogramsInMemory:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43___ATXInspectionClient_histogramsInMemory___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 histogramsInMemory:v6];
}

- (void)histogramsInMemoryBySize:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49___ATXInspectionClient_histogramsInMemoryBySize___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 histogramsInMemoryBySize:v6];
}

- (void)allHistogramsBySize:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44___ATXInspectionClient_allHistogramsBySize___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 allHistogramsBySize:v6];
}

- (void)retrainActionHistograms:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48___ATXInspectionClient_retrainActionHistograms___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 retrainActionHistograms:v6];
}

- (void)retrainActionSlotDatabase:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50___ATXInspectionClient_retrainActionSlotDatabase___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 retrainActionSlotDatabase:v6];
}

- (void)resetHistogramsAndRemoveUICaches:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57___ATXInspectionClient_resetHistogramsAndRemoveUICaches___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 resetHistogramsAndRemoveUICaches:v6];
}

- (void)resetActionPredictions:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___ATXInspectionClient_resetActionPredictions___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 resetActionPredictions:v6];
}

- (void)trainMagicalMomentsAppPredictor:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56___ATXInspectionClient_trainMagicalMomentsAppPredictor___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 trainMagicalMomentsAppPredictor:v6];
}

- (void)forceMagicalMomentsAppPredictionForBundleId:(id)a3 expert:(id)a4 reply:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81___ATXInspectionClient_forceMagicalMomentsAppPredictionForBundleId_expert_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 forceMagicalMomentsAppPredictionForBundleId:v12 expert:v11 reply:v10];
}

- (void)dumpPredictionTableForMMExpert:(id)a3 reply:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61___ATXInspectionClient_dumpPredictionTableForMMExpert_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 dumpPredictionTableForMMExpert:v9 reply:v8];
}

- (void)evaluateInfoSuggestionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69___ATXInspectionClient_evaluateInfoSuggestionsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 evaluateInfoSuggestionsWithCompletionHandler:v6];
}

- (void)getInfoSuggestionsInString:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51___ATXInspectionClient_getInfoSuggestionsInString___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getInfoSuggestionsInString:v6];
}

- (void)fetchSuggestionsForSourceId:(id)a3 reply:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58___ATXInspectionClient_fetchSuggestionsForSourceId_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 fetchSuggestionsForSourceId:v9 reply:v8];
}

- (void)widgetBundleIdentifiersForAllInfoSuggestionsInString:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77___ATXInspectionClient_widgetBundleIdentifiersForAllInfoSuggestionsInString___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 widgetBundleIdentifiersForAllInfoSuggestionsInString:v6];
}

- (void)getInfoPredictionsInString:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51___ATXInspectionClient_getInfoPredictionsInString___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getInfoPredictionsInString:v6];
}

- (void)rankAndReturnInfoPredictionsInString:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61___ATXInspectionClient_rankAndReturnInfoPredictionsInString___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 rankAndReturnInfoPredictionsInString:v6];
}

- (void)updateAppDirectoryCache:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48___ATXInspectionClient_updateAppDirectoryCache___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 updateAppDirectoryCache:v6];
}

- (void)getModeTimelineDataFromStartDate:(id)a3 reply:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63___ATXInspectionClient_getModeTimelineDataFromStartDate_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 getModeTimelineDataFromStartDate:v9 reply:v8];
}

- (void)lockScreenBundleIdsWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53___ATXInspectionClient_lockScreenBundleIdsWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 lockScreenBundleIdsWithReply:v6];
}

- (void)appLaunchInformationWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54___ATXInspectionClient_appLaunchInformationWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appLaunchInformationWithReply:v6];
}

- (void)categoryLaunchInformationWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___ATXInspectionClient_categoryLaunchInformationWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 categoryLaunchInformationWithReply:v6];
}

- (void)appLaunchDatesWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48___ATXInspectionClient_appLaunchDatesWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appLaunchDatesWithReply:v6];
}

- (void)refreshBlendingLayer:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45___ATXInspectionClient_refreshBlendingLayer___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 refreshBlendingLayer:v6];
}

- (void)promoteSuggestionsFromClientModel:(id)a3 reply:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64___ATXInspectionClient_promoteSuggestionsFromClientModel_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 promoteSuggestionsFromClientModel:v9 reply:v8];
}

- (void)donateSuggestion:(id)a3 forClientModel:(int64_t)a4 withReply:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66___ATXInspectionClient_donateSuggestion_forClientModel_withReply___block_invoke;
  v13[3] = &unk_278598B30;
  v14 = v8;
  v10 = v8;
  v11 = a3;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v13];
  [v12 donateSuggestion:v11 forClientModel:a4 withReply:v10];
}

- (void)clearBlendingSuggestionsForClientModel:(int64_t)a3 withReply:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73___ATXInspectionClient_clearBlendingSuggestionsForClientModel_withReply___block_invoke;
  v10[3] = &unk_278598B30;
  v11 = v6;
  v8 = v6;
  v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v9 clearBlendingSuggestionsForClientModel:a3 withReply:v8];
}

- (void)buildAnchorModelTrainingDataset:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56___ATXInspectionClient_buildAnchorModelTrainingDataset___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 buildAnchorModelTrainingDataset:v6];
}

- (void)trainAnchorModel:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41___ATXInspectionClient_trainAnchorModel___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 trainAnchorModel:v6];
}

- (void)scheduledPredictionsForAnchorModelWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68___ATXInspectionClient_scheduledPredictionsForAnchorModelWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 scheduledPredictionsForAnchorModelWithReply:v6];
}

- (void)validPredictionsRightNowForAnchorModelWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72___ATXInspectionClient_validPredictionsRightNowForAnchorModelWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 validPredictionsRightNowForAnchorModelWithReply:v6];
}

- (void)schedulePredictionsForAnchorModel:(id)a3 anchorType:(id)a4 reply:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75___ATXInspectionClient_schedulePredictionsForAnchorModel_anchorType_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 schedulePredictionsForAnchorModel:v12 anchorType:v11 reply:v10];
}

- (void)processLockscreenFeedbackWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___ATXInspectionClient_processLockscreenFeedbackWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 processLockscreenFeedbackWithReply:v6];
}

- (void)processHomeScreenFeedbackWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___ATXInspectionClient_processHomeScreenFeedbackWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 processHomeScreenFeedbackWithReply:v6];
}

- (void)processSpotlightAppFeedbackWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61___ATXInspectionClient_processSpotlightAppFeedbackWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 processSpotlightAppFeedbackWithReply:v6];
}

- (void)processSpotlightActionFeedbackWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64___ATXInspectionClient_processSpotlightActionFeedbackWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 processSpotlightActionFeedbackWithReply:v6];
}

- (void)processAppDirectoryFeedbackWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61___ATXInspectionClient_processAppDirectoryFeedbackWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 processAppDirectoryFeedbackWithReply:v6];
}

- (void)performHomeScreenCoreAnalyticsDryRunWithCustomStartDate:(id)a3 reply:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86___ATXInspectionClient_performHomeScreenCoreAnalyticsDryRunWithCustomStartDate_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 performHomeScreenCoreAnalyticsDryRunWithCustomStartDate:v9 reply:v8];
}

- (void)nPlusOneStudyDryRunResultFilterByExtensionBundleId:(id)a3 reply:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81___ATXInspectionClient_nPlusOneStudyDryRunResultFilterByExtensionBundleId_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 nPlusOneStudyDryRunResultFilterByExtensionBundleId:v9 reply:v8];
}

- (void)trainModeSetupPredictionModelWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___ATXInspectionClient_trainModeSetupPredictionModelWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 trainModeSetupPredictionModelWithReply:v6];
}

- (void)inspectInferredActivitySessionStream:(id)a3 fromTimestamp:(double)a4 reply:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81___ATXInspectionClient_inspectInferredActivitySessionStream_fromTimestamp_reply___block_invoke;
  v13[3] = &unk_278598B30;
  v14 = v8;
  v10 = v8;
  v11 = a3;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v13];
  [v12 inspectInferredActivitySessionStream:v11 fromTimestamp:v10 reply:a4];
}

- (void)inspectInferredActivityTransitionStream:(id)a3 fromTimestamp:(double)a4 reply:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84___ATXInspectionClient_inspectInferredActivityTransitionStream_fromTimestamp_reply___block_invoke;
  v13[3] = &unk_278598B30;
  v14 = v8;
  v10 = v8;
  v11 = a3;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v13];
  [v12 inspectInferredActivityTransitionStream:v11 fromTimestamp:v10 reply:a4];
}

- (void)forceNotificationAndSuggestionDbUpdate:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___ATXInspectionClient_forceNotificationAndSuggestionDbUpdate___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 forceNotificationAndSuggestionDbUpdate:v6];
}

- (void)generateSerializedNotificationDigestFromFileData:(id)a3 digestTimeString:(id)a4 reply:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96___ATXInspectionClient_generateSerializedNotificationDigestFromFileData_digestTimeString_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 generateSerializedNotificationDigestFromFileData:v12 digestTimeString:v11 reply:v10];
}

- (void)generateSerializedMissedNotificationBundleFromFileData:(id)a3 modeString:(id)a4 reply:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96___ATXInspectionClient_generateSerializedMissedNotificationBundleFromFileData_modeString_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 generateSerializedMissedNotificationBundleFromFileData:v12 modeString:v11 reply:v10];
}

- (void)clearNotificationsWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52___ATXInspectionClient_clearNotificationsWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 clearNotificationsWithReply:v6];
}

- (void)showDigestFeedbackHistogramForBundleId:(id)a3 withReply:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73___ATXInspectionClient_showDigestFeedbackHistogramForBundleId_withReply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 showDigestFeedbackHistogramForBundleId:v9 withReply:v8];
}

- (void)addToDigestFeedbackHistogramForBundleId:(id)a3 location:(id)a4 feedback:(id)a5 withReply:(id)a6
{
  v10 = a6;
  xpcConnection = self->_xpcConnection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92___ATXInspectionClient_addToDigestFeedbackHistogramForBundleId_location_feedback_withReply___block_invoke;
  v17[3] = &unk_278598B30;
  v18 = v10;
  v12 = v10;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v17];
  [v16 addToDigestFeedbackHistogramForBundleId:v15 location:v14 feedback:v13 withReply:v12];
}

- (void)setDigestFeedbackHistogramValueForBundleId:(id)a3 location:(id)a4 feedback:(id)a5 value:(id)a6 withReply:(id)a7
{
  v12 = a7;
  xpcConnection = self->_xpcConnection;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101___ATXInspectionClient_setDigestFeedbackHistogramValueForBundleId_location_feedback_value_withReply___block_invoke;
  v20[3] = &unk_278598B30;
  v21 = v12;
  v14 = v12;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v20];
  [v19 setDigestFeedbackHistogramValueForBundleId:v18 location:v17 feedback:v16 value:v15 withReply:v14];
}

- (void)getCurrentLocationWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52___ATXInspectionClient_getCurrentLocationWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getCurrentLocationWithReply:v6];
}

- (void)generateDataForStressTestWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___ATXInspectionClient_generateDataForStressTestWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 generateDataForStressTestWithReply:v6];
}

- (void)clearAllDataForStressTestWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___ATXInspectionClient_clearAllDataForStressTestWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 clearAllDataForStressTestWithReply:v6];
}

- (void)fetchPosterDescriptorsWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56___ATXInspectionClient_fetchPosterDescriptorsWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 fetchPosterDescriptorsWithReply:v6];
}

- (void)logNotificationMetricsFromStartTimestamp:(id)a3 toEndTimestamp:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95___ATXInspectionClient_logNotificationMetricsFromStartTimestamp_toEndTimestamp_withCompletion___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 logNotificationMetricsFromStartTimestamp:v12 toEndTimestamp:v11 withCompletion:v10];
}

- (void)triggerPredictionsUpdateWithCompletion:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___ATXInspectionClient_triggerPredictionsUpdateWithCompletion___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 triggerPredictionsUpdateWithCompletion:v6];
}

- (void)triggerBackgroundJobWithIdentifier:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a5;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84___ATXInspectionClient_triggerBackgroundJobWithIdentifier_configuration_completion___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 triggerBackgroundJobWithIdentifier:v12 configuration:v11 completion:v10];
}

- (void)fetchPIDFromServer:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43___ATXInspectionClient_fetchPIDFromServer___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 fetchPIDFromServer:v6];
}

@end