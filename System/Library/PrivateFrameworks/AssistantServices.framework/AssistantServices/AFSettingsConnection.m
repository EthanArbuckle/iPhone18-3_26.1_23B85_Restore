@interface AFSettingsConnection
+ (AFSettingsConnection)sharedInstance;
+ (void)initialize;
- (AFSettingsConnection)initWithInstanceContext:(id)a3;
- (id)_connection;
- (id)_filterVoices:(id)a3 forLanguage:(id)a4;
- (id)_settingsServiceWithErrorHandler:(id)a3;
- (id)_synchronousSettingsServiceWithErrorHandler:(id)a3;
- (id)_voices;
- (id)accounts;
- (id)description;
- (void)_clearConnection;
- (void)_clearSyncNeededForKey:(id)a3;
- (void)_createRadarWithReason:(id)a3 room:(id)a4 process:(id)a5 crash:(BOOL)a6 completion:(id)a7;
- (void)_fetchPeerData:(id)a3;
- (void)_getSharedCompanionInfo:(id)a3;
- (void)_handleCommand:(id)a3 completion:(id)a4;
- (void)_isInactiveDeviceSyncDisabled:(id)a3;
- (void)_isInactiveDeviceSyncDisabledByTrial:(id)a3;
- (void)_runServiceMaintenance;
- (void)_setDelegate:(id)a3;
- (void)_setSyncNeededForReason:(id)a3;
- (void)_setVoices:(id)a3;
- (void)_tellDelegatePartialVerificationResult:(id)a3;
- (void)_tellDelegateServerVerificationReport:(id)a3;
- (void)accessRecordedAudioWithIdentifier:(id)a3 completion:(id)a4;
- (void)areSiriSAEAssetsAvailable:(id)a3;
- (void)areSiriUODAssetsAvailable:(id)a3;
- (void)availableLanguagesInTheHome:(id)a3;
- (void)barrier;
- (void)clearAnnounceNotificationsInCarPlayTemporarilyDisabled;
- (void)clearAnnounceNotificationsInCarPlayType;
- (void)clearMessageWithoutConfirmationEnabled;
- (void)clearMessageWithoutConfirmationHeadphonesEnabled;
- (void)clearMessageWithoutConfirmationInCarPlayEnabled;
- (void)clearOpportuneSpeakingEdgeDetectorSignalOverride;
- (void)clearShowAppsBehindSiriInCarPlayEnabled;
- (void)clearSpokenNotificationTemporarilyDisabledStatus;
- (void)configOverrides:(id)a3;
- (void)createOfflineSpeechProfileWithLanguage:(id)a3 modelOverridePath:(id)a4 JSONData:(id)a5 completion:(id)a6;
- (void)currectNWActivityId:(id)a3;
- (void)dealloc;
- (void)deleteAccountWithIdentifier:(id)a3;
- (void)deleteSiriHistoryWithCompletion:(id)a3;
- (void)deleteSiriHistoryWithContext:(id)a3 withCompletion:(id)a4;
- (void)disableAndDeleteCloudSyncWithCompletion:(id)a3;
- (void)dismissUI;
- (void)dumpAssistantState:(id)a3;
- (void)fetchAccountsSynchronously:(BOOL)a3 completion:(id)a4;
- (void)fetchActiveAccount:(id)a3;
- (void)fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:(id)a3;
- (void)fetchEventRecordsFromAnalyticsStoreAtPath:(id)a3 completion:(id)a4;
- (void)fetchExperimentConfigurationsWithCompletion:(id)a3;
- (void)fetchExperimentContextWithCompletion:(id)a3;
- (void)fetchMultiUserVoiceIdentificationSetting:(id)a3;
- (void)fetchSharedUserIdentifier:(id)a3;
- (void)fetchSupportedLanguageCodes:(id)a3;
- (void)fetchSupportedMultiUserLanguageCodes:(id)a3;
- (void)getAccessoryInfoForAccessoryWithUUID:(id)a3 completionHandler:(id)a4;
- (void)getActiveASRLanguagesWithCompletion:(id)a3;
- (void)getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:(id)a3;
- (void)getAnnounceNotificationsInCarPlayTypeWithCompletion:(id)a3;
- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForApp:(id)a3 platform:(int64_t)a4 completion:(id)a5;
- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform:(int64_t)a3 completion:(id)a4;
- (void)getAssetStatusForLanguage:(id)a3 completionHandler:(id)a4;
- (void)getAssistantIsEnabledForDeviceWithSiriInfo:(id)a3 withCompletion:(id)a4;
- (void)getAudioSessionCoordinationSnapshotWithCompletion:(id)a3;
- (void)getBluetoothDeviceInfoWithAddress:(id)a3 completion:(id)a4;
- (void)getBluetoothDeviceInfoWithUID:(id)a3 completion:(id)a4;
- (void)getBluetoothWirelessSplitterSessionInfoWithCompletion:(id)a3;
- (void)getCapabilitiesDataFromReachableDevicesWithCompletion:(id)a3;
- (void)getConnectedBluetoothDeviceInfoArrayWithCompletion:(id)a3;
- (void)getContextCollectorsInfoWithCompletion:(id)a3;
- (void)getConversationAwarenessForCurrentlyRoutedDevice:(id)a3;
- (void)getCrossDeviceContextWithCompletion:(id)a3;
- (void)getCurrentAccessoryInfoWithCompletion:(id)a3;
- (void)getCurrentContextSnapshotWithCompletion:(id)a3;
- (void)getCurrentRequestIsWatchAuthenticatedWithCompletion:(id)a3;
- (void)getDevicesWithAvailablePHSAssetsForLanguage:(id)a3 completion:(id)a4;
- (void)getDevicesWithAvailablePHSAssetsOnDeviceCheck:(id)a3;
- (void)getExperimentForConfigurationIdentifier:(id)a3 completion:(id)a4;
- (void)getHeadGesturesForCurrentlyRoutedDevice:(id)a3;
- (void)getHomeUserIdForSharedUserId:(id)a3 completion:(id)a4;
- (void)getHorsemanSupplementalLanguageDictionary:(id)a3;
- (void)getInEarDetectionStateForBTAddress:(id)a3 withCompletion:(id)a4;
- (void)getManagedLocalAndRemotePeerInfoWithCompletion:(id)a3;
- (void)getMeCard:(id)a3;
- (void)getMessageWithoutConfirmationEnabledWithCompletion:(id)a3;
- (void)getMessageWithoutConfirmationHeadphonesEnabledWithCompletion:(id)a3;
- (void)getMessageWithoutConfirmationInCarPlayEnabledWithCompletion:(id)a3;
- (void)getMultiUserCompanionInfo:(id)a3;
- (void)getODDDeviceAggregationId:(id)a3;
- (void)getODDDeviceProperties:(id)a3;
- (void)getOfflineAssistantStatusWithCompletion:(id)a3;
- (void)getOfflineDictationStatusWithCompletion:(id)a3;
- (void)getOriginDeviceInfoForContextIdentifier:(id)a3 completion:(id)a4;
- (void)getPairedBluetoothDeviceInfoArrayWithCompletion:(id)a3;
- (void)getPeerIdentifiers:(id)a3;
- (void)getPersonalMultiUserDeviceIdentifiers:(id)a3;
- (void)getPersonalVolumeForCurrentlyRoutedDevice:(id)a3;
- (void)getProximityTuplesWithCompletion:(id)a3;
- (void)getRecordedAudioDirectoryPathsWithCompletion:(id)a3;
- (void)getSearchQueriesDataSharingStatus:(id)a3;
- (void)getSharedUserID:(id)a3;
- (void)getSharedUserIdForHomeUserId:(id)a3 completion:(id)a4;
- (void)getShowAppsBehindSiriInCarPlayEnabledWithCompletion:(id)a3;
- (void)getSidekickBoostsFileWithCompletion:(id)a3;
- (void)getSiriDataSharingOptInStatusWithCompletion:(id)a3;
- (void)getSiriOutputVolumeForAudioRoute:(id)a3 completion:(id)a4;
- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)a3 completionHandler:(id)a4;
- (void)getSpokenNotificationIsAlwaysOpportuneWithCompletion:(id)a3;
- (void)getSpokenNotificationShouldAnnounceAllNotificationsWithCompletion:(id)a3;
- (void)getSpokenNotificationShouldSkipTriggerlessRepliesWithCompletion:(id)a3;
- (void)getStereoPairState:(id)a3;
- (void)getStereoPartnerLastMyriadWinDate:(id)a3;
- (void)getSupplementalLanguageDictionaryForProduct:(id)a3 completion:(id)a4;
- (void)getSupplementalLanguagesDictionary:(id)a3;
- (void)getSupplementalLanguagesForProduct:(id)a3 forBuildVersion:(id)a4 completion:(id)a5;
- (void)getSupplementalLanguagesModificationDate:(id)a3;
- (void)getTrialEnables:(id)a3 doubleFactors:(id)a4 withCompletion:(id)a5;
- (void)hasEverSetLanguageCodeWithCompletion:(id)a3;
- (void)isJustSiriEnabledInTheHome:(id)a3;
- (void)isRecognizeMyVoiceAvailable:(id)a3;
- (void)isSearchDataSharingStatusForced:(id)a3;
- (void)isVoiceTriggerEnabled:(id)a3;
- (void)killDaemon;
- (void)multiUserCompanionDeviceIdentifiers:(id)a3;
- (void)postJSDiscoveryNotificationForBTDeviceWithInfo:(id)a3 withCompletion:(id)a4;
- (void)postTestResultCandidateWithRcId:(id)a3 recognitionSausage:(id)a4;
- (void)postTestResultSelectedWithRcId:(id)a3;
- (void)publishFeedbackArbitrationParticipation:(id)a3;
- (void)purgeAnalyticsStoreWithCompletion:(id)a3;
- (void)pushMyriadAdvertisementContext:(id)a3 completionHandler:(id)a4;
- (void)pushSCDAAdvertisementContext:(id)a3 completionHandler:(id)a4;
- (void)removeMultiUserUser:(id)a3 completion:(id)a4;
- (void)removeMultiUserWithSharedUserID:(id)a3 completion:(id)a4;
- (void)replayAllRecordedViews:(unint64_t)a3 with:(id)a4;
- (void)replayRecordedViewAt:(unint64_t)a3 with:(id)a4;
- (void)resetAnalyticsStoreWithCompletion:(id)a3;
- (void)resetExperimentForConfigurationIdentifier:(id)a3 completion:(id)a4;
- (void)resetSessionsAtNextRequestBoundary;
- (void)routedHeadsetDoesSupportLiveTranslationWithCompletion:(id)a3;
- (void)sendMetricsToServerWithCompletion:(id)a3;
- (void)setActiveAccountIdentifier:(id)a3;
- (void)setAnnounceNotificationsInCarPlayType:(int64_t)a3;
- (void)setAnnounceNotificationsTemporarilyDisabledUntil:(id)a3 forApp:(id)a4 platform:(int64_t)a5;
- (void)setAnnounceNotificationsTemporarilyDisabledUntil:(id)a3 platform:(int64_t)a4;
- (void)setConfigOverrides:(id)a3 completion:(id)a4;
- (void)setHardcodedBluetoothProximity:(id)a3;
- (void)setLanguage:(id)a3 outputVoice:(id)a4 withCompletion:(id)a5;
- (void)setLanguage:(id)a3 withCompletion:(id)a4;
- (void)setNanoAlwaysShowRecognizedSpeech:(BOOL)a3 withCompletion:(id)a4;
- (void)setNanoAssistantEnabled:(BOOL)a3 withCompletion:(id)a4;
- (void)setNanoCrownActivationEnabled:(BOOL)a3 withCompletion:(id)a4;
- (void)setNanoDictationAutoPunctuationEnabled:(BOOL)a3 withCompletion:(id)a4;
- (void)setNanoDictationEnabled:(BOOL)a3 withCompletion:(id)a4;
- (void)setNanoLanguage:(id)a3 withCompletion:(id)a4;
- (void)setNanoMessageWithoutConfirmationEnabled:(BOOL)a3 withCompletion:(id)a4;
- (void)setNanoOutputVoice:(id)a3 withCompletion:(id)a4;
- (void)setNanoPhraseSpotterEnabled:(BOOL)a3 withCompletion:(id)a4;
- (void)setNanoRaiseToSpeakEnabled:(BOOL)a3 withCompletion:(id)a4;
- (void)setNanoSiriResponseShouldAlwaysPrint:(BOOL)a3 withCompletion:(id)a4;
- (void)setNanoTTSSpeakerVolume:(id)a3 withCompletion:(id)a4;
- (void)setNanoUseDeviceSpeakerForTTS:(id)a3 withCompletion:(id)a4;
- (void)setOfflineDictationProfileOverridePath:(id)a3 completion:(id)a4;
- (void)setOpportuneSpeakingEdgeDetectorSignalOverride:(int64_t)a3;
- (void)setOutputVoice:(id)a3 withCompletion:(id)a4;
- (void)setReplayOverridePath:(id)a3;
- (void)setSearchQueriesDataSharingStatus:(int64_t)a3 completion:(id)a4;
- (void)setSiriDataSharingOptInStatus:(int64_t)a3 completion:(id)a4;
- (void)setSiriGradingEnabled:(BOOL)a3 completion:(id)a4;
- (void)setSiriOutputVolume:(float)a3 forAudioRoute:(id)a4 completion:(id)a5;
- (void)setSpeechProfileExternalOfflineModelRootPath:(id)a3 completion:(id)a4;
- (void)setSupplementalLanguageDictionary:(id)a3 forProduct:(id)a4 completion:(id)a5;
- (void)setSupplementalLanguages:(id)a3 forProduct:(id)a4 forBuildVersion:(id)a5 completion:(id)a6;
- (void)shouldSuppressSiriDataSharingOptInAlert:(id)a3;
- (void)showHomeProfileNamesWithCompletion:(id)a3;
- (void)showLocalProfileNamesWithCompletion:(id)a3;
- (void)showMultiUserCompanionInfo:(id)a3;
- (void)showMultiUserSharedUserIDsCompletion:(id)a3;
- (void)showMultiUsers:(id)a3;
- (void)showPrimaryUserSharedUserIDWithCompletion:(id)a3;
- (void)shutdownSessionIfIdle;
- (void)siriDesignModeIsEnabled:(id)a3;
- (void)siriGradingIsEnabled:(id)a3;
- (void)startAudioPlaybackRequest:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)startMultiUserUIRequestWithText:(id)a3 expectedSpeakerSharedUserID:(id)a4 expectedSpeakerConfidenceScore:(unint64_t)a5 nonspeakerConfidenceScores:(id)a6 completion:(id)a7;
- (void)startObservingBluetoothInEarDetectionStateForBTAddress:(id)a3 forObserverID:(unint64_t)a4;
- (void)startObservingWirelessSplitterSession;
- (void)startRemoteRequest:(id)a3 onPeer:(id)a4 completion:(id)a5;
- (void)startUIMockServerRequestWithReplayFileURL:(id)a3 completion:(id)a4;
- (void)startUIRequest:(id)a3;
- (void)startUIRequestWithInfo:(id)a3;
- (void)startUIRequestWithInfo:(id)a3 completion:(id)a4;
- (void)startUIRequestWithSpeechAudioFileURL:(id)a3;
- (void)startUIRequestWithText:(id)a3;
- (void)startUIRequestWithText:(id)a3 completion:(id)a4;
- (void)stopObservingBluetoothInEarDetectionStateForObserverID:(unint64_t)a3;
- (void)stopObservingWirelessSplitterSession;
- (void)synchronizeExperimentConfigurationsIfApplicableWithCompletion:(id)a3;
- (void)triggerABCForType:(id)a3 subType:(id)a4 context:(id)a5 completionHandler:(id)a6;
- (void)trimRecordedAudioWithIdentifier:(id)a3 offset:(double)a4 duration:(double)a5 outputFileType:(int64_t)a6 completion:(id)a7;
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
    v9 = self;
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

- (void)getODDDeviceAggregationId:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AFSettingsConnection_getODDDeviceAggregationId___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getODDDeviceAggregationId:v5];
}

- (void)getODDDeviceProperties:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AFSettingsConnection_getODDDeviceProperties___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getODDDeviceProperties:v5];
}

- (void)_createRadarWithReason:(id)a3 room:(id)a4 process:(id)a5 crash:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v17 = @"entire home";
    *buf = 136315650;
    v32 = "[AFSettingsConnection _createRadarWithReason:room:process:crash:completion:]";
    v33 = 2112;
    if (v13)
    {
      v17 = v13;
    }

    v34 = v17;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, "%s Filing a radar in %@ with reason %@", buf, 0x20u);
  }

  v18 = self;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77__AFSettingsConnection__createRadarWithReason_room_process_crash_completion___block_invoke;
  v28[3] = &unk_1E7348AD0;
  v19 = v15;
  v30 = v19;
  v20 = v18;
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

  if (!v8)
  {
    v24 = @"Not a supported configuration";
    goto LABEL_10;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__AFSettingsConnection__createRadarWithReason_room_process_crash_completion___block_invoke_253;
  v26[3] = &unk_1E7348AA8;
  v27 = v21;
  [v22 createRadarForCrashWithReason:v12 process:v14 completion:v26];
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

- (void)getActiveASRLanguagesWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFSettingsConnection_getActiveASRLanguagesWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getAssistantIsEnabledForDeviceWithSiriInfo:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__AFSettingsConnection_getAssistantIsEnabledForDeviceWithSiriInfo_withCompletion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getAssistantIsEnabledForDeviceWithSiriInfo:v8 withCompletion:v7];
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

- (void)triggerABCForType:(id)a3 subType:(id)a4 context:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__AFSettingsConnection_triggerABCForType_subType_context_completionHandler___block_invoke;
  v16[3] = &unk_1E7348AA8;
  v17 = v10;
  v11 = v10;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v16];
  [v15 triggerABCForType:v14 subType:v13 context:v12 completionHandler:v11];
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

- (void)getSidekickBoostsFileWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFSettingsConnection_getSidekickBoostsFileWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getTrialEnables:(id)a3 doubleFactors:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AFSettingsConnection_getTrialEnables_doubleFactors_withCompletion___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v13];
  [v12 getTrialEnables:v11 doubleFactors:v10 withCompletion:v9];
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

- (void)getAccessoryInfoForAccessoryWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__AFSettingsConnection_getAccessoryInfoForAccessoryWithUUID_completionHandler___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getAccessoryInfoForAccessoryWithUUID:v8 completionHandler:v7];
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

- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__AFSettingsConnection_getSpeakerCapabilityForAccessoryWithUUID_completionHandler___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getSpeakerCapabilityForAccessoryWithUUID:v8 completionHandler:v7];
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

- (void)pushSCDAAdvertisementContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__AFSettingsConnection_pushSCDAAdvertisementContext_completionHandler___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 pushSCDAAdvertisementContext:v8 completionHandler:v7];
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

- (void)pushMyriadAdvertisementContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__AFSettingsConnection_pushMyriadAdvertisementContext_completionHandler___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 pushMyriadAdvertisementContext:v8 completionHandler:v7];
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

- (void)getCurrentRequestIsWatchAuthenticatedWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AFSettingsConnection_getCurrentRequestIsWatchAuthenticatedWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getAssetStatusForLanguage:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AFSettingsConnection_getAssetStatusForLanguage_completionHandler___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getAssetStatusForLanguage:v8 completionHandler:v7];
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

- (void)fetchSharedUserIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__AFSettingsConnection_fetchSharedUserIdentifier___block_invoke;
    v10[3] = &unk_1E7348AA8;
    v6 = v4;
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

- (void)dumpAssistantState:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__AFSettingsConnection_dumpAssistantState___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)areSiriSAEAssetsAvailable:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__AFSettingsConnection_areSiriSAEAssetsAvailable___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)areSiriUODAssetsAvailable:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AFSettingsConnection_areSiriUODAssetsAvailable___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)hasEverSetLanguageCodeWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AFSettingsConnection_hasEverSetLanguageCodeWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getRecordedAudioDirectoryPathsWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AFSettingsConnection_getRecordedAudioDirectoryPathsWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)trimRecordedAudioWithIdentifier:(id)a3 offset:(double)a4 duration:(double)a5 outputFileType:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__AFSettingsConnection_trimRecordedAudioWithIdentifier_offset_duration_outputFileType_completion___block_invoke;
  v16[3] = &unk_1E7348AA8;
  v17 = v12;
  v13 = v12;
  v14 = a3;
  v15 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v16];
  [v15 trimRecordedAudioWithIdentifier:v14 offset:a6 duration:v13 outputFileType:a4 completion:a5];
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

- (void)accessRecordedAudioWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__AFSettingsConnection_accessRecordedAudioWithIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 accessRecordedAudioWithIdentifier:v8 completion:v7];
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

- (void)resetExperimentForConfigurationIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__AFSettingsConnection_resetExperimentForConfigurationIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 resetExperimentForConfigurationIdentifier:v8 completion:v7];
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

- (void)synchronizeExperimentConfigurationsIfApplicableWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__AFSettingsConnection_synchronizeExperimentConfigurationsIfApplicableWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getExperimentForConfigurationIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__AFSettingsConnection_getExperimentForConfigurationIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getExperimentForConfigurationIdentifier:v8 completion:v7];
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

- (void)getProximityTuplesWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__AFSettingsConnection_getProximityTuplesWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getCapabilitiesDataFromReachableDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__AFSettingsConnection_getCapabilitiesDataFromReachableDevicesWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getManagedLocalAndRemotePeerInfoWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AFSettingsConnection_getManagedLocalAndRemotePeerInfoWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)setHardcodedBluetoothProximity:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_242];
  [v5 setHardcodedBluetoothProximity:v4];
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

- (void)getContextCollectorsInfoWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AFSettingsConnection_getContextCollectorsInfoWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getOriginDeviceInfoForContextIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__AFSettingsConnection_getOriginDeviceInfoForContextIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getOriginDeviceInfoForContextIdentifier:v8 completion:v7];
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

- (void)getCurrentContextSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AFSettingsConnection_getCurrentContextSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getCrossDeviceContextWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__AFSettingsConnection_getCrossDeviceContextWithCompletion___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = v4;
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

- (void)isSearchDataSharingStatusForced:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[AFSettingsConnection isSearchDataSharingStatusForced:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Checking if Search Queries Data Sharing status is configured by profile", buf, 0xCu);
  }

  if (v4)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__AFSettingsConnection_isSearchDataSharingStatusForced___block_invoke;
    v11[3] = &unk_1E7348AA8;
    v6 = v4;
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

- (void)getSearchQueriesDataSharingStatus:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[AFSettingsConnection getSearchQueriesDataSharingStatus:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Getting Search Queries Data Sharing", buf, 0xCu);
  }

  if (v4)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__AFSettingsConnection_getSearchQueriesDataSharingStatus___block_invoke;
    v11[3] = &unk_1E7348AA8;
    v6 = v4;
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

- (void)setSearchQueriesDataSharingStatus:(int64_t)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 2)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_1E73472E8[a3];
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
  v11 = v6;
  v18 = v11;
  v12 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__AFSettingsConnection_setSearchQueriesDataSharingStatus_completion___block_invoke_238;
  v15[3] = &unk_1E73494D8;
  v16 = v11;
  v13 = v11;
  [v12 setSearchQueriesDataSharingStatus:a3 completion:v15];

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

- (void)siriDesignModeIsEnabled:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__AFSettingsConnection_siriDesignModeIsEnabled___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)deleteSiriHistoryWithCompletion:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[AFSettingsConnection deleteSiriHistoryWithCompletion:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  [(AFSettingsConnection *)self deleteSiriHistoryWithContext:0 withCompletion:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteSiriHistoryWithContext:(id)a3 withCompletion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
  v9 = v7;
  v16 = v9;
  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__AFSettingsConnection_deleteSiriHistoryWithContext_withCompletion___block_invoke_235;
  v13[3] = &unk_1E7348AA8;
  v14 = v9;
  v11 = v9;
  [v10 deleteSiriHistoryWithContext:v6 withCompletion:v13];

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

- (void)shouldSuppressSiriDataSharingOptInAlert:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AFSettingsConnection_shouldSuppressSiriDataSharingOptInAlert___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)getSiriDataSharingOptInStatusWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v6 = v4;
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

- (void)setSiriDataSharingOptInStatus:(int64_t)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 > 3)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E7348978[a3];
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
  v25 = self;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__AFSettingsConnection_setSiriDataSharingOptInStatus_completion___block_invoke;
  v18[3] = &unk_1E7345680;
  v10 = v8;
  v19 = v10;
  v11 = v6;
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
  [v13 setSiriDataSharingOptInStatus:a3 completion:v16];

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

- (void)siriGradingIsEnabled:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AFSettingsConnection_siriGradingIsEnabled___block_invoke;
  v6[3] = &unk_1E7345658;
  v7 = v4;
  v5 = v4;
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

- (void)setSiriGradingEnabled:(BOOL)a3 completion:(id)a4
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [(AFSettingsConnection *)self setSiriDataSharingOptInStatus:v4 propagateToHomeAccessories:0 source:0 reason:@"Legacy Setter" completion:a4];
}

- (void)getSharedUserID:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AFSettingsConnection_getSharedUserID___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)showHomeProfileNamesWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__AFSettingsConnection_showHomeProfileNamesWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)showLocalProfileNamesWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFSettingsConnection_showLocalProfileNamesWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)showMultiUserSharedUserIDsCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AFSettingsConnection_showMultiUserSharedUserIDsCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)showPrimaryUserSharedUserIDWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AFSettingsConnection_showPrimaryUserSharedUserIDWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getMultiUserCompanionInfo:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AFSettingsConnection_getMultiUserCompanionInfo___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)showMultiUserCompanionInfo:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AFSettingsConnection_showMultiUserCompanionInfo___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)showMultiUsers:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__AFSettingsConnection_showMultiUsers___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)removeMultiUserWithSharedUserID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__AFSettingsConnection_removeMultiUserWithSharedUserID_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 removeMultiUserUserWithSharedUserId:v8 completion:v7];
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

- (void)removeMultiUserUser:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__AFSettingsConnection_removeMultiUserUser_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 removeMultiUserUser:v8 completion:v7];
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

- (void)multiUserCompanionDeviceIdentifiers:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__AFSettingsConnection_multiUserCompanionDeviceIdentifiers___block_invoke;
    v12[3] = &unk_1E7348AA8;
    v6 = v4;
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

- (void)getPersonalMultiUserDeviceIdentifiers:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__AFSettingsConnection_getPersonalMultiUserDeviceIdentifiers___block_invoke;
    v12[3] = &unk_1E7348AA8;
    v6 = v4;
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

- (void)getSharedUserIdForHomeUserId:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AFSettingsConnection_getSharedUserIdForHomeUserId_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getSharedUserIdForHomeUserId:v8 completion:v7];
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

- (void)getHomeUserIdForSharedUserId:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AFSettingsConnection_getHomeUserIdForSharedUserId_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getHomeUserIdForSharedUserId:v8 completion:v7];
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

- (void)postJSDiscoveryNotificationForBTDeviceWithInfo:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__AFSettingsConnection_postJSDiscoveryNotificationForBTDeviceWithInfo_withCompletion___block_invoke;
  v10[3] = &unk_1E73493C0;
  v11 = v6;
  v7 = v6;
  v8 = a4;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 postJSDiscoveryNotificationForBTDeviceWithInfo:v7 withCompletion:v8];
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

- (void)stopObservingBluetoothInEarDetectionStateForObserverID:(unint64_t)a3
{
  v4 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_219];
  [v4 stopObservingBluetoothInEarDetectionStateForObserverID:a3];
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

- (void)startObservingBluetoothInEarDetectionStateForBTAddress:(id)a3 forObserverID:(unint64_t)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__AFSettingsConnection_startObservingBluetoothInEarDetectionStateForBTAddress_forObserverID___block_invoke;
  v9[3] = &unk_1E73493C0;
  v10 = v6;
  v7 = v6;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v9];
  [v8 startObservingBluetoothInEarDetectionStateForBTAddress:v7 forObserverID:a4];
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

- (void)getInEarDetectionStateForBTAddress:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__AFSettingsConnection_getInEarDetectionStateForBTAddress_withCompletion___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__AFSettingsConnection_getInEarDetectionStateForBTAddress_withCompletion___block_invoke_2;
  v11[3] = &unk_1E7345630;
  v12 = v7;
  v10 = v7;
  [v9 getInEarDetectionStateForBTAddress:v8 withCompletion:v11];
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

- (void)getBluetoothWirelessSplitterSessionInfoWithCompletion:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__AFSettingsConnection_getBluetoothWirelessSplitterSessionInfoWithCompletion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)getPairedBluetoothDeviceInfoArrayWithCompletion:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__AFSettingsConnection_getPairedBluetoothDeviceInfoArrayWithCompletion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)getConnectedBluetoothDeviceInfoArrayWithCompletion:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__AFSettingsConnection_getConnectedBluetoothDeviceInfoArrayWithCompletion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)getBluetoothDeviceInfoWithUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__AFSettingsConnection_getBluetoothDeviceInfoWithUID_completion___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__AFSettingsConnection_getBluetoothDeviceInfoWithUID_completion___block_invoke_2;
  v11[3] = &unk_1E73455E0;
  v12 = v7;
  v10 = v7;
  [v9 getBluetoothDeviceInfoWithUID:v8 completion:v11];
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

- (void)getBluetoothDeviceInfoWithAddress:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AFSettingsConnection_getBluetoothDeviceInfoWithAddress_completion___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__AFSettingsConnection_getBluetoothDeviceInfoWithAddress_completion___block_invoke_2;
  v11[3] = &unk_1E73455E0;
  v12 = v7;
  v10 = v7;
  [v9 getBluetoothDeviceInfoWithAddress:v8 completion:v11];
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

- (void)setSiriOutputVolume:(float)a3 forAudioRoute:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
  *&v10 = a3;
  [v11 setSiriOutputVolume:v9 forAudioRoute:v8 completion:v10];
}

- (void)getSiriOutputVolumeForAudioRoute:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AFSettingsConnection_getSiriOutputVolumeForAudioRoute_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 getSiriOutputVolumeForAudioRoute:v8 completion:v7];
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

- (void)fetchExperimentContextWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AFSettingsConnection_fetchExperimentContextWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)fetchExperimentConfigurationsWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__AFSettingsConnection_fetchExperimentConfigurationsWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)sendMetricsToServerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v4];
  [v5 sendMetricsToServerWithCompletion:v4];
}

- (void)resetAnalyticsStoreWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v4];
  [v5 resetAnalyticsStoreWithCompletion:v4];
}

- (void)purgeAnalyticsStoreWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v4];
  [v5 purgeAnalyticsStoreWithCompletion:v4];
}

- (void)fetchEventRecordsFromAnalyticsStoreAtPath:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__AFSettingsConnection_fetchEventRecordsFromAnalyticsStoreAtPath_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 fetchEventRecordsFromAnalyticsStoreAtPath:v8 completion:v7];
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

- (void)setNanoAlwaysShowRecognizedSpeech:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoAlwaysShowRecognizedSpeech:withCompletion:]";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (v5)
  {
    v5[2](v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoSiriResponseShouldAlwaysPrint:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoSiriResponseShouldAlwaysPrint:withCompletion:]";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (v5)
  {
    v5[2](v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoMessageWithoutConfirmationEnabled:(BOOL)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)setNanoCrownActivationEnabled:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoCrownActivationEnabled:withCompletion:]";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (v5)
  {
    v5[2](v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoLanguage:(id)a3 withCompletion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[AFSettingsConnection setNanoLanguage:withCompletion:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  if (v6)
  {
    v6[2](v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNanoOutputVoice:(id)a3 withCompletion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[AFSettingsConnection setNanoOutputVoice:withCompletion:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  if (v6)
  {
    v6[2](v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNanoTTSSpeakerVolume:(id)a3 withCompletion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[AFSettingsConnection setNanoTTSSpeakerVolume:withCompletion:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  if (v6)
  {
    v6[2](v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNanoUseDeviceSpeakerForTTS:(id)a3 withCompletion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[AFSettingsConnection setNanoUseDeviceSpeakerForTTS:withCompletion:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  if (v6)
  {
    v6[2](v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNanoRaiseToSpeakEnabled:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoRaiseToSpeakEnabled:withCompletion:]";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (v5)
  {
    v5[2](v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoPhraseSpotterEnabled:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoPhraseSpotterEnabled:withCompletion:]";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (v5)
  {
    v5[2](v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoDictationAutoPunctuationEnabled:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoDictationAutoPunctuationEnabled:withCompletion:]";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (v5)
  {
    v5[2](v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoDictationEnabled:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoDictationEnabled:withCompletion:]";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (v5)
  {
    v5[2](v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNanoAssistantEnabled:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFSettingsConnection setNanoAssistantEnabled:withCompletion:]";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %d", &v8, 0x12u);
  }

  if (v5)
  {
    v5[2](v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)publishFeedbackArbitrationParticipation:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_210];
  [v5 publishFeedbackArbitrationParticipation:v4];
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

- (void)getStereoPairState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__AFSettingsConnection_getStereoPairState___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = v4;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getStereoPairState:v6];
  }
}

- (void)getStereoPartnerLastMyriadWinDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__AFSettingsConnection_getStereoPartnerLastMyriadWinDate___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = v4;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getStereoPartnerLastMyriadWinDate:v6];
  }
}

- (void)getMeCard:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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
      v4[2](v4, 0, v7);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __34__AFSettingsConnection_getMeCard___block_invoke;
      v10[3] = &unk_1E7348AA8;
      v5 = v4;
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

- (void)getHorsemanSupplementalLanguageDictionary:(id)a3
{
  if (a3)
  {
    [(AFSettingsConnection *)self getSupplementalLanguageDictionaryForProduct:*MEMORY[0x1E69C83F0] completion:a3];
  }
}

- (void)getSupplementalLanguagesForProduct:(id)a3 forBuildVersion:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__AFSettingsConnection_getSupplementalLanguagesForProduct_forBuildVersion_completion___block_invoke;
    v14[3] = &unk_1E7348AA8;
    v10 = v8;
    v15 = v10;
    v11 = a4;
    v12 = a3;
    v13 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v14];
    [v13 getSupplementalLanguagesForProduct:v12 forBuildVersion:v11 completion:v10];
  }
}

- (void)getSupplementalLanguageDictionaryForProduct:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__AFSettingsConnection_getSupplementalLanguageDictionaryForProduct_completion___block_invoke;
    v11[3] = &unk_1E7348AA8;
    v8 = v6;
    v12 = v8;
    v9 = a3;
    v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v11];
    [v10 getSupplementalLanguageDictionaryForProduct:v9 completion:v8];
  }
}

- (void)getSupplementalLanguagesModificationDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__AFSettingsConnection_getSupplementalLanguagesModificationDate___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = v4;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getSupplementalLanguagesModificationDate:v6];
  }
}

- (void)getSupplementalLanguagesDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__AFSettingsConnection_getSupplementalLanguagesDictionary___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = v4;
    v9 = v6;
    v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v8];
    [v7 getSupplementalLanguagesDictionary:v6];
  }
}

- (void)setSupplementalLanguages:(id)a3 forProduct:(id)a4 forBuildVersion:(id)a5 completion:(id)a6
{
  v10 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__AFSettingsConnection_setSupplementalLanguages_forProduct_forBuildVersion_completion___block_invoke;
  v18[3] = &unk_1E7348AA8;
  v19 = v10;
  v11 = v10;
  v12 = a5;
  v13 = a4;
  v14 = a3;
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

  [v15 setSupplementalLanguages:v14 forProduct:v13 forBuildVersion:v12 completion:v17];
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

- (void)setSupplementalLanguageDictionary:(id)a3 forProduct:(id)a4 completion:(id)a5
{
  v8 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__AFSettingsConnection_setSupplementalLanguageDictionary_forProduct_completion___block_invoke;
  v15[3] = &unk_1E7348AA8;
  v16 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
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

  [v12 setSupplementalLanguageDictionary:v11 forProduct:v10 completion:v14];
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

- (void)postTestResultSelectedWithRcId:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_203];
  [v5 postTestResultSelectedWithRcId:v4];
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

- (void)postTestResultCandidateWithRcId:(id)a3 recognitionSausage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_201];
  [v8 postTestResultCandidateWithRcId:v7 recognitionSausage:v6];
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

- (void)startAudioPlaybackRequest:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__AFSettingsConnection_startAudioPlaybackRequest_options_completion___block_invoke;
  v14[3] = &unk_1E7348AA8;
  v15 = v8;
  v9 = v8;
  v10 = a3;
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

  [v11 startAudioPlaybackRequest:v10 options:a4 completion:v13];
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

- (void)getPeerIdentifiers:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__AFSettingsConnection_getPeerIdentifiers___block_invoke;
  v9[3] = &unk_1E7348AA8;
  v10 = v4;
  v5 = v4;
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

- (void)startRemoteRequest:(id)a3 onPeer:(id)a4 completion:(id)a5
{
  v8 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__AFSettingsConnection_startRemoteRequest_onPeer_completion___block_invoke;
  v15[3] = &unk_1E7348AA8;
  v16 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
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

  [v12 startRemoteRequest:v11 onPeer:v10 completion:v14];
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

- (void)startMultiUserUIRequestWithText:(id)a3 expectedSpeakerSharedUserID:(id)a4 expectedSpeakerConfidenceScore:(unint64_t)a5 nonspeakerConfidenceScores:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_187];
  [v16 startMultiUserUIRequestWithText:v15 expectedSpeakerSharedUserID:v14 expectedSpeakerConfidenceScore:a5 nonspeakerConfidenceScores:v13 completion:v12];
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

- (void)setReplayOverridePath:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_185];
  [v5 setReplayOverridePath:v4];
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

- (void)replayRecordedViewAt:(unint64_t)a3 with:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v6 path];
    v12 = 136315650;
    v13 = "[AFSettingsConnection replayRecordedViewAt:with:]";
    v14 = 2048;
    v15 = a3;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s #ReplayAt. index: %lu,  recordingDataURL: %@", &v12, 0x20u);
  }

  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_181];
  [v10 replayRecordedViewAt:a3 with:v6];

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

- (void)replayAllRecordedViews:(unint64_t)a3 with:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v6 path];
    v12 = 136315650;
    v13 = "[AFSettingsConnection replayAllRecordedViews:with:]";
    v14 = 2048;
    v15 = a3;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s #ReplayAll. intervalSeconds: %lu,  recordingDataURL: %@", &v12, 0x20u);
  }

  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_179];
  [v10 replayAllRecordedViews:a3 with:v6];

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

- (void)startUIRequestWithInfo:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_177];
  [v8 startUIRequestWithInfo:v7 completion:v6];
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

- (void)startUIRequestWithText:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_175];
  [v8 startUIRequestWithText:v7 completion:v6];
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

- (void)startUIMockServerRequestWithReplayFileURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_173];
  [v8 startUIMockServerRequestWithReplayFileURL:v7 completion:v6];
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

- (void)startUIRequestWithSpeechAudioFileURL:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_171];
  [v5 startUIRequestWithSpeechAudioFileURL:v4];
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

- (void)startUIRequestWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_166];
  [v5 startUIRequestWithInfo:v4 completion:&__block_literal_global_169];
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

- (void)startUIRequestWithText:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_161];
  [v5 startUIRequestWithText:v4 completion:&__block_literal_global_164];
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

- (void)startUIRequest:(id)a3
{
  if (a3)
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
      v6 = [v5 turnIdentifier];
      [(AFRequestInfo *)v7 setTurnIdentifier:v6];
    }

    [(AFSettingsConnection *)self startUIRequestWithInfo:v7];
  }
}

- (void)isVoiceTriggerEnabled:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__AFSettingsConnection_isVoiceTriggerEnabled___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)isJustSiriEnabledInTheHome:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__AFSettingsConnection_isJustSiriEnabledInTheHome___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)availableLanguagesInTheHome:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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
    v6 = v4;
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

- (void)getCurrentAccessoryInfoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_151];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__AFSettingsConnection_getCurrentAccessoryInfoWithCompletion___block_invoke_152;
    v6[3] = &unk_1E7345590;
    v7 = v4;
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

- (void)setLanguage:(id)a3 outputVoice:(id)a4 withCompletion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[AFSettingsConnection setLanguage:outputVoice:withCompletion:]";
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s Setting Siri output voice:%@ language code: %@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__AFSettingsConnection_setLanguage_outputVoice_withCompletion___block_invoke;
  v18[3] = &unk_1E7348AA8;
  v12 = v10;
  v19 = v12;
  v13 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__AFSettingsConnection_setLanguage_outputVoice_withCompletion___block_invoke_2;
  v16[3] = &unk_1E7347E40;
  v17 = v12;
  v14 = v12;
  [v13 setLanguage:v8 outputVoice:v9 withCompletion:v16];

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

- (void)setLanguage:(id)a3 withCompletion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[AFSettingsConnection setLanguage:withCompletion:]";
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Setting Siri language code: %@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__AFSettingsConnection_setLanguage_withCompletion___block_invoke;
  v15[3] = &unk_1E7348AA8;
  v9 = v7;
  v16 = v9;
  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__AFSettingsConnection_setLanguage_withCompletion___block_invoke_2;
  v13[3] = &unk_1E73494D8;
  v14 = v9;
  v11 = v9;
  [v10 setLanguage:v6 withCompletion:v13];

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

- (void)setOutputVoice:(id)a3 withCompletion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[AFSettingsConnection setOutputVoice:withCompletion:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Setting Siri output voice: %@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__AFSettingsConnection_setOutputVoice_withCompletion___block_invoke;
  v14[3] = &unk_1E7348AA8;
  v15 = v7;
  v9 = v7;
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

  [v10 setOutputVoice:v6 withCompletion:v12];

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

- (void)setSpeechProfileExternalOfflineModelRootPath:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v6];
  [v8 setSpeechProfileExternalOfflineModelRootPath:v7 completion:v6];
}

- (void)setOfflineDictationProfileOverridePath:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v6];
  [v8 setOfflineDictationProfileOverridePath:v7 completion:v6];
}

- (void)createOfflineSpeechProfileWithLanguage:(id)a3 modelOverridePath:(id)a4 JSONData:(id)a5 completion:(id)a6
{
  v10 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__AFSettingsConnection_createOfflineSpeechProfileWithLanguage_modelOverridePath_JSONData_completion___block_invoke;
  v16[3] = &unk_1E7348AA8;
  v17 = v10;
  v11 = v10;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v16];
  [v15 createOfflineSpeechProfileWithLanguage:v14 modelOverridePath:v13 JSONData:v12 completion:v11];
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

- (void)getOfflineDictationStatusWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AFSettingsConnection_getOfflineDictationStatusWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getOfflineDictationStatusWithCompletion:v5];
}

- (void)getOfflineAssistantStatusWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AFSettingsConnection_getOfflineAssistantStatusWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
  v6 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v7];
  [v6 getOfflineAssistantStatusWithCompletion:v5];
}

uint64_t __67__AFSettingsConnection__updateVoicesIncludingAssetInfo_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setVoices:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)_filterVoices:(id)a3 forLanguage:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
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
          v14 = [v13 languageCode];
          v15 = [v6 isEqualToString:v14];

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
    v7 = v5;
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

- (void)_setVoices:(id)a3
{
  v4 = a3;
  voicesQueue = self->_voicesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__AFSettingsConnection__setVoices___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(voicesQueue, v7);
}

- (void)getAudioSessionCoordinationSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__AFSettingsConnection_getAudioSessionCoordinationSnapshotWithCompletion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)currectNWActivityId:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__AFSettingsConnection_currectNWActivityId___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)fetchMultiUserVoiceIdentificationSetting:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AFSettingsConnection_fetchMultiUserVoiceIdentificationSetting___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)setOpportuneSpeakingEdgeDetectorSignalOverride:(int64_t)a3
{
  v4 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_142];
  [v4 setOpportuneSpeakingEdgeDetectorSignalOverride:a3];
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

- (void)getShowAppsBehindSiriInCarPlayEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AFSettingsConnection_getShowAppsBehindSiriInCarPlayEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getMessageWithoutConfirmationHeadphonesEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__AFSettingsConnection_getMessageWithoutConfirmationHeadphonesEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getMessageWithoutConfirmationInCarPlayEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__AFSettingsConnection_getMessageWithoutConfirmationInCarPlayEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getMessageWithoutConfirmationEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__AFSettingsConnection_getMessageWithoutConfirmationEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__AFSettingsConnection_fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)setAnnounceNotificationsInCarPlayType:(int64_t)a3
{
  v4 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_114];
  [v4 setAnnounceNotificationsInCarPlayType:a3];
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

- (void)getAnnounceNotificationsInCarPlayTypeWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AFSettingsConnection_getAnnounceNotificationsInCarPlayTypeWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__AFSettingsConnection_getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)setAnnounceNotificationsTemporarilyDisabledUntil:(id)a3 forApp:(id)a4 platform:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_108_22480];
  [v10 setAnnounceNotificationsTemporarilyDisabledUntil:v9 forApp:v8 platform:a5];
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

- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForApp:(id)a3 platform:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__AFSettingsConnection_getAnnounceNotificationsTemporarilyDisabledEndDateForApp_platform_completion___block_invoke;
  v12[3] = &unk_1E7348AA8;
  v13 = v8;
  v9 = v8;
  v10 = a3;
  v11 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v12];
  [v11 getAnnounceNotificationsTemporarilyDisabledEndDateForApp:v10 platform:a4 completion:v9];
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

- (void)setAnnounceNotificationsTemporarilyDisabledUntil:(id)a3 platform:(int64_t)a4
{
  v6 = a3;
  v7 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_106];
  [v7 setAnnounceNotificationsTemporarilyDisabledUntil:v6 platform:a4];
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

- (void)getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__AFSettingsConnection_getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform_completion___block_invoke;
  v9[3] = &unk_1E7348AA8;
  v10 = v6;
  v7 = v6;
  v8 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v9];
  [v8 getAnnounceNotificationsTemporarilyDisabledEndDateForPlatform:a3 completion:v7];
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

- (void)getSpokenNotificationShouldSkipTriggerlessRepliesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_100];
  [v5 getSpokenNotificationShouldSkipTriggerlessRepliesWithCompletion:v4];
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

- (void)getSpokenNotificationShouldAnnounceAllNotificationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_96];
  [v5 getSpokenNotificationShouldAnnounceAllNotificationsWithCompletion:v4];
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

- (void)getSpokenNotificationIsAlwaysOpportuneWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_92];
  [v5 getSpokenNotificationIsAlwaysOpportuneWithCompletion:v4];
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

- (void)routedHeadsetDoesSupportLiveTranslationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_90];
  [v5 routedHeadsetDoesSupportLiveTranslationWithCompletion:v4];
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

- (void)getHeadGesturesForCurrentlyRoutedDevice:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_88];
  [v5 getHeadGesturesForCurrentlyRoutedDevice:v4];
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

- (void)getPersonalVolumeForCurrentlyRoutedDevice:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_82];
  [v5 getPersonalVolumeForCurrentlyRoutedDevice:v4];
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

- (void)getConversationAwarenessForCurrentlyRoutedDevice:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_78];
  [v5 getConversationAwarenessForCurrentlyRoutedDevice:v4];
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

- (void)configOverrides:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_68_22504];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__AFSettingsConnection_configOverrides___block_invoke_69;
    v6[3] = &unk_1E73454F0;
    v7 = v4;
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

- (void)setConfigOverrides:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AFSettingsConnection_setConfigOverrides_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v10];
  [v9 setConfigOverrides:v8 completion:v7];
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

- (void)getDevicesWithAvailablePHSAssetsOnDeviceCheck:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__AFSettingsConnection_getDevicesWithAvailablePHSAssetsOnDeviceCheck___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = v4;
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

- (void)getDevicesWithAvailablePHSAssetsForLanguage:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__AFSettingsConnection_getDevicesWithAvailablePHSAssetsForLanguage_completion___block_invoke;
    v11[3] = &unk_1E7348AA8;
    v8 = v6;
    v12 = v8;
    v9 = a3;
    v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v11];
    [v10 getDevicesWithAvailablePHSAssetsForLanguage:v9 completion:v8];
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

- (void)disableAndDeleteCloudSyncWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__AFSettingsConnection_disableAndDeleteCloudSyncWithCompletion___block_invoke;
  v9[3] = &unk_1E7348AA8;
  v10 = v4;
  v5 = v4;
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

- (void)setActiveAccountIdentifier:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"AFSettingsConnection.m" lineNumber:285 description:@"Need an identifier to set active"];
  }

  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_39];
  [v5 setActiveAccountIdentifier:v7];
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

- (void)deleteAccountWithIdentifier:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"AFSettingsConnection.m" lineNumber:280 description:@"Need an identifier to delete"];
  }

  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_34];
  [v5 deleteAccountWithIdentifier:v7];
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

- (void)fetchActiveAccount:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__AFSettingsConnection_fetchActiveAccount___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
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

- (void)fetchAccountsSynchronously:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v4)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__AFSettingsConnection_fetchAccountsSynchronously_completion___block_invoke;
    v16[3] = &unk_1E7348AA8;
    v8 = &v17;
    v17 = v6;
    v9 = [(AFSettingsConnection *)self _synchronousSettingsServiceWithErrorHandler:v16];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__AFSettingsConnection_fetchAccountsSynchronously_completion___block_invoke_15;
    v14[3] = &unk_1E7348AA8;
    v8 = &v15;
    v15 = v6;
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

- (void)isRecognizeMyVoiceAvailable:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v7 = v3;
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

    v3 = v7;
  }
}

- (void)fetchSupportedMultiUserLanguageCodes:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = AFPreferencesSupportedMultiUserLanguages();
    (*(a3 + 2))(v4, v5, 0);
  }
}

- (void)fetchSupportedLanguageCodes:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = AFPreferencesSupportedLanguages();
    (*(a3 + 2))(v4, v5, 0);
  }
}

- (id)_synchronousSettingsServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _connection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)_settingsServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

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

- (AFSettingsConnection)initWithInstanceContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
    objc_storeStrong(&v6->_instanceContext, a3);
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
  block[4] = a1;
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

- (void)_tellDelegateServerVerificationReport:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _delegate];
  [v5 _settingsConnectionServerVerificationReport:v4];
}

- (void)_tellDelegatePartialVerificationResult:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _delegate];
  [v5 _settingsConnectionPartialVerificationResult:v4];
}

- (void)_setDelegate:(id)a3
{
  v5 = a3;
  delegate = self->_delegate;
  p_delegate = &self->_delegate;
  v8 = v5;
  if (([(AFSettingsDelegate *)delegate isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_delegate, a3);
  }
}

- (void)_handleCommand:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 dictionary];
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[AFSettingsConnection(Internal) _handleCommand:completion:]";
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Sending %@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__AFSettingsConnection_Internal___handleCommand_completion___block_invoke;
  v15[3] = &unk_1E7348AA8;
  v9 = v6;
  v16 = v9;
  v10 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__AFSettingsConnection_Internal___handleCommand_completion___block_invoke_570;
  v13[3] = &unk_1E7347E40;
  v14 = v9;
  v11 = v9;
  [v10 handleCommand:v7 completion:v13];

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

- (void)_getSharedCompanionInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__AFSettingsConnection_Internal___getSharedCompanionInfo___block_invoke;
    v8[3] = &unk_1E7348AA8;
    v6 = v4;
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

- (void)_fetchPeerData:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_567];
  [v5 _fetchPeerData:v4];
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

- (void)_isInactiveDeviceSyncDisabled:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AFSettingsConnection_Internal___isInactiveDeviceSyncDisabled___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)_isInactiveDeviceSyncDisabledByTrial:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AFSettingsConnection_Internal___isInactiveDeviceSyncDisabledByTrial___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
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

- (void)_clearSyncNeededForKey:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_565];
  [v5 _clearSyncNeededForKey:v4];
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

- (void)_setSyncNeededForReason:(id)a3
{
  v4 = a3;
  v5 = [(AFSettingsConnection *)self _settingsServiceWithErrorHandler:&__block_literal_global_563];
  [v5 _setSyncNeededForReason:v4];
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