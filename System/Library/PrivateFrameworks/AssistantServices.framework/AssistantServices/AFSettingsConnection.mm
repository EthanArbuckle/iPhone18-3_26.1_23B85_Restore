@interface AFSettingsConnection
+ (AFSettingsConnection)sharedInstance;
+ (void)initialize;
- (AFSettingsConnection)initWithInstanceContext:(id)context;
- (id)_connection;
- (id)_filterVoices:(id)voices forLanguage:(id)language;
- (id)_settingsServiceWithErrorHandler:(id)handler;
- (id)_synchronousSettingsServiceWithErrorHandler:(id)handler;
- (id)_voices;
- (id)accounts;
- (id)description;
- (void)_clearConnection;
- (void)_clearSyncNeededForKey:(id)key;
- (void)_createRadarWithReason:(id)reason room:(id)room process:(id)process crash:(BOOL)crash completion:(id)completion;
- (void)_fetchPeerData:(id)data;
- (void)_getSharedCompanionInfo:(id)info;
- (void)_handleCommand:(id)command completion:(id)completion;
- (void)_isInactiveDeviceSyncDisabled:(id)disabled;
- (void)_isInactiveDeviceSyncDisabledByTrial:(id)trial;
- (void)_runServiceMaintenance;
- (void)_setDelegate:(id)delegate;
- (void)_setSyncNeededForReason:(id)reason;
- (void)_setVoices:(id)voices;
- (void)_tellDelegatePartialVerificationResult:(id)result;
- (void)_tellDelegateServerVerificationReport:(id)report;
- (void)accessRecordedAudioWithIdentifier:(id)identifier completion:(id)completion;
- (void)areSiriSAEAssetsAvailable:(id)available;
- (void)areSiriUODAssetsAvailable:(id)available;
- (void)availableLanguagesInTheHome:(id)home;
- (void)barrier;
- (void)clearAnnounceNotificationsInCarPlayTemporarilyDisabled;
- (void)clearAnnounceNotificationsInCarPlayType;
- (void)clearMessageWithoutConfirmationEnabled;
- (void)clearMessageWithoutConfirmationHeadphonesEnabled;
- (void)clearMessageWithoutConfirmationInCarPlayEnabled;
- (void)clearOpportuneSpeakingEdgeDetectorSignalOverride;
- (void)clearShowAppsBehindSiriInCarPlayEnabled;
- (void)clearSpokenNotificationTemporarilyDisabledStatus;
- (void)configOverrides:(id)overrides;
- (void)createOfflineSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path JSONData:(id)data completion:(id)completion;
- (void)currectNWActivityId:(id)id;
- (void)dealloc;
- (void)deleteAccountWithIdentifier:(id)identifier;
- (void)deleteSiriHistoryWithCompletion:(id)completion;
- (void)deleteSiriHistoryWithContext:(id)context withCompletion:(id)completion;
- (void)disableAndDeleteCloudSyncWithCompletion:(id)completion;
- (void)dismissUI;
- (void)dumpAssistantState:(id)state;
- (void)fetchAccountsSynchronously:(BOOL)synchronously completion:(id)completion;
- (void)fetchActiveAccount:(id)account;
- (void)fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:(id)completion;
- (void)fetchEventRecordsFromAnalyticsStoreAtPath:(id)path completion:(id)completion;
- (void)fetchExperimentConfigurationsWithCompletion:(id)completion;
- (void)fetchExperimentContextWithCompletion:(id)completion;
- (void)fetchMultiUserVoiceIdentificationSetting:(id)setting;
- (void)fetchSharedUserIdentifier:(id)identifier;
- (void)fetchSupportedLanguageCodes:(id)codes;
- (void)fetchSupportedMultiUserLanguageCodes:(id)codes;
- (void)getAccessoryInfoForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)getActiveASRLanguagesWithCompletion:(id)completion;
- (void)getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:(id)completion;
- (void)getAnnounceNotificationsInCarPlayTypeWithCompletion:(id)completion;
- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForApp:(id)app platform:(int64_t)platform completion:(id)completion;
- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform:(int64_t)platform completion:(id)completion;
- (void)getAssetStatusForLanguage:(id)language completionHandler:(id)handler;
- (void)getAssistantIsEnabledForDeviceWithSiriInfo:(id)info withCompletion:(id)completion;
- (void)getAudioSessionCoordinationSnapshotWithCompletion:(id)completion;
- (void)getBluetoothDeviceInfoWithAddress:(id)address completion:(id)completion;
- (void)getBluetoothDeviceInfoWithUID:(id)d completion:(id)completion;
- (void)getBluetoothWirelessSplitterSessionInfoWithCompletion:(id)completion;
- (void)getCapabilitiesDataFromReachableDevicesWithCompletion:(id)completion;
- (void)getConnectedBluetoothDeviceInfoArrayWithCompletion:(id)completion;
- (void)getContextCollectorsInfoWithCompletion:(id)completion;
- (void)getConversationAwarenessForCurrentlyRoutedDevice:(id)device;
- (void)getCrossDeviceContextWithCompletion:(id)completion;
- (void)getCurrentAccessoryInfoWithCompletion:(id)completion;
- (void)getCurrentContextSnapshotWithCompletion:(id)completion;
- (void)getCurrentRequestIsWatchAuthenticatedWithCompletion:(id)completion;
- (void)getDevicesWithAvailablePHSAssetsForLanguage:(id)language completion:(id)completion;
- (void)getDevicesWithAvailablePHSAssetsOnDeviceCheck:(id)check;
- (void)getExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion;
- (void)getHeadGesturesForCurrentlyRoutedDevice:(id)device;
- (void)getHomeUserIdForSharedUserId:(id)id completion:(id)completion;
- (void)getHorsemanSupplementalLanguageDictionary:(id)dictionary;
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
- (void)getPairedBluetoothDeviceInfoArrayWithCompletion:(id)completion;
- (void)getPeerIdentifiers:(id)identifiers;
- (void)getPersonalMultiUserDeviceIdentifiers:(id)identifiers;
- (void)getPersonalVolumeForCurrentlyRoutedDevice:(id)device;
- (void)getProximityTuplesWithCompletion:(id)completion;
- (void)getRecordedAudioDirectoryPathsWithCompletion:(id)completion;
- (void)getSearchQueriesDataSharingStatus:(id)status;
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
- (void)hasEverSetLanguageCodeWithCompletion:(id)completion;
- (void)isJustSiriEnabledInTheHome:(id)home;
- (void)isRecognizeMyVoiceAvailable:(id)available;
- (void)isSearchDataSharingStatusForced:(id)forced;
- (void)isVoiceTriggerEnabled:(id)enabled;
- (void)killDaemon;
- (void)multiUserCompanionDeviceIdentifiers:(id)identifiers;
- (void)postJSDiscoveryNotificationForBTDeviceWithInfo:(id)info withCompletion:(id)completion;
- (void)postTestResultCandidateWithRcId:(id)id recognitionSausage:(id)sausage;
- (void)postTestResultSelectedWithRcId:(id)id;
- (void)publishFeedbackArbitrationParticipation:(id)participation;
- (void)purgeAnalyticsStoreWithCompletion:(id)completion;
- (void)pushMyriadAdvertisementContext:(id)context completionHandler:(id)handler;
- (void)pushSCDAAdvertisementContext:(id)context completionHandler:(id)handler;
- (void)removeMultiUserUser:(id)user completion:(id)completion;
- (void)removeMultiUserWithSharedUserID:(id)d completion:(id)completion;
- (void)replayAllRecordedViews:(unint64_t)views with:(id)with;
- (void)replayRecordedViewAt:(unint64_t)at with:(id)with;
- (void)resetAnalyticsStoreWithCompletion:(id)completion;
- (void)resetExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion;
- (void)resetSessionsAtNextRequestBoundary;
- (void)routedHeadsetDoesSupportLiveTranslationWithCompletion:(id)completion;
- (void)sendMetricsToServerWithCompletion:(id)completion;
- (void)setActiveAccountIdentifier:(id)identifier;
- (void)setAnnounceNotificationsInCarPlayType:(int64_t)type;
- (void)setAnnounceNotificationsTemporarilyDisabledUntil:(id)until forApp:(id)app platform:(int64_t)platform;
- (void)setAnnounceNotificationsTemporarilyDisabledUntil:(id)until platform:(int64_t)platform;
- (void)setConfigOverrides:(id)overrides completion:(id)completion;
- (void)setHardcodedBluetoothProximity:(id)proximity;
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
- (void)setOpportuneSpeakingEdgeDetectorSignalOverride:(int64_t)override;
- (void)setOutputVoice:(id)voice withCompletion:(id)completion;
- (void)setReplayOverridePath:(id)path;
- (void)setSearchQueriesDataSharingStatus:(int64_t)status completion:(id)completion;
- (void)setSiriDataSharingOptInStatus:(int64_t)status completion:(id)completion;
- (void)setSiriGradingEnabled:(BOOL)enabled completion:(id)completion;
- (void)setSiriOutputVolume:(float)volume forAudioRoute:(id)route completion:(id)completion;
- (void)setSpeechProfileExternalOfflineModelRootPath:(id)path completion:(id)completion;
- (void)setSupplementalLanguageDictionary:(id)dictionary forProduct:(id)product completion:(id)completion;
- (void)setSupplementalLanguages:(id)languages forProduct:(id)product forBuildVersion:(id)version completion:(id)completion;
- (void)shouldSuppressSiriDataSharingOptInAlert:(id)alert;
- (void)showHomeProfileNamesWithCompletion:(id)completion;
- (void)showLocalProfileNamesWithCompletion:(id)completion;
- (void)showMultiUserCompanionInfo:(id)info;
- (void)showMultiUserSharedUserIDsCompletion:(id)completion;
- (void)showMultiUsers:(id)users;
- (void)showPrimaryUserSharedUserIDWithCompletion:(id)completion;
- (void)shutdownSessionIfIdle;
- (void)siriDesignModeIsEnabled:(id)enabled;
- (void)siriGradingIsEnabled:(id)enabled;
- (void)startAudioPlaybackRequest:(id)request options:(unint64_t)options completion:(id)completion;
- (void)startMultiUserUIRequestWithText:(id)text expectedSpeakerSharedUserID:(id)d expectedSpeakerConfidenceScore:(unint64_t)score nonspeakerConfidenceScores:(id)scores completion:(id)completion;
- (void)startObservingBluetoothInEarDetectionStateForBTAddress:(id)address forObserverID:(unint64_t)d;
- (void)startObservingWirelessSplitterSession;
- (void)startRemoteRequest:(id)request onPeer:(id)peer completion:(id)completion;
- (void)startUIMockServerRequestWithReplayFileURL:(id)l completion:(id)completion;
- (void)startUIRequest:(id)request;
- (void)startUIRequestWithInfo:(id)info;
- (void)startUIRequestWithInfo:(id)info completion:(id)completion;
- (void)startUIRequestWithSpeechAudioFileURL:(id)l;
- (void)startUIRequestWithText:(id)text;
- (void)startUIRequestWithText:(id)text completion:(id)completion;
- (void)stopObservingBluetoothInEarDetectionStateForObserverID:(unint64_t)d;
- (void)stopObservingWirelessSplitterSession;
- (void)synchronizeExperimentConfigurationsIfApplicableWithCompletion:(id)completion;
- (void)triggerABCForType:(id)type subType:(id)subType context:(id)context completionHandler:(id)handler;
- (void)trimRecordedAudioWithIdentifier:(id)identifier offset:(double)offset duration:(double)duration outputFileType:(int64_t)type completion:(id)completion;
- (void)updateAnnounceNotificationsOnHearingAidSupportedStatus;
@end

@implementation AFSettingsConnection

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFSettingsConnection dealloc]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  [(AFSettingsConnection *)self _clearConnection];
  v5.receiver = self;
  v5.super_class = AFSettingsConnection;
  [(AFSettingsConnection *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_clearConnection
{
  [(NSRecursiveLock *)self->_connectionLock lock];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  self->_connectionSetupComplete = 0;
  [(NSRecursiveLock *)self->_connectionLock unlock];
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_delegate;

    [(AFSettingsDelegate *)v5 _settingsConnectionDidDisconnect];
  }
}

void __35__AFSettingsConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__AFSettingsConnection__connection__block_invoke_2;
    block[3] = &unk_1E73497C8;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

- (id)_connection
{
  if (!self->_connectionSetupComplete)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    if (!self->_connectionSetupComplete)
    {
      instanceContext = self->_instanceContext;
      if (!instanceContext)
      {
        v4 = +[AFInstanceContext defaultContext];
        v5 = self->_instanceContext;
        self->_instanceContext = v4;

        instanceContext = self->_instanceContext;
      }

      v6 = [(AFInstanceContext *)instanceContext createXPCConnectionWithMachServiceName:@"com.apple.assistant.settings" options:0];
      connection = self->_connection;
      self->_connection = v6;

      objc_initWeak(&location, self);
      v8 = self->_connection;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __35__AFSettingsConnection__connection__block_invoke;
      v20[3] = &unk_1E7348A80;
      objc_copyWeak(&v21, &location);
      [(NSXPCConnection *)v8 setInvalidationHandler:v20];
      v9 = self->_connection;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __35__AFSettingsConnection__connection__block_invoke_11;
      v18[3] = &unk_1E7348A80;
      objc_copyWeak(&v19, &location);
      [(NSXPCConnection *)v9 setInterruptionHandler:v18];
      v10 = self->_connection;
      v11 = AFSettingsServiceXPCInterface();
      [(NSXPCConnection *)v10 setRemoteObjectInterface:v11];

      v12 = self->_connection;
      v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05952A0];
      [(NSXPCConnection *)v12 setExportedInterface:v13];

      v14 = self->_connection;
      v15 = [[AFSettingsConnectionServiceDelegate alloc] initWithSettingsConnection:self];
      [(NSXPCConnection *)v14 setExportedObject:v15];

      [(NSXPCConnection *)self->_connection resume];
      self->_connectionSetupComplete = 1;
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }

  v16 = self->_connection;

  return v16;
}

- (void)getODDDeviceAggregationId:(id)id
{
  idCopy = id;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AFSettingsConnection_getODDDeviceAggregationId___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = idCopy;
  v5 = idCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getODDDeviceAggregationId:v5];
}

- (void)getODDDeviceProperties:(id)properties
{
  propertiesCopy = properties;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AFSettingsConnection_getODDDeviceProperties___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = propertiesCopy;
  v5 = propertiesCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getODDDeviceProperties:v5];
}

- (void)_createRadarWithReason:(id)reason room:(id)room process:(id)process crash:(BOOL)crash completion:(id)completion
{
  crashCopy = crash;
  v37 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  roomCopy = room;
  processCopy = process;
  completionCopy = completion;
  v16 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v17 = @"entire home";
    *buf = 136315650;
    v32 = "[AFSettingsConnection _createRadarWithReason:room:process:crash:completion:]";
    v33 = 2112;
    if (roomCopy)
    {
      v17 = roomCopy;
    }

    v34 = v17;
    v35 = 2112;
    v36 = reasonCopy;
    _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, "%s Filing a radar in %@ with reason %@", buf, 0x20u);
  }

  selfCopy = self;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77__AFSettingsConnection__createRadarWithReason_room_process_crash_completion___block_invoke;
  v28[3] = &unk_1E7348AD0;
  v19 = completionCopy;
  v30 = v19;
  v20 = selfCopy;
  v29 = v20;
  v21 = MEMORY[0x193AFB7B0](v28);
  v22 = [(AFSettingsConnection *)v20 _settingsServiceWithErrorHandler:v21];
  if (!v22)
  {
    v24 = @"Not an internal build";
LABEL_10:
    v23 = [AFError errorWithCode:1010 description:v24];
    (v21)[2](v21, v23);
    goto LABEL_11;
  }

  if (!crashCopy)
  {
    v24 = @"Not a supported configuration";
    goto LABEL_10;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__AFSettingsConnection__createRadarWithReason_room_process_crash_completion___block_invoke_253;
  v26[3] = &unk_1E7348AA8;
  v27 = v21;
  [v22 createRadarForCrashWithReason:reasonCopy process:processCopy completion:v26];
  v23 = v27;
LABEL_11:

  v25 = *MEMORY[0x1E69E9840];
}

void __77__AFSettingsConnection__createRadarWithReason_room_process_crash_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFSettingsConnection _createRadarWithReason:room:process:crash:completion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Failed to file a radar - error: %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[AFSettingsConnection _createRadarWithReason:room:process:crash:completion:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Radar is filed", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getActiveASRLanguagesWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFSettingsConnection_getActiveASRLanguagesWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getCurrentActiveLanguageCodesWithCompletion:v5];
}

void __60__AFSettingsConnection_getActiveASRLanguagesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getActiveASRLanguagesWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getAssistantIsEnabledForDeviceWithSiriInfo:(id)info withCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__AFSettingsConnection_getAssistantIsEnabledForDeviceWithSiriInfo_withCompletion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  infoCopy = info;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getAssistantIsEnabledForDeviceWithSiriInfo:infoCopy withCompletion:v7];
}

void __82__AFSettingsConnection_getAssistantIsEnabledForDeviceWithSiriInfo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getAssistantIsEnabledForDeviceWithSiriInfo:withCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)triggerABCForType:(id)type subType:(id)subType context:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__AFSettingsConnection_triggerABCForType_subType_context_completionHandler___block_invoke;
  v16[3] = &unk_1E7348AA8;
  v17 = handlerCopy;
  v11 = handlerCopy;
  contextCopy = context;
  subTypeCopy = subType;
  typeCopy = type;
  v15 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v16];
  [v15 triggerABCForType:typeCopy subType:subTypeCopy context:contextCopy completionHandler:v11];
}

void __76__AFSettingsConnection_triggerABCForType_subType_context_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection triggerABCForType:subType:context:completionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getSidekickBoostsFileWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFSettingsConnection_getSidekickBoostsFileWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getSidekickBoostsFileWithCompletion:v5];
}

void __60__AFSettingsConnection_getSidekickBoostsFileWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getSidekickBoostsFileWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getTrialEnables:(id)enables doubleFactors:(id)factors withCompletion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AFSettingsConnection_getTrialEnables_doubleFactors_withCompletion___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v14 = completionCopy;
  v9 = completionCopy;
  factorsCopy = factors;
  enablesCopy = enables;
  v12 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v13];
  [v12 getTrialEnables:enablesCopy doubleFactors:factorsCopy withCompletion:v9];
}

void __69__AFSettingsConnection_getTrialEnables_doubleFactors_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getTrialEnables:doubleFactors:withCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getAccessoryInfoForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__AFSettingsConnection_getAccessoryInfoForAccessoryWithUUID_completionHandler___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = handlerCopy;
  v7 = handlerCopy;
  dCopy = d;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getAccessoryInfoForAccessoryWithUUID:dCopy completionHandler:v7];
}

void __79__AFSettingsConnection_getAccessoryInfoForAccessoryWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getAccessoryInfoForAccessoryWithUUID:completionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__AFSettingsConnection_getSpeakerCapabilityForAccessoryWithUUID_completionHandler___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = handlerCopy;
  v7 = handlerCopy;
  dCopy = d;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getSpeakerCapabilityForAccessoryWithUUID:dCopy completionHandler:v7];
}

void __83__AFSettingsConnection_getSpeakerCapabilityForAccessoryWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getSpeakerCapabilityForAccessoryWithUUID:completionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pushSCDAAdvertisementContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__AFSettingsConnection_pushSCDAAdvertisementContext_completionHandler___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = handlerCopy;
  v7 = handlerCopy;
  contextCopy = context;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 pushSCDAAdvertisementContext:contextCopy completionHandler:v7];
}

void __71__AFSettingsConnection_pushSCDAAdvertisementContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection pushSCDAAdvertisementContext:completionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pushMyriadAdvertisementContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__AFSettingsConnection_pushMyriadAdvertisementContext_completionHandler___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = handlerCopy;
  v7 = handlerCopy;
  contextCopy = context;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 pushMyriadAdvertisementContext:contextCopy completionHandler:v7];
}

void __73__AFSettingsConnection_pushMyriadAdvertisementContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection pushMyriadAdvertisementContext:completionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getCurrentRequestIsWatchAuthenticatedWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AFSettingsConnection_getCurrentRequestIsWatchAuthenticatedWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getCurrentRequestIsWatchAuthenticatedWithCompletion:v5];
}

void __76__AFSettingsConnection_getCurrentRequestIsWatchAuthenticatedWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getCurrentRequestIsWatchAuthenticatedWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getAssetStatusForLanguage:(id)language completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AFSettingsConnection_getAssetStatusForLanguage_completionHandler___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = handlerCopy;
  v7 = handlerCopy;
  languageCopy = language;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getAssetStatusForLanguage:languageCopy completionHandler:v7];
}

void __68__AFSettingsConnection_getAssetStatusForLanguage_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getAssetStatusForLanguage:completionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchSharedUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__AFSettingsConnection_fetchSharedUserIdentifier___block_invoke;
    v10[3] = &unk_1E7348AA8;
    v6 = identifierCopy;
    v11 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__AFSettingsConnection_fetchSharedUserIdentifier___block_invoke_2;
    v8[3] = &unk_1E73456D0;
    v9 = v6;
    [v7 fetchSharedUserIdentifier:v8];
  }
}

- (void)dumpAssistantState:(id)state
{
  stateCopy = state;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__AFSettingsConnection_dumpAssistantState___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = stateCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__AFSettingsConnection_dumpAssistantState___block_invoke_244;
  v8[3] = &unk_1E73456D0;
  v9 = v5;
  v7 = v5;
  [v6 dumpAssistantState:v8];
}

void __43__AFSettingsConnection_dumpAssistantState___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection dumpAssistantState:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __43__AFSettingsConnection_dumpAssistantState___block_invoke_244(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)areSiriSAEAssetsAvailable:(id)available
{
  availableCopy = available;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__AFSettingsConnection_areSiriSAEAssetsAvailable___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = availableCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__AFSettingsConnection_areSiriSAEAssetsAvailable___block_invoke_243;
  v8[3] = &unk_1E7345518;
  v9 = v5;
  v7 = v5;
  [v6 areSiriSAEAssetsAvailable:v8];
}

void __50__AFSettingsConnection_areSiriSAEAssetsAvailable___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection areSiriSAEAssetsAvailable:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)areSiriUODAssetsAvailable:(id)available
{
  availableCopy = available;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AFSettingsConnection_areSiriUODAssetsAvailable___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = availableCopy;
  v5 = availableCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 areSiriUODAssetsAvailable:v5];
}

void __50__AFSettingsConnection_areSiriUODAssetsAvailable___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection areSiriUODAssetsAvailable:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasEverSetLanguageCodeWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AFSettingsConnection_hasEverSetLanguageCodeWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 hasEverSetLanguageCodeWithCompletion:v5];
}

void __61__AFSettingsConnection_hasEverSetLanguageCodeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection hasEverSetLanguageCodeWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getRecordedAudioDirectoryPathsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AFSettingsConnection_getRecordedAudioDirectoryPathsWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getRecordedAudioDirectoryPathsWithCompletion:v5];
}

void __69__AFSettingsConnection_getRecordedAudioDirectoryPathsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getRecordedAudioDirectoryPathsWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)trimRecordedAudioWithIdentifier:(id)identifier offset:(double)offset duration:(double)duration outputFileType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__AFSettingsConnection_trimRecordedAudioWithIdentifier_offset_duration_outputFileType_completion___block_invoke;
  v16[3] = &unk_1E7348AA8;
  v17 = completionCopy;
  v13 = completionCopy;
  identifierCopy = identifier;
  v15 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v16];
  [v15 trimRecordedAudioWithIdentifier:identifierCopy offset:type duration:v13 outputFileType:offset completion:duration];
}

void __98__AFSettingsConnection_trimRecordedAudioWithIdentifier_offset_duration_outputFileType_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection trimRecordedAudioWithIdentifier:offset:duration:outputFileType:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)accessRecordedAudioWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__AFSettingsConnection_accessRecordedAudioWithIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  identifierCopy = identifier;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 accessRecordedAudioWithIdentifier:identifierCopy completion:v7];
}

void __69__AFSettingsConnection_accessRecordedAudioWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection accessRecordedAudioWithIdentifier:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)resetExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__AFSettingsConnection_resetExperimentForConfigurationIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  identifierCopy = identifier;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 resetExperimentForConfigurationIdentifier:identifierCopy completion:v7];
}

void __77__AFSettingsConnection_resetExperimentForConfigurationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection resetExperimentForConfigurationIdentifier:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)synchronizeExperimentConfigurationsIfApplicableWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__AFSettingsConnection_synchronizeExperimentConfigurationsIfApplicableWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 synchronizeExperimentConfigurationsIfApplicableWithCompletion:v5];
}

void __86__AFSettingsConnection_synchronizeExperimentConfigurationsIfApplicableWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection synchronizeExperimentConfigurationsIfApplicableWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getExperimentForConfigurationIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__AFSettingsConnection_getExperimentForConfigurationIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  identifierCopy = identifier;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getExperimentForConfigurationIdentifier:identifierCopy completion:v7];
}

void __75__AFSettingsConnection_getExperimentForConfigurationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getExperimentForConfigurationIdentifier:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getProximityTuplesWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__AFSettingsConnection_getProximityTuplesWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getProximityTuplesWithCompletion:v5];
}

void __57__AFSettingsConnection_getProximityTuplesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getProximityTuplesWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getCapabilitiesDataFromReachableDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__AFSettingsConnection_getCapabilitiesDataFromReachableDevicesWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getCapabilitiesDataFromReachableDevicesWithCompletion:v5];
}

void __78__AFSettingsConnection_getCapabilitiesDataFromReachableDevicesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getCapabilitiesDataFromReachableDevicesWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getManagedLocalAndRemotePeerInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AFSettingsConnection_getManagedLocalAndRemotePeerInfoWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getManagedLocalAndRemotePeerInfoWithCompletion:v5];
}

void __71__AFSettingsConnection_getManagedLocalAndRemotePeerInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getManagedLocalAndRemotePeerInfoWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setHardcodedBluetoothProximity:(id)proximity
{
  proximityCopy = proximity;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_242];
  [v5 setHardcodedBluetoothProximity:proximityCopy];
}

void __55__AFSettingsConnection_setHardcodedBluetoothProximity___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setHardcodedBluetoothProximity:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getContextCollectorsInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AFSettingsConnection_getContextCollectorsInfoWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getContextCollectorsInfoWithCompletion:v5];
}

void __63__AFSettingsConnection_getContextCollectorsInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getContextCollectorsInfoWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getOriginDeviceInfoForContextIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__AFSettingsConnection_getOriginDeviceInfoForContextIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  identifierCopy = identifier;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getOriginDeviceInfoForContextIdentifier:identifierCopy completion:v7];
}

void __75__AFSettingsConnection_getOriginDeviceInfoForContextIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getOriginDeviceInfoForContextIdentifier:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getCurrentContextSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AFSettingsConnection_getCurrentContextSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getCurrentContextSnapshotWithCompletion:v5];
}

void __64__AFSettingsConnection_getCurrentContextSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getCurrentContextSnapshotWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getCrossDeviceContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__AFSettingsConnection_getCrossDeviceContextWithCompletion___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = completionCopy;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getCrossDeviceContextWithCompletion:v6];
  }
}

void __60__AFSettingsConnection_getCrossDeviceContextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getCrossDeviceContextWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isSearchDataSharingStatusForced:(id)forced
{
  v15 = *MEMORY[0x1E69E9840];
  forcedCopy = forced;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[AFSettingsConnection isSearchDataSharingStatusForced:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Checking if Search Queries Data Sharing status is configured by profile", buf, 0xCu);
  }

  if (forcedCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__AFSettingsConnection_isSearchDataSharingStatusForced___block_invoke;
    v11[3] = &unk_1E7348AA8;
    v6 = forcedCopy;
    v12 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__AFSettingsConnection_isSearchDataSharingStatusForced___block_invoke_240;
    v9[3] = &unk_1E7345518;
    v10 = v6;
    [v7 isSearchDataSharingStatusForced:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __56__AFSettingsConnection_isSearchDataSharingStatusForced___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection isSearchDataSharingStatusForced:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __56__AFSettingsConnection_isSearchDataSharingStatusForced___block_invoke_240(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getSearchQueriesDataSharingStatus:(id)status
{
  v15 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[AFSettingsConnection getSearchQueriesDataSharingStatus:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Getting Search Queries Data Sharing", buf, 0xCu);
  }

  if (statusCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__AFSettingsConnection_getSearchQueriesDataSharingStatus___block_invoke;
    v11[3] = &unk_1E7348AA8;
    v6 = statusCopy;
    v12 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__AFSettingsConnection_getSearchQueriesDataSharingStatus___block_invoke_239;
    v9[3] = &unk_1E73456A8;
    v10 = v6;
    [v7 getSearchQueriesDataSharingStatus:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __58__AFSettingsConnection_getSearchQueriesDataSharingStatus___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getSearchQueriesDataSharingStatus:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, 2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __58__AFSettingsConnection_getSearchQueriesDataSharingStatus___block_invoke_239(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    if (a2 > 2)
    {
      v6 = @"(unknown)";
    }

    else
    {
      v6 = off_1E73472E8[a2];
    }

    v7 = v6;
    v10 = 136315395;
    v11 = "[AFSettingsConnection getSearchQueriesDataSharingStatus:]_block_invoke";
    v12 = 2113;
    v13 = v7;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s optin status = %{private}@", &v10, 0x16u);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, 0, a2);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setSearchQueriesDataSharingStatus:(int64_t)status completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (status > 2)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_1E73472E8[status];
    }

    v10 = v9;
    *buf = 136315395;
    v20 = "[AFSettingsConnection setSearchQueriesDataSharingStatus:completion:]";
    v21 = 2113;
    v22 = v10;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Setting Search Queries Data Sharing option to = %{private}@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__AFSettingsConnection_setSearchQueriesDataSharingStatus_completion___block_invoke;
  v17[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__AFSettingsConnection_setSearchQueriesDataSharingStatus_completion___block_invoke_238;
  v15[3] = &unk_1E73494D8;
  v16 = v11;
  v13 = v11;
  [v12 setSearchQueriesDataSharingStatus:status completion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __69__AFSettingsConnection_setSearchQueriesDataSharingStatus_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection setSearchQueriesDataSharingStatus:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __69__AFSettingsConnection_setSearchQueriesDataSharingStatus_completion___block_invoke_238(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)siriDesignModeIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__AFSettingsConnection_siriDesignModeIsEnabled___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = enabledCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AFSettingsConnection_siriDesignModeIsEnabled___block_invoke_237;
  v8[3] = &unk_1E7345518;
  v9 = v5;
  v7 = v5;
  [v6 siriDesignModeIsEnabled:v8];
}

void __48__AFSettingsConnection_siriDesignModeIsEnabled___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection siriDesignModeIsEnabled:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, 1);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __48__AFSettingsConnection_siriDesignModeIsEnabled___block_invoke_237(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __60__AFSettingsConnection_setSiriDesignModeEnabled_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection setSiriDesignModeEnabled:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __60__AFSettingsConnection_setSiriDesignModeEnabled_completion___block_invoke_236(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deleteSiriHistoryWithCompletion:(id)completion
{
  v9 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[AFSettingsConnection deleteSiriHistoryWithCompletion:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  [(AFSettingsConnection *)self deleteSiriHistoryWithContext:0 withCompletion:completionCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteSiriHistoryWithContext:(id)context withCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[AFSettingsConnection deleteSiriHistoryWithContext:withCompletion:]";
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__AFSettingsConnection_deleteSiriHistoryWithContext_withCompletion___block_invoke;
  v15[3] = &unk_1E7348AA8;
  v9 = completionCopy;
  v16 = v9;
  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__AFSettingsConnection_deleteSiriHistoryWithContext_withCompletion___block_invoke_235;
  v13[3] = &unk_1E7348AA8;
  v14 = v9;
  v11 = v9;
  [v10 deleteSiriHistoryWithContext:contextCopy withCompletion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __68__AFSettingsConnection_deleteSiriHistoryWithContext_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection deleteSiriHistoryWithContext:withCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __68__AFSettingsConnection_deleteSiriHistoryWithContext_withCompletion___block_invoke_235(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFSettingsConnection deleteSiriHistoryWithContext:withCompletion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Failed with error %@.", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[AFSettingsConnection deleteSiriHistoryWithContext:withCompletion:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Done", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)shouldSuppressSiriDataSharingOptInAlert:(id)alert
{
  alertCopy = alert;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AFSettingsConnection_shouldSuppressSiriDataSharingOptInAlert___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = alertCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__AFSettingsConnection_shouldSuppressSiriDataSharingOptInAlert___block_invoke_234;
  v8[3] = &unk_1E7345518;
  v9 = v5;
  v7 = v5;
  [v6 shouldSuppressSiriDataSharingOptInAlertWithCompletion:v8];
}

void __64__AFSettingsConnection_shouldSuppressSiriDataSharingOptInAlert___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection shouldSuppressSiriDataSharingOptInAlert:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __64__AFSettingsConnection_shouldSuppressSiriDataSharingOptInAlert___block_invoke_234(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection shouldSuppressSiriDataSharingOptInAlert:]_block_invoke";
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s status = %d", &v7, 0x12u);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, 0, a2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __68__AFSettingsConnection_setOnDeviceDictationAvailableAlertPresented___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setOnDeviceDictationAvailableAlertPresented:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __84__AFSettingsConnection_sendSampledAudioToServerIgnoringMinimumSampleAge_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection sendSampledAudioToServerIgnoringMinimumSampleAge:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __57__AFSettingsConnection_setIsHomePodInHH2Mode_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection setIsHomePodInHH2Mode:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __57__AFSettingsConnection_setIsHomePodInHH2Mode_completion___block_invoke_231(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __79__AFSettingsConnection_setSiriDataSharingHomePodSetupDeviceIsValid_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection setSiriDataSharingHomePodSetupDeviceIsValid:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __79__AFSettingsConnection_setSiriDataSharingHomePodSetupDeviceIsValid_completion___block_invoke_230(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __73__AFSettingsConnection_setSiriDataSharingOptInAlertPresented_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection setSiriDataSharingOptInAlertPresented:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __73__AFSettingsConnection_setSiriDataSharingOptInAlertPresented_completion___block_invoke_229(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __106__AFSettingsConnection_setSiriDataSharingOptInStatus_propagateToHomeAccessories_source_reason_completion___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[AFSettingsConnection setSiriDataSharingOptInStatus:propagateToHomeAccessories:source:reason:completion:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Error while attempting to set Siri data sharing optin status %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v10 = 136315394;
    v11 = "[AFSettingsConnection setSiriDataSharingOptInStatus:propagateToHomeAccessories:source:reason:completion:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Siri data sharing optin status is set to %@ and propagation (if required) has been kicked off", &v10, 0x16u);
  }

  v6 = a1[5];
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getSiriDataSharingOptInStatusWithCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[AFSettingsConnection getSiriDataSharingOptInStatusWithCompletion:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Getting siri data sharing optin status", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__AFSettingsConnection_getSiriDataSharingOptInStatusWithCompletion___block_invoke;
  v12[3] = &unk_1E7348AA8;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AFSettingsConnection_getSiriDataSharingOptInStatusWithCompletion___block_invoke_227;
  v10[3] = &unk_1E73456A8;
  v11 = v6;
  v8 = v6;
  [v7 getSiriDataSharingOptInStatusWithCompletion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __68__AFSettingsConnection_getSiriDataSharingOptInStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getSiriDataSharingOptInStatusWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __68__AFSettingsConnection_getSiriDataSharingOptInStatusWithCompletion___block_invoke_227(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    if (a2 > 3)
    {
      v6 = @"(unknown)";
    }

    else
    {
      v6 = off_1E7348978[a2];
    }

    v7 = v6;
    v10 = 136315394;
    v11 = "[AFSettingsConnection getSiriDataSharingOptInStatusWithCompletion:]_block_invoke";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s optin status = %@", &v10, 0x16u);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, 0, a2);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setSiriDataSharingOptInStatus:(int64_t)status completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (status > 3)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E7348978[status];
  }

  v8 = v7;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[AFSettingsConnection setSiriDataSharingOptInStatus:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s Setting siri data sharing optin status to = %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy__22355;
  v24 = __Block_byref_object_dispose__22356;
  selfCopy = self;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__AFSettingsConnection_setSiriDataSharingOptInStatus_completion___block_invoke;
  v18[3] = &unk_1E7345680;
  v10 = v8;
  v19 = v10;
  v11 = completionCopy;
  v20 = v11;
  v21 = buf;
  v12 = MEMORY[0x193AFB7B0](v18);
  v13 = [*(*&buf[8] + 40) _settingsServiceWithErrorHandler:v12];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__AFSettingsConnection_setSiriDataSharingOptInStatus_completion___block_invoke_226;
  v16[3] = &unk_1E73494D8;
  v14 = v12;
  v17 = v14;
  [v13 setSiriDataSharingOptInStatus:status completion:v16];

  _Block_object_dispose(buf, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void __65__AFSettingsConnection_setSiriDataSharingOptInStatus_completion___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[AFSettingsConnection setSiriDataSharingOptInStatus:completion:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Failed to set Siri data sharing optin status %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v10 = 136315394;
    v11 = "[AFSettingsConnection setSiriDataSharingOptInStatus:completion:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Siri data sharing optin status is set to %@", &v10, 0x16u);
  }

  v6 = a1[5];
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)siriGradingIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AFSettingsConnection_siriGradingIsEnabled___block_invoke;
  v6[3] = &unk_1E7345658;
  v7 = enabledCopy;
  v5 = enabledCopy;
  [(AFSettingsConnection *)self getSiriDataSharingOptInStatusWithCompletion:v6];
}

uint64_t __45__AFSettingsConnection_siriGradingIsEnabled___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3 == 1);
  }

  return result;
}

- (void)setSiriGradingEnabled:(BOOL)enabled completion:(id)completion
{
  if (enabled)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [(AFSettingsConnection *)self setSiriDataSharingOptInStatus:v4 propagateToHomeAccessories:0 source:0 reason:@"Legacy Setter" completion:completion];
}

- (void)getSharedUserID:(id)d
{
  dCopy = d;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AFSettingsConnection_getSharedUserID___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = dCopy;
  v5 = dCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getSharedUserID:v5];
}

uint64_t __40__AFSettingsConnection_getSharedUserID___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __53__AFSettingsConnection_resetProfileNames_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFSettingsConnection resetProfileNames:completion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s error creating remote object is %@", &v7, 0x16u);
      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)showHomeProfileNamesWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__AFSettingsConnection_showHomeProfileNamesWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 showHomeProfileNamesWithCompletion:v5];
}

void __59__AFSettingsConnection_showHomeProfileNamesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFSettingsConnection showHomeProfileNamesWithCompletion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s error creating remote object - %@", &v7, 0x16u);
      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)showLocalProfileNamesWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFSettingsConnection_showLocalProfileNamesWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 showLocalProfileNamesWithCompletion:v5];
}

void __60__AFSettingsConnection_showLocalProfileNamesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFSettingsConnection showLocalProfileNamesWithCompletion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s error creating remote object - %@", &v7, 0x16u);
      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)showMultiUserSharedUserIDsCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AFSettingsConnection_showMultiUserSharedUserIDsCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 showMultiUserSharedUserIDsCompletion:v5];
}

void __61__AFSettingsConnection_showMultiUserSharedUserIDsCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFSettingsConnection showMultiUserSharedUserIDsCompletion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s error is %@", &v7, 0x16u);
      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, 0, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)showPrimaryUserSharedUserIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AFSettingsConnection_showPrimaryUserSharedUserIDWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 showPrimaryUserSharedUserIDWithCompletion:v5];
}

void __66__AFSettingsConnection_showPrimaryUserSharedUserIDWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFSettingsConnection showPrimaryUserSharedUserIDWithCompletion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s error is %@", &v7, 0x16u);
      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getMultiUserCompanionInfo:(id)info
{
  infoCopy = info;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AFSettingsConnection_getMultiUserCompanionInfo___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = infoCopy;
  v5 = infoCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getMultiUserCompanionInfo:v5];
}

void __50__AFSettingsConnection_getMultiUserCompanionInfo___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFSettingsConnection getMultiUserCompanionInfo:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s error is %@", &v7, 0x16u);
      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)showMultiUserCompanionInfo:(id)info
{
  infoCopy = info;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AFSettingsConnection_showMultiUserCompanionInfo___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = infoCopy;
  v5 = infoCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 showMultiUserCompanionInfo:v5];
}

void __51__AFSettingsConnection_showMultiUserCompanionInfo___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFSettingsConnection showMultiUserCompanionInfo:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s error is %@", &v7, 0x16u);
      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)showMultiUsers:(id)users
{
  usersCopy = users;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__AFSettingsConnection_showMultiUsers___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = usersCopy;
  v5 = usersCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 showMultiUsers:v5];
}

void __39__AFSettingsConnection_showMultiUsers___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFSettingsConnection showMultiUsers:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s error is %@", &v7, 0x16u);
      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeMultiUserWithSharedUserID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__AFSettingsConnection_removeMultiUserWithSharedUserID_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  dCopy = d;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 removeMultiUserUserWithSharedUserId:dCopy completion:v7];
}

uint64_t __67__AFSettingsConnection_removeMultiUserWithSharedUserID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeMultiUserUser:(id)user completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__AFSettingsConnection_removeMultiUserUser_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  userCopy = user;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 removeMultiUserUser:userCopy completion:v7];
}

uint64_t __55__AFSettingsConnection_removeMultiUserUser_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __117__AFSettingsConnection_addMultiUserUser_sharedId_loggableSharedId_iCloudAltDSID_enrollmentName_isPrimary_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)multiUserCompanionDeviceIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (identifiersCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__AFSettingsConnection_multiUserCompanionDeviceIdentifiers___block_invoke;
    v12[3] = &unk_1E7348AA8;
    v6 = identifiersCopy;
    v13 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v12];
    v8 = AFSiriLogContextConnection;
    if (!v7 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[AFSettingsConnection multiUserCompanionDeviceIdentifiers:]";
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s Setting services handle is missing", buf, 0xCu);
      v8 = AFSiriLogContextConnection;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[AFSettingsConnection multiUserCompanionDeviceIdentifiers:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s Calling Settings service", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__AFSettingsConnection_multiUserCompanionDeviceIdentifiers___block_invoke_221;
    v10[3] = &unk_1E73454A8;
    v11 = v6;
    [v7 multiUserCompanionDeviceIdentifiers:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __60__AFSettingsConnection_multiUserCompanionDeviceIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = v4;
    v8 = [v3 userInfo];
    v9 = 136315394;
    v10 = "[AFSettingsConnection multiUserCompanionDeviceIdentifiers:]_block_invoke";
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Received error while finding multi user companion rapport identifiers %@", &v9, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getPersonalMultiUserDeviceIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (identifiersCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__AFSettingsConnection_getPersonalMultiUserDeviceIdentifiers___block_invoke;
    v12[3] = &unk_1E7348AA8;
    v6 = identifiersCopy;
    v13 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v12];
    if (!v7)
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "[AFSettingsConnection getPersonalMultiUserDeviceIdentifiers:]";
        _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s Setting services handle is missing", buf, 0xCu);
      }
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__AFSettingsConnection_getPersonalMultiUserDeviceIdentifiers___block_invoke_220;
    v10[3] = &unk_1E73454A8;
    v11 = v6;
    [v7 getPersonalMultiUserDeviceIdentifiers:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __62__AFSettingsConnection_getPersonalMultiUserDeviceIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = v4;
    v8 = [a2 userInfo];
    v9 = 136315394;
    v10 = "[AFSettingsConnection getPersonalMultiUserDeviceIdentifiers:]_block_invoke";
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Received error while finding multi user device rapport identifiers %@", &v9, 0x16u);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getSharedUserIdForHomeUserId:(id)id completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AFSettingsConnection_getSharedUserIdForHomeUserId_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  idCopy = id;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getSharedUserIdForHomeUserId:idCopy completion:v7];
}

uint64_t __64__AFSettingsConnection_getSharedUserIdForHomeUserId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getHomeUserIdForSharedUserId:(id)id completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AFSettingsConnection_getHomeUserIdForSharedUserId_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  idCopy = id;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getHomeUserIdForSharedUserId:idCopy completion:v7];
}

uint64_t __64__AFSettingsConnection_getHomeUserIdForSharedUserId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)postJSDiscoveryNotificationForBTDeviceWithInfo:(id)info withCompletion:(id)completion
{
  infoCopy = info;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__AFSettingsConnection_postJSDiscoveryNotificationForBTDeviceWithInfo_withCompletion___block_invoke;
  v10[3] = &unk_1E73493C0;
  v11 = infoCopy;
  v7 = infoCopy;
  completionCopy = completion;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 postJSDiscoveryNotificationForBTDeviceWithInfo:v7 withCompletion:completionCopy];
}

void __86__AFSettingsConnection_postJSDiscoveryNotificationForBTDeviceWithInfo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[AFSettingsConnection postJSDiscoveryNotificationForBTDeviceWithInfo:withCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Failed to connect and post JS discovery notification for BT Device %@, error: %@", &v7, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopObservingBluetoothInEarDetectionStateForObserverID:(unint64_t)d
{
  v4 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_219];
  [v4 stopObservingBluetoothInEarDetectionStateForObserverID:d];
}

void __79__AFSettingsConnection_stopObservingBluetoothInEarDetectionStateForObserverID___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection stopObservingBluetoothInEarDetectionStateForObserverID:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Failed to connect and stop observing in-ear detection state: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startObservingBluetoothInEarDetectionStateForBTAddress:(id)address forObserverID:(unint64_t)d
{
  addressCopy = address;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__AFSettingsConnection_startObservingBluetoothInEarDetectionStateForBTAddress_forObserverID___block_invoke;
  v9[3] = &unk_1E73493C0;
  v10 = addressCopy;
  v7 = addressCopy;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v9];
  [v8 startObservingBluetoothInEarDetectionStateForBTAddress:v7 forObserverID:d];
}

void __93__AFSettingsConnection_startObservingBluetoothInEarDetectionStateForBTAddress_forObserverID___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[AFSettingsConnection startObservingBluetoothInEarDetectionStateForBTAddress:forObserverID:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Failed to connect and start observing in-ear detection state for %@: %@", &v7, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getInEarDetectionStateForBTAddress:(id)address withCompletion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__AFSettingsConnection_getInEarDetectionStateForBTAddress_withCompletion___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v7 = completionCopy;
  v14 = v7;
  addressCopy = address;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__AFSettingsConnection_getInEarDetectionStateForBTAddress_withCompletion___block_invoke_2;
  v11[3] = &unk_1E7345630;
  v12 = v7;
  v10 = v7;
  [v9 getInEarDetectionStateForBTAddress:addressCopy withCompletion:v11];
}

uint64_t __74__AFSettingsConnection_getInEarDetectionStateForBTAddress_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __74__AFSettingsConnection_getInEarDetectionStateForBTAddress_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)stopObservingWirelessSplitterSession
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_216];
  [v2 stopObservingBluetoothWirelessSplitterSession];
}

void __60__AFSettingsConnection_stopObservingWirelessSplitterSession__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection stopObservingWirelessSplitterSession]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Failed to connect and stop observing wireless splitter session: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startObservingWirelessSplitterSession
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_214];
  [v2 startObservingBluetoothWirelessSplitterSession];
}

void __61__AFSettingsConnection_startObservingWirelessSplitterSession__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection startObservingWirelessSplitterSession]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Failed to connect and start observing wireless splitter session: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getBluetoothWirelessSplitterSessionInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__AFSettingsConnection_getBluetoothWirelessSplitterSessionInfoWithCompletion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__AFSettingsConnection_getBluetoothWirelessSplitterSessionInfoWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7345608;
  v9 = v5;
  v7 = v5;
  [v6 getBluetoothWirelessSplitterSessionInfoWithCompletion:v8];
}

uint64_t __78__AFSettingsConnection_getBluetoothWirelessSplitterSessionInfoWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __78__AFSettingsConnection_getBluetoothWirelessSplitterSessionInfoWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)getPairedBluetoothDeviceInfoArrayWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__AFSettingsConnection_getPairedBluetoothDeviceInfoArrayWithCompletion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__AFSettingsConnection_getPairedBluetoothDeviceInfoArrayWithCompletion___block_invoke_2;
  v8[3] = &unk_1E73454A8;
  v9 = v5;
  v7 = v5;
  [v6 getPairedBluetoothDeviceInfoArrayWithCompletion:v8];
}

uint64_t __72__AFSettingsConnection_getPairedBluetoothDeviceInfoArrayWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __72__AFSettingsConnection_getPairedBluetoothDeviceInfoArrayWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)getConnectedBluetoothDeviceInfoArrayWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__AFSettingsConnection_getConnectedBluetoothDeviceInfoArrayWithCompletion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__AFSettingsConnection_getConnectedBluetoothDeviceInfoArrayWithCompletion___block_invoke_2;
  v8[3] = &unk_1E73454A8;
  v9 = v5;
  v7 = v5;
  [v6 getConnectedBluetoothDeviceInfoArrayWithCompletion:v8];
}

uint64_t __75__AFSettingsConnection_getConnectedBluetoothDeviceInfoArrayWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __75__AFSettingsConnection_getConnectedBluetoothDeviceInfoArrayWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)getBluetoothDeviceInfoWithUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__AFSettingsConnection_getBluetoothDeviceInfoWithUID_completion___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v7 = completionCopy;
  v14 = v7;
  dCopy = d;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__AFSettingsConnection_getBluetoothDeviceInfoWithUID_completion___block_invoke_2;
  v11[3] = &unk_1E73455E0;
  v12 = v7;
  v10 = v7;
  [v9 getBluetoothDeviceInfoWithUID:dCopy completion:v11];
}

uint64_t __65__AFSettingsConnection_getBluetoothDeviceInfoWithUID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __65__AFSettingsConnection_getBluetoothDeviceInfoWithUID_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)getBluetoothDeviceInfoWithAddress:(id)address completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AFSettingsConnection_getBluetoothDeviceInfoWithAddress_completion___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v7 = completionCopy;
  v14 = v7;
  addressCopy = address;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__AFSettingsConnection_getBluetoothDeviceInfoWithAddress_completion___block_invoke_2;
  v11[3] = &unk_1E73455E0;
  v12 = v7;
  v10 = v7;
  [v9 getBluetoothDeviceInfoWithAddress:addressCopy completion:v11];
}

uint64_t __69__AFSettingsConnection_getBluetoothDeviceInfoWithAddress_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __69__AFSettingsConnection_getBluetoothDeviceInfoWithAddress_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)setSiriOutputVolume:(float)volume forAudioRoute:(id)route completion:(id)completion
{
  completionCopy = completion;
  routeCopy = route;
  v11 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:completionCopy];
  *&v10 = volume;
  [v11 setSiriOutputVolume:routeCopy forAudioRoute:completionCopy completion:v10];
}

- (void)getSiriOutputVolumeForAudioRoute:(id)route completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AFSettingsConnection_getSiriOutputVolumeForAudioRoute_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  routeCopy = route;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getSiriOutputVolumeForAudioRoute:routeCopy completion:v7];
}

uint64_t __68__AFSettingsConnection_getSiriOutputVolumeForAudioRoute_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(0.0);
  }

  return result;
}

- (void)fetchExperimentContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AFSettingsConnection_fetchExperimentContextWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 fetchExperimentContextWithCompletion:v5];
}

uint64_t __61__AFSettingsConnection_fetchExperimentContextWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchExperimentConfigurationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__AFSettingsConnection_fetchExperimentConfigurationsWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 fetchExperimentConfigurationsWithCompletion:v5];
}

uint64_t __68__AFSettingsConnection_fetchExperimentConfigurationsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)sendMetricsToServerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:completionCopy];
  [v5 sendMetricsToServerWithCompletion:completionCopy];
}

- (void)resetAnalyticsStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:completionCopy];
  [v5 resetAnalyticsStoreWithCompletion:completionCopy];
}

- (void)purgeAnalyticsStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:completionCopy];
  [v5 purgeAnalyticsStoreWithCompletion:completionCopy];
}

- (void)fetchEventRecordsFromAnalyticsStoreAtPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__AFSettingsConnection_fetchEventRecordsFromAnalyticsStoreAtPath_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  pathCopy = path;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 fetchEventRecordsFromAnalyticsStoreAtPath:pathCopy completion:v7];
}

uint64_t __77__AFSettingsConnection_fetchEventRecordsFromAnalyticsStoreAtPath_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)setNanoAlwaysShowRecognizedSpeech:(BOOL)speech withCompletion:(id)completion
{
  speechCopy = speech;
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoAlwaysShowRecognizedSpeech:withCompletion:]";
    v10 = 1024;
    v11 = speechCopy;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoSiriResponseShouldAlwaysPrint:(BOOL)print withCompletion:(id)completion
{
  printCopy = print;
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoSiriResponseShouldAlwaysPrint:withCompletion:]";
    v10 = 1024;
    v11 = printCopy;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v7 = *MEMORY[0x1E69E9840];
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
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoCrownActivationEnabled:withCompletion:]";
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoLanguage:(id)language withCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[AFSettingsConnection setNanoLanguage:withCompletion:]";
    v11 = 2112;
    v12 = languageCopy;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNanoOutputVoice:(id)voice withCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  voiceCopy = voice;
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[AFSettingsConnection setNanoOutputVoice:withCompletion:]";
    v11 = 2112;
    v12 = voiceCopy;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNanoTTSSpeakerVolume:(id)volume withCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[AFSettingsConnection setNanoTTSSpeakerVolume:withCompletion:]";
    v11 = 2112;
    v12 = volumeCopy;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNanoUseDeviceSpeakerForTTS:(id)s withCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  sCopy = s;
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[AFSettingsConnection setNanoUseDeviceSpeakerForTTS:withCompletion:]";
    v11 = 2112;
    v12 = sCopy;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNanoRaiseToSpeakEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoRaiseToSpeakEnabled:withCompletion:]";
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoPhraseSpotterEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoPhraseSpotterEnabled:withCompletion:]";
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoDictationAutoPunctuationEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoDictationAutoPunctuationEnabled:withCompletion:]";
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoDictationEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoDictationEnabled:withCompletion:]";
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoAssistantEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoAssistantEnabled:withCompletion:]";
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)publishFeedbackArbitrationParticipation:(id)participation
{
  participationCopy = participation;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_210];
  [v5 publishFeedbackArbitrationParticipation:participationCopy];
}

void __64__AFSettingsConnection_publishFeedbackArbitrationParticipation___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection publishFeedbackArbitrationParticipation:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getStereoPairState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__AFSettingsConnection_getStereoPairState___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = stateCopy;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getStereoPairState:v6];
  }
}

- (void)getStereoPartnerLastMyriadWinDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__AFSettingsConnection_getStereoPartnerLastMyriadWinDate___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = dateCopy;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getStereoPartnerLastMyriadWinDate:v6];
  }
}

- (void)getMeCard:(id)card
{
  v14 = *MEMORY[0x1E69E9840];
  cardCopy = card;
  if (cardCopy)
  {
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    if (AFIsHorseman_isHorseman == 1 && (AFIsHorseman_isHorseman & 1) == 0)
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v13 = "[AFSettingsConnection getMeCard:]";
        _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s Can not get meCard on this device", buf, 0xCu);
      }

      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:1010 userInfo:0];
      cardCopy[2](cardCopy, 0, v7);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __34__AFSettingsConnection_getMeCard___block_invoke;
      v10[3] = &unk_1E7348AA8;
      v5 = cardCopy;
      v11 = v5;
      v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
      [v6 getMeCard:v5];

      v7 = v11;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __34__AFSettingsConnection_getMeCard___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[AFSettingsConnection getMeCard:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Hit error %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getHorsemanSupplementalLanguageDictionary:(id)dictionary
{
  if (dictionary)
  {
    [(AFSettingsConnection *)self getSupplementalLanguageDictionaryForProduct:*MEMORY[0x1E69C83F0] completion:dictionary];
  }
}

- (void)getSupplementalLanguagesForProduct:(id)product forBuildVersion:(id)version completion:(id)completion
{
  completionCopy = completion;
  v9 = completionCopy;
  if (completionCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__AFSettingsConnection_getSupplementalLanguagesForProduct_forBuildVersion_completion___block_invoke;
    v14[3] = &unk_1E7348AA8;
    v10 = completionCopy;
    v15 = v10;
    versionCopy = version;
    productCopy = product;
    v13 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v14];
    [v13 getSupplementalLanguagesForProduct:productCopy forBuildVersion:versionCopy completion:v10];
  }
}

- (void)getSupplementalLanguageDictionaryForProduct:(id)product completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__AFSettingsConnection_getSupplementalLanguageDictionaryForProduct_completion___block_invoke;
    v11[3] = &unk_1E7348AA8;
    v8 = completionCopy;
    v12 = v8;
    productCopy = product;
    v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v11];
    [v10 getSupplementalLanguageDictionaryForProduct:productCopy completion:v8];
  }
}

- (void)getSupplementalLanguagesModificationDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__AFSettingsConnection_getSupplementalLanguagesModificationDate___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = dateCopy;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getSupplementalLanguagesModificationDate:v6];
  }
}

- (void)getSupplementalLanguagesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__AFSettingsConnection_getSupplementalLanguagesDictionary___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = dictionaryCopy;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getSupplementalLanguagesDictionary:v6];
  }
}

- (void)setSupplementalLanguages:(id)languages forProduct:(id)product forBuildVersion:(id)version completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__AFSettingsConnection_setSupplementalLanguages_forProduct_forBuildVersion_completion___block_invoke;
  v18[3] = &unk_1E7348AA8;
  v19 = completionCopy;
  v11 = completionCopy;
  versionCopy = version;
  productCopy = product;
  languagesCopy = languages;
  v15 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v18];
  v16 = v15;
  if (v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = &__block_literal_global_207;
  }

  [v15 setSupplementalLanguages:languagesCopy forProduct:productCopy forBuildVersion:versionCopy completion:v17];
}

uint64_t __87__AFSettingsConnection_setSupplementalLanguages_forProduct_forBuildVersion_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setSupplementalLanguageDictionary:(id)dictionary forProduct:(id)product completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__AFSettingsConnection_setSupplementalLanguageDictionary_forProduct_completion___block_invoke;
  v15[3] = &unk_1E7348AA8;
  v16 = completionCopy;
  v9 = completionCopy;
  productCopy = product;
  dictionaryCopy = dictionary;
  v12 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v15];
  v13 = v12;
  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = &__block_literal_global_205;
  }

  [v12 setSupplementalLanguageDictionary:dictionaryCopy forProduct:productCopy completion:v14];
}

uint64_t __80__AFSettingsConnection_setSupplementalLanguageDictionary_forProduct_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)postTestResultSelectedWithRcId:(id)id
{
  idCopy = id;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_203];
  [v5 postTestResultSelectedWithRcId:idCopy];
}

void __55__AFSettingsConnection_postTestResultSelectedWithRcId___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection postTestResultSelectedWithRcId:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)postTestResultCandidateWithRcId:(id)id recognitionSausage:(id)sausage
{
  sausageCopy = sausage;
  idCopy = id;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_201];
  [v8 postTestResultCandidateWithRcId:idCopy recognitionSausage:sausageCopy];
}

void __75__AFSettingsConnection_postTestResultCandidateWithRcId_recognitionSausage___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection postTestResultCandidateWithRcId:recognitionSausage:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __53__AFSettingsConnection_stopAllAudioPlaybackRequests___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection stopAllAudioPlaybackRequests:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __61__AFSettingsConnection_stopAudioPlaybackRequest_immediately___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection stopAudioPlaybackRequest:immediately:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startAudioPlaybackRequest:(id)request options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__AFSettingsConnection_startAudioPlaybackRequest_options_completion___block_invoke;
  v14[3] = &unk_1E7348AA8;
  v15 = completionCopy;
  v9 = completionCopy;
  requestCopy = request;
  v11 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v14];
  v12 = v11;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = &__block_literal_global_195;
  }

  [v11 startAudioPlaybackRequest:requestCopy options:options completion:v13];
}

uint64_t __69__AFSettingsConnection_startAudioPlaybackRequest_options_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getPeerIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__AFSettingsConnection_getPeerIdentifiers___block_invoke;
  v9[3] = &unk_1E7348AA8;
  v10 = identifiersCopy;
  v5 = identifiersCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v9];
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &__block_literal_global_193;
  }

  [v6 getPeerIdentifiers:v8];
}

uint64_t __43__AFSettingsConnection_getPeerIdentifiers___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)startRemoteRequest:(id)request onPeer:(id)peer completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__AFSettingsConnection_startRemoteRequest_onPeer_completion___block_invoke;
  v15[3] = &unk_1E7348AA8;
  v16 = completionCopy;
  v9 = completionCopy;
  peerCopy = peer;
  requestCopy = request;
  v12 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v15];
  v13 = v12;
  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = &__block_literal_global_191;
  }

  [v12 startRemoteRequest:requestCopy onPeer:peerCopy completion:v14];
}

uint64_t __61__AFSettingsConnection_startRemoteRequest_onPeer_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissUI
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_189];
  [v2 dismissUI];
}

void __33__AFSettingsConnection_dismissUI__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection dismissUI]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startMultiUserUIRequestWithText:(id)text expectedSpeakerSharedUserID:(id)d expectedSpeakerConfidenceScore:(unint64_t)score nonspeakerConfidenceScores:(id)scores completion:(id)completion
{
  completionCopy = completion;
  scoresCopy = scores;
  dCopy = d;
  textCopy = text;
  v16 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_187];
  [v16 startMultiUserUIRequestWithText:textCopy expectedSpeakerSharedUserID:dCopy expectedSpeakerConfidenceScore:score nonspeakerConfidenceScores:scoresCopy completion:completionCopy];
}

void __153__AFSettingsConnection_startMultiUserUIRequestWithText_expectedSpeakerSharedUserID_expectedSpeakerConfidenceScore_nonspeakerConfidenceScores_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection startMultiUserUIRequestWithText:expectedSpeakerSharedUserID:expectedSpeakerConfidenceScore:nonspeakerConfidenceScores:completion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setReplayOverridePath:(id)path
{
  pathCopy = path;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_185];
  [v5 setReplayOverridePath:pathCopy];
}

void __46__AFSettingsConnection_setReplayOverridePath___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setReplayOverridePath:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __41__AFSettingsConnection_setReplayEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setReplayEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)replayRecordedViewAt:(unint64_t)at with:(id)with
{
  v18 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    path = [withCopy path];
    v12 = 136315650;
    v13 = "[AFSettingsConnection replayRecordedViewAt:with:]";
    v14 = 2048;
    atCopy = at;
    v16 = 2112;
    v17 = path;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s #ReplayAt. index: %lu,  recordingDataURL: %@", &v12, 0x20u);
  }

  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_181];
  [v10 replayRecordedViewAt:at with:withCopy];

  v11 = *MEMORY[0x1E69E9840];
}

void __50__AFSettingsConnection_replayRecordedViewAt_with___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection replayRecordedViewAt:with:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)replayAllRecordedViews:(unint64_t)views with:(id)with
{
  v18 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    path = [withCopy path];
    v12 = 136315650;
    v13 = "[AFSettingsConnection replayAllRecordedViews:with:]";
    v14 = 2048;
    viewsCopy = views;
    v16 = 2112;
    v17 = path;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s #ReplayAll. intervalSeconds: %lu,  recordingDataURL: %@", &v12, 0x20u);
  }

  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_179];
  [v10 replayAllRecordedViews:views with:withCopy];

  v11 = *MEMORY[0x1E69E9840];
}

void __52__AFSettingsConnection_replayAllRecordedViews_with___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection replayAllRecordedViews:with:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startUIRequestWithInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_177];
  [v8 startUIRequestWithInfo:infoCopy completion:completionCopy];
}

void __58__AFSettingsConnection_startUIRequestWithInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection startUIRequestWithInfo:completion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startUIRequestWithText:(id)text completion:(id)completion
{
  completionCopy = completion;
  textCopy = text;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_175];
  [v8 startUIRequestWithText:textCopy completion:completionCopy];
}

void __58__AFSettingsConnection_startUIRequestWithText_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection startUIRequestWithText:completion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startUIMockServerRequestWithReplayFileURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_173];
  [v8 startUIMockServerRequestWithReplayFileURL:lCopy completion:completionCopy];
}

void __77__AFSettingsConnection_startUIMockServerRequestWithReplayFileURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection startUIMockServerRequestWithReplayFileURL:completion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startUIRequestWithSpeechAudioFileURL:(id)l
{
  lCopy = l;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_171];
  [v5 startUIRequestWithSpeechAudioFileURL:lCopy];
}

void __61__AFSettingsConnection_startUIRequestWithSpeechAudioFileURL___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection startUIRequestWithSpeechAudioFileURL:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startUIRequestWithInfo:(id)info
{
  infoCopy = info;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_166];
  [v5 startUIRequestWithInfo:infoCopy completion:&__block_literal_global_169];
}

void __47__AFSettingsConnection_startUIRequestWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection startUIRequestWithInfo:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startUIRequestWithText:(id)text
{
  textCopy = text;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_161];
  [v5 startUIRequestWithText:textCopy completion:&__block_literal_global_164];
}

void __47__AFSettingsConnection_startUIRequestWithText___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection startUIRequestWithText:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startUIRequest:(id)request
{
  if (request)
  {

    [(AFSettingsConnection *)self startUIRequestWithText:?];
  }

  else
  {
    v7 = objc_alloc_init(AFRequestInfo);
    v4 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:19];
    [(AFSpeechRequestOptions *)v4 setEndpointerOperationMode:3];
    [(AFRequestInfo *)v7 setSpeechRequestOptions:v4];
    if ([(AFSettingsConnection *)self _shouldSetTurnIdentifierForRequest])
    {
      v5 = [AFAnalyticsTurnBasedInstrumentationContext newTurnBasedContextWithPreviousTurnID:0];
      turnIdentifier = [v5 turnIdentifier];
      [(AFRequestInfo *)v7 setTurnIdentifier:turnIdentifier];
    }

    [(AFSettingsConnection *)self startUIRequestWithInfo:v7];
  }
}

- (void)isVoiceTriggerEnabled:(id)enabled
{
  enabledCopy = enabled;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__AFSettingsConnection_isVoiceTriggerEnabled___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = enabledCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__AFSettingsConnection_isVoiceTriggerEnabled___block_invoke_2;
  v8[3] = &unk_1E73455B8;
  v9 = v5;
  v7 = v5;
  [v6 isVoiceTriggerEnabled:v8];
}

- (void)isJustSiriEnabledInTheHome:(id)home
{
  homeCopy = home;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__AFSettingsConnection_isJustSiriEnabledInTheHome___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = homeCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__AFSettingsConnection_isJustSiriEnabledInTheHome___block_invoke_2;
  v8[3] = &unk_1E7345518;
  v9 = v5;
  v7 = v5;
  [v6 isJustSiriEnabledInTheHome:v8];
}

- (void)availableLanguagesInTheHome:(id)home
{
  v15 = *MEMORY[0x1E69E9840];
  homeCopy = home;
  if (homeCopy)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[AFSettingsConnection availableLanguagesInTheHome:]";
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Retrieving home accessories Siri languages", buf, 0xCu);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__AFSettingsConnection_availableLanguagesInTheHome___block_invoke;
    v11[3] = &unk_1E7348AA8;
    v6 = homeCopy;
    v12 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__AFSettingsConnection_availableLanguagesInTheHome___block_invoke_2;
    v9[3] = &unk_1E73454A8;
    v10 = v6;
    [v7 availableLanguagesInTheHome:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __51__AFSettingsConnection_setRecognizeMyVoiceEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setRecognizeMyVoiceEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getCurrentAccessoryInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_151];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__AFSettingsConnection_getCurrentAccessoryInfoWithCompletion___block_invoke_152;
    v6[3] = &unk_1E7345590;
    v7 = completionCopy;
    [v5 getCurrentAccessoryInfoWithCompletion:v6];
  }
}

void __62__AFSettingsConnection_getCurrentAccessoryInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection getCurrentAccessoryInfoWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setLanguage:(id)language outputVoice:(id)voice withCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  voiceCopy = voice;
  completionCopy = completion;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[AFSettingsConnection setLanguage:outputVoice:withCompletion:]";
    v22 = 2112;
    v23 = voiceCopy;
    v24 = 2112;
    v25 = languageCopy;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s Setting Siri output voice:%@ language code: %@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__AFSettingsConnection_setLanguage_outputVoice_withCompletion___block_invoke;
  v18[3] = &unk_1E7348AA8;
  v12 = completionCopy;
  v19 = v12;
  v13 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__AFSettingsConnection_setLanguage_outputVoice_withCompletion___block_invoke_2;
  v16[3] = &unk_1E7347E40;
  v17 = v12;
  v14 = v12;
  [v13 setLanguage:languageCopy outputVoice:voiceCopy withCompletion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __63__AFSettingsConnection_setLanguage_outputVoice_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __63__AFSettingsConnection_setLanguage_outputVoice_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  CFPreferencesAppSynchronize(@"com.apple.assistant.backedup");
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)setLanguage:(id)language withCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[AFSettingsConnection setLanguage:withCompletion:]";
    v19 = 2112;
    v20 = languageCopy;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Setting Siri language code: %@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__AFSettingsConnection_setLanguage_withCompletion___block_invoke;
  v15[3] = &unk_1E7348AA8;
  v9 = completionCopy;
  v16 = v9;
  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__AFSettingsConnection_setLanguage_withCompletion___block_invoke_2;
  v13[3] = &unk_1E73494D8;
  v14 = v9;
  v11 = v9;
  [v10 setLanguage:languageCopy withCompletion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __51__AFSettingsConnection_setLanguage_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __51__AFSettingsConnection_setLanguage_withCompletion___block_invoke_2(uint64_t a1)
{
  CFPreferencesAppSynchronize(@"com.apple.assistant.backedup");
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setOutputVoice:(id)voice withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  voiceCopy = voice;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[AFSettingsConnection setOutputVoice:withCompletion:]";
    v18 = 2112;
    v19 = voiceCopy;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Setting Siri output voice: %@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__AFSettingsConnection_setOutputVoice_withCompletion___block_invoke;
  v14[3] = &unk_1E7348AA8;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v14];
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &__block_literal_global_149;
  }

  [v10 setOutputVoice:voiceCopy withCompletion:v12];

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __54__AFSettingsConnection_setOutputVoice_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __82__AFSettingsConnection_getAvailableVoicesForLanguage_includeAssetInfo_completion___block_invoke(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = a1[4];
    v5 = [v3 _voices];
    v4 = [v3 _filterVoices:v5 forLanguage:a1[5]];
    (*(v1 + 16))(v1, v4);
  }
}

- (void)setSpeechProfileExternalOfflineModelRootPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  pathCopy = path;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:completionCopy];
  [v8 setSpeechProfileExternalOfflineModelRootPath:pathCopy completion:completionCopy];
}

- (void)setOfflineDictationProfileOverridePath:(id)path completion:(id)completion
{
  completionCopy = completion;
  pathCopy = path;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:completionCopy];
  [v8 setOfflineDictationProfileOverridePath:pathCopy completion:completionCopy];
}

- (void)createOfflineSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path JSONData:(id)data completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__AFSettingsConnection_createOfflineSpeechProfileWithLanguage_modelOverridePath_JSONData_completion___block_invoke;
  v16[3] = &unk_1E7348AA8;
  v17 = completionCopy;
  v11 = completionCopy;
  dataCopy = data;
  pathCopy = path;
  languageCopy = language;
  v15 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v16];
  [v15 createOfflineSpeechProfileWithLanguage:languageCopy modelOverridePath:pathCopy JSONData:dataCopy completion:v11];
}

uint64_t __101__AFSettingsConnection_createOfflineSpeechProfileWithLanguage_modelOverridePath_JSONData_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getOfflineDictationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AFSettingsConnection_getOfflineDictationStatusWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getOfflineDictationStatusWithCompletion:v5];
}

- (void)getOfflineAssistantStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AFSettingsConnection_getOfflineAssistantStatusWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getOfflineAssistantStatusWithCompletion:v5];
}

uint64_t __67__AFSettingsConnection__updateVoicesIncludingAssetInfo_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setVoices:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)_filterVoices:(id)voices forLanguage:(id)language
{
  v23 = *MEMORY[0x1E69E9840];
  voicesCopy = voices;
  languageCopy = language;
  if (languageCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = voicesCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          languageCode = [v13 languageCode];
          v15 = [languageCopy isEqualToString:languageCode];

          if (v15)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = voicesCopy;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_voices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22355;
  v10 = __Block_byref_object_dispose__22356;
  v11 = 0;
  voicesQueue = self->_voicesQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AFSettingsConnection__voices__block_invoke;
  v5[3] = &unk_1E7349810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(voicesQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setVoices:(id)voices
{
  voicesCopy = voices;
  voicesQueue = self->_voicesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__AFSettingsConnection__setVoices___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = voicesCopy;
  v6 = voicesCopy;
  dispatch_sync(voicesQueue, v7);
}

- (void)getAudioSessionCoordinationSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__AFSettingsConnection_getAudioSessionCoordinationSnapshotWithCompletion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__AFSettingsConnection_getAudioSessionCoordinationSnapshotWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7345568;
  v9 = v5;
  v7 = v5;
  [v6 getAudioSessionCoordinationSnapshotWithCompletion:v8];
}

uint64_t __74__AFSettingsConnection_getAudioSessionCoordinationSnapshotWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __74__AFSettingsConnection_getAudioSessionCoordinationSnapshotWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)currectNWActivityId:(id)id
{
  idCopy = id;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__AFSettingsConnection_currectNWActivityId___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = idCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AFSettingsConnection_currectNWActivityId___block_invoke_145;
  v8[3] = &unk_1E7345540;
  v9 = v5;
  v7 = v5;
  [v6 getCurrentNWActivityIDWithCompletion:v8];
}

void __44__AFSettingsConnection_currectNWActivityId___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection currectNWActivityId:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __61__AFSettingsConnection_homeOnboardingFlowInvoked_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection homeOnboardingFlowInvoked:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchMultiUserVoiceIdentificationSetting:(id)setting
{
  settingCopy = setting;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AFSettingsConnection_fetchMultiUserVoiceIdentificationSetting___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = settingCopy;
  v5 = settingCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 fetchMultiUserVoiceIdentificationSetting:v5];
}

void __65__AFSettingsConnection_fetchMultiUserVoiceIdentificationSetting___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[AFSettingsConnection fetchMultiUserVoiceIdentificationSetting:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    (*(*(a1 + 32) + 16))();
  }

LABEL_4:

  v5 = *MEMORY[0x1E69E9840];
}

- (void)clearOpportuneSpeakingEdgeDetectorSignalOverride
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_144_22440];
  [v2 clearOpportuneSpeakingEdgeDetectorSignalOverride];
}

void __72__AFSettingsConnection_clearOpportuneSpeakingEdgeDetectorSignalOverride__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection clearOpportuneSpeakingEdgeDetectorSignalOverride]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setOpportuneSpeakingEdgeDetectorSignalOverride:(int64_t)override
{
  v4 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_142];
  [v4 setOpportuneSpeakingEdgeDetectorSignalOverride:override];
}

void __71__AFSettingsConnection_setOpportuneSpeakingEdgeDetectorSignalOverride___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setOpportuneSpeakingEdgeDetectorSignalOverride:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)clearShowAppsBehindSiriInCarPlayEnabled
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_140];
  [v2 clearShowAppsBehindSiriInCarPlayEnabled];
}

void __63__AFSettingsConnection_clearShowAppsBehindSiriInCarPlayEnabled__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection clearShowAppsBehindSiriInCarPlayEnabled]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __62__AFSettingsConnection_setShowAppsBehindSiriInCarPlayEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setShowAppsBehindSiriInCarPlayEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getShowAppsBehindSiriInCarPlayEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AFSettingsConnection_getShowAppsBehindSiriInCarPlayEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getShowAppsBehindSiriInCarPlayEnabledWithCompletion:v5];
}

void __76__AFSettingsConnection_getShowAppsBehindSiriInCarPlayEnabledWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getShowAppsBehindSiriInCarPlayEnabledWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearMessageWithoutConfirmationHeadphonesEnabled
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_136_22447];
  [v2 clearMessageWithoutConfirmationHeadphonesEnabled];
}

void __72__AFSettingsConnection_clearMessageWithoutConfirmationHeadphonesEnabled__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection clearMessageWithoutConfirmationHeadphonesEnabled]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __71__AFSettingsConnection_setMessageWithoutConfirmationHeadphonesEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setMessageWithoutConfirmationHeadphonesEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getMessageWithoutConfirmationHeadphonesEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__AFSettingsConnection_getMessageWithoutConfirmationHeadphonesEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getMessageWithoutConfirmationHeadphonesEnabledWithCompletion:v5];
}

void __85__AFSettingsConnection_getMessageWithoutConfirmationHeadphonesEnabledWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getMessageWithoutConfirmationHeadphonesEnabledWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearMessageWithoutConfirmationInCarPlayEnabled
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_132];
  [v2 clearMessageWithoutConfirmationInCarPlayEnabled];
}

void __71__AFSettingsConnection_clearMessageWithoutConfirmationInCarPlayEnabled__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection clearMessageWithoutConfirmationInCarPlayEnabled]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __70__AFSettingsConnection_setMessageWithoutConfirmationInCarPlayEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setMessageWithoutConfirmationInCarPlayEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getMessageWithoutConfirmationInCarPlayEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__AFSettingsConnection_getMessageWithoutConfirmationInCarPlayEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getMessageWithoutConfirmationInCarPlayEnabledWithCompletion:v5];
}

void __84__AFSettingsConnection_getMessageWithoutConfirmationInCarPlayEnabledWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getMessageWithoutConfirmationInCarPlayEnabledWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearMessageWithoutConfirmationEnabled
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_128_22457];
  [v2 clearMessageWithoutConfirmationEnabled];
}

void __62__AFSettingsConnection_clearMessageWithoutConfirmationEnabled__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection clearMessageWithoutConfirmationEnabled]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __61__AFSettingsConnection_setMessageWithoutConfirmationEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setMessageWithoutConfirmationEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getMessageWithoutConfirmationEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__AFSettingsConnection_getMessageWithoutConfirmationEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getMessageWithoutConfirmationEnabledWithCompletion:v5];
}

void __75__AFSettingsConnection_getMessageWithoutConfirmationEnabledWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getMessageWithoutConfirmationEnabledWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__AFSettingsConnection_fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:v5];
}

void __75__AFSettingsConnection_fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __72__AFSettingsConnection_setAnnounceNotificationsOnBuiltInSpeakerEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setAnnounceNotificationsOnBuiltInSpeakerEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateAnnounceNotificationsOnHearingAidSupportedStatus
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_122];
  [v2 updateAnnounceNotificationsOnHearingAidSupportedStatus];
}

void __78__AFSettingsConnection_updateAnnounceNotificationsOnHearingAidSupportedStatus__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection updateAnnounceNotificationsOnHearingAidSupportedStatus]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __71__AFSettingsConnection_setAnnounceNotificationsOnHearingAidsSupported___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setAnnounceNotificationsOnHearingAidsSupported:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __69__AFSettingsConnection_setAnnounceNotificationsOnHearingAidsEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setAnnounceNotificationsOnHearingAidsEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)clearAnnounceNotificationsInCarPlayType
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_116];
  [v2 clearAnnounceNotificationsInCarPlayType];
}

void __63__AFSettingsConnection_clearAnnounceNotificationsInCarPlayType__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection clearAnnounceNotificationsInCarPlayType]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setAnnounceNotificationsInCarPlayType:(int64_t)type
{
  v4 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_114];
  [v4 setAnnounceNotificationsInCarPlayType:type];
}

void __62__AFSettingsConnection_setAnnounceNotificationsInCarPlayType___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setAnnounceNotificationsInCarPlayType:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getAnnounceNotificationsInCarPlayTypeWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AFSettingsConnection_getAnnounceNotificationsInCarPlayTypeWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getAnnounceNotificationsInCarPlayTypeWithCompletion:v5];
}

void __76__AFSettingsConnection_getAnnounceNotificationsInCarPlayTypeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getAnnounceNotificationsInCarPlayTypeWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearAnnounceNotificationsInCarPlayTemporarilyDisabled
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_112_22474];
  [v2 clearAnnounceNotificationsInCarPlayTemporarilyDisabled];
}

void __78__AFSettingsConnection_clearAnnounceNotificationsInCarPlayTemporarilyDisabled__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection clearAnnounceNotificationsInCarPlayTemporarilyDisabled]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__AFSettingsConnection_getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:v5];
}

void __91__AFSettingsConnection_getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __77__AFSettingsConnection_setAnnounceNotificationsInCarPlayTemporarilyDisabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setAnnounceNotificationsInCarPlayTemporarilyDisabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setAnnounceNotificationsTemporarilyDisabledUntil:(id)until forApp:(id)app platform:(int64_t)platform
{
  appCopy = app;
  untilCopy = until;
  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_108_22480];
  [v10 setAnnounceNotificationsTemporarilyDisabledUntil:untilCopy forApp:appCopy platform:platform];
}

void __89__AFSettingsConnection_setAnnounceNotificationsTemporarilyDisabledUntil_forApp_platform___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setAnnounceNotificationsTemporarilyDisabledUntil:forApp:platform:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForApp:(id)app platform:(int64_t)platform completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__AFSettingsConnection_getAnnounceNotificationsTemporarilyDisabledEndDateForApp_platform_completion___block_invoke;
  v12[3] = &unk_1E7348AA8;
  v13 = completionCopy;
  v9 = completionCopy;
  appCopy = app;
  v11 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v12];
  [v11 getAnnounceNotificationsTemporarilyDisabledEndDateForApp:appCopy platform:platform completion:v9];
}

void __101__AFSettingsConnection_getAnnounceNotificationsTemporarilyDisabledEndDateForApp_platform_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getAnnounceNotificationsTemporarilyDisabledEndDateForApp:platform:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setAnnounceNotificationsTemporarilyDisabledUntil:(id)until platform:(int64_t)platform
{
  untilCopy = until;
  v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_106];
  [v7 setAnnounceNotificationsTemporarilyDisabledUntil:untilCopy platform:platform];
}

void __82__AFSettingsConnection_setAnnounceNotificationsTemporarilyDisabledUntil_platform___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setAnnounceNotificationsTemporarilyDisabledUntil:platform:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform:(int64_t)platform completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__AFSettingsConnection_getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform_completion___block_invoke;
  v9[3] = &unk_1E7348AA8;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v9];
  [v8 getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform:platform completion:v7];
}

void __97__AFSettingsConnection_getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __58__AFSettingsConnection_setSpokenNotificationProxCardSeen___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setSpokenNotificationProxCardSeen:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __74__AFSettingsConnection_setSpokenNotificationShouldSkipTriggerlessReplies___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setSpokenNotificationShouldSkipTriggerlessReplies:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getSpokenNotificationShouldSkipTriggerlessRepliesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_100];
  [v5 getSpokenNotificationShouldSkipTriggerlessRepliesWithCompletion:completionCopy];
}

void __88__AFSettingsConnection_getSpokenNotificationShouldSkipTriggerlessRepliesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection getSpokenNotificationShouldSkipTriggerlessRepliesWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __76__AFSettingsConnection_setSpokenNotificationShouldAnnounceAllNotifications___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setSpokenNotificationShouldAnnounceAllNotifications:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getSpokenNotificationShouldAnnounceAllNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_96];
  [v5 getSpokenNotificationShouldAnnounceAllNotificationsWithCompletion:completionCopy];
}

void __90__AFSettingsConnection_getSpokenNotificationShouldAnnounceAllNotificationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection getSpokenNotificationShouldAnnounceAllNotificationsWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __63__AFSettingsConnection_setSpokenNotificationIsAlwaysOpportune___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setSpokenNotificationIsAlwaysOpportune:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getSpokenNotificationIsAlwaysOpportuneWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_92];
  [v5 getSpokenNotificationIsAlwaysOpportuneWithCompletion:completionCopy];
}

void __77__AFSettingsConnection_getSpokenNotificationIsAlwaysOpportuneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection getSpokenNotificationIsAlwaysOpportuneWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)routedHeadsetDoesSupportLiveTranslationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_90];
  [v5 routedHeadsetDoesSupportLiveTranslationWithCompletion:completionCopy];
}

void __78__AFSettingsConnection_routedHeadsetDoesSupportLiveTranslationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection routedHeadsetDoesSupportLiveTranslationWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getHeadGesturesForCurrentlyRoutedDevice:(id)device
{
  deviceCopy = device;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_88];
  [v5 getHeadGesturesForCurrentlyRoutedDevice:deviceCopy];
}

void __64__AFSettingsConnection_getHeadGesturesForCurrentlyRoutedDevice___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection getHeadGesturesForCurrentlyRoutedDevice:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __64__AFSettingsConnection_mockHeadGesture_schedule_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection mockHeadGesture:schedule:withCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __79__AFSettingsConnection_setHeadGesturesForCurrentlyRoutedDevice_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setHeadGesturesForCurrentlyRoutedDevice:withCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getPersonalVolumeForCurrentlyRoutedDevice:(id)device
{
  deviceCopy = device;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_82];
  [v5 getPersonalVolumeForCurrentlyRoutedDevice:deviceCopy];
}

void __66__AFSettingsConnection_getPersonalVolumeForCurrentlyRoutedDevice___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection getPersonalVolumeForCurrentlyRoutedDevice:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __81__AFSettingsConnection_setPersonalVolumeForCurrentlyRoutedDevice_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setPersonalVolumeForCurrentlyRoutedDevice:withCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getConversationAwarenessForCurrentlyRoutedDevice:(id)device
{
  deviceCopy = device;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_78];
  [v5 getConversationAwarenessForCurrentlyRoutedDevice:deviceCopy];
}

void __73__AFSettingsConnection_getConversationAwarenessForCurrentlyRoutedDevice___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection getConversationAwarenessForCurrentlyRoutedDevice:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __88__AFSettingsConnection_setConversationAwarenessForCurrentlyRoutedDevice_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setConversationAwarenessForCurrentlyRoutedDevice:withCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)clearSpokenNotificationTemporarilyDisabledStatus
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_74_22500];
  [v2 clearSpokenNotificationTemporarilyDisabledStatus];
}

void __72__AFSettingsConnection_clearSpokenNotificationTemporarilyDisabledStatus__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection clearSpokenNotificationTemporarilyDisabledStatus]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __63__AFSettingsConnection_forceMultiUserSync_download_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[AFSettingsConnection forceMultiUserSync:download:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    (*(*(a1 + 32) + 16))();
  }

LABEL_4:

  v5 = *MEMORY[0x1E69E9840];
}

- (void)configOverrides:(id)overrides
{
  overridesCopy = overrides;
  if (overridesCopy)
  {
    v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_68_22504];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__AFSettingsConnection_configOverrides___block_invoke_69;
    v6[3] = &unk_1E73454F0;
    v7 = overridesCopy;
    [v5 configOverrides:v6];
  }
}

void __40__AFSettingsConnection_configOverrides___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection configOverrides:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setConfigOverrides:(id)overrides completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AFSettingsConnection_setConfigOverrides_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  overridesCopy = overrides;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 setConfigOverrides:overridesCopy completion:v7];
}

void __54__AFSettingsConnection_setConfigOverrides_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection setConfigOverrides:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getDevicesWithAvailablePHSAssetsOnDeviceCheck:(id)check
{
  checkCopy = check;
  v5 = checkCopy;
  if (checkCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__AFSettingsConnection_getDevicesWithAvailablePHSAssetsOnDeviceCheck___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = checkCopy;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getDevicesWithAvailablePHSAssetsOnDeviceCheck:v6];
  }
}

void __70__AFSettingsConnection_getDevicesWithAvailablePHSAssetsOnDeviceCheck___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getDevicesWithAvailablePHSAssetsOnDeviceCheck:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getDevicesWithAvailablePHSAssetsForLanguage:(id)language completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__AFSettingsConnection_getDevicesWithAvailablePHSAssetsForLanguage_completion___block_invoke;
    v11[3] = &unk_1E7348AA8;
    v8 = completionCopy;
    v12 = v8;
    languageCopy = language;
    v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v11];
    [v10 getDevicesWithAvailablePHSAssetsForLanguage:languageCopy completion:v8];
  }
}

void __79__AFSettingsConnection_getDevicesWithAvailablePHSAssetsForLanguage_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection getDevicesWithAvailablePHSAssetsForLanguage:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)disableAndDeleteCloudSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__AFSettingsConnection_disableAndDeleteCloudSyncWithCompletion___block_invoke;
  v9[3] = &unk_1E7348AA8;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v9];
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &__block_literal_global_63_22510;
  }

  [v6 disableAndDeleteCloudSyncWithCompletion:v8];
}

void __64__AFSettingsConnection_disableAndDeleteCloudSyncWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection disableAndDeleteCloudSyncWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)barrier
{
  v2 = [(AFSettingsConnection *)self _synchronousSettingsServiceWithErrorHandler:&__block_literal_global_57_22513];
  [v2 barrierWithReply:&__block_literal_global_60];
}

void __31__AFSettingsConnection_barrier__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection barrier]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)resetSessionsAtNextRequestBoundary
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[AFSettingsConnection resetSessionsAtNextRequestBoundary]";
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_55_22517];
  [v4 _resetSessionsAtNextRequestBoundary];

  v5 = *MEMORY[0x1E69E9840];
}

void __58__AFSettingsConnection_resetSessionsAtNextRequestBoundary__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection resetSessionsAtNextRequestBoundary]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)shutdownSessionIfIdle
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[AFSettingsConnection shutdownSessionIfIdle]";
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
  }

  v4 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_53];
  [v4 _shutdownSessionIfIdle];

  v5 = *MEMORY[0x1E69E9840];
}

void __45__AFSettingsConnection_shutdownSessionIfIdle__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection shutdownSessionIfIdle]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)killDaemon
{
  v2 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_51_22522];
  [v2 _killDaemon];
}

void __34__AFSettingsConnection_killDaemon__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection killDaemon]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __51__AFSettingsConnection_setAssistantLoggingEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setAssistantLoggingEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __75__AFSettingsConnection_suppressLowStorageNotificationForLanguage_suppress___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection suppressLowStorageNotificationForLanguage:suppress:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __59__AFSettingsConnection_setDictationAutoPunctuationEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setDictationAutoPunctuationEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __44__AFSettingsConnection_setDictationEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setDictationEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __44__AFSettingsConnection_setAssistantEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setAssistantEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setActiveAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFSettingsConnection.m" lineNumber:285 description:@"Need an identifier to set active"];
  }

  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_39];
  [v5 setActiveAccountIdentifier:identifierCopy];
}

void __51__AFSettingsConnection_setActiveAccountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection setActiveAccountIdentifier:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)deleteAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFSettingsConnection.m" lineNumber:280 description:@"Need an identifier to delete"];
  }

  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_34];
  [v5 deleteAccountWithIdentifier:identifierCopy];
}

void __52__AFSettingsConnection_deleteAccountWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection deleteAccountWithIdentifier:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __46__AFSettingsConnection_saveAccount_setActive___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection saveAccount:setActive:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)accounts
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__22355;
  v9 = __Block_byref_object_dispose__22356;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__AFSettingsConnection_accounts__block_invoke;
  v4[3] = &unk_1E7345A68;
  v4[4] = &v5;
  [(AFSettingsConnection *)self fetchAccountsSynchronously:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)fetchActiveAccount:(id)account
{
  accountCopy = account;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__AFSettingsConnection_fetchActiveAccount___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = accountCopy;
  v11 = v5;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__AFSettingsConnection_fetchActiveAccount___block_invoke_20;
  v8[3] = &unk_1E7347E40;
  v9 = v5;
  v7 = v5;
  [v6 fetchActiveAccount:v8];
}

void __43__AFSettingsConnection_fetchActiveAccount___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection fetchActiveAccount:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __43__AFSettingsConnection_fetchActiveAccount___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = [[AFAccount alloc] initWithMessageDictionary:v8];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, v5);
  }
}

- (void)fetchAccountsSynchronously:(BOOL)synchronously completion:(id)completion
{
  synchronouslyCopy = synchronously;
  completionCopy = completion;
  v7 = completionCopy;
  if (synchronouslyCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__AFSettingsConnection_fetchAccountsSynchronously_completion___block_invoke;
    v16[3] = &unk_1E7348AA8;
    v8 = &v17;
    v17 = completionCopy;
    v9 = [(AFSettingsConnection *)self _synchronousSettingsServiceWithErrorHandler:v16];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__AFSettingsConnection_fetchAccountsSynchronously_completion___block_invoke_15;
    v14[3] = &unk_1E7348AA8;
    v8 = &v15;
    v15 = completionCopy;
    v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v14];
  }

  v10 = v9;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__AFSettingsConnection_fetchAccountsSynchronously_completion___block_invoke_16;
  v12[3] = &unk_1E73454A8;
  v13 = v7;
  v11 = v7;
  [v10 retrieveAccountMessageDictionariesWithReply:v12];
}

void __62__AFSettingsConnection_fetchAccountsSynchronously_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection fetchAccountsSynchronously:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __62__AFSettingsConnection_fetchAccountsSynchronously_completion___block_invoke_15(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection fetchAccountsSynchronously:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __62__AFSettingsConnection_fetchAccountsSynchronously_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [AFAccount alloc];
          v12 = [(AFAccount *)v11 initWithMessageDictionary:v10, v15];
          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v4, 0);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)isRecognizeMyVoiceAvailable:(id)available
{
  availableCopy = available;
  if (availableCopy)
  {
    v7 = availableCopy;
    v4 = AFPreferencesSupportedMultiUserLanguages();
    v5 = v7;
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
      v5 = v7;
    }

    if (AFIsHorseman_isHorseman)
    {
      v6 = _AFPreferencesValueForKeyWithContext(@"Session Language", @"com.apple.assistant.backedup", 0);
      v7[2](v7, [v4 containsObject:v6]);
    }

    else
    {
      v5[2](v5, 0);
    }

    availableCopy = v7;
  }
}

- (void)fetchSupportedMultiUserLanguageCodes:(id)codes
{
  if (codes)
  {
    codesCopy = codes;
    v5 = AFPreferencesSupportedMultiUserLanguages();
    (*(codes + 2))(codesCopy, v5, 0);
  }
}

- (void)fetchSupportedLanguageCodes:(id)codes
{
  if (codes)
  {
    codesCopy = codes;
    v5 = AFPreferencesSupportedLanguages();
    (*(codes + 2))(codesCopy, v5, 0);
  }
}

- (id)_synchronousSettingsServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(AFSettingsConnection *)self _connection];
  v6 = [_connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_settingsServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(AFSettingsConnection *)self _connection];
  v6 = [_connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

void __35__AFSettingsConnection__connection__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__AFSettingsConnection__connection__block_invoke_2_12;
    block[3] = &unk_1E73497C8;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

uint64_t __35__AFSettingsConnection__connection__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (![*(*(a1 + 32) + 8) processIdentifier])
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[AFSettingsConnection _connection]_block_invoke_2";
      _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s Because pid=0, most likely a connection could never be established to begin with. Likely you are missing an entitlement and/or privilege to look up a mach port.", &v5, 0xCu);
    }
  }

  result = [*(a1 + 32) _clearConnection];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (AFSettingsConnection)initWithInstanceContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = AFSettingsConnection;
  v6 = [(AFSettingsConnection *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("SettingsVoices", v7);
    voicesQueue = v6->_voicesQueue;
    v6->_voicesQueue = v8;

    objc_storeStrong(&v6->_serialQueue, MEMORY[0x1E69E96A0]);
    objc_storeStrong(&v6->_instanceContext, context);
    v10 = objc_alloc_init(MEMORY[0x1E696AE68]);
    connectionLock = v6->_connectionLock;
    v6->_connectionLock = v10;

    v6->_connectionSetupComplete = 0;
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "[AFSettingsConnection initWithInstanceContext:]";
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = AFSettingsConnection;
  v4 = [(AFSettingsConnection *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {instanceContext = %@}", v4, self->_instanceContext];

  return v5;
}

+ (AFSettingsConnection)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AFSettingsConnection_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_22576 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_22576, block);
  }

  v2 = sharedInstance_singleton;

  return v2;
}

void __38__AFSettingsConnection_sharedInstance__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[AFSettingsConnection sharedInstance]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  v3 = objc_alloc_init(*(a1 + 32));
  v4 = sharedInstance_singleton;
  sharedInstance_singleton = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)initialize
{
  if (AFLogInitIfNeeded_once != -1)
  {
    dispatch_once(&AFLogInitIfNeeded_once, &__block_literal_global_2942);
  }
}

- (void)_tellDelegateServerVerificationReport:(id)report
{
  reportCopy = report;
  _delegate = [(AFSettingsConnection *)self _delegate];
  [_delegate _settingsConnectionServerVerificationReport:reportCopy];
}

- (void)_tellDelegatePartialVerificationResult:(id)result
{
  resultCopy = result;
  _delegate = [(AFSettingsConnection *)self _delegate];
  [_delegate _settingsConnectionPartialVerificationResult:resultCopy];
}

- (void)_setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = self->_delegate;
  p_delegate = &self->_delegate;
  v8 = delegateCopy;
  if (([(AFSettingsDelegate *)delegate isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_delegate, delegate);
  }
}

- (void)_handleCommand:(id)command completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dictionary = [command dictionary];
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[AFSettingsConnection(Internal) _handleCommand:completion:]";
    v19 = 2112;
    v20 = dictionary;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Sending %@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__AFSettingsConnection_Internal___handleCommand_completion___block_invoke;
  v15[3] = &unk_1E7348AA8;
  v9 = completionCopy;
  v16 = v9;
  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__AFSettingsConnection_Internal___handleCommand_completion___block_invoke_570;
  v13[3] = &unk_1E7347E40;
  v14 = v9;
  v11 = v9;
  [v10 handleCommand:dictionary completion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __60__AFSettingsConnection_Internal___handleCommand_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection(Internal) _handleCommand:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Interrupted %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __60__AFSettingsConnection_Internal___handleCommand_completion___block_invoke_570(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[AFSettingsConnection(Internal) _handleCommand:completion:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s Received %@ %@", &v10, 0x20u);
  }

  if (*(a1 + 32))
  {
    v8 = [MEMORY[0x1E69C76D8] aceObjectWithDictionary:v5];
    (*(*(a1 + 32) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __99__AFSettingsConnection_Internal___updateMultiUserInfoForUser_score_companionInfo_reset_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __99__AFSettingsConnection_Internal___updateMultiUserInfoForUser_score_companionInfo_reset_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __99__AFSettingsConnection_Internal___updateMultiUserInfoForUser_score_companionInfo_reset_completion___block_invoke_3(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __99__AFSettingsConnection_Internal___updateMultiUserInfoForUser_score_companionInfo_reset_completion___block_invoke_4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

uint64_t __99__AFSettingsConnection_Internal___updateMultiUserInfoForUser_score_companionInfo_reset_completion___block_invoke_5(void *a1)
{
  if (!*(*(a1[5] + 8) + 40))
  {
    v1 = *(*(a1[6] + 8) + 40);
  }

  return (*(a1[4] + 16))();
}

- (void)_getSharedCompanionInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__AFSettingsConnection_Internal___getSharedCompanionInfo___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = infoCopy;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getSharedCompanionInfo:v6];
  }
}

uint64_t __58__AFSettingsConnection_Internal___getSharedCompanionInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)_runServiceMaintenance
{
  v3 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_569];
  [v3 _runServiceMaintenance];

  [(AFSettingsConnection *)self barrier];
}

void __56__AFSettingsConnection_Internal___runServiceMaintenance__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection(Internal) _runServiceMaintenance]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_fetchPeerData:(id)data
{
  dataCopy = data;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_567];
  [v5 _fetchPeerData:dataCopy];
}

void __49__AFSettingsConnection_Internal___fetchPeerData___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection(Internal) _fetchPeerData:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_isInactiveDeviceSyncDisabled:(id)disabled
{
  disabledCopy = disabled;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AFSettingsConnection_Internal___isInactiveDeviceSyncDisabled___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = disabledCopy;
  v5 = disabledCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 _isInactiveDeviceSyncDisabled:v5];
}

void __64__AFSettingsConnection_Internal___isInactiveDeviceSyncDisabled___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection(Internal) _isInactiveDeviceSyncDisabled:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_isInactiveDeviceSyncDisabledByTrial:(id)trial
{
  trialCopy = trial;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AFSettingsConnection_Internal___isInactiveDeviceSyncDisabledByTrial___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = trialCopy;
  v5 = trialCopy;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 _isInactiveDeviceSyncDisabledByTrial:v5];
}

void __71__AFSettingsConnection_Internal___isInactiveDeviceSyncDisabledByTrial___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[AFSettingsConnection(Internal) _isInactiveDeviceSyncDisabledByTrial:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_clearSyncNeededForKey:(id)key
{
  keyCopy = key;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_565];
  [v5 _clearSyncNeededForKey:keyCopy];
}

void __57__AFSettingsConnection_Internal___clearSyncNeededForKey___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection(Internal) _clearSyncNeededForKey:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_setSyncNeededForReason:(id)reason
{
  reasonCopy = reason;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_563];
  [v5 _setSyncNeededForReason:reasonCopy];
}

void __58__AFSettingsConnection_Internal___setSyncNeededForReason___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFSettingsConnection(Internal) _setSyncNeededForReason:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s settingsService got error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end