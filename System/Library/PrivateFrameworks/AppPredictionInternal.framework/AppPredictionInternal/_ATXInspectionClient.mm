@interface _ATXInspectionClient
- (_ATXInspectionClient)init;
- (void)addToDigestFeedbackHistogramForBundleId:(id)id location:(id)location feedback:(id)feedback withReply:(id)reply;
- (void)allHistogramsBySize:(id)size;
- (void)appAndActionHistoryClear:(id)clear;
- (void)appHistoryActionWithUUID:(id)d reply:(id)reply;
- (void)appHistoryAddAppIntentLaunch:(id)launch intent:(id)intent source:(id)source date:(id)date timeZone:(id)zone reply:(id)reply;
- (void)appHistoryAddLaunch:(id)launch launchReason:(id)reason date:(id)date timeZone:(id)zone reply:(id)reply;
- (void)appHistoryAddNSUALaunch:(id)launch requiredString:(id)string itemIdentifier:(id)identifier date:(id)date timeZone:(id)zone reply:(id)reply;
- (void)appHistoryClearAppIntent:(id)intent;
- (void)appHistoryStartDeltaRecording:(id)recording;
- (void)appHistoryStopDeltaRecording:(id)recording;
- (void)appHistoryUpdateActionPredictionPipelineWithAction:(id)action date:(id)date timeZone:(id)zone reply:(id)reply;
- (void)appInstallHistoryClear:(id)clear;
- (void)appInstallHistorySet:(id)set date:(id)date reply:(id)reply;
- (void)appInstallHistoryStartDeltaRecording:(id)recording;
- (void)appInstallHistoryStopDeltaRecording:(id)recording;
- (void)appIntentHistoryDonateINIntent:(id)intent intentType:(id)type startDate:(id)date endDate:(id)endDate timeZone:(id)zone reply:(id)reply;
- (void)appIntentHistoryMockIntentLaunch:(id)launch source:(id)source startDate:(id)date endDate:(id)endDate timeZone:(id)zone reply:(id)reply;
- (void)appLaunchDatesWithReply:(id)reply;
- (void)appLaunchInformationWithReply:(id)reply;
- (void)benchmarkAppPrediction:(unint64_t)prediction reply:(id)reply;
- (void)buildAnchorModelTrainingDataset:(id)dataset;
- (void)categoryLaunchInformationWithReply:(id)reply;
- (void)clearAllDataForStressTestWithReply:(id)reply;
- (void)clearBlendingSuggestionsForClientModel:(int64_t)model withReply:(id)reply;
- (void)clearNotificationsWithReply:(id)reply;
- (void)createAppPredictionLogs:(id)logs;
- (void)dealloc;
- (void)donateSuggestion:(id)suggestion forClientModel:(int64_t)model withReply:(id)reply;
- (void)dumpPredictionTableForMMExpert:(id)expert reply:(id)reply;
- (void)evaluateInfoSuggestionsWithCompletionHandler:(id)handler;
- (void)feedbackClear:(id)clear;
- (void)feedbackLaunched:(id)launched rejected:(id)rejected reply:(id)reply;
- (void)fetchPIDFromServer:(id)server;
- (void)fetchPosterDescriptorsWithReply:(id)reply;
- (void)fetchSuggestionsForSourceId:(id)id reply:(id)reply;
- (void)forceMagicalMomentsAppPredictionForBundleId:(id)id expert:(id)expert reply:(id)reply;
- (void)forceNotificationAndSuggestionDbUpdate:(id)update;
- (void)generateDataForStressTestWithReply:(id)reply;
- (void)generateSerializedMissedNotificationBundleFromFileData:(id)data modeString:(id)string reply:(id)reply;
- (void)generateSerializedNotificationDigestFromFileData:(id)data digestTimeString:(id)string reply:(id)reply;
- (void)getActionLogs:(id)logs;
- (void)getActionPrivacyFriendlyLogs:(id)logs;
- (void)getAppFeedbackData:(id)data;
- (void)getCurrentLocationWithReply:(id)reply;
- (void)getInfoPredictionsInString:(id)string;
- (void)getInfoSuggestionsInString:(id)string;
- (void)getModeTimelineDataFromStartDate:(id)date reply:(id)reply;
- (void)histogramsInMemory:(id)memory;
- (void)histogramsInMemoryBySize:(id)size;
- (void)inspectInferredActivitySessionStream:(id)stream fromTimestamp:(double)timestamp reply:(id)reply;
- (void)inspectInferredActivityTransitionStream:(id)stream fromTimestamp:(double)timestamp reply:(id)reply;
- (void)lockScreenBundleIdsWithReply:(id)reply;
- (void)logNotificationMetricsFromStartTimestamp:(id)timestamp toEndTimestamp:(id)endTimestamp withCompletion:(id)completion;
- (void)nPlusOneStudyDryRunResultFilterByExtensionBundleId:(id)id reply:(id)reply;
- (void)performHomeScreenCoreAnalyticsDryRunWithCustomStartDate:(id)date reply:(id)reply;
- (void)predictAppsAndReturnInputsAndSubscores:(id)subscores;
- (void)processAppDirectoryFeedbackWithReply:(id)reply;
- (void)processHomeScreenFeedbackWithReply:(id)reply;
- (void)processLockscreenFeedbackWithReply:(id)reply;
- (void)processSpotlightActionFeedbackWithReply:(id)reply;
- (void)processSpotlightAppFeedbackWithReply:(id)reply;
- (void)promoteSuggestionsFromClientModel:(id)model reply:(id)reply;
- (void)rankAndReturnInfoPredictionsInString:(id)string;
- (void)refreshBlendingLayer:(id)layer;
- (void)resetActionPredictions:(id)predictions;
- (void)resetHistogramsAndRemoveUICaches:(id)caches;
- (void)retrainActionHistograms:(id)histograms;
- (void)retrainActionSlotDatabase:(id)database;
- (void)schedulePredictionsForAnchorModel:(id)model anchorType:(id)type reply:(id)reply;
- (void)scheduledPredictionsForAnchorModelWithReply:(id)reply;
- (void)setDigestFeedbackHistogramValueForBundleId:(id)id location:(id)location feedback:(id)feedback value:(id)value withReply:(id)reply;
- (void)showDigestFeedbackHistogramForBundleId:(id)id withReply:(id)reply;
- (void)trainAnchorModel:(id)model;
- (void)trainMagicalMomentsAppPredictor:(id)predictor;
- (void)trainModeSetupPredictionModelWithReply:(id)reply;
- (void)triggerBackgroundJobWithIdentifier:(id)identifier configuration:(id)configuration completion:(id)completion;
- (void)triggerPredictionsUpdateWithCompletion:(id)completion;
- (void)updateAppDirectoryCache:(id)cache;
- (void)validPredictionsRightNowForAnchorModelWithReply:(id)reply;
- (void)widgetBundleIdentifiersForAllInfoSuggestionsInString:(id)string;
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

- (void)appAndActionHistoryClear:(id)clear
{
  clearCopy = clear;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49___ATXInspectionClient_appAndActionHistoryClear___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = clearCopy;
  v6 = clearCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appAndActionHistoryClear:v6];
}

- (void)appHistoryClearAppIntent:(id)intent
{
  intentCopy = intent;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49___ATXInspectionClient_appHistoryClearAppIntent___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = intentCopy;
  v6 = intentCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appHistoryClearAppIntent:v6];
}

- (void)appHistoryAddLaunch:(id)launch launchReason:(id)reason date:(id)date timeZone:(id)zone reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77___ATXInspectionClient_appHistoryAddLaunch_launchReason_date_timeZone_reply___block_invoke;
  v20[3] = &unk_278598B30;
  v21 = replyCopy;
  v14 = replyCopy;
  zoneCopy = zone;
  dateCopy = date;
  reasonCopy = reason;
  launchCopy = launch;
  v19 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v20];
  [v19 appHistoryAddLaunch:launchCopy launchReason:reasonCopy date:dateCopy timeZone:zoneCopy reply:v14];
}

- (void)appHistoryUpdateActionPredictionPipelineWithAction:(id)action date:(id)date timeZone:(id)zone reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95___ATXInspectionClient_appHistoryUpdateActionPredictionPipelineWithAction_date_timeZone_reply___block_invoke;
  v17[3] = &unk_278598B30;
  v18 = replyCopy;
  v12 = replyCopy;
  zoneCopy = zone;
  dateCopy = date;
  actionCopy = action;
  v16 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v17];
  [v16 appHistoryUpdateActionPredictionPipelineWithAction:actionCopy date:dateCopy timeZone:zoneCopy reply:v12];
}

- (void)appHistoryActionWithUUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55___ATXInspectionClient_appHistoryActionWithUUID_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = replyCopy;
  v8 = replyCopy;
  dCopy = d;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 appHistoryActionWithUUID:dCopy reply:v8];
}

- (void)appHistoryAddNSUALaunch:(id)launch requiredString:(id)string itemIdentifier:(id)identifier date:(id)date timeZone:(id)zone reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __98___ATXInspectionClient_appHistoryAddNSUALaunch_requiredString_itemIdentifier_date_timeZone_reply___block_invoke;
  v23[3] = &unk_278598B30;
  v24 = replyCopy;
  v16 = replyCopy;
  zoneCopy = zone;
  dateCopy = date;
  identifierCopy = identifier;
  stringCopy = string;
  launchCopy = launch;
  v22 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v23];
  [v22 appHistoryAddNSUALaunch:launchCopy requiredString:stringCopy itemIdentifier:identifierCopy date:dateCopy timeZone:zoneCopy reply:v16];
}

- (void)appHistoryAddAppIntentLaunch:(id)launch intent:(id)intent source:(id)source date:(id)date timeZone:(id)zone reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __87___ATXInspectionClient_appHistoryAddAppIntentLaunch_intent_source_date_timeZone_reply___block_invoke;
  v23[3] = &unk_278598B30;
  v24 = replyCopy;
  v16 = replyCopy;
  zoneCopy = zone;
  dateCopy = date;
  sourceCopy = source;
  intentCopy = intent;
  launchCopy = launch;
  v22 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v23];
  [v22 appHistoryAddAppIntentLaunch:launchCopy intent:intentCopy source:sourceCopy date:dateCopy timeZone:zoneCopy reply:v16];
}

- (void)appIntentHistoryMockIntentLaunch:(id)launch source:(id)source startDate:(id)date endDate:(id)endDate timeZone:(id)zone reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97___ATXInspectionClient_appIntentHistoryMockIntentLaunch_source_startDate_endDate_timeZone_reply___block_invoke;
  v23[3] = &unk_278598B30;
  v24 = replyCopy;
  v16 = replyCopy;
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  sourceCopy = source;
  launchCopy = launch;
  v22 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v23];
  [v22 appIntentHistoryMockIntentLaunch:launchCopy source:sourceCopy startDate:dateCopy endDate:endDateCopy timeZone:zoneCopy reply:v16];
}

- (void)appIntentHistoryDonateINIntent:(id)intent intentType:(id)type startDate:(id)date endDate:(id)endDate timeZone:(id)zone reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99___ATXInspectionClient_appIntentHistoryDonateINIntent_intentType_startDate_endDate_timeZone_reply___block_invoke;
  v23[3] = &unk_278598B30;
  v24 = replyCopy;
  v16 = replyCopy;
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  intentCopy = intent;
  v22 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v23];
  [v22 appIntentHistoryDonateINIntent:intentCopy intentType:typeCopy startDate:dateCopy endDate:endDateCopy timeZone:zoneCopy reply:v16];
}

- (void)appHistoryStartDeltaRecording:(id)recording
{
  recordingCopy = recording;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54___ATXInspectionClient_appHistoryStartDeltaRecording___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = recordingCopy;
  v6 = recordingCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appHistoryStartDeltaRecording:v6];
}

- (void)appHistoryStopDeltaRecording:(id)recording
{
  recordingCopy = recording;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53___ATXInspectionClient_appHistoryStopDeltaRecording___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = recordingCopy;
  v6 = recordingCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appHistoryStopDeltaRecording:v6];
}

- (void)appInstallHistoryClear:(id)clear
{
  clearCopy = clear;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___ATXInspectionClient_appInstallHistoryClear___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = clearCopy;
  v6 = clearCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appInstallHistoryClear:v6];
}

- (void)appInstallHistorySet:(id)set date:(id)date reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56___ATXInspectionClient_appInstallHistorySet_date_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = replyCopy;
  v10 = replyCopy;
  dateCopy = date;
  setCopy = set;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 appInstallHistorySet:setCopy date:dateCopy reply:v10];
}

- (void)appInstallHistoryStartDeltaRecording:(id)recording
{
  recordingCopy = recording;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61___ATXInspectionClient_appInstallHistoryStartDeltaRecording___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = recordingCopy;
  v6 = recordingCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appInstallHistoryStartDeltaRecording:v6];
}

- (void)appInstallHistoryStopDeltaRecording:(id)recording
{
  recordingCopy = recording;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60___ATXInspectionClient_appInstallHistoryStopDeltaRecording___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = recordingCopy;
  v6 = recordingCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appInstallHistoryStopDeltaRecording:v6];
}

- (void)feedbackClear:(id)clear
{
  clearCopy = clear;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38___ATXInspectionClient_feedbackClear___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = clearCopy;
  v6 = clearCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 feedbackClear:v6];
}

- (void)feedbackLaunched:(id)launched rejected:(id)rejected reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56___ATXInspectionClient_feedbackLaunched_rejected_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = replyCopy;
  v10 = replyCopy;
  rejectedCopy = rejected;
  launchedCopy = launched;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 feedbackLaunchedWithConsumerSubType:9 forBundleId:launchedCopy rejected:rejectedCopy reply:v10];
}

- (void)predictAppsAndReturnInputsAndSubscores:(id)subscores
{
  subscoresCopy = subscores;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___ATXInspectionClient_predictAppsAndReturnInputsAndSubscores___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = subscoresCopy;
  v6 = subscoresCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 predictAppsAndReturnInputsAndSubscores:v6];
}

- (void)benchmarkAppPrediction:(unint64_t)prediction reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53___ATXInspectionClient_benchmarkAppPrediction_reply___block_invoke;
  v10[3] = &unk_278598B30;
  v11 = replyCopy;
  v8 = replyCopy;
  v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v9 benchmarkAppPrediction:prediction reply:v8];
}

- (void)createAppPredictionLogs:(id)logs
{
  logsCopy = logs;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48___ATXInspectionClient_createAppPredictionLogs___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = logsCopy;
  v6 = logsCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 createAppPredictionLogs:v6];
}

- (void)getActionLogs:(id)logs
{
  logsCopy = logs;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38___ATXInspectionClient_getActionLogs___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = logsCopy;
  v6 = logsCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getActionLogs:v6];
}

- (void)getActionPrivacyFriendlyLogs:(id)logs
{
  logsCopy = logs;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53___ATXInspectionClient_getActionPrivacyFriendlyLogs___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = logsCopy;
  v6 = logsCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getActionPrivacyFriendlyLogs:v6];
}

- (void)getAppFeedbackData:(id)data
{
  dataCopy = data;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43___ATXInspectionClient_getAppFeedbackData___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = dataCopy;
  v6 = dataCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getAppFeedbackData:v6];
}

- (void)histogramsInMemory:(id)memory
{
  memoryCopy = memory;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43___ATXInspectionClient_histogramsInMemory___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = memoryCopy;
  v6 = memoryCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 histogramsInMemory:v6];
}

- (void)histogramsInMemoryBySize:(id)size
{
  sizeCopy = size;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49___ATXInspectionClient_histogramsInMemoryBySize___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = sizeCopy;
  v6 = sizeCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 histogramsInMemoryBySize:v6];
}

- (void)allHistogramsBySize:(id)size
{
  sizeCopy = size;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44___ATXInspectionClient_allHistogramsBySize___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = sizeCopy;
  v6 = sizeCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 allHistogramsBySize:v6];
}

- (void)retrainActionHistograms:(id)histograms
{
  histogramsCopy = histograms;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48___ATXInspectionClient_retrainActionHistograms___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = histogramsCopy;
  v6 = histogramsCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 retrainActionHistograms:v6];
}

- (void)retrainActionSlotDatabase:(id)database
{
  databaseCopy = database;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50___ATXInspectionClient_retrainActionSlotDatabase___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = databaseCopy;
  v6 = databaseCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 retrainActionSlotDatabase:v6];
}

- (void)resetHistogramsAndRemoveUICaches:(id)caches
{
  cachesCopy = caches;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57___ATXInspectionClient_resetHistogramsAndRemoveUICaches___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = cachesCopy;
  v6 = cachesCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 resetHistogramsAndRemoveUICaches:v6];
}

- (void)resetActionPredictions:(id)predictions
{
  predictionsCopy = predictions;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___ATXInspectionClient_resetActionPredictions___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = predictionsCopy;
  v6 = predictionsCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 resetActionPredictions:v6];
}

- (void)trainMagicalMomentsAppPredictor:(id)predictor
{
  predictorCopy = predictor;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56___ATXInspectionClient_trainMagicalMomentsAppPredictor___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = predictorCopy;
  v6 = predictorCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 trainMagicalMomentsAppPredictor:v6];
}

- (void)forceMagicalMomentsAppPredictionForBundleId:(id)id expert:(id)expert reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81___ATXInspectionClient_forceMagicalMomentsAppPredictionForBundleId_expert_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = replyCopy;
  v10 = replyCopy;
  expertCopy = expert;
  idCopy = id;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 forceMagicalMomentsAppPredictionForBundleId:idCopy expert:expertCopy reply:v10];
}

- (void)dumpPredictionTableForMMExpert:(id)expert reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61___ATXInspectionClient_dumpPredictionTableForMMExpert_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = replyCopy;
  v8 = replyCopy;
  expertCopy = expert;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 dumpPredictionTableForMMExpert:expertCopy reply:v8];
}

- (void)evaluateInfoSuggestionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69___ATXInspectionClient_evaluateInfoSuggestionsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 evaluateInfoSuggestionsWithCompletionHandler:v6];
}

- (void)getInfoSuggestionsInString:(id)string
{
  stringCopy = string;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51___ATXInspectionClient_getInfoSuggestionsInString___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = stringCopy;
  v6 = stringCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getInfoSuggestionsInString:v6];
}

- (void)fetchSuggestionsForSourceId:(id)id reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58___ATXInspectionClient_fetchSuggestionsForSourceId_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = replyCopy;
  v8 = replyCopy;
  idCopy = id;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 fetchSuggestionsForSourceId:idCopy reply:v8];
}

- (void)widgetBundleIdentifiersForAllInfoSuggestionsInString:(id)string
{
  stringCopy = string;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77___ATXInspectionClient_widgetBundleIdentifiersForAllInfoSuggestionsInString___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = stringCopy;
  v6 = stringCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 widgetBundleIdentifiersForAllInfoSuggestionsInString:v6];
}

- (void)getInfoPredictionsInString:(id)string
{
  stringCopy = string;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51___ATXInspectionClient_getInfoPredictionsInString___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = stringCopy;
  v6 = stringCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getInfoPredictionsInString:v6];
}

- (void)rankAndReturnInfoPredictionsInString:(id)string
{
  stringCopy = string;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61___ATXInspectionClient_rankAndReturnInfoPredictionsInString___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = stringCopy;
  v6 = stringCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 rankAndReturnInfoPredictionsInString:v6];
}

- (void)updateAppDirectoryCache:(id)cache
{
  cacheCopy = cache;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48___ATXInspectionClient_updateAppDirectoryCache___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = cacheCopy;
  v6 = cacheCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 updateAppDirectoryCache:v6];
}

- (void)getModeTimelineDataFromStartDate:(id)date reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63___ATXInspectionClient_getModeTimelineDataFromStartDate_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = replyCopy;
  v8 = replyCopy;
  dateCopy = date;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 getModeTimelineDataFromStartDate:dateCopy reply:v8];
}

- (void)lockScreenBundleIdsWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53___ATXInspectionClient_lockScreenBundleIdsWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 lockScreenBundleIdsWithReply:v6];
}

- (void)appLaunchInformationWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54___ATXInspectionClient_appLaunchInformationWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appLaunchInformationWithReply:v6];
}

- (void)categoryLaunchInformationWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___ATXInspectionClient_categoryLaunchInformationWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 categoryLaunchInformationWithReply:v6];
}

- (void)appLaunchDatesWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48___ATXInspectionClient_appLaunchDatesWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appLaunchDatesWithReply:v6];
}

- (void)refreshBlendingLayer:(id)layer
{
  layerCopy = layer;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45___ATXInspectionClient_refreshBlendingLayer___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = layerCopy;
  v6 = layerCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 refreshBlendingLayer:v6];
}

- (void)promoteSuggestionsFromClientModel:(id)model reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64___ATXInspectionClient_promoteSuggestionsFromClientModel_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = replyCopy;
  v8 = replyCopy;
  modelCopy = model;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 promoteSuggestionsFromClientModel:modelCopy reply:v8];
}

- (void)donateSuggestion:(id)suggestion forClientModel:(int64_t)model withReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66___ATXInspectionClient_donateSuggestion_forClientModel_withReply___block_invoke;
  v13[3] = &unk_278598B30;
  v14 = replyCopy;
  v10 = replyCopy;
  suggestionCopy = suggestion;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v13];
  [v12 donateSuggestion:suggestionCopy forClientModel:model withReply:v10];
}

- (void)clearBlendingSuggestionsForClientModel:(int64_t)model withReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73___ATXInspectionClient_clearBlendingSuggestionsForClientModel_withReply___block_invoke;
  v10[3] = &unk_278598B30;
  v11 = replyCopy;
  v8 = replyCopy;
  v9 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v9 clearBlendingSuggestionsForClientModel:model withReply:v8];
}

- (void)buildAnchorModelTrainingDataset:(id)dataset
{
  datasetCopy = dataset;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56___ATXInspectionClient_buildAnchorModelTrainingDataset___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = datasetCopy;
  v6 = datasetCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 buildAnchorModelTrainingDataset:v6];
}

- (void)trainAnchorModel:(id)model
{
  modelCopy = model;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41___ATXInspectionClient_trainAnchorModel___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = modelCopy;
  v6 = modelCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 trainAnchorModel:v6];
}

- (void)scheduledPredictionsForAnchorModelWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68___ATXInspectionClient_scheduledPredictionsForAnchorModelWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 scheduledPredictionsForAnchorModelWithReply:v6];
}

- (void)validPredictionsRightNowForAnchorModelWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72___ATXInspectionClient_validPredictionsRightNowForAnchorModelWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 validPredictionsRightNowForAnchorModelWithReply:v6];
}

- (void)schedulePredictionsForAnchorModel:(id)model anchorType:(id)type reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75___ATXInspectionClient_schedulePredictionsForAnchorModel_anchorType_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = replyCopy;
  v10 = replyCopy;
  typeCopy = type;
  modelCopy = model;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 schedulePredictionsForAnchorModel:modelCopy anchorType:typeCopy reply:v10];
}

- (void)processLockscreenFeedbackWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___ATXInspectionClient_processLockscreenFeedbackWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 processLockscreenFeedbackWithReply:v6];
}

- (void)processHomeScreenFeedbackWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___ATXInspectionClient_processHomeScreenFeedbackWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 processHomeScreenFeedbackWithReply:v6];
}

- (void)processSpotlightAppFeedbackWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61___ATXInspectionClient_processSpotlightAppFeedbackWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 processSpotlightAppFeedbackWithReply:v6];
}

- (void)processSpotlightActionFeedbackWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64___ATXInspectionClient_processSpotlightActionFeedbackWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 processSpotlightActionFeedbackWithReply:v6];
}

- (void)processAppDirectoryFeedbackWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61___ATXInspectionClient_processAppDirectoryFeedbackWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 processAppDirectoryFeedbackWithReply:v6];
}

- (void)performHomeScreenCoreAnalyticsDryRunWithCustomStartDate:(id)date reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86___ATXInspectionClient_performHomeScreenCoreAnalyticsDryRunWithCustomStartDate_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = replyCopy;
  v8 = replyCopy;
  dateCopy = date;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 performHomeScreenCoreAnalyticsDryRunWithCustomStartDate:dateCopy reply:v8];
}

- (void)nPlusOneStudyDryRunResultFilterByExtensionBundleId:(id)id reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81___ATXInspectionClient_nPlusOneStudyDryRunResultFilterByExtensionBundleId_reply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = replyCopy;
  v8 = replyCopy;
  idCopy = id;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 nPlusOneStudyDryRunResultFilterByExtensionBundleId:idCopy reply:v8];
}

- (void)trainModeSetupPredictionModelWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___ATXInspectionClient_trainModeSetupPredictionModelWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 trainModeSetupPredictionModelWithReply:v6];
}

- (void)inspectInferredActivitySessionStream:(id)stream fromTimestamp:(double)timestamp reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81___ATXInspectionClient_inspectInferredActivitySessionStream_fromTimestamp_reply___block_invoke;
  v13[3] = &unk_278598B30;
  v14 = replyCopy;
  v10 = replyCopy;
  streamCopy = stream;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v13];
  [v12 inspectInferredActivitySessionStream:streamCopy fromTimestamp:v10 reply:timestamp];
}

- (void)inspectInferredActivityTransitionStream:(id)stream fromTimestamp:(double)timestamp reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84___ATXInspectionClient_inspectInferredActivityTransitionStream_fromTimestamp_reply___block_invoke;
  v13[3] = &unk_278598B30;
  v14 = replyCopy;
  v10 = replyCopy;
  streamCopy = stream;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v13];
  [v12 inspectInferredActivityTransitionStream:streamCopy fromTimestamp:v10 reply:timestamp];
}

- (void)forceNotificationAndSuggestionDbUpdate:(id)update
{
  updateCopy = update;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___ATXInspectionClient_forceNotificationAndSuggestionDbUpdate___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = updateCopy;
  v6 = updateCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 forceNotificationAndSuggestionDbUpdate:v6];
}

- (void)generateSerializedNotificationDigestFromFileData:(id)data digestTimeString:(id)string reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96___ATXInspectionClient_generateSerializedNotificationDigestFromFileData_digestTimeString_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = replyCopy;
  v10 = replyCopy;
  stringCopy = string;
  dataCopy = data;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 generateSerializedNotificationDigestFromFileData:dataCopy digestTimeString:stringCopy reply:v10];
}

- (void)generateSerializedMissedNotificationBundleFromFileData:(id)data modeString:(id)string reply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96___ATXInspectionClient_generateSerializedMissedNotificationBundleFromFileData_modeString_reply___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = replyCopy;
  v10 = replyCopy;
  stringCopy = string;
  dataCopy = data;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 generateSerializedMissedNotificationBundleFromFileData:dataCopy modeString:stringCopy reply:v10];
}

- (void)clearNotificationsWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52___ATXInspectionClient_clearNotificationsWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 clearNotificationsWithReply:v6];
}

- (void)showDigestFeedbackHistogramForBundleId:(id)id withReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73___ATXInspectionClient_showDigestFeedbackHistogramForBundleId_withReply___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = replyCopy;
  v8 = replyCopy;
  idCopy = id;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 showDigestFeedbackHistogramForBundleId:idCopy withReply:v8];
}

- (void)addToDigestFeedbackHistogramForBundleId:(id)id location:(id)location feedback:(id)feedback withReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92___ATXInspectionClient_addToDigestFeedbackHistogramForBundleId_location_feedback_withReply___block_invoke;
  v17[3] = &unk_278598B30;
  v18 = replyCopy;
  v12 = replyCopy;
  feedbackCopy = feedback;
  locationCopy = location;
  idCopy = id;
  v16 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v17];
  [v16 addToDigestFeedbackHistogramForBundleId:idCopy location:locationCopy feedback:feedbackCopy withReply:v12];
}

- (void)setDigestFeedbackHistogramValueForBundleId:(id)id location:(id)location feedback:(id)feedback value:(id)value withReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101___ATXInspectionClient_setDigestFeedbackHistogramValueForBundleId_location_feedback_value_withReply___block_invoke;
  v20[3] = &unk_278598B30;
  v21 = replyCopy;
  v14 = replyCopy;
  valueCopy = value;
  feedbackCopy = feedback;
  locationCopy = location;
  idCopy = id;
  v19 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v20];
  [v19 setDigestFeedbackHistogramValueForBundleId:idCopy location:locationCopy feedback:feedbackCopy value:valueCopy withReply:v14];
}

- (void)getCurrentLocationWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52___ATXInspectionClient_getCurrentLocationWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 getCurrentLocationWithReply:v6];
}

- (void)generateDataForStressTestWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___ATXInspectionClient_generateDataForStressTestWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 generateDataForStressTestWithReply:v6];
}

- (void)clearAllDataForStressTestWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___ATXInspectionClient_clearAllDataForStressTestWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 clearAllDataForStressTestWithReply:v6];
}

- (void)fetchPosterDescriptorsWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56___ATXInspectionClient_fetchPosterDescriptorsWithReply___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 fetchPosterDescriptorsWithReply:v6];
}

- (void)logNotificationMetricsFromStartTimestamp:(id)timestamp toEndTimestamp:(id)endTimestamp withCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95___ATXInspectionClient_logNotificationMetricsFromStartTimestamp_toEndTimestamp_withCompletion___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = completionCopy;
  v10 = completionCopy;
  endTimestampCopy = endTimestamp;
  timestampCopy = timestamp;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 logNotificationMetricsFromStartTimestamp:timestampCopy toEndTimestamp:endTimestampCopy withCompletion:v10];
}

- (void)triggerPredictionsUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63___ATXInspectionClient_triggerPredictionsUpdateWithCompletion___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 triggerPredictionsUpdateWithCompletion:v6];
}

- (void)triggerBackgroundJobWithIdentifier:(id)identifier configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  xpcConnection = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84___ATXInspectionClient_triggerBackgroundJobWithIdentifier_configuration_completion___block_invoke;
  v14[3] = &unk_278598B30;
  v15 = completionCopy;
  v10 = completionCopy;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v13 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v14];
  [v13 triggerBackgroundJobWithIdentifier:identifierCopy configuration:configurationCopy completion:v10];
}

- (void)fetchPIDFromServer:(id)server
{
  serverCopy = server;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43___ATXInspectionClient_fetchPIDFromServer___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = serverCopy;
  v6 = serverCopy;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 fetchPIDFromServer:v6];
}

@end