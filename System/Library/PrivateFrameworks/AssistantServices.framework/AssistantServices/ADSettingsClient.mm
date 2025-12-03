@interface ADSettingsClient
- (ADSettingsClient)initWithXPCConnection:(id)connection;
- (id)_localSpeechRecognizer;
- (id)_localizedBodyWithFormat:(id)format forTriggerPhrase:(id)phrase andName:(id)name;
- (void)_clearSyncNeededForKey:(id)key;
- (void)_createMockServerIfNeededAndSetActiveWithCompletion:(id)completion;
- (void)_executeBlockWithCurrentlyRoutedDevice:(id)device withCompletion:(id)completion;
- (void)_fetchPeerData:(id)data;
- (void)_isInactiveDeviceSyncDisabled:(id)disabled;
- (void)_isInactiveDeviceSyncDisabledByTrial:(id)trial;
- (void)_killDaemon;
- (void)_resetSessionsAtNextRequestBoundary;
- (void)_runServiceMaintenance;
- (void)_saveAccount:(id)account setActive:(BOOL)active;
- (void)_shutdownSessionIfIdle;
- (void)_syncDataWithAnchorKeys:(id)keys forceReset:(BOOL)reset reason:(id)reason reply:(id)reply;
- (void)accessRecordedAudioWithIdentifier:(id)identifier completion:(id)completion;
- (void)addMultiUserUser:(id)user sharedId:(id)id loggableSharedId:(id)sharedId iCloudAltDSID:(id)d enrollmentName:(id)name isPrimary:(BOOL)primary completion:(id)completion;
- (void)areSiriSAEAssetsAvailable:(id)available;
- (void)areSiriUODAssetsAvailable:(id)available;
- (void)availableLanguagesInTheHome:(id)home;
- (void)clearAnnounceNotificationsInCarPlayTemporarilyDisabled;
- (void)clearAnnounceNotificationsInCarPlayType;
- (void)configOverrides:(id)overrides;
- (void)connectionDisconnected;
- (void)createOfflineSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path JSONData:(id)data completion:(id)completion;
- (void)createRadarForCrashWithReason:(id)reason process:(id)process completion:(id)completion;
- (void)deleteAccountWithIdentifier:(id)identifier;
- (void)deleteSiriHistoryWithContext:(id)context withCompletion:(id)completion;
- (void)disableAndDeleteCloudSyncWithCompletion:(id)completion;
- (void)dismissUI;
- (void)dumpAssistantState:(id)state;
- (void)fetchActiveAccount:(id)account;
- (void)fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:(id)completion;
- (void)fetchEventRecordsFromAnalyticsStoreAtPath:(id)path completion:(id)completion;
- (void)fetchExperimentConfigurationsWithCompletion:(id)completion;
- (void)fetchExperimentContextWithCompletion:(id)completion;
- (void)fetchMultiUserVoiceIdentificationSetting:(id)setting;
- (void)fetchSharedUserIdentifier:(id)identifier;
- (void)fetchSupportedLanguagesWithReply:(id)reply;
- (void)forceMultiUserSync:(BOOL)sync download:(BOOL)download completion:(id)completion;
- (void)getAccessoryInfoForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:(id)completion;
- (void)getAnnounceNotificationsInCarPlayTypeWithCompletion:(id)completion;
- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForApp:(id)app platform:(int64_t)platform completion:(id)completion;
- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform:(int64_t)platform completion:(id)completion;
- (void)getAssetStatusForLanguage:(id)language completionHandler:(id)handler;
- (void)getAssistantIsEnabledForDeviceWithSiriInfo:(id)info withCompletion:(id)completion;
- (void)getAudioSessionCoordinationSnapshotWithCompletion:(id)completion;
- (void)getAvailableVoicesIncludingAssetInfo:(BOOL)info completion:(id)completion;
- (void)getBluetoothDeviceInfoWithAddress:(id)address completion:(id)completion;
- (void)getBluetoothDeviceInfoWithUID:(id)d completion:(id)completion;
- (void)getBluetoothWirelessSplitterSessionInfoWithCompletion:(id)completion;
- (void)getCapabilitiesDataFromReachableDevicesWithCompletion:(id)completion;
- (void)getConnectedBluetoothDeviceInfoArrayWithCompletion:(id)completion;
- (void)getContextCollectorsInfoWithCompletion:(id)completion;
- (void)getConversationAwarenessForCurrentlyRoutedDevice:(id)device;
- (void)getCrossDeviceContextWithCompletion:(id)completion;
- (void)getCurrentAccessoryInfoWithCompletion:(id)completion;
- (void)getCurrentActiveLanguageCodesWithCompletion:(id)completion;
- (void)getCurrentContextSnapshotWithCompletion:(id)completion;
- (void)getCurrentNWActivityIDWithCompletion:(id)completion;
- (void)getCurrentRequestIsWatchAuthenticatedWithCompletion:(id)completion;
- (void)getDevicesWithAvailablePHSAssetsForLanguage:(id)language completion:(id)completion;
- (void)getDevicesWithAvailablePHSAssetsOnDeviceCheck:(id)check;
- (void)getExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion;
- (void)getHeadGesturesForCurrentlyRoutedDevice:(id)device;
- (void)getHomeUserIdForSharedUserId:(id)id completion:(id)completion;
- (void)getInEarDetectionStateForBTAddress:(id)address withCompletion:(id)completion;
- (void)getManagedLocalAndRemotePeerInfoWithCompletion:(id)completion;
- (void)getMeCard:(id)card;
- (void)getMessageWithoutConfirmationEnabledWithCompletion:(id)completion;
- (void)getMessageWithoutConfirmationHeadphonesEnabledWithCompletion:(id)completion;
- (void)getMessageWithoutConfirmationInCarPlayEnabledWithCompletion:(id)completion;
- (void)getMultiUserCompanionInfo:(id)info;
- (void)getODDDeviceAggregationId:(id)id;
- (void)getODDDeviceProperties:(id)properties;
- (void)getOfflineAssistantStatusWithCompletion:(id)completion;
- (void)getOfflineDictationStatusWithCompletion:(id)completion;
- (void)getOriginDeviceInfoForContextIdentifier:(id)identifier completion:(id)completion;
- (void)getPeerIdentifiers:(id)identifiers;
- (void)getPersonalMultiUserDeviceIdentifiers:(id)identifiers;
- (void)getPersonalVolumeForCurrentlyRoutedDevice:(id)device;
- (void)getProximityTuplesWithCompletion:(id)completion;
- (void)getRecordedAudioDirectoryPathsWithCompletion:(id)completion;
- (void)getSearchQueriesDataSharingStatus:(id)status;
- (void)getSharedCompanionInfo:(id)info;
- (void)getSharedUserID:(id)d;
- (void)getSharedUserIdForHomeUserId:(id)id completion:(id)completion;
- (void)getShowAppsBehindSiriInCarPlayEnabledWithCompletion:(id)completion;
- (void)getSidekickBoostsFileWithCompletion:(id)completion;
- (void)getSiriDataSharingOptInStatusWithCompletion:(id)completion;
- (void)getSiriOutputVolumeForAudioRoute:(id)route completion:(id)completion;
- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)getSpokenNotificationIsAlwaysOpportuneWithCompletion:(id)completion;
- (void)getSpokenNotificationShouldAnnounceAllNotificationsWithCompletion:(id)completion;
- (void)getSpokenNotificationShouldSkipTriggerlessRepliesWithCompletion:(id)completion;
- (void)getStereoPairState:(id)state;
- (void)getStereoPartnerLastMyriadWinDate:(id)date;
- (void)getSupplementalLanguageDictionaryForProduct:(id)product completion:(id)completion;
- (void)getSupplementalLanguagesDictionary:(id)dictionary;
- (void)getSupplementalLanguagesForProduct:(id)product forBuildVersion:(id)version completion:(id)completion;
- (void)getSupplementalLanguagesModificationDate:(id)date;
- (void)getTrialEnables:(id)enables doubleFactors:(id)factors withCompletion:(id)completion;
- (void)handleCommand:(id)command completion:(id)completion;
- (void)hasEverSetLanguageCodeWithCompletion:(id)completion;
- (void)homeOnboardingFlowInvoked:(BOOL)invoked completion:(id)completion;
- (void)isJustSiriEnabledInTheHome:(id)home;
- (void)isSearchDataSharingStatusForced:(id)forced;
- (void)isVoiceTriggerEnabled:(id)enabled;
- (void)mockHeadGesture:(int64_t)gesture schedule:(BOOL)schedule withCompletion:(id)completion;
- (void)postJSDiscoveryNotificationForBTDeviceWithInfo:(id)info withCompletion:(id)completion;
- (void)postTestResultCandidateWithRcId:(id)id recognitionSausage:(id)sausage;
- (void)postTestResultSelectedWithRcId:(id)id;
- (void)publishFeedbackArbitrationParticipation:(id)participation;
- (void)purgeAnalyticsStoreWithCompletion:(id)completion;
- (void)pushMyriadAdvertisementContext:(id)context completionHandler:(id)handler;
- (void)pushSCDAAdvertisementContext:(id)context completionHandler:(id)handler;
- (void)removeMultiUserUser:(id)user completion:(id)completion;
- (void)removeMultiUserUserWithSharedUserId:(id)id completion:(id)completion;
- (void)replayAllRecordedViews:(unint64_t)views with:(id)with;
- (void)replayRecordedViewAt:(unint64_t)at with:(id)with;
- (void)resetAnalyticsStoreWithCompletion:(id)completion;
- (void)resetExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion;
- (void)resetProfileNames:(BOOL)names completion:(id)completion;
- (void)retrieveAccountMessageDictionariesWithReply:(id)reply;
- (void)routedHeadsetDoesSupportLiveTranslationWithCompletion:(id)completion;
- (void)saveAccountWithMessageDictionary:(id)dictionary setActive:(BOOL)active;
- (void)sendMetricsToServerWithCompletion:(id)completion;
- (void)sendSampledAudioToServerIgnoringMinimumSampleAge:(BOOL)age completion:(id)completion;
- (void)setActiveAccountIdentifier:(id)identifier;
- (void)setAllowJustSiriHomeKitSetting:(BOOL)setting withCompletion:(id)completion;
- (void)setAnnounceNotificationsInCarPlayTemporarilyDisabled:(BOOL)disabled;
- (void)setAnnounceNotificationsInCarPlayType:(int64_t)type;
- (void)setAssistantEnabled:(BOOL)enabled;
- (void)setConfigOverrides:(id)overrides completion:(id)completion;
- (void)setConversationAwarenessForCurrentlyRoutedDevice:(BOOL)device withCompletion:(id)completion;
- (void)setDictationAutoPunctuationEnabled:(BOOL)enabled;
- (void)setDictationEnabled:(BOOL)enabled;
- (void)setEnableAssistantLogging:(BOOL)logging;
- (void)setHeadGesturesForCurrentlyRoutedDevice:(BOOL)device withCompletion:(id)completion;
- (void)setIsHomePodInHH2Mode:(BOOL)mode completion:(id)completion;
- (void)setLanguage:(id)language outputVoice:(id)voice withCompletion:(id)completion;
- (void)setLanguage:(id)language withCompletion:(id)completion;
- (void)setNanoAlwaysShowRecognizedSpeech:(BOOL)speech withCompletion:(id)completion;
- (void)setNanoAssistantEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)setNanoCrownActivationEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)setNanoDictationAutoPunctuationEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)setNanoDictationEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)setNanoLanguage:(id)language withCompletion:(id)completion;
- (void)setNanoMessageWithoutConfirmationEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)setNanoOutputVoice:(id)voice withCompletion:(id)completion;
- (void)setNanoPhraseSpotterEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)setNanoRaiseToSpeakEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)setNanoSiriResponseShouldAlwaysPrint:(BOOL)print withCompletion:(id)completion;
- (void)setNanoTTSSpeakerVolume:(id)volume withCompletion:(id)completion;
- (void)setNanoUseDeviceSpeakerForTTS:(id)s withCompletion:(id)completion;
- (void)setOfflineDictationProfileOverridePath:(id)path completion:(id)completion;
- (void)setOnDeviceDictationAvailableAlertPresented:(BOOL)presented;
- (void)setOutputVoice:(id)voice withCompletion:(id)completion;
- (void)setPersonalVolumeForCurrentlyRoutedDevice:(BOOL)device withCompletion:(id)completion;
- (void)setRecognizeMyVoiceEnabled:(BOOL)enabled;
- (void)setReplayEnabled:(BOOL)enabled;
- (void)setReplayOverridePath:(id)path;
- (void)setSearchQueriesDataSharingStatus:(int64_t)status completion:(id)completion;
- (void)setSiriDataSharingHomePodSetupDeviceIsValid:(BOOL)valid completion:(id)completion;
- (void)setSiriDataSharingOptInAlertPresented:(BOOL)presented completion:(id)completion;
- (void)setSiriDataSharingOptInStatus:(int64_t)status completion:(id)completion;
- (void)setSiriDataSharingOptInStatus:(int64_t)status propagateToHomeAccessories:(BOOL)accessories source:(int64_t)source reason:(id)reason completion:(id)completion;
- (void)setSiriDesignModeEnabled:(BOOL)enabled completion:(id)completion;
- (void)setSiriOutputVolume:(float)volume forAudioRoute:(id)route completion:(id)completion;
- (void)setSpeechProfileExternalOfflineModelRootPath:(id)path completion:(id)completion;
- (void)setSupplementalLanguageDictionary:(id)dictionary forProduct:(id)product completion:(id)completion;
- (void)setSupplementalLanguages:(id)languages forProduct:(id)product forBuildVersion:(id)version completion:(id)completion;
- (void)shouldSuppressSiriDataSharingOptInAlertWithCompletion:(id)completion;
- (void)showHomeProfileNamesWithCompletion:(id)completion;
- (void)showLocalProfileNamesWithCompletion:(id)completion;
- (void)showMultiUserCompanionInfo:(id)info;
- (void)showMultiUserSharedUserIDsCompletion:(id)completion;
- (void)showMultiUsers:(id)users;
- (void)showPrimaryUserSharedUserIDWithCompletion:(id)completion;
- (void)siriDesignModeIsEnabled:(id)enabled;
- (void)startAudioPlaybackRequest:(id)request options:(unint64_t)options completion:(id)completion;
- (void)startMultiUserUIRequestWithText:(id)text expectedSpeakerSharedUserID:(id)d expectedSpeakerConfidenceScore:(unint64_t)score nonspeakerConfidenceScores:(id)scores completion:(id)completion;
- (void)startObservingBluetoothInEarDetectionStateForBTAddress:(id)address forObserverID:(unint64_t)d;
- (void)startObservingBluetoothWirelessSplitterSession;
- (void)startRemoteRequest:(id)request onPeer:(id)peer completion:(id)completion;
- (void)startUIMockServerRequestWithReplayFileURL:(id)l completion:(id)completion;
- (void)startUIRequestWithInfo:(id)info completion:(id)completion;
- (void)startUIRequestWithSpeechAudioFileURL:(id)l;
- (void)startUIRequestWithText:(id)text completion:(id)completion;
- (void)stopAllAudioPlaybackRequests:(BOOL)requests;
- (void)stopAudioPlaybackRequest:(id)request immediately:(BOOL)immediately;
- (void)stopObservingBluetoothInEarDetectionStateForObserverID:(unint64_t)d;
- (void)stopObservingBluetoothWirelessSplitterSession;
- (void)suppressLowStorageNotificationForLanguage:(id)language suppress:(BOOL)suppress;
- (void)synchronizeExperimentConfigurationsIfApplicableWithCompletion:(id)completion;
- (void)triggerABCForType:(id)type subType:(id)subType context:(id)context completionHandler:(id)handler;
- (void)trimRecordedAudioWithIdentifier:(id)identifier offset:(double)offset duration:(double)duration outputFileType:(int64_t)type completion:(id)completion;
- (void)updateMultiUserWithSharedUserId:(id)id companionInfo:(id)info completion:(id)completion;
- (void)updateVoiceIdScoreToUser:(id)user score:(id)score reset:(BOOL)reset completion:(id)completion;
@end

@implementation ADSettingsClient

- (void)connectionDisconnected
{
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  [(CoreEmbeddedSpeechRecognizer *)self->_localSpeechRecognizer invalidate];
  localSpeechRecognizer = self->_localSpeechRecognizer;
  self->_localSpeechRecognizer = 0;
}

- (void)getODDDeviceAggregationId:(id)id
{
  idCopy = id;
  v4 = objc_alloc_init(ADDeviceProperties);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10034BC28;
  v6[3] = &unk_10051D1D8;
  v7 = idCopy;
  v5 = idCopy;
  [(ADDeviceProperties *)v4 getODDDeviceAggregationIdWithCompletion:v6];
}

- (void)getODDDeviceProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = objc_alloc_init(ADDeviceProperties);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10034BCE4;
  v6[3] = &unk_10051D1B0;
  v7 = propertiesCopy;
  v5 = propertiesCopy;
  [(ADDeviceProperties *)v4 getODDDevicePropertiesWithCompletion:v6];
}

- (void)createRadarForCrashWithReason:(id)reason process:(id)process completion:(id)completion
{
  reasonCopy = reason;
  processCopy = process;
  completionCopy = completion;
  if (completionCopy)
  {
    if (AFDeviceSupportsFileACrashRadar())
    {
      v10 = objc_alloc_init(ADRadarManagerDraft);
      v11 = [@"Crash issue - " stringByAppendingString:processCopy];
      [(ADRadarManagerDraft *)v10 setTitle:v11];

      [(ADRadarManagerDraft *)v10 setProblemDescription:@"Radar triggered via crash signal trap. For more info, see: https://at.apple.com/SieS8l"];
      [(ADRadarManagerDraft *)v10 setIsUserInitiated:0];
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        title = [(ADRadarManagerDraft *)v10 title];
        *buf = 136315394;
        v21 = "[ADSettingsClient createRadarForCrashWithReason:process:completion:]";
        v22 = 2112;
        v23 = title;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Attempting to create radar draft for: %@", buf, 0x16u);
      }

      v15 = +[ADRadarManager sharedInstance];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10034BFD0;
      v18[3] = &unk_10051D2F0;
      v19 = completionCopy;
      [v15 createDraft:v10 withDisplayReason:0 completionHandler:v18];
    }

    else
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v21 = "[ADSettingsClient createRadarForCrashWithReason:process:completion:]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Feature not enabled", buf, 0xCu);
      }

      v10 = [AFError errorWithCode:32];
      (*(completionCopy + 2))(completionCopy, v10);
    }
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[ADSettingsClient createRadarForCrashWithReason:process:completion:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Completion is nil", buf, 0xCu);
    }
  }
}

- (void)getCurrentActiveLanguageCodesWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v6 = +[ADHomeInfoManager sharedInfoManager];
    getCurrentASRLanguages = [v6 getCurrentASRLanguages];
    (*(completion + 2))(completionCopy, getCurrentASRLanguages, 0);
  }
}

- (void)getAssistantIsEnabledForDeviceWithSiriInfo:(id)info withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [info objectForKey:@"peerData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[ADDeviceCirclePeerData alloc] initWithDictionaryRepresentation:v6];
  }

  else
  {
    v7 = 0;
  }

  assistantIdentifier = [(ADDeviceCirclePeerData *)v7 assistantIdentifier];

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[ADSettingsClient getAssistantIsEnabledForDeviceWithSiriInfo:withCompletion:]";
    v12 = 2112;
    v13 = assistantIdentifier;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Extracted assistant Id - %@", &v10, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (completionCopy)
  {
LABEL_6:
    completionCopy[2](completionCopy, assistantIdentifier != 0, 0);
  }

LABEL_7:
}

- (void)getAssetStatusForLanguage:(id)language completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    languageCopy = language;
    v7 = +[ADAssetManager sharedInstance];
    v8 = [v7 assetsAvailableStatusForLanguage:languageCopy];

    handlerCopy[2](handlerCopy, v8);
  }
}

- (void)areSiriSAEAssetsAvailable:(id)available
{
  availableCopy = available;
  if (availableCopy)
  {
    v4 = +[ADPreferences sharedPreferences];
    languageCode = [v4 languageCode];

    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[ADSettingsClient areSiriSAEAssetsAvailable:]";
      v14 = 2112;
      v15 = languageCode;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Fetching SAE assets availability for %@ locale", buf, 0x16u);
    }

    v7 = +[ADAssetManager sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10034C53C;
    v9[3] = &unk_10051D188;
    v10 = languageCode;
    v11 = availableCopy;
    v8 = languageCode;
    [v7 fetchAssetsAvailabilityForLanguage:v8 completion:v9];
  }
}

- (void)areSiriUODAssetsAvailable:(id)available
{
  if (available)
  {
    availableCopy = available;
    v4 = +[ADPreferences sharedPreferences];
    languageCode = [v4 languageCode];

    v5 = +[ADAssetManager sharedInstance];
    v6 = [v5 assetsAvailableStatusForLanguage:languageCode];

    v7 = AFUODStatusSupportedFull();
    availableCopy[2](availableCopy, v7, 0);
  }
}

- (void)fetchSharedUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = +[ADPreferences sharedPreferences];
  sharedUserIdentifier = [v6 sharedUserIdentifier];
  (*(identifier + 2))(identifierCopy, sharedUserIdentifier);
}

- (void)dumpAssistantState:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(ADAssistantStateDumpManager);
  dumpAssistantState = [(ADAssistantStateDumpManager *)v6 dumpAssistantState];
  (*(state + 2))(stateCopy, dumpAssistantState);
}

- (void)isVoiceTriggerEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = sub_10000F1C0();
  (*(enabled + 2))(enabledCopy, v4, 0);
}

- (void)setAllowJustSiriHomeKitSetting:(BOOL)setting withCompletion:(id)completion
{
  settingCopy = setting;
  completionCopy = completion;
  v6 = +[ADHomeInfoManager sharedInfoManager];
  [v6 setAllowJustSiriHomeKitSetting:settingCopy withCompletion:completionCopy];
}

- (void)isJustSiriEnabledInTheHome:(id)home
{
  homeCopy = home;
  v4 = +[ADHomeInfoManager sharedInfoManager];
  [v4 isJustSiriEnabledInTheHome:homeCopy];
}

- (void)availableLanguagesInTheHome:(id)home
{
  homeCopy = home;
  v4 = +[ADHomeInfoManager sharedInfoManager];
  [v4 availableLanguagesInTheHome:homeCopy];
}

- (void)setRecognizeMyVoiceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[ADHomeInfoManager sharedInfoManager];
  [v4 setRecognizeMyVoiceEnabled:enabledCopy];
}

- (void)getCurrentAccessoryInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v4 = +[ADHomeInfoManager sharedInfoManager];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10034CAF0;
    v5[3] = &unk_10051D160;
    v6 = completionCopy;
    [v4 getCurrentAccessoryInfoWithCompletion:v5];
  }
}

- (void)triggerABCForType:(id)type subType:(id)subType context:(id)context completionHandler:(id)handler
{
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  handlerCopy = handler;
  v13 = dispatch_get_global_queue(-2, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10034CC20;
  v18[3] = &unk_10051E0D8;
  v19 = contextCopy;
  v20 = typeCopy;
  v21 = subTypeCopy;
  v22 = handlerCopy;
  v14 = subTypeCopy;
  v15 = typeCopy;
  v16 = handlerCopy;
  v17 = contextCopy;
  dispatch_async(v13, v18);
}

- (void)getSidekickBoostsFileWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADMyriadSettingsManager sharedSettingsManager];
  [v4 getSidekickBoostsFileWithCompletion:completionCopy];
}

- (void)getTrialEnables:(id)enables doubleFactors:(id)factors withCompletion:(id)completion
{
  completionCopy = completion;
  factorsCopy = factors;
  enablesCopy = enables;
  v10 = +[ADMyriadSettingsManager sharedSettingsManager];
  [v10 getTrialEnables:enablesCopy doubleFactors:factorsCopy withCompletion:completionCopy];
}

- (void)getAccessoryInfoForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 getAccessoryInfoForAccessoryWithUUID:dCopy completionHandler:handlerCopy];
}

- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 getSpeakerCapabilityForAccessoryWithUUID:dCopy completionHandler:handlerCopy];
}

- (void)pushSCDAAdvertisementContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 pushSCDAAdvertisementContext:contextCopy completionHandler:handlerCopy];
}

- (void)pushMyriadAdvertisementContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 pushMyriadAdvertisementContext:contextCopy completionHandler:handlerCopy];
}

- (void)getCurrentRequestIsWatchAuthenticatedWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 isWatchAuthenticatedWithCompletion:completionCopy];
}

- (void)getRecordedAudioDirectoryPathsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 getRecordedAudioDirectoryPathsWithCompletion:completionCopy];
}

- (void)trimRecordedAudioWithIdentifier:(id)identifier offset:(double)offset duration:(double)duration outputFileType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v13 = +[ADCommandCenter sharedCommandCenter];
  [v13 trimRecordedAudioWithIdentifier:identifierCopy offset:type duration:completionCopy outputFileType:offset completion:duration];
}

- (void)accessRecordedAudioWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 accessRecordedAudioWithIdentifier:identifierCopy completion:completionCopy];
}

- (void)siriDesignModeIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  IsEnabled = _AFPreferencesSiriDesignModeIsEnabled();
  v4 = enabledCopy;
  if (enabledCopy)
  {
    (*(enabledCopy + 2))(enabledCopy, IsEnabled);
    v4 = enabledCopy;
  }
}

- (void)setSiriDesignModeEnabled:(BOOL)enabled completion:(id)completion
{
  completionCopy = completion;
  _AFPreferencesSetSiriDesignModeEnabled();
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v4 = completionCopy;
  }
}

- (void)setOnDeviceDictationAvailableAlertPresented:(BOOL)presented
{
  presentedCopy = presented;
  v4 = +[AFPreferences sharedPreferences];
  [v4 _setOnDeviceDictationAvailableAlertPresentedLocal:presentedCopy];
}

- (void)isSearchDataSharingStatusForced:(id)forced
{
  forcedCopy = forced;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADSettingsClient isSearchDataSharingStatusForced:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  v5 = +[ADPreferences sharedPreferences];
  isSearchDataSharingStatusForced = [v5 isSearchDataSharingStatusForced];

  if (forcedCopy)
  {
    forcedCopy[2](forcedCopy, isSearchDataSharingStatusForced);
  }
}

- (void)getSearchQueriesDataSharingStatus:(id)status
{
  statusCopy = status;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADSettingsClient getSearchQueriesDataSharingStatus:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  v5 = +[ADPreferences sharedPreferences];
  searchQueriesDataSharingStatus = [v5 searchQueriesDataSharingStatus];

  if (statusCopy)
  {
    statusCopy[2](statusCopy, searchQueriesDataSharingStatus);
  }
}

- (void)setSearchQueriesDataSharingStatus:(int64_t)status completion:(id)completion
{
  completionCopy = completion;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = AFSearchQueriesDataSharingStatusGetName();
    v10 = 136315395;
    v11 = "[ADSettingsClient setSearchQueriesDataSharingStatus:completion:]";
    v12 = 2113;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Setting Search Queries Data Sharing option to = %{private}@", &v10, 0x16u);
  }

  v9 = +[ADPreferences sharedPreferences];
  [v9 setSearchQueriesDataSharingStatus:status];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)deleteSiriHistoryWithContext:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADSettingsClient deleteSiriHistoryWithContext:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v8 = +[ADCommandCenter sharedCommandCenter];
  [v8 _deleteSiriHistoryWithContext:contextCopy withCompletion:completionCopy];
}

- (void)shouldSuppressSiriDataSharingOptInAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  ShouldSuppressSiriDataSharingOptInAlert = _AFPreferencesShouldSuppressSiriDataSharingOptInAlert();
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, ShouldSuppressSiriDataSharingOptInAlert);
    v4 = completionCopy;
  }
}

- (void)sendSampledAudioToServerIgnoringMinimumSampleAge:(BOOL)age completion:(id)completion
{
  ageCopy = age;
  completionCopy = completion;
  permitMonitor = self->_permitMonitor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10034D84C;
  v9[3] = &unk_10051E038;
  v10 = 0;
  v11 = completionCopy;
  v8 = completionCopy;
  sub_1002743D8(1, ageCopy, permitMonitor, v9);
}

- (void)setIsHomePodInHH2Mode:(BOOL)mode completion:(id)completion
{
  modeCopy = mode;
  completionCopy = completion;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADSettingsClient setIsHomePodInHH2Mode:completion:]";
    v9 = 1024;
    v10 = modeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Setting isHomePodInHH2Mode = %d", &v7, 0x12u);
  }

  _AFPreferencesSetIsHomePodInHH2Mode();
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)setSiriDataSharingHomePodSetupDeviceIsValid:(BOOL)valid completion:(id)completion
{
  validCopy = valid;
  completionCopy = completion;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADSettingsClient setSiriDataSharingHomePodSetupDeviceIsValid:completion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v7 = +[ADPreferences sharedPreferences];
  [v7 setSiriDataSharingHomePodSetupDeviceIsValid:validCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)setSiriDataSharingOptInAlertPresented:(BOOL)presented completion:(id)completion
{
  completionCopy = completion;
  _AFPreferencesSetSiriDataSharingOptInAlertPresented();
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v4 = completionCopy;
  }
}

- (void)setSiriDataSharingOptInStatus:(int64_t)status propagateToHomeAccessories:(BOOL)accessories source:(int64_t)source reason:(id)reason completion:(id)completion
{
  accessoriesCopy = accessories;
  reasonCopy = reason;
  completionCopy = completion;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[ADSettingsClient setSiriDataSharingOptInStatus:propagateToHomeAccessories:source:reason:completion:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v15 = +[ADPreferences sharedPreferences];
  [v15 setSiriDataSharingOptInStatus:status propagateToHomeAccessories:accessoriesCopy source:source reason:reasonCopy completion:0];

  if (status != 1)
  {
    v16 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10034DD7C;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(v16, block);

    v17 = objc_alloc_init(ADAnalyticsFBFDeliveryInfrastructure);
    [(ADAnalyticsFBFDeliveryInfrastructure *)v17 deliverLogViewerIdentifier:0];
  }

  v18 = +[ADCommandCenter sharedQueue];
  dispatch_async(v18, &stru_10051D0F8);

  if (accessoriesCopy)
  {
    if (+[AFFeatureFlags isSiriDataSharingRepromptEnabled])
    {
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v24 = "[ADSettingsClient setSiriDataSharingOptInStatus:propagateToHomeAccessories:source:reason:completion:]";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Triggering propagation of opt-in status to home accessories", buf, 0xCu);
      }

      v20 = +[ADHomeDataSharingRepromptManager sharedManager];
      [v20 propagateToAllHomeAccessoriesAfterReprompt:status source:source reason:reasonCopy completion:&stru_10051D138];
    }

    else
    {
      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v24 = "[ADSettingsClient setSiriDataSharingOptInStatus:propagateToHomeAccessories:source:reason:completion:]";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Not propagating to home accessories because siri data sharing reprompt feature flag is disabled.", buf, 0xCu);
      }
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)getSiriDataSharingOptInStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADSettingsClient getSiriDataSharingOptInStatusWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  v5 = +[ADPreferences sharedPreferences];
  siriDataSharingOptInStatus = [v5 siriDataSharingOptInStatus];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, siriDataSharingOptInStatus);
  }
}

- (void)setSiriDataSharingOptInStatus:(int64_t)status completion:(id)completion
{
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADSettingsClient setSiriDataSharingOptInStatus:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10034E248;
  v9[3] = &unk_10051D2F0;
  v10 = completionCopy;
  v8 = completionCopy;
  [(ADSettingsClient *)self setSiriDataSharingOptInStatus:status propagateToHomeAccessories:0 source:0 reason:@"Legacy setter" completion:v9];
}

- (void)getShowAppsBehindSiriInCarPlayEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  ShowAppsBehindSiriInCarPlayEnabled = _AFPreferencesGetShowAppsBehindSiriInCarPlayEnabled();
  (*(completion + 2))(completionCopy, ShowAppsBehindSiriInCarPlayEnabled);
}

- (void)getMessageWithoutConfirmationHeadphonesEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  MessageWithoutConfirmationHeadphonesEnabled = _AFPreferencesGetMessageWithoutConfirmationHeadphonesEnabled();
  (*(completion + 2))(completionCopy, MessageWithoutConfirmationHeadphonesEnabled);
}

- (void)getMessageWithoutConfirmationInCarPlayEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  MessageWithoutConfirmationInCarPlayEnabled = _AFPreferencesGetMessageWithoutConfirmationInCarPlayEnabled();
  (*(completion + 2))(completionCopy, MessageWithoutConfirmationInCarPlayEnabled);
}

- (void)getMessageWithoutConfirmationEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  MessageWithoutConfirmationEnabled = _AFPreferencesGetMessageWithoutConfirmationEnabled();
  (*(completion + 2))(completionCopy, MessageWithoutConfirmationEnabled);
}

- (void)clearAnnounceNotificationsInCarPlayType
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[ADSettingsClient clearAnnounceNotificationsInCarPlayType]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Clearing announce notifications in CarPlay type.", &v3, 0xCu);
  }

  _AFPreferencesClearAnnounceNotificationsInCarPlayType();
  [AFTipKitDonator donateAnnounceNotificationsInCarPlaySettingsChange:_AFPreferencesAnnounceNotificationsInCarPlayType()];
}

- (void)setAnnounceNotificationsInCarPlayType:(int64_t)type
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = AFSiriCarPlayAnnounceEnablementTypeGetName();
    v7 = 136315394;
    v8 = "[ADSettingsClient setAnnounceNotificationsInCarPlayType:]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Setting announce notifications in CarPlay type to: %@", &v7, 0x16u);
  }

  _AFPreferencesSetAnnounceNotificationsInCarPlayType();
  [AFTipKitDonator donateAnnounceNotificationsInCarPlaySettingsChange:type];
}

- (void)getAnnounceNotificationsInCarPlayTypeWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _AFPreferencesAnnounceNotificationsInCarPlayType();
  (*(completion + 2))(completionCopy, v4);
}

- (void)clearAnnounceNotificationsInCarPlayTemporarilyDisabled
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[ADSettingsClient clearAnnounceNotificationsInCarPlayTemporarilyDisabled]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Clearing temporarily disable announce notifications in CarPlay.", &v3, 0xCu);
  }

  _AFPreferencesClearAnnounceNotificationsInCarPlayTemporarilyDisabled();
}

- (void)setAnnounceNotificationsInCarPlayTemporarilyDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADSettingsClient setAnnounceNotificationsInCarPlayTemporarilyDisabled:]";
    v7 = 1024;
    v8 = disabledCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Setting temporarily disable announce notifications in CarPlay: %i", &v5, 0x12u);
  }

  _AFPreferencesSetAnnounceNotificationsInCarPlayTemporarilyDisabled();
}

- (void)getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _AFPreferencesAnnounceNotificationsInCarPlayTemporarilyDisabled();
  (*(completion + 2))(completionCopy, v4);
}

- (void)fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[(AFHeadphonesAnnouncementRequestCapabilityProvider *)ADHeadphonesAnnouncementRequestCapabilityProvider];
  [v4 fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:completionCopy];
}

- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForApp:(id)app platform:(int64_t)platform completion:(id)completion
{
  completionCopy = completion;
  v7 = _AFPreferencesAnnounceNotificationsTemporarilyDisabledEndDateForAppOnPlatform();
  (*(completion + 2))(completionCopy, v7);
}

- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform:(int64_t)platform completion:(id)completion
{
  completionCopy = completion;
  v6 = _AFPreferencesAnnounceNotificationsTemporarilyDisabledEndDateForPlatform();
  (*(completion + 2))(completionCopy, v6);
}

- (void)getSpokenNotificationShouldSkipTriggerlessRepliesWithCompletion:(id)completion
{
  completionCopy = completion;
  ShouldSkipTriggerlessReplies = _AFPreferencesSpokenNotificationShouldSkipTriggerlessReplies();
  (*(completion + 2))(completionCopy, ShouldSkipTriggerlessReplies);
}

- (void)getSpokenNotificationShouldAnnounceAllNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  ShouldAnnounceAllNotifications = _AFPreferencesSpokenNotificationShouldAnnounceAllNotifications();
  (*(completion + 2))(completionCopy, ShouldAnnounceAllNotifications);
}

- (void)getSpokenNotificationIsAlwaysOpportuneWithCompletion:(id)completion
{
  completionCopy = completion;
  IsAlwaysOpportune = _AFPreferencesSpokenNotificationIsAlwaysOpportune();
  (*(completion + 2))(completionCopy, IsAlwaysOpportune);
}

- (void)stopObservingBluetoothInEarDetectionStateForObserverID:(unint64_t)d
{
  v4 = +[ADBluetoothInEarDetectionStateObserver sharedObserver];
  [v4 stopObservingForObserverID:d];
}

- (void)startObservingBluetoothInEarDetectionStateForBTAddress:(id)address forObserverID:(unint64_t)d
{
  addressCopy = address;
  v6 = +[ADBluetoothInEarDetectionStateObserver sharedObserver];
  [v6 startObservingForBTAddress:addressCopy forObserverID:d];
}

- (void)postJSDiscoveryNotificationForBTDeviceWithInfo:(id)info withCompletion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v46 = "[ADSettingsClient postJSDiscoveryNotificationForBTDeviceWithInfo:withCompletion:]";
    v47 = 2112;
    v48 = infoCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s 🎧 Posting JS discovery notification for %@", buf, 0x16u);
  }

  v40 = [[ADUserNotificationServiceProvider alloc] initWithConnection:0 bundleIdentifier:0 notificationCategories:0];
  v8 = objc_alloc_init(UNMutableNotificationContent);
  v9 = +[ADPreferences sharedPreferences];
  languageCode = [v9 languageCode];

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v46 = "[ADSettingsClient postJSDiscoveryNotificationForBTDeviceWithInfo:withCompletion:]";
    v47 = 2112;
    v48 = languageCode;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s 🎧 JS discovery notification languageCode: %@", buf, 0x16u);
  }

  v12 = +[AFLocalization sharedInstance];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v41 = [v12 localizedStringForKey:@"ASSISTANT_SERVICES_BT_JS_DISCOVERY_NOTIFICATION_TITLE" table:0 bundle:v13 languageCode:languageCode];

  v14 = +[AFLocalization sharedInstance];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v39 = [v14 localizedStringForKey:@"ASSISTANT_SERVICES_BT_JS_DISCOVERY_NOTIFICATION_BODY" table:0 bundle:v15 languageCode:languageCode];

  v37 = [NSURL URLWithString:@"prefs:root=SIRI"];
  v16 = +[VTPreferences sharedPreferences];
  v38 = languageCode;
  v36 = [v16 localizedTriggerPhraseForLanguageCode:languageCode];

  name = [infoCopy name];
  v18 = +[ADBluetoothManager sharedInstance];
  address = [infoCopy address];
  v20 = [v18 deviceWithAddress:address];

  v35 = v20;
  deviceInfo = [v20 deviceInfo];
  name2 = [deviceInfo name];
  v34 = deviceInfo;
  if ([name2 length])
  {
    v23 = completionCopy;
    selfCopy = self;
    name3 = [deviceInfo name];
    v26 = [name isEqualToString:name3];

    if ((v26 & 1) == 0)
    {
      name4 = [deviceInfo name];

      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v46 = "[ADSettingsClient postJSDiscoveryNotificationForBTDeviceWithInfo:withCompletion:]";
        v47 = 2112;
        v48 = name4;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s 🎧 Using updated name %@ for JS discovery notification", buf, 0x16u);
      }

      name = name4;
    }

    self = selfCopy;
    completionCopy = v23;
  }

  else
  {
  }

  [v8 setTitle:v41];
  v29 = [(ADSettingsClient *)self _localizedBodyWithFormat:v39 forTriggerPhrase:v36 andName:name];
  [v8 setBody:v29];

  [v8 setHasDefaultAction:1];
  [v8 setDefaultActionURL:v37];
  [v8 setShouldBackgroundDefaultAction:1];
  address2 = [infoCopy address];
  v31 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.siri.notification.js.discovery.%lull", [address2 hash]);

  v32 = [UNNotificationRequest requestWithIdentifier:v31 content:v8 trigger:0];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10034F0B4;
  v43[3] = &unk_10051D2F0;
  v44 = completionCopy;
  v33 = completionCopy;
  [(ADUserNotificationServiceProvider *)v40 postNotificationRequest:v32 completion:v43];
}

- (id)_localizedBodyWithFormat:(id)format forTriggerPhrase:(id)phrase andName:(id)name
{
  nameCopy = name;
  v8 = [format stringByReplacingOccurrencesOfString:@"%TRIGGER_PHRASE%" withString:phrase];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"%HEADPHONES_NAME%" withString:nameCopy];

  return v9;
}

- (void)getInEarDetectionStateForBTAddress:(id)address withCompletion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[ADSettingsClient getInEarDetectionStateForBTAddress:withCompletion:]";
    v15 = 2112;
    v16 = addressCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Getting in-ear detection state for %@", buf, 0x16u);
  }

  v8 = +[ADBluetoothManager sharedInstance];
  v9 = [v8 deviceWithAddress:addressCopy];

  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10034F2E0;
    v10[3] = &unk_10051D0D8;
    v11 = addressCopy;
    v12 = completionCopy;
    [v9 getHeadphoneInEarDetectionState:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)stopObservingBluetoothWirelessSplitterSession
{
  v2 = +[ADBluetoothWirelessSplitterSessionObserver sharedWirelessSplitterSessionObserver];
  [v2 stopObserving];
}

- (void)startObservingBluetoothWirelessSplitterSession
{
  v2 = +[ADBluetoothWirelessSplitterSessionObserver sharedWirelessSplitterSessionObserver];
  [v2 startObserving];
}

- (void)getBluetoothWirelessSplitterSessionInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADBluetoothManager sharedInstance];
  wirelessSplitterSession = [v4 wirelessSplitterSession];

  if (wirelessSplitterSession)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10034F540;
    v6[3] = &unk_10051D0B0;
    v7 = completionCopy;
    [wirelessSplitterSession getSessionInfo:v6];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)getConnectedBluetoothDeviceInfoArrayWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[ADBluetoothManager sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10034F638;
  v8[3] = &unk_10051DD70;
  v9 = v4;
  v10 = completionCopy;
  v6 = completionCopy;
  v7 = v4;
  [v5 getConnectedDevicesWithCompletion:v8];
}

- (void)getBluetoothDeviceInfoWithUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[ADBluetoothManager sharedInstance];
  v8 = [v7 deviceWithUID:dCopy];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10034FA98;
  v10[3] = &unk_10051D060;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 getDeviceInfo:v10];
}

- (void)getBluetoothDeviceInfoWithAddress:(id)address completion:(id)completion
{
  completionCopy = completion;
  addressCopy = address;
  v7 = +[ADBluetoothManager sharedInstance];
  v8 = [v7 deviceWithAddress:addressCopy];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10034FB8C;
  v10[3] = &unk_10051D060;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 getDeviceInfo:v10];
}

- (void)mockHeadGesture:(int64_t)gesture schedule:(BOOL)schedule withCompletion:(id)completion
{
  scheduleCopy = schedule;
  completionCopy = completion;
  v8 = +[(AFSiriHeadphonesMonitor *)ADSiriHeadphonesMonitor];
  [v8 mockHeadGesture:gesture schedule:scheduleCopy withCompletion:completionCopy];
}

- (void)routedHeadsetDoesSupportLiveTranslationWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.assistant.settings-client.connected-bluetooth-devices", v4);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034FCEC;
  block[3] = &unk_10051CF58;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);
}

- (void)getHeadGesturesForCurrentlyRoutedDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10034FE60;
  v5[3] = &unk_10051D038;
  deviceCopy = device;
  v4 = deviceCopy;
  [(ADSettingsClient *)self _executeBlockWithCurrentlyRoutedDevice:v5 withCompletion:v4];
}

- (void)setHeadGesturesForCurrentlyRoutedDevice:(BOOL)device withCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10034FF0C;
  v6[3] = &unk_10051D010;
  deviceCopy = device;
  completionCopy = completion;
  v5 = completionCopy;
  [(ADSettingsClient *)self _executeBlockWithCurrentlyRoutedDevice:v6 withCompletion:v5];
}

- (void)getPersonalVolumeForCurrentlyRoutedDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10034FFB4;
  v5[3] = &unk_10051D038;
  deviceCopy = device;
  v4 = deviceCopy;
  [(ADSettingsClient *)self _executeBlockWithCurrentlyRoutedDevice:v5 withCompletion:v4];
}

- (void)setPersonalVolumeForCurrentlyRoutedDevice:(BOOL)device withCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100350060;
  v6[3] = &unk_10051D010;
  deviceCopy = device;
  completionCopy = completion;
  v5 = completionCopy;
  [(ADSettingsClient *)self _executeBlockWithCurrentlyRoutedDevice:v6 withCompletion:v5];
}

- (void)getConversationAwarenessForCurrentlyRoutedDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100350108;
  v5[3] = &unk_10051D038;
  deviceCopy = device;
  v4 = deviceCopy;
  [(ADSettingsClient *)self _executeBlockWithCurrentlyRoutedDevice:v5 withCompletion:v4];
}

- (void)setConversationAwarenessForCurrentlyRoutedDevice:(BOOL)device withCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003501B4;
  v6[3] = &unk_10051D010;
  deviceCopy = device;
  completionCopy = completion;
  v5 = completionCopy;
  [(ADSettingsClient *)self _executeBlockWithCurrentlyRoutedDevice:v6 withCompletion:v5];
}

- (void)_executeBlockWithCurrentlyRoutedDevice:(id)device withCompletion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v7 = sub_10001136C(0);
  btAddress = [v7 btAddress];
  v9 = +[ADBluetoothManager sharedInstance];
  v10 = [v9 deviceWithAddress:btAddress];

  if (v10)
  {
    deviceCopy[2](deviceCopy, v10);
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[ADSettingsClient _executeBlockWithCurrentlyRoutedDevice:withCompletion:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to get bluetooth device", &v13, 0xCu);
    }

    v12 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_10051CFE8];
    completionCopy[2](completionCopy, v12);
  }
}

- (void)setSiriOutputVolume:(float)volume forAudioRoute:(id)route completion:(id)completion
{
  completionCopy = completion;
  routeCopy = route;
  v9 = +[ADCommandCenter sharedCommandCenter];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100350464;
  v12[3] = &unk_10051D2F0;
  v13 = completionCopy;
  v10 = completionCopy;
  *&v11 = volume;
  [v9 setSiriOutputVolume:routeCopy forAudioRoute:1 operationType:v12 completion:v11];
}

- (void)getSiriOutputVolumeForAudioRoute:(id)route completion:(id)completion
{
  completionCopy = completion;
  routeCopy = route;
  v7 = +[ADCommandCenter sharedCommandCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100350548;
  v9[3] = &unk_10051CFA8;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 getSiriOutputVolumeForAudioRoute:routeCopy completion:v9];
}

- (void)fetchExperimentContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADExperimentManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10035060C;
  v6[3] = &unk_10051CF80;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 getContextWithCompletion:v6];
}

- (void)fetchExperimentConfigurationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADExperimentManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003506D4;
  v6[3] = &unk_10051CD10;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 getConfigurationsWithCompletion:v6];
}

- (void)sendMetricsToServerWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003507B8;
  v6[3] = &unk_10051CF58;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 sendMetricsToServerWithTimeout:0 requiresUnlimitedPower:0 requiresActiveSession:0 purgesOversizedStorage:1 ignoresMetricsSenderDisabledSetting:0 scheduledActivity:v6 completion:3600.0];
}

- (void)resetAnalyticsStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADAnalyticsService sharedService];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100350880;
  v6[3] = &unk_10051CF30;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 accessStoreUsingBlock:v6];
}

- (void)purgeAnalyticsStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADAnalyticsService sharedService];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003509D4;
  v6[3] = &unk_10051CF30;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 accessStoreUsingBlock:v6];
}

- (void)fetchEventRecordsFromAnalyticsStoreAtPath:(id)path completion:(id)completion
{
  pathCopy = path;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100350BD4;
  v12[3] = &unk_10051CF30;
  completionCopy = completion;
  v13 = completionCopy;
  v7 = objc_retainBlock(v12);
  if (pathCopy)
  {
    v8 = [[ADAnalyticsStore alloc] initWithPath:pathCopy];
    (v7[2])(v7, v8);
  }

  else
  {
    v9 = +[ADAnalyticsService sharedService];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100350BE4;
    v10[3] = &unk_10051CF30;
    v11 = v7;
    [v9 accessStoreUsingBlock:v10];

    v8 = v11;
  }
}

- (void)homeOnboardingFlowInvoked:(BOOL)invoked completion:(id)completion
{
  invokedCopy = invoked;
  completionCopy = completion;
  v5 = +[ADPreferences sharedPreferences];
  [v5 setMultiUserIsOnboardingDevice:invokedCopy];

  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v6 = completionCopy;
  }
}

- (void)fetchMultiUserVoiceIdentificationSetting:(id)setting
{
  if (setting)
  {
    settingCopy = setting;
    v4 = +[ADPreferences sharedPreferences];
    settingCopy[2](settingCopy, [v4 multiUserVoiceIdentification]);
  }
}

- (void)getSharedUserID:(id)d
{
  if (d)
  {
    dCopy = d;
    v6 = +[ADPreferences sharedPreferences];
    sharedUserIdentifier = [v6 sharedUserIdentifier];
    loggingSharedUserIdentifier = [v6 loggingSharedUserIdentifier];
    dCopy[2](dCopy, sharedUserIdentifier, loggingSharedUserIdentifier, 0);
  }
}

- (void)updateMultiUserWithSharedUserId:(id)id companionInfo:(id)info completion:(id)completion
{
  idCopy = id;
  infoCopy = info;
  completionCopy = completion;
  v9 = +[ADMultiUserService sharedService];
  v10 = v9;
  if (v9)
  {
    [v9 updateMultiUserWithSharedUserId:idCopy companionInfo:infoCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v11 = [AFError errorWithCode:13];
    completionCopy[2](completionCopy, v11);
  }
}

- (void)getSharedUserIdForHomeUserId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v6 = +[ADMultiUserService sharedService];
  v7 = v6;
  if (v6)
  {
    [v6 getSharedUserIdForHomeUserId:idCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v8 = [AFError errorWithCode:13];
    completionCopy[2](completionCopy, 0, v8);
  }
}

- (void)getHomeUserIdForSharedUserId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v6 = +[ADMultiUserService sharedService];
  v7 = v6;
  if (v6)
  {
    [v6 getHomeUserIdForSharedUserId:idCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v8 = [AFError errorWithCode:13];
    completionCopy[2](completionCopy, 0, v8);
  }
}

- (void)updateVoiceIdScoreToUser:(id)user score:(id)score reset:(BOOL)reset completion:(id)completion
{
  resetCopy = reset;
  userCopy = user;
  scoreCopy = score;
  completionCopy = completion;
  if (AFSupportsMultiUser())
  {
    v11 = +[ADMultiUserTestSupport sharedService];
    [v11 updateVoiceIdScoreToUser:userCopy score:scoreCopy reset:resetCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)showHomeProfileNamesWithCompletion:(id)completion
{
  completionCopy = completion;
  AFSupportsMultiUser();
  v3 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v3 = completionCopy;
  }
}

- (void)resetProfileNames:(BOOL)names completion:(id)completion
{
  completionCopy = completion;
  AFSupportsMultiUser();
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v4 = completionCopy;
  }
}

- (void)showLocalProfileNamesWithCompletion:(id)completion
{
  completionCopy = completion;
  AFSupportsMultiUser();
  v3 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v3 = completionCopy;
  }
}

- (void)showMultiUserSharedUserIDsCompletion:(id)completion
{
  completionCopy = completion;
  if (AFSupportsMultiUser())
  {
    v3 = +[ADMultiUserService sharedService];
    [v3 showMultiUserSharedUserIDsCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)showPrimaryUserSharedUserIDWithCompletion:(id)completion
{
  completionCopy = completion;
  if (AFSupportsMultiUser())
  {
    v3 = +[ADMultiUserService sharedService];
    [v3 showPrimaryUserSharedUserIDWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)getMultiUserCompanionInfo:(id)info
{
  infoCopy = info;
  if (AFSupportsMultiUser())
  {
    v3 = +[ADMultiUserService sharedService];
    [v3 getMultiUserCompanionInfoWithCompletion:infoCopy];
  }

  else if (infoCopy)
  {
    infoCopy[2](infoCopy, 0);
  }
}

- (void)showMultiUserCompanionInfo:(id)info
{
  infoCopy = info;
  if (AFSupportsMultiUser())
  {
    v4 = +[ADMultiUserService sharedService];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100351408;
    v5[3] = &unk_10051CF08;
    v6 = infoCopy;
    [v4 getMultiUserCompanionInfoWithCompletion:v5];
  }

  else if (infoCopy)
  {
    (*(infoCopy + 2))(infoCopy, 0);
  }
}

- (void)showMultiUsers:(id)users
{
  usersCopy = users;
  if (AFSupportsMultiUser())
  {
    v3 = +[ADMultiUserService sharedService];
    [v3 showMultiUsersWithCompletion:usersCopy];
  }

  else if (usersCopy)
  {
    usersCopy[2](usersCopy, 0);
  }
}

- (void)removeMultiUserUserWithSharedUserId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (AFSupportsMultiUser())
  {
    v6 = +[ADMultiUserService sharedService];
    [v6 removeUserWithSharedUserID:idCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    completionCopy[2](completionCopy, v6);
  }

LABEL_6:
}

- (void)removeMultiUserUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if (AFSupportsMultiUser())
  {
    v6 = +[ADMultiUserService sharedService];
    [v6 removeUserWithHomeUUID:userCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    completionCopy[2](completionCopy, v6);
  }

LABEL_6:
}

- (void)addMultiUserUser:(id)user sharedId:(id)id loggableSharedId:(id)sharedId iCloudAltDSID:(id)d enrollmentName:(id)name isPrimary:(BOOL)primary completion:(id)completion
{
  primaryCopy = primary;
  userCopy = user;
  idCopy = id;
  sharedIdCopy = sharedId;
  dCopy = d;
  nameCopy = name;
  completionCopy = completion;
  if (AFSupportsMultiUser())
  {
    v19 = +[ADMultiUserService sharedService];
    [v19 addUser:userCopy sharedUserId:idCopy loggableSharedUserId:sharedIdCopy iCloudAltDSID:dCopy enrollmentName:nameCopy isPrimary:primaryCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v19 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6002 userInfo:&__NSDictionary0__struct];
    completionCopy[2](completionCopy, v19);
  }

LABEL_6:
}

- (void)getPersonalMultiUserDeviceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = identifiersCopy;
  if (identifiersCopy)
  {
    v20 = identifiersCopy;
    v21 = objc_alloc_init(NSMutableArray);
    v5 = +[ADHomeInfoManager sharedInfoManager];
    accessoriesWithPersonalRequestsEnabled = [v5 accessoriesWithPersonalRequestsEnabled];

    v7 = +[ADDeviceCircleManager sharedInstance];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = accessoriesWithPersonalRequestsEnabled;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100351B70;
          v22[3] = &unk_10051D9B8;
          v22[4] = v13;
          v14 = [AFPeerInfo newWithBuilder:v22];
          v15 = [v7 managedPeerInfoMatchingPeerInfo:v14];

          if (v15)
          {
            rapportEffectiveIdentifier = [v15 rapportEffectiveIdentifier];
            [v21 addObject:rapportEffectiveIdentifier];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v10);
    }

    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v18 = v17;
      v19 = [v21 count];
      *buf = 136315394;
      v28 = "[ADSettingsClient getPersonalMultiUserDeviceIdentifiers:]";
      v29 = 2048;
      v30 = v19;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s Found %lu MU device identifiers", buf, 0x16u);
    }

    v4 = v20;
    v20[2](v20, v21);
  }
}

- (void)getSharedCompanionInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v4 = +[ADCompanionService sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100351C80;
    v5[3] = &unk_10051CEE0;
    v6 = infoCopy;
    [v4 getSharedCompanionInfoWithCompletion:v5];
  }
}

- (void)setNanoAlwaysShowRecognizedSpeech:(BOOL)speech withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoSiriResponseShouldAlwaysPrint:(BOOL)print withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoMessageWithoutConfirmationEnabled:(BOOL)enabled withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoCrownActivationEnabled:(BOOL)enabled withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoLanguage:(id)language withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoOutputVoice:(id)voice withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoTTSSpeakerVolume:(id)volume withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoUseDeviceSpeakerForTTS:(id)s withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoRaiseToSpeakEnabled:(BOOL)enabled withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoPhraseSpotterEnabled:(BOOL)enabled withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoDictationAutoPunctuationEnabled:(BOOL)enabled withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoDictationEnabled:(BOOL)enabled withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setNanoAssistantEnabled:(BOOL)enabled withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)publishFeedbackArbitrationParticipation:(id)participation
{
  participationCopy = participation;
  v4 = +[ADArbitrationFeedbackManager sharedManager];
  [v4 publishParticipation:participationCopy];
}

- (void)getStereoPairState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v5 = stateCopy;
    if (AFIsHorseman())
    {
      v4 = +[ADCompanionService sharedInstance];
      [v4 isStereoPairConfigured];
    }

    else
    {
      v4 = [AFError errorWithCode:13];
    }

    v5[2]();

    stateCopy = v5;
  }
}

- (void)getStereoPartnerLastMyriadWinDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v4 = +[ADMyriadService sharedService];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100351F88;
    v5[3] = &unk_10051CEB8;
    v6 = dateCopy;
    [v4 lastMyriadWinForStereoPartner:v5];
  }
}

- (void)getMeCard:(id)card
{
  cardCopy = card;
  v4 = +[ADAssistantDataManager sharedDataManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100352044;
  v6[3] = &unk_10051CD10;
  v7 = cardCopy;
  v5 = cardCopy;
  [v4 getMeCardsWithCompletion:v6];
}

- (void)getSupplementalLanguagesForProduct:(id)product forBuildVersion:(id)version completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v7 = [AFError errorWithCode:0];
    (*(completion + 2))(completionCopy, 0, v7);
  }
}

- (void)getSupplementalLanguageDictionaryForProduct:(id)product completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v6 = [AFError errorWithCode:0];
    (*(completion + 2))(completionCopy, 0, v6);
  }
}

- (void)getSupplementalLanguagesModificationDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    v5 = [AFError errorWithCode:0];
    (*(date + 2))(dateCopy, 0, v5);
  }
}

- (void)getSupplementalLanguagesDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = [AFError errorWithCode:0];
    (*(dictionary + 2))(dictionaryCopy, 0, v5);
  }
}

- (void)setSupplementalLanguages:(id)languages forProduct:(id)product forBuildVersion:(id)version completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v8 = [AFError errorWithCode:0];
    (*(completion + 2))(completionCopy, v8);
  }
}

- (void)setSupplementalLanguageDictionary:(id)dictionary forProduct:(id)product completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v7 = [AFError errorWithCode:0];
    (*(completion + 2))(completionCopy, v7);
  }
}

- (void)postTestResultSelectedWithRcId:(id)id
{
  idCopy = id;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 postTestResultSelectedWithRcId:idCopy];
}

- (void)postTestResultCandidateWithRcId:(id)id recognitionSausage:(id)sausage
{
  sausageCopy = sausage;
  idCopy = id;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 postTestResultCandidateWithRcId:idCopy recognitionSausage:sausageCopy];
}

- (void)hasEverSetLanguageCodeWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[ADSettingsClient hasEverSetLanguageCodeWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 _languageCodeWithFallback:0];

  if (v6)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v7 = +[AFPreferences sharedPreferences];
    cloudSyncEnabled = [v7 cloudSyncEnabled];

    if ((cloudSyncEnabled & 1) != 0 && (+[ADCloudKitManager sharedManager](ADCloudKitManager, "sharedManager"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 preferencesHaveBeenSynchronized], v9, !v10))
    {
      v11 = +[ADCloudKitManager sharedManager];
      [v11 hasEverSetLanguageCodeWithCompletion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0, 0);
    }
  }
}

- (void)stopAllAudioPlaybackRequests:(BOOL)requests
{
  requestsCopy = requests;
  v5 = +[ADSpeechManager sharedManager];
  audioPlaybackService = [v5 audioPlaybackService];
  [audioPlaybackService stopAllRequests:requestsCopy completion:0];
}

- (void)stopAudioPlaybackRequest:(id)request immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  requestCopy = request;
  v7 = +[ADSpeechManager sharedManager];
  audioPlaybackService = [v7 audioPlaybackService];
  [audioPlaybackService stopRequest:requestCopy immediately:immediatelyCopy];
}

- (void)startAudioPlaybackRequest:(id)request options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v10 = +[ADSpeechManager sharedManager];
  audioPlaybackService = [v10 audioPlaybackService];
  [audioPlaybackService startRequest:requestCopy options:options completion:completionCopy];
}

- (void)getPeerIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = +[ADPeerCloudService sharedInstance];
  peers = [v5 peers];

  v7 = [peers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(peers);
        }

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * v10) dictionaryRepresentation];
        [v4 addObject:dictionaryRepresentation];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [peers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (identifiersCopy)
  {
    identifiersCopy[2](identifiersCopy, v4);
  }
}

- (void)startRemoteRequest:(id)request onPeer:(id)peer completion:(id)completion
{
  requestCopy = request;
  peerCopy = peer;
  completionCopy = completion;
  handoffOriginDeviceName = [requestCopy handoffOriginDeviceName];

  if (!handoffOriginDeviceName)
  {
    v13 = AFUserAssignedDeviceName();
    [requestCopy setHandoffOriginDeviceName:v13];

    if (peerCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = +[ADCommandCenter sharedCommandCenter];
    [(ADPeerInfo *)v11 startRemoteRequest:requestCopy completion:completionCopy];
    goto LABEL_6;
  }

  if (!peerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [[ADPeerInfo alloc] initWithIDSIdentifer:peerCopy];
  v12 = +[ADPeerCloudService sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100352A74;
  v14[3] = &unk_10051E100;
  v15 = completionCopy;
  [v12 startRemoteRequest:requestCopy onPeer:v11 completion:v14];

LABEL_6:
}

- (void)_createMockServerIfNeededAndSetActiveWithCompletion:(id)completion
{
  completionCopy = completion;
  +[ADCommandCenter sharedCommandCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100352BB4;
  v7[3] = &unk_10051CE90;
  v8 = v7[4] = self;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = v8;
  [v6 fetchAccounts:v7];
}

- (void)startUIMockServerRequestWithReplayFileURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  +[ADCommandCenter sharedCommandCenter];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100352DE0;
  v11[3] = &unk_10051CE28;
  v11[4] = self;
  v13 = v12 = lCopy;
  v14 = completionCopy;
  v8 = v13;
  v9 = completionCopy;
  v10 = lCopy;
  [v8 fetchActiveAccountIdentifier:v11];
}

- (void)dismissUI
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 dismissAssistant];
}

- (void)startUIRequestWithSpeechAudioFileURL:(id)l
{
  lCopy = l;
  v7 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:19];
  [v7 setAudioFileURL:lCopy];

  v4 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  [v7 setNotifyState:v4];

  if (AFIsHorseman())
  {
    v5 = objc_alloc_init(AFRequestInfo);
    [v5 setActivationEvent:8];
    [v5 setSpeechRequestOptions:v7];
    v6 = +[ADCommandCenter sharedCommandCenter];
    [v6 handleExternalActivationRequest:v5 completion:0];
  }

  else
  {
    v5 = +[ADCommandCenter sharedCommandCenter];
    [v5 handleRemoteSpeechRequest:v7 completion:0];
  }
}

- (void)startMultiUserUIRequestWithText:(id)text expectedSpeakerSharedUserID:(id)d expectedSpeakerConfidenceScore:(unint64_t)score nonspeakerConfidenceScores:(id)scores completion:(id)completion
{
  textCopy = text;
  dCopy = d;
  scoresCopy = scores;
  completionCopy = completion;
  if (AFSupportsMultiUser())
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v22 = "[ADSettingsClient startMultiUserUIRequestWithText:expectedSpeakerSharedUserID:expectedSpeakerConfidenceScore:nonspeakerConfidenceScores:completion:]";
      v23 = 2112;
      v24 = textCopy;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2048;
      scoreCopy = score;
      v29 = 2112;
      v30 = scoresCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s %@ %@ %lu %@", buf, 0x34u);
    }

    v16 = objc_alloc_init(AFRequestInfo);
    [v16 setText:textCopy];
    [v16 setExpectedSpeakerSharedUserID:dCopy];
    [v16 setExpectedSpeakerConfidenceScore:score];
    [v16 setNonspeakerConfidenceScores:scoresCopy];
    [v16 setActivationEvent:8];
    v17 = +[ADCommandCenter sharedCommandCenter];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100353458;
    v19[3] = &unk_10051CE00;
    v20 = completionCopy;
    [v17 handleExternalActivationRequest:v16 completion:v19];
  }

  else if (completionCopy)
  {
    v18 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6004 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v18);
  }
}

- (void)setReplayOverridePath:(id)path
{
  pathCopy = path;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setReplayOverridePath:pathCopy];
}

- (void)setReplayEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setReplayEnabled:enabledCopy];
}

- (void)replayRecordedViewAt:(unint64_t)at with:(id)with
{
  withCopy = with;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    path = [withCopy path];
    v10 = 136315650;
    v11 = "[ADSettingsClient replayRecordedViewAt:with:]";
    v12 = 2048;
    atCopy = at;
    v14 = 2112;
    v15 = path;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s #ReplayAt. index: %lu,  recordingDataURL: %@", &v10, 0x20u);
  }

  v9 = +[ADCommandCenter sharedCommandCenter];
  [v9 replayRecordedViewAt:at with:withCopy];
}

- (void)replayAllRecordedViews:(unint64_t)views with:(id)with
{
  withCopy = with;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    path = [withCopy path];
    v10 = 136315650;
    v11 = "[ADSettingsClient replayAllRecordedViews:with:]";
    v12 = 2048;
    viewsCopy = views;
    v14 = 2112;
    v15 = path;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s #ReplayAll. intervalSeconds: %lu,  recordingDataURL: %@", &v10, 0x20u);
  }

  v9 = +[ADCommandCenter sharedCommandCenter];
  [v9 replayAllRecordedViews:views with:withCopy];
}

- (void)startUIRequestWithText:(id)text completion:(id)completion
{
  completionCopy = completion;
  textCopy = text;
  v7 = objc_alloc_init(AFRequestInfo);
  [v7 setText:textCopy];

  [v7 setActivationEvent:8];
  v8 = +[ADCommandCenter sharedCommandCenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003538A8;
  v10[3] = &unk_10051CE00;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 handleExternalActivationRequest:v7 completion:v10];
}

- (void)startUIRequestWithInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v7 = +[ADCommandCenter sharedCommandCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100353A24;
  v9[3] = &unk_10051CE00;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 handleExternalActivationRequest:infoCopy completion:v9];
}

- (void)setSpeechProfileExternalOfflineModelRootPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  pathCopy = path;
  v6 = +[AFPreferences sharedPreferences];
  [v6 setSpeechProfileExternalOfflineModelRootPath:pathCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)setOfflineDictationProfileOverridePath:(id)path completion:(id)completion
{
  completionCopy = completion;
  pathCopy = path;
  v6 = +[AFPreferences sharedPreferences];
  [v6 setOfflineDictationProfileOverridePath:pathCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)createOfflineSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path JSONData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  pathCopy = path;
  languageCopy = language;
  _localSpeechRecognizer = [(ADSettingsClient *)self _localSpeechRecognizer];
  [_localSpeechRecognizer createSpeechProfileWithLanguage:languageCopy modelOverridePath:pathCopy JSONData:dataCopy completion:completionCopy];
}

- (void)getOfflineDictationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[SFEntitledAssetManager sharedInstance];
  v5 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
  v6 = [v4 detailedInstallationStatusForLanguagesWithAssetType:3 subscriberId:v5];

  completionCopy[2](completionCopy, v6, 0);
}

- (void)getOfflineAssistantStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[SFEntitledAssetManager sharedInstance];
  v5 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
  v6 = [v4 detailedInstallationStatusForLanguagesWithAssetType:3 subscriberId:v5];

  completionCopy[2](completionCopy, v6, 0);
}

- (id)_localSpeechRecognizer
{
  localSpeechRecognizer = self->_localSpeechRecognizer;
  if (!localSpeechRecognizer)
  {
    v4 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
    v5 = self->_localSpeechRecognizer;
    self->_localSpeechRecognizer = v4;

    localSpeechRecognizer = self->_localSpeechRecognizer;
  }

  return localSpeechRecognizer;
}

- (void)setLanguage:(id)language outputVoice:(id)voice withCompletion:(id)completion
{
  completionCopy = completion;
  voiceCopy = voice;
  languageCopy = language;
  v10 = [NSMutableDictionary alloc];
  dictionaryRepresentation = [voiceCopy dictionaryRepresentation];
  v15 = [v10 initWithDictionary:dictionaryRepresentation];

  if (languageCopy)
  {
    v12 = languageCopy;
  }

  else
  {
    v12 = @"nil";
  }

  [v15 setObject:v12 forKey:@"language"];
  v13 = +[AFAnalytics sharedAnalytics];
  [v13 logEventWithType:3201 context:v15];

  v14 = +[ADCommandCenter sharedCommandCenter];
  [v14 setLanguageCode:languageCopy outputVoice:voiceCopy withCompletion:completionCopy];
}

- (void)setLanguage:(id)language withCompletion:(id)completion
{
  completionCopy = completion;
  languageCopy = language;
  v7 = +[AFAnalytics sharedAnalytics];
  if (languageCopy)
  {
    v8 = languageCopy;
  }

  else
  {
    v8 = @"nil";
  }

  v11 = @"language";
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v7 logEventWithType:3201 context:v9];

  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 setLanguageCode:languageCopy withCompletion:completionCopy];
}

- (void)setOutputVoice:(id)voice withCompletion:(id)completion
{
  completionCopy = completion;
  voiceCopy = voice;
  v6 = +[AFAnalytics sharedAnalytics];
  dictionaryRepresentation = [voiceCopy dictionaryRepresentation];
  [v6 logEventWithType:3202 context:dictionaryRepresentation];

  v8 = +[ADCommandCenter sharedCommandCenter];
  [v8 setOutputVoice:voiceCopy];

  v9 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v9 = completionCopy;
  }
}

- (void)getAvailableVoicesIncludingAssetInfo:(BOOL)info completion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100004988();
  if (completionCopy && (v6 & 1) == 0)
  {
    completionCopy[2](completionCopy, 0);
  }

  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100354210;
  v9[3] = &unk_10051CDD8;
  infoCopy = info;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

- (void)handleCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADSettingsClient handleCommand:completion:]";
    v16 = 2112;
    v17 = commandCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Received %@", buf, 0x16u);
  }

  v8 = [AceObject aceObjectWithDictionary:commandCopy];
  if (v8)
  {
    v9 = +[ADCommandCenter sharedCommandCenter];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10035493C;
    v12[3] = &unk_10051CD88;
    v13 = completionCopy;
    [v9 handleCommand:v8 completion:v12];

    v10 = v13;
LABEL_9:

    goto LABEL_10;
  }

  if (completionCopy)
  {
    v10 = [AFError errorWithCode:11];
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADSettingsClient handleCommand:completion:]";
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Responding %@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, v10);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)getAudioSessionCoordinationSnapshotWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v5 = +[ADSpeechManager sharedManager];
    audioSessionCoordinator = [v5 audioSessionCoordinator];
    [audioSessionCoordinator getSnapshotWithCompletion:completionCopy];
  }
}

- (void)getCurrentNWActivityIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[SNNetworkActivityTracing sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100354B70;
  v6[3] = &unk_10051CD60;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 currentNetworkActivityTokenWithCompletion:v6];
}

- (void)resetExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = +[ADExperimentManager sharedManager];
  [v7 resetExperimentForConfigurationIdentifier:identifierCopy completion:completionCopy];
}

- (void)synchronizeExperimentConfigurationsIfApplicableWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADExperimentManager sharedManager];
  [v4 synchronizeExperimentConfigurationsIfApplicableWithCompletion:completionCopy];
}

- (void)getExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    identifierCopy = identifier;
    v7 = +[ADExperimentManager sharedManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100354D38;
    v8[3] = &unk_10051CD38;
    v9 = completionCopy;
    [v7 getExperimentForConfigurationIdentifier:identifierCopy completion:v8];
  }
}

- (void)getProximityTuplesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (AFSupportsHALProximityScanning())
  {
    if (completionCopy)
    {
      v4 = +[ADDeviceProximityManager sharedManager];
      [v4 performProximityScan];

      v5 = +[ADCommandCenter sharedCommandCenter];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100354F1C;
      v6[3] = &unk_10051CD10;
      v7 = completionCopy;
      [v5 getCrossDeviceContextWithCompletion:v6];
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)getCapabilitiesDataFromReachableDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADDeviceCircleManager sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003550B0;
  v6[3] = &unk_10051CD10;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 getCapabilitiesForReachableDevicesWithCompletion:v6];
}

- (void)getManagedLocalAndRemotePeerInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADDeviceCircleManager sharedInstance];
  [v4 getManagedLocalAndRemotePeerInfoWithCompletion:completionCopy];
}

- (void)getContextCollectorsInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADDeviceCircleManager sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100355388;
  v6[3] = &unk_10051CCA8;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 getContextCollectorDeviceIdentifiersWithCompletion:v6];
}

- (void)getOriginDeviceInfoForContextIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 getOriginDeviceInfoForContextIdentifier:identifierCopy completion:completionCopy];
}

- (void)getCrossDeviceContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 getCrossDeviceContextWithCompletion:completionCopy];
}

- (void)getCurrentContextSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 getCurrentContextSnapshotWithCompletion:completionCopy];
}

- (void)forceMultiUserSync:(BOOL)sync download:(BOOL)download completion:(id)completion
{
  downloadCopy = download;
  syncCopy = sync;
  completionCopy = completion;
  if (AFIsHorseman())
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v8 = +[ADCloudKitManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100355748;
    v9[3] = &unk_10051D2F0;
    v10 = completionCopy;
    [v8 forceMultiUserSync:syncCopy download:downloadCopy activity:0 completion:v9];
  }
}

- (void)getDevicesWithAvailablePHSAssetsOnDeviceCheck:(id)check
{
  checkCopy = check;
  v4 = +[ADCloudKitManager sharedManager];
  [v4 getDevicesWithAvailablePHSAssetsOnDeviceCheck:checkCopy];
}

- (void)getDevicesWithAvailablePHSAssetsForLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  if (AFIsHorseman())
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v6 = +[ADCloudKitManager sharedManager];
    [v6 getDevicesWithAvailablePHSAssetsForLanguage:languageCopy completion:completionCopy];
  }
}

- (void)disableAndDeleteCloudSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADSettingsClient disableAndDeleteCloudSyncWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  if (AFIsHorseman())
  {
    v5 = AFSiriLogContextDaemon;
    v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
    if (completionCopy)
    {
      if (v6)
      {
        v8 = 136315138;
        v9 = "[ADSettingsClient disableAndDeleteCloudSyncWithCompletion:]";
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unsupported platform", &v8, 0xCu);
      }

      completionCopy[2](completionCopy, 0);
    }

    else if (v6)
    {
      v8 = 136315138;
      v9 = "[ADSettingsClient disableAndDeleteCloudSyncWithCompletion:]";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unsupported platform. No completion handler.", &v8, 0xCu);
    }
  }

  else
  {
    v7 = +[ADCloudKitManager sharedManager];
    [v7 disableAndDeleteCloudSyncWithCompletion:completionCopy];
  }
}

- (void)_runServiceMaintenance
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 runServiceMaintenanceWithCompletion:0];
}

- (void)_fetchPeerData:(id)data
{
  dataCopy = data;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 updateSharedDataFromPeerUseCache:0 completion:dataCopy];
}

- (void)_syncDataWithAnchorKeys:(id)keys forceReset:(BOOL)reset reason:(id)reason reply:(id)reply
{
  resetCopy = reset;
  keysCopy = keys;
  reasonCopy = reason;
  replyCopy = reply;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADSettingsClient _syncDataWithAnchorKeys:forceReset:reason:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Got sync command on connection %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = sub_100355D1C;
  v25 = sub_100355D2C;
  v26 = 0;
  v14 = +[NSNotificationCenter defaultCenter];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100355D34;
  v19[3] = &unk_10051CC80;
  v15 = replyCopy;
  v20 = v15;
  v21 = buf;
  v16 = [v14 addObserverForName:@"ADSyncFinishedNotification" object:0 queue:0 usingBlock:v19];

  objc_storeStrong((*&buf[8] + 40), v16);
  v17 = +[ADCommandCenter sharedCommandCenter];
  v22 = reasonCopy;
  v18 = [NSArray arrayWithObjects:&v22 count:1];
  [v17 syncAnchorKeys:keysCopy forceReset:resetCopy reasons:v18];

  _Block_object_dispose(buf, 8);
}

- (void)_isInactiveDeviceSyncDisabled:(id)disabled
{
  if (disabled)
  {
    disabledCopy = disabled;
    v4 = sub_10000A630();
    (*(disabled + 2))(disabledCopy, v4);
  }
}

- (void)_isInactiveDeviceSyncDisabledByTrial:(id)trial
{
  if (trial)
  {
    trialCopy = trial;
    v5 = +[ADSyncConfigAssetManager sharedInstance];
    (*(trial + 2))(trialCopy, [v5 isInactiveDeviceSyncDisabled]);
  }
}

- (void)_clearSyncNeededForKey:(id)key
{
  keyCopy = key;
  keyCopy2 = key;
  v4 = [NSArray arrayWithObjects:&keyCopy count:1];

  sub_1002F3A14(v4);
}

- (void)configOverrides:(id)overrides
{
  if (overrides)
  {
    overridesCopy = overrides;
    v6 = +[AFPreferences sharedPreferences];
    configOverrides = [v6 configOverrides];
    (*(overrides + 2))(overridesCopy, configOverrides);
  }
}

- (void)setConfigOverrides:(id)overrides completion:(id)completion
{
  completionCopy = completion;
  overridesCopy = overrides;
  v6 = +[AFPreferences sharedPreferences];
  [v6 setConfigOverrides:overridesCopy];

  v7 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v7 = completionCopy;
  }
}

- (void)_resetSessionsAtNextRequestBoundary
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSettingsClient _resetSessionsAtNextRequestBoundary]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  v3 = +[ADCommandCenter sharedQueue];
  dispatch_async(v3, &stru_10051CC58);
}

- (void)_shutdownSessionIfIdle
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSettingsClient _shutdownSessionIfIdle]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  v3 = +[ADCommandCenter sharedCommandCenter];
  [v3 shutdownSessionIfIdle];
}

- (void)_killDaemon
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSettingsClient _killDaemon]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Shutting down at the request of settings", &v4, 0xCu);
  }

  v3 = +[ADDaemon sharedDaemon];
  [v3 shutdown];
}

- (void)setEnableAssistantLogging:(BOOL)logging
{
  loggingCopy = logging;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = @"Disabling";
    if (loggingCopy)
    {
      v5 = @"Enabling";
    }

    v8 = 136315394;
    v9 = "[ADSettingsClient setEnableAssistantLogging:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %@ extra assistant logging", &v8, 0x16u);
  }

  v6 = +[AFPreferences sharedPreferences];
  [v6 setFileLoggingIsEnabled:loggingCopy];
  [v6 setCardLoggingEnabled:loggingCopy];
  [v6 setCommandLoggingEnabled:loggingCopy];
  [v6 setAVVCLoggingEnabled:loggingCopy];
  VSPreferencesSetLogging();
  v7 = +[VTPreferences sharedPreferences];
  [v7 setFileLoggingIsEnabled:loggingCopy];

  AFInternalPreferencesSynchronize();
  [v6 synchronizeLogPreferencesDomain];
  [v6 synchronizeAVVCPreferencesDomain];
}

- (void)suppressLowStorageNotificationForLanguage:(id)language suppress:(BOOL)suppress
{
  suppressCopy = suppress;
  languageCopy = language;
  v6 = +[AFPreferences sharedPreferences];
  [v6 _suppressLowStorageNotificationForLanguage:languageCopy suppress:suppressCopy];
}

- (void)setDictationAutoPunctuationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[AFPreferences sharedPreferences];
  [v4 _setDictationAutoPunctuationEnabledLocal:enabledCopy];
}

- (void)setDictationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = +[ADCommandCenter sharedCommandCenter];
  [v5 setDictationEnabled:enabledCopy];

  v6 = AFOfflineDictationCapable();
  if (enabledCopy)
  {
    if (v6)
    {
      v7 = +[NSLocale currentLocale];
      languageIdentifier = [v7 languageIdentifier];

      v9 = +[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver];
      offlineDictationStatus = [v9 offlineDictationStatus];

      allKeys = [offlineDictationStatus allKeys];
      v12 = [NSSet setWithArray:allKeys];

      v16 = AFOfflineDictationLanguageForKeyboardLanguage();

      if (v16)
      {
        v13 = [[SFEntitledAssetConfig alloc] initWithLanguage:v16 assetType:3];
        v14 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
        [SFEntitledAssetManager subscribeToAssetWithConfig:v13 regionId:0 subscriberId:v14 expiration:0];
      }
    }
  }

  else if (v6)
  {
    v15 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003567D4;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(v15, block);
  }
}

- (void)setAssistantEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADSettingsClient setAssistantEnabled:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  v5 = +[ADCommandCenter sharedCommandCenter];
  [v5 setAssistantEnabled:enabledCopy];

  if (!enabledCopy)
  {
    v6 = dispatch_get_global_queue(-2, 0);
    dispatch_async(v6, &stru_10051CC38);

    +[NLRouterCacheManager deleteAll];
  }
}

- (void)fetchActiveAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v4 = +[ADCommandCenter sharedCommandCenter];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100356A88;
    v5[3] = &unk_10051CC18;
    v6 = accountCopy;
    [v4 fetchActiveAccount:v5];
  }
}

- (void)setActiveAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setActiveAccountIdentifier:identifierCopy];
}

- (void)deleteAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 deleteAccountWithIdentifier:identifierCopy];
}

- (void)_saveAccount:(id)account setActive:(BOOL)active
{
  activeCopy = active;
  accountCopy = account;
  [accountCopy save];
  if (activeCopy)
  {
    v5 = +[ADCommandCenter sharedCommandCenter];
    identifier = [accountCopy identifier];
    [v5 setActiveAccountIdentifier:identifier];
  }

  notify_post("com.apple.assistant.siri_settings_did_change");
}

- (void)saveAccountWithMessageDictionary:(id)dictionary setActive:(BOOL)active
{
  activeCopy = active;
  v6 = kAFAccountInfoIdentifierKey;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKey:v6];
  v18 = [ADAccount accountForIdentifier:v8];

  v9 = [dictionaryCopy objectForKey:kAFAccountInfoAssistantIdentifierKey];
  [v18 setAssistantIdentifier:v9];

  v10 = [dictionaryCopy objectForKey:kAFAccountInfoHostnameKey];
  [v18 setHostname:v10];

  v11 = [dictionaryCopy objectForKey:kAFAccountInfoPredefinedServerKey];
  [v18 setPredefinedServer:v11];

  v12 = [dictionaryCopy objectForKey:kAFAccountInfoLabelKey];
  [v18 setLabel:v12];

  v13 = [dictionaryCopy objectForKey:kAFAccountInfoGroupKey];
  [v18 setGroup:v13];

  v14 = [dictionaryCopy objectForKey:kAFAccountInfoSpeechIdentifierKey];
  [v18 setSpeechIdentifier:v14];

  v15 = [dictionaryCopy objectForKey:kAFAccountInfoPeerAssistantIdentifierKey];
  [v18 setPeerAssistantIdentifier:v15];

  v16 = [dictionaryCopy objectForKey:kAFAccountInfoPeerSpeechIdentifierKey];
  [v18 setPeerSpeechIdentifier:v16];

  v17 = [dictionaryCopy objectForKey:kAFAccountInfoPeerUserAgentStringKey];

  [v18 setPeerUserAgentString:v17];
  [(ADSettingsClient *)self _saveAccount:v18 setActive:activeCopy];
}

- (void)retrieveAccountMessageDictionariesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADSettingsClient retrieveAccountMessageDictionariesWithReply:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  +[ADCommandCenter sharedCommandCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10035706C;
  v8 = v7[3] = &unk_10051DD70;
  v9 = replyCopy;
  v5 = replyCopy;
  v6 = v8;
  [v6 fetchAccounts:v7];
}

- (void)fetchSupportedLanguagesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADSettingsClient fetchSupportedLanguagesWithReply:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Settings is fetching supported languages", &v6, 0xCu);
  }

  v5 = +[ADCommandCenter sharedCommandCenter];
  [v5 fetchSupportedLanguagesWithCompletion:replyCopy];
}

- (ADSettingsClient)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = ADSettingsClient;
  v6 = [(ADSettingsClient *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcConnection, connection);
    v8 = objc_alloc_init(ADSpeechSamplingRelayPermitMonitor);
    permitMonitor = v7->_permitMonitor;
    v7->_permitMonitor = v8;
  }

  return v7;
}

@end