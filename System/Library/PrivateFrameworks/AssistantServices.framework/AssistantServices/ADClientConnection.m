@interface ADClientConnection
- ($115C4C562B26FF47E01F9F4EA65B5887)adClientConnectionAuditToken;
- (ADClientConnection)initWithXPCConnection:(id)a3;
- (BOOL)adTextToSpeechIsMuted;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_serviceDelegateWithErrorHandler:(id)a3;
- (void)_addAudioSessionAssertion:(id)a3;
- (void)_addSpeechCapturingContext:(id)a3;
- (void)_broadcastCommandDictionary:(id)a3;
- (void)_clearAssistantInfoForAccountIdentifier:(id)a3;
- (void)_computeShouldSpeak;
- (void)_continuePendingSpeechRequestFromTimestamp:(double)a3;
- (void)_fetchAppContextForApplicationInfo:(id)a3 reply:(id)a4;
- (void)_handleRequestCompletedWithUUID:(id)a3 error:(id)a4;
- (void)_listInstalledServicesWithReply:(id)a3;
- (void)_logShouldSpeakState:(BOOL)a3;
- (void)_performCommandDictionary:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5;
- (void)_performTaskCommandDictionary:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5;
- (void)_pingServiceForIdentifier:(id)a3 reply:(id)a4;
- (void)_refreshAssistantValidation;
- (void)_registerForRingerStateNotification;
- (void)_removeAllAudioSessionAssertionsForReason:(id)a3;
- (void)_removeAllSpeechCapturingContextsForReason:(id)a3;
- (void)_requestBarrierIfNecessaryWithReply:(id)a3;
- (void)_requestBarrierWithReply:(id)a3;
- (void)_setADShouldSpeak:(BOOL)a3;
- (void)_setBluetoothDevice:(id)a3;
- (void)_setRequestCompletion:(id)a3;
- (void)_setServerForcedTTS:(BOOL)a3;
- (void)_speechRecordingDidFinish;
- (void)_startSpeechWithURL:(id)a3 isNarrowBand:(BOOL)a4;
- (void)_unregisterForRingerStateNotification;
- (void)_updateShouldSpeak;
- (void)_updateSpeechRequestOptions:(id)a3;
- (void)adAceConnectionWillRetryOnError:(id)a3;
- (void)adAcousticIDRequestDidFinishSuccessfully:(BOOL)a3;
- (void)adAcousticIDRequestWillStart;
- (void)adAudioSessionDidBecomeActive:(BOOL)a3;
- (void)adAudioSessionWillBecomeActive:(BOOL)a3;
- (void)adExtensionRequestFinishedForApplication:(id)a3 error:(id)a4;
- (void)adExtensionRequestWillStartForApplication:(id)a3;
- (void)adFailedToLaunchAppWithBundleIdentifier:(id)a3;
- (void)adGetBulletinContext:(id)a3;
- (void)adInvalidateCurrentUserActivity;
- (void)adMusicWasDetected;
- (void)adNetworkDidBecomeActive;
- (void)adQuickStopWasHandledWithActions:(unint64_t)a3;
- (void)adRequestDidCompleteWithSuccess:(BOOL)a3 error:(id)a4;
- (void)adRequestDidHandleFailedStartPlayback:(int64_t)a3;
- (void)adRequestDidReceiveCommand:(id)a3 reply:(id)a4;
- (void)adRequestDidReceiveTimeoutExtensionRequestWithDuration:(double)a3;
- (void)adRequestDidUpdateResponseMode:(id)a3;
- (void)adRequestEncounteredIntermediateError:(id)a3;
- (void)adRequestReplayAllRecordedViews:(unint64_t)a3 with:(id)a4;
- (void)adRequestReplayRecordedViewAt:(unint64_t)a3 with:(id)a4;
- (void)adRequestRequestedDismissAssistant;
- (void)adRequestRequestedDismissAssistantWithReason:(int64_t)a3;
- (void)adRequestRequestedOpenApplicationWithBundleID:(id)a3 URL:(id)a4 completion:(id)a5;
- (void)adRequestRequestedOpenURL:(id)a3 completion:(id)a4;
- (void)adRequestSetReplayEnabled:(BOOL)a3;
- (void)adRequestSetReplayOverridePath:(id)a3;
- (void)adRequestWillProcessStartPlayback:(int64_t)a3 intent:(id)a4 completion:(id)a5;
- (void)adRequestWillReceiveCommand:(id)a3;
- (void)adServerRequestsTTSStateUnmuted:(BOOL)a3;
- (void)adSetUserActivityInfo:(id)a3 webpageURL:(id)a4;
- (void)adShouldSpeakStateDidChange:(BOOL)a3;
- (void)adSpeechRecognitionDidFail:(id)a3 sessionUUID:(id)a4;
- (void)adSpeechRecognitionWillBeginRecognitionUpdateForTask:(id)a3;
- (void)adSpeechRecognized:(id)a3 usingSpeechModel:(id)a4 sessionUUID:(id)a5;
- (void)adSpeechRecognizedPartialResult:(id)a3;
- (void)adSpeechRecordingDidBeginOnAVRecordRoute:(id)a3 audioSessionID:(unsigned int)a4 bluetoothDevice:(id)a5 sessionRequestUUID:(id)a6 dictationOptions:(id)a7 context:(id)a8;
- (void)adSpeechRecordingDidCancelWithContext:(id)a3;
- (void)adSpeechRecordingDidChangeAVRecordRoute:(id)a3 bluetoothDevice:(id)a4 isDucking:(BOOL)a5 isTwoShot:(BOOL)a6 speechEndHostTime:(unint64_t)a7 context:(id)a8;
- (void)adSpeechRecordingDidDetectStartPointWithContext:(id)a3;
- (void)adSpeechRecordingDidEndWithContext:(id)a3;
- (void)adSpeechRecordingDidFail:(id)a3 context:(id)a4;
- (void)adSpeechRecordingPerformTwoShotPromptWithType:(int64_t)a3 context:(id)a4 completion:(id)a5;
- (void)adSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)a3 context:(id)a4;
- (void)adSpeechRecordingWillStopWithSignpostID:(unint64_t)a3;
- (void)adStartUIRequestWithText:(id)a3 completion:(id)a4;
- (void)adWantsToCacheImage:(id)a3;
- (void)adWillProcessAppLaunchWithBundleIdentifier:(id)a3;
- (void)adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)a3;
- (void)audioPlaybackService:(id)a3 didStartRequest:(id)a4;
- (void)audioPlaybackService:(id)a3 didStopRequest:(id)a4 error:(id)a5;
- (void)audioPlaybackService:(id)a3 willStartRequest:(id)a4;
- (void)audioSessionController:(id)a3 didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)a4;
- (void)audioSessionController:(id)a3 didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)a4;
- (void)audioSessionController:(id)a3 didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)a4;
- (void)audioSessionController:(id)a3 didReceiveAudioSessionOwnerLostNotification:(id)a4;
- (void)audioSessionController:(id)a3 didReceiveAudioSessionOwnerResetNotification:(id)a4;
- (void)audioSessionController:(id)a3 didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)a4;
- (void)bluetoothDevice:(id)a3 deviceInfoDidChangeFrom:(id)a4 to:(id)a5;
- (void)bluetoothDevice:(id)a3 headphoneInEarDetectionStateDidChangeFrom:(id)a4 to:(id)a5;
- (void)bluetoothDevice:(id)a3 headphoneListeningModeDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
- (void)bluetoothDeviceDidInvalidate:(id)a3;
- (void)boostedPreheatWithStyle:(int64_t)a3 completion:(id)a4;
- (void)cancelRequestForReason:(int64_t)a3 withError:(id)a4;
- (void)cancelSpeech;
- (void)clearContext;
- (void)connectionDisconnected;
- (void)continuePendingSpeechRequestWithId:(unint64_t)a3 fromTimestamp:(double)a4;
- (void)dealloc;
- (void)didDismissUI;
- (void)emitHomeMetricInvocationEvent;
- (void)endSession;
- (void)endWaitingForEmergencyIfNeededForCommand:(id)a3;
- (void)fetchAppicationContextForApplicationInfo:(id)a3 supplementalContext:(id)a4 refID:(id)a5;
- (void)forceAudioSessionActiveWithContext:(id)a3 completion:(id)a4;
- (void)forceAudioSessionInactiveWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)getDeferredObjectsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)getRemoteClockTimerSnapshotWithCompletion:(id)a3;
- (void)getSerializedCachedObjectsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)performGenericAceCommand:(id)a3 interruptOutstandingRequest:(BOOL)a4 reply:(id)a5;
- (void)preheatWithStyle:(int64_t)a3 forOptions:(id)a4;
- (void)prepareForPhoneCall;
- (void)recordCancellationMetrics;
- (void)recordFailureMetricsForError:(id)a3;
- (void)reportIssueForError:(id)a3 type:(int64_t)a4 context:(id)a5;
- (void)reportIssueForError:(id)a3 type:(int64_t)a4 subtype:(id)a5 context:(id)a6;
- (void)reportIssueForType:(id)a3 subtype:(id)a4 context:(id)a5;
- (void)requestShouldSpeakStateWithReply:(id)a3;
- (void)requestStateUpdateWithReply:(id)a3;
- (void)resumeInterruptedAudioPlaybackIfNeeded;
- (void)rollbackClearContext;
- (void)rollbackRequest;
- (void)setAlertContextDirty;
- (void)setApplicationContext:(id)a3;
- (void)setCarDNDActive:(BOOL)a3;
- (void)setConfiguration:(id)a3;
- (void)setIsEyesFree:(BOOL)a3;
- (void)setLockState:(BOOL)a3 showingLockScreen:(BOOL)a4;
- (void)setModesConfiguration:(id)a3;
- (void)setOverriddenApplicationContext:(id)a3 withContext:(id)a4;
- (void)startAcousticIDRequestWithOptions:(id)a3 context:(id)a4 completion:(id)a5;
- (void)startAudioPlaybackRequest:(id)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)startRecordingForPendingSpeechRequestWithOptions:(id)a3 requestId:(unint64_t)a4 sessionUUID:(id)a5 completion:(id)a6;
- (void)startRequestWithInfo:(id)a3 completion:(id)a4;
- (void)startSpeechPronunciationRequestWithOptions:(id)a3 context:(id)a4 completion:(id)a5;
- (void)stopAllAudioPlaybackRequests:(BOOL)a3;
- (void)stopAudioPlaybackRequest:(id)a3 immediately:(BOOL)a4;
- (void)stopSpeechWithOptions:(id)a3;
- (void)telephonyRequestCompleted;
- (void)updateSpeechOptions:(id)a3;
- (void)updateSpeechSynthesisRecord:(id)a3;
- (void)willPresentUIWithReply:(id)a3;
- (void)willSetApplicationContextWithRefId:(id)a3;
@end

@implementation ADClientConnection

- (void)_computeShouldSpeak
{
  if (self->_hasCachedADShouldSpeak)
  {
    if (self->_cachedADShouldSpeak)
    {
LABEL_8:
      v3 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 1;
    self->_hasCachedADShouldSpeak = 1;
    v4 = sub_100004CAC();
    self->_cachedADShouldSpeak = v4;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  if (self->_requestOptionsRequireTTS || self->_serverIsForcingTTS || ([(AFClientConfiguration *)self->_clientConfiguration isDeviceInStarkMode]& 1) != 0)
  {
    goto LABEL_8;
  }

  v3 = [(AFClientConfiguration *)self->_clientConfiguration isDeviceInCarDNDMode];
LABEL_9:
  self->_combinedShouldSpeakState = v3;
  if (([(AFRequestInfo *)self->_requestInfo options]& 2) != 0)
  {
    self->_combinedShouldSpeakState = 0;
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    cachedADShouldSpeak = self->_cachedADShouldSpeak;
    requestOptionsRequireTTS = self->_requestOptionsRequireTTS;
    serverIsForcingTTS = self->_serverIsForcingTTS;
    clientConfiguration = self->_clientConfiguration;
    v10 = v5;
    LODWORD(clientConfiguration) = [(AFClientConfiguration *)clientConfiguration isDeviceInStarkMode];
    v11 = [(AFClientConfiguration *)self->_clientConfiguration isDeviceInCarDNDMode];
    v12 = [(AFRequestInfo *)self->_requestInfo options];
    combinedShouldSpeakState = self->_combinedShouldSpeakState;
    v14 = 136316930;
    v15 = "[ADClientConnection _computeShouldSpeak]";
    v16 = 1024;
    v17 = cachedADShouldSpeak;
    v18 = 1024;
    v19 = requestOptionsRequireTTS;
    v20 = 1024;
    v21 = serverIsForcingTTS;
    v22 = 1024;
    v23 = clientConfiguration;
    v24 = 1024;
    v25 = v11;
    v26 = 2048;
    v27 = v12;
    v28 = 1024;
    v29 = combinedShouldSpeakState;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s ADShouldSpeak: %d Request Wants TTS: %d Server Wants TTS: %d Stark Mode: %d Car DND: %d Request Info Options: %lu Combined: %d", &v14, 0x3Au);
  }
}

- (void)clearContext
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADClientConnection clearContext]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
  }

  [(ADClientConnection *)self _setServerForcedTTS:0];
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 clearContext];
}

- (void)_unregisterForRingerStateNotification
{
  ringerStateToken = self->_ringerStateToken;
  if (ringerStateToken != -1)
  {
    notify_cancel(ringerStateToken);
    self->_ringerStateToken = -1;
  }
}

- (void)_updateShouldSpeak
{
  combinedShouldSpeakState = self->_combinedShouldSpeakState;
  [(ADClientConnection *)self _computeShouldSpeak];
  v4 = self->_combinedShouldSpeakState;
  if (v4 != combinedShouldSpeakState)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      *v8 = 136315650;
      *&v8[4] = "[ADClientConnection _updateShouldSpeak]";
      *&v8[12] = 2112;
      if (v4)
      {
        v6 = @"YES";
      }

      *&v8[14] = v6;
      v9 = 2112;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Sending should speak update: %@ to current client %@", v8, 0x20u);
    }

    v7 = [(ADClientConnection *)self _serviceDelegate];
    [v7 shouldSpeakChanged:self->_combinedShouldSpeakState];
  }
}

- (void)setAlertContextDirty
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 setAlertContextDirty];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)adClientConnectionAuditToken
{
  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection auditToken];
    xpcConnection = self->_xpcConnection;
  }

  return [(NSXPCConnection *)xpcConnection processIdentifier];
}

- (void)adInvalidateCurrentUserActivity
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D2A4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)adTextToSpeechIsMuted
{
  v2 = !self->_combinedShouldSpeakState;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [NSNumber numberWithBool:v2];
    v7 = 136315394;
    v8 = "[ADClientConnection adTextToSpeechIsMuted]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  return v2;
}

- (void)adNetworkDidBecomeActive
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010158;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)endWaitingForEmergencyIfNeededForCommand:(id)a3
{
  v19 = a3;
  if (!v19)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ADClientConnection.m" lineNumber:1700 description:{@"Invalid parameter not satisfying: %@", @"command"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v19;
    if (!self)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = [v5 bundleIdentifier];
    v8 = [v7 isEqualToString:@"com.apple.siri.PhoneCallFlowDelegatePlugin"];

    if (v8)
    {
      goto LABEL_15;
    }

    v9 = AFSiriLogContextMyriad;
    if (!os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v10 = v9;
    v11 = [v6 bundleIdentifier];
    *buf = 136315394;
    v21 = "[ADClientConnection didReceiveSiriKitPluginSignal:]";
    v22 = 2112;
    v23 = v11;
    v12 = "%s Ending waiting for emergency after receiving SiriKit Plugin Signal ACE command with bundle identifier %@";
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = v19;
  if (self)
  {
    v14 = v13;
    v15 = [v13 domain];
    v16 = [v15 isEqualToString:SAAceDomainSignalDomainPHONEValue];

    if ((v16 & 1) == 0)
    {
      v17 = AFSiriLogContextMyriad;
      if (!os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_INFO))
      {
LABEL_14:
        sub_10031DC5C(self);
        goto LABEL_15;
      }

      v10 = v17;
      v11 = [v14 domain];
      *buf = 136315394;
      v21 = "[ADClientConnection didReceiveDomainSignal:]";
      v22 = 2112;
      v23 = v11;
      v12 = "%s Ending waiting for emergency after receiving Domain Signal ACE command with domain %@";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v12, buf, 0x16u);

      goto LABEL_14;
    }
  }

LABEL_15:

LABEL_16:
}

- (void)_continuePendingSpeechRequestFromTimestamp:(double)a3
{
  self->_pendingRequestTimestamp = a3;
  pendingSpeechRequestContinue = self->_pendingSpeechRequestContinue;
  if (pendingSpeechRequestContinue)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[ADClientConnection _continuePendingSpeechRequestFromTimestamp:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s timestamp = %f", &v8, 0x16u);
      pendingSpeechRequestContinue = self->_pendingSpeechRequestContinue;
    }

    pendingSpeechRequestContinue[2](pendingSpeechRequestContinue, a3);
    v7 = self->_pendingSpeechRequestContinue;
    self->_pendingSpeechRequestContinue = 0;
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADClientConnection listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v7 = AFPendingSpeechRequestServiceInterface();
  [v5 setExportedInterface:v7];

  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)emitHomeMetricInvocationEvent
{
  v2 = +[ADHomeInfoManager sharedInfoManager];
  [v2 emitHomeMetricInvocationEvent];
}

- (void)_refreshAssistantValidation
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 refreshAssistantValidation];
}

- (void)_startSpeechWithURL:(id)a3 isNarrowBand:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 startSpeechRequestWithURL:v6 isNarrowBand:v4 withDelegate:self];
}

- (void)_requestBarrierIfNecessaryWithReply:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 requestBarrierIfNecessary:v3];
}

- (void)_requestBarrierWithReply:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 requestBarrier:v3];
}

- (void)_clearAssistantInfoForAccountIdentifier:(id)a3
{
  v3 = [ADAccount accountForIdentifier:a3];
  [v3 clearAssistantData];
  [v3 setServerCertificateData:0];
  [v3 setValidationData:0];
  [v3 save];
}

- (void)_fetchAppContextForApplicationInfo:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10031E32C;
  v9[3] = &unk_10051CD10;
  v10 = v5;
  v8 = v5;
  [v7 fetchContextForApplicationInfo:v6 completion:v9];
}

- (void)_broadcastCommandDictionary:(id)a3
{
  v6 = [AceObject aceObjectWithDictionary:a3];
  if (([v6 conformsToProtocol:&OBJC_PROTOCOL___SAClientBoundCommand] & 1) == 0)
  {
    v3 = objc_alloc_init(SAUIAddViews);
    v4 = [NSArray arrayWithObject:v6];
    [v3 setViews:v4];

    v6 = v3;
  }

  v5 = +[ADCommandCenter sharedCommandCenter];
  [v5 _broadcastCommand:v6];
}

- (void)_performTaskCommandDictionary:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ADCommandCenter sharedQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031E5C4;
  block[3] = &unk_10051E088;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, block);
}

- (void)_performCommandDictionary:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ADCommandCenter sharedQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10031E9E0;
  v15[3] = &unk_10051C0D8;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = a2;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_pingServiceForIdentifier:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[AFInstanceContext currentContext];
  v8 = [[ADServiceManager alloc] initWithInstanceContext:v7];
  v9 = [(ADServiceManager *)v8 serviceForIdentifier:v6];

  if (v9)
  {
    v10 = objc_alloc_init(SAPing);
    v11 = SiriCoreUUIDStringCreate();
    [v10 setAceId:v11];
    v12 = [v10 groupIdentifier];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10031EEAC;
    v13[3] = &unk_10051CD88;
    v14 = v5;
    [v9 handleCommand:v10 forDomain:v12 executionContext:0 reply:v13];
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

- (void)_listInstalledServicesWithReply:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 _listInstalledServicesWithCompletion:v3];
}

- (void)adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 adviseSessionArbiterToContinueWithPreviousWinner:v3];
}

- (void)reportIssueForType:(id)a3 subtype:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[ADClientConnection reportIssueForType:subtype:context:]";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Telling ABC about %@", &v14, 0x16u);
  }

  v12 = +[SiriCoreSymptomsReporter sharedInstance];
  v13 = [(NSXPCConnection *)self->_xpcConnection processIdentifier];
  [v12 reportIssueForType:v8 subType:v9 context:v10 processIdentifier:v13 walkboutStatus:byte_100590548];
}

- (void)reportIssueForError:(id)a3 type:(int64_t)a4 subtype:(id)a5 context:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v16 = +[SiriCoreSymptomsReporter sharedInstance];
  v13 = [(NSXPCConnection *)self->_xpcConnection processIdentifier];
  v14 = byte_100590548;
  v15 = sub_100097574();
  [v16 reportIssueForError:v12 type:a4 subtype:v11 context:v10 processIdentifier:v13 walkboutStatus:v14 triggerForIDSIdentifiers:v15];
}

- (void)reportIssueForError:(id)a3 type:(int64_t)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v13 = +[SiriCoreSymptomsReporter sharedInstance];
  v10 = [(NSXPCConnection *)self->_xpcConnection processIdentifier];
  v11 = byte_100590548;
  v12 = sub_100097574();
  [v13 reportIssueForError:v9 type:a4 context:v8 processIdentifier:v10 walkboutStatus:v11 triggerForIDSIdentifiers:v12];
}

- (void)updateSpeechSynthesisRecord:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 updateSpeechSynthesisRecord:v3];
}

- (void)stopAllAudioPlaybackRequests:(BOOL)a3
{
  v3 = a3;
  v5 = +[ADSpeechManager sharedManager];
  v4 = [v5 audioPlaybackService];
  [v4 stopAllRequests:v3 completion:0];
}

- (void)stopAudioPlaybackRequest:(id)a3 immediately:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = +[ADSpeechManager sharedManager];
  v6 = [v7 audioPlaybackService];
  [v6 stopRequest:v5 immediately:v4];
}

- (void)startAudioPlaybackRequest:(id)a3 options:(unint64_t)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a3;
  v10 = +[ADSpeechManager sharedManager];
  v9 = [v10 audioPlaybackService];
  [v9 startRequest:v8 options:a4 completion:v7];
}

- (void)getRemoteClockTimerSnapshotWithCompletion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[ADClockService sharedService];
    v5 = [v4 remoteTimerManager];

    if (v5)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10031F594;
      v7[3] = &unk_10051CF08;
      v8 = v3;
      [v5 getSnapshotsByDeviceIdentifierWithCompletion:v7];
    }

    else
    {
      v6 = [AFError errorWithCode:13];
      (*(v3 + 2))(v3, 0, v6);
    }
  }
}

- (void)getSerializedCachedObjectsWithIdentifiers:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableSet);
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
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = +[INCache sharedCache];
          v15 = [v14 cacheableObjectForIdentifier:v13];

          if (v15)
          {
            [v7 addObject:v15];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10031F980;
    v16[3] = &unk_10051C0B0;
    v17 = v6;
    [INSerializedCacheItem serializeCacheableObjects:v7 completion:v16];
  }
}

- (void)getDeferredObjectsWithIdentifiers:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 getDeferredObjectsWithIdentifiers:v6 completion:v5];
}

- (void)recordCancellationMetrics
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 _metrics_recordCancellationMetrics];
}

- (void)recordFailureMetricsForError:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 _metrics_recordFailureMetricsForError:v3];
}

- (void)telephonyRequestCompleted
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 telephonyRequestCompleted];
}

- (void)prepareForPhoneCall
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 prepareForPhoneCall];
}

- (void)setOverriddenApplicationContext:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 setOverriddenApplicationContext:v6 withContext:v5];
}

- (void)fetchAppicationContextForApplicationInfo:(id)a3 supplementalContext:(id)a4 refID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 fetchAppicationContextForApplicationInfo:v9 supplementalContext:v8 refID:v7];
}

- (void)setApplicationContext:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setApplicationContext:v3];
}

- (void)willSetApplicationContextWithRefId:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 willSetApplicationContextWithRefId:v3];
}

- (void)rollbackClearContext
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADClientConnection rollbackClearContext]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
  }

  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 rollbackClearContext];
}

- (void)performGenericAceCommand:(id)a3 interruptOutstandingRequest:(BOOL)a4 reply:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 handleGenericAceCommand:v9 withDelegate:self interruptOutstandingRequest:v5 targetReplyQueue:self->_queue reply:v8];
}

- (void)requestStateUpdateWithReply:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(ADClientConnection *)self _shouldSpeak];
  v5 = +[ADSpeechManager sharedManager];
  v6 = [v5 audioSessionController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003200BC;
  v8[3] = &unk_10051C088;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 getAudioSessionIDWithCompletion:v8];
}

- (void)requestShouldSpeakStateWithReply:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v4[2](v4, [(ADClientConnection *)self _shouldSpeak]);
  }
}

- (void)stopSpeechWithOptions:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADClientConnection stopSpeechWithOptions:]";
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p %@", &v7, 0x20u);
  }

  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 stopSpeechWithOptions:v4 forDelegate:self];
}

- (void)cancelSpeech
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADClientConnection cancelSpeech]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
  }

  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 cancelSpeechForDelegate:self];

  [(ADClientConnection *)self _continuePendingSpeechRequestFromTimestamp:0.0];
}

- (void)rollbackRequest
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADClientConnection rollbackRequest]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
  }

  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 rollbackRequestForDelegate:self];
}

- (void)cancelRequestForReason:(int64_t)a3 withError:(id)a4
{
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[ADClientConnection cancelRequestForReason:withError:]";
    v15 = 2048;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v8 = @"Siri Event";
  v11 = @"Siri Event";
  v12 = @"ClientConnection cancelRequest";
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  sub_10001B2C4(v9);

  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 cancelRequestForDelegate:self reason:a3 error:v6];

  [(ADClientConnection *)self _continuePendingSpeechRequestFromTimestamp:0.0];
}

- (void)updateSpeechOptions:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADClientConnection updateSpeechOptions:]";
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p %@", &v7, 0x20u);
  }

  [(ADClientConnection *)self _updateSpeechRequestOptions:v4];
  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 updateSpeechOptions:v4 forDelegate:self];
}

- (void)startAcousticIDRequestWithOptions:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a3;
  [(ADClientConnection *)self _setRequestCompletion:a5];
  [(ADClientConnection *)self _updateSpeechRequestOptions:v9];
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 startAcousticIDRequestWithDelegate:self withOptions:v9 context:v8];
}

- (void)startSpeechPronunciationRequestWithOptions:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a3;
  [(ADClientConnection *)self _setRequestCompletion:a5];
  [(ADClientConnection *)self _updateSpeechRequestOptions:v9];
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 startSpeechPronunciationRequestWithDelegate:self withOptions:v9 pronunciationContext:v8];
}

- (void)continuePendingSpeechRequestWithId:(unint64_t)a3 fromTimestamp:(double)a4
{
  pendingRequestId = self->_pendingRequestId;
  if (pendingRequestId == a3)
  {

    [(ADClientConnection *)self _continuePendingSpeechRequestFromTimestamp:a4];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[ADClientConnection continuePendingSpeechRequestWithId:fromTimestamp:]";
      v9 = 2048;
      v10 = pendingRequestId;
      v11 = 2048;
      v12 = a3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Ignoring due to id mismatch %lu != %lu", &v7, 0x20u);
    }
  }
}

- (void)startRecordingForPendingSpeechRequestWithOptions:(id)a3 requestId:(unint64_t)a4 sessionUUID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v22 = "[ADClientConnection startRecordingForPendingSpeechRequestWithOptions:requestId:sessionUUID:completion:]";
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %p %@ %lu", buf, 0x2Au);
  }

  v14 = @"Siri Event";
  v19 = @"Siri Event";
  v20 = @"ClientConnection startRecordingForPendingSpeechRequest";
  v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  sub_10001B2C4(v15);

  [AFDictationDiscoverabilitySignalsStreamManager sendSiriRequestStartedEventWithBundleIdentifier:@"com.apple.assistantd" context:0 userInfo:0];
  [(ADClientConnection *)self _continuePendingSpeechRequestFromTimestamp:0.0];
  self->_pendingRequestId = a4;
  self->_pendingRequestTimestamp = -1.0;
  [(ADClientConnection *)self _setRequestCompletion:v12];
  [(ADClientConnection *)self _updateSpeechRequestOptions:v10];
  v16 = +[ADCommandCenter sharedCommandCenter];
  v17 = [v11 UUIDString];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100320AEC;
  v18[3] = &unk_10051C060;
  v18[4] = self;
  [v16 startRecordingForPendingSpeechRequestForDelegate:self withOptions:v10 sessionUUID:v17 completion:v18];
}

- (void)startRequestWithInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[ADClientConnection startRequestWithInfo:completion:]";
    v19 = 2048;
    v20 = self;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100320E58;
  v14[3] = &unk_10051DDE8;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v16 = v7;
  v10 = v7;
  [(ADClientConnection *)self _setRequestCompletion:v14];
  requestInfo = self->_requestInfo;
  self->_requestInfo = v9;
  v12 = v9;

  [(ADClientConnection *)self _updateShouldSpeak];
  v13 = +[ADCommandCenter sharedCommandCenter];
  [v13 startRequest:v12 withDelegate:self];
}

- (void)_setRequestCompletion:(id)a3
{
  v4 = a3;
  requestCompletion = self->_requestCompletion;
  if (requestCompletion)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      requestUUID = self->_requestUUID;
      v18 = 136315650;
      v19 = "[ADClientConnection _setRequestCompletion:]";
      v20 = 2048;
      v21 = self;
      v22 = 2112;
      v23 = requestUUID;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s %p Invoking overlapping request completion with UUID %@...", &v18, 0x20u);
      requestCompletion = self->_requestCompletion;
    }

    v7 = [AFError errorWithCode:20];
    requestCompletion[2](requestCompletion, v7);

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v17 = self->_requestUUID;
      v18 = 136315650;
      v19 = "[ADClientConnection _setRequestCompletion:]";
      v20 = 2048;
      v21 = self;
      v22 = 2112;
      v23 = v17;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %p Invoked overlapping request completion with UUID %@.", &v18, 0x20u);
    }
  }

  v9 = objc_retainBlock(v4);
  v10 = self->_requestCompletion;
  self->_requestCompletion = v9;

  v11 = objc_alloc_init(NSUUID);
  v12 = self->_requestUUID;
  self->_requestUUID = v11;

  requestGroup = self->_requestGroup;
  self->_requestGroup = 0;

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = self->_requestUUID;
    v18 = 136315650;
    v19 = "[ADClientConnection _setRequestCompletion:]";
    v20 = 2048;
    v21 = self;
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s %p Set new request UUID as %@.", &v18, 0x20u);
  }
}

- (void)endSession
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADClientConnection endSession]";
    v12 = 2048;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4 = @"Siri Event";
  v8 = @"Siri Event";
  v9 = @"ClientConnection endSession";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  sub_10001B2C4(v5);

  v6 = [[NSString alloc] initWithFormat:@"Client Connection (pid = %d) Requested End Session", -[NSXPCConnection processIdentifier](self->_xpcConnection, "processIdentifier")];
  [(ADClientConnection *)self _removeAllSpeechCapturingContextsForReason:v6];
  [(ADClientConnection *)self _removeAllAudioSessionAssertionsForReason:v6];
  [(ADClientConnection *)self _setBluetoothDevice:0];
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 endSessionForDelegate:self];
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADClientConnection setConfiguration:]";
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p configuration = %@", &v9, 0x20u);
  }

  v6 = [v4 copy];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v6;

  v8 = +[ADCommandCenter sharedCommandCenter];
  [v8 setConfiguration:v4 forClient:self];
}

- (void)didDismissUI
{
  numberOfPresentedUIs = self->_numberOfPresentedUIs;
  v4 = AFSiriLogContextDaemon;
  self->_numberOfPresentedUIs = numberOfPresentedUIs - 1;
  if (numberOfPresentedUIs < 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = "[ADClientConnection didDismissUI]";
      v14 = 2048;
      v15 = self;
      v16 = 2048;
      v17 = numberOfPresentedUIs;
      v18 = 2048;
      v19 = numberOfPresentedUIs - 1;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %p numberOfPresentedUIs (%ld -> %ld)", &v12, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v12 = 136315906;
      v13 = "[ADClientConnection didDismissUI]";
      v14 = 2048;
      v15 = self;
      v16 = 2048;
      v17 = numberOfPresentedUIs;
      v18 = 2048;
      v19 = numberOfPresentedUIs - 1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %p numberOfPresentedUIs (%ld -> %ld)", &v12, 0x2Au);
    }

    if (numberOfPresentedUIs == 1)
    {
      presentedUIReply = self->_presentedUIReply;
      if (presentedUIReply)
      {
        presentedUIReply[2]();
        v7 = self->_presentedUIReply;
        self->_presentedUIReply = 0;
      }

      presentedUITransaction = self->_presentedUITransaction;
      self->_presentedUITransaction = 0;

      v9 = +[ADCommandCenter sharedCommandCenter];
      v10 = NSStringFromSelector(a2);
      [v9 dismissedAllVisibleAssistantUIForReason:v10];

      v11 = +[ADArbitrationFeedbackManager sharedManager];
      [v11 assistantDismissed];
    }
  }
}

- (void)willPresentUIWithReply:(id)a3
{
  v5 = a3;
  if ((AFIsHorseman() & 1) == 0)
  {
    v6 = +[ADCommandCenter sharedCommandCenter];
    v7 = NSStringFromSelector(a2);
    [v6 showingVisibleAssistantUIForReason:v7 completion:0];
  }

  numberOfPresentedUIs = self->_numberOfPresentedUIs;
  self->_numberOfPresentedUIs = numberOfPresentedUIs + 1;
  v9 = AFSiriLogContextDaemon;
  if (numberOfPresentedUIs < 0)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v21 = "[ADClientConnection willPresentUIWithReply:]";
      v22 = 2048;
      v23 = self;
      v24 = 2048;
      v25 = numberOfPresentedUIs;
      v26 = 2048;
      v27 = numberOfPresentedUIs + 1;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s %p numberOfPresentedUIs (%ld -> %ld)", buf, 0x2Au);
    }

    v5[2](v5);
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v21 = "[ADClientConnection willPresentUIWithReply:]";
      v22 = 2048;
      v23 = self;
      v24 = 2048;
      v25 = numberOfPresentedUIs;
      v26 = 2048;
      v27 = numberOfPresentedUIs + 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %p numberOfPresentedUIs (%ld -> %ld)", buf, 0x2Au);
    }

    if (!numberOfPresentedUIs)
    {
      v10 = os_transaction_create();
      presentedUITransaction = self->_presentedUITransaction;
      self->_presentedUITransaction = v10;
    }

    v12 = objc_retainBlock(self->_presentedUIReply);
    if (v12)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1003217EC;
      v17[3] = &unk_10051C6F0;
      v18 = v5;
      v19 = v12;
      v13 = objc_retainBlock(v17);
      presentedUIReply = self->_presentedUIReply;
      self->_presentedUIReply = v13;

      v15 = v18;
    }

    else
    {
      v16 = objc_retainBlock(v5);
      v15 = self->_presentedUIReply;
      self->_presentedUIReply = v16;
    }
  }
}

- (void)setModesConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setModesConfiguration:v3];
}

- (void)setIsEyesFree:(BOOL)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setIsEyesFree:v3];
}

- (void)setCarDNDActive:(BOOL)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setCarDNDActive:v3];
}

- (void)setLockState:(BOOL)a3 showingLockScreen:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 setLockState:v5 showingLockScreen:v4];
}

- (void)resumeInterruptedAudioPlaybackIfNeeded
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 resumeInterruptedAudioPlaybackIfNeeded];
}

- (void)forceAudioSessionInactiveWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [[NSString alloc] initWithFormat:@"Client Connection (pid = %d) Requested Force Audio Session Inactive", -[NSXPCConnection processIdentifier](self->_xpcConnection, "processIdentifier")];
  [(ADClientConnection *)self _removeAllAudioSessionAssertionsForReason:v7];

  v8 = +[ADCommandCenter sharedCommandCenter];
  [v8 forceAudioSessionInactiveWithOptions:a3 completion:v6];
}

- (void)forceAudioSessionActiveWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ADCommandCenter sharedCommandCenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100321B7C;
  v10[3] = &unk_10051C038;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 forceAudioSessionActiveWithContext:v7 completion:v10];
}

- (void)boostedPreheatWithStyle:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 preheatWithStyle:a3 forOptions:0 completion:v5];
}

- (void)preheatWithStyle:(int64_t)a3 forOptions:(id)a4
{
  v5 = a4;
  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 preheatWithStyle:a3 forOptions:v5 completion:0];
}

- (void)bluetoothDeviceDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ADClientConnection bluetoothDeviceDidInvalidate:]";
    v8 = 2048;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p bluetoothDevice = %@", &v6, 0x20u);
  }
}

- (void)bluetoothDevice:(id)a3 headphoneListeningModeDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  v8 = a3;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136316162;
    v11 = "[ADClientConnection bluetoothDevice:headphoneListeningModeDidChangeFrom:to:]";
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    v16 = 2048;
    v17 = a4;
    v18 = 2048;
    v19 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %p bluetoothDevice = %@, from = %ld, to = %ld", &v10, 0x34u);
  }
}

- (void)bluetoothDevice:(id)a3 headphoneInEarDetectionStateDidChangeFrom:(id)a4 to:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v24 = "[ADClientConnection bluetoothDevice:headphoneInEarDetectionStateDidChangeFrom:to:]";
    v25 = 2048;
    v26 = self;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %p bluetoothDevice = %@, from = %@, to = %@", buf, 0x34u);
  }

  v12 = mach_absolute_time();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322124;
  block[3] = &unk_10051D650;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v21 = v10;
  v22 = v12;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(queue, block);
}

- (void)bluetoothDevice:(id)a3 deviceInfoDidChangeFrom:(id)a4 to:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[ADClientConnection bluetoothDevice:deviceInfoDidChangeFrom:to:]";
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %p bluetoothDevice = %@, from = %@, to = %@", &v12, 0x34u);
  }
}

- (void)audioPlaybackService:(id)a3 didStopRequest:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322A1C;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)audioPlaybackService:(id)a3 didStartRequest:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100322B08;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)audioPlaybackService:(id)a3 willStartRequest:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100322BF4;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)audioSessionController:(id)a3 didReceiveAudioSessionOwnerResetNotification:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClientConnection audioSessionController:didReceiveAudioSessionOwnerResetNotification:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322D68;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)audioSessionController:(id)a3 didReceiveAudioSessionOwnerLostNotification:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClientConnection audioSessionController:didReceiveAudioSessionOwnerLostNotification:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322F14;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)audioSessionController:(id)a3 didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClientConnection audioSessionController:didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032307C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)audioSessionController:(id)a3 didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClientConnection audioSessionController:didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100323228;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)audioSessionController:(id)a3 didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)a4
{
  v4 = a4;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADClientConnection audioSessionController:didReceiveAudioSessionRouteChangeNotificationWithUserInfo:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s userInfo = %@", &v6, 0x16u);
  }
}

- (void)audioSessionController:(id)a3 didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[ADClientConnection audioSessionController:didReceiveAudioSessionInterruptionNotificationWithUserInfo:]";
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  v7 = [v5 objectForKey:AVAudioSessionInterruptionTypeKey];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v5 objectForKey:AVAudioSessionInterruptionOptionKey];
  v10 = [v9 unsignedIntegerValue];

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003234C0;
  v13[3] = &unk_10051D278;
  v13[4] = self;
  v14 = v5;
  v15 = v8;
  v16 = v10;
  v12 = v5;
  dispatch_async(queue, v13);
}

- (void)adShouldSpeakStateDidChange:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003235D0;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)_logShouldSpeakState:(BOOL)a3
{
  v3 = a3;
  v4 = +[AFAnalytics sharedAnalytics];
  v6 = v4;
  if (v3)
  {
    v5 = 1427;
  }

  else
  {
    v5 = 1428;
  }

  [v4 logEventWithType:v5 context:0];
}

- (void)adSpeechRecordingPerformTwoShotPromptWithType:(int64_t)a3 context:(id)a4 completion:(id)a5
{
  v7 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100323728;
  block[3] = &unk_10051BFA8;
  block[4] = self;
  v11 = v7;
  v12 = a3;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)adSpeechRecordingDidDetectStartPointWithContext:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100323B8C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)adSpeechRecognitionDidFail:(id)a3 sessionUUID:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100323F68;
  v8[3] = &unk_10051E010;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)adSpeechRecognitionWillBeginRecognitionUpdateForTask:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003240DC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecognizedPartialResult:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003241D4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecognized:(id)a3 usingSpeechModel:(id)a4 sessionUUID:(id)a5
{
  v6 = a3;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100324350;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)adSpeechRecordingWillStopWithSignpostID:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003244A8;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)adSpeechRecordingDidFail:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = @"Siri Event";
  v13 = @"Siri Event";
  v14 = @"ClientConnection speechRecordingDidFail";
  v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  sub_10001B2C4(v7);

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003248A0;
  block[3] = &unk_10051E010;
  v11 = v5;
  v12 = self;
  v9 = v5;
  dispatch_async(queue, block);
}

- (void)adSpeechRecordingDidCancelWithContext:(id)a3
{
  v4 = @"Siri Event";
  v8 = @"Siri Event";
  v9 = @"ClientConnection speechRecordingDidCancel";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  sub_10001B2C4(v5);

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100324D4C;
  v7[3] = &unk_10051DFE8;
  v7[4] = self;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecordingDidEndWithContext:(id)a3
{
  v4 = @"Siri Event";
  v8 = @"Siri Event";
  v9 = @"speechRecordingDidEnd";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  sub_10001B2C4(v5);

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100325188;
  v7[3] = &unk_10051DFE8;
  v7[4] = self;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecordingDidChangeAVRecordRoute:(id)a3 bluetoothDevice:(id)a4 isDucking:(BOOL)a5 isTwoShot:(BOOL)a6 speechEndHostTime:(unint64_t)a7 context:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1003255E0;
  v21[3] = &unk_10051BF58;
  v21[4] = self;
  v22 = v15;
  v23 = v16;
  v24 = v14;
  v26 = a5;
  v27 = a6;
  v25 = a7;
  v18 = v14;
  v19 = v16;
  v20 = v15;
  dispatch_async(queue, v21);
}

- (void)adSpeechRecordingDidBeginOnAVRecordRoute:(id)a3 audioSessionID:(unsigned int)a4 bluetoothDevice:(id)a5 sessionRequestUUID:(id)a6 dictationOptions:(id)a7 context:(id)a8
{
  v12 = a3;
  v13 = a5;
  v14 = a8;
  kdebug_trace();
  kdebug_trace();
  v15 = @"Siri Event";
  v26 = @"Siri Event";
  v27 = @"ClientConnection speechRecordingDidBegin";
  v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  sub_10001B2C4(v16);

  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100325B04;
  v21[3] = &unk_10051BF30;
  v21[4] = self;
  v22 = v13;
  v23 = v14;
  v24 = v12;
  v25 = a4;
  v18 = v12;
  v19 = v14;
  v20 = v13;
  dispatch_async(queue, v21);
}

- (void)adSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100325F2C;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_registerForRingerStateNotification
{
  if (self->_ringerStateToken == -1)
  {
    out_token = -1;
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003263BC;
    v7[3] = &unk_10051BEE0;
    v7[4] = self;
    v4 = notify_register_dispatch("com.apple.springboard.ringerstate", &out_token, queue, v7);
    if (v4)
    {
      v5 = v4;
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "[ADClientConnection _registerForRingerStateNotification]";
        v11 = 1026;
        v12 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s failed registering for ringer state token %{public}u", buf, 0x12u);
      }
    }

    else
    {
      self->_ringerStateToken = out_token;
    }
  }
}

- (void)_setServerForcedTTS:(BOOL)a3
{
  self->_serverIsForcingTTS = a3;
  [(ADClientConnection *)self _updateShouldSpeak];
  if (self->_serverIsForcingTTS)
  {

    [(ADClientConnection *)self _registerForRingerStateNotification];
  }

  else
  {

    [(ADClientConnection *)self _unregisterForRingerStateNotification];
  }
}

- (void)_setADShouldSpeak:(BOOL)a3
{
  self->_cachedADShouldSpeak = a3;
  self->_hasCachedADShouldSpeak = 1;
  [(ADClientConnection *)self _updateShouldSpeak];
}

- (void)adFailedToLaunchAppWithBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003264DC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adWillProcessAppLaunchWithBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003265C8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adAudioSessionDidBecomeActive:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326694;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)adAudioSessionWillBecomeActive:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326760;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)adRequestWillProcessStartPlayback:(int64_t)a3 intent:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100326888;
  v13[3] = &unk_10051C0D8;
  v15 = v9;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(queue, v13);
}

- (void)adRequestDidHandleFailedStartPlayback:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326A48;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)adServerRequestsTTSStateUnmuted:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326B14;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)adAceConnectionWillRetryOnError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100326BBC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adSetUserActivityInfo:(id)a3 webpageURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100326CD4;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)adAcousticIDRequestDidFinishSuccessfully:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326DA0;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)adMusicWasDetected
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100326E68;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)adAcousticIDRequestWillStart
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100326F20;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)adQuickStopWasHandledWithActions:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326FD8;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)adRequestSetReplayOverridePath:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003270C4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adRequestSetReplayEnabled:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100327190;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)adRequestReplayRecordedViewAt:(unint64_t)a3 with:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032728C;
  block[3] = &unk_10051E128;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)adRequestReplayAllRecordedViews:(unint64_t)a3 with:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100327388;
  block[3] = &unk_10051E128;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)adRequestRequestedDismissAssistantWithReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100327450;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)adRequestRequestedDismissAssistant
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100327518;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)adExtensionRequestFinishedForApplication:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100327620;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)adExtensionRequestWillStartForApplication:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10032770C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adWantsToCacheImage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003277F8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adGetBulletinContext:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003279B0;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adRequestRequestedOpenURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100327C00;
  block[3] = &unk_10051E088;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)adRequestRequestedOpenApplicationWithBundleID:(id)a3 URL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100327E90;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (void)adStartUIRequestWithText:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003280E8;
  block[3] = &unk_10051E088;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)adRequestDidReceiveTimeoutExtensionRequestWithDuration:(double)a3
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "[ADClientConnection adRequestDidReceiveTimeoutExtensionRequestWithDuration:]";
    v10 = 2048;
    v11 = a3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s durationInSeconds: %f", buf, 0x16u);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100328414;
  v7[3] = &unk_10051D770;
  v7[4] = self;
  *&v7[5] = a3;
  dispatch_async(queue, v7);
}

- (void)adRequestEncounteredIntermediateError:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "[ADClientConnection adRequestEncounteredIntermediateError:]";
    v12 = 2114;
    v13 = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Sending intermediate error %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003285A8;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (void)adRequestDidCompleteWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v13 = "[ADClientConnection adRequestDidCompleteWithSuccess:error:]";
    v14 = 2048;
    v15 = self;
    v16 = 1024;
    v17 = v4;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %p success = %d, error = %@", buf, 0x26u);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10032874C;
  v10[3] = &unk_10051E010;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(queue, v10);
}

- (void)_handleRequestCompletedWithUUID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSUUID *)self->_requestUUID isEqual:v6])
  {
    requestCompletion = self->_requestCompletion;
    if (requestCompletion)
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        requestUUID = self->_requestUUID;
        v18 = 136315650;
        v19 = "[ADClientConnection _handleRequestCompletedWithUUID:error:]";
        v20 = 2048;
        v21 = self;
        v22 = 2112;
        v23 = requestUUID;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %p Invoking request completion with UUID %@...", &v18, 0x20u);
        requestCompletion = self->_requestCompletion;
      }

      requestCompletion[2](requestCompletion, v7);
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v12 = self->_requestUUID;
        v18 = 136315650;
        v19 = "[ADClientConnection _handleRequestCompletedWithUUID:error:]";
        v20 = 2048;
        v21 = self;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %p Invoked request completion with UUID %@.", &v18, 0x20u);
      }

      v13 = self->_requestCompletion;
      self->_requestCompletion = 0;
    }

    v14 = self->_requestUUID;
    self->_requestUUID = 0;

    requestGroup = self->_requestGroup;
    self->_requestGroup = 0;
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v17 = self->_requestUUID;
      v18 = 136315906;
      v19 = "[ADClientConnection _handleRequestCompletedWithUUID:error:]";
      v20 = 2048;
      v21 = self;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s %p Ignored invoking request completion because UUID mismatched. (_requestUUID = %@, requestUUID = %@)", &v18, 0x2Au);
    }
  }
}

- (void)adRequestDidReceiveCommand:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100328DA0;
  v19[3] = &unk_10051BE30;
  v19[4] = self;
  v9 = v6;
  v20 = v9;
  v21 = v8;
  v22 = v7;
  v10 = v7;
  v11 = v8;
  v12 = objc_retainBlock(v19);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100328F14;
  block[3] = &unk_10051E088;
  block[4] = self;
  v17 = v9;
  v18 = v12;
  v14 = v12;
  v15 = v9;
  dispatch_async(queue, block);
}

- (void)adRequestDidUpdateResponseMode:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003291F4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adRequestWillReceiveCommand:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003293FC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_removeAllAudioSessionAssertionsForReason:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v35 = "[ADClientConnection _removeAllAudioSessionAssertionsForReason:]";
    v36 = 2048;
    v37 = self;
    v38 = 2112;
    v39 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p reason = %@", buf, 0x20u);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100329778;
  v29[3] = &unk_10051C198;
  v20 = v4;
  v30 = v20;
  v31 = self;
  v6 = [AFAssertionContext newWithBuilder:v29];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_speechCapturingContexts;
  v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v25 + 1) + 8 * i) relinquishAudioSessionAssertionsWithContext:v6];
      }

      v9 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self;
  v13 = self->_audioSessionAssertions;
  v14 = [(NSMutableOrderedSet *)v13 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        v19 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v35 = "[ADClientConnection _removeAllAudioSessionAssertionsForReason:]";
          v36 = 2048;
          v37 = v12;
          v38 = 2112;
          v39 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s %p audioSessionAssertion = %@", buf, 0x20u);
        }

        [v18 relinquishWithContext:v6 options:0];
      }

      v15 = [(NSMutableOrderedSet *)v13 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v15);
  }

  [(NSMutableOrderedSet *)v12->_audioSessionAssertions removeAllObjects];
}

- (void)_addAudioSessionAssertion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADClientConnection _addAudioSessionAssertion:]";
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p audioSessionAssertion = %@", &v9, 0x20u);
  }

  if (v4)
  {
    audioSessionAssertions = self->_audioSessionAssertions;
    if (!audioSessionAssertions)
    {
      v7 = objc_alloc_init(NSMutableOrderedSet);
      v8 = self->_audioSessionAssertions;
      self->_audioSessionAssertions = v7;

      audioSessionAssertions = self->_audioSessionAssertions;
    }

    [(NSMutableOrderedSet *)audioSessionAssertions addObject:v4];
  }
}

- (void)_removeAllSpeechCapturingContextsForReason:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADClientConnection _removeAllSpeechCapturingContextsForReason:]";
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p reason = %@", buf, 0x20u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100329B9C;
  v17[3] = &unk_10051C198;
  v6 = v4;
  v18 = v6;
  v19 = self;
  v7 = [AFAssertionContext newWithBuilder:v17];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_speechCapturingContexts;
  v9 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) relinquishAudioSessionAssertionsWithContext:{v7, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v10);
  }

  [(NSMutableOrderedSet *)self->_speechCapturingContexts removeAllObjects];
}

- (void)_addSpeechCapturingContext:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADClientConnection _addSpeechCapturingContext:]";
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p speechCapturingContext = %@", &v9, 0x20u);
  }

  if (v4)
  {
    speechCapturingContexts = self->_speechCapturingContexts;
    if (!speechCapturingContexts)
    {
      v7 = objc_alloc_init(NSMutableOrderedSet);
      v8 = self->_speechCapturingContexts;
      self->_speechCapturingContexts = v7;

      speechCapturingContexts = self->_speechCapturingContexts;
    }

    [(NSMutableOrderedSet *)speechCapturingContexts addObject:v4];
  }
}

- (void)_setBluetoothDevice:(id)a3
{
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[ADClientConnection _setBluetoothDevice:]";
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %p bluetoothDevice = %@", &v8, 0x20u);
  }

  bluetoothDevice = self->_bluetoothDevice;
  if (bluetoothDevice != v5)
  {
    [(AFBluetoothDevice *)bluetoothDevice removeObserver:self];
    objc_storeStrong(&self->_bluetoothDevice, a3);
    [(AFBluetoothDevice *)self->_bluetoothDevice addObserver:self];
  }
}

- (void)_speechRecordingDidFinish
{
  if ([(AFSpeechRequestOptions *)self->_requestOptions releaseAudioSessionOnRecordingCompletion])
  {
    [(ADClientConnection *)self _removeAllAudioSessionAssertionsForReason:@"Request Options Specified Release Audio Session On Recording Completion"];
    v3 = +[ADCommandCenter sharedCommandCenter];
    [v3 forceAudioSessionInactiveWithOptions:1 completion:0];
  }

  requestOptions = self->_requestOptions;
  self->_requestOptions = 0;
}

- (void)_updateSpeechRequestOptions:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADClientConnection _updateSpeechRequestOptions:]";
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p options = %@", &v9, 0x20u);
  }

  v6 = [v4 copy];
  requestOptions = self->_requestOptions;
  self->_requestOptions = v6;

  v8 = [v4 activationEvent];
  if (v8 && v8 != 5)
  {
    [(ADClientConnection *)self _setRequestOptionsRequireTTS:AFSpeechEventIsVoiceTrigger()];
  }
}

- (id)_serviceDelegateWithErrorHandler:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  if (v4 && !xpcConnection)
  {
    v6 = [AFError errorWithCode:12];
    v4[2](v4, v6);

    xpcConnection = self->_xpcConnection;
  }

  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v4];

  return v7;
}

- (void)connectionDisconnected
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ADClientConnection connectionDisconnected]";
    v18 = 2048;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4 = [[NSString alloc] initWithFormat:@"Client Connection (pid = %d) Disconnected", -[NSXPCConnection processIdentifier](self->_xpcConnection, "processIdentifier")];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032A304;
  block[3] = &unk_10051E010;
  block[4] = self;
  v15 = v4;
  v6 = v4;
  dispatch_async(queue, block);
  v7 = self;
  v8 = +[ADTTSMutingObserver sharedInstance];
  [v8 removeHandsFreeStateObserver:v7];

  v9 = +[ADSpeechManager sharedManager];
  v10 = [v9 audioSessionController];
  [v10 unregisterObserver:v7];

  v11 = +[ADSpeechManager sharedManager];
  v12 = [v11 audioPlaybackService];
  [v12 removeListener:v7];

  v13 = +[ADCommandCenter sharedCommandCenter];
  [v13 setConfiguration:0 forClient:v7];
}

- (void)dealloc
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[ADClientConnection dealloc]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4 = [[NSString alloc] initWithFormat:@"Client Connection (pid = %d) Deallocated", -[NSXPCConnection processIdentifier](self->_xpcConnection, "processIdentifier")];
  [(ADClientConnection *)self _unregisterForRingerStateNotification];
  [(ADClientConnection *)self _removeAllSpeechCapturingContextsForReason:v4];
  [(ADClientConnection *)self _removeAllAudioSessionAssertionsForReason:v4];
  [(ADClientConnection *)self _continuePendingSpeechRequestFromTimestamp:0.0];

  v5.receiver = self;
  v5.super_class = ADClientConnection;
  [(ADClientConnection *)&v5 dealloc];
}

- (ADClientConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = ADClientConnection;
  v6 = [(ADClientConnection *)&v22 init];
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[ADClientConnection initWithXPCConnection:]";
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    objc_storeStrong(&v6->_xpcConnection, a3);
    v6->_isConnected = 1;
    v8 = [(NSXPCConnection *)v6->_xpcConnection _queue];
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = v6;
    v11 = +[ADTTSMutingObserver sharedInstance];
    [v11 addHandsFreeStateObserver:v10];

    v10->_ringerStateToken = -1;
    v12 = +[ADSpeechManager sharedManager];
    v13 = [v12 audioSessionController];
    [v13 registerObserver:v10];

    v14 = +[ADSpeechManager sharedManager];
    v15 = [v14 audioPlaybackService];
    [v15 addListener:v10];

    [(ADClientConnection *)v10 _logShouldSpeakState:[(ADClientConnection *)v10 _shouldSpeak]];
    if (AFIsInternalInstall())
    {
      v16 = [AFWatchdogTimer alloc];
      v17 = v6->_queue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10032A77C;
      v21[3] = &unk_10051E200;
      v21[4] = 0x4082C00000000000;
      v18 = [v16 initWithTimeoutInterval:v17 onQueue:v21 timeoutHandler:600.0];
      longLivedConnectionABCTimer = v10->_longLivedConnectionABCTimer;
      v10->_longLivedConnectionABCTimer = v18;

      [(AFWatchdogTimer *)v10->_longLivedConnectionABCTimer start];
    }
  }

  return v6;
}

@end