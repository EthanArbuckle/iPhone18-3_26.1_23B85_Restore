@interface ADSessionRemoteServer
- (BOOL)_authenticationDisabled;
- (BOOL)_connectionErrorIsRedirect:(id)redirect;
- (BOOL)_connectionErrorIsTimeout:(id)timeout;
- (BOOL)_connectionErrorSuggestsConnectionPolicyReset:(id)reset;
- (BOOL)_connectionIsWWAN;
- (BOOL)_persistValidationData:(id)data withExpiration:(id)expiration;
- (BOOL)_populateInternalAuthProperties:(id)properties;
- (BOOL)_shouldRetry;
- (BOOL)_versionForCachedValidationDataMatchesCurrentVersion;
- (BOOL)sessionIsAttemptingTryOrRetry;
- (id)_authDataToSign;
- (id)_authenticator;
- (id)_cachedServerCertificate;
- (id)_cachedValidationData;
- (id)_connectionInfoWithPreferWWAN:(BOOL)n skipPeer:(BOOL)peer skipPeerError:(id)error useWiFiHint:(BOOL)hint forceReconnect:(BOOL)reconnect;
- (id)_connectionURL;
- (id)_connectionURLHostname;
- (id)_generateAnalyticsContextWithError:(id)error;
- (id)_retryManager;
- (id)_siriNetworkServerConnection;
- (id)currentSNConnectionPreCachedMetrics;
- (id)initOnQueue:(id)queue withAccount:(id)account languageCode:(id)code connectionMode:(id)mode sharedUserIdentifier:(id)identifier loggingSharedUserIdentifier:(id)userIdentifier instanceContext:(id)context;
- (void)_adjustAceHeaderTimeout:(BOOL)timeout;
- (void)_assistantFailedForReason:(id)reason error:(id)error;
- (void)_authenticationFailed;
- (void)_cancelSynchronously:(BOOL)synchronously;
- (void)_companionServiceStateDidChange:(id)change;
- (void)_connectionOpened;
- (void)_continueAuthWithCertificateData:(id)data;
- (void)_continueAuthentication;
- (void)_continueSessionInitWithValidationData:(id)data;
- (void)_createAssistant;
- (void)_eagerAuthDidComplete;
- (void)_forceFastDormancy;
- (void)_handleAceObject:(id)object;
- (void)_homeContextDidChange:(id)change;
- (void)_homeInfoDidChange:(id)change;
- (void)_informDelegateOfError:(id)error;
- (void)_multiUsersDidChange:(id)change;
- (void)_probeSessionIfIdle;
- (void)_reallyRetryPreferringWWAN:(BOOL)n skipPeer:(BOOL)peer skipPeerError:(id)error useWiFiHint:(BOOL)hint causedByError:(id)byError forceReconnect:(BOOL)reconnect useSecondary:(BOOL)secondary;
- (void)_recheckForWiFiTransition;
- (void)_releaseDormancySuspension;
- (void)_resetConnectionPolicyDenying;
- (void)_resetServerConnectionSynchronously:(BOOL)synchronously completion:(id)completion;
- (void)_retrieveAndSendHomeContext;
- (void)_retrySiriNetworkForFailedConnection:(id)connection siriNetworkAnalysisInfo:(id)info onError:(id)error;
- (void)_retryWithParameters:(BOOL)parameters skipPeer:(BOOL)peer skipPeerError:(id)error causedByError:(id)byError useSecondary:(BOOL)secondary;
- (void)_saAssistantCreated:(id)created;
- (void)_saAssistantDestroyed:(id)destroyed;
- (void)_saAssistantLoaded:(id)loaded;
- (void)_saAssistantNotFound:(id)found;
- (void)_saAssistantNotReady:(id)ready;
- (void)_saCommandFailed:(id)failed;
- (void)_saCreateSessionInfoResponse:(id)response;
- (void)_saGetSessionCertificateResponse:(id)response;
- (void)_saSessionValidationFailed:(id)failed;
- (void)_saSetConnectionHeader:(id)header;
- (void)_sendCreateSessionInfoRequestWithData:(id)data;
- (void)_sendGetSessionCertificateData;
- (void)_sendHomeContext:(id)context;
- (void)_sendLoadAssistantWithAccount:(id)account validationData:(id)data;
- (void)_sendMultiUserInfo;
- (void)_sendServerCommand:(id)command;
- (void)_sendServerCommands:(id)commands;
- (void)_sendSetRemoteDevicesWithAccount:(id)account multiUserInfo:(id)info;
- (void)_setCachedServerCertificate:(id)certificate;
- (void)_setCachedValidationData:(id)data withDuration:(double)duration;
- (void)_siriNetworkConnection:(id)connection didEncounterError:(id)error siriNetworkAnalysisInfo:(id)info;
- (void)_siriNetworkConnection:(id)connection didEncounterIntermediateError:(id)error;
- (void)_startConnection;
- (void)_startSession;
- (void)_startSiriNetworkConnectionPreferringWWAN:(BOOL)n skipPeer:(BOOL)peer skipPeerError:(id)error useWiFiHint:(BOOL)hint forceReconnect:(BOOL)reconnect;
- (void)_triggerABCForEmptyLocale;
- (void)_updateConnectionPolicyFailureCount:(id)count;
- (void)assistantDataManagerDictationHIPAAMDMStatusDidChange;
- (void)barrier:(id)barrier;
- (void)beginRetryableRequest:(id)request;
- (void)dealloc;
- (void)delegateDidHandleCommand:(id)command didRecognizeSpeech:(BOOL)speech;
- (void)didCloseConnection:(id)connection;
- (void)didEncounterError:(id)error error:(id)a4 analysisInfo:(id)info;
- (void)didEncounterIntermediateError:(id)error error:(id)a4;
- (void)didOpenConnectionType:(id)type type:(id)a4 routeId:(id)id delay:(double)delay method:(id)method;
- (void)didReceiveAceObject:(id)object object:(id)a4;
- (void)doSendPreProcessing:(id)processing;
- (void)getSNConnectionMetrics:(id)metrics;
- (void)networkManagerLostNonWWANConnectivity:(id)connectivity;
- (void)networkManagerNetworkUnreachable:(id)unreachable;
- (void)networkManagerNonWWANDidBecomeAvailable:(id)available;
- (void)refreshValidationData;
- (void)resetRetryManager;
- (void)retryNakedCommandsIfNeeded;
- (void)sendRemoteGizmoDeviceToServer:(id)server;
- (void)setHasActiveRequest:(BOOL)request;
- (void)setSNConnection:(id)connection;
- (void)startRetry;
- (void)willStartConnection:(id)connection type:(id)type;
- (void)willStartConnection:(id)connection with:(id)with;
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
    _connectionURLHostname = [(ADSessionRemoteServer *)self _connectionURLHostname];
    currentConnectionHostname = self->_currentConnectionHostname;
    self->_currentConnectionHostname = _connectionURLHostname;

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
      delegate = [(ADSession *)self delegate];
      v18 = [delegate assistantSessionShouldPrewarmConnetion:self];

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
  _account = [(ADSession *)self _account];
  hostname = [_account hostname];

  if (AFIsInternalInstall())
  {
    v4 = +[ADPreferences sharedPreferences];
    v5 = [v4 redirectForServerURLString:hostname];

    if (v5)
    {
      v6 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v9 = 136315650;
        v10 = "[ADSessionRemoteServer _connectionURLHostname]";
        v11 = 2112;
        v12 = hostname;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Redirecting %@ to %@", &v9, 0x20u);
      }

      v7 = v5;

      hostname = v7;
    }
  }

  return hostname;
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

  _siriNetworkManager = [(ADSessionRemoteServer *)self _siriNetworkManager];
  [_siriNetworkManager releaseWiFiAssertion];

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

  delegate = [(ADSession *)self delegate];
  [delegate assistantSessionWillStartConnection:self];

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
      _siriNetworkManager = [(ADSessionRemoteServer *)self _siriNetworkManager];
      isRequestRetry = self->_isRequestRetry;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1002D4164;
      v10[3] = &unk_10051A060;
      v10[4] = self;
      v11 = v4;
      [_siriNetworkManager getLinkRecommendation:isRequestRetry recommendation:v10];
    }

    else
    {
      _siriNetworkManager2 = [(ADSessionRemoteServer *)self _siriNetworkManager];
      [_siriNetworkManager2 acquireWiFiAssertion:1];

      [SNNetworkManager acquireDormancySuspendAssertion:&self->_dormancySuspendAssertion];
      (v4[2])(v4, 1, 1);
      _siriNetworkManager3 = [(ADSessionRemoteServer *)self _siriNetworkManager];
      [_siriNetworkManager3 resetLinkRecommendationInfo];
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
  _account = [(ADSession *)self _account];
  validationExpiration = [_account validationExpiration];
  if (!validationExpiration)
  {
    cachedValidationDataExpiration = self->_cachedValidationDataExpiration;
    if (cachedValidationDataExpiration)
    {
      v10 = +[NSDate date];
      v11 = [(NSDate *)cachedValidationDataExpiration compare:v10];

      if (v11 == 1)
      {
        validationData = self->_cachedValidationData;
        [(ADSessionRemoteServer *)self _persistValidationData:self->_cachedValidationData withExpiration:self->_cachedValidationDataExpiration];
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v5 = +[NSDate date];
  v6 = [validationExpiration compare:v5];

  if (v6 != 1)
  {
LABEL_11:
    v12 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[ADSessionRemoteServer _cachedValidationData]";
      v16 = 2112;
      v17 = validationExpiration;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Session data has expired %@", &v14, 0x16u);
    }

    goto LABEL_13;
  }

  validationData = [_account validationData];
  if (validationData && ![(ADSessionRemoteServer *)self _versionForCachedValidationDataMatchesCurrentVersion])
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[ADSessionRemoteServer _cachedValidationData]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Resetting cached validation data due to cached version not matching current version.", &v14, 0xCu);
    }

    [_account setValidationData:0];
    [_account setValidationExpiration:0];
    [_account save];
LABEL_13:
    validationData = 0;
  }

LABEL_14:

  return validationData;
}

- (BOOL)_versionForCachedValidationDataMatchesCurrentVersion
{
  _account = [(ADSession *)self _account];
  validationVersion = [_account validationVersion];

  unsignedIntegerValue = [validationVersion unsignedIntegerValue];
  _authenticator = [(ADSessionRemoteServer *)self _authenticator];
  LOBYTE(unsignedIntegerValue) = unsignedIntegerValue == [_authenticator authenticationStrategyVersion];

  return unsignedIntegerValue;
}

- (id)_authenticator
{
  authenticator = self->_authenticator;
  if (!authenticator)
  {
    v4 = +[ADPreferences sharedPreferences];
    useDeviceAuthenticationVersion = [v4 useDeviceAuthenticationVersion];

    v6 = [[ADAuthenticator alloc] initWithTargetQueue:self->_queue authenticationStrategyVersion:useDeviceAuthenticationVersion];
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
  delegate = [(ADSession *)self delegate];
  _currentSNConnectionType = [(ADSession *)self _currentSNConnectionType];
  [delegate updateConnectionSetConnectionType:{objc_msgSend(_currentSNConnectionType, "aggregatorConnectionType")}];

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

  _cachedValidationData = [(ADSessionRemoteServer *)self _cachedValidationData];
  if (!_cachedValidationData)
  {
    goto LABEL_19;
  }

  v8 = _cachedValidationData;
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

- (void)getSNConnectionMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (metricsCopy)
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
    v9 = metricsCopy;
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

- (id)_generateAnalyticsContextWithError:(id)error
{
  errorCopy = error;
  v5 = objc_alloc_init(NSMutableDictionary);
  state = [(ADSession *)self state];
  if (state > 0xB)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = *(&off_1005178E8 + state);
  }

  v8 = v7;
  [v5 setObject:v8 forKey:@"sessionState"];
  _currentSNConnectionType = [(ADSession *)self _currentSNConnectionType];
  technologyDescription = [_currentSNConnectionType technologyDescription];

  if (technologyDescription)
  {
    [v5 setObject:technologyDescription forKey:@"connectionType"];
  }

  currentConnectionURL = self->_currentConnectionURL;
  if (currentConnectionURL)
  {
    absoluteString = [(NSURL *)currentConnectionURL absoluteString];
    [v5 setObject:absoluteString forKey:@"connectionURL"];
  }

  currentConnectionHostname = self->_currentConnectionHostname;
  if (currentConnectionHostname)
  {
    [v5 setObject:currentConnectionHostname forKey:@"connectionURL"];
  }

  connectionMode = [(ADSession *)self connectionMode];

  if (connectionMode)
  {
    connectionMode2 = [(ADSession *)self connectionMode];
    v16 = [connectionMode2 copy];
    [v5 setObject:v16 forKey:@"connectionMode"];
  }

  languageCode = [(ADSession *)self languageCode];

  if (languageCode)
  {
    languageCode2 = [(ADSession *)self languageCode];
    v19 = [languageCode2 copy];
    [v5 setObject:v19 forKey:@"languageCode"];
  }

  v20 = [NSNumber numberWithBool:[(ADSession *)self dormant]];
  [v5 setObject:v20 forKey:@"dormant"];

  if (errorCopy)
  {
    domain = [errorCopy domain];
    v22 = domain;
    if (domain)
    {
      v23 = [domain copy];
      [v5 setObject:v23 forKey:@"errorDomain"];
    }

    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [v5 setObject:v24 forKey:@"errorCode"];

    userInfo = [errorCopy userInfo];
    v26 = [userInfo objectForKey:NSUnderlyingErrorKey];

    if (v26)
    {
      domain2 = [v26 domain];
      v28 = domain2;
      if (domain2)
      {
        v29 = [domain2 copy];
        [v5 setObject:v29 forKey:@"underlyingErrorDomain"];
      }

      v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v26 code]);
      [v5 setObject:v30 forKey:@"underlyingErrorCode"];
    }

    userInfo2 = [errorCopy userInfo];
    v32 = [userInfo2 objectForKey:SiriCoreSiriConnectionHTTPErrorStatusCodeKey];

    if (v32)
    {
      v33 = objc_alloc_init(NSMutableDictionary);
      stringValue = [v32 stringValue];
      [v33 setObject:stringValue forKey:SiriNetworkBackgroundConnectionHTTPErrorStatusCodeKey];

      userInfo3 = [errorCopy userInfo];
      v36 = [userInfo3 objectForKey:NSLocalizedDescriptionKey];

      if (v36)
      {
        v37 = [v36 copy];
        [v33 setObject:v37 forKey:NSLocalizedDescriptionKey];
      }

      userInfo4 = [errorCopy userInfo];
      v39 = SiriNetworkBackgroundConnectionHTTPRedirectValueKey;
      v40 = [userInfo4 objectForKey:SiriNetworkBackgroundConnectionHTTPRedirectValueKey];

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
  _account = [(ADSession *)self _account];
  assistantIdentifier = [_account assistantIdentifier];
  if (!assistantIdentifier)
  {
    [_account clearAssistantData];
    [_account updateAssistantIdentifiers];
  }

  [_account setNeedsCreation:0];
  [_account save];
  _authenticator = [(ADSessionRemoteServer *)self _authenticator];
  if ([_authenticator state] == 3)
  {
    _authDataToSign = [(ADSessionRemoteServer *)self _authDataToSign];
    v6 = [_authenticator signedDataForData:_authDataToSign];

    [_authenticator sessionInfoDuration];
    [(ADSessionRemoteServer *)self _setCachedValidationData:v6 withDuration:?];
  }

  else
  {
    [(ADSessionRemoteServer *)self _setCachedValidationData:0 withDuration:0.0];
  }

  v7 = +[AFPreferences sharedPreferences];
  [v7 setTLSSessionTicketsFlushPending:0];

  if (!assistantIdentifier)
  {
    delegate = [(ADSession *)self delegate];
    [delegate assistantSessionDidCreateAssistant:self];

    v9 = dispatch_get_global_queue(9, 0);
    dispatch_async(v9, &stru_10051A298);
  }
}

- (void)_adjustAceHeaderTimeout:(BOOL)timeout
{
  v3 = -1.0;
  if (timeout)
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
  _account = [(ADSession *)self _account];
  [_account setConnectionPolicyFailureCount:0];
  [_account setConnectionPolicyFirstFailureDate:0];
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

- (void)networkManagerNetworkUnreachable:(id)unreachable
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

    delegate = [(ADSession *)self delegate];
    v5 = [delegate assistantSessionShouldRestartConnectionOnWiFi:self];

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

- (void)networkManagerLostNonWWANConnectivity:(id)connectivity
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C8CC0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)networkManagerNonWWANDidBecomeAvailable:(id)available
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C8E10;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_multiUsersDidChange:(id)change
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C9010;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_companionServiceStateDidChange:(id)change
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C9140;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_homeContextDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C92B0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

- (void)_homeInfoDidChange:(id)change
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C9424;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)barrier:(id)barrier
{
  barrierCopy = barrier;
  objc_initWeak(&location, self);
  v5 = [ADSessionBarrier alloc];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1002C95FC;
  v10 = &unk_10051A278;
  objc_copyWeak(&v11, &location);
  v6 = [(ADSessionBarrier *)v5 initWithThunk:&v7 barrier:barrierCopy];
  [(ADSession *)self sendCommand:v6 opportunistically:1, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_sendHomeContext:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  v5 = AFSiriLogContextSession;
  v6 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
  if (contextCopy)
  {
    if (v6)
    {
      v7 = v5;
      entities = [contextCopy entities];
      v9 = sub_10001C820(entities);
      currentHomes = [contextCopy currentHomes];
      v11 = sub_10001C820(currentHomes);
      v12 = 136315650;
      v13 = "[ADSessionRemoteServer _sendHomeContext:]";
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s entities %@ \ncurrentHomes %@", &v12, 0x20u);
    }

    [(ADSessionRemoteServer *)self _sendServerCommand:contextCopy];
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
  multiUserSAObject = [v3 multiUserSAObject];

  if (multiUserSAObject)
  {
    [(ADSessionRemoteServer *)self _sendServerCommand:multiUserSAObject];
    _account = [(ADSession *)self _account];
    [(ADSessionRemoteServer *)self _sendSetRemoteDevicesWithAccount:_account multiUserInfo:multiUserSAObject];
  }
}

- (void)sendRemoteGizmoDeviceToServer:(id)server
{
  serverCopy = server;
  if (![(NSString *)self->_pairedWatchUniqueId isEqualToString:?])
  {
    objc_storeStrong(&self->_pairedWatchUniqueId, server);
    if (self->_pairedWatchUniqueId)
    {
      if ([(ADSession *)self state]>= 9)
      {
        _account = [(ADSession *)self _account];
        [(ADSessionRemoteServer *)self _sendSetRemoteDevicesWithAccount:_account];
      }
    }
  }
}

- (void)_sendSetRemoteDevicesWithAccount:(id)account multiUserInfo:(id)info
{
  accountCopy = account;
  infoCopy = info;
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
    infoForThisDevice = [v12 infoForThisDevice];

    peerAssistantIdentifier = [accountCopy peerAssistantIdentifier];
    v15 = +[ADPreferences sharedPreferences];
    companionIdentifier = [v15 companionIdentifier];

    if (!peerAssistantIdentifier && companionIdentifier)
    {
      v17 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Getting assistantID from ADDeviceCircleManager", buf, 0xCu);
      }

      v18 = +[ADDeviceCircleManager sharedInstance];
      peerAssistantIdentifier = [v18 assistantIdForDeviceWithIdsDeviceUniqueIdentifier:companionIdentifier];
    }

    v88 = companionIdentifier;
    v93 = peerAssistantIdentifier;
    if (peerAssistantIdentifier)
    {
      v79 = infoForThisDevice;
      v81 = v9;
      selfCopy = self;
      v86 = accountCopy;
      log = objc_alloc_init(SARemoteDevice);
      [log setAssistantId:peerAssistantIdentifier];
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v83 = infoCopy;
      homeMembers = [infoCopy homeMembers];
      v20 = [homeMembers countByEnumeratingWithState:&v104 objects:v122 count:16];
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
              objc_enumerationMutation(homeMembers);
            }

            v25 = *(*(&v104 + 1) + 8 * i);
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            attributes = [v25 attributes];
            v27 = [attributes countByEnumeratingWithState:&v100 objects:v121 count:16];
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
                    objc_enumerationMutation(attributes);
                  }

                  if ([*(*(&v100 + 1) + 8 * j) isEqualToString:v23])
                  {
                    companionAssistantId = [v25 companionAssistantId];
                    v32 = [companionAssistantId isEqualToString:v93];

                    if ((v32 & 1) == 0)
                    {
                      v33 = AFSiriLogContextSession;
                      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
                      {
                        v34 = v33;
                        companionAssistantId2 = [v25 companionAssistantId];
                        *buf = 136315650;
                        v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
                        v111 = 2112;
                        v112 = v93;
                        v113 = 2112;
                        v114 = companionAssistantId2;
                        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s assistant id mismatch\tpeerAssistantID:%@\tprimary multiuser assistantID:%@", buf, 0x20u);
                      }

                      companionAssistantId3 = [v25 companionAssistantId];

                      if (companionAssistantId3)
                      {
                        companionAssistantId4 = [v25 companionAssistantId];
                        [log setAssistantId:companionAssistantId4];
                      }
                    }

                    goto LABEL_29;
                  }
                }

                v28 = [attributes countByEnumeratingWithState:&v100 objects:v121 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

LABEL_29:
          }

          v21 = [homeMembers countByEnumeratingWithState:&v104 objects:v122 count:16];
        }

        while (v21);
      }

      accountCopy = v86;
      peerUserAgentString = [v86 peerUserAgentString];
      [log setUserAgent:peerUserAgentString];

      peerLanguageCode = [v86 peerLanguageCode];
      [log setLanguage:peerLanguageCode];

      -[NSObject setSiriEnabled:](log, "setSiriEnabled:", [v86 peerSiriEnabled]);
      infoForThisDevice = v79;
      v40 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v79 personalDomainsIsEnabled]);
      [log setPersonalDomainsEnabled:v40];

      securePersonalDomainsRequireAuth = [v79 securePersonalDomainsRequireAuth];
      v42 = &SARemoteDevicePersonalDomainsAuthenticationModeSecureRequestsValue;
      if (!securePersonalDomainsRequireAuth)
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
        assistantId = [v43 assistantId];
        userAgent = [v43 userAgent];
        language = [v43 language];
        siriEnabled = [v43 siriEnabled];
        discoveryMode = [v43 discoveryMode];
        *buf = 136316418;
        v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
        v111 = 2112;
        v112 = assistantId;
        v113 = 2112;
        v114 = userAgent;
        v115 = 2112;
        v116 = language;
        v117 = 1024;
        v118 = siriEnabled;
        v119 = 2112;
        v120 = discoveryMode;
        _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_INFO, "%s assistantd id: %@ user agent: %@ language: %@ siri enabled: %d discovery type: %@", buf, 0x3Au);

        v10 = v92;
        infoForThisDevice = v80;
      }

      infoCopy = v83;
      self = selfCopy;
      v9 = v81;
      companionIdentifier = v88;
    }

    else
    {
      v10 = v92;
      if (([infoForThisDevice personalDomainsIsEnabled] & 1) == 0)
      {
        v68 = objc_alloc_init(SARemoteDevice);
        [v68 setAssistantId:&stru_10051F508];
        [v68 setUserAgent:&stru_10051F508];
        [v68 setLanguage:&stru_10051F508];
        [v68 setPersonalDomainsEnabled:&__kCFBooleanFalse];
        securePersonalDomainsRequireAuth2 = [infoForThisDevice securePersonalDomainsRequireAuth];
        v70 = &SARemoteDevicePersonalDomainsAuthenticationModeSecureRequestsValue;
        if (!securePersonalDomainsRequireAuth2)
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

        companionIdentifier = v88;
      }

      v72 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
        v111 = 2112;
        v112 = companionIdentifier;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "%s companion identifier: %@", buf, 0x16u);
      }

      if (companionIdentifier)
      {
        peerUserAgentString2 = [accountCopy peerUserAgentString];
        v74 = [peerUserAgentString2 length];

        if (v74)
        {
          [v9 setRemoteDeviceHasNoAssistantId:1];
          v75 = AFSiriLogContextSession;
          companionIdentifier = v88;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
          {
            v76 = v75;
            peerSiriEnabled = [accountCopy peerSiriEnabled];
            *buf = 136315394;
            v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
            v111 = 1024;
            LODWORD(v112) = peerSiriEnabled;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "%s companion has siri enabled: %d", buf, 0x12u);
          }
        }

        else
        {
          [v9 setRemoteDeviceUnreachable:1];
          v78 = AFSiriLogContextSession;
          companionIdentifier = v88;
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
    v53 = [accountCopy saRemoteDevice:?];
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
      sharedRemoteDevices = [v54 sharedRemoteDevices];

      if (sharedRemoteDevices && [sharedRemoteDevices count])
      {
        v82 = v9;
        selfCopy2 = self;
        v87 = accountCopy;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v56 = sharedRemoteDevices;
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
                assistantId2 = [v61 assistantId];
                *buf = 136315394;
                v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
                v111 = 2112;
                v112 = assistantId2;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s Adding shared device for (%@)", buf, 0x16u);

                v10 = v92;
              }

              [v10 addObject:v61];
            }

            v58 = [v56 countByEnumeratingWithState:&v94 objects:v108 count:16];
          }

          while (v58);
        }

        self = selfCopy2;
        accountCopy = v87;
        v9 = v82;
        v11 = &OBJC_METACLASS___ADDictationConnection;
      }
    }

    sharedInstance = [&v11[36] sharedInstance];
    isReady = [sharedInstance isReady];

    [v9 setRemoteDeviceNotSetup:isReady ^ 1];
    v67 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v110 = "[ADSessionRemoteServer _sendSetRemoteDevicesWithAccount:multiUserInfo:]";
      v111 = 1024;
      LODWORD(v112) = isReady;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s set up is complete: %d", buf, 0x12u);
    }

    [v9 setRemoteDevices:v10];
    [(ADSessionRemoteServer *)self _sendServerCommand:v9];
  }
}

- (BOOL)_populateInternalAuthProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = AFSiriLogContextInternalAuth;
  if (os_log_type_enabled(AFSiriLogContextInternalAuth, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "[ADSessionRemoteServer _populateInternalAuthProperties:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Looking for AppleConnect service ticket in the Keychain", &v15, 0xCu);
  }

  v5 = +[ADPreferences sharedPreferences];
  internalAuthAppleConnectServiceTicket = [v5 internalAuthAppleConnectServiceTicket];

  v7 = AFSiriLogContextInternalAuth;
  v8 = os_log_type_enabled(AFSiriLogContextInternalAuth, OS_LOG_TYPE_DEBUG);
  if (internalAuthAppleConnectServiceTicket)
  {
    if (v8)
    {
      v15 = 136315138;
      v16 = "[ADSessionRemoteServer _populateInternalAuthProperties:]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Found service ticket in the Keychain - adding it to SALoadAssistant command, and deleting the Keychain entry", &v15, 0xCu);
    }

    [propertiesCopy setAppleConnectServiceTicket:internalAuthAppleConnectServiceTicket];
    internalAuthSessionToken = +[ADPreferences sharedPreferences];
    [internalAuthSessionToken setInternalAuthAppleConnectServiceTicket:0];
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
  internalAuthSessionToken = [v10 internalAuthSessionToken];

  v11 = AFSiriLogContextInternalAuth;
  v12 = os_log_type_enabled(AFSiriLogContextInternalAuth, OS_LOG_TYPE_DEBUG);
  if (internalAuthSessionToken)
  {
    if (v12)
    {
      v15 = 136315138;
      v16 = "[ADSessionRemoteServer _populateInternalAuthProperties:]";
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Found session token in the Keychain", &v15, 0xCu);
    }

    [propertiesCopy setAppleConnectSessionToken:internalAuthSessionToken];
    goto LABEL_13;
  }

  if (v12)
  {
    v15 = 136315138;
    v16 = "[ADSessionRemoteServer _populateInternalAuthProperties:]";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s No session token found in the Keychain", &v15, 0xCu);
  }

  internalAuthSessionToken = 0;
  v13 = 0;
LABEL_14:

  return v13;
}

- (void)_sendLoadAssistantWithAccount:(id)account validationData:(id)data
{
  accountCopy = account;
  dataCopy = data;
  v8 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v67 = "[ADSessionRemoteServer _sendLoadAssistantWithAccount:validationData:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Sending loadassistant", buf, 0xCu);
  }

  languageCode = [(ADSession *)self languageCode];
  connectionMode = [(ADSession *)self connectionMode];
  assistantIdentifier = [accountCopy assistantIdentifier];
  loggingAssistantIdentifier = [accountCopy loggingAssistantIdentifier];
  speechIdentifier = [accountCopy speechIdentifier];
  sharedUserIdentifier = [(ADSession *)self sharedUserIdentifier];
  loggingSharedUserIdentifier = [(ADSession *)self loggingSharedUserIdentifier];
  v14 = _AFPreferencesSiriDataSharingOptInStatus();
  v59 = sub_10001B398(v14);
  v15 = +[ADAnalyticsIdentifiersProvider sharedInstance];
  ephemeralIdForDefaultUser = [v15 ephemeralIdForDefaultUser];

  v16 = +[AFPreferences sharedPreferences];
  longLivedIdentifierUploadingEnabled = [v16 longLivedIdentifierUploadingEnabled];

  if (![languageCode length])
  {
    [(ADSessionRemoteServer *)self _triggerABCForEmptyLocale];
    v17 = AFDefaultLanguageCode;

    languageCode = v17;
  }

  v18 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315907;
    v67 = "[ADSessionRemoteServer _sendLoadAssistantWithAccount:validationData:]";
    v68 = 2113;
    v69 = assistantIdentifier;
    v70 = 2113;
    v71 = speechIdentifier;
    v72 = 2112;
    v73 = languageCode;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s assistantId: %{private}@ speechId: %{private}@ with language %@", buf, 0x2Au);
  }

  v19 = +[SNNetworkActivityTracing sharedInstance];
  [v19 networkActivityStart:2 activate:1 completion:0];

  v20 = objc_alloc_init(SALoadAssistant);
  v58 = dataCopy;
  [v20 setSessionValidationData:dataCopy];
  [v20 setAssistantId:assistantIdentifier];
  v21 = loggingAssistantIdentifier;
  [v20 setLoggableAssistantId:loggingAssistantIdentifier];
  [v20 setSpeechId:speechIdentifier];
  [v20 setSharedUserId:sharedUserIdentifier];
  [v20 setLoggableSharedUserId:loggingSharedUserIdentifier];
  [v20 setLanguage:languageCode];
  v57 = connectionMode;
  [v20 setConnectionMode:connectionMode];
  _saSNConnectionType = [(ADSession *)self _saSNConnectionType];
  [v20 setConnectionType:_saSNConnectionType];

  [v20 setDataSharingOptInStatus:v59];
  [v20 setGmDevice:AFDeviceSupportsGM()];
  v23 = +[ADPreferences sharedPreferences];
  singleUserCompanionACEHost = [v23 singleUserCompanionACEHost];
  [v20 setLastKnownAceHostOfCompanion:singleUserCompanionACEHost];

  if (!_AFPreferencesSyncFromWatchEnabled() || AFIsHorseman())
  {
    peerAssistantIdentifier = [accountCopy peerAssistantIdentifier];
    [v20 setLinkedAssistantId:peerAssistantIdentifier];

    peerSpeechIdentifier = [accountCopy peerSpeechIdentifier];
    [v20 setLinkedSpeechId:peerSpeechIdentifier];
  }

  _authenticator = [(ADSessionRemoteServer *)self _authenticator];
  v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_authenticator authenticationStrategyVersion]);
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

  if (ephemeralIdForDefaultUser)
  {
    uUIDString = [ephemeralIdForDefaultUser UUIDString];
    [v20 setEphemeralUserId:uUIDString];
  }

  v35 = [NSNumber numberWithBool:longLivedIdentifierUploadingEnabled ^ 1];
  [v20 setRpiEnabled:v35];

  [(ADSessionRemoteServer *)self _sendServerCommand:v20];
  v36 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v37 = v36;
    dictionary = [v20 dictionary];
    *buf = 136315394;
    v67 = "[ADSessionRemoteServer _sendLoadAssistantWithAccount:validationData:]";
    v68 = 2112;
    v69 = dictionary;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  aceId = [v20 aceId];
  v40 = [aceId copy];
  sessionInitCommandId = self->_sessionInitCommandId;
  self->_sessionInitCommandId = v40;

  [(ADSession *)self setState:9];
  _adSessionTypeString = [(ADSession *)self _adSessionTypeString];
  if ((AFIsInternalInstall() & 1) != 0 || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 shouldLogForQA], v43, v44))
  {
    v45 = @"remote";
    if (_adSessionTypeString)
    {
      v45 = _adSessionTypeString;
    }

    v64[0] = @"sessionType";
    v64[1] = @"assistantId";
    v46 = &stru_10051F508;
    if (assistantIdentifier)
    {
      v47 = assistantIdentifier;
    }

    else
    {
      v47 = &stru_10051F508;
    }

    v65[0] = v45;
    v65[1] = v47;
    v64[2] = @"speechId";
    if (speechIdentifier)
    {
      v46 = speechIdentifier;
    }

    v65[2] = v46;
    v48 = v65;
    v49 = v64;
    v50 = 3;
  }

  else
  {
    if (_adSessionTypeString)
    {
      v51 = _adSessionTypeString;
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

  _requestId = [(ADSession *)self _requestId];
  v5 = _requestId;
  if (_requestId)
  {
    v10 = @"refID";
    v11 = _requestId;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  v7 = +[SiriCoreSymptomsReporter sharedInstance];
  v8 = +[NSProcessInfo processInfo];
  processIdentifier = [v8 processIdentifier];
  [v7 reportIssueForType:@"LoadAssistant" subType:@"null_locale" context:v6 processIdentifier:processIdentifier walkboutStatus:byte_100590548];
}

- (void)_sendCreateSessionInfoRequestWithData:(id)data
{
  dataCopy = data;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[ADSessionRemoteServer _sendCreateSessionInfoRequestWithData:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v14, 0xCu);
  }

  v6 = objc_alloc_init(SACreateSessionInfoRequest);
  [v6 setSessionInfoRequest:dataCopy];
  v7 = [NSNumber numberWithUnsignedInteger:[(ADAuthenticator *)self->_authenticator authenticationStrategyVersion]];
  [v6 setDeviceAuthVersion:v7];

  [(ADSessionRemoteServer *)self _sendServerCommand:v6];
  if ([(ADSession *)self state]!= 11)
  {
    aceId = [v6 aceId];
    v9 = [aceId copy];
    sessionInitCommandId = self->_sessionInitCommandId;
    self->_sessionInitCommandId = v9;
  }

  aceId2 = [v6 aceId];
  v12 = [aceId2 copy];
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
    aceId = [v4 aceId];
    v7 = [aceId copy];
    sessionInitCommandId = self->_sessionInitCommandId;
    self->_sessionInitCommandId = v7;
  }
}

- (void)_sendServerCommands:(id)commands
{
  commandsCopy = commands;
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[ADSessionRemoteServer _sendServerCommands:]";
    v31 = 2112;
    v32 = commandsCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Sending server commands %@", buf, 0x16u);
  }

  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = commandsCopy;
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
        aceId = [v11 aceId];

        if (!aceId)
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
          aceId2 = [v11 aceId];
          [v15 setAceId:aceId2];

          refId = [v11 refId];
          [v15 setRefId:refId];

          packets = [v11 packets];
          [v15 setPackets:packets];

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

  _siriNetworkServerConnection = [(ADSessionRemoteServer *)self _siriNetworkServerConnection];
  [_siriNetworkServerConnection sendCommands:v5 completion:&stru_10051A208];
}

- (void)_sendServerCommand:(id)command
{
  commandCopy = command;
  [commandCopy siriCore_invokeThunk];
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[ADSessionRemoteServer _sendServerCommand:]";
    v20 = 2112;
    v21 = commandCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Sending server command: %@", buf, 0x16u);
  }

  aceId = [commandCopy aceId];

  if (!aceId)
  {
    v7 = SiriCoreUUIDStringCreate();
    [commandCopy setAceId:v7];
  }

  v8 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[ADSessionRemoteServer _sendServerCommand:]";
    v20 = 2112;
    v21 = commandCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  NSClassFromString(@"SiriCoreSpeechPacket");
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_new();
    aceId2 = [commandCopy aceId];
    [v9 setAceId:aceId2];

    refId = [commandCopy refId];
    [v9 setRefId:refId];

    packets = [commandCopy packets];
    [v9 setPackets:packets];

    [v9 setPacketNumber:{objc_msgSend(commandCopy, "packetNumber")}];
    v13 = v9;
  }

  else
  {
    v13 = 0;
    v9 = commandCopy;
  }

  _siriNetworkServerConnection = [(ADSessionRemoteServer *)self _siriNetworkServerConnection];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002CBBFC;
  v16[3] = &unk_10051C498;
  v17 = commandCopy;
  v15 = commandCopy;
  [_siriNetworkServerConnection sendCommand:v9 completion:v16];

  [v15 siriCore_logDiagnostics];
}

- (void)doSendPreProcessing:(id)processing
{
  processingCopy = processing;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _retryManager = [(ADSessionRemoteServer *)self _retryManager];
    [_retryManager clearNakedObjects];
  }

  _retryManager2 = [(ADSessionRemoteServer *)self _retryManager];
  [_retryManager2 appendSessionObjectToRequest:processingCopy];
}

- (void)_saCommandFailed:(id)failed
{
  failedCopy = failed;
  refId = [failedCopy refId];
  state = [(ADSession *)self state];
  errorCode = [failedCopy errorCode];
  v8 = SAConnectionTerminatedErrorCode;
  if (errorCode == SAConnectionTerminatedErrorCode)
  {
    v9 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[ADSessionRemoteServer _saCommandFailed:]";
      v16 = 2112;
      v17 = failedCopy;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s %@", &v14, 0x16u);
    }

    [(ADSessionRemoteServer *)self _resetServerConnection];
  }

  if ([(NSString *)self->_sessionInitCommandId isEqualToString:refId])
  {
    if ((state - 8) <= 2)
    {
      reason = [failedCopy reason];
      ad_error = [failedCopy ad_error];
      [(ADSessionRemoteServer *)self _assistantFailedForReason:reason error:ad_error];
    }
  }

  else if ([(ADSession *)self _refIdIsLimboId:refId])
  {
    v12 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[ADSessionRemoteServer _saCommandFailed:]";
      v16 = 2112;
      v17 = refId;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Ignoring command failed for limbo id %@", &v14, 0x16u);
    }

    [(ADSession *)self _removeLimboId:refId];
  }

  else
  {
    [(ADSession *)self _passObjectToDelegate:failedCopy];
  }

  if (errorCode == v8)
  {
    ad_error2 = [failedCopy ad_error];
    [(ADSessionRemoteServer *)self _informDelegateOfError:ad_error2];
  }
}

- (void)_assistantFailedForReason:(id)reason error:(id)error
{
  reasonCopy = reason;
  errorCopy = error;
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
      v22 = reasonCopy;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Assistant failure (%{public}@). Limit reached, returning error", buf, 0x16u);
    }

    v16 = [AFError errorWithCode:3 description:reasonCopy underlyingError:errorCopy];
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
      v22 = reasonCopy;
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

- (void)_saSetConnectionHeader:(id)header
{
  headerCopy = header;
  _account = [(ADSession *)self _account];
  aceHost = [_account aceHost];
  aceHostHeader = [headerCopy aceHostHeader];
  if (([(__CFString *)aceHost isEqualToString:aceHostHeader]& 1) == 0)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v27 = "[ADSessionRemoteServer _saSetConnectionHeader:]";
      v28 = 2112;
      v29 = aceHost;
      v30 = 2112;
      v31 = aceHostHeader;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s local ACEHost:%@ setConnectionHeader ACEHost:%@", buf, 0x20u);
    }

    v9 = +[AFAnalytics sharedAnalytics];
    v10 = &stru_10051F508;
    v22[0] = @"Local";
    v22[1] = @"SAConnectionHeader";
    if (aceHost)
    {
      v11 = aceHost;
    }

    else
    {
      v11 = &stru_10051F508;
    }

    if (aceHostHeader)
    {
      v10 = aceHostHeader;
    }

    v23[0] = v11;
    v23[1] = v10;
    v24 = @"ACEHost";
    v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v25 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v9 logEventWithType:926 context:v13];
  }

  [_account setAceHost:aceHostHeader];
  connectionPolicy = [headerCopy connectionPolicy];
  v15 = connectionPolicy;
  if (connectionPolicy)
  {
    dictionary = [connectionPolicy dictionary];
    [_account setConnectionPolicy:dictionary];

    v17 = +[NSDate date];
    [_account setConnectionPolicyDate:v17];

    hostname = [_account hostname];
    [_account setConnectionPolicyHostname:hostname];
  }

  else
  {
    [_account setConnectionPolicy:0];
    [_account setConnectionPolicyDate:0];
    [_account setConnectionPolicyHostname:0];
  }

  [_account save];
  if ([headerCopy reconnectNow])
  {
    useWiFiHint = self->_useWiFiHint;
    v20 = [AFError errorWithCode:16];
    LOBYTE(v21) = 0;
    [(ADSessionRemoteServer *)self _reallyRetryPreferringWWAN:0 skipPeer:0 skipPeerError:0 useWiFiHint:useWiFiHint causedByError:v20 forceReconnect:1 useSecondary:v21];
  }
}

- (void)_saAssistantNotReady:(id)ready
{
  readyCopy = ready;
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
  v17 = readyCopy;
  v9 = readyCopy;
  v10 = v7;
  [v8 logEventWithType:910 contextProvider:&v12];

  [(ADSessionRemoteServer *)self _informDelegateOfError:v6, v12, v13, v14, v15];
  v11 = +[SNNetworkActivityTracing sharedInstance];
  [v11 networkActivityStop:2 withReason:4 andError:v6 completion:0];
}

- (void)_saAssistantNotFound:(id)found
{
  _account = [(ADSession *)self _account];
  if ([_account needsDestruction])
  {
    v5 = +[ADDaemon sharedDaemon];
    [v5 unscheduleDestroyJob];
  }

  v6 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    assistantIdentifier = [_account assistantIdentifier];
    v9 = 136315394;
    v10 = "[ADSessionRemoteServer _saAssistantNotFound:]";
    v11 = 2112;
    v12 = assistantIdentifier;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Couldn't find the requested assistant %@; creating a new one", &v9, 0x16u);
  }

  [_account clearAssistantData];
  [_account save];
  [(ADSessionRemoteServer *)self _resetServerConnection];
  [(ADSessionRemoteServer *)self _startConnection];
}

- (void)_saAssistantDestroyed:(id)destroyed
{
  destroyedCopy = destroyed;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[ADSessionRemoteServer _saAssistantDestroyed:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Assistant Destroyed", &v11, 0xCu);
  }

  _account = [(ADSession *)self _account];
  [_account clearAssistantData];
  [_account save];
  v7 = objc_alloc_init(ADAnalyticsFBFDeliveryInfrastructure);
  [(ADAnalyticsFBFDeliveryInfrastructure *)v7 deliverLogViewerIdentifier:0];
  delegate = [(ADSession *)self delegate];
  [delegate assistantSessionDidDestroyAssistant:self];

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

- (void)_saAssistantLoaded:(id)loaded
{
  loadedCopy = loaded;
  version = [loadedCopy version];
  v6 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[ADSessionRemoteServer _saAssistantLoaded:]";
    v33 = 2112;
    v34 = version;
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

    appleConnectSessionToken = [loadedCopy appleConnectSessionToken];
    if (appleConnectSessionToken)
    {
      v9 = AFSiriLogContextInternalAuth;
      if (os_log_type_enabled(AFSiriLogContextInternalAuth, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v32 = "[ADSessionRemoteServer _saAssistantLoaded:]";
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Found AppleConnect session token in SAAssistantLoaded command - storing token in the Keychain", buf, 0xCu);
      }

      v10 = +[ADPreferences sharedPreferences];
      [v10 setInternalAuthSessionToken:appleConnectSessionToken];
    }
  }

  sessionInitCommandId = self->_sessionInitCommandId;
  refId = [loadedCopy refId];
  LOBYTE(sessionInitCommandId) = [(NSString *)sessionInitCommandId isEqualToString:refId];

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

    [(ADSession *)self _setAssistantDataAnchorIfNeeded:loadedCopy];
    [(ADSessionRemoteServer *)self _retrieveAndSendHomeContext];
    _adSessionTypeString = [(ADSession *)self _adSessionTypeString];
    _account = [(ADSession *)self _account];
    aceHost = [_account aceHost];

    v19 = @"remote";
    if (_adSessionTypeString)
    {
      v19 = _adSessionTypeString;
    }

    v25 = @"sessionType";
    v26 = @"version";
    v20 = &stru_10051F508;
    if (version)
    {
      v21 = version;
    }

    else
    {
      v21 = &stru_10051F508;
    }

    v28 = v19;
    v29 = v21;
    v27 = @"localACEHost";
    if (aceHost)
    {
      v20 = aceHost;
    }

    v30 = v20;
    v22 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v25 count:3];
    v23 = [AFAnalytics sharedAnalytics:v25];
    [v23 logEventWithType:924 context:v22];

    v24 = +[SNNetworkActivityTracing sharedInstance];
    [v24 networkActivityStop:2 withReason:2 andError:0 completion:0];
  }
}

- (void)_saAssistantCreated:(id)created
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSessionRemoteServer _saAssistantCreated:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Assistant created response ignored", &v4, 0xCu);
  }
}

- (void)_saCreateSessionInfoResponse:(id)response
{
  responseCopy = response;
  refId = [responseCopy refId];
  v6 = [refId isEqualToString:self->_createSessionInfoRequestId];

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

  sessionInfo = [responseCopy sessionInfo];

  if (!sessionInfo)
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

  sessionInfo2 = [responseCopy sessionInfo];
  validityDuration = [responseCopy validityDuration];
  intValue = [validityDuration intValue];

  _authenticator = [(ADSessionRemoteServer *)self _authenticator];
  [_authenticator setSessionInfo:sessionInfo2 duration:intValue];
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

    _authDataToSign = [(ADSessionRemoteServer *)self _authDataToSign];
    v16 = [_authenticator signedDataForData:_authDataToSign];

    if (v16)
    {
      [(ADSessionRemoteServer *)self _setCachedValidationData:v16 withDuration:intValue];
    }
  }

LABEL_16:
}

- (void)_saGetSessionCertificateResponse:(id)response
{
  responseCopy = response;
  certificate = [responseCopy certificate];
  if ([certificate length])
  {
    [(ADSessionRemoteServer *)self _setCachedServerCertificate:certificate];
    _authenticator = [(ADSessionRemoteServer *)self _authenticator];
    [_authenticator reset];

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
      v11 = responseCopy;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s No certificate data in response trying anyway %@", &v8, 0x16u);
    }

    [(ADSessionRemoteServer *)self _continueSessionInitWithValidationData:0];
  }
}

- (void)_saSessionValidationFailed:(id)failed
{
  failedCopy = failed;
  sessionInitCommandId = self->_sessionInitCommandId;
  refId = [failedCopy refId];
  v7 = [(NSString *)sessionInitCommandId isEqualToString:refId];

  v8 = AFSiriLogContextSession;
  v9 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v20 = v8;
      errorCode = [failedCopy errorCode];
      *buf = 136315394;
      v28 = "[ADSessionRemoteServer _saSessionValidationFailed:]";
      v29 = 2114;
      v30 = errorCode;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s SASessionValidationFailed %{public}@", buf, 0x16u);
    }

    [(ADSessionRemoteServer *)self _resetServerConnection];
    if (self->_usingCachedValidationData)
    {
      if (![failedCopy ad_shouldRetry])
      {
        goto LABEL_13;
      }

LABEL_12:
      self->_forceValidationRefresh = 1;
      [(ADSessionRemoteServer *)self _startConnection];
      goto LABEL_17;
    }

    _authenticator = [(ADSessionRemoteServer *)self _authenticator];
    if ([_authenticator state])
    {
    }

    else
    {
      ad_shouldRetry = [failedCopy ad_shouldRetry];

      if (ad_shouldRetry)
      {
        goto LABEL_12;
      }
    }

LABEL_13:
    ad_afErrorCode = [failedCopy ad_afErrorCode];
    [AFError errorWithCode:ad_afErrorCode];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1002CD788;
    v24[3] = &unk_10051E010;
    v13 = v24[4] = self;
    v25 = v13;
    v14 = objc_retainBlock(v24);
    v15 = v14;
    if (ad_afErrorCode == 7000)
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

- (void)_handleAceObject:(id)object
{
  Value = object;
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

- (void)delegateDidHandleCommand:(id)command didRecognizeSpeech:(BOOL)speech
{
  if (speech)
  {
    commandCopy = command;
    _retryManager = [(ADSessionRemoteServer *)self _retryManager];
    [_retryManager setLastReceivedCommand:commandCopy];
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

      _authenticator = [(ADSessionRemoteServer *)self _authenticator];
      [_authenticator reset];
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

      _authenticator = [(ADSessionRemoteServer *)self _authenticator];
      [_authenticator reset];

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
  _authenticator = [(ADSessionRemoteServer *)self _authenticator];
  state = [_authenticator state];
  if (state > 1)
  {
    if (state == 2)
    {
      v7 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v21 = 136315138;
        v22 = "[ADSessionRemoteServer _continueAuthentication]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Authenticator is prepared, but we still need session info", &v21, 0xCu);
      }

      requestData = [_authenticator requestData];
      [(ADSessionRemoteServer *)self _sendCreateSessionInfoRequestWithData:requestData];
      goto LABEL_36;
    }

    if (state != 3)
    {
      if (state == 4)
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

    _authDataToSign = [(ADSessionRemoteServer *)self _authDataToSign];
    requestData = [_authenticator signedDataForData:_authDataToSign];

    if (requestData)
    {
      v11 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v12 = v11;
        [_authenticator sessionInfoDuration];
        v21 = 136315394;
        v22 = "[ADSessionRemoteServer _continueAuthentication]";
        v23 = 2048;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Setting cached authentication data with duration %lf", &v21, 0x16u);
      }

      [_authenticator sessionInfoDuration];
      [(ADSessionRemoteServer *)self _setCachedValidationData:requestData withDuration:?];
      if ([(ADSession *)self state]== 6)
      {
        _pendingCommands = [(ADSession *)self _pendingCommands];
        if ([_pendingCommands count])
        {
        }

        else
        {
          _account = [(ADSession *)self _account];
          needsDestruction = [_account needsDestruction];

          if (!needsDestruction)
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

        [(ADSessionRemoteServer *)self _continueSessionInitWithValidationData:requestData];
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

  if (!state)
  {
    requestData = [(ADSessionRemoteServer *)self _cachedServerCertificate];
    v15 = AFSiriLogContextSession;
    v16 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
    if (requestData)
    {
      if (v16)
      {
        v21 = 136315138;
        v22 = "[ADSessionRemoteServer _continueAuthentication]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Have cached certificate data, preparing", &v21, 0xCu);
      }

      self->_usingCachedCertificateData = 1;
      [(ADSessionRemoteServer *)self _continueAuthWithCertificateData:requestData];
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

  if (state == 1)
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

- (void)_continueAuthWithCertificateData:(id)data
{
  dataCopy = data;
  _authenticator = [(ADSessionRemoteServer *)self _authenticator];
  siriNetworkServerConnection = self->_siriNetworkServerConnection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002CE3A4;
  v8[3] = &unk_10051A1C8;
  v9 = _authenticator;
  v10 = siriNetworkServerConnection;
  v8[4] = self;
  v7 = _authenticator;
  [v7 prepareWithCertificateData:dataCopy completion:v8];
}

- (void)_continueSessionInitWithValidationData:(id)data
{
  dataCopy = data;
  _account = [(ADSession *)self _account];
  assistantIdentifier = [_account assistantIdentifier];
  if (!assistantIdentifier || [_account needsCreation])
  {
    [(ADSessionRemoteServer *)self _createAssistant];
  }

  [(ADSessionRemoteServer *)self _sendLoadAssistantWithAccount:_account validationData:dataCopy];
  lastAssistantDataAnchor = [_account lastAssistantDataAnchor];
  if ((AFIsHorseman() & 1) != 0 || AFSupportsPairedDevice() && (AFIsNano() & 1) == 0)
  {
    [(ADSessionRemoteServer *)self _sendSetRemoteDevicesWithAccount:_account];
  }

  if (AFSupportsMultiUser())
  {
    [(ADSessionRemoteServer *)self _sendMultiUserInfo];
  }

  if ([_account needsDestruction])
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
    [(ADSession *)self _sendAssistantDataAndPendingCommandsIfNeeded:lastAssistantDataAnchor];
  }
}

- (void)_authenticationFailed
{
  v6 = [AFError errorWithCode:300];
  v3 = [(ADSessionRemoteServer *)self _generateAnalyticsContextWithError:v6];
  v4 = +[AFAnalytics sharedAnalytics];
  [v4 logEventWithType:908 context:v3 contextNoCopy:1];

  _authenticator = [(ADSessionRemoteServer *)self _authenticator];
  [_authenticator reset];

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

- (void)_retrySiriNetworkForFailedConnection:(id)connection siriNetworkAnalysisInfo:(id)info onError:(id)error
{
  connectionCopy = connection;
  infoCopy = info;
  v10 = COERCE_DOUBLE(error);
  v11 = AFHasCellularData();
  connectionType = [infoCopy connectionType];
  if (([infoCopy wwanPreferred] & 1) != 0 || objc_msgSend(connectionType, "technology") == 3000)
  {
    v40 = 0;
  }

  else
  {
    v40 = ([connectionType isWWAN] ^ 1) & v11;
  }

  v13 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    log = v13;
    wwanPreferred = [infoCopy wwanPreferred];
    selfCopy = self;
    v16 = infoCopy;
    v17 = connectionCopy;
    if (wwanPreferred)
    {
      *&v18 = COERCE_DOUBLE(@"YES");
    }

    else
    {
      *&v18 = COERCE_DOUBLE(@"NO");
    }

    technologyDescription = [connectionType technologyDescription];
    *buf = 136316674;
    v50 = "[ADSessionRemoteServer _retrySiriNetworkForFailedConnection:siriNetworkAnalysisInfo:onError:]";
    if ([connectionType isWWAN])
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
    connectionCopy = v17;
    infoCopy = v16;
    self = selfCopy;
    v55 = 2112;
    v56 = *&technologyDescription;
    v57 = 2112;
    v58 = v20;
    v59 = 2112;
    v60 = v21;
    v61 = 2112;
    v62 = v22;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s Retry. Error: %@. WWAN Preferred: %@, Connection type: %@, isWWAN: %@, Has Cellular Data: %@, shouldPreferWWAN: %@", buf, 0x48u);
  }

  userInfo = [*&v10 userInfo];
  v24 = [userInfo objectForKey:SiriNetworkBackgroundConnectionShouldSkipIDSOnNextAttemptKey];
  bOOLValue = [v24 BOOLValue];

  if (bOOLValue)
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

  code = [*&v10 code];
  v32 = code == 10;
  code2 = [*&v10 code];
  v33 = 0.0;
  if ([*&v10 ad_requiresDampedRetry:&code2])
  {
    if (![*&v10 sn_isNetworkConnectionRetryableNow] || v30 - self->_lastRetryTimeOnQueue < 2.0)
    {
      v33 = 2.0;
    }

    self->_lastRetryTimeOnQueue = v30;
  }

  if (code != 10)
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
    [(ADSessionRemoteServer *)self _retryWithParameters:v40 skipPeer:bOOLValue skipPeerError:v27 causedByError:*&v10 useSecondary:code == 10];
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
    v42 = connectionCopy;
    v45 = v40;
    v46 = bOOLValue;
    v43 = v27;
    v44 = *&v10;
    v47 = v32;
    dispatch_after(v37, queue, block);
  }
}

- (void)_reallyRetryPreferringWWAN:(BOOL)n skipPeer:(BOOL)peer skipPeerError:(id)error useWiFiHint:(BOOL)hint causedByError:(id)byError forceReconnect:(BOOL)reconnect useSecondary:(BOOL)secondary
{
  nCopy = n;
  errorCopy = error;
  byErrorCopy = byError;
  v15 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v59 = "[ADSessionRemoteServer _reallyRetryPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:causedByError:forceReconnect:useSecondary:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(ADSession *)self _informDelegateWillRetryOnError:byErrorCopy];
  self->_isAttemptingRetry = 1;
  delegate = [(ADSession *)self delegate];
  [delegate assistantSession:self beginSessionRetryPreferringWWAN:nCopy];

  _sendBuffer = [(ADSession *)self _sendBuffer];
  v18 = [_sendBuffer copy];

  selfCopy2 = self;
  [(ADSession *)self _clearSendBuffer];
  [(ADSession *)self _clearLimbo];
  if (secondary)
  {
    [(ADSession *)self _setSessionOpened];
  }

  else
  {
    [(ADSessionRemoteServer *)self _resetServerConnection];
  }

  self->_prefersWWAN = nCopy;
  self->_skipPeer = peer;
  objc_storeStrong(&self->_skipPeerError, error);
  self->_useWiFiHint = hint;
  self->_forceReconnect = reconnect;
  delegate2 = [(ADSession *)self delegate];
  v21 = [delegate2 assistantSessionCommandsToRestoreStateOnNewConnection:self];

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
          aceId = [v30 aceId];
          refId = [v30 refId];
          if (aceId)
          {
            v33 = [v22 objectForKey:aceId];
            if (!v33)
            {
              v33 = SiriCoreUUIDStringCreate();
              [v22 setObject:v33 forKey:aceId];
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
              v52[4] = aceId;
              v35 = v33;
              v53 = v35;
              [v34 logEventWithType:911 contextProvider:v52];

              delegate3 = [(ADSession *)selfCopy2 delegate];
              [delegate3 assistantSession:selfCopy2 didChangeRequestIdFrom:aceId toId:v35];

              latestMappedRequestId = [(ADRetryManager *)selfCopy2->_retryManager latestMappedRequestId];
              v38 = [latestMappedRequestId isEqualToString:aceId];

              if (v38)
              {
                v39 = AFSiriLogContextSession;
                if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v59 = "[ADSessionRemoteServer _reallyRetryPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:causedByError:forceReconnect:useSecondary:]";
                  v60 = 2112;
                  v61 = aceId;
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
              [v41 setRequestId:aceId];
              v27 = v47;
              [v47 addObject:v41];

              selfCopy2 = self;
              v25 = v49;
              v22 = v46;
            }

            if (refId)
            {
              v42 = [v22 objectForKey:refId];
              if (!v42)
              {
                v42 = SiriCoreUUIDStringCreate();
                [v22 setObject:v42 forKey:refId];
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

  [(ADSession *)selfCopy2 sendCommands:v47 opportunistically:0];
}

- (void)_retryWithParameters:(BOOL)parameters skipPeer:(BOOL)peer skipPeerError:(id)error causedByError:(id)byError useSecondary:(BOOL)secondary
{
  parametersCopy = parameters;
  errorCopy = error;
  byErrorCopy = byError;
  if (peer || !sub_100017820())
  {
    LOBYTE(v17) = secondary;
    [(ADSessionRemoteServer *)self _reallyRetryPreferringWWAN:parametersCopy skipPeer:1 skipPeerError:errorCopy useWiFiHint:1 causedByError:byErrorCopy forceReconnect:0 useSecondary:v17];
    _siriNetworkManager = [(ADSessionRemoteServer *)self _siriNetworkManager];
    [_siriNetworkManager resetLinkRecommendationInfo];
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

    _siriNetworkManager2 = [(ADSessionRemoteServer *)self _siriNetworkManager];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002CF824;
    v18[3] = &unk_10051A178;
    v18[4] = self;
    v21 = parametersCopy;
    peerCopy = peer;
    v19 = errorCopy;
    v20 = byErrorCopy;
    secondaryCopy = secondary;
    [_siriNetworkManager2 getLinkRecommendation:1 recommendation:v18];
  }
}

- (id)_authDataToSign
{
  v3 = objc_alloc_init(NSMutableDictionary);
  _account = [(ADSession *)self _account];
  assistantIdentifier = [_account assistantIdentifier];

  if (assistantIdentifier)
  {
    [v3 setObject:assistantIdentifier forKey:@"Assistant Identifier"];
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

- (BOOL)_persistValidationData:(id)data withExpiration:(id)expiration
{
  expirationCopy = expiration;
  dataCopy = data;
  _account = [(ADSession *)self _account];
  v9 = [_account setValidationDataSync:dataCopy];

  if (v9)
  {
    _authenticator = [(ADSessionRemoteServer *)self _authenticator];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_authenticator authenticationStrategyVersion]);
    [_account setValidationVersion:v11];

    [_account setValidationExpiration:expirationCopy];
    [_account save];
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

- (void)_setCachedValidationData:(id)data withDuration:(double)duration
{
  dataCopy = data;
  v7 = [[NSDate alloc] initWithTimeIntervalSinceNow:duration];
  v8 = [(ADSessionRemoteServer *)self _persistValidationData:dataCopy withExpiration:v7];
  if (dataCopy && v8)
  {
    v9 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v14 = 136315650;
      v15 = "[ADSessionRemoteServer _setCachedValidationData:withDuration:]";
      v16 = 1024;
      durationCopy = duration;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Validity is valid for %d seconds %@", &v14, 0x1Cu);
    }

    v10 = +[ADDaemon sharedDaemon];
    [v10 scheduleValidationRefreshForInterval:duration];
  }

  cachedValidationData = self->_cachedValidationData;
  self->_cachedValidationData = dataCopy;
  v12 = dataCopy;

  cachedValidationDataExpiration = self->_cachedValidationDataExpiration;
  self->_cachedValidationDataExpiration = v7;
}

- (void)_setCachedServerCertificate:(id)certificate
{
  certificateCopy = certificate;
  _account = [(ADSession *)self _account];
  [_account setServerCertificateData:certificateCopy];

  _account2 = [(ADSession *)self _account];
  _authenticator = [(ADSessionRemoteServer *)self _authenticator];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_authenticator authenticationStrategyVersion]);
  [_account2 setValidationVersion:v8];

  _account3 = [(ADSession *)self _account];
  [_account3 save];
}

- (id)_cachedServerCertificate
{
  _account = [(ADSession *)self _account];
  serverCertificateData = [_account serverCertificateData];

  if (![serverCertificateData length])
  {
    v6 = 0;
    goto LABEL_7;
  }

  _versionForCachedValidationDataMatchesCurrentVersion = [(ADSessionRemoteServer *)self _versionForCachedValidationDataMatchesCurrentVersion];
  v6 = serverCertificateData;
  if (_versionForCachedValidationDataMatchesCurrentVersion)
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

  _account2 = [(ADSession *)self _account];
  [_account2 setServerCertificateData:0];

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)_informDelegateOfError:(id)error
{
  errorCopy = error;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315394;
    v19 = "[ADSessionRemoteServer _informDelegateOfError:]";
    v20 = 2114;
    *v21 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s %{public}@", &v18, 0x16u);
  }

  _retryManager = [(ADSessionRemoteServer *)self _retryManager];
  [_retryManager setNeedsToRetryNakedObjects];
  _retryManager2 = [(ADSessionRemoteServer *)self _retryManager];
  if (![_retryManager2 shouldRetryOnConnectionFailure])
  {

    goto LABEL_8;
  }

  if (!errorCopy)
  {
    v9 = 1;
    goto LABEL_16;
  }

  ad_isRetryableSessionError = [errorCopy ad_isRetryableSessionError];

  if ((ad_isRetryableSessionError & 1) == 0)
  {
LABEL_8:
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      shouldRetryOnConnectionFailure = [_retryManager shouldRetryOnConnectionFailure];
      ad_isRetryableSessionError2 = [errorCopy ad_isRetryableSessionError];
      v18 = 136315650;
      v19 = "[ADSessionRemoteServer _informDelegateOfError:]";
      v20 = 1024;
      *v21 = shouldRetryOnConnectionFailure;
      *&v21[4] = 1024;
      *&v21[6] = ad_isRetryableSessionError2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Not retrying shouldRetry %d retryableError %d", &v18, 0x18u);
    }

    self->_isAttemptingRetry = 0;
    if ([errorCopy ad_isAssistantNotReadyError])
    {
      [_retryManager clearNakedObjects];
    }

    _requestId = [(ADSession *)self _requestId];

    if (!_requestId)
    {
      v9 = 0;
      goto LABEL_17;
    }

    _retryManager2 = objc_alloc_init(SACommandIgnored);
    _requestId2 = [(ADSession *)self _requestId];
    [_retryManager2 setRefId:_requestId2];

    [(ADSession *)self _informDelegateCannotHandleRequest:_retryManager2 error:errorCopy];
    [(ADSessionRemoteServer *)self resetRetryManager];
    _siriNetworkManager = [(ADSessionRemoteServer *)self _siriNetworkManager];
    [_siriNetworkManager releaseWiFiAssertion];

    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = 1;
LABEL_17:
  delegate = [(ADSession *)self delegate];
  [delegate assistantSession:self receivedError:errorCopy isRetryableError:v9];
}

- (void)resetRetryManager
{
  _retryManager = [(ADSessionRemoteServer *)self _retryManager];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSessionRemoteServer resetRetryManager]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Resetting retry manager", &v4, 0xCu);
  }

  [_retryManager endRetryableRequestForCommand:0];
}

- (void)startRetry
{
  _retryManager = [(ADSessionRemoteServer *)self _retryManager];
  retryRequestId = [_retryManager retryRequestId];
  latestMappedRequestId = [_retryManager latestMappedRequestId];
  if (!retryRequestId)
  {
    retryRequestId = SiriCoreUUIDStringCreate();
  }

  [(ADRetryManager *)self->_retryManager setLatestMappedRequestId:retryRequestId];
  if (latestMappedRequestId)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315650;
      v15 = "[ADSessionRemoteServer startRetry]";
      v16 = 2112;
      v17 = latestMappedRequestId;
      v18 = 2112;
      v19 = retryRequestId;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Changing requestId from %@ to %@ ", &v14, 0x20u);
    }

    delegate = [(ADSession *)self delegate];
    [delegate assistantSession:self didChangeRequestIdFrom:latestMappedRequestId toId:retryRequestId];
  }

  v8 = +[SNNetworkActivityTracing sharedInstance];
  [v8 networkActivityStart:6 activate:1 completion:0];

  objectsToRetry = [_retryManager objectsToRetry];
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [objectsToRetry count];
    v14 = 136315394;
    v15 = "[ADSessionRemoteServer startRetry]";
    v16 = 2048;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Retrying %lu objects on session failure", &v14, 0x16u);
  }

  self->_isRequestRetry = 1;
  delegate2 = [(ADSession *)self delegate];
  [delegate2 assistantSessionRetryingRequest:self];

  [(ADSession *)self sendCommands:objectsToRetry opportunistically:0];
}

- (BOOL)_connectionErrorIsTimeout:(id)timeout
{
  timeoutCopy = timeout;
  domain = [timeoutCopy domain];
  if ([domain isEqualToString:NSPOSIXErrorDomain])
  {
    v5 = [timeoutCopy code] == 60;
  }

  else
  {
    domain2 = [timeoutCopy domain];
    if ([domain2 isEqualToString:kNWErrorDomainPOSIX])
    {
      v5 = [timeoutCopy code] == 60;
    }

    else
    {
      v5 = 0;
    }
  }

  domain3 = [timeoutCopy domain];
  if ([domain3 isEqualToString:SiriNetworkBackgroundConnectionErrorDomain])
  {
  }

  else
  {
    domain4 = [timeoutCopy domain];
    v9 = [domain4 isEqualToString:SiriNetworkNetworkConnectionErrorDomain];

    if (!v9)
    {
      goto LABEL_20;
    }
  }

  userInfo = [timeoutCopy userInfo];
  v11 = [userInfo objectForKey:NSUnderlyingErrorKey];

  domain5 = [v11 domain];
  if ([domain5 isEqualToString:NSPOSIXErrorDomain])
  {
    v5 = [v11 code] == 60;
  }

  else
  {
    domain6 = [v11 domain];
    if ([domain6 isEqualToString:kNWErrorDomainPOSIX])
    {
      v5 = [v11 code] == 60;
    }

    else
    {
      domain7 = [v11 domain];
      lowercaseString = [domain7 lowercaseString];
      if ([lowercaseString containsString:@"nwerror"])
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

- (BOOL)_connectionErrorSuggestsConnectionPolicyReset:(id)reset
{
  resetCopy = reset;
  domain = [resetCopy domain];
  v5 = [domain isEqualToString:SiriCoreSiriConnectionErrorDomain];

  if (v5)
  {
    v6 = (([resetCopy code] - 1) & 0xFFFFFFFFFFFFFFF7) == 0;
  }

  else
  {
    v6 = 0;
  }

  domain2 = [resetCopy domain];
  v8 = [domain2 isEqualToString:SiriNetworkBackgroundConnectionErrorDomain];

  if (v8)
  {
    v6 |= [resetCopy code] == 1;
  }

  return v6 & 1;
}

- (BOOL)_connectionErrorIsRedirect:(id)redirect
{
  redirectCopy = redirect;
  domain = [redirectCopy domain];
  if ([domain isEqualToString:SiriCoreSiriConnectionErrorDomain] && !objc_msgSend(redirectCopy, "code"))
  {
    userInfo = [redirectCopy userInfo];
    v10 = [userInfo objectForKey:SiriCoreSiriConnectionHTTPErrorStatusCodeKey];
    v5 = [v10 intValue] == 301;
  }

  else
  {
    v5 = 0;
  }

  domain2 = [redirectCopy domain];
  if ([domain2 isEqualToString:SiriNetworkBackgroundConnectionErrorDomain] && !objc_msgSend(redirectCopy, "code"))
  {
    userInfo2 = [redirectCopy userInfo];
    v12 = [userInfo2 objectForKey:SiriNetworkBackgroundConnectionHTTPErrorStatusCodeKey];
    v7 = [v12 intValue] == 301;
  }

  else
  {
    v7 = 0;
  }

  return v5 || v7;
}

- (void)_updateConnectionPolicyFailureCount:(id)count
{
  countCopy = count;
  _account = [(ADSession *)self _account];
  connectionPolicy = [_account connectionPolicy];

  if (connectionPolicy)
  {
    _account2 = [(ADSession *)self _account];
    connectionPolicyFailureCount = [_account2 connectionPolicyFailureCount];
    domain = [countCopy domain];
    v10 = [domain isEqualToString:SiriCoreSiriConnectionErrorDomain];

    if (v10)
    {
      v11 = __ROR8__([countCopy code], 1);
      if (v11 <= 6)
      {
        if (v11)
        {
          if (v11 != 2)
          {
            goto LABEL_32;
          }

LABEL_23:
          if (connectionPolicyFailureCount)
          {
            if (!++connectionPolicyFailureCount)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v24 = +[NSDate date];
            [_account2 setConnectionPolicyFirstFailureDate:v24];

            connectionPolicyFailureCount = 1;
          }

LABEL_33:
          v26 = AFSiriLogContextSession;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
          {
            v28 = 136315394;
            v29 = "[ADSessionRemoteServer _updateConnectionPolicyFailureCount:]";
            v30 = 1024;
            v31 = connectionPolicyFailureCount;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Setting failure count of %d", &v28, 0x12u);
          }

          [_account2 setConnectionPolicyFailureCount:connectionPolicyFailureCount];
          goto LABEL_36;
        }

        userInfo = [countCopy userInfo];
        v16 = userInfo;
        v17 = &SiriCoreSiriConnectionHTTPErrorStatusCodeKey;
LABEL_22:
        v22 = [userInfo objectForKey:*v17];
        intValue = [v22 intValue];

        if (intValue != 503)
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
        userInfo2 = [countCopy userInfo];
        v19 = [userInfo2 objectForKey:NSUnderlyingErrorKey];

        if (!v19 || ([v19 ad_isNetworkDownError] & 1) == 0)
        {
          if (connectionPolicyFailureCount)
          {
            ++connectionPolicyFailureCount;
          }

          else
          {
            v25 = +[NSDate date];
            [_account2 setConnectionPolicyFirstFailureDate:v25];

            connectionPolicyFailureCount = 1;
          }
        }

        [(ADSessionRemoteServer *)self _adjustAceHeaderTimeout:0];
      }
    }

    else
    {
      domain2 = [countCopy domain];
      v13 = [domain2 isEqualToString:SiriNetworkBackgroundConnectionErrorDomain];

      if (v13)
      {
        code = [countCopy code];
        if (code == 6)
        {
          goto LABEL_23;
        }

        if (code == 5)
        {
          if (([countCopy ad_isNetworkDownError] & 1) == 0)
          {
            if (connectionPolicyFailureCount)
            {
              ++connectionPolicyFailureCount;
            }

            else
            {
              v27 = +[NSDate date];
              [_account2 setConnectionPolicyFirstFailureDate:v27];

              connectionPolicyFailureCount = 1;
            }
          }

          [(ADSessionRemoteServer *)self _adjustAceHeaderTimeout:0];
          if (!connectionPolicyFailureCount)
          {
            goto LABEL_36;
          }

          goto LABEL_33;
        }

        if (!code)
        {
          userInfo = [countCopy userInfo];
          v16 = userInfo;
          v17 = &SiriNetworkBackgroundConnectionHTTPErrorStatusCodeKey;
          goto LABEL_22;
        }
      }

      else
      {
        domain3 = [countCopy domain];
        v21 = [domain3 isEqualToString:SiriNetworkNetworkConnectionErrorDomain];

        if (v21 && [countCopy code] == 2)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_32:
    if (connectionPolicyFailureCount)
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

- (void)_siriNetworkConnection:(id)connection didEncounterError:(id)error siriNetworkAnalysisInfo:(id)info
{
  connectionCopy = connection;
  errorCopy = error;
  infoCopy = info;
  if (self->_siriNetworkServerConnection == connectionCopy)
  {
    v11 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v62 = v11;
      connectionURL = [infoCopy connectionURL];
      if ([infoCopy wwanPreferred])
      {
        v64 = @"YES";
      }

      else
      {
        v64 = @"NO";
      }

      connectionType = [infoCopy connectionType];
      *buf = 136316418;
      v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
      v76 = 2114;
      v77 = connectionCopy;
      v78 = 2114;
      v79 = errorCopy;
      v80 = 2112;
      v81 = connectionURL;
      v82 = 2112;
      v83 = v64;
      v84 = 2112;
      v85 = connectionType;
      _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%s SiriNetwork %{public}@ %{public}@, URL (%@), WWAN Prefered (%@), connection Type (%@)", buf, 0x3Eu);
    }

    if (!AFIsInternalInstall())
    {
LABEL_29:
      v28 = [(ADSessionRemoteServer *)self _connectionErrorIsTimeout:errorCopy];
      v29 = [(ADSessionRemoteServer *)self _generateAnalyticsContextWithError:errorCopy];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_1002D1994;
      v70[3] = &unk_10051A128;
      v30 = infoCopy;
      v71 = v30;
      v68 = v29;
      v72 = v68;
      selfCopy = self;
      v69 = objc_retainBlock(v70);
      state = [(ADSession *)self state];
      delegate = [(ADSession *)self delegate];
      v33 = delegate;
      if (state < 5 || (v28 & 1) != 0)
      {
        [delegate updateConnectionDidFailAggdMetrics];

        delegate2 = [(ADSession *)self delegate];
        _currentSNConnectionType = [(ADSession *)self _currentSNConnectionType];
        [delegate2 updateConnectionSetConnectionType:{objc_msgSend(_currentSNConnectionType, "aggregatorConnectionType")}];

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
        [delegate updateConnectionDidDropAggdMetrics];

        v34 = +[AFAnalytics sharedAnalytics];
        v35 = v34;
        queue = self->_queue;
        v37 = 905;
      }

      [v34 logEventWithType:v37 contextProvider:v69 contextProvidingQueue:queue];

      connectionMode = [(ADSession *)self connectionMode];
      _adSessionTypeString = [(ADSession *)self _adSessionTypeString];
      state2 = [(ADSession *)self state];
      if (state2 > 0xB)
      {
        v43 = @"unknown";
      }

      else
      {
        v43 = *(&off_1005178E8 + state2);
      }

      v44 = v43;
      v45 = [SNNetworkAnalytics sessionConnectionFailedError:errorCopy connectionMode:connectionMode sessionType:_adSessionTypeString sessionState:v44 dormant:[(ADSession *)self dormant] connectionAnalysisInfo:v30];

      if (v45)
      {
        v46 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
        [v46 logSessionConnectionFailed:v45];
      }

      if ([(ADSessionRemoteServer *)self _connectionErrorSuggestsConnectionPolicyReset:errorCopy])
      {
        v47 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s Error suggests bad connection policy; reverting to factory policy.", buf, 0xCu);
        }

        _account = [(ADSession *)self _account];
        [_account setConnectionPolicy:0];

        _account2 = [(ADSession *)self _account];
        [_account2 setConnectionPolicyDate:0];

        _account3 = [(ADSession *)self _account];
        [_account3 setConnectionPolicyHostname:0];

        _account4 = [(ADSession *)self _account];
        [_account4 save];

        [(ADSessionRemoteServer *)self _resetConnectionPolicyDenying];
      }

      [(ADSessionRemoteServer *)self _updateConnectionPolicyFailureCount:errorCopy];
      if ([(ADSessionRemoteServer *)self _connectionErrorIsRedirect:errorCopy]&& AFIsInternalInstall())
      {
        userInfo = [(NSString *)errorCopy userInfo];
        v53 = [userInfo objectForKey:SiriNetworkBackgroundConnectionHTTPRedirectValueKey];

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

      if (errorCopy && !-[NSString ad_isRetryableConnectionError](errorCopy, "ad_isRetryableConnectionError") || self->_isAttemptingRetry && !-[NSString ad_isStricterRetryableConnectionError](errorCopy, "ad_isStricterRetryableConnectionError") || !-[ADSessionRemoteServer _shouldRetry](self, "_shouldRetry") || -[ADSession state](self, "state") >= 11 && (-[ADSession delegate](self, "delegate"), v58 = objc_claimAutoreleasedReturnValue(), v59 = [v58 assistantSessionShouldAttemptRetry:self], v58, !v59))
      {
        v60 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s No retrying", buf, 0xCu);
        }

        _siriNetworkManager = [(ADSessionRemoteServer *)self _siriNetworkManager];
        [_siriNetworkManager releaseWiFiAssertion];

        [(ADSession *)self _clearLimbo];
        [(ADSessionRemoteServer *)self _resetServerConnection];
        [(ADSessionRemoteServer *)self _informDelegateOfError:errorCopy];
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

      [(ADSessionRemoteServer *)self _retrySiriNetworkForFailedConnection:connectionCopy siriNetworkAnalysisInfo:v30 onError:errorCopy];
      goto LABEL_72;
    }

    code = [(NSString *)errorCopy code];
    _account5 = [(ADSession *)self _account];
    predefinedServer = [_account5 predefinedServer];

    domain = [(NSString *)errorCopy domain];
    if ([domain isEqualToString:kCFErrorDomainCFNetwork])
    {
      if ((code - 1) < 2)
      {

LABEL_22:
        if (predefinedServer)
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

      if (code == -1003)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    domain2 = [(NSString *)errorCopy domain];
    v17 = [domain2 isEqualToString:SiriCoreSiriConnectionErrorDomain];

    if (v17 && code == 16)
    {
      userInfo2 = [(NSString *)errorCopy userInfo];
      v19 = [userInfo2 objectForKey:NSUnderlyingErrorKey];

      domain3 = [v19 domain];
      if ([domain3 isEqualToString:kNWErrorDomainDNS])
      {
        code2 = [v19 code];

        if (code2 != -65554 || predefinedServer)
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
        errorCopy = domain3 = errorCopy;
      }

LABEL_27:
      goto LABEL_28;
    }

    if (![(NSString *)errorCopy ad_isUnreachableError]|| predefinedServer)
    {
      goto LABEL_28;
    }

    v23 = AFSiriLogContextSession;
    if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
LABEL_26:
      [NSError errorWithDomain:kAFAssistantErrorDomain code:14 userInfo:0];
      errorCopy = v19 = errorCopy;
      goto LABEL_27;
    }

    *buf = 136315394;
    v75 = "[ADSessionRemoteServer _siriNetworkConnection:didEncounterError:siriNetworkAnalysisInfo:]";
    v76 = 2112;
    v77 = errorCopy;
    v24 = "%s Server Unreachable: %@";
    v25 = v23;
    v26 = 22;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, v24, buf, v26);
    goto LABEL_26;
  }

LABEL_73:
}

- (void)didEncounterError:(id)error error:(id)a4 analysisInfo:(id)info
{
  errorCopy = error;
  v9 = a4;
  infoCopy = info;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002D1C3C;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = errorCopy;
  v17 = v9;
  v18 = infoCopy;
  v12 = infoCopy;
  v13 = v9;
  v14 = errorCopy;
  dispatch_async(queue, v15);
}

- (void)_siriNetworkConnection:(id)connection didEncounterIntermediateError:(id)error
{
  connectionCopy = connection;
  errorCopy = error;
  if (errorCopy)
  {
    delegate = [(ADSession *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(ADSession *)self delegate];
      [delegate2 assistantSession:self receivedIntermediateError:errorCopy];
    }
  }
}

- (void)didEncounterIntermediateError:(id)error error:(id)a4
{
  errorCopy = error;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002D1DC0;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = errorCopy;
  v13 = v7;
  v9 = v7;
  v10 = errorCopy;
  dispatch_async(queue, block);
}

- (void)didCloseConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002D1E70;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

- (void)didReceiveAceObject:(id)object object:(id)a4
{
  objectCopy = object;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002D2164;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = objectCopy;
  v13 = v7;
  v9 = v7;
  v10 = objectCopy;
  dispatch_async(queue, block);
}

- (void)didOpenConnectionType:(id)type type:(id)a4 routeId:(id)id delay:(double)delay method:(id)method
{
  typeCopy = type;
  v12 = a4;
  idCopy = id;
  siriNetworkServerConnection = self->_siriNetworkServerConnection;
  if (siriNetworkServerConnection == typeCopy)
  {
    connectionInfo = [(SNConnection *)siriNetworkServerConnection connectionInfo];
    connectionPolicy = [connectionInfo connectionPolicy];
    policyId = [connectionPolicy policyId];

    _currentSNConnectionType = [(ADSession *)self _currentSNConnectionType];
    LODWORD(connectionPolicy) = [_currentSNConnectionType isEdge];

    if (connectionPolicy)
    {
      [(ADSessionRemoteServer *)self _adjustAceHeaderTimeout:1];
    }
  }

  else
  {
    policyId = 0;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002D2494;
  block[3] = &unk_10051A0D8;
  block[4] = self;
  v34 = typeCopy;
  v20 = v12;
  v35 = v20;
  v21 = policyId;
  v36 = v21;
  v22 = idCopy;
  v37 = v22;
  delayCopy = delay;
  v23 = typeCopy;
  dispatch_async(queue, block);
  v24 = +[AFAnalytics sharedAnalytics];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1002D251C;
  v28[3] = &unk_10051A100;
  v29 = v21;
  v30 = v22;
  delayCopy2 = delay;
  v31 = v20;
  v25 = v20;
  v26 = v22;
  v27 = v21;
  [v24 logEventWithType:901 contextProvider:v28];
}

- (void)willStartConnection:(id)connection with:(id)with
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADSessionRemoteServer willStartConnection:with:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }
}

- (void)willStartConnection:(id)connection type:(id)type
{
  typeCopy = type;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[ADSessionRemoteServer willStartConnection:type:]";
    v14 = 2112;
    v15 = typeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s connectionType=%@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002D27D8;
  v9[3] = &unk_10051E010;
  v10 = typeCopy;
  selfCopy = self;
  v8 = typeCopy;
  dispatch_async(queue, v9);
}

- (void)_cancelSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  _siriNetworkManager = [(ADSessionRemoteServer *)self _siriNetworkManager];
  [_siriNetworkManager releaseWiFiAssertion];

  [SNNetworkManager releaseDormancySuspendAssertion:&self->_dormancySuspendAssertion];
  self->_dormancySuspendAssertion = 0;
  v7.receiver = self;
  v7.super_class = ADSessionRemoteServer;
  [(ADSession *)&v7 _cancelSynchronously:synchronouslyCopy];
  retryManager = self->_retryManager;
  self->_retryManager = 0;
}

- (void)_startSiriNetworkConnectionPreferringWWAN:(BOOL)n skipPeer:(BOOL)peer skipPeerError:(id)error useWiFiHint:(BOOL)hint forceReconnect:(BOOL)reconnect
{
  reconnectCopy = reconnect;
  hintCopy = hint;
  peerCopy = peer;
  nCopy = n;
  errorCopy = error;
  v13 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v39 = "[ADSessionRemoteServer _startSiriNetworkConnectionPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Starting connection.", buf, 0xCu);
  }

  _connectionURLHostname = [(ADSessionRemoteServer *)self _connectionURLHostname];
  if ([_connectionURLHostname length])
  {
    [(ADSession *)self _requestForAssistantData];
    v15 = [NSURL URLWithString:_connectionURLHostname];
    host = [v15 host];

    _siriNetworkManager = [(ADSessionRemoteServer *)self _siriNetworkManager];
    [_siriNetworkManager startMonitoringNetworkForHost:host];

    v18 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v39 = "[ADSessionRemoteServer _startSiriNetworkConnectionPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
      v40 = 2112;
      v41 = host;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Starting monitoring %@", buf, 0x16u);
    }

    v19 = [(ADSessionRemoteServer *)self _connectionInfoWithPreferWWAN:nCopy skipPeer:peerCopy skipPeerError:errorCopy useWiFiHint:hintCopy forceReconnect:reconnectCopy];
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
      delegate = [(ADSession *)self delegate];
      v28 = [delegate assistantSessionShouldPrewarmConnetion:self];

      if (v28)
      {
        [(SNConnection *)self->_siriNetworkServerConnection setSendPings:1];
      }
    }

    start = [(SNConnection *)self->_siriNetworkServerConnection start];
    v30 = +[AFAnalytics sharedAnalytics];
    [v30 logEventWithType:912 context:0];

    if (![(ADSessionRemoteServer *)self _authenticationDisabled])
    {
      _cachedValidationData = [(ADSessionRemoteServer *)self _cachedValidationData];
      if (!_cachedValidationData || (forceValidationRefresh = self->_forceValidationRefresh, _cachedValidationData, forceValidationRefresh))
      {
        v33 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v39 = "[ADSessionRemoteServer _startSiriNetworkConnectionPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s No cached validation data beginning eager auth", buf, 0xCu);
        }

        _cachedServerCertificate = [(ADSessionRemoteServer *)self _cachedServerCertificate];
        _authenticator = [(ADSessionRemoteServer *)self _authenticator];
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_1002D2D60;
        v37[3] = &unk_10051A038;
        v37[4] = self;
        [_authenticator prepareWithCertificateData:_cachedServerCertificate completion:v37];
      }
    }

    [(ADSession *)self setState:3];
  }

  else
  {
    host = [AFError errorWithCode:25];
    [(ADSessionRemoteServer *)self _informDelegateOfError:host];
    v36 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v39 = "[ADSessionRemoteServer _startSiriNetworkConnectionPreferringWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s Hostname invalid in configuration", buf, 0xCu);
    }
  }
}

- (void)setHasActiveRequest:(BOOL)request
{
  if (self->_hasActiveRequest != request)
  {
    self->_hasActiveRequest = request;
    delegate = [(ADSession *)self delegate];
    v6 = [delegate assistantSessionShouldPrewarmConnetion:self];

    _siriNetworkServerConnection = [(ADSessionRemoteServer *)self _siriNetworkServerConnection];
    [_siriNetworkServerConnection setSendPings:self->_hasActiveRequest & v6 & 1];

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
  if (!request)
  {
    [(ADSession *)self _clearSendBuffer];
    retryManager = self->_retryManager;

    [(ADRetryManager *)retryManager clearNakedObjects];
  }
}

- (BOOL)_connectionIsWWAN
{
  _currentSNConnectionType = [(ADSession *)self _currentSNConnectionType];
  isWWAN = [_currentSNConnectionType isWWAN];

  return isWWAN;
}

- (void)_resetServerConnectionSynchronously:(BOOL)synchronously completion:(id)completion
{
  synchronouslyCopy = synchronously;
  completionCopy = completion;
  [(ADSession *)self setState:0];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1002D32F0;
  v25[3] = &unk_10051A088;
  v27 = synchronouslyCopy;
  v7 = completionCopy;
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
      selfCopy = self;
      v22 = v8;
      v21 = v10;
      [(SNConnection *)v21 getSNConnectionMetrics:synchronouslyCopy completion:&v16];

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

  [(ADSession *)self _setSNCurrentConnectionType:0, v16, v17, v18, v19, selfCopy];
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
  delegate = [(ADSession *)self delegate];
  [delegate assistantSessionConnectionDidReset:self];
}

- (id)_connectionInfoWithPreferWWAN:(BOOL)n skipPeer:(BOOL)peer skipPeerError:(id)error useWiFiHint:(BOOL)hint forceReconnect:(BOOL)reconnect
{
  reconnectCopy = reconnect;
  hintCopy = hint;
  nCopy = n;
  peerCopy = peer;
  errorCopy = error;
  v11 = objc_opt_new();
  _account = [(ADSession *)self _account];
  _connectionURLHostname = [(ADSessionRemoteServer *)self _connectionURLHostname];
  connectionPolicy = [_account connectionPolicy];
  connectionPolicyDate = [_account connectionPolicyDate];
  connectionPolicyHostname = [_account connectionPolicyHostname];
  aceHost = [_account aceHost];
  [v11 setAceHost:aceHost];

  v77 = hintCopy;
  v76 = connectionPolicy;
  v78 = connectionPolicyHostname;
  v75 = reconnectCopy;
  if (([_account needsDestruction] & 1) == 0 && !objc_msgSend(_account, "needsCreation"))
  {
    if (!connectionPolicy || !connectionPolicyDate || !connectionPolicyHostname)
    {
      if (connectionPolicy)
      {
        v21 = connectionPolicyDate;
        if (connectionPolicyDate)
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
        v21 = connectionPolicyDate;
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

    v48 = [[SAConnectionPolicy alloc] initWithDictionary:connectionPolicy];
    timeToLive = [v48 timeToLive];
    v50 = timeToLive;
    if (timeToLive)
    {
      [timeToLive doubleValue];
      v52 = fmin(v51, 604800.0);
    }

    else
    {
      v52 = 604800.0;
    }

    v55 = [connectionPolicyDate dateByAddingTimeInterval:v52];
    [(__CFString *)v55 timeIntervalSinceNow];
    v72 = v50;
    if (v56 >= 0.0)
    {
      if (([(__CFString *)connectionPolicyHostname isEqualToString:_connectionURLHostname]& 1) != 0)
      {
        if (v48)
        {
          v58 = +[NSDate date];
          [_account connectionPolicyFirstFailureDate];
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

          v61 = connectionPolicyDate;
          hasConnectionPolicyFailed = [_account hasConnectionPolicyFailed];
          v63 = AFSiriLogContextSession;
          v64 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG);
          if (hasConnectionPolicyFailed)
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
          [v11 setImposePolicyBan:hasConnectionPolicyFailed];

          connectionPolicyDate = v61;
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
        v21 = connectionPolicyDate;

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
      if (([(__CFString *)connectionPolicyHostname isEqualToString:_connectionURLHostname]& 1) != 0)
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
      v84 = connectionPolicyHostname;
      v85 = 2112;
      v86 = _connectionURLHostname;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s Connection policy hostname %@ does not match account hostname %@; ignoring policy", buf, 0x20u);
    }

    goto LABEL_51;
  }

  v17 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    needsDestruction = [_account needsDestruction];
    v20 = @"needs creation";
    if (needsDestruction)
    {
      v20 = @"is being destroyed";
    }

    *buf = 136315394;
    v82 = "[ADSessionRemoteServer _connectionInfoWithPreferWWAN:skipPeer:skipPeerError:useWiFiHint:forceReconnect:]";
    v83 = 2112;
    v84 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Account %@ use default connection policy and clear our dns settings.", buf, 0x16u);
  }

  v21 = connectionPolicyDate;
  [(ADSessionRemoteServer *)self _resetConnectionPolicyDenying];
LABEL_8:
  connectionPolicy2 = [v11 connectionPolicy];
  routes = [connectionPolicy2 routes];

  if (!routes || ![routes count] || (objc_msgSend(routes, "objectAtIndexedSubscript:", 0), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "host"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", _connectionURLHostname), v25, v24, (v26 & 1) == 0))
  {
    v27 = objc_opt_new();
    v28 = objc_opt_new();
    [v28 setRouteId:@"RouteId1"];
    [v28 setMptcp:&off_100533F50];
    [v28 setPriority:1];
    [v28 setTimeout:&off_100533F68];
    [v28 setHost:_connectionURLHostname];
    [v11 setConnectionPolicyRoute:v28];
    v80 = v28;
    v29 = [NSArray arrayWithObjects:&v80 count:1];
    [v27 setRoutes:v29];

    connectionPolicy3 = [v11 connectionPolicy];
    policyId = [connectionPolicy3 policyId];
    [v27 setPolicyId:policyId];

    connectionPolicy4 = [v11 connectionPolicy];
    timeToLive2 = [connectionPolicy4 timeToLive];
    [v27 setTimeToLive:timeToLive2];

    connectionPolicy5 = [v11 connectionPolicy];
    enableTLS13 = [connectionPolicy5 enableTLS13];
    [v27 setEnableTLS13:enableTLS13];

    connectionPolicy6 = [v11 connectionPolicy];
    enableTcpFastOpen = [connectionPolicy6 enableTcpFastOpen];
    [v27 setEnableTcpFastOpen:enableTcpFastOpen];

    connectionPolicy7 = [v11 connectionPolicy];
    globalTimeout = [connectionPolicy7 globalTimeout];
    [v27 setGlobalTimeout:globalTimeout];

    connectionPolicy8 = [v11 connectionPolicy];
    enableOptimisticDNS = [connectionPolicy8 enableOptimisticDNS];
    [v27 setEnableOptimisticDNS:enableOptimisticDNS];

    [v11 setConnectionPolicy:v27];
    [v11 setImposePolicyBan:0];
  }

  languageCode = [(ADSession *)self languageCode];
  [v11 setLanguageCode:languageCode];

  [v11 setTimeout:self->_aceHeaderTimeout];
  [v11 setPrefersWWAN:nCopy];
  [v11 setSkipPeer:peerCopy];
  [v11 setSkipPeerErrorReason:errorCopy];

  [v11 setForceReconnect:v75];
  [v11 setProductTypePrefix:self->_productTypePrefix];
  [v11 setConnectionProtocolTechnology:1];
  _account2 = [(ADSession *)self _account];
  assistantIdentifier = [_account2 assistantIdentifier];
  [v11 setAssistantIdentifier:assistantIdentifier];

  _account3 = [(ADSession *)self _account];
  peerAssistantIdentifier = [_account3 peerAssistantIdentifier];
  [v11 setPeerAssistantIdentifier:peerAssistantIdentifier];

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

- (void)setSNConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002D4150;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

- (id)_connectionURL
{
  _account = [(ADSession *)self _account];
  hostname = [_account hostname];

  v4 = [hostname stringByAppendingString:@"/ace"];
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

- (void)beginRetryableRequest:(id)request
{
  requestCopy = request;
  _retryManager = [(ADSessionRemoteServer *)self _retryManager];
  [_retryManager beginRetryableRequest:requestCopy];
}

- (void)retryNakedCommandsIfNeeded
{
  _retryManager = [(ADSessionRemoteServer *)self _retryManager];
  nakedObjectsToRetry = [_retryManager nakedObjectsToRetry];

  if (nakedObjectsToRetry)
  {
    v5 = [nakedObjectsToRetry count];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315650;
      v8 = "[ADSessionRemoteServer retryNakedCommandsIfNeeded]";
      v9 = 2048;
      v10 = v5;
      v11 = 2112;
      v12 = nakedObjectsToRetry;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Retrying %lu naked commands %@", &v7, 0x20u);
    }

    if (v5)
    {
      [(ADSession *)self sendCommands:nakedObjectsToRetry opportunistically:0];
    }
  }
}

- (id)initOnQueue:(id)queue withAccount:(id)account languageCode:(id)code connectionMode:(id)mode sharedUserIdentifier:(id)identifier loggingSharedUserIdentifier:(id)userIdentifier instanceContext:(id)context
{
  queueCopy = queue;
  codeCopy = code;
  modeCopy = mode;
  identifierCopy = identifier;
  userIdentifierCopy = userIdentifier;
  contextCopy = context;
  v36.receiver = self;
  v36.super_class = ADSessionRemoteServer;
  v22 = [(ADSession *)&v36 initOnQueue:queueCopy withAccount:account];
  v23 = v22;
  if (v22)
  {
    [v22 setState:0];
    [v23 setLanguageCode:codeCopy];
    [v23 setConnectionMode:modeCopy];
    [v23 setSharedUserIdentifier:identifierCopy];
    [v23 setLoggingSharedUserIdentifier:userIdentifierCopy];
    objc_storeStrong(v23 + 57, context);
    objc_storeStrong(v23 + 26, queue);
    v24 = +[ADPeerInfo locallyPairedPeerInfo];
    productType = [v24 productType];
    v26 = v23[37];
    v23[37] = productType;

    buildVersion = [v24 buildVersion];
    v28 = v23[38];
    v23[38] = buildVersion;

    v29 = +[ADPreferences sharedPreferences];
    productTypePrefix = [v29 productTypePrefix];
    v31 = v23[39];
    v23[39] = productTypePrefix;

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