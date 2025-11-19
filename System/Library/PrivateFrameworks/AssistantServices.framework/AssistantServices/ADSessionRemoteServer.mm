@interface ADSessionRemoteServer
- (BOOL)_authenticationDisabled;
- (BOOL)_connectionErrorIsRedirect:(id)a3;
- (BOOL)_connectionErrorIsTimeout:(id)a3;
- (BOOL)_connectionErrorSuggestsConnectionPolicyReset:(id)a3;
- (BOOL)_connectionIsWWAN;
- (BOOL)_persistValidationData:(id)a3 withExpiration:(id)a4;
- (BOOL)_populateInternalAuthProperties:(id)a3;
- (BOOL)_shouldRetry;
- (BOOL)_versionForCachedValidationDataMatchesCurrentVersion;
- (BOOL)sessionIsAttemptingTryOrRetry;
- (id)_authDataToSign;
- (id)_authenticator;
- (id)_cachedServerCertificate;
- (id)_cachedValidationData;
- (id)_connectionInfoWithPreferWWAN:(BOOL)a3 skipPeer:(BOOL)a4 skipPeerError:(id)a5 useWiFiHint:(BOOL)a6 forceReconnect:(BOOL)a7;
- (id)_connectionURL;
- (id)_connectionURLHostname;
- (id)_generateAnalyticsContextWithError:(id)a3;
- (id)_retryManager;
- (id)_siriNetworkServerConnection;
- (id)currentSNConnectionPreCachedMetrics;
- (id)initOnQueue:(id)a3 withAccount:(id)a4 languageCode:(id)a5 connectionMode:(id)a6 sharedUserIdentifier:(id)a7 loggingSharedUserIdentifier:(id)a8 instanceContext:(id)a9;
- (void)_adjustAceHeaderTimeout:(BOOL)a3;
- (void)_assistantFailedForReason:(id)a3 error:(id)a4;
- (void)_authenticationFailed;
- (void)_cancelSynchronously:(BOOL)a3;
- (void)_companionServiceStateDidChange:(id)a3;
- (void)_connectionOpened;
- (void)_continueAuthWithCertificateData:(id)a3;
- (void)_continueAuthentication;
- (void)_continueSessionInitWithValidationData:(id)a3;
- (void)_createAssistant;
- (void)_eagerAuthDidComplete;
- (void)_forceFastDormancy;
- (void)_handleAceObject:(id)a3;
- (void)_homeContextDidChange:(id)a3;
- (void)_homeInfoDidChange:(id)a3;
- (void)_informDelegateOfError:(id)a3;
- (void)_multiUsersDidChange:(id)a3;
- (void)_probeSessionIfIdle;
- (void)_reallyRetryPreferringWWAN:(BOOL)a3 skipPeer:(BOOL)a4 skipPeerError:(id)a5 useWiFiHint:(BOOL)a6 causedByError:(id)a7 forceReconnect:(BOOL)a8 useSecondary:(BOOL)a9;
- (void)_recheckForWiFiTransition;
- (void)_releaseDormancySuspension;
- (void)_resetConnectionPolicyDenying;
- (void)_resetServerConnectionSynchronously:(BOOL)a3 completion:(id)a4;
- (void)_retrieveAndSendHomeContext;
- (void)_retrySiriNetworkForFailedConnection:(id)a3 siriNetworkAnalysisInfo:(id)a4 onError:(id)a5;
- (void)_retryWithParameters:(BOOL)a3 skipPeer:(BOOL)a4 skipPeerError:(id)a5 causedByError:(id)a6 useSecondary:(BOOL)a7;
- (void)_saAssistantCreated:(id)a3;
- (void)_saAssistantDestroyed:(id)a3;
- (void)_saAssistantLoaded:(id)a3;
- (void)_saAssistantNotFound:(id)a3;
- (void)_saAssistantNotReady:(id)a3;
- (void)_saCommandFailed:(id)a3;
- (void)_saCreateSessionInfoResponse:(id)a3;
- (void)_saGetSessionCertificateResponse:(id)a3;
- (void)_saSessionValidationFailed:(id)a3;
- (void)_saSetConnectionHeader:(id)a3;
- (void)_sendCreateSessionInfoRequestWithData:(id)a3;
- (void)_sendGetSessionCertificateData;
- (void)_sendHomeContext:(id)a3;
- (void)_sendLoadAssistantWithAccount:(id)a3 validationData:(id)a4;
- (void)_sendMultiUserInfo;
- (void)_sendServerCommand:(id)a3;
- (void)_sendServerCommands:(id)a3;
- (void)_sendSetRemoteDevicesWithAccount:(id)a3 multiUserInfo:(id)a4;
- (void)_setCachedServerCertificate:(id)a3;
- (void)_setCachedValidationData:(id)a3 withDuration:(double)a4;
- (void)_siriNetworkConnection:(id)a3 didEncounterError:(id)a4 siriNetworkAnalysisInfo:(id)a5;
- (void)_siriNetworkConnection:(id)a3 didEncounterIntermediateError:(id)a4;
- (void)_startConnection;
- (void)_startSession;
- (void)_startSiriNetworkConnectionPreferringWWAN:(BOOL)a3 skipPeer:(BOOL)a4 skipPeerError:(id)a5 useWiFiHint:(BOOL)a6 forceReconnect:(BOOL)a7;
- (void)_triggerABCForEmptyLocale;
- (void)_updateConnectionPolicyFailureCount:(id)a3;
- (void)assistantDataManagerDictationHIPAAMDMStatusDidChange;
- (void)barrier:(id)a3;
- (void)beginRetryableRequest:(id)a3;
- (void)dealloc;
- (void)delegateDidHandleCommand:(id)a3 didRecognizeSpeech:(BOOL)a4;
- (void)didCloseConnection:(id)a3;
- (void)didEncounterError:(id)a3 error:(id)a4 analysisInfo:(id)a5;
- (void)didEncounterIntermediateError:(id)a3 error:(id)a4;
- (void)didOpenConnectionType:(id)a3 type:(id)a4 routeId:(id)a5 delay:(double)a6 method:(id)a7;
- (void)didReceiveAceObject:(id)a3 object:(id)a4;
- (void)doSendPreProcessing:(id)a3;
- (void)getSNConnectionMetrics:(id)a3;
- (void)networkManagerLostNonWWANConnectivity:(id)a3;
- (void)networkManagerNetworkUnreachable:(id)a3;
- (void)networkManagerNonWWANDidBecomeAvailable:(id)a3;
- (void)refreshValidationData;
- (void)resetRetryManager;
- (void)retryNakedCommandsIfNeeded;
- (void)sendRemoteGizmoDeviceToServer:(id)a3;
- (void)setHasActiveRequest:(BOOL)a3;
- (void)setSNConnection:(id)a3;
- (void)startRetry;
- (void)willStartConnection:(id)a3 type:(id)a4;
- (void)willStartConnection:(id)a3 with:(id)a4;
@end

@implementation ADSessionRemoteServer

- (id)_retryManager
{
  retryManager = self->_retryManager;
  if (!retryManager)
  {
    v4 = objc_alloc_init(ADRetryManager);
    v5 = self->_retryManager;
    self->_retryManager = v4;

    retryManager = self->_retryManager;
  }

  return retryManager;
}

- (id)_siriNetworkServerConnection
{
  siriNetworkServerConnection = self->_siriNetworkServerConnection;
  if (!siriNetworkServerConnection)
  {
    v4 = [(ADSessionRemoteServer *)self _connectionURLHostname];
    currentConnectionHostname = self->_currentConnectionHostname;
    self->_currentConnectionHostname = v4;

    v6 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      peerType = self->_peerType;
      peerVersion = self->_peerVersion;
      v20 = 136315650;
      v21 = "[ADSessionRemoteServer _siriNetworkServerConnection]";
      v22 = 2112;
      v23 = peerType;
      v24 = 2112;
      v25 = peerVersion;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s peer type %@ peer version %@", &v20, 0x20u);
    }

    v9 = [(ADSessionRemoteServer *)self _connectionInfoWithPreferWWAN:0 skipPeer:0 skipPeerError:0 useWiFiHint:0 forceReconnect:0];
    v10 = [SNConnection alloc];
    v11 = qword_100590558;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_UNSPECIFIED, 0);

    v14 = dispatch_queue_create_with_target_V2("SiriNetworkConnection", v13, v11);
    v15 = [v10 initWithConnectionInfo:v9 connectionQueue:v14];
    v16 = self->_siriNetworkServerConnection;
    self->_siriNetworkServerConnection = v15;

    [(SNConnection *)self->_siriNetworkServerConnection setDelegate:self];
    if (self->_hasActiveRequest)
    {
      v17 = [(ADSession *)self delegate];
      v18 = [v17 assistantSessionShouldPrewarmConnetion:self];

      if (v18)
      {
        [(SNConnection *)self->_siriNetworkServerConnection setSendPings:1];
      }
    }

    siriNetworkServerConnection = self->_siriNetworkServerConnection;
  }

  return siriNetworkServerConnection;
}

- (id)_connectionURLHostname
{
  v2 = [(ADSession *)self _account];
  v3 = [v2 hostname];

  if (AFIsInternalInstall())
  {
    v4 = +[ADPreferences sharedPreferences];
    v5 = [v4 redirectForServerURLString:v3];

    if (v5)
    {
      v6 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v9 = 136315650;
        v10 = "[ADSessionRemoteServer _connectionURLHostname]";
        v11 = 2112;
        v12 = v3;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Redirecting %@ to %@", &v9, 0x20u);
      }

      v7 = v5;

      v3 = v7;
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADSessionRemoteServer dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_dormancySuspendAssertion)
  {
    [SNNetworkManager releaseDormancySuspendAssertion:&self->_dormancySuspendAssertion];
    self->_dormancySuspendAssertion = 0;
  }

  v4 = [(ADSessionRemoteServer *)self _siriNetworkManager];
  [v4 releaseWiFiAssertion];

  [(SNConnection *)self->_siriNetworkServerConnection setDelegate:0];
  [(SNConnection *)self->_siriNetworkServerConnection cancelSynchronously:0 isOnConnectionQueue:0 completion:0];
  commandMap = self->_commandMap;
  if (commandMap)
  {
    CFRelease(commandMap);
    self->_commandMap = 0;
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = ADSessionRemoteServer;
  [(ADSession *)&v7 dealloc];
}

- (void)_startConnection
{
  if (![(ADSession *)self state])
  {
    kdebug_trace();
  }

  v3 = [(ADSession *)self delegate];
  [v3 assistantSessionWillStartConnection:self];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100016E78;
  v12[3] = &unk_10051A038;
  v12[4] = self;
  v4 = objc_retainBlock(v12);
  if (AFDeviceSupportsWiFiLPASMode())
  {
    if ([(ADSessionRemoteServer *)self _shouldGetLinkRecommendation])
    {
      v5 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v14 = "[ADSessionRemoteServer _startConnection]";
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Peer is nearby", buf, 0xCu);
      }

      [(ADSession *)self setState:1];
      v6 = [(ADSessionRemoteServer *)self _siriNetworkManager];
      isRequestRetry = self->_isRequestRetry;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1002D4164;
      v10[3] = &unk_10051A060;
      v10[4] = self;
      v11 = v4;
      [v6 getLinkRecommendation:isRequestRetry recommendation:v10];
    }

    else
    {
      v8 = [(ADSessionRemoteServer *)self _siriNetworkManager];
      [v8 acquireWiFiAssertion:1];

      [SNNetworkManager acquireDormancySuspendAssertion:&self->_dormancySuspendAssertion];
      (v4[2])(v4, 1, 1);
      v9 = [(ADSessionRemoteServer *)self _siriNetworkManager];
      [v9 resetLinkRecommendationInfo];
    }
  }

  else
  {
    (v4[2])(v4, self->_skipPeer, 0);
  }
}

- (BOOL)_authenticationDisabled
{
  if (self->_hasCachedAuthDisabled)
  {
    return self->_cachedAuthDisabled;
  }

  else
  {
    v3 = 1;
    self->_hasCachedAuthDisabled = 1;
    if ((_AFPreferencesAuthenticationDisabled() & 1) == 0)
    {
      v3 = !+[ADAuthenticator authenticationAvailable];
    }

    self->_cachedAuthDisabled = v3;
  }

  return v3;
}

- (id)_cachedValidationData
{
  v3 = [(ADSession *)self _account];
  v4 = [v3 validationExpiration];
  if (!v4)
  {
    cachedValidationDataExpiration = self->_cachedValidationDataExpiration;
    if (cachedValidationDataExpiration)
    {
      v10 = +[NSDate date];
      v11 = [(NSDate *)cachedValidationDataExpiration compare:v10];

      if (v11 == 1)
      {
        v7 = self->_cachedValidationData;
        [(ADSessionRemoteServer *)self _persistValidationData:self->_cachedValidationData withExpiration:self->_cachedValidationDataExpiration];
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v5 = +[NSDate date];
  v6 = [v4 compare:v5];

  if (v6 != 1)
  {
LABEL_11:
    v12 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[ADSessionRemoteServer _cachedValidationData]";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Session data has expired %@", &v14, 0x16u);
    }

    goto LABEL_13;
  }

  v7 = [v3 validationData];
  if (v7 && ![(ADSessionRemoteServer *)self _versionForCachedValidationDataMatchesCurrentVersion])
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[ADSessionRemoteServer _cachedValidationData]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Resetting cached validation data due to cached version not matching current version.", &v14, 0xCu);
    }

    [v3 setValidationData:0];
    [v3 setValidationExpiration:0];
    [v3 save];
LABEL_13:
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (BOOL)_versionForCachedValidationDataMatchesCurrentVersion
{
  v3 = [(ADSession *)self _account];
  v4 = [v3 validationVersion];

  v5 = [v4 unsignedIntegerValue];
  v6 = [(ADSessionRemoteServer *)self _authenticator];
  LOBYTE(v5) = v5 == [v6 authenticationStrategyVersion];

  return v5;
}

- (id)_authenticator
{
  authenticator = self->_authenticator;
  if (!authenticator)
  {
    v4 = +[ADPreferences sharedPreferences];
    v5 = [v4 useDeviceAuthenticationVersion];

    v6 = [[ADAuthenticator alloc] initWithTargetQueue:self->_queue authenticationStrategyVersion:v5];
    v7 = self->_authenticator;
    self->_authenticator = v6;

    authenticator = self->_authenticator;
  }

  return authenticator;
}

- (void)_connectionOpened
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADSessionRemoteServer _connectionOpened]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Connection opened", &v6, 0xCu);
  }

  [(ADSession *)self _setSessionOpened];
  v4 = [(ADSession *)self delegate];
  v5 = [(ADSession *)self _currentSNConnectionType];
  [v4 updateConnectionSetConnectionType:{objc_msgSend(v5, "aggregatorConnectionType")}];

  [(ADSessionRemoteServer *)self _startSession];
}

- (void)_startSession
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADSessionRemoteServer _startSession]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Starting session", &v10, 0xCu);
  }

  if ([(ADSession *)self state]== 5 && [(ADSession *)self dormant])
  {
    v4 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADSessionRemoteServer _startSession]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Holding off on session start because we're dormant", &v10, 0xCu);
    }

    return;
  }

  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADSessionRemoteServer _startSession]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Starting Session", &v10, 0xCu);
  }

  if ([(ADSessionRemoteServer *)self _authenticationDisabled])
  {
    v6 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADSessionRemoteServer _startSession]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Skipping authentication. Disabled or on simulator", &v10, 0xCu);
    }

    [(ADSessionRemoteServer *)self _continueSessionInitWithValidationData:0];
    return;
  }

  if (self->_forceValidationRefresh)
  {
    self->_forceValidationRefresh = 0;
LABEL_19:
    self->_usingCachedValidationData = 0;
    [(ADSession *)self setState:6];
    [(ADSessionRemoteServer *)self _continueAuthentication];
    return;
  }

  v7 = [(ADSessionRemoteServer *)self _cachedValidationData];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADSessionRemoteServer _startSession]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Using cached validation data", &v10, 0xCu);
  }

  self->_usingCachedValidationData = 1;
  [(ADSessionRemoteServer *)self _continueSessionInitWithValidationData:v8];
}

- (void)_retrieveAndSendHomeContext
{
  v3 = +[ADHomeInfoManager sharedInfoManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C22C;
  v4[3] = &unk_10051A250;
  v4[4] = self;
  [v3 getHomeContext:v4];
}

- (id)currentSNConnectionPreCachedMetrics
{
  dispatch_assert_queue_V2(self->_queue);
  snMetricsCache = self->_snMetricsCache;
  if (snMetricsCache)
  {
    v4 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[ADSessionRemoteServer currentSNConnectionPreCachedMetrics]";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Using precached SNMetrics", &v7, 0xCu);
      snMetricsCache = self->_snMetricsCache;
    }

    v5 = [(NSMutableArray *)snMetricsCache copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getSNConnectionMetrics:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = sub_1002C7F18;
    v15[4] = sub_1002C7F28;
    v16 = 0;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = sub_1002C7F18;
    v13[4] = sub_1002C7F28;
    v14 = objc_alloc_init(NSMutableArray);
    if (self->_siriNetworkServerConnection)
    {
      dispatch_group_enter(self->_metricsGroup);
      siriNetworkServerConnection = self->_siriNetworkServerConnection;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1002C7F30;
      v12[3] = &unk_10051A2C0;
      v12[5] = v13;
      v12[6] = v15;
      v12[4] = self;
      [(SNConnection *)siriNetworkServerConnection getSNConnectionMetrics:0 completion:v12];
    }

    metricsGroup = self->_metricsGroup;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002C8080;
    block[3] = &unk_10051A2E8;
    v10 = v13;
    block[4] = self;
    v11 = v15;
    v9 = v4;
    dispatch_group_notify(metricsGroup, queue, block);

    _Block_object_dispose(v13, 8);
    _Block_object_dispose(v15, 8);
  }
}

- (void)assistantDataManagerDictationHIPAAMDMStatusDidChange
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C81EC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_generateAnalyticsContextWithError:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [(ADSession *)self state];
  if (v6 > 0xB)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = *(&off_1005178E8 + v6);
  }

  v8 = v7;
  [v5 setObject:v8 forKey:@"sessionState"];
  v9 = [(ADSession *)self _currentSNConnectionType];
  v10 = [v9 technologyDescription];

  if (v10)
  {
    [v5 setObject:v10 forKey:@"connectionType"];
  }

  currentConnectionURL = self->_currentConnectionURL;
  if (currentConnectionURL)
  {
    v12 = [(NSURL *)currentConnectionURL absoluteString];
    [v5 setObject:v12 forKey:@"connectionURL"];
  }

  currentConnectionHostname = self->_currentConnectionHostname;
  if (currentConnectionHostname)
  {
    [v5 setObject:currentConnectionHostname forKey:@"connectionURL"];
  }

  v14 = [(ADSession *)self connectionMode];

  if (v14)
  {
    v15 = [(ADSession *)self connectionMode];
    v16 = [v15 copy];
    [v5 setObject:v16 forKey:@"connectionMode"];
  }

  v17 = [(ADSession *)self languageCode];

  if (v17)
  {
    v18 = [(ADSession *)self languageCode];
    v19 = [v18 copy];
    [v5 setObject:v19 forKey:@"languageCode"];
  }

  v20 = [NSNumber numberWithBool:[(ADSession *)self dormant]];
  [v5 setObject:v20 forKey:@"dormant"];

  if (v4)
  {
    v21 = [v4 domain];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 copy];
      [v5 setObject:v23 forKey:@"errorDomain"];
    }

    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    [v5 setObject:v24 forKey:@"errorCode"];

    v25 = [v4 userInfo];
    v26 = [v25 objectForKey:NSUnderlyingErrorKey];

    if (v26)
    {
      v27 = [v26 domain];
      v28 = v27;
      if (v27)
      {
        v29 = [v27 copy];
        [v5 setObject:v29 forKey:@"underlyingErrorDomain"];
      }

      v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v26 code]);
      [v5 setObject:v30 forKey:@"underlyingErrorCode"];
    }

    v31 = [v4 userInfo];
    v32 = [v31 objectForKey:SiriCoreSiriConnectionHTTPErrorStatusCodeKey];

    if (v32)
    {
      v33 = objc_alloc_init(NSMutableDictionary);
      v34 = [v32 stringValue];
      [v33 setObject:v34 forKey:SiriNetworkBackgroundConnectionHTTPErrorStatusCodeKey];

      v35 = [v4 userInfo];
      v36 = [v35 objectForKey:NSLocalizedDescriptionKey];

      if (v36)
      {
        v37 = [v36 copy];
        [v33 setObject:v37 forKey:NSLocalizedDescriptionKey];
      }

      v38 = [v4 userInfo];
      v39 = SiriNetworkBackgroundConnectionHTTPRedirectValueKey;
      v40 = [v38 objectForKey:SiriNetworkBackgroundConnectionHTTPRedirectValueKey];

      if (v40)
      {
        v41 = [v40 copy];
        [v33 setObject:v41 forKey:v39];
      }

      [v5 setObject:v33 forKey:@"userInfo"];

      v22 = v44;
      v8 = v45;
    }
  }

  v42 = [v5 copy];

  return v42;
}

- (void)_probeSessionIfIdle
{
  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  v5 = v4;

  if (v5 - self->_requestEndTime > 55.0)
  {
    v6 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[ADSessionRemoteServer _probeSessionIfIdle]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Probing the connection", &v7, 0xCu);
    }

    [(SNConnection *)self->_siriNetworkServerConnection probeConnection];
  }
}

- (void)_createAssistant
{
  [(ADSession *)self setState:8];
  v10 = [(ADSession *)self _account];
  v3 = [v10 assistantIdentifier];
  if (!v3)
  {
    [v10 clearAssistantData];
    [v10 updateAssistantIdentifiers];
  }

  [v10 setNeedsCreation:0];
  [v10 save];
  v4 = [(ADSessionRemoteServer *)self _authenticator];
  if ([v4 state] == 3)
  {
    v5 = [(ADSessionRemoteServer *)self _authDataToSign];
    v6 = [v4 signedDataForData:v5];

    [v4 sessionInfoDuration];
    [(ADSessionRemoteServer *)self _setCachedValidationData:v6 withDuration:?];
  }

  else
  {
    [(ADSessionRemoteServer *)self _setCachedValidationData:0 withDuration:0.0];
  }

  v7 = +[AFPreferences sharedPreferences];
  [v7 setTLSSessionTicketsFlushPending:0];

  if (!v3)
  {
    v8 = [(ADSession *)self delegate];
    [v8 assistantSessionDidCreateAssistant:self];

    v9 = dispatch_get_global_queue(9, 0);
    dispatch_async(v9, &stru_10051A298);
  }
}

- (void)_adjustAceHeaderTimeout:(BOOL)a3
{
  v3 = -1.0;
  if (a3)
  {
    v3 = 1.0;
  }

  v4 = self->_aceHeaderTimeout + v3;
  self->_aceHeaderTimeout = v4;
  v5 = 8.0;
  if (v4 > 8.0 || (v5 = 5.0, v4 < 5.0))
  {
    self->_aceHeaderTimeout = v5;
  }
}

- (void)_resetConnectionPolicyDenying
{
  v2 = [(ADSession *)self _account];
  [v2 setConnectionPolicyFailureCount:0];
  [v2 setConnectionPolicyFirstFailureDate:0];
}

- (void)_releaseDormancySuspension
{
  [(SNConnection *)self->_siriNetworkServerConnection setSendPings:0];
  [SNNetworkManager releaseDormancySuspendAssertion:&self->_dormancySuspendAssertion];
  self->_dormancySuspendAssertion = 0;
}

- (void)_forceFastDormancy
{
  v2 = +[SNNetworkManager sharedInstance];
  [v2 forceFastDormancy];
}

- (void)networkManagerNetworkUnreachable:(id)a3
{
  if (AFIsNano() && AFIsNano())
  {
    v3 = [ADSharedPeerStreamConnection sharedPeerStreamConnectionWithServiceIdentifier:@"com.apple.private.alloy.siri.proxy" listener:AFIsNano() ^ 1];
    [v3 preheat];
  }
}

- (void)_recheckForWiFiTransition
{
  if ([(ADSession *)self state]== 11 && [(ADSessionRemoteServer *)self _connectionIsWWAN])
  {
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[ADSessionRemoteServer _recheckForWiFiTransition]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Asking delegate if we should restart on wifi", &v7, 0xCu);
    }

    v4 = [(ADSession *)self delegate];
    v5 = [v4 assistantSessionShouldRestartConnectionOnWiFi:self];

    if (v5)
    {
      v6 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = "[ADSessionRemoteServer _recheckForWiFiTransition]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Switching to WiFi on request end", &v7, 0xCu);
      }

      [(ADSessionRemoteServer *)self _resetServerConnection];
      [(ADSessionRemoteServer *)self _startConnection];
    }
  }
}

- (void)networkManagerLostNonWWANConnectivity:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C8CC0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)networkManagerNonWWANDidBecomeAvailable:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C8E10;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_multiUsersDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C9010;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_companionServiceStateDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C9140;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_homeContextDidChange:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C92B0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_homeInfoDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C9424;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)barrier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [ADSessionBarrier alloc];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1002C95FC;
  v10 = &unk_10051A278;
  objc_copyWeak(&v11, &location);
  v6 = [(ADSessionBarrier *)v5 initWithThunk:&v7 barrier:v4];
  [(ADSession *)self sendCommand:v6 opportunistically:1, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_sendHomeContext:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = AFSiriLogContextSession;
  v6 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = v5;
      v8 = [v4 entities];
      v9 = sub_10001C820(v8);
      v10 = [v4 currentHomes];
      v11 = sub_10001C820(v10);
      v12 = 136315650;
      v13 = "[ADSessionRemoteServer _sendHomeContext:]";
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s entities %@ \ncurrentHomes %@", &v12, 0x20u);
    }

    [(ADSessionRemoteServer *)self _sendServerCommand:v4];
  }

  else if (v6)
  {
    v12 = 136315138;
    v13 = "[ADSessionRemoteServer _sendHomeContext:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s No homeContext to send", &v12, 0xCu);
  }
}

- (void)_sendMultiUserInfo
{
  v3 = +[ADMultiUserService sharedService];
  v5 = [v3 multiUserSAObject];

  if (v5)
  {
    [(ADSessionRemoteServer *)self _sendServerCommand:v5];
    v4 = [(ADSession *)self _account];
    [(ADSessionRemoteServer *)self _sendSetRemoteDevicesWithAccount:v4 multiUserInfo:v5];
  }
}

- (void)sendRemoteGizmoDeviceToServer:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_pairedWatchUniqueId isEqualToString:?])
  {
    objc_storeStrong(&self->_pairedWatchUniqueId, a3);
    if (self->_pairedWatchUniqueId)
    {
      if ([(ADSession *)self state]>= 9)
      {
        v5 = [(ADSession *)self _account];
        [(ADSessionRemoteServer *)self _sendSetRemoteDevicesWithAccount:v5];
      }
    }
  }
}

- (void)_sendSetRemoteDevicesWithAccount:(id)a3 multiUserInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v9 = objc_alloc_init(SASetRemoteDevices);
  v10 = objc_opt_new();
  v11 = &OBJC_METACLASS___ADDictationConnection;
  v92 = v10;
  if (AFSupportsMultiUser())
  {
    v12 = +[ADHomeInfoManager sharedInfoManager];
    v13 = [v12 infoForThisDevice];

    v14 = [v6 peerAssistantIdentifier];
    v15 = +[ADPreferences sharedPreferences];
    v16 = [v15 companionIdentifier];

    if (!v14 && v16)
    {
      v17 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Getting assistantID from ADDeviceCircleManager", buf, 0xCu);
      }

      v18 = +[ADDeviceCircleManager sharedInstance];
      v14 = [v18 assistantIdForDeviceWithIdsDeviceUniqueIdentifier:v16];
    }

    v88 = v16;
    v93 = v14;
    if (v14)
    {
      v79 = v13;
      v81 = v9;
      v84 = self;
      v86 = v6;
      log = objc_alloc_init(SARemoteDevice);
      [log setAssistantId:v14];
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v83 = v7;
      v19 = [v7 homeMembers];
      v20 = [v19 countByEnumeratingWithState:&v104 objects:v122 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v105;
        v23 = SAHomeMemberInfoAttributeOWNERValue;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v105 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v104 + 1) + 8 * i);
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v26 = [v25 attributes];
            v27 = [v26 countByEnumeratingWithState:&v100 objects:v121 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v101;
              while (2)
              {
                for (j = 0; j != v28; j = j + 1)
                {
                  if (*v101 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  if ([*(*(&v100 + 1) + 8 * j) isEqualToString:v23])
                  {
                    v31 = [v25 companionAssistantId];
                    v32 = [v31 isEqualToString:v93];

                    if ((v32 & 1) == 0)
                    {
                      v33 = AFSiriLogContextSession;
                      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
                      {
                        v34 = v33;
                        v35 = [v25 companionAssistantId];
                        *buf = 136315650;
                        v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
                        v111 = 2112;
                        v112 = v93;
                        v113 = 2112;
                        v114 = v35;
                        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s assistant id mismatch\tpeerAssistantID:%@\tprimary multiuser assistantID:%@", buf, 0x20u);
                      }

                      v36 = [v25 companionAssistantId];

                      if (v36)
                      {
                        v37 = [v25 companionAssistantId];
                        [log setAssistantId:v37];
                      }
                    }

                    goto LABEL_29;
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v100 objects:v121 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

LABEL_29:
          }

          v21 = [v19 countByEnumeratingWithState:&v104 objects:v122 count:16];
        }

        while (v21);
      }

      v6 = v86;
      v38 = [v86 peerUserAgentString];
      [log setUserAgent:v38];

      v39 = [v86 peerLanguageCode];
      [log setLanguage:v39];

      -[NSObject setSiriEnabled:](log, "setSiriEnabled:", [v86 peerSiriEnabled]);
      v13 = v79;
      v40 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v79 personalDomainsIsEnabled]);
      [log setPersonalDomainsEnabled:v40];

      v41 = [v79 securePersonalDomainsRequireAuth];
      v42 = &SARemoteDevicePersonalDomainsAuthenticationModeSecureRequestsValue;
      if (!v41)
      {
        v42 = &SARemoteDevicePersonalDomainsAuthenticationModeNeverValue;
      }

      [log setPersonalDomainsAuthenticationMode:*v42, v79];
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 3221225472;
      v98[2] = sub_1002CA5EC;
      v98[3] = &unk_10051D9B8;
      v43 = log;
      v99 = v43;
      v44 = [AFPeerInfo newWithBuilder:v98];
      v11 = &OBJC_METACLASS___ADDictationConnection;
      v45 = +[ADCompanionService sharedInstance];
      v46 = [[ADPeerInfo alloc] initWithAFPeerInfo:v44];
      v47 = [v45 discoveryTypeForPeer:v46];

      if (v47)
      {
        [v43 setDiscoveryMode:v47];
      }

      v10 = v92;
      [v92 addObject:v43];
      v48 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        loga = v48;
        v89 = [v43 assistantId];
        v49 = [v43 userAgent];
        v50 = [v43 language];
        v51 = [v43 siriEnabled];
        v52 = [v43 discoveryMode];
        *buf = 136316418;
        v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
        v111 = 2112;
        v112 = v89;
        v113 = 2112;
        v114 = v49;
        v115 = 2112;
        v116 = v50;
        v117 = 1024;
        v118 = v51;
        v119 = 2112;
        v120 = v52;
        _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_INFO, "%s assistantd id: %@ user agent: %@ language: %@ siri enabled: %d discovery type: %@", buf, 0x3Au);

        v10 = v92;
        v13 = v80;
      }

      v7 = v83;
      self = v84;
      v9 = v81;
      v16 = v88;
    }

    else
    {
      v10 = v92;
      if (([v13 personalDomainsIsEnabled] & 1) == 0)
      {
        v68 = objc_alloc_init(SARemoteDevice);
        [v68 setAssistantId:&stru_10051F508];
        [v68 setUserAgent:&stru_10051F508];
        [v68 setLanguage:&stru_10051F508];
        [v68 setPersonalDomainsEnabled:&__kCFBooleanFalse];
        v69 = [v13 securePersonalDomainsRequireAuth];
        v70 = &SARemoteDevicePersonalDomainsAuthenticationModeSecureRequestsValue;
        if (!v69)
        {
          v70 = &SARemoteDevicePersonalDomainsAuthenticationModeNeverValue;
        }

        [v68 setPersonalDomainsAuthenticationMode:*v70];
        [v92 addObject:v68];
        v71 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%s personal requests are disabled, but the companion's assistantId is unknown", buf, 0xCu);
        }

        v16 = v88;
      }

      v72 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
        v111 = 2112;
        v112 = v16;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "%s companion identifier: %@", buf, 0x16u);
      }

      if (v16)
      {
        v73 = [v6 peerUserAgentString];
        v74 = [v73 length];

        if (v74)
        {
          [v9 setRemoteDeviceHasNoAssistantId:1];
          v75 = AFSiriLogContextSession;
          v16 = v88;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
          {
            v76 = v75;
            v77 = [v6 peerSiriEnabled];
            *buf = 136315394;
            v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
            v111 = 1024;
            LODWORD(v112) = v77;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "%s companion has siri enabled: %d", buf, 0x12u);
          }
        }

        else
        {
          [v9 setRemoteDeviceUnreachable:1];
          v78 = AFSiriLogContextSession;
          v16 = v88;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "%s companion is unreachable", buf, 0xCu);
          }
        }
      }
    }
  }

  if (!AFSupportsPairedDevice() || (AFIsNano() & 1) != 0)
  {
    goto LABEL_82;
  }

  if (self->_pairedWatchUniqueId)
  {
    v53 = [v6 saRemoteDevice:?];
    if (v53)
    {
      if (AFPairedDeviceIsVictory())
      {
        [v53 setBrandName:SARemoteDeviceBrandNameNikeValue];
      }

      [v10 addObject:v53];
    }
  }

  if ([v10 count])
  {
LABEL_82:
    if (AFSupportsMultiUser())
    {
      v54 = +[ADMultiUserService sharedService];
      v55 = [v54 sharedRemoteDevices];

      if (v55 && [v55 count])
      {
        v82 = v9;
        v85 = self;
        v87 = v6;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v56 = v55;
        v57 = [v56 countByEnumeratingWithState:&v94 objects:v108 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v95;
          do
          {
            for (k = 0; k != v58; k = k + 1)
            {
              if (*v95 != v59)
              {
                objc_enumerationMutation(v56);
              }

              v61 = *(*(&v94 + 1) + 8 * k);
              v62 = AFSiriLogContextSession;
              if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
              {
                v63 = v62;
                v64 = [v61 assistantId];
                *buf = 136315394;
                v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
                v111 = 2112;
                v112 = v64;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s Adding shared device for (%@)", buf, 0x16u);

                v10 = v92;
              }

              [v10 addObject:v61];
            }

            v58 = [v56 countByEnumeratingWithState:&v94 objects:v108 count:16];
          }

          while (v58);
        }

        self = v85;
        v6 = v87;
        v9 = v82;
        v11 = &OBJC_METACLASS___ADDictationConnection;
      }
    }

    v65 = [&v11[36] sharedInstance];
    v66 = [v65 isReady];

    [v9 setRemoteDeviceNotSetup:v66 ^ 1];
    v67 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
      v111 = 1024;
      LODWORD(v112) = v66;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s set up is complete: %d", buf, 0x12u);
    }

    [v9 setRemoteDevices:v10];
    [(ADSessionRemoteServer *)self _sendServerCommand:v9];
  }
}

- (BOOL)_populateInternalAuthProperties:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextInternalAuth;
  if (os_log_type_enabled(AFSiriLogContextInternalAuth, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "[ADSessionRemoteServer _populateInternalAuthProperties:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Looking for AppleConnect service ticket in the Keychain", &v15, 0xCu);
  }

  v5 = +[ADPreferences sharedPreferences];
  v6 = [v5 internalAuthAppleConnectServiceTicket];

  v7 = AFSiriLogContextInternalAuth;
  v8 = os_log_type_enabled(AFSiriLogContextInternalAuth, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v15 = 136315138;
      v16 = "[ADSessionRemoteServer _populateInternalAuthProperties:]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Found service ticket in the Keychain - adding it to SALoadAssistant command, and deleting the Keychain entry", &v15, 0xCu);
    }

    [v3 setAppleConnectServiceTicket:v6];
    v9 = +[ADPreferences sharedPreferences];
    [v9 setInternalAuthAppleConnectServiceTicket:0];
LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  if (v8)
  {
    v15 = 136315138;
    v16 = "[ADSessionRemoteServer _populateInternalAuthProperties:]";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s No AppleConnect service ticket found in the Keychain. Looking for a session token instead.", &v15, 0xCu);
  }

  v10 = +[ADPreferences sharedPreferences];
  v9 = [v10 internalAuthSessionToken];

  v11 = AFSiriLogContextInternalAuth;
  v12 = os_log_type_enabled(AFSiriLogContextInternalAuth, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v12)
    {
      v15 = 136315138;
      v16 = "[ADSessionRemoteServer _populateInternalAuthProperties:]";
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Found session token in the Keychain", &v15, 0xCu);
    }

    [v3 setAppleConnectSessionToken:v9];
    goto LABEL_13;
  }

  if (v12)
  {
    v15 = 136315138;
    v16 = "[ADSessionRemoteServer _populateInternalAuthProperties:]";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s No session token found in the Keychain", &v15, 0xCu);
  }

  v9 = 0;
  v13 = 0;
LABEL_14:

  return v13;
}

- (void)_sendLoadAssistantWithAccount:(id)a3 validationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v67 = "[ADSessionRemoteServer _sendLoadAssistantWithAccount:validationData:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Sending loadassistant", buf, 0xCu);
  }

  v9 = [(ADSession *)self languageCode];
  v10 = [(ADSession *)self connectionMode];
  v11 = [v6 assistantIdentifier];
  v12 = [v6 loggingAssistantIdentifier];
  v13 = [v6 speechIdentifier];
  v61 = [(ADSession *)self sharedUserIdentifier];
  v60 = [(ADSession *)self loggingSharedUserIdentifier];
  v14 = _AFPreferencesSiriDataSharingOptInStatus();
  v59 = sub_10001B398(v14);
  v15 = +[ADAnalyticsIdentifiersProvider sharedInstance];
  v56 = [v15 ephemeralIdForDefaultUser];

  v16 = +[AFPreferences sharedPreferences];
  v55 = [v16 longLivedIdentifierUploadingEnabled];

  if (![v9 length])
  {
    [(ADSessionRemoteServer *)self _triggerABCForEmptyLocale];
    v17 = AFDefaultLanguageCode;

    v9 = v17;
  }

  v18 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315907;
    v67 = "[ADSessionRemoteServer _sendLoadAssistantWithAccount:validationData:]";
    v68 = 2113;
    v69 = v11;
    v70 = 2113;
    v71 = v13;
    v72 = 2112;
    v73 = v9;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s assistantId: %{private}@ speechId: %{private}@ with language %@", buf, 0x2Au);
  }

  v19 = +[SNNetworkActivityTracing sharedInstance];
  [v19 networkActivityStart:2 activate:1 completion:0];

  v20 = objc_alloc_init(SALoadAssistant);
  v58 = v7;
  [v20 setSessionValidationData:v7];
  [v20 setAssistantId:v11];
  v21 = v12;
  [v20 setLoggableAssistantId:v12];
  [v20 setSpeechId:v13];
  [v20 setSharedUserId:v61];
  [v20 setLoggableSharedUserId:v60];
  [v20 setLanguage:v9];
  v57 = v10;
  [v20 setConnectionMode:v10];
  v22 = [(ADSession *)self _saSNConnectionType];
  [v20 setConnectionType:v22];

  [v20 setDataSharingOptInStatus:v59];
  [v20 setGmDevice:AFDeviceSupportsGM()];
  v23 = +[ADPreferences sharedPreferences];
  v24 = [v23 singleUserCompanionACEHost];
  [v20 setLastKnownAceHostOfCompanion:v24];

  if (!_AFPreferencesSyncFromWatchEnabled() || AFIsHorseman())
  {
    v25 = [v6 peerAssistantIdentifier];
    [v20 setLinkedAssistantId:v25];

    v26 = [v6 peerSpeechIdentifier];
    [v20 setLinkedSpeechId:v26];
  }

  v27 = [(ADSessionRemoteServer *)self _authenticator];
  v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v27 authenticationStrategyVersion]);
  [v20 setDeviceAuthVersion:v28];

  if ([(ADSessionRemoteServer *)self _performingInternalAuth])
  {
    v29 = [(ADSessionRemoteServer *)self _populateInternalAuthProperties:v20];
    v30 = AFSiriLogContextInternalAuth;
    v31 = os_log_type_enabled(AFSiriLogContextInternalAuth, OS_LOG_TYPE_DEBUG);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_15;
      }

      *buf = 136315138;
      v67 = "[ADSessionRemoteServer _sendLoadAssistantWithAccount:validationData:]";
      v32 = "%s Successfully populated internal auth related properties of SALoadAssistant command";
    }

    else
    {
      if (!v31)
      {
        goto LABEL_15;
      }

      *buf = 136315138;
      v67 = "[ADSessionRemoteServer _sendLoadAssistantWithAccount:validationData:]";
      v32 = "%s Could not populate internal auth related properties of SALoadAssistant command. If the server requires these properties, it will respond with an SASessionValidationFailed.";
    }

    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, v32, buf, 0xCu);
  }

LABEL_15:
  os_unfair_lock_lock(&unk_10058FE08);
  v33 = qword_10058FE00;
  os_unfair_lock_unlock(&unk_10058FE08);
  [v20 setExperiments:v33];

  if (v56)
  {
    v34 = [v56 UUIDString];
    [v20 setEphemeralUserId:v34];
  }

  v35 = [NSNumber numberWithBool:v55 ^ 1];
  [v20 setRpiEnabled:v35];

  [(ADSessionRemoteServer *)self _sendServerCommand:v20];
  v36 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v37 = v36;
    v38 = [v20 dictionary];
    *buf = 136315394;
    v67 = "[ADSessionRemoteServer _sendLoadAssistantWithAccount:validationData:]";
    v68 = 2112;
    v69 = v38;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v39 = [v20 aceId];
  v40 = [v39 copy];
  sessionInitCommandId = self->_sessionInitCommandId;
  self->_sessionInitCommandId = v40;

  [(ADSession *)self setState:9];
  v42 = [(ADSession *)self _adSessionTypeString];
  if ((AFIsInternalInstall() & 1) != 0 || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 shouldLogForQA], v43, v44))
  {
    v45 = @"remote";
    if (v42)
    {
      v45 = v42;
    }

    v64[0] = @"sessionType";
    v64[1] = @"assistantId";
    v46 = &stru_10051F508;
    if (v11)
    {
      v47 = v11;
    }

    else
    {
      v47 = &stru_10051F508;
    }

    v65[0] = v45;
    v65[1] = v47;
    v64[2] = @"speechId";
    if (v13)
    {
      v46 = v13;
    }

    v65[2] = v46;
    v48 = v65;
    v49 = v64;
    v50 = 3;
  }

  else
  {
    if (v42)
    {
      v51 = v42;
    }

    else
    {
      v51 = @"remote";
    }

    v62 = @"sessionType";
    v63 = v51;
    v48 = &v63;
    v49 = &v62;
    v50 = 1;
  }

  v52 = [NSDictionary dictionaryWithObjects:v48 forKeys:v49 count:v50];
  v53 = +[AFAnalytics sharedAnalytics];
  [v53 logEventWithType:920 context:v52];

  v54 = dispatch_get_global_queue(9, 0);
  dispatch_async(v54, &stru_10051A228);
}

- (void)_triggerABCForEmptyLocale
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[ADSessionRemoteServer _triggerABCForEmptyLocale]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Reporting missing LoadAssistant locale to ABC", buf, 0xCu);
  }

  v4 = [(ADSession *)self _requestId];
  v5 = v4;
  if (v4)
  {
    v10 = @"refID";
    v11 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  v7 = +[SiriCoreSymptomsReporter sharedInstance];
  v8 = +[NSProcessInfo processInfo];
  v9 = [v8 processIdentifier];
  [v7 reportIssueForType:@"LoadAssistant" subType:@"null_locale" context:v6 processIdentifier:v9 walkboutStatus:byte_100590548];
}

- (void)_sendCreateSessionInfoRequestWithData:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[ADSessionRemoteServer _sendCreateSessionInfoRequestWithData:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v14, 0xCu);
  }

  v6 = objc_alloc_init(SACreateSessionInfoRequest);
  [v6 setSessionInfoRequest:v4];
  v7 = [NSNumber numberWithUnsignedInteger:[(ADAuthenticator *)self->_authenticator authenticationStrategyVersion]];
  [v6 setDeviceAuthVersion:v7];

  [(ADSessionRemoteServer *)self _sendServerCommand:v6];
  if ([(ADSession *)self state]!= 11)
  {
    v8 = [v6 aceId];
    v9 = [v8 copy];
    sessionInitCommandId = self->_sessionInitCommandId;
    self->_sessionInitCommandId = v9;
  }

  v11 = [v6 aceId];
  v12 = [v11 copy];
  createSessionInfoRequestId = self->_createSessionInfoRequestId;
  self->_createSessionInfoRequestId = v12;
}

- (void)_sendGetSessionCertificateData
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADSessionRemoteServer _sendGetSessionCertificateData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v4 = objc_alloc_init(SAGetSessionCertificate);
  v5 = [NSNumber numberWithUnsignedInteger:[(ADAuthenticator *)self->_authenticator authenticationStrategyVersion]];
  [v4 setDeviceAuthVersion:v5];

  [(ADSessionRemoteServer *)self _sendServerCommand:v4];
  if ([(ADSession *)self state]!= 11)
  {
    v6 = [v4 aceId];
    v7 = [v6 copy];
    sessionInitCommandId = self->_sessionInitCommandId;
    self->_sessionInitCommandId = v7;
  }
}

- (void)_sendServerCommands:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[ADSessionRemoteServer _sendServerCommands:]";
    v31 = 2112;
    v32 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Sending server commands %@", buf, 0x16u);
  }

  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        [v11 siriCore_invokeThunk];
        v12 = [v11 aceId];

        if (!v12)
        {
          v13 = SiriCoreUUIDStringCreate();
          [v11 setAceId:v13];
        }

        NSClassFromString(@"SiriCoreSpeechPacket");
        isKindOfClass = objc_opt_isKindOfClass();
        v15 = objc_opt_new();
        v16 = v11;
        if (isKindOfClass)
        {
          v17 = [v11 aceId];
          [v15 setAceId:v17];

          v18 = [v11 refId];
          [v15 setRefId:v18];

          v19 = [v11 packets];
          [v15 setPackets:v19];

          [v15 setPacketNumber:{objc_msgSend(v11, "packetNumber")}];
          v16 = v15;
        }

        [v5 addObject:v16];
        v20 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v30 = "[ADSessionRemoteServer _sendServerCommands:]";
          v31 = 2112;
          v32 = v11;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ADSessionRemoteServer _sendServerCommands:]";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Sending commands to connection", buf, 0xCu);
  }

  v22 = [(ADSessionRemoteServer *)self _siriNetworkServerConnection];
  [v22 sendCommands:v5 completion:&stru_10051A208];
}

- (void)_sendServerCommand:(id)a3
{
  v4 = a3;
  [v4 siriCore_invokeThunk];
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[ADSessionRemoteServer _sendServerCommand:]";
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Sending server command: %@", buf, 0x16u);
  }

  v6 = [v4 aceId];

  if (!v6)
  {
    v7 = SiriCoreUUIDStringCreate();
    [v4 setAceId:v7];
  }

  v8 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[ADSessionRemoteServer _sendServerCommand:]";
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  NSClassFromString(@"SiriCoreSpeechPacket");
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_new();
    v10 = [v4 aceId];
    [v9 setAceId:v10];

    v11 = [v4 refId];
    [v9 setRefId:v11];

    v12 = [v4 packets];
    [v9 setPackets:v12];

    [v9 setPacketNumber:{objc_msgSend(v4, "packetNumber")}];
    v13 = v9;
  }

  else
  {
    v13 = 0;
    v9 = v4;
  }

  v14 = [(ADSessionRemoteServer *)self _siriNetworkServerConnection];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002CBBFC;
  v16[3] = &unk_10051C498;
  v17 = v4;
  v15 = v4;
  [v14 sendCommand:v9 completion:v16];

  [v15 siriCore_logDiagnostics];
}

- (void)doSendPreProcessing:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(ADSessionRemoteServer *)self _retryManager];
    [v4 clearNakedObjects];
  }

  v5 = [(ADSessionRemoteServer *)self _retryManager];
  [v5 appendSessionObjectToRequest:v6];
}

- (void)_saCommandFailed:(id)a3
{
  v4 = a3;
  v5 = [v4 refId];
  v6 = [(ADSession *)self state];
  v7 = [v4 errorCode];
  v8 = SAConnectionTerminatedErrorCode;
  if (v7 == SAConnectionTerminatedErrorCode)
  {
    v9 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[ADSessionRemoteServer _saCommandFailed:]";
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s %@", &v14, 0x16u);
    }

    [(ADSessionRemoteServer *)self _resetServerConnection];
  }

  if ([(NSString *)self->_sessionInitCommandId isEqualToString:v5])
  {
    if ((v6 - 8) <= 2)
    {
      v10 = [v4 reason];
      v11 = [v4 ad_error];
      [(ADSessionRemoteServer *)self _assistantFailedForReason:v10 error:v11];
    }
  }

  else if ([(ADSession *)self _refIdIsLimboId:v5])
  {
    v12 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[ADSessionRemoteServer _saCommandFailed:]";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Ignoring command failed for limbo id %@", &v14, 0x16u);
    }

    [(ADSession *)self _removeLimboId:v5];
  }

  else
  {
    [(ADSession *)self _passObjectToDelegate:v4];
  }

  if (v7 == v8)
  {
    v13 = [v4 ad_error];
    [(ADSessionRemoteServer *)self _informDelegateOfError:v13];
  }
}

- (void)_assistantFailedForReason:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_loadRetryStartTime == 0.0)
  {
    v8 = +[NSProcessInfo processInfo];
    [v8 systemUptime];
    self->_loadRetryStartTime = v9;
  }

  v10 = +[NSProcessInfo processInfo];
  [v10 systemUptime];
  v12 = v11 - self->_loadRetryStartTime;

  v13 = AFSiriLogContextSession;
  if (v12 >= 20.0)
  {
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[ADSessionRemoteServer _assistantFailedForReason:error:]";
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Assistant failure (%{public}@). Limit reached, returning error", buf, 0x16u);
    }

    v16 = [AFError errorWithCode:3 description:v6 underlyingError:v7];
    [(ADSession *)self _clearLimbo];
    [(ADSession *)self setState:4];
    [(ADSessionRemoteServer *)self _informDelegateOfError:v16];
    v17 = +[SNNetworkActivityTracing sharedInstance];
    [v17 networkActivityStop:2 withReason:4 andError:v16 completion:0];
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v20 = "[ADSessionRemoteServer _assistantFailedForReason:error:]";
      v21 = 2112;
      v22 = v6;
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Failed loading/creating assistant %@ elapsed time %lf", buf, 0x20u);
    }

    [(ADSessionRemoteServer *)self _resetServerConnection];
    [(ADSession *)self setState:2];
    v14 = dispatch_time(0, 0);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002CC2B0;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_after(v14, queue, block);
  }
}

- (void)_saSetConnectionHeader:(id)a3
{
  v4 = a3;
  v5 = [(ADSession *)self _account];
  v6 = [v5 aceHost];
  v7 = [v4 aceHostHeader];
  if (([(__CFString *)v6 isEqualToString:v7]& 1) == 0)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v27 = "[ADSessionRemoteServer _saSetConnectionHeader:]";
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s local ACEHost:%@ setConnectionHeader ACEHost:%@", buf, 0x20u);
    }

    v9 = +[AFAnalytics sharedAnalytics];
    v10 = &stru_10051F508;
    v22[0] = @"Local";
    v22[1] = @"SAConnectionHeader";
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = &stru_10051F508;
    }

    if (v7)
    {
      v10 = v7;
    }

    v23[0] = v11;
    v23[1] = v10;
    v24 = @"ACEHost";
    v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v25 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v9 logEventWithType:926 context:v13];
  }

  [v5 setAceHost:v7];
  v14 = [v4 connectionPolicy];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 dictionary];
    [v5 setConnectionPolicy:v16];

    v17 = +[NSDate date];
    [v5 setConnectionPolicyDate:v17];

    v18 = [v5 hostname];
    [v5 setConnectionPolicyHostname:v18];
  }

  else
  {
    [v5 setConnectionPolicy:0];
    [v5 setConnectionPolicyDate:0];
    [v5 setConnectionPolicyHostname:0];
  }

  [v5 save];
  if ([v4 reconnectNow])
  {
    useWiFiHint = self->_useWiFiHint;
    v20 = [AFError errorWithCode:16];
    LOBYTE(v21) = 0;
    [(ADSessionRemoteServer *)self _reallyRetryPreferringWWAN:0 skipPeer:0 skipPeerError:0 useWiFiHint:useWiFiHint causedByError:v20 forceReconnect:1 useSecondary:v21];
  }
}

- (void)_saAssistantNotReady:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = "[ADSessionRemoteServer _saAssistantNotReady:]";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Assistant not ready.", buf, 0xCu);
  }

  v6 = [AFError errorWithCode:6 description:@"Assistant not ready" underlyingError:0];
  v7 = [(ADSessionRemoteServer *)self _generateAnalyticsContextWithError:v6];
  [(ADSession *)self _clearLimbo];
  [(ADSessionRemoteServer *)self _resetServerConnection];
  v8 = +[AFAnalytics sharedAnalytics];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1002CC840;
  v15 = &unk_10051A1A0;
  v16 = v7;
  v17 = v4;
  v9 = v4;
  v10 = v7;
  [v8 logEventWithType:910 contextProvider:&v12];

  [(ADSessionRemoteServer *)self _informDelegateOfError:v6, v12, v13, v14, v15];
  v11 = +[SNNetworkActivityTracing sharedInstance];
  [v11 networkActivityStop:2 withReason:4 andError:v6 completion:0];
}

- (void)_saAssistantNotFound:(id)a3
{
  v4 = [(ADSession *)self _account];
  if ([v4 needsDestruction])
  {
    v5 = +[ADDaemon sharedDaemon];
    [v5 unscheduleDestroyJob];
  }

  v6 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = [v4 assistantIdentifier];
    v9 = 136315394;
    v10 = "[ADSessionRemoteServer _saAssistantNotFound:]";
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Couldn't find the requested assistant %@; creating a new one", &v9, 0x16u);
  }

  [v4 clearAssistantData];
  [v4 save];
  [(ADSessionRemoteServer *)self _resetServerConnection];
  [(ADSessionRemoteServer *)self _startConnection];
}

- (void)_saAssistantDestroyed:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[ADSessionRemoteServer _saAssistantDestroyed:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Assistant Destroyed", &v11, 0xCu);
  }

  v6 = [(ADSession *)self _account];
  [v6 clearAssistantData];
  [v6 save];
  v7 = objc_alloc_init(ADAnalyticsFBFDeliveryInfrastructure);
  [(ADAnalyticsFBFDeliveryInfrastructure *)v7 deliverLogViewerIdentifier:0];
  v8 = [(ADSession *)self delegate];
  [v8 assistantSessionDidDestroyAssistant:self];

  v9 = +[ADDaemon sharedDaemon];
  [v9 unscheduleDestroyJob];

  [(ADSessionRemoteServer *)self _resetServerConnection];
  if (self->_hasActiveRequest)
  {
    v10 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[ADSessionRemoteServer _saAssistantDestroyed:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Restarting connection because destroy came in during active request", &v11, 0xCu);
    }

    [(ADSessionRemoteServer *)self _startConnection];
  }
}

- (void)_saAssistantLoaded:(id)a3
{
  v4 = a3;
  v5 = [v4 version];
  v6 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[ADSessionRemoteServer _saAssistantLoaded:]";
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Assistant Loaded Version: %@", buf, 0x16u);
  }

  if ([(ADSessionRemoteServer *)self _performingInternalAuth])
  {
    v7 = AFSiriLogContextInternalAuth;
    if (os_log_type_enabled(AFSiriLogContextInternalAuth, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v32 = "[ADSessionRemoteServer _saAssistantLoaded:]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Looking for AppleConnect session token in SAAssistantLoaded command", buf, 0xCu);
    }

    v8 = [v4 appleConnectSessionToken];
    if (v8)
    {
      v9 = AFSiriLogContextInternalAuth;
      if (os_log_type_enabled(AFSiriLogContextInternalAuth, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v32 = "[ADSessionRemoteServer _saAssistantLoaded:]";
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Found AppleConnect session token in SAAssistantLoaded command - storing token in the Keychain", buf, 0xCu);
      }

      v10 = +[ADPreferences sharedPreferences];
      [v10 setInternalAuthSessionToken:v8];
    }
  }

  sessionInitCommandId = self->_sessionInitCommandId;
  v12 = [v4 refId];
  LOBYTE(sessionInitCommandId) = [(NSString *)sessionInitCommandId isEqualToString:v12];

  if ((sessionInitCommandId & 1) == 0)
  {
    v13 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[ADSessionRemoteServer _saAssistantLoaded:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Assistant Loaded refId does not match our saved assistant command", buf, 0xCu);
    }
  }

  if ([(ADSession *)self state]== 10)
  {
    v14 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v32 = "[ADSessionRemoteServer _saAssistantLoaded:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Waiting on a pending destruction, doing nothing", buf, 0xCu);
    }
  }

  else
  {
    if (self->_isAttemptingRetry)
    {
      self->_isAttemptingRetry = 0;
    }

    [(ADSession *)self setState:11];
    v15 = self->_sessionInitCommandId;
    self->_sessionInitCommandId = 0;

    [(ADSession *)self _setAssistantDataAnchorIfNeeded:v4];
    [(ADSessionRemoteServer *)self _retrieveAndSendHomeContext];
    v16 = [(ADSession *)self _adSessionTypeString];
    v17 = [(ADSession *)self _account];
    v18 = [v17 aceHost];

    v19 = @"remote";
    if (v16)
    {
      v19 = v16;
    }

    v25 = @"sessionType";
    v26 = @"version";
    v20 = &stru_10051F508;
    if (v5)
    {
      v21 = v5;
    }

    else
    {
      v21 = &stru_10051F508;
    }

    v28 = v19;
    v29 = v21;
    v27 = @"localACEHost";
    if (v18)
    {
      v20 = v18;
    }

    v30 = v20;
    v22 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v25 count:3];
    v23 = [AFAnalytics sharedAnalytics:v25];
    [v23 logEventWithType:924 context:v22];

    v24 = +[SNNetworkActivityTracing sharedInstance];
    [v24 networkActivityStop:2 withReason:2 andError:0 completion:0];
  }
}

- (void)_saAssistantCreated:(id)a3
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSessionRemoteServer _saAssistantCreated:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Assistant created response ignored", &v4, 0xCu);
  }
}

- (void)_saCreateSessionInfoResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 refId];
  v6 = [v5 isEqualToString:self->_createSessionInfoRequestId];

  if ((v6 & 1) == 0)
  {
    v12 = AFSiriLogContextSession;
    if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v17 = 136315138;
    v18 = "[ADSessionRemoteServer _saCreateSessionInfoResponse:]";
    v13 = "%s Old session info response ignored";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v13, &v17, 0xCu);
    goto LABEL_16;
  }

  v7 = [v4 sessionInfo];

  if (!v7)
  {
    v12 = AFSiriLogContextSession;
    if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v17 = 136315138;
    v18 = "[ADSessionRemoteServer _saCreateSessionInfoResponse:]";
    v13 = "%s No valid sessionInfo returned";
    goto LABEL_9;
  }

  v8 = [v4 sessionInfo];
  v9 = [v4 validityDuration];
  v10 = [v9 intValue];

  v11 = [(ADSessionRemoteServer *)self _authenticator];
  [v11 setSessionInfo:v8 duration:v10];
  if ([(ADSession *)self state]== 6)
  {
    [(ADSessionRemoteServer *)self _continueAuthentication];
  }

  else
  {
    v14 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[ADSessionRemoteServer _saCreateSessionInfoResponse:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Saving new validity info since we're not currently authenticating", &v17, 0xCu);
    }

    v15 = [(ADSessionRemoteServer *)self _authDataToSign];
    v16 = [v11 signedDataForData:v15];

    if (v16)
    {
      [(ADSessionRemoteServer *)self _setCachedValidationData:v16 withDuration:v10];
    }
  }

LABEL_16:
}

- (void)_saGetSessionCertificateResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 certificate];
  if ([v5 length])
  {
    [(ADSessionRemoteServer *)self _setCachedServerCertificate:v5];
    v6 = [(ADSessionRemoteServer *)self _authenticator];
    [v6 reset];

    [(ADSessionRemoteServer *)self _continueAuthentication];
  }

  else
  {
    v7 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[ADSessionRemoteServer _saGetSessionCertificateResponse:]";
      v10 = 2112;
      v11 = v4;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s No certificate data in response trying anyway %@", &v8, 0x16u);
    }

    [(ADSessionRemoteServer *)self _continueSessionInitWithValidationData:0];
  }
}

- (void)_saSessionValidationFailed:(id)a3
{
  v4 = a3;
  sessionInitCommandId = self->_sessionInitCommandId;
  v6 = [v4 refId];
  v7 = [(NSString *)sessionInitCommandId isEqualToString:v6];

  v8 = AFSiriLogContextSession;
  v9 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v20 = v8;
      v21 = [v4 errorCode];
      *buf = 136315394;
      v28 = "[ADSessionRemoteServer _saSessionValidationFailed:]";
      v29 = 2114;
      v30 = v21;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s SASessionValidationFailed %{public}@", buf, 0x16u);
    }

    [(ADSessionRemoteServer *)self _resetServerConnection];
    if (self->_usingCachedValidationData)
    {
      if (![v4 ad_shouldRetry])
      {
        goto LABEL_13;
      }

LABEL_12:
      self->_forceValidationRefresh = 1;
      [(ADSessionRemoteServer *)self _startConnection];
      goto LABEL_17;
    }

    v10 = [(ADSessionRemoteServer *)self _authenticator];
    if ([v10 state])
    {
    }

    else
    {
      v11 = [v4 ad_shouldRetry];

      if (v11)
      {
        goto LABEL_12;
      }
    }

LABEL_13:
    v12 = [v4 ad_afErrorCode];
    [AFError errorWithCode:v12];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1002CD788;
    v24[3] = &unk_10051E010;
    v13 = v24[4] = self;
    v25 = v13;
    v14 = objc_retainBlock(v24);
    v15 = v14;
    if (v12 == 7000)
    {
      v16 = objc_opt_new();
      [v16 setText:@"AppleConnect authentication is required. Please authenticate with the SiriAuthenticator app before trying your request again."];
      v17 = objc_opt_new();
      v26 = v16;
      v18 = [NSArray arrayWithObjects:&v26 count:1];
      [v17 setViews:v18];

      v19 = +[ADCommandCenter sharedCommandCenter];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1002CD7DC;
      v22[3] = &unk_10051CD88;
      v23 = v15;
      [v19 handleCommand:v17 completion:v22];
    }

    else
    {
      (v14[2])(v14);
    }

    goto LABEL_17;
  }

  if (v9)
  {
    *buf = 136315138;
    v28 = "[ADSessionRemoteServer _saSessionValidationFailed:]";
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unexpected refid in validation failed, ignoring", buf, 0xCu);
  }

LABEL_17:
}

- (void)_handleAceObject:(id)a3
{
  Value = a3;
  v29 = Value;
  if (!self->_commandMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    self->_commandMap = Mutable;
    v6 = objc_opt_class();
    CFDictionarySetValue(Mutable, v6, "_saGetSessionCertificateResponse:");
    commandMap = self->_commandMap;
    v8 = objc_opt_class();
    CFDictionarySetValue(commandMap, v8, "_saCreateSessionInfoResponse:");
    v9 = self->_commandMap;
    v10 = objc_opt_class();
    CFDictionarySetValue(v9, v10, "_saSessionValidationFailed:");
    v11 = self->_commandMap;
    v12 = objc_opt_class();
    CFDictionarySetValue(v11, v12, "_saAssistantCreated:");
    v13 = self->_commandMap;
    v14 = objc_opt_class();
    CFDictionarySetValue(v13, v14, "_saAssistantLoaded:");
    v15 = self->_commandMap;
    v16 = objc_opt_class();
    CFDictionarySetValue(v15, v16, "_saAssistantDestroyed:");
    v17 = self->_commandMap;
    v18 = objc_opt_class();
    CFDictionarySetValue(v17, v18, "_saAssistantNotFound:");
    v19 = self->_commandMap;
    v20 = objc_opt_class();
    CFDictionarySetValue(v19, v20, "_saAssistantNotReady:");
    v21 = self->_commandMap;
    v22 = objc_opt_class();
    CFDictionarySetValue(v21, v22, "_saSetConnectionHeader:");
    v23 = self->_commandMap;
    v24 = objc_opt_class();
    CFDictionarySetValue(v23, v24, "_saGetAssistantData:");
    v25 = self->_commandMap;
    v26 = objc_opt_class();
    CFDictionarySetValue(v25, v26, "_saCommandFailed:");
    Value = v29;
  }

  if (Value)
  {
    v27 = self->_commandMap;
    v28 = objc_opt_class();
    Value = CFDictionaryGetValue(v27, v28);
  }

  if (Value)
  {
    [self Value];
  }

  else
  {
    [(ADSession *)self _passObjectToDelegate:v29];
  }
}

- (void)delegateDidHandleCommand:(id)a3 didRecognizeSpeech:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    v6 = [(ADSessionRemoteServer *)self _retryManager];
    [v6 setLastReceivedCommand:v5];
  }
}

- (void)_eagerAuthDidComplete
{
  if ([(ADSession *)self state]> 3)
  {
    if ([(ADSession *)self state]< 7)
    {

      [(ADSessionRemoteServer *)self _continueAuthentication];
    }

    else
    {
      v4 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v6 = 136315138;
        v7 = "[ADSessionRemoteServer _eagerAuthDidComplete]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s We've already authenticated, reset the authenticator since it's not needed anymore.", &v6, 0xCu);
      }

      v5 = [(ADSessionRemoteServer *)self _authenticator];
      [v5 reset];
    }
  }

  else
  {
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADSessionRemoteServer _eagerAuthDidComplete]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Connection not opened yet, waiting", &v6, 0xCu);
    }
  }
}

- (void)refreshValidationData
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADSessionRemoteServer refreshValidationData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  self->_forceValidationRefresh = 1;
  v7.receiver = self;
  v7.super_class = ADSessionRemoteServer;
  [(ADSession *)&v7 refreshValidationData];
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADSessionRemoteServer refreshValidationData]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ([(ADSession *)self state])
  {
    if ([(ADSession *)self state]>= 7)
    {
      v5 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v9 = "[ADSessionRemoteServer refreshValidationData]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Session has already authenticated. Resetting authenticator to do it again.", buf, 0xCu);
      }

      v6 = [(ADSessionRemoteServer *)self _authenticator];
      [v6 reset];

      self->_badCachedCertRetryCounter = 0;
      self->_certificateFailureCounter = 0;
      [(ADSessionRemoteServer *)self _continueAuthentication];
    }
  }

  else
  {
    [(ADSessionRemoteServer *)self _startConnection];
  }
}

- (void)_continueAuthentication
{
  v3 = [(ADSessionRemoteServer *)self _authenticator];
  v4 = [v3 state];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v7 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v21 = 136315138;
        v22 = "[ADSessionRemoteServer _continueAuthentication]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Authenticator is prepared, but we still need session info", &v21, 0xCu);
      }

      v8 = [v3 requestData];
      [(ADSessionRemoteServer *)self _sendCreateSessionInfoRequestWithData:v8];
      goto LABEL_36;
    }

    if (v4 != 3)
    {
      if (v4 == 4)
      {
        v5 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315138;
          v22 = "[ADSessionRemoteServer _continueAuthentication]";
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Authenticator is unable to prepare.", &v21, 0xCu);
        }

        [(ADSessionRemoteServer *)self _authenticationFailed];
      }

      goto LABEL_37;
    }

    v9 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[ADSessionRemoteServer _continueAuthentication]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Authenticator is ready", &v21, 0xCu);
    }

    v10 = [(ADSessionRemoteServer *)self _authDataToSign];
    v8 = [v3 signedDataForData:v10];

    if (v8)
    {
      v11 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v12 = v11;
        [v3 sessionInfoDuration];
        v21 = 136315394;
        v22 = "[ADSessionRemoteServer _continueAuthentication]";
        v23 = 2048;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Setting cached authentication data with duration %lf", &v21, 0x16u);
      }

      [v3 sessionInfoDuration];
      [(ADSessionRemoteServer *)self _setCachedValidationData:v8 withDuration:?];
      if ([(ADSession *)self state]== 6)
      {
        v14 = [(ADSession *)self _pendingCommands];
        if ([v14 count])
        {
        }

        else
        {
          v18 = [(ADSession *)self _account];
          v19 = [v18 needsDestruction];

          if (!v19)
          {
            v20 = AFSiriLogContextSession;
            if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
            {
              v21 = 136315138;
              v22 = "[ADSessionRemoteServer _continueAuthentication]";
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s We have no pending commands holding", &v21, 0xCu);
            }

            [(ADSession *)self setState:7];
            goto LABEL_36;
          }
        }

        [(ADSessionRemoteServer *)self _continueSessionInitWithValidationData:v8];
LABEL_36:

        goto LABEL_37;
      }
    }

    else if ([(ADSession *)self state]== 6)
    {
      [(ADSessionRemoteServer *)self _authenticationFailed];
      goto LABEL_36;
    }

    v17 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[ADSessionRemoteServer _continueAuthentication]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Not continuing with authentication as session is already active", &v21, 0xCu);
    }

    goto LABEL_36;
  }

  if (!v4)
  {
    v8 = [(ADSessionRemoteServer *)self _cachedServerCertificate];
    v15 = AFSiriLogContextSession;
    v16 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v16)
      {
        v21 = 136315138;
        v22 = "[ADSessionRemoteServer _continueAuthentication]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Have cached certificate data, preparing", &v21, 0xCu);
      }

      self->_usingCachedCertificateData = 1;
      [(ADSessionRemoteServer *)self _continueAuthWithCertificateData:v8];
    }

    else
    {
      if (v16)
      {
        v21 = 136315138;
        v22 = "[ADSessionRemoteServer _continueAuthentication]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Sending request for certificate data", &v21, 0xCu);
      }

      self->_usingCachedCertificateData = 0;
      [(ADSessionRemoteServer *)self _sendGetSessionCertificateData];
    }

    goto LABEL_36;
  }

  if (v4 == 1)
  {
    v6 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[ADSessionRemoteServer _continueAuthentication]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Authenticator is still preparing, let's wait", &v21, 0xCu);
    }
  }

LABEL_37:
}

- (void)_continueAuthWithCertificateData:(id)a3
{
  v4 = a3;
  v5 = [(ADSessionRemoteServer *)self _authenticator];
  siriNetworkServerConnection = self->_siriNetworkServerConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002CE3A4;
  v8[3] = &unk_10051A1C8;
  v9 = v5;
  v10 = siriNetworkServerConnection;
  v8[4] = self;
  v7 = v5;
  [v7 prepareWithCertificateData:v4 completion:v8];
}

- (void)_continueSessionInitWithValidationData:(id)a3
{
  v4 = a3;
  v5 = [(ADSession *)self _account];
  v6 = [v5 assistantIdentifier];
  if (!v6 || [v5 needsCreation])
  {
    [(ADSessionRemoteServer *)self _createAssistant];
  }

  [(ADSessionRemoteServer *)self _sendLoadAssistantWithAccount:v5 validationData:v4];
  v7 = [v5 lastAssistantDataAnchor];
  if ((AFIsHorseman() & 1) != 0 || AFSupportsPairedDevice() && (AFIsNano() & 1) == 0)
  {
    [(ADSessionRemoteServer *)self _sendSetRemoteDevicesWithAccount:v5];
  }

  if (AFSupportsMultiUser())
  {
    [(ADSessionRemoteServer *)self _sendMultiUserInfo];
  }

  if ([v5 needsDestruction])
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADSessionRemoteServer _continueSessionInitWithValidationData:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Assistant needs destruction, sending destroy", &v9, 0xCu);
    }

    [(ADSession *)self _sendDestroyAssistant];
  }

  else
  {
    [(ADSession *)self _sendAssistantDataAndPendingCommandsIfNeeded:v7];
  }
}

- (void)_authenticationFailed
{
  v6 = [AFError errorWithCode:300];
  v3 = [(ADSessionRemoteServer *)self _generateAnalyticsContextWithError:v6];
  v4 = +[AFAnalytics sharedAnalytics];
  [v4 logEventWithType:908 context:v3 contextNoCopy:1];

  v5 = [(ADSessionRemoteServer *)self _authenticator];
  [v5 reset];

  [(ADSession *)self _clearLimbo];
  [(ADSession *)self _setSessionOpened];
  [(ADSessionRemoteServer *)self _informDelegateOfError:v6];
}

- (BOOL)sessionIsAttemptingTryOrRetry
{
  v5.receiver = self;
  v5.super_class = ADSessionRemoteServer;
  return [(ADSession *)&v5 sessionIsAttemptingTryOrRetry]|| self->_isAttemptingRetry;
}

- (void)_retrySiriNetworkForFailedConnection:(id)a3 siriNetworkAnalysisInfo:(id)a4 onError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = COERCE_DOUBLE(a5);
  v11 = AFHasCellularData();
  v12 = [v9 connectionType];
  if (([v9 wwanPreferred] & 1) != 0 || objc_msgSend(v12, "technology") == 3000)
  {
    v40 = 0;
  }

  else
  {
    v40 = ([v12 isWWAN] ^ 1) & v11;
  }

  v13 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    log = v13;
    v14 = [v9 wwanPreferred];
    v15 = self;
    v16 = v9;
    v17 = v8;
    if (v14)
    {
      *&v18 = COERCE_DOUBLE(@"YES");
    }

    else
    {
      *&v18 = COERCE_DOUBLE(@"NO");
    }

    v19 = [v12 technologyDescription];
    *buf = 136316674;
    v50 = "[ADSessionRemoteServer _retrySiriNetworkForFailedConnection:siriNetworkAnalysisInfo:onError:]";
    if ([v12 isWWAN])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    if (v11)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    if (v40)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v51 = 2112;
    v52 = v10;
    v53 = 2112;
    v54 = *&v18;
    v8 = v17;
    v9 = v16;
    self = v15;
    v55 = 2112;
    v56 = *&v19;
    v57 = 2112;
    v58 = v20;
    v59 = 2112;
    v60 = v21;
    v61 = 2112;
    v62 = v22;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s Retry. Error: %@. WWAN Preferred: %@, Connection type: %@, isWWAN: %@, Has Cellular Data: %@, shouldPreferWWAN: %@", buf, 0x48u);
  }

  v23 = [*&v10 userInfo];
  v24 = [v23 objectForKey:SiriNetworkBackgroundConnectionShouldSkipIDSOnNextAttemptKey];
  v25 = [v24 BOOLValue];

  if (v25)
  {
    v26 = v10;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = *&v26;
  v28 = +[NSProcessInfo processInfo];
  [v28 systemUptime];
  v30 = v29;

  v31 = [*&v10 code];
  v32 = v31 == 10;
  v48 = [*&v10 code];
  v33 = 0.0;
  if ([*&v10 ad_requiresDampedRetry:&v48])
  {
    if (![*&v10 sn_isNetworkConnectionRetryableNow] || v30 - self->_lastRetryTimeOnQueue < 2.0)
    {
      v33 = 2.0;
    }

    self->_lastRetryTimeOnQueue = v30;
  }

  if (v31 != 10)
  {
    v34 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v35 = v30 - self->_requestStartTime;
      *buf = 136315906;
      v50 = "[ADSessionRemoteServer _retrySiriNetworkForFailedConnection:siriNetworkAnalysisInfo:onError:]";
      v51 = 2048;
      v52 = v35;
      v53 = 2048;
      v54 = v30;
      v55 = 2112;
      v56 = v10;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Retrying after %lf seconds, now %lf error %@", buf, 0x2Au);
    }
  }

  if (v33 == 0.0)
  {
    [(ADSessionRemoteServer *)self _retryWithParameters:v40 skipPeer:v25 skipPeerError:v27 causedByError:*&v10 useSecondary:v31 == 10];
  }

  else
  {
    v36 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v50 = "[ADSessionRemoteServer _retrySiriNetworkForFailedConnection:siriNetworkAnalysisInfo:onError:]";
      v51 = 2048;
      v52 = v33;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Backing off for %lf seconds", buf, 0x16u);
    }

    self->_waitingForDelayedRetry = 1;
    v37 = dispatch_time(0, (v33 * 1000000000.0));
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002CED64;
    block[3] = &unk_10051A150;
    block[4] = self;
    v42 = v8;
    v45 = v40;
    v46 = v25;
    v43 = v27;
    v44 = *&v10;
    v47 = v32;
    dispatch_after(v37, queue, block);
  }
}

- (void)_reallyRetryPreferringWWAN:(BOOL)a3 skipPeer:(BOOL)a4 skipPeerError:(id)a5 useWiFiHint:(BOOL)a6 causedByError:(id)a7 forceReconnect:(BOOL)a8 useSecondary:(BOOL)a9
{
  v14 = a3;
  v44 = a5;
  v45 = a7;
  v15 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v59 = "[ADSessionRemoteServer _reallyRetryPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:causedByError:forceReconnect:useSecondary:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(ADSession *)self _informDelegateWillRetryOnError:v45];
  self->_isAttemptingRetry = 1;
  v16 = [(ADSession *)self delegate];
  [v16 assistantSession:self beginSessionRetryPreferringWWAN:v14];

  v17 = [(ADSession *)self _sendBuffer];
  v18 = [v17 copy];

  v19 = self;
  [(ADSession *)self _clearSendBuffer];
  [(ADSession *)self _clearLimbo];
  if (a9)
  {
    [(ADSession *)self _setSessionOpened];
  }

  else
  {
    [(ADSessionRemoteServer *)self _resetServerConnection];
  }

  self->_prefersWWAN = v14;
  self->_skipPeer = a4;
  objc_storeStrong(&self->_skipPeerError, a5);
  self->_useWiFiHint = a6;
  self->_forceReconnect = a8;
  v20 = [(ADSession *)self delegate];
  v21 = [v20 assistantSessionCommandsToRestoreStateOnNewConnection:self];

  v43 = v21;
  [(ADSession *)self sendCommands:v21 opportunistically:0];
  v22 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v18, "count")}];
  v47 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v18, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v18;
  v23 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v55;
    v49 = *v55;
    v46 = v22;
    do
    {
      v26 = 0;
      v27 = v47;
      v50 = v24;
      do
      {
        if (*v55 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v54 + 1) + 8 * v26);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [v28 mutableCopy];
        }

        else
        {
          v29 = v28;
        }

        v30 = v29;
        if (([v29 siriCore_isProvisional] & 1) == 0)
        {
          v31 = [v30 aceId];
          v32 = [v30 refId];
          if (v31)
          {
            v33 = [v22 objectForKey:v31];
            if (!v33)
            {
              v33 = SiriCoreUUIDStringCreate();
              [v22 setObject:v33 forKey:v31];
            }

            [v30 setAceId:v33];
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v34 = +[AFAnalytics sharedAnalytics];
              v52[0] = _NSConcreteStackBlock;
              v52[1] = 3221225472;
              v52[2] = sub_1002CF5C0;
              v52[3] = &unk_10051A1A0;
              v52[4] = v31;
              v35 = v33;
              v53 = v35;
              [v34 logEventWithType:911 contextProvider:v52];

              v36 = [(ADSession *)v19 delegate];
              [v36 assistantSession:v19 didChangeRequestIdFrom:v31 toId:v35];

              v37 = [(ADRetryManager *)v19->_retryManager latestMappedRequestId];
              v38 = [v37 isEqualToString:v31];

              if (v38)
              {
                v39 = AFSiriLogContextSession;
                if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v59 = "[ADSessionRemoteServer _reallyRetryPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:causedByError:forceReconnect:useSecondary:]";
                  v60 = 2112;
                  v61 = v31;
                  v62 = 2112;
                  v63 = v35;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Remapping retry manager from %@ to %@", buf, 0x20u);
                }

                [(ADRetryManager *)self->_retryManager setLatestMappedRequestId:v35];
              }

              v40 = AFSiriLogContextSession;
              if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v59 = "[ADSessionRemoteServer _reallyRetryPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:causedByError:forceReconnect:useSecondary:]";
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s creating rollback request", buf, 0xCu);
              }

              v41 = objc_alloc_init(SARollbackRequest);
              [v41 setRequestId:v31];
              v27 = v47;
              [v47 addObject:v41];

              v19 = self;
              v25 = v49;
              v22 = v46;
            }

            if (v32)
            {
              v42 = [v22 objectForKey:v32];
              if (!v42)
              {
                v42 = SiriCoreUUIDStringCreate();
                [v22 setObject:v42 forKey:v32];
              }

              [v30 setRefId:v42];

              v25 = v49;
            }

            [v27 addObject:v30];
          }

          v24 = v50;
        }

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v24);
  }

  [(ADSession *)v19 sendCommands:v47 opportunistically:0];
}

- (void)_retryWithParameters:(BOOL)a3 skipPeer:(BOOL)a4 skipPeerError:(id)a5 causedByError:(id)a6 useSecondary:(BOOL)a7
{
  v10 = a3;
  v12 = a5;
  v13 = a6;
  if (a4 || !sub_100017820())
  {
    LOBYTE(v17) = a7;
    [(ADSessionRemoteServer *)self _reallyRetryPreferringWWAN:v10 skipPeer:1 skipPeerError:v12 useWiFiHint:1 causedByError:v13 forceReconnect:0 useSecondary:v17];
    v16 = [(ADSessionRemoteServer *)self _siriNetworkManager];
    [v16 resetLinkRecommendationInfo];
  }

  else
  {
    v14 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v25 = "[ADSessionRemoteServer _retryWithParameters:skipPeer:skipPeerError:causedByError:useSecondary:]";
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s Peer is nearby", buf, 0xCu);
    }

    v15 = [(ADSessionRemoteServer *)self _siriNetworkManager];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002CF824;
    v18[3] = &unk_10051A178;
    v18[4] = self;
    v21 = v10;
    v22 = a4;
    v19 = v12;
    v20 = v13;
    v23 = a7;
    [v15 getLinkRecommendation:1 recommendation:v18];
  }
}

- (id)_authDataToSign
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(ADSession *)self _account];
  v5 = [v4 assistantIdentifier];

  if (v5)
  {
    [v3 setObject:v5 forKey:@"Assistant Identifier"];
  }

  if ((AFIsInternalInstall() & 1) != 0 || AFPreferencesTestAccessEnabled())
  {
    [v3 setObject:&__kCFBooleanTrue forKey:@"9E5BD479-1D3E-400D-ADF7-ECB0A7DBFE06"];
  }

  if ([v3 count])
  {
    v6 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_persistValidationData:(id)a3 withExpiration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ADSession *)self _account];
  v9 = [v8 setValidationDataSync:v7];

  if (v9)
  {
    v10 = [(ADSessionRemoteServer *)self _authenticator];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 authenticationStrategyVersion]);
    [v8 setValidationVersion:v11];

    [v8 setValidationExpiration:v6];
    [v8 save];
  }

  else
  {
    v12 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[ADSessionRemoteServer _persistValidationData:withExpiration:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Failed to persist validation data", &v14, 0xCu);
    }
  }

  return v9;
}

- (void)_setCachedValidationData:(id)a3 withDuration:(double)a4
{
  v6 = a3;
  v7 = [[NSDate alloc] initWithTimeIntervalSinceNow:a4];
  v8 = [(ADSessionRemoteServer *)self _persistValidationData:v6 withExpiration:v7];
  if (v6 && v8)
  {
    v9 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v14 = 136315650;
      v15 = "[ADSessionRemoteServer _setCachedValidationData:withDuration:]";
      v16 = 1024;
      v17 = a4;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Validity is valid for %d seconds %@", &v14, 0x1Cu);
    }

    v10 = +[ADDaemon sharedDaemon];
    [v10 scheduleValidationRefreshForInterval:a4];
  }

  cachedValidationData = self->_cachedValidationData;
  self->_cachedValidationData = v6;
  v12 = v6;

  cachedValidationDataExpiration = self->_cachedValidationDataExpiration;
  self->_cachedValidationDataExpiration = v7;
}

- (void)_setCachedServerCertificate:(id)a3
{
  v4 = a3;
  v5 = [(ADSession *)self _account];
  [v5 setServerCertificateData:v4];

  v6 = [(ADSession *)self _account];
  v7 = [(ADSessionRemoteServer *)self _authenticator];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 authenticationStrategyVersion]);
  [v6 setValidationVersion:v8];

  v9 = [(ADSession *)self _account];
  [v9 save];
}

- (id)_cachedServerCertificate
{
  v3 = [(ADSession *)self _account];
  v4 = [v3 serverCertificateData];

  if (![v4 length])
  {
    v6 = 0;
    goto LABEL_7;
  }

  v5 = [(ADSessionRemoteServer *)self _versionForCachedValidationDataMatchesCurrentVersion];
  v6 = v4;
  if (v5)
  {
LABEL_7:
    v9 = v6;
    goto LABEL_8;
  }

  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[ADSessionRemoteServer _cachedServerCertificate]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Resetting cached certificate data due to cached version not matching current version.", &v11, 0xCu);
  }

  v8 = [(ADSession *)self _account];
  [v8 setServerCertificateData:0];

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)_informDelegateOfError:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315394;
    v19 = "[ADSessionRemoteServer _informDelegateOfError:]";
    v20 = 2114;
    *v21 = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s %{public}@", &v18, 0x16u);
  }

  v6 = [(ADSessionRemoteServer *)self _retryManager];
  [v6 setNeedsToRetryNakedObjects];
  v7 = [(ADSessionRemoteServer *)self _retryManager];
  if (![v7 shouldRetryOnConnectionFailure])
  {

    goto LABEL_8;
  }

  if (!v4)
  {
    v9 = 1;
    goto LABEL_16;
  }

  v8 = [v4 ad_isRetryableSessionError];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v6 shouldRetryOnConnectionFailure];
      v13 = [v4 ad_isRetryableSessionError];
      v18 = 136315650;
      v19 = "[ADSessionRemoteServer _informDelegateOfError:]";
      v20 = 1024;
      *v21 = v12;
      *&v21[4] = 1024;
      *&v21[6] = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Not retrying shouldRetry %d retryableError %d", &v18, 0x18u);
    }

    self->_isAttemptingRetry = 0;
    if ([v4 ad_isAssistantNotReadyError])
    {
      [v6 clearNakedObjects];
    }

    v14 = [(ADSession *)self _requestId];

    if (!v14)
    {
      v9 = 0;
      goto LABEL_17;
    }

    v7 = objc_alloc_init(SACommandIgnored);
    v15 = [(ADSession *)self _requestId];
    [v7 setRefId:v15];

    [(ADSession *)self _informDelegateCannotHandleRequest:v7 error:v4];
    [(ADSessionRemoteServer *)self resetRetryManager];
    v16 = [(ADSessionRemoteServer *)self _siriNetworkManager];
    [v16 releaseWiFiAssertion];

    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = 1;
LABEL_17:
  v17 = [(ADSession *)self delegate];
  [v17 assistantSession:self receivedError:v4 isRetryableError:v9];
}

- (void)resetRetryManager
{
  v2 = [(ADSessionRemoteServer *)self _retryManager];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSessionRemoteServer resetRetryManager]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Resetting retry manager", &v4, 0xCu);
  }

  [v2 endRetryableRequestForCommand:0];
}

- (void)startRetry
{
  v3 = [(ADSessionRemoteServer *)self _retryManager];
  v4 = [v3 retryRequestId];
  v5 = [v3 latestMappedRequestId];
  if (!v4)
  {
    v4 = SiriCoreUUIDStringCreate();
  }

  [(ADRetryManager *)self->_retryManager setLatestMappedRequestId:v4];
  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315650;
      v15 = "[ADSessionRemoteServer startRetry]";
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Changing requestId from %@ to %@ ", &v14, 0x20u);
    }

    v7 = [(ADSession *)self delegate];
    [v7 assistantSession:self didChangeRequestIdFrom:v5 toId:v4];
  }

  v8 = +[SNNetworkActivityTracing sharedInstance];
  [v8 networkActivityStart:6 activate:1 completion:0];

  v9 = [v3 objectsToRetry];
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v9 count];
    v14 = 136315394;
    v15 = "[ADSessionRemoteServer startRetry]";
    v16 = 2048;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Retrying %lu objects on session failure", &v14, 0x16u);
  }

  self->_isRequestRetry = 1;
  v13 = [(ADSession *)self delegate];
  [v13 assistantSessionRetryingRequest:self];

  [(ADSession *)self sendCommands:v9 opportunistically:0];
}

- (BOOL)_connectionErrorIsTimeout:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:NSPOSIXErrorDomain])
  {
    v5 = [v3 code] == 60;
  }

  else
  {
    v6 = [v3 domain];
    if ([v6 isEqualToString:kNWErrorDomainPOSIX])
    {
      v5 = [v3 code] == 60;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = [v3 domain];
  if ([v7 isEqualToString:SiriNetworkBackgroundConnectionErrorDomain])
  {
  }

  else
  {
    v8 = [v3 domain];
    v9 = [v8 isEqualToString:SiriNetworkNetworkConnectionErrorDomain];

    if (!v9)
    {
      goto LABEL_20;
    }
  }

  v10 = [v3 userInfo];
  v11 = [v10 objectForKey:NSUnderlyingErrorKey];

  v12 = [v11 domain];
  if ([v12 isEqualToString:NSPOSIXErrorDomain])
  {
    v5 = [v11 code] == 60;
  }

  else
  {
    v13 = [v11 domain];
    if ([v13 isEqualToString:kNWErrorDomainPOSIX])
    {
      v5 = [v11 code] == 60;
    }

    else
    {
      v14 = [v11 domain];
      v15 = [v14 lowercaseString];
      if ([v15 containsString:@"nwerror"])
      {
        v5 = [v11 code] == 60;
      }

      else
      {
        v5 = 0;
      }
    }
  }

LABEL_20:
  return v5;
}

- (BOOL)_connectionErrorSuggestsConnectionPolicyReset:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:SiriCoreSiriConnectionErrorDomain];

  if (v5)
  {
    v6 = (([v3 code] - 1) & 0xFFFFFFFFFFFFFFF7) == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 domain];
  v8 = [v7 isEqualToString:SiriNetworkBackgroundConnectionErrorDomain];

  if (v8)
  {
    v6 |= [v3 code] == 1;
  }

  return v6 & 1;
}

- (BOOL)_connectionErrorIsRedirect:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:SiriCoreSiriConnectionErrorDomain] && !objc_msgSend(v3, "code"))
  {
    v9 = [v3 userInfo];
    v10 = [v9 objectForKey:SiriCoreSiriConnectionHTTPErrorStatusCodeKey];
    v5 = [v10 intValue] == 301;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 domain];
  if ([v6 isEqualToString:SiriNetworkBackgroundConnectionErrorDomain] && !objc_msgSend(v3, "code"))
  {
    v11 = [v3 userInfo];
    v12 = [v11 objectForKey:SiriNetworkBackgroundConnectionHTTPErrorStatusCodeKey];
    v7 = [v12 intValue] == 301;
  }

  else
  {
    v7 = 0;
  }

  return v5 || v7;
}

- (void)_updateConnectionPolicyFailureCount:(id)a3
{
  v4 = a3;
  v5 = [(ADSession *)self _account];
  v6 = [v5 connectionPolicy];

  if (v6)
  {
    v7 = [(ADSession *)self _account];
    v8 = [v7 connectionPolicyFailureCount];
    v9 = [v4 domain];
    v10 = [v9 isEqualToString:SiriCoreSiriConnectionErrorDomain];

    if (v10)
    {
      v11 = __ROR8__([v4 code], 1);
      if (v11 <= 6)
      {
        if (v11)
        {
          if (v11 != 2)
          {
            goto LABEL_32;
          }

LABEL_23:
          if (v8)
          {
            if (!++v8)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v24 = +[NSDate date];
            [v7 setConnectionPolicyFirstFailureDate:v24];

            v8 = 1;
          }

LABEL_33:
          v26 = AFSiriLogContextSession;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
          {
            v28 = 136315394;
            v29 = "[ADSessionRemoteServer _updateConnectionPolicyFailureCount:]";
            v30 = 1024;
            v31 = v8;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Setting failure count of %d", &v28, 0x12u);
          }

          [v7 setConnectionPolicyFailureCount:v8];
          goto LABEL_36;
        }

        v15 = [v4 userInfo];
        v16 = v15;
        v17 = &SiriCoreSiriConnectionHTTPErrorStatusCodeKey;
LABEL_22:
        v22 = [v15 objectForKey:*v17];
        v23 = [v22 intValue];

        if (v23 != 503)
        {
          goto LABEL_32;
        }

        goto LABEL_23;
      }

      if (v11 == 7)
      {
        goto LABEL_23;
      }

      if (v11 == 8)
      {
        v18 = [v4 userInfo];
        v19 = [v18 objectForKey:NSUnderlyingErrorKey];

        if (!v19 || ([v19 ad_isNetworkDownError] & 1) == 0)
        {
          if (v8)
          {
            ++v8;
          }

          else
          {
            v25 = +[NSDate date];
            [v7 setConnectionPolicyFirstFailureDate:v25];

            v8 = 1;
          }
        }

        [(ADSessionRemoteServer *)self _adjustAceHeaderTimeout:0];
      }
    }

    else
    {
      v12 = [v4 domain];
      v13 = [v12 isEqualToString:SiriNetworkBackgroundConnectionErrorDomain];

      if (v13)
      {
        v14 = [v4 code];
        if (v14 == 6)
        {
          goto LABEL_23;
        }

        if (v14 == 5)
        {
          if (([v4 ad_isNetworkDownError] & 1) == 0)
          {
            if (v8)
            {
              ++v8;
            }

            else
            {
              v27 = +[NSDate date];
              [v7 setConnectionPolicyFirstFailureDate:v27];

              v8 = 1;
            }
          }

          [(ADSessionRemoteServer *)self _adjustAceHeaderTimeout:0];
          if (!v8)
          {
            goto LABEL_36;
          }

          goto LABEL_33;
        }

        if (!v14)
        {
          v15 = [v4 userInfo];
          v16 = v15;
          v17 = &SiriNetworkBackgroundConnectionHTTPErrorStatusCodeKey;
          goto LABEL_22;
        }
      }

      else
      {
        v20 = [v4 domain];
        v21 = [v20 isEqualToString:SiriNetworkNetworkConnectionErrorDomain];

        if (v21 && [v4 code] == 2)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_32:
    if (v8)
    {
      goto LABEL_33;
    }

LABEL_36:
  }
}

- (BOOL)_shouldRetry
{
  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  v5 = v4;

  v6 = (self->_hasActiveRequest || [(ADSession *)self state]<= 10) && v5 - self->_requestStartTime < 20.0 && v5 - self->_lastRetryTimeOnQueue >= 2.0;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    if (self->_hasActiveRequest)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v7;
    if ([(ADSession *)self state]>= 11)
    {
      v10 = @"NO";
    }

    else
    {
      v10 = @"YES";
    }

    if (v5 - self->_requestStartTime >= 20.0)
    {
      v11 = @"NO";
    }

    else
    {
      v11 = @"YES";
    }

    v12 = v5 - self->_lastRetryTimeOnQueue;
    v16 = 136316674;
    v17 = "[ADSessionRemoteServer _shouldRetry]";
    v18 = 2112;
    v19 = v8;
    if (v12 < 2.0)
    {
      v13 = @"NO";
    }

    else
    {
      v13 = @"YES";
    }

    v20 = 2112;
    if (v6)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = @"YES";
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Has Active Request: %@, Session active: %@, RapidRetryTimeLimit: %@, DampedRapidRetryBackoff: %@, Network present: %@, Should Retry: %@", &v16, 0x48u);
  }

  return v6;
}

- (void)_siriNetworkConnection:(id)a3 didEncounterError:(id)a4 siriNetworkAnalysisInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_siriNetworkServerConnection == v8)
  {
    v11 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v62 = v11;
      v63 = [v10 connectionURL];
      if ([v10 wwanPreferred])
      {
        v64 = @"YES";
      }

      else
      {
        v64 = @"NO";
      }

      v65 = [v10 connectionType];
      *buf = 136316418;
      v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
      v76 = 2114;
      v77 = v8;
      v78 = 2114;
      v79 = v9;
      v80 = 2112;
      v81 = v63;
      v82 = 2112;
      v83 = v64;
      v84 = 2112;
      v85 = v65;
      _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%s SiriNetwork %{public}@ %{public}@, URL (%@), WWAN Prefered (%@), connection Type (%@)", buf, 0x3Eu);
    }

    if (!AFIsInternalInstall())
    {
LABEL_29:
      v28 = [(ADSessionRemoteServer *)self _connectionErrorIsTimeout:v9];
      v29 = [(ADSessionRemoteServer *)self _generateAnalyticsContextWithError:v9];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_1002D1994;
      v70[3] = &unk_10051A128;
      v30 = v10;
      v71 = v30;
      v68 = v29;
      v72 = v68;
      v73 = self;
      v69 = objc_retainBlock(v70);
      v31 = [(ADSession *)self state];
      v32 = [(ADSession *)self delegate];
      v33 = v32;
      if (v31 < 5 || (v28 & 1) != 0)
      {
        [v32 updateConnectionDidFailAggdMetrics];

        v38 = [(ADSession *)self delegate];
        v39 = [(ADSession *)self _currentSNConnectionType];
        [v38 updateConnectionSetConnectionType:{objc_msgSend(v39, "aggregatorConnectionType")}];

        v34 = +[AFAnalytics sharedAnalytics];
        v35 = v34;
        queue = self->_queue;
        if (v28)
        {
          v37 = 904;
        }

        else
        {
          v37 = 906;
        }
      }

      else
      {
        [v32 updateConnectionDidDropAggdMetrics];

        v34 = +[AFAnalytics sharedAnalytics];
        v35 = v34;
        queue = self->_queue;
        v37 = 905;
      }

      [v34 logEventWithType:v37 contextProvider:v69 contextProvidingQueue:queue];

      v40 = [(ADSession *)self connectionMode];
      v41 = [(ADSession *)self _adSessionTypeString];
      v42 = [(ADSession *)self state];
      if (v42 > 0xB)
      {
        v43 = @"unknown";
      }

      else
      {
        v43 = *(&off_1005178E8 + v42);
      }

      v44 = v43;
      v45 = [SNNetworkAnalytics sessionConnectionFailedError:v9 connectionMode:v40 sessionType:v41 sessionState:v44 dormant:[(ADSession *)self dormant] connectionAnalysisInfo:v30];

      if (v45)
      {
        v46 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
        [v46 logSessionConnectionFailed:v45];
      }

      if ([(ADSessionRemoteServer *)self _connectionErrorSuggestsConnectionPolicyReset:v9])
      {
        v47 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s Error suggests bad connection policy; reverting to factory policy.", buf, 0xCu);
        }

        v48 = [(ADSession *)self _account];
        [v48 setConnectionPolicy:0];

        v49 = [(ADSession *)self _account];
        [v49 setConnectionPolicyDate:0];

        v50 = [(ADSession *)self _account];
        [v50 setConnectionPolicyHostname:0];

        v51 = [(ADSession *)self _account];
        [v51 save];

        [(ADSessionRemoteServer *)self _resetConnectionPolicyDenying];
      }

      [(ADSessionRemoteServer *)self _updateConnectionPolicyFailureCount:v9];
      if ([(ADSessionRemoteServer *)self _connectionErrorIsRedirect:v9]&& AFIsInternalInstall())
      {
        v52 = [(NSString *)v9 userInfo];
        v53 = [v52 objectForKey:SiriNetworkBackgroundConnectionHTTPRedirectValueKey];

        v54 = self->_currentConnectionHostname;
        v55 = +[ADPreferences sharedPreferences];
        if (v53)
        {
          if (([(SNConnection *)v53 isEqualToString:v54]& 1) == 0)
          {
            v56 = [v55 redirectForServerURLString:v53];

            if (!v56)
            {
              v66 = AFSiriLogContextSession;
              if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
                v76 = 2112;
                v77 = v53;
                v78 = 2112;
                v79 = v54;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "%s Got redirect %@ for %@", buf, 0x20u);
              }

              [v55 setRedirect:v53 forServerURLString:v54];
              [v55 synchronize];

              goto LABEL_69;
            }
          }
        }

        v57 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
          v76 = 2114;
          v77 = v53;
          v78 = 2114;
          v79 = v54;
          _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%s Ignoring redirect %{public}@ for %{public}@", buf, 0x20u);
        }
      }

      if (v9 && !-[NSString ad_isRetryableConnectionError](v9, "ad_isRetryableConnectionError") || self->_isAttemptingRetry && !-[NSString ad_isStricterRetryableConnectionError](v9, "ad_isStricterRetryableConnectionError") || !-[ADSessionRemoteServer _shouldRetry](self, "_shouldRetry") || -[ADSession state](self, "state") >= 11 && (-[ADSession delegate](self, "delegate"), v58 = objc_claimAutoreleasedReturnValue(), v59 = [v58 assistantSessionShouldAttemptRetry:self], v58, !v59))
      {
        v60 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s No retrying", buf, 0xCu);
        }

        v61 = [(ADSessionRemoteServer *)self _siriNetworkManager];
        [v61 releaseWiFiAssertion];

        [(ADSession *)self _clearLimbo];
        [(ADSessionRemoteServer *)self _resetServerConnection];
        [(ADSessionRemoteServer *)self _informDelegateOfError:v9];
LABEL_72:

        goto LABEL_73;
      }

LABEL_69:
      v67 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s Retrying", buf, 0xCu);
      }

      [(ADSessionRemoteServer *)self _retrySiriNetworkForFailedConnection:v8 siriNetworkAnalysisInfo:v30 onError:v9];
      goto LABEL_72;
    }

    v12 = [(NSString *)v9 code];
    v13 = [(ADSession *)self _account];
    v14 = [v13 predefinedServer];

    v15 = [(NSString *)v9 domain];
    if ([v15 isEqualToString:kCFErrorDomainCFNetwork])
    {
      if ((v12 - 1) < 2)
      {

LABEL_22:
        if (v14)
        {
LABEL_28:

          goto LABEL_29;
        }

        v27 = AFSiriLogContextSession;
        if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          goto LABEL_26;
        }

        *buf = 136315138;
        v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
        v24 = "%s Not using a predefined server.";
        v25 = v27;
        v26 = 12;
        goto LABEL_25;
      }

      if (v12 == -1003)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v16 = [(NSString *)v9 domain];
    v17 = [v16 isEqualToString:SiriCoreSiriConnectionErrorDomain];

    if (v17 && v12 == 16)
    {
      v18 = [(NSString *)v9 userInfo];
      v19 = [v18 objectForKey:NSUnderlyingErrorKey];

      v20 = [v19 domain];
      if ([v20 isEqualToString:kNWErrorDomainDNS])
      {
        v21 = [v19 code];

        if (v21 != -65554 || v14)
        {
          goto LABEL_27;
        }

        v22 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Server Unreachable", buf, 0xCu);
        }

        [NSError errorWithDomain:kAFAssistantErrorDomain code:14 userInfo:0];
        v9 = v20 = v9;
      }

LABEL_27:
      goto LABEL_28;
    }

    if (![(NSString *)v9 ad_isUnreachableError]|| v14)
    {
      goto LABEL_28;
    }

    v23 = AFSiriLogContextSession;
    if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
LABEL_26:
      [NSError errorWithDomain:kAFAssistantErrorDomain code:14 userInfo:0];
      v9 = v19 = v9;
      goto LABEL_27;
    }

    *buf = 136315394;
    v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
    v76 = 2112;
    v77 = v9;
    v24 = "%s Server Unreachable: %@";
    v25 = v23;
    v26 = 22;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, v24, buf, v26);
    goto LABEL_26;
  }

LABEL_73:
}

- (void)didEncounterError:(id)a3 error:(id)a4 analysisInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002D1C3C;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)_siriNetworkConnection:(id)a3 didEncounterIntermediateError:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(ADSession *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(ADSession *)self delegate];
      [v9 assistantSession:self receivedIntermediateError:v6];
    }
  }
}

- (void)didEncounterIntermediateError:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002D1DC0;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)didCloseConnection:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002D1E70;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)didReceiveAceObject:(id)a3 object:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002D2164;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)didOpenConnectionType:(id)a3 type:(id)a4 routeId:(id)a5 delay:(double)a6 method:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  siriNetworkServerConnection = self->_siriNetworkServerConnection;
  if (siriNetworkServerConnection == v11)
  {
    v16 = [(SNConnection *)siriNetworkServerConnection connectionInfo];
    v17 = [v16 connectionPolicy];
    v15 = [v17 policyId];

    v18 = [(ADSession *)self _currentSNConnectionType];
    LODWORD(v17) = [v18 isEdge];

    if (v17)
    {
      [(ADSessionRemoteServer *)self _adjustAceHeaderTimeout:1];
    }
  }

  else
  {
    v15 = 0;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002D2494;
  block[3] = &unk_10051A0D8;
  block[4] = self;
  v34 = v11;
  v20 = v12;
  v35 = v20;
  v21 = v15;
  v36 = v21;
  v22 = v13;
  v37 = v22;
  v38 = a6;
  v23 = v11;
  dispatch_async(queue, block);
  v24 = +[AFAnalytics sharedAnalytics];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1002D251C;
  v28[3] = &unk_10051A100;
  v29 = v21;
  v30 = v22;
  v32 = a6;
  v31 = v20;
  v25 = v20;
  v26 = v22;
  v27 = v21;
  [v24 logEventWithType:901 contextProvider:v28];
}

- (void)willStartConnection:(id)a3 with:(id)a4
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADSessionRemoteServer willStartConnection:with:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }
}

- (void)willStartConnection:(id)a3 type:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[ADSessionRemoteServer willStartConnection:type:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s connectionType=%@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002D27D8;
  v9[3] = &unk_10051E010;
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_async(queue, v9);
}

- (void)_cancelSynchronously:(BOOL)a3
{
  v3 = a3;
  v5 = [(ADSessionRemoteServer *)self _siriNetworkManager];
  [v5 releaseWiFiAssertion];

  [SNNetworkManager releaseDormancySuspendAssertion:&self->_dormancySuspendAssertion];
  self->_dormancySuspendAssertion = 0;
  v7.receiver = self;
  v7.super_class = ADSessionRemoteServer;
  [(ADSession *)&v7 _cancelSynchronously:v3];
  retryManager = self->_retryManager;
  self->_retryManager = 0;
}

- (void)_startSiriNetworkConnectionPreferringWWAN:(BOOL)a3 skipPeer:(BOOL)a4 skipPeerError:(id)a5 useWiFiHint:(BOOL)a6 forceReconnect:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v12 = a5;
  v13 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v39 = "[ADSessionRemoteServer _startSiriNetworkConnectionPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Starting connection.", buf, 0xCu);
  }

  v14 = [(ADSessionRemoteServer *)self _connectionURLHostname];
  if ([v14 length])
  {
    [(ADSession *)self _requestForAssistantData];
    v15 = [NSURL URLWithString:v14];
    v16 = [v15 host];

    v17 = [(ADSessionRemoteServer *)self _siriNetworkManager];
    [v17 startMonitoringNetworkForHost:v16];

    v18 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v39 = "[ADSessionRemoteServer _startSiriNetworkConnectionPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Starting monitoring %@", buf, 0x16u);
    }

    v19 = [(ADSessionRemoteServer *)self _connectionInfoWithPreferWWAN:v10 skipPeer:v9 skipPeerError:v12 useWiFiHint:v8 forceReconnect:v7];
    v20 = [SNConnection alloc];
    v21 = qword_100590558;
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_UNSPECIFIED, 0);

    v24 = dispatch_queue_create_with_target_V2("SiriNetworkConnection", v23, v21);
    v25 = [v20 initWithConnectionInfo:v19 connectionQueue:v24];
    siriNetworkServerConnection = self->_siriNetworkServerConnection;
    self->_siriNetworkServerConnection = v25;

    [(SNConnection *)self->_siriNetworkServerConnection setDelegate:self];
    if (self->_hasActiveRequest)
    {
      v27 = [(ADSession *)self delegate];
      v28 = [v27 assistantSessionShouldPrewarmConnetion:self];

      if (v28)
      {
        [(SNConnection *)self->_siriNetworkServerConnection setSendPings:1];
      }
    }

    v29 = [(SNConnection *)self->_siriNetworkServerConnection start];
    v30 = +[AFAnalytics sharedAnalytics];
    [v30 logEventWithType:912 context:0];

    if (![(ADSessionRemoteServer *)self _authenticationDisabled])
    {
      v31 = [(ADSessionRemoteServer *)self _cachedValidationData];
      if (!v31 || (forceValidationRefresh = self->_forceValidationRefresh, v31, forceValidationRefresh))
      {
        v33 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v39 = "[ADSessionRemoteServer _startSiriNetworkConnectionPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s No cached validation data beginning eager auth", buf, 0xCu);
        }

        v34 = [(ADSessionRemoteServer *)self _cachedServerCertificate];
        v35 = [(ADSessionRemoteServer *)self _authenticator];
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_1002D2D60;
        v37[3] = &unk_10051A038;
        v37[4] = self;
        [v35 prepareWithCertificateData:v34 completion:v37];
      }
    }

    [(ADSession *)self setState:3];
  }

  else
  {
    v16 = [AFError errorWithCode:25];
    [(ADSessionRemoteServer *)self _informDelegateOfError:v16];
    v36 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v39 = "[ADSessionRemoteServer _startSiriNetworkConnectionPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s Hostname invalid in configuration", buf, 0xCu);
    }
  }
}

- (void)setHasActiveRequest:(BOOL)a3
{
  if (self->_hasActiveRequest != a3)
  {
    self->_hasActiveRequest = a3;
    v5 = [(ADSession *)self delegate];
    v6 = [v5 assistantSessionShouldPrewarmConnetion:self];

    v7 = [(ADSessionRemoteServer *)self _siriNetworkServerConnection];
    [v7 setSendPings:self->_hasActiveRequest & v6 & 1];

    hasActiveRequest = self->_hasActiveRequest;
    v9 = +[NSProcessInfo processInfo];
    [v9 systemUptime];
    if (hasActiveRequest)
    {
      self->_requestStartTime = v10;

      [(ADSession *)self setDormant:0];
      if ((v6 & 1) == 0)
      {
LABEL_9:
        self->_isRequestRetry = 0;
        [(ADSession *)self setCanHandleRequest:1];
        pairedWatchUniqueId = self->_pairedWatchUniqueId;
        self->_pairedWatchUniqueId = 0;

        goto LABEL_10;
      }

      [SNNetworkManager acquireDormancySuspendAssertion:&self->_dormancySuspendAssertion];
      v11 = +[SNNetworkActivityTracing sharedInstance];
      [v11 networkActivityStart:1 activate:1 completion:0];
    }

    else
    {
      self->_requestEndTime = v10;

      [SNNetworkManager releaseDormancySuspendAssertion:&self->_dormancySuspendAssertion];
      self->_dormancySuspendAssertion = 0;
      if (self->_checkForWiFiTransitionOnRequestEnd)
      {
        self->_checkForWiFiTransitionOnRequestEnd = 0;
        [(ADSessionRemoteServer *)self _recheckForWiFiTransition];
      }

      [(ADSession *)self _setRequestId:0];
      v12 = +[SNNetworkActivityTracing sharedInstance];
      [v12 networkActivityStop:5 withReason:1 andError:0 completion:0];

      v11 = +[SNNetworkActivityTracing sharedInstance];
      [v11 networkActivityStop:6 withReason:1 andError:0 completion:0];
    }

    goto LABEL_9;
  }

LABEL_10:
  if (!a3)
  {
    [(ADSession *)self _clearSendBuffer];
    retryManager = self->_retryManager;

    [(ADRetryManager *)retryManager clearNakedObjects];
  }
}

- (BOOL)_connectionIsWWAN
{
  v2 = [(ADSession *)self _currentSNConnectionType];
  v3 = [v2 isWWAN];

  return v3;
}

- (void)_resetServerConnectionSynchronously:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(ADSession *)self setState:0];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1002D32F0;
  v25[3] = &unk_10051A088;
  v27 = v4;
  v7 = v6;
  v25[4] = self;
  v26 = v7;
  v8 = objc_retainBlock(v25);
  siriNetworkServerConnection = self->_siriNetworkServerConnection;
  if (siriNetworkServerConnection)
  {
    [(SNConnection *)siriNetworkServerConnection setDelegate:0];
    v10 = self->_siriNetworkServerConnection;
    if (self->_isAttemptingRetry || self->_waitingForDelayedRetry)
    {
      (v8[2])(v8, v10, 0);
    }

    else
    {
      objc_initWeak(&location, self);
      dispatch_group_enter(self->_metricsGroup);
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_1002D3420;
      v19 = &unk_10051A0B0;
      objc_copyWeak(&v23, &location);
      v20 = self;
      v22 = v8;
      v21 = v10;
      [(SNConnection *)v21 getSNConnectionMetrics:v4 completion:&v16];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    v11 = self->_siriNetworkServerConnection;
    self->_siriNetworkServerConnection = 0;
  }

  else if (v7)
  {
    v7[2](v7);
  }

  [(ADSession *)self _setSNCurrentConnectionType:0, v16, v17, v18, v19, v20];
  currentConnectionURL = self->_currentConnectionURL;
  self->_currentConnectionURL = 0;

  currentConnectionHostname = self->_currentConnectionHostname;
  self->_currentConnectionHostname = 0;

  self->_prefersWWAN = 0;
  self->_skipPeer = 0;
  skipPeerError = self->_skipPeerError;
  self->_skipPeerError = 0;

  self->_forceReconnect = 0;
  [(ADAuthenticator *)self->_authenticator reset];
  self->_badCachedCertRetryCounter = 0;
  self->_certificateFailureCounter = 0;
  v15 = [(ADSession *)self delegate];
  [v15 assistantSessionConnectionDidReset:self];
}

- (id)_connectionInfoWithPreferWWAN:(BOOL)a3 skipPeer:(BOOL)a4 skipPeerError:(id)a5 useWiFiHint:(BOOL)a6 forceReconnect:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v73 = a3;
  v74 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [(ADSession *)self _account];
  v79 = [(ADSessionRemoteServer *)self _connectionURLHostname];
  v13 = [v12 connectionPolicy];
  v14 = [v12 connectionPolicyDate];
  v15 = [v12 connectionPolicyHostname];
  v16 = [v12 aceHost];
  [v11 setAceHost:v16];

  v77 = v8;
  v76 = v13;
  v78 = v15;
  v75 = v7;
  if (([v12 needsDestruction] & 1) == 0 && !objc_msgSend(v12, "needsCreation"))
  {
    if (!v13 || !v14 || !v15)
    {
      if (v13)
      {
        v21 = v14;
        if (v14)
        {
          if (v78)
          {
            goto LABEL_8;
          }

          v53 = AFSiriLogContextSession;
          if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
          {
            goto LABEL_8;
          }

          *buf = 136315138;
          v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
          v54 = "%s Connection policy has no hostname; ignoring it";
        }

        else
        {
          v53 = AFSiriLogContextSession;
          if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
          {
            goto LABEL_8;
          }

          *buf = 136315138;
          v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
          v54 = "%s Connection policy has no expiration date; ignoring it";
        }
      }

      else
      {
        v21 = v14;
        v53 = AFSiriLogContextSession;
        if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        *buf = 136315138;
        v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
        v54 = "%s No custom connection policy; using default";
      }

      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, v54, buf, 0xCu);
      goto LABEL_8;
    }

    v48 = [[SAConnectionPolicy alloc] initWithDictionary:v13];
    v49 = [v48 timeToLive];
    v50 = v49;
    if (v49)
    {
      [v49 doubleValue];
      v52 = fmin(v51, 604800.0);
    }

    else
    {
      v52 = 604800.0;
    }

    v55 = [v14 dateByAddingTimeInterval:v52];
    [(__CFString *)v55 timeIntervalSinceNow];
    v72 = v50;
    if (v56 >= 0.0)
    {
      if (([(__CFString *)v15 isEqualToString:v79]& 1) != 0)
      {
        if (v48)
        {
          v58 = +[NSDate date];
          [v12 connectionPolicyFirstFailureDate];
          v71 = v69 = v58;
          if (v71)
          {
            [v58 timeIntervalSinceDate:{v71, v58}];
            if (v59 >= 86400.0)
            {
              v60 = AFSiriLogContextSession;
              if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s Connection policy denying timed out", buf, 0xCu);
              }

              [(ADSessionRemoteServer *)self _resetConnectionPolicyDenying];
            }
          }

          v61 = v14;
          v62 = [v12 hasConnectionPolicyFailed];
          v63 = AFSiriLogContextSession;
          v64 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG);
          if (v62)
          {
            if (v64)
            {
              *buf = 136315138;
              v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
              _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "%s Not using connection policy", buf, 0xCu);
            }

            v65 = v11;
            v66 = 0;
          }

          else
          {
            if (v64)
            {
              *buf = 136315138;
              v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
              _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "%s Connection policy in use", buf, 0xCu);
            }

            v65 = v11;
            v66 = v48;
          }

          [v65 setConnectionPolicy:v66];
          [v11 setImposePolicyBan:v62];

          v14 = v61;
          goto LABEL_54;
        }

LABEL_51:
        v68 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
          _os_log_debug_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "%s Connection policy not in use", buf, 0xCu);
        }

        [v11 setConnectionPolicy:0];
LABEL_54:
        v21 = v14;

        goto LABEL_8;
      }
    }

    else
    {
      v57 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
        v83 = 2112;
        v84 = v55;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s Connection policy expired at %@; ignoring it", buf, 0x16u);
      }

      [(ADSessionRemoteServer *)self _resetConnectionPolicyDenying];
      if (([(__CFString *)v15 isEqualToString:v79]& 1) != 0)
      {
        goto LABEL_51;
      }

      v48 = 0;
    }

    v67 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
      v83 = 2112;
      v84 = v15;
      v85 = 2112;
      v86 = v79;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s Connection policy hostname %@ does not match account hostname %@; ignoring policy", buf, 0x20u);
    }

    goto LABEL_51;
  }

  v17 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    v19 = [v12 needsDestruction];
    v20 = @"needs creation";
    if (v19)
    {
      v20 = @"is being destroyed";
    }

    *buf = 136315394;
    v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
    v83 = 2112;
    v84 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Account %@ use default connection policy and clear our dns settings.", buf, 0x16u);
  }

  v21 = v14;
  [(ADSessionRemoteServer *)self _resetConnectionPolicyDenying];
LABEL_8:
  v22 = [v11 connectionPolicy];
  v23 = [v22 routes];

  if (!v23 || ![v23 count] || (objc_msgSend(v23, "objectAtIndexedSubscript:", 0), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "host"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", v79), v25, v24, (v26 & 1) == 0))
  {
    v27 = objc_opt_new();
    v28 = objc_opt_new();
    [v28 setRouteId:@"RouteId1"];
    [v28 setMptcp:&off_100533F50];
    [v28 setPriority:1];
    [v28 setTimeout:&off_100533F68];
    [v28 setHost:v79];
    [v11 setConnectionPolicyRoute:v28];
    v80 = v28;
    v29 = [NSArray arrayWithObjects:&v80 count:1];
    [v27 setRoutes:v29];

    v30 = [v11 connectionPolicy];
    v31 = [v30 policyId];
    [v27 setPolicyId:v31];

    v32 = [v11 connectionPolicy];
    v33 = [v32 timeToLive];
    [v27 setTimeToLive:v33];

    v34 = [v11 connectionPolicy];
    v35 = [v34 enableTLS13];
    [v27 setEnableTLS13:v35];

    v36 = [v11 connectionPolicy];
    v37 = [v36 enableTcpFastOpen];
    [v27 setEnableTcpFastOpen:v37];

    v38 = [v11 connectionPolicy];
    v39 = [v38 globalTimeout];
    [v27 setGlobalTimeout:v39];

    v40 = [v11 connectionPolicy];
    v41 = [v40 enableOptimisticDNS];
    [v27 setEnableOptimisticDNS:v41];

    [v11 setConnectionPolicy:v27];
    [v11 setImposePolicyBan:0];
  }

  v42 = [(ADSession *)self languageCode];
  [v11 setLanguageCode:v42];

  [v11 setTimeout:self->_aceHeaderTimeout];
  [v11 setPrefersWWAN:v73];
  [v11 setSkipPeer:v74];
  [v11 setSkipPeerErrorReason:v10];

  [v11 setForceReconnect:v75];
  [v11 setProductTypePrefix:self->_productTypePrefix];
  [v11 setConnectionProtocolTechnology:1];
  v43 = [(ADSession *)self _account];
  v44 = [v43 assistantIdentifier];
  [v11 setAssistantIdentifier:v44];

  v45 = [(ADSession *)self _account];
  v46 = [v45 peerAssistantIdentifier];
  [v11 setPeerAssistantIdentifier:v46];

  [v11 setPeerType:self->_peerType];
  [v11 setPeerVersion:self->_peerVersion];
  [v11 setUsesPeerManagedSync:self->_siriConnectionUsesPeerManagedSync];
  [v11 setUsesProxyConnection:AFIsNano()];
  if (AFIsInternalInstall())
  {
    [v11 setDeviceIsInWalkaboutExperimentGroup:byte_100590548];
  }

  if (v77)
  {
    [v11 setUseWiFiHint:1];
  }

  return v11;
}

- (void)setSNConnection:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002D4150;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_connectionURL
{
  v2 = [(ADSession *)self _account];
  v3 = [v2 hostname];

  v4 = [v3 stringByAppendingString:@"/ace"];
  if (AFIsInternalInstall())
  {
    v5 = +[ADPreferences sharedPreferences];
    v6 = [v5 redirectForServerURLString:v4];

    if (v6)
    {
      v7 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v11 = 136315650;
        v12 = "[ADSessionRemoteServer _connectionURL]";
        v13 = 2112;
        v14 = v4;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Redirecting %@ to %@", &v11, 0x20u);
      }

      v8 = v6;

      v4 = v8;
    }
  }

  v9 = [NSURL URLWithString:v4];

  return v9;
}

- (void)beginRetryableRequest:(id)a3
{
  v4 = a3;
  v5 = [(ADSessionRemoteServer *)self _retryManager];
  [v5 beginRetryableRequest:v4];
}

- (void)retryNakedCommandsIfNeeded
{
  v3 = [(ADSessionRemoteServer *)self _retryManager];
  v4 = [v3 nakedObjectsToRetry];

  if (v4)
  {
    v5 = [v4 count];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315650;
      v8 = "[ADSessionRemoteServer retryNakedCommandsIfNeeded]";
      v9 = 2048;
      v10 = v5;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Retrying %lu naked commands %@", &v7, 0x20u);
    }

    if (v5)
    {
      [(ADSession *)self sendCommands:v4 opportunistically:0];
    }
  }
}

- (id)initOnQueue:(id)a3 withAccount:(id)a4 languageCode:(id)a5 connectionMode:(id)a6 sharedUserIdentifier:(id)a7 loggingSharedUserIdentifier:(id)a8 instanceContext:(id)a9
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v36.receiver = self;
  v36.super_class = ADSessionRemoteServer;
  v22 = [(ADSession *)&v36 initOnQueue:v16 withAccount:a4];
  v23 = v22;
  if (v22)
  {
    [v22 setState:0];
    [v23 setLanguageCode:v17];
    [v23 setConnectionMode:v18];
    [v23 setSharedUserIdentifier:v19];
    [v23 setLoggingSharedUserIdentifier:v20];
    objc_storeStrong(v23 + 57, a9);
    objc_storeStrong(v23 + 26, a3);
    v24 = +[ADPeerInfo locallyPairedPeerInfo];
    v25 = [v24 productType];
    v26 = v23[37];
    v23[37] = v25;

    v27 = [v24 buildVersion];
    v28 = v23[38];
    v23[38] = v27;

    v29 = +[ADPreferences sharedPreferences];
    v30 = [v29 productTypePrefix];
    v31 = v23[39];
    v23[39] = v30;

    *(v23 + 320) = AFIsNano();
    v23[41] = 0x401C000000000000;
    v32 = dispatch_group_create();
    v33 = v23[55];
    v23[55] = v32;

    [v23 setCanHandleRequest:1];
    v34 = +[NSNotificationCenter defaultCenter];
    [v34 addObserver:v23 selector:"_homeInfoDidChange:" name:@"ADHomeInfoForThisDeviceDidChangeNotification" object:0];
    [v34 addObserver:v23 selector:"_homeContextDidChange:" name:@"ADHomeInfoHomeContextDidChangeNotification" object:0];
    [v34 addObserver:v23 selector:"_companionServiceStateDidChange:" name:@"ADCompanionServiceReadyStateDidChangeNotification" object:0];
    [v34 addObserver:v23 selector:"_multiUsersDidChange:" name:@"ADMultiUsersDidChangeNotification" object:0];
  }

  return v23;
}

@end