@interface ADClientConnection
- ($115C4C562B26FF47E01F9F4EA65B5887)adClientConnectionAuditToken;
- (ADClientConnection)initWithXPCConnection:(id)connection;
- (BOOL)adTextToSpeechIsMuted;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_serviceDelegateWithErrorHandler:(id)handler;
- (void)_addAudioSessionAssertion:(id)assertion;
- (void)_addSpeechCapturingContext:(id)context;
- (void)_broadcastCommandDictionary:(id)dictionary;
- (void)_clearAssistantInfoForAccountIdentifier:(id)identifier;
- (void)_computeShouldSpeak;
- (void)_continuePendingSpeechRequestFromTimestamp:(double)timestamp;
- (void)_fetchAppContextForApplicationInfo:(id)info reply:(id)reply;
- (void)_handleRequestCompletedWithUUID:(id)d error:(id)error;
- (void)_listInstalledServicesWithReply:(id)reply;
- (void)_logShouldSpeakState:(BOOL)state;
- (void)_performCommandDictionary:(id)dictionary forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)_performTaskCommandDictionary:(id)dictionary forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)_pingServiceForIdentifier:(id)identifier reply:(id)reply;
- (void)_refreshAssistantValidation;
- (void)_registerForRingerStateNotification;
- (void)_removeAllAudioSessionAssertionsForReason:(id)reason;
- (void)_removeAllSpeechCapturingContextsForReason:(id)reason;
- (void)_requestBarrierIfNecessaryWithReply:(id)reply;
- (void)_requestBarrierWithReply:(id)reply;
- (void)_setADShouldSpeak:(BOOL)speak;
- (void)_setBluetoothDevice:(id)device;
- (void)_setRequestCompletion:(id)completion;
- (void)_setServerForcedTTS:(BOOL)s;
- (void)_speechRecordingDidFinish;
- (void)_startSpeechWithURL:(id)l isNarrowBand:(BOOL)band;
- (void)_unregisterForRingerStateNotification;
- (void)_updateShouldSpeak;
- (void)_updateSpeechRequestOptions:(id)options;
- (void)adAceConnectionWillRetryOnError:(id)error;
- (void)adAcousticIDRequestDidFinishSuccessfully:(BOOL)successfully;
- (void)adAcousticIDRequestWillStart;
- (void)adAudioSessionDidBecomeActive:(BOOL)active;
- (void)adAudioSessionWillBecomeActive:(BOOL)active;
- (void)adExtensionRequestFinishedForApplication:(id)application error:(id)error;
- (void)adExtensionRequestWillStartForApplication:(id)application;
- (void)adFailedToLaunchAppWithBundleIdentifier:(id)identifier;
- (void)adGetBulletinContext:(id)context;
- (void)adInvalidateCurrentUserActivity;
- (void)adMusicWasDetected;
- (void)adNetworkDidBecomeActive;
- (void)adQuickStopWasHandledWithActions:(unint64_t)actions;
- (void)adRequestDidCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)adRequestDidHandleFailedStartPlayback:(int64_t)playback;
- (void)adRequestDidReceiveCommand:(id)command reply:(id)reply;
- (void)adRequestDidReceiveTimeoutExtensionRequestWithDuration:(double)duration;
- (void)adRequestDidUpdateResponseMode:(id)mode;
- (void)adRequestEncounteredIntermediateError:(id)error;
- (void)adRequestReplayAllRecordedViews:(unint64_t)views with:(id)with;
- (void)adRequestReplayRecordedViewAt:(unint64_t)at with:(id)with;
- (void)adRequestRequestedDismissAssistant;
- (void)adRequestRequestedDismissAssistantWithReason:(int64_t)reason;
- (void)adRequestRequestedOpenApplicationWithBundleID:(id)d URL:(id)l completion:(id)completion;
- (void)adRequestRequestedOpenURL:(id)l completion:(id)completion;
- (void)adRequestSetReplayEnabled:(BOOL)enabled;
- (void)adRequestSetReplayOverridePath:(id)path;
- (void)adRequestWillProcessStartPlayback:(int64_t)playback intent:(id)intent completion:(id)completion;
- (void)adRequestWillReceiveCommand:(id)command;
- (void)adServerRequestsTTSStateUnmuted:(BOOL)unmuted;
- (void)adSetUserActivityInfo:(id)info webpageURL:(id)l;
- (void)adShouldSpeakStateDidChange:(BOOL)change;
- (void)adSpeechRecognitionDidFail:(id)fail sessionUUID:(id)d;
- (void)adSpeechRecognitionWillBeginRecognitionUpdateForTask:(id)task;
- (void)adSpeechRecognized:(id)recognized usingSpeechModel:(id)model sessionUUID:(id)d;
- (void)adSpeechRecognizedPartialResult:(id)result;
- (void)adSpeechRecordingDidBeginOnAVRecordRoute:(id)route audioSessionID:(unsigned int)d bluetoothDevice:(id)device sessionRequestUUID:(id)iD dictationOptions:(id)options context:(id)context;
- (void)adSpeechRecordingDidCancelWithContext:(id)context;
- (void)adSpeechRecordingDidChangeAVRecordRoute:(id)route bluetoothDevice:(id)device isDucking:(BOOL)ducking isTwoShot:(BOOL)shot speechEndHostTime:(unint64_t)time context:(id)context;
- (void)adSpeechRecordingDidDetectStartPointWithContext:(id)context;
- (void)adSpeechRecordingDidEndWithContext:(id)context;
- (void)adSpeechRecordingDidFail:(id)fail context:(id)context;
- (void)adSpeechRecordingPerformTwoShotPromptWithType:(int64_t)type context:(id)context completion:(id)completion;
- (void)adSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)wrapper context:(id)context;
- (void)adSpeechRecordingWillStopWithSignpostID:(unint64_t)d;
- (void)adStartUIRequestWithText:(id)text completion:(id)completion;
- (void)adWantsToCacheImage:(id)image;
- (void)adWillProcessAppLaunchWithBundleIdentifier:(id)identifier;
- (void)adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)winner;
- (void)audioPlaybackService:(id)service didStartRequest:(id)request;
- (void)audioPlaybackService:(id)service didStopRequest:(id)request error:(id)error;
- (void)audioPlaybackService:(id)service willStartRequest:(id)request;
- (void)audioSessionController:(id)controller didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info;
- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info;
- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info;
- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerLostNotification:(id)notification;
- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerResetNotification:(id)notification;
- (void)audioSessionController:(id)controller didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info;
- (void)bluetoothDevice:(id)device deviceInfoDidChangeFrom:(id)from to:(id)to;
- (void)bluetoothDevice:(id)device headphoneInEarDetectionStateDidChangeFrom:(id)from to:(id)to;
- (void)bluetoothDevice:(id)device headphoneListeningModeDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)bluetoothDeviceDidInvalidate:(id)invalidate;
- (void)boostedPreheatWithStyle:(int64_t)style completion:(id)completion;
- (void)cancelRequestForReason:(int64_t)reason withError:(id)error;
- (void)cancelSpeech;
- (void)clearContext;
- (void)connectionDisconnected;
- (void)continuePendingSpeechRequestWithId:(unint64_t)id fromTimestamp:(double)timestamp;
- (void)dealloc;
- (void)didDismissUI;
- (void)emitHomeMetricInvocationEvent;
- (void)endSession;
- (void)endWaitingForEmergencyIfNeededForCommand:(id)command;
- (void)fetchAppicationContextForApplicationInfo:(id)info supplementalContext:(id)context refID:(id)d;
- (void)forceAudioSessionActiveWithContext:(id)context completion:(id)completion;
- (void)forceAudioSessionInactiveWithOptions:(unint64_t)options completion:(id)completion;
- (void)getDeferredObjectsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)getRemoteClockTimerSnapshotWithCompletion:(id)completion;
- (void)getSerializedCachedObjectsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)performGenericAceCommand:(id)command interruptOutstandingRequest:(BOOL)request reply:(id)reply;
- (void)preheatWithStyle:(int64_t)style forOptions:(id)options;
- (void)prepareForPhoneCall;
- (void)recordCancellationMetrics;
- (void)recordFailureMetricsForError:(id)error;
- (void)reportIssueForError:(id)error type:(int64_t)type context:(id)context;
- (void)reportIssueForError:(id)error type:(int64_t)type subtype:(id)subtype context:(id)context;
- (void)reportIssueForType:(id)type subtype:(id)subtype context:(id)context;
- (void)requestShouldSpeakStateWithReply:(id)reply;
- (void)requestStateUpdateWithReply:(id)reply;
- (void)resumeInterruptedAudioPlaybackIfNeeded;
- (void)rollbackClearContext;
- (void)rollbackRequest;
- (void)setAlertContextDirty;
- (void)setApplicationContext:(id)context;
- (void)setCarDNDActive:(BOOL)active;
- (void)setConfiguration:(id)configuration;
- (void)setIsEyesFree:(BOOL)free;
- (void)setLockState:(BOOL)state showingLockScreen:(BOOL)screen;
- (void)setModesConfiguration:(id)configuration;
- (void)setOverriddenApplicationContext:(id)context withContext:(id)withContext;
- (void)startAcousticIDRequestWithOptions:(id)options context:(id)context completion:(id)completion;
- (void)startAudioPlaybackRequest:(id)request options:(unint64_t)options reply:(id)reply;
- (void)startRecordingForPendingSpeechRequestWithOptions:(id)options requestId:(unint64_t)id sessionUUID:(id)d completion:(id)completion;
- (void)startRequestWithInfo:(id)info completion:(id)completion;
- (void)startSpeechPronunciationRequestWithOptions:(id)options context:(id)context completion:(id)completion;
- (void)stopAllAudioPlaybackRequests:(BOOL)requests;
- (void)stopAudioPlaybackRequest:(id)request immediately:(BOOL)immediately;
- (void)stopSpeechWithOptions:(id)options;
- (void)telephonyRequestCompleted;
- (void)updateSpeechOptions:(id)options;
- (void)updateSpeechSynthesisRecord:(id)record;
- (void)willPresentUIWithReply:(id)reply;
- (void)willSetApplicationContextWithRefId:(id)id;
@end

@implementation ADClientConnection

- (void)_computeShouldSpeak
{
  if (self->_hasCachedADShouldSpeak)
  {
    if (self->_cachedADShouldSpeak)
    {
LABEL_8:
      isDeviceInCarDNDMode = 1;
      goto LABEL_9;
    }
  }

  else
  {
    isDeviceInCarDNDMode = 1;
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

  isDeviceInCarDNDMode = [(AFClientConfiguration *)self->_clientConfiguration isDeviceInCarDNDMode];
LABEL_9:
  self->_combinedShouldSpeakState = isDeviceInCarDNDMode;
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
    isDeviceInCarDNDMode2 = [(AFClientConfiguration *)self->_clientConfiguration isDeviceInCarDNDMode];
    options = [(AFRequestInfo *)self->_requestInfo options];
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
    v25 = isDeviceInCarDNDMode2;
    v26 = 2048;
    v27 = options;
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
    selfCopy = self;
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Sending should speak update: %@ to current client %@", v8, 0x20u);
    }

    _serviceDelegate = [(ADClientConnection *)self _serviceDelegate];
    [_serviceDelegate shouldSpeakChanged:self->_combinedShouldSpeakState];
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

- (void)endWaitingForEmergencyIfNeededForCommand:(id)command
{
  commandCopy = command;
  if (!commandCopy)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ADClientConnection.m" lineNumber:1700 description:{@"Invalid parameter not satisfying: %@", @"command"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = commandCopy;
    if (!self)
    {
      goto LABEL_15;
    }

    v6 = v5;
    bundleIdentifier = [v5 bundleIdentifier];
    v8 = [bundleIdentifier isEqualToString:@"com.apple.siri.PhoneCallFlowDelegatePlugin"];

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
    bundleIdentifier2 = [v6 bundleIdentifier];
    *buf = 136315394;
    v21 = "[ADClientConnection didReceiveSiriKitPluginSignal:]";
    v22 = 2112;
    v23 = bundleIdentifier2;
    v12 = "%s Ending waiting for emergency after receiving SiriKit Plugin Signal ACE command with bundle identifier %@";
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = commandCopy;
  if (self)
  {
    v14 = v13;
    domain = [v13 domain];
    v16 = [domain isEqualToString:SAAceDomainSignalDomainPHONEValue];

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
      bundleIdentifier2 = [v14 domain];
      *buf = 136315394;
      v21 = "[ADClientConnection didReceiveDomainSignal:]";
      v22 = 2112;
      v23 = bundleIdentifier2;
      v12 = "%s Ending waiting for emergency after receiving Domain Signal ACE command with domain %@";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v12, buf, 0x16u);

      goto LABEL_14;
    }
  }

LABEL_15:

LABEL_16:
}

- (void)_continuePendingSpeechRequestFromTimestamp:(double)timestamp
{
  self->_pendingRequestTimestamp = timestamp;
  pendingSpeechRequestContinue = self->_pendingSpeechRequestContinue;
  if (pendingSpeechRequestContinue)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[ADClientConnection _continuePendingSpeechRequestFromTimestamp:]";
      v10 = 2048;
      timestampCopy = timestamp;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s timestamp = %f", &v8, 0x16u);
      pendingSpeechRequestContinue = self->_pendingSpeechRequestContinue;
    }

    pendingSpeechRequestContinue[2](pendingSpeechRequestContinue, timestamp);
    v7 = self->_pendingSpeechRequestContinue;
    self->_pendingSpeechRequestContinue = 0;
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADClientConnection listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v7 = AFPendingSpeechRequestServiceInterface();
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

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

- (void)_startSpeechWithURL:(id)l isNarrowBand:(BOOL)band
{
  bandCopy = band;
  lCopy = l;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 startSpeechRequestWithURL:lCopy isNarrowBand:bandCopy withDelegate:self];
}

- (void)_requestBarrierIfNecessaryWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 requestBarrierIfNecessary:replyCopy];
}

- (void)_requestBarrierWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 requestBarrier:replyCopy];
}

- (void)_clearAssistantInfoForAccountIdentifier:(id)identifier
{
  v3 = [ADAccount accountForIdentifier:identifier];
  [v3 clearAssistantData];
  [v3 setServerCertificateData:0];
  [v3 setValidationData:0];
  [v3 save];
}

- (void)_fetchAppContextForApplicationInfo:(id)info reply:(id)reply
{
  replyCopy = reply;
  infoCopy = info;
  v7 = +[ADCommandCenter sharedCommandCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10031E32C;
  v9[3] = &unk_10051CD10;
  v10 = replyCopy;
  v8 = replyCopy;
  [v7 fetchContextForApplicationInfo:infoCopy completion:v9];
}

- (void)_broadcastCommandDictionary:(id)dictionary
{
  v6 = [AceObject aceObjectWithDictionary:dictionary];
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

- (void)_performTaskCommandDictionary:(id)dictionary forBundleIdentifier:(id)identifier reply:(id)reply
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  replyCopy = reply;
  v10 = +[ADCommandCenter sharedQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031E5C4;
  block[3] = &unk_10051E088;
  v15 = dictionaryCopy;
  v16 = identifierCopy;
  v17 = replyCopy;
  v11 = replyCopy;
  v12 = identifierCopy;
  v13 = dictionaryCopy;
  dispatch_async(v10, block);
}

- (void)_performCommandDictionary:(id)dictionary forBundleIdentifier:(id)identifier reply:(id)reply
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  replyCopy = reply;
  v11 = +[ADCommandCenter sharedQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10031E9E0;
  v15[3] = &unk_10051C0D8;
  v16 = dictionaryCopy;
  v17 = identifierCopy;
  v18 = replyCopy;
  v19 = a2;
  v12 = replyCopy;
  v13 = identifierCopy;
  v14 = dictionaryCopy;
  dispatch_async(v11, v15);
}

- (void)_pingServiceForIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  v7 = +[AFInstanceContext currentContext];
  v8 = [[ADServiceManager alloc] initWithInstanceContext:v7];
  v9 = [(ADServiceManager *)v8 serviceForIdentifier:identifierCopy];

  if (v9)
  {
    v10 = objc_alloc_init(SAPing);
    v11 = SiriCoreUUIDStringCreate();
    [v10 setAceId:v11];
    groupIdentifier = [v10 groupIdentifier];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10031EEAC;
    v13[3] = &unk_10051CD88;
    v14 = replyCopy;
    [v9 handleCommand:v10 forDomain:groupIdentifier executionContext:0 reply:v13];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0);
  }
}

- (void)_listInstalledServicesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 _listInstalledServicesWithCompletion:replyCopy];
}

- (void)adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)winner
{
  winnerCopy = winner;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 adviseSessionArbiterToContinueWithPreviousWinner:winnerCopy];
}

- (void)reportIssueForType:(id)type subtype:(id)subtype context:(id)context
{
  typeCopy = type;
  subtypeCopy = subtype;
  contextCopy = context;
  v11 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[ADClientConnection reportIssueForType:subtype:context:]";
    v16 = 2112;
    v17 = typeCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Telling ABC about %@", &v14, 0x16u);
  }

  v12 = +[SiriCoreSymptomsReporter sharedInstance];
  processIdentifier = [(NSXPCConnection *)self->_xpcConnection processIdentifier];
  [v12 reportIssueForType:typeCopy subType:subtypeCopy context:contextCopy processIdentifier:processIdentifier walkboutStatus:byte_100590548];
}

- (void)reportIssueForError:(id)error type:(int64_t)type subtype:(id)subtype context:(id)context
{
  contextCopy = context;
  subtypeCopy = subtype;
  errorCopy = error;
  v16 = +[SiriCoreSymptomsReporter sharedInstance];
  processIdentifier = [(NSXPCConnection *)self->_xpcConnection processIdentifier];
  v14 = byte_100590548;
  v15 = sub_100097574();
  [v16 reportIssueForError:errorCopy type:type subtype:subtypeCopy context:contextCopy processIdentifier:processIdentifier walkboutStatus:v14 triggerForIDSIdentifiers:v15];
}

- (void)reportIssueForError:(id)error type:(int64_t)type context:(id)context
{
  contextCopy = context;
  errorCopy = error;
  v13 = +[SiriCoreSymptomsReporter sharedInstance];
  processIdentifier = [(NSXPCConnection *)self->_xpcConnection processIdentifier];
  v11 = byte_100590548;
  v12 = sub_100097574();
  [v13 reportIssueForError:errorCopy type:type context:contextCopy processIdentifier:processIdentifier walkboutStatus:v11 triggerForIDSIdentifiers:v12];
}

- (void)updateSpeechSynthesisRecord:(id)record
{
  recordCopy = record;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 updateSpeechSynthesisRecord:recordCopy];
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

- (void)startAudioPlaybackRequest:(id)request options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  v10 = +[ADSpeechManager sharedManager];
  audioPlaybackService = [v10 audioPlaybackService];
  [audioPlaybackService startRequest:requestCopy options:options completion:replyCopy];
}

- (void)getRemoteClockTimerSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v4 = +[ADClockService sharedService];
    remoteTimerManager = [v4 remoteTimerManager];

    if (remoteTimerManager)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10031F594;
      v7[3] = &unk_10051CF08;
      v8 = completionCopy;
      [remoteTimerManager getSnapshotsByDeviceIdentifierWithCompletion:v7];
    }

    else
    {
      v6 = [AFError errorWithCode:13];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }
}

- (void)getSerializedCachedObjectsWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = objc_alloc_init(NSMutableSet);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = identifiersCopy;
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
    v17 = completionCopy;
    [INSerializedCacheItem serializeCacheableObjects:v7 completion:v16];
  }
}

- (void)getDeferredObjectsWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 getDeferredObjectsWithIdentifiers:identifiersCopy completion:completionCopy];
}

- (void)recordCancellationMetrics
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 _metrics_recordCancellationMetrics];
}

- (void)recordFailureMetricsForError:(id)error
{
  errorCopy = error;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 _metrics_recordFailureMetricsForError:errorCopy];
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

- (void)setOverriddenApplicationContext:(id)context withContext:(id)withContext
{
  withContextCopy = withContext;
  contextCopy = context;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 setOverriddenApplicationContext:contextCopy withContext:withContextCopy];
}

- (void)fetchAppicationContextForApplicationInfo:(id)info supplementalContext:(id)context refID:(id)d
{
  dCopy = d;
  contextCopy = context;
  infoCopy = info;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 fetchAppicationContextForApplicationInfo:infoCopy supplementalContext:contextCopy refID:dCopy];
}

- (void)setApplicationContext:(id)context
{
  contextCopy = context;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setApplicationContext:contextCopy];
}

- (void)willSetApplicationContextWithRefId:(id)id
{
  idCopy = id;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 willSetApplicationContextWithRefId:idCopy];
}

- (void)rollbackClearContext
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADClientConnection rollbackClearContext]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
  }

  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 rollbackClearContext];
}

- (void)performGenericAceCommand:(id)command interruptOutstandingRequest:(BOOL)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  commandCopy = command;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 handleGenericAceCommand:commandCopy withDelegate:self interruptOutstandingRequest:requestCopy targetReplyQueue:self->_queue reply:replyCopy];
}

- (void)requestStateUpdateWithReply:(id)reply
{
  replyCopy = reply;
  LOBYTE(self) = [(ADClientConnection *)self _shouldSpeak];
  v5 = +[ADSpeechManager sharedManager];
  audioSessionController = [v5 audioSessionController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003200BC;
  v8[3] = &unk_10051C088;
  v9 = replyCopy;
  selfCopy = self;
  v7 = replyCopy;
  [audioSessionController getAudioSessionIDWithCompletion:v8];
}

- (void)requestShouldSpeakStateWithReply:(id)reply
{
  if (reply)
  {
    replyCopy = reply;
    replyCopy[2](replyCopy, [(ADClientConnection *)self _shouldSpeak]);
  }
}

- (void)stopSpeechWithOptions:(id)options
{
  optionsCopy = options;
  kdebug_trace();
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADClientConnection stopSpeechWithOptions:]";
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p %@", &v7, 0x20u);
  }

  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 stopSpeechWithOptions:optionsCopy forDelegate:self];
}

- (void)cancelSpeech
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADClientConnection cancelSpeech]";
    v7 = 2048;
    selfCopy = self;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
  }

  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 rollbackRequestForDelegate:self];
}

- (void)cancelRequestForReason:(int64_t)reason withError:(id)error
{
  errorCopy = error;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[ADClientConnection cancelRequestForReason:withError:]";
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v8 = @"Siri Event";
  v11 = @"Siri Event";
  v12 = @"ClientConnection cancelRequest";
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  sub_10001B2C4(v9);

  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 cancelRequestForDelegate:self reason:reason error:errorCopy];

  [(ADClientConnection *)self _continuePendingSpeechRequestFromTimestamp:0.0];
}

- (void)updateSpeechOptions:(id)options
{
  optionsCopy = options;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADClientConnection updateSpeechOptions:]";
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p %@", &v7, 0x20u);
  }

  [(ADClientConnection *)self _updateSpeechRequestOptions:optionsCopy];
  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 updateSpeechOptions:optionsCopy forDelegate:self];
}

- (void)startAcousticIDRequestWithOptions:(id)options context:(id)context completion:(id)completion
{
  contextCopy = context;
  optionsCopy = options;
  [(ADClientConnection *)self _setRequestCompletion:completion];
  [(ADClientConnection *)self _updateSpeechRequestOptions:optionsCopy];
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 startAcousticIDRequestWithDelegate:self withOptions:optionsCopy context:contextCopy];
}

- (void)startSpeechPronunciationRequestWithOptions:(id)options context:(id)context completion:(id)completion
{
  contextCopy = context;
  optionsCopy = options;
  [(ADClientConnection *)self _setRequestCompletion:completion];
  [(ADClientConnection *)self _updateSpeechRequestOptions:optionsCopy];
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 startSpeechPronunciationRequestWithDelegate:self withOptions:optionsCopy pronunciationContext:contextCopy];
}

- (void)continuePendingSpeechRequestWithId:(unint64_t)id fromTimestamp:(double)timestamp
{
  pendingRequestId = self->_pendingRequestId;
  if (pendingRequestId == id)
  {

    [(ADClientConnection *)self _continuePendingSpeechRequestFromTimestamp:timestamp];
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
      idCopy = id;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Ignoring due to id mismatch %lu != %lu", &v7, 0x20u);
    }
  }
}

- (void)startRecordingForPendingSpeechRequestWithOptions:(id)options requestId:(unint64_t)id sessionUUID:(id)d completion:(id)completion
{
  optionsCopy = options;
  dCopy = d;
  completionCopy = completion;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v22 = "[ADClientConnection startRecordingForPendingSpeechRequestWithOptions:requestId:sessionUUID:completion:]";
    v23 = 2048;
    selfCopy = self;
    v25 = 2112;
    v26 = optionsCopy;
    v27 = 2048;
    idCopy = id;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %p %@ %lu", buf, 0x2Au);
  }

  v14 = @"Siri Event";
  v19 = @"Siri Event";
  v20 = @"ClientConnection startRecordingForPendingSpeechRequest";
  v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  sub_10001B2C4(v15);

  [AFDictationDiscoverabilitySignalsStreamManager sendSiriRequestStartedEventWithBundleIdentifier:@"com.apple.assistantd" context:0 userInfo:0];
  [(ADClientConnection *)self _continuePendingSpeechRequestFromTimestamp:0.0];
  self->_pendingRequestId = id;
  self->_pendingRequestTimestamp = -1.0;
  [(ADClientConnection *)self _setRequestCompletion:completionCopy];
  [(ADClientConnection *)self _updateSpeechRequestOptions:optionsCopy];
  v16 = +[ADCommandCenter sharedCommandCenter];
  uUIDString = [dCopy UUIDString];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100320AEC;
  v18[3] = &unk_10051C060;
  v18[4] = self;
  [v16 startRecordingForPendingSpeechRequestForDelegate:self withOptions:optionsCopy sessionUUID:uUIDString completion:v18];
}

- (void)startRequestWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[ADClientConnection startRequestWithInfo:completion:]";
    v19 = 2048;
    selfCopy = self;
    v21 = 2112;
    v22 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100320E58;
  v14[3] = &unk_10051DDE8;
  v14[4] = self;
  v9 = infoCopy;
  v15 = v9;
  v16 = completionCopy;
  v10 = completionCopy;
  [(ADClientConnection *)self _setRequestCompletion:v14];
  requestInfo = self->_requestInfo;
  self->_requestInfo = v9;
  v12 = v9;

  [(ADClientConnection *)self _updateShouldSpeak];
  v13 = +[ADCommandCenter sharedCommandCenter];
  [v13 startRequest:v12 withDelegate:self];
}

- (void)_setRequestCompletion:(id)completion
{
  completionCopy = completion;
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
      selfCopy3 = self;
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
      selfCopy3 = self;
      v22 = 2112;
      v23 = v17;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %p Invoked overlapping request completion with UUID %@.", &v18, 0x20u);
    }
  }

  v9 = objc_retainBlock(completionCopy);
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
    selfCopy3 = self;
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
    selfCopy = self;
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

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADClientConnection setConfiguration:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p configuration = %@", &v9, 0x20u);
  }

  v6 = [configurationCopy copy];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v6;

  v8 = +[ADCommandCenter sharedCommandCenter];
  [v8 setConfiguration:configurationCopy forClient:self];
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
      selfCopy2 = self;
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
      selfCopy2 = self;
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

- (void)willPresentUIWithReply:(id)reply
{
  replyCopy = reply;
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
      selfCopy2 = self;
      v24 = 2048;
      v25 = numberOfPresentedUIs;
      v26 = 2048;
      v27 = numberOfPresentedUIs + 1;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s %p numberOfPresentedUIs (%ld -> %ld)", buf, 0x2Au);
    }

    replyCopy[2](replyCopy);
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v21 = "[ADClientConnection willPresentUIWithReply:]";
      v22 = 2048;
      selfCopy2 = self;
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
      v18 = replyCopy;
      v19 = v12;
      v13 = objc_retainBlock(v17);
      presentedUIReply = self->_presentedUIReply;
      self->_presentedUIReply = v13;

      v15 = v18;
    }

    else
    {
      v16 = objc_retainBlock(replyCopy);
      v15 = self->_presentedUIReply;
      self->_presentedUIReply = v16;
    }
  }
}

- (void)setModesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setModesConfiguration:configurationCopy];
}

- (void)setIsEyesFree:(BOOL)free
{
  freeCopy = free;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setIsEyesFree:freeCopy];
}

- (void)setCarDNDActive:(BOOL)active
{
  activeCopy = active;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 setCarDNDActive:activeCopy];
}

- (void)setLockState:(BOOL)state showingLockScreen:(BOOL)screen
{
  screenCopy = screen;
  stateCopy = state;
  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 setLockState:stateCopy showingLockScreen:screenCopy];
}

- (void)resumeInterruptedAudioPlaybackIfNeeded
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 resumeInterruptedAudioPlaybackIfNeeded];
}

- (void)forceAudioSessionInactiveWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v7 = [[NSString alloc] initWithFormat:@"Client Connection (pid = %d) Requested Force Audio Session Inactive", -[NSXPCConnection processIdentifier](self->_xpcConnection, "processIdentifier")];
  [(ADClientConnection *)self _removeAllAudioSessionAssertionsForReason:v7];

  v8 = +[ADCommandCenter sharedCommandCenter];
  [v8 forceAudioSessionInactiveWithOptions:options completion:completionCopy];
}

- (void)forceAudioSessionActiveWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v8 = +[ADCommandCenter sharedCommandCenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100321B7C;
  v10[3] = &unk_10051C038;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 forceAudioSessionActiveWithContext:contextCopy completion:v10];
}

- (void)boostedPreheatWithStyle:(int64_t)style completion:(id)completion
{
  completionCopy = completion;
  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 preheatWithStyle:style forOptions:0 completion:completionCopy];
}

- (void)preheatWithStyle:(int64_t)style forOptions:(id)options
{
  optionsCopy = options;
  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 preheatWithStyle:style forOptions:optionsCopy completion:0];
}

- (void)bluetoothDeviceDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ADClientConnection bluetoothDeviceDidInvalidate:]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = invalidateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p bluetoothDevice = %@", &v6, 0x20u);
  }
}

- (void)bluetoothDevice:(id)device headphoneListeningModeDidChangeFrom:(int64_t)from to:(int64_t)to
{
  deviceCopy = device;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136316162;
    v11 = "[ADClientConnection bluetoothDevice:headphoneListeningModeDidChangeFrom:to:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = deviceCopy;
    v16 = 2048;
    fromCopy = from;
    v18 = 2048;
    toCopy = to;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %p bluetoothDevice = %@, from = %ld, to = %ld", &v10, 0x34u);
  }
}

- (void)bluetoothDevice:(id)device headphoneInEarDetectionStateDidChangeFrom:(id)from to:(id)to
{
  deviceCopy = device;
  fromCopy = from;
  toCopy = to;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v24 = "[ADClientConnection bluetoothDevice:headphoneInEarDetectionStateDidChangeFrom:to:]";
    v25 = 2048;
    selfCopy = self;
    v27 = 2112;
    v28 = deviceCopy;
    v29 = 2112;
    v30 = fromCopy;
    v31 = 2112;
    v32 = toCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %p bluetoothDevice = %@, from = %@, to = %@", buf, 0x34u);
  }

  v12 = mach_absolute_time();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322124;
  block[3] = &unk_10051D650;
  v18 = deviceCopy;
  selfCopy2 = self;
  v20 = fromCopy;
  v21 = toCopy;
  v22 = v12;
  v14 = toCopy;
  v15 = fromCopy;
  v16 = deviceCopy;
  dispatch_async(queue, block);
}

- (void)bluetoothDevice:(id)device deviceInfoDidChangeFrom:(id)from to:(id)to
{
  deviceCopy = device;
  fromCopy = from;
  toCopy = to;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[ADClientConnection bluetoothDevice:deviceInfoDidChangeFrom:to:]";
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    v17 = deviceCopy;
    v18 = 2112;
    v19 = fromCopy;
    v20 = 2112;
    v21 = toCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %p bluetoothDevice = %@, from = %@, to = %@", &v12, 0x34u);
  }
}

- (void)audioPlaybackService:(id)service didStopRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322A1C;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = requestCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = requestCopy;
  dispatch_async(queue, block);
}

- (void)audioPlaybackService:(id)service didStartRequest:(id)request
{
  requestCopy = request;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100322B08;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  dispatch_async(queue, v8);
}

- (void)audioPlaybackService:(id)service willStartRequest:(id)request
{
  requestCopy = request;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100322BF4;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  dispatch_async(queue, v8);
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerResetNotification:(id)notification
{
  notificationCopy = notification;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClientConnection audioSessionController:didReceiveAudioSessionOwnerResetNotification:]";
    v11 = 2112;
    v12 = notificationCopy;
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

- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerLostNotification:(id)notification
{
  notificationCopy = notification;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClientConnection audioSessionController:didReceiveAudioSessionOwnerLostNotification:]";
    v11 = 2112;
    v12 = notificationCopy;
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

- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClientConnection audioSessionController:didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:]";
    v11 = 2112;
    v12 = infoCopy;
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

- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADClientConnection audioSessionController:didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:]";
    v11 = 2112;
    v12 = infoCopy;
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

- (void)audioSessionController:(id)controller didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADClientConnection audioSessionController:didReceiveAudioSessionRouteChangeNotificationWithUserInfo:]";
    v8 = 2112;
    v9 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s userInfo = %@", &v6, 0x16u);
  }
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[ADClientConnection audioSessionController:didReceiveAudioSessionInterruptionNotificationWithUserInfo:]";
    v19 = 2112;
    v20 = infoCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  v7 = [infoCopy objectForKey:AVAudioSessionInterruptionTypeKey];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [infoCopy objectForKey:AVAudioSessionInterruptionOptionKey];
  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003234C0;
  v13[3] = &unk_10051D278;
  v13[4] = self;
  v14 = infoCopy;
  v15 = unsignedIntegerValue;
  v16 = unsignedIntegerValue2;
  v12 = infoCopy;
  dispatch_async(queue, v13);
}

- (void)adShouldSpeakStateDidChange:(BOOL)change
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003235D0;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  changeCopy = change;
  dispatch_async(queue, v4);
}

- (void)_logShouldSpeakState:(BOOL)state
{
  stateCopy = state;
  v4 = +[AFAnalytics sharedAnalytics];
  v6 = v4;
  if (stateCopy)
  {
    v5 = 1427;
  }

  else
  {
    v5 = 1428;
  }

  [v4 logEventWithType:v5 context:0];
}

- (void)adSpeechRecordingPerformTwoShotPromptWithType:(int64_t)type context:(id)context completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100323728;
  block[3] = &unk_10051BFA8;
  block[4] = self;
  v11 = completionCopy;
  typeCopy = type;
  v9 = completionCopy;
  dispatch_async(queue, block);
}

- (void)adSpeechRecordingDidDetectStartPointWithContext:(id)context
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100323B8C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)adSpeechRecognitionDidFail:(id)fail sessionUUID:(id)d
{
  failCopy = fail;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100323F68;
  v8[3] = &unk_10051E010;
  v9 = failCopy;
  selfCopy = self;
  v7 = failCopy;
  dispatch_async(queue, v8);
}

- (void)adSpeechRecognitionWillBeginRecognitionUpdateForTask:(id)task
{
  taskCopy = task;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003240DC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecognizedPartialResult:(id)result
{
  resultCopy = result;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003241D4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecognized:(id)recognized usingSpeechModel:(id)model sessionUUID:(id)d
{
  recognizedCopy = recognized;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100324350;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = recognizedCopy;
  v8 = recognizedCopy;
  dispatch_async(queue, v9);
}

- (void)adSpeechRecordingWillStopWithSignpostID:(unint64_t)d
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003244A8;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(queue, v4);
}

- (void)adSpeechRecordingDidFail:(id)fail context:(id)context
{
  failCopy = fail;
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
  v11 = failCopy;
  selfCopy = self;
  v9 = failCopy;
  dispatch_async(queue, block);
}

- (void)adSpeechRecordingDidCancelWithContext:(id)context
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

- (void)adSpeechRecordingDidEndWithContext:(id)context
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

- (void)adSpeechRecordingDidChangeAVRecordRoute:(id)route bluetoothDevice:(id)device isDucking:(BOOL)ducking isTwoShot:(BOOL)shot speechEndHostTime:(unint64_t)time context:(id)context
{
  routeCopy = route;
  deviceCopy = device;
  contextCopy = context;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1003255E0;
  v21[3] = &unk_10051BF58;
  v21[4] = self;
  v22 = deviceCopy;
  v23 = contextCopy;
  v24 = routeCopy;
  duckingCopy = ducking;
  shotCopy = shot;
  timeCopy = time;
  v18 = routeCopy;
  v19 = contextCopy;
  v20 = deviceCopy;
  dispatch_async(queue, v21);
}

- (void)adSpeechRecordingDidBeginOnAVRecordRoute:(id)route audioSessionID:(unsigned int)d bluetoothDevice:(id)device sessionRequestUUID:(id)iD dictationOptions:(id)options context:(id)context
{
  routeCopy = route;
  deviceCopy = device;
  contextCopy = context;
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
  v22 = deviceCopy;
  v23 = contextCopy;
  v24 = routeCopy;
  dCopy = d;
  v18 = routeCopy;
  v19 = contextCopy;
  v20 = deviceCopy;
  dispatch_async(queue, v21);
}

- (void)adSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)wrapper context:(id)context
{
  wrapperCopy = wrapper;
  contextCopy = context;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100325F2C;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = wrapperCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = wrapperCopy;
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

- (void)_setServerForcedTTS:(BOOL)s
{
  self->_serverIsForcingTTS = s;
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

- (void)_setADShouldSpeak:(BOOL)speak
{
  self->_cachedADShouldSpeak = speak;
  self->_hasCachedADShouldSpeak = 1;
  [(ADClientConnection *)self _updateShouldSpeak];
}

- (void)adFailedToLaunchAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003264DC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)adWillProcessAppLaunchWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003265C8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)adAudioSessionDidBecomeActive:(BOOL)active
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326694;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  activeCopy = active;
  dispatch_async(queue, v4);
}

- (void)adAudioSessionWillBecomeActive:(BOOL)active
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326760;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  activeCopy = active;
  dispatch_async(queue, v4);
}

- (void)adRequestWillProcessStartPlayback:(int64_t)playback intent:(id)intent completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100326888;
  v13[3] = &unk_10051C0D8;
  v15 = completionCopy;
  playbackCopy = playback;
  v13[4] = self;
  v14 = intentCopy;
  v11 = intentCopy;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

- (void)adRequestDidHandleFailedStartPlayback:(int64_t)playback
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326A48;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = playback;
  dispatch_async(queue, v4);
}

- (void)adServerRequestsTTSStateUnmuted:(BOOL)unmuted
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326B14;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  unmutedCopy = unmuted;
  dispatch_async(queue, v4);
}

- (void)adAceConnectionWillRetryOnError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100326BBC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)adSetUserActivityInfo:(id)info webpageURL:(id)l
{
  infoCopy = info;
  lCopy = l;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100326CD4;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = infoCopy;
  v13 = lCopy;
  v9 = lCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (void)adAcousticIDRequestDidFinishSuccessfully:(BOOL)successfully
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326DA0;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  successfullyCopy = successfully;
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

- (void)adQuickStopWasHandledWithActions:(unint64_t)actions
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100326FD8;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = actions;
  dispatch_async(queue, v4);
}

- (void)adRequestSetReplayOverridePath:(id)path
{
  pathCopy = path;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003270C4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = pathCopy;
  v6 = pathCopy;
  dispatch_async(queue, v7);
}

- (void)adRequestSetReplayEnabled:(BOOL)enabled
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100327190;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v4);
}

- (void)adRequestReplayRecordedViewAt:(unint64_t)at with:(id)with
{
  withCopy = with;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032728C;
  block[3] = &unk_10051E128;
  v10 = withCopy;
  atCopy = at;
  block[4] = self;
  v8 = withCopy;
  dispatch_async(queue, block);
}

- (void)adRequestReplayAllRecordedViews:(unint64_t)views with:(id)with
{
  withCopy = with;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100327388;
  block[3] = &unk_10051E128;
  v10 = withCopy;
  viewsCopy = views;
  block[4] = self;
  v8 = withCopy;
  dispatch_async(queue, block);
}

- (void)adRequestRequestedDismissAssistantWithReason:(int64_t)reason
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100327450;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = reason;
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

- (void)adExtensionRequestFinishedForApplication:(id)application error:(id)error
{
  applicationCopy = application;
  errorCopy = error;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100327620;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = applicationCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = applicationCopy;
  dispatch_async(queue, block);
}

- (void)adExtensionRequestWillStartForApplication:(id)application
{
  applicationCopy = application;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10032770C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = applicationCopy;
  v6 = applicationCopy;
  dispatch_async(queue, v7);
}

- (void)adWantsToCacheImage:(id)image
{
  imageCopy = image;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003277F8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = imageCopy;
  v6 = imageCopy;
  dispatch_async(queue, v7);
}

- (void)adGetBulletinContext:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003279B0;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(queue, v7);
}

- (void)adRequestRequestedOpenURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100327C00;
  block[3] = &unk_10051E088;
  v12 = lCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = lCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)adRequestRequestedOpenApplicationWithBundleID:(id)d URL:(id)l completion:(id)completion
{
  dCopy = d;
  lCopy = l;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100327E90;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = dCopy;
  v17 = lCopy;
  v18 = completionCopy;
  v12 = lCopy;
  v13 = dCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

- (void)adStartUIRequestWithText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003280E8;
  block[3] = &unk_10051E088;
  v12 = textCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = textCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)adRequestDidReceiveTimeoutExtensionRequestWithDuration:(double)duration
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "[ADClientConnection adRequestDidReceiveTimeoutExtensionRequestWithDuration:]";
    v10 = 2048;
    durationCopy = duration;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s durationInSeconds: %f", buf, 0x16u);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100328414;
  v7[3] = &unk_10051D770;
  v7[4] = self;
  *&v7[5] = duration;
  dispatch_async(queue, v7);
}

- (void)adRequestEncounteredIntermediateError:(id)error
{
  errorCopy = error;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "[ADClientConnection adRequestEncounteredIntermediateError:]";
    v12 = 2114;
    v13 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Sending intermediate error %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003285A8;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

- (void)adRequestDidCompleteWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v13 = "[ADClientConnection adRequestDidCompleteWithSuccess:error:]";
    v14 = 2048;
    selfCopy = self;
    v16 = 1024;
    v17 = successCopy;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %p success = %d, error = %@", buf, 0x26u);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10032874C;
  v10[3] = &unk_10051E010;
  v10[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(queue, v10);
}

- (void)_handleRequestCompletedWithUUID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  if ([(NSUUID *)self->_requestUUID isEqual:dCopy])
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
        selfCopy3 = self;
        v22 = 2112;
        v23 = requestUUID;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %p Invoking request completion with UUID %@...", &v18, 0x20u);
        requestCompletion = self->_requestCompletion;
      }

      requestCompletion[2](requestCompletion, errorCopy);
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v12 = self->_requestUUID;
        v18 = 136315650;
        v19 = "[ADClientConnection _handleRequestCompletedWithUUID:error:]";
        v20 = 2048;
        selfCopy3 = self;
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
      selfCopy3 = self;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = dCopy;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s %p Ignored invoking request completion because UUID mismatched. (_requestUUID = %@, requestUUID = %@)", &v18, 0x2Au);
    }
  }
}

- (void)adRequestDidReceiveCommand:(id)command reply:(id)reply
{
  commandCopy = command;
  replyCopy = reply;
  v8 = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100328DA0;
  v19[3] = &unk_10051BE30;
  v19[4] = self;
  v9 = commandCopy;
  v20 = v9;
  v21 = v8;
  v22 = replyCopy;
  v10 = replyCopy;
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

- (void)adRequestDidUpdateResponseMode:(id)mode
{
  modeCopy = mode;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003291F4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = modeCopy;
  v6 = modeCopy;
  dispatch_async(queue, v7);
}

- (void)adRequestWillReceiveCommand:(id)command
{
  commandCopy = command;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003293FC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = commandCopy;
  v6 = commandCopy;
  dispatch_async(queue, v7);
}

- (void)_removeAllAudioSessionAssertionsForReason:(id)reason
{
  reasonCopy = reason;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v35 = "[ADClientConnection _removeAllAudioSessionAssertionsForReason:]";
    v36 = 2048;
    selfCopy = self;
    v38 = 2112;
    v39 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p reason = %@", buf, 0x20u);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100329778;
  v29[3] = &unk_10051C198;
  v20 = reasonCopy;
  v30 = v20;
  selfCopy2 = self;
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
  selfCopy3 = self;
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
          selfCopy = selfCopy3;
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

  [(NSMutableOrderedSet *)selfCopy3->_audioSessionAssertions removeAllObjects];
}

- (void)_addAudioSessionAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADClientConnection _addAudioSessionAssertion:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = assertionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p audioSessionAssertion = %@", &v9, 0x20u);
  }

  if (assertionCopy)
  {
    audioSessionAssertions = self->_audioSessionAssertions;
    if (!audioSessionAssertions)
    {
      v7 = objc_alloc_init(NSMutableOrderedSet);
      v8 = self->_audioSessionAssertions;
      self->_audioSessionAssertions = v7;

      audioSessionAssertions = self->_audioSessionAssertions;
    }

    [(NSMutableOrderedSet *)audioSessionAssertions addObject:assertionCopy];
  }
}

- (void)_removeAllSpeechCapturingContextsForReason:(id)reason
{
  reasonCopy = reason;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADClientConnection _removeAllSpeechCapturingContextsForReason:]";
    v23 = 2048;
    selfCopy = self;
    v25 = 2112;
    v26 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p reason = %@", buf, 0x20u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100329B9C;
  v17[3] = &unk_10051C198;
  v6 = reasonCopy;
  v18 = v6;
  selfCopy2 = self;
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

- (void)_addSpeechCapturingContext:(id)context
{
  contextCopy = context;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADClientConnection _addSpeechCapturingContext:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p speechCapturingContext = %@", &v9, 0x20u);
  }

  if (contextCopy)
  {
    speechCapturingContexts = self->_speechCapturingContexts;
    if (!speechCapturingContexts)
    {
      v7 = objc_alloc_init(NSMutableOrderedSet);
      v8 = self->_speechCapturingContexts;
      self->_speechCapturingContexts = v7;

      speechCapturingContexts = self->_speechCapturingContexts;
    }

    [(NSMutableOrderedSet *)speechCapturingContexts addObject:contextCopy];
  }
}

- (void)_setBluetoothDevice:(id)device
{
  deviceCopy = device;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[ADClientConnection _setBluetoothDevice:]";
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %p bluetoothDevice = %@", &v8, 0x20u);
  }

  bluetoothDevice = self->_bluetoothDevice;
  if (bluetoothDevice != deviceCopy)
  {
    [(AFBluetoothDevice *)bluetoothDevice removeObserver:self];
    objc_storeStrong(&self->_bluetoothDevice, device);
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

- (void)_updateSpeechRequestOptions:(id)options
{
  optionsCopy = options;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADClientConnection _updateSpeechRequestOptions:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p options = %@", &v9, 0x20u);
  }

  v6 = [optionsCopy copy];
  requestOptions = self->_requestOptions;
  self->_requestOptions = v6;

  activationEvent = [optionsCopy activationEvent];
  if (activationEvent && activationEvent != 5)
  {
    [(ADClientConnection *)self _setRequestOptionsRequireTTS:AFSpeechEventIsVoiceTrigger()];
  }
}

- (id)_serviceDelegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  if (handlerCopy && !xpcConnection)
  {
    v6 = [AFError errorWithCode:12];
    handlerCopy[2](handlerCopy, v6);

    xpcConnection = self->_xpcConnection;
  }

  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];

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
    selfCopy = self;
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
  selfCopy2 = self;
  v8 = +[ADTTSMutingObserver sharedInstance];
  [v8 removeHandsFreeStateObserver:selfCopy2];

  v9 = +[ADSpeechManager sharedManager];
  audioSessionController = [v9 audioSessionController];
  [audioSessionController unregisterObserver:selfCopy2];

  v11 = +[ADSpeechManager sharedManager];
  audioPlaybackService = [v11 audioPlaybackService];
  [audioPlaybackService removeListener:selfCopy2];

  v13 = +[ADCommandCenter sharedCommandCenter];
  [v13 setConfiguration:0 forClient:selfCopy2];
}

- (void)dealloc
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[ADClientConnection dealloc]";
    v8 = 2048;
    selfCopy = self;
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

- (ADClientConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
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

    objc_storeStrong(&v6->_xpcConnection, connection);
    v6->_isConnected = 1;
    _queue = [(NSXPCConnection *)v6->_xpcConnection _queue];
    queue = v6->_queue;
    v6->_queue = _queue;

    v10 = v6;
    v11 = +[ADTTSMutingObserver sharedInstance];
    [v11 addHandsFreeStateObserver:v10];

    v10->_ringerStateToken = -1;
    v12 = +[ADSpeechManager sharedManager];
    audioSessionController = [v12 audioSessionController];
    [audioSessionController registerObserver:v10];

    v14 = +[ADSpeechManager sharedManager];
    audioPlaybackService = [v14 audioPlaybackService];
    [audioPlaybackService addListener:v10];

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