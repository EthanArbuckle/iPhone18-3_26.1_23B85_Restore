@interface APSCourierConnectionManager
- (APSCourierConnectionManager)initWithEnvironment:(id)environment courierConnection:(id)connection carrierBundleHelper:(id)helper networkMonitor:(id)monitor connectionRetryManager:(id)manager connectionOffloader:(id)offloader delegate:(id)delegate;
- (APSCourierConnectionManager)initWithEnvironment:(id)environment delegate:(id)delegate;
- (BOOL)_adjustConnectionWithInterfacePreference:(int64_t)preference;
- (BOOL)_connectStreamWithInterfacePreference:(int64_t)preference;
- (BOOL)_deviceCanOffloadPresenceResponse:(id)response interface:(int64_t)interface;
- (BOOL)_handleRedirectMessage:(id)message onInterface:(int64_t)interface;
- (BOOL)_hasUsableOffloadInfo:(int64_t)info;
- (BOOL)_isInternetReachableOnInterface:(int64_t)interface;
- (BOOL)_isWiFiLinkQualityBetter;
- (BOOL)_neededToSwitchToKeepAliveProxyInterface;
- (BOOL)_shouldOffloadToAOP:(int64_t)p environment:(id)environment;
- (BOOL)_shouldPerformFullHandshake;
- (BOOL)_useShortKeepAliveInterval;
- (BOOL)didPushCauseWake;
- (BOOL)generationMatches:(unint64_t)matches forInterface:(int64_t)interface;
- (BOOL)hasOpenConnection;
- (BOOL)hasOpenConnectionOnInterface:(int64_t)interface;
- (BOOL)isAttemptingToReconnect;
- (BOOL)isConnected;
- (BOOL)isConnectedOnInterface:(int64_t)interface;
- (BOOL)isKeepAliveProxyConfiguredOnAnyConnection;
- (BOOL)isKeepAliveProxyConfiguredOnAnyInterface;
- (BOOL)isKeepAliveProxyConfiguredOnInterface:(int64_t)interface;
- (BOOL)isPiggybacking;
- (BOOL)isSuspendedOnInterface:(int64_t)interface;
- (BOOL)keepAliveV2SupportedOnInterface:(int64_t)interface;
- (BOOL)shouldUseInternet;
- (BOOL)useServerKeepAliveStatsOnInterface:(int64_t)interface;
- (NSArray)activeProtocolConnections;
- (NSString)currentLinkQualityString;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)ifname;
- (double)currentKeepAliveInterval;
- (double)currentKeepAliveIntervalOnInterface:(int64_t)interface;
- (id)JSONDebugState;
- (id)_sendOutgoingMessage:(id)message topicHash:(id)hash lastRTT:(id)t token:(id)token onInterface:(int64_t)interface ultraConstrainedAllowed:(BOOL)allowed withCompletion:(id)completion;
- (id)_usableOffloadInfo:(int64_t)info;
- (id)aps_prettyDescription;
- (id)connectionTimeForInterface:(int64_t)interface;
- (id)consecutiveConnectionFailureReasonOnInterface:(int64_t)interface;
- (id)currentKeepAliveStateOnInterface:(int64_t)interface;
- (id)dailySuspendToggleRateLimiter;
- (id)dnsResolutionTimeMillisecondsOnInterface:(int64_t)interface;
- (id)hourlySuspendToggleRateLimiter;
- (id)maxLargeMessageSizeForInterface:(int64_t)interface;
- (id)maxMessageSizeForInterface:(int64_t)interface;
- (id)pcInterfaceMonitorOnInterface:(int64_t)interface;
- (id)protocolConnectionForInterface:(int64_t)interface;
- (id)serverHostnameForInterface:(int64_t)interface;
- (id)serverIPAddressForInterface:(int64_t)interface;
- (id)tcpHandshakeTimeMillisecondsOnInterface:(int64_t)interface;
- (id)tcpInfoDescription;
- (id)tlsHandshakeTimeMillisecondsOnInterface:(int64_t)interface;
- (int)_linkQualityForInterface:(int64_t)interface;
- (int64_t)interfaceConstraintForInterface:(int64_t)interface;
- (int64_t)preferredInterface;
- (unint64_t)countConnectedInterfaces;
- (unint64_t)countOpenConnections;
- (unint64_t)courierConnection:(id)connection dataReceived:(id)received onInterface:(int64_t)interface withGeneration:(unint64_t)generation isWakingMessage:(BOOL)message;
- (unint64_t)numberOfPSKsToRequestOnInterface:(int64_t)interface;
- (unint64_t)serverTimeInNanoSeconds;
- (unsigned)_keepAliveVersionForInterface:(int64_t)interface;
- (unsigned)redirectCount;
- (void)__delayedPerformKeepAliveOnInterface:(id)interface;
- (void)_cacheIPAddress:(id)address onInterface:(int64_t)interface;
- (void)_clearDelayedReconnectTimer;
- (void)_clearFilterMessageTimerOnInterface:(int64_t)interface;
- (void)_clearPostSuspensionFlushState;
- (void)_clearResetInterfacePreferenceTimer;
- (void)_criticalReliabilityTimerFired;
- (void)_delayedPerformKeepAliveOnInterface:(int64_t)interface withDelay:(double)delay;
- (void)_delayedReconnectTimerFired;
- (void)_delayedSuspendKeepAliveTimerFired:(id)fired;
- (void)_filterMessageTimeoutTimerFired:(id)fired;
- (void)_handleConnectionAfterSuspensionRecoveryOnInterface:(int64_t)interface withKeepAlive:(BOOL)alive;
- (void)_handleConnectionFailureOnInterface:(int64_t)interface forceDelayedReconnect:(BOOL)reconnect withReason:(unsigned int)reason error:(id)error;
- (void)_handleConnectionRecoverFromSuspensionOnInterface:(int64_t)interface;
- (void)_handleConnectionSuspendedOnInterface:(int64_t)interface;
- (void)_handleDelayKeepAliveCancelMessageOnInterface:(int64_t)interface;
- (void)_handleFlushMessage:(id)message onInterface:(int64_t)interface;
- (void)_handleKeepAliveAckMessage:(id)message onInterface:(int64_t)interface;
- (void)_handlePSKVendingStatus:(unint64_t)status onConnectionType:(int64_t)type;
- (void)_invokeInFailureHandlingContext:(id)context;
- (void)_noteFullTCPHandshake;
- (void)_pendingMessageReconnectTimerFired;
- (void)_resetInterfacePreferenceTimerFired:(id)fired;
- (void)_resetKeepAliveOnInterface:(int64_t)interface;
- (void)_resetServerKeepAliveStatsOnInterface:(int64_t)interface;
- (void)_startConnectionEstablishTimerOnInterface:(int64_t)interface;
- (void)_startFilterMessageTimerOnInterface:(int64_t)interface;
- (void)_startResetInterfacePreferenceTimer;
- (void)_stopOffloadingToAOP;
- (void)_submitKeepAliveFailedAWDonInterface:(int64_t)interface;
- (void)_submitKeepAliveSucceededAWDonInterface:(int64_t)interface;
- (void)_switchToKeepAliveProxyInterface;
- (void)_useCachedLastIPIfPossible:(int64_t)possible;
- (void)_useInteractivePowerAssertionIfNeededWithReason:(id)reason;
- (void)addConnectionFailureReasons:(id)reasons onInterface:(int64_t)interface;
- (void)adjustConnectionsIfNeeded;
- (void)appendPrettyStatusToStatusPrinter:(id)printer;
- (void)carrierBundleDidChange;
- (void)clearConsecutiveConnectionFailureReasonOnInterface:(int64_t)interface;
- (void)clearDNSResolutionAndTLSHandshakeOnInterface:(int64_t)interface;
- (void)clearProtocolConnectionForInterface:(int64_t)interface;
- (void)courierConnection:(id)connection aboutToWriteDataOnConnectedInterface:(int64_t)interface;
- (void)courierConnection:(id)connection connectionEstablishTimerFiredOnInterface:(int64_t)interface;
- (void)courierConnection:(id)connection connectionManager:(id)manager handleEvent:(int)event context:(id)context onInterface:(int64_t)interface;
- (void)courierConnection:(id)connection errorOccured:(id)occured disconnectReason:(unsigned int)reason onInterface:(int64_t)interface;
- (void)courierConnection:(id)connection hasDeterminedServerHostname:(id)hostname onInterface:(int64_t)interface;
- (void)courierConnection:(id)connection keepAliveResponseTimerFiredOnInterface:(int64_t)interface;
- (void)courierConnection:(id)connection parserErrorMessage:(id)message OnInterface:(int64_t)interface;
- (void)courierConnection:(id)connection receivedOffloadInfo:(id)info onInterface:(int64_t)interface;
- (void)courierConnection:(id)connection receivedServerBag:(id)bag finishedProcessingServerBagBlock:(id)block;
- (void)courierConnection:(id)connection shouldConnect:(id)connect;
- (void)dealloc;
- (void)forceAdjustConnections;
- (void)holdPowerAssertionUntilStreamsQuiesce;
- (void)interfaceRadioHotnessChanged:(id)changed;
- (void)markInitiallyConnectedOnInterface:(int64_t)interface;
- (void)networkMonitorWiFiBecameAssociated:(id)associated;
- (void)notePush;
- (void)offloadHeuristics:(id)heuristics offloadDisabledOnInterface:(int64_t)interface;
- (void)offloadHeuristics:(id)heuristics offloadEnabledOnInterface:(int64_t)interface;
- (void)performKeepAlive;
- (void)performKeepAliveOnInterface:(int64_t)interface;
- (void)prepareForDarkWake;
- (void)prepareForFullWake;
- (void)prepareForSleep;
- (void)recalculateCriticalReliability;
- (void)requestConnectionIfNeeded;
- (void)sendConnectMessageWithToken:(id)token interface:(int64_t)interface activeInterval:(unsigned int)interval presenceFlags:(int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)nonce signature:(id)self0 hostCertificateInfo:(id)self1 redirectCount:(unsigned __int8)self2 tcpHandshakeTimeMilliseconds:(double)self3 dnsResolveTimeMilliseconds:(double)self4 tlsHandshakeTimeMilliseconds:(double)self5 consecutiveConnectionFailureReason:(id)self6 withCompletion:(id)self7 onInterface:(int64_t)self8;
- (void)sendConnectMessageWithToken:(id)token state:(int)state interface:(int64_t)interface activeInterval:(unsigned int)interval presenceFlags:(int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)self0 signature:(id)self1 redirectCount:(unsigned __int8)self2 withCompletion:(id)self3 onInterface:(int64_t)self4;
- (void)sendConnectMessageWithToken:(id)token state:(int)state presenceFlags:(int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)self0 redirectCount:(unsigned __int8)self1 withCompletion:(id)self2 onInterface:(int64_t)self3;
- (void)sendFilterMessageWithEnabledHashes:(id)hashes ignoredHashes:(id)ignoredHashes opportunisticHashes:(id)opportunisticHashes nonWakingHashes:(id)wakingHashes pausedHashes:(id)pausedHashes token:(id)token version:(unint64_t)version expectsResponse:(BOOL)self0 onInterface:(int64_t)self1 withCompletion:(id)self2;
- (void)sendMessageTransportAcknowledgeMessageOnInterface:(int64_t)interface;
- (void)sendTokenGenerateMessageWithTopicHash:(id)hash baseToken:(id)token appId:(unsigned __int16)id expirationTTL:(unsigned int)l vapidPublicKeyHash:(id)keyHash type:(int64_t)type withCompletion:(id)completion onInterface:(int64_t)self0;
- (void)setConnectionFailure:(id)failure onInterface:(int64_t)interface;
- (void)setConnectionStatistics:(id)statistics onInterface:(int64_t)interface;
- (void)setConnectionTime:(id)time forInterface:(int64_t)interface;
- (void)setEnabled:(BOOL)enabled;
- (void)setKeepAliveConfiguration:(unint64_t)configuration;
- (void)setMaxLargeMessageSize:(id)size forInterface:(int64_t)interface;
- (void)setMaxMessageSize:(id)size forInterface:(int64_t)interface;
- (void)stopManagerOnInterface:(int64_t)interface;
- (void)triggerCriticalReliability;
- (void)updateKeepAliveInterval:(double)interval;
@end

@implementation APSCourierConnectionManager

- (unint64_t)countConnectedInterfaces
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  countConnectedInterfaces = [courierConnection countConnectedInterfaces];

  return countConnectedInterfaces;
}

- (NSString)description
{
  v3 = objc_opt_class();
  environment = [(APSCourierConnectionManager *)self environment];
  name = [environment name];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v3, self, name];;

  return v6;
}

- (void)_clearPostSuspensionFlushState
{
  [(PCPersistentTimer *)self->_delayedSuspendKeepAliveTimer invalidate];
  delayedSuspendKeepAliveTimer = self->_delayedSuspendKeepAliveTimer;
  self->_delayedSuspendKeepAliveTimer = 0;

  self->_pendingPostSuspensionWWANFlush = 0;
}

- (BOOL)shouldUseInternet
{
  if (self->_enabled)
  {
    delegate = [(APSCourierConnectionManager *)self delegate];
    self->_shouldUseInternet = [delegate courierConnectionManagerClientsCanConnectRightNow];

    return self->_shouldUseInternet;
  }

  else
  {
    v4 = 0;
    self->_shouldUseInternet = 0;
  }

  return v4;
}

- (void)notePush
{
  pcInterfaceMonitorWWAN = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  linkQuality = [pcInterfaceMonitorWWAN linkQuality];

  pcInterfaceMonitorWWAN2 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    pcInterfaceMonitorWWAN3 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
    currentRAT = [pcInterfaceMonitorWWAN3 currentRAT];

    if (linkQuality != -2 && currentRAT <= 0xFFFFFFFD)
    {
      self->_lastPushLQ = linkQuality;
      if (self->_lastPushRAT != currentRAT)
      {
        self->_lastPushRAT = currentRAT;
      }
    }
  }

  v9 = [APSNetworkMonitor powerCostForPushOnRAT:self->_lastPushRAT withLinkQuality:self->_lastPushLQ];
  networkMonitor = [(APSCourierConnectionManager *)self networkMonitor];
  [networkMonitor notePushWithCost:v9];
}

- (int64_t)preferredInterface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  preferredInterface = [courierConnection preferredInterface];

  return preferredInterface;
}

- (APSCourierConnectionManager)initWithEnvironment:(id)environment delegate:(id)delegate
{
  environmentCopy = environment;
  delegateCopy = delegate;
  v7 = [[APSCourierConnection alloc] initWithEnvironment:environmentCopy];
  v8 = +[PCCarrierBundleHelper helper];
  v20 = objc_alloc_init(APSNetworkMonitor);
  v9 = objc_alloc_init(APSDefaultConnectionRetryStateManager);
  v10 = +[NSMutableDictionary dictionary];
  v11 = [(APSCourierConnection *)v7 keepAliveCacheForInterface:0];
  [v10 setObject:v11 forKeyedSubscript:&off_100197A58];

  v12 = [(APSCourierConnection *)v7 keepAliveCacheForInterface:1];
  [v10 setObject:v12 forKeyedSubscript:&off_100197A70];

  v13 = -[APSConnectionOffloader initWithEnvironment:cacheDictionary:supportsKeepAliveV2:]([APSConnectionOffloader alloc], "initWithEnvironment:cacheDictionary:supportsKeepAliveV2:", environmentCopy, v10, [v8 BOOLValueFromPushBundleForKey:APSForceKeepAliveV1Key error:0] ^ 1);
  environment = [(APSCourierConnectionManager *)self environment];
  name = [environment name];
  v16 = [name isEqualToString:APSEnvironmentProduction];

  if (v16)
  {
    v17 = +[APSOffloadHeuristics shared];
    [v17 addDelegate:self];
  }

  v18 = [(APSCourierConnectionManager *)self initWithEnvironment:environmentCopy courierConnection:v7 carrierBundleHelper:v8 networkMonitor:v20 connectionRetryManager:v9 connectionOffloader:v13 delegate:delegateCopy];

  return v18;
}

- (APSCourierConnectionManager)initWithEnvironment:(id)environment courierConnection:(id)connection carrierBundleHelper:(id)helper networkMonitor:(id)monitor connectionRetryManager:(id)manager connectionOffloader:(id)offloader delegate:(id)delegate
{
  environmentCopy = environment;
  connectionCopy = connection;
  helperCopy = helper;
  monitorCopy = monitor;
  managerCopy = manager;
  offloaderCopy = offloader;
  delegateCopy = delegate;
  v53.receiver = self;
  v53.super_class = APSCourierConnectionManager;
  v18 = [(APSCourierConnectionManager *)&v53 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_environment, environment);
    objc_storeStrong(&v19->_delegate, delegate);
    objc_storeStrong(&v19->_carrierBundleHelper, helper);
    v20 = objc_alloc_init(APSServerTimeTracker);
    serverTimeTracker = v19->_serverTimeTracker;
    v19->_serverTimeTracker = v20;

    objc_storeStrong(&v19->_networkMonitor, monitor);
    [(APSNetworkMonitor *)v19->_networkMonitor setDelegate:v19];
    objc_storeStrong(&v19->_connectionRetryManager, manager);
    objc_storeStrong(&v19->_connectionOffloader, offloader);
    [(APSConnectionOffloading *)v19->_connectionOffloader setOffloadDelegate:v19];
    [(APSConnectionOffloading *)v19->_connectionOffloader setMetricDelegate:delegateCopy];
    v22 = +[NSMutableArray array];
    offloadInfo = v19->_offloadInfo;
    v19->_offloadInfo = v22;

    pcInterfaceMonitorNonCellular = [(APSCourierConnectionManager *)v19 pcInterfaceMonitorNonCellular];
    [pcInterfaceMonitorNonCellular addDelegate:v19 queue:&_dispatch_main_q];

    pcInterfaceMonitorWWAN = [(APSCourierConnectionManager *)v19 pcInterfaceMonitorWWAN];
    [pcInterfaceMonitorWWAN addDelegate:v19 queue:&_dispatch_main_q];

    objc_storeStrong(&v19->_courierConnection, connection);
    if ([(APSCourierConnectionManager *)v19 isCellularWatch]&& (_os_feature_enabled_impl() & 1) == 0)
    {
      [(APSCourierConnection *)v19->_courierConnection setWifiKeepAliveEarlyFireConstantInterval:120.0];
    }

    else
    {
      v19->_delayedReconnectTLSInterval = 120.0;
      v19->_delayedReconnectTLSIntervalTrigger = 50;
    }

    if ([(APSCourierConnectionManager *)v19 _useShortKeepAliveInterval])
    {
      [(APSCourierConnection *)v19->_courierConnection setKeepAliveConfiguration:0];
    }

    [(APSCourierConnection *)v19->_courierConnection setRemainsConnectedWhenWWANSuspends:v19->_remainsConnectedWhenWWANSuspends];
    [(PCCarrierBundleHelper *)v19->_carrierBundleHelper addDelegate:v19];
    if (([(PCCarrierBundleHelper *)v19->_carrierBundleHelper BOOLValueFromPushBundleForKey:APSForceKeepAliveV1Key error:0]& 1) != 0)
    {
      copyOperatorName = [(APSCourierConnectionManager *)v19 copyOperatorName];
      v27 = +[APSLog courier];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = copyOperatorName;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@ opts out of Keep Alive 2.0", buf, 0xCu);
      }
    }

    else
    {
      [(APSCourierConnection *)v19->_courierConnection setKeepAliveV2Supported:1 onInterface:0];
    }

    [(APSCourierConnection *)v19->_courierConnection setKeepAliveV2Supported:1 onInterface:1];
    [(APSCourierConnection *)v19->_courierConnection setDelegate:v19];
    v28 = sub_100005FFC(APSIsST);
    v29 = 160.0;
    if (v28)
    {
      v29 = 600.0;
    }

    v19->_delayedSuspendKeepAliveInterval = v29;
    *&v19->_suspendToggleHourlyLimit = xmmword_10015CE50;
    v19->_keepAliveV2TimeDriftMaximum = 30.0;
    v19->_lastIPCachingTTLSeconds = 0.0;
    v19->_cmaType = 0;
    v19->_lastIPCachingPercentage = 0;
    v30 = objc_alloc_init(APSConnectionHistory);
    connectionHistory = v19->_connectionHistory;
    v19->_connectionHistory = v30;

    v19->_filterMessageTimeout = 30.0;
    v32 = APSBundleIdentifier;
    domain = [(APSEnvironment *)v19->_environment domain];
    v34 = [NSString stringWithFormat:@"%@-wakeconnection-%@", v32, domain];

    v35 = [[APSNoOpPowerAssertion alloc] initWithName:v34 category:201 holdDuration:19.0];
    waitForConnectionAttemptsPowerAssertion = v19->_waitForConnectionAttemptsPowerAssertion;
    v19->_waitForConnectionAttemptsPowerAssertion = v35;

    v37 = objc_alloc_init(APSOutgoingQueue);
    outgoingSendMessageQueue = v19->_outgoingSendMessageQueue;
    v19->_outgoingSendMessageQueue = v37;

    v39 = objc_alloc_init(APSOutgoingQueue);
    outgoingConnectMessageQueue = v19->_outgoingConnectMessageQueue;
    v19->_outgoingConnectMessageQueue = v39;

    v41 = objc_alloc_init(APSOutgoingQueue);
    tokenGenerateResponseQueue = v19->_tokenGenerateResponseQueue;
    v19->_tokenGenerateResponseQueue = v41;

    v43 = objc_alloc_init(APSOutgoingQueue);
    outgoingFilterQueue = v19->_outgoingFilterQueue;
    v19->_outgoingFilterQueue = v43;

    v45 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    ctClient = v19->_ctClient;
    v19->_ctClient = v45;
  }

  return v19;
}

- (void)dealloc
{
  [(APSCourierConnectionManager *)self _disconnectAllStreamsWithReason:0];
  [(APSCourierConnection *)self->_courierConnection setDelegate:0];
  [(APSNetworkMonitor *)self->_networkMonitor setDelegate:0];
  [(APSReachabilityHandler *)self->_reachabilityHandler disable];
  v3.receiver = self;
  v3.super_class = APSCourierConnectionManager;
  [(APSCourierConnectionManager *)&v3 dealloc];
}

- (void)markInitiallyConnectedOnInterface:(int64_t)interface
{
  if (![(APSCourierConnection *)self->_courierConnection isConnectedOnInterface:?])
  {
    [(APSCourierConnectionManager *)self _clearConnectionEstablishTimerOnInterface:interface];
    connectionRetryManager = [(APSCourierConnectionManager *)self connectionRetryManager];
    [connectionRetryManager noteConnectionEstablished];

    connectionRetryManager2 = [(APSCourierConnectionManager *)self connectionRetryManager];
    [connectionRetryManager2 notePresenceSuccess];

    v7 = [(APSCourierConnection *)self->_courierConnection serverIPAddressForInterface:interface];
    if (self->_lastIPCachingTTLSeconds > 0.0)
    {
      v8 = [(APSCourierConnection *)self->_courierConnection usingCachedIPAddressOnInterface:interface];

      if (!v8)
      {
        [(APSCourierConnectionManager *)self _cacheIPAddress:v7 onInterface:interface];
      }
    }

    [(APSCourierConnection *)self->_courierConnection setUsingCachedIPAddress:0 onInterface:interface];
    [(APSCourierConnection *)self->_courierConnection setIsConnecting:0 onInterface:interface];
    [(APSCourierConnection *)self->_courierConnection setIsConnected:1 onInterface:interface];
    if ([(APSCourierConnection *)self->_courierConnection countConnectedInterfaces]>= 2)
    {
      [(APSNetworkMonitor *)self->_networkMonitor openedSecondChannel];
    }

    self->_cmaType = 0;
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for PushConnectionConnected", buf, 0xCu);
    }

    courierConnection = [(APSCourierConnectionManager *)self courierConnection];
    v11 = [courierConnection objectForKey:@"startedOpeningStream" onInterface:interface];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = +[NSDate date];
    }

    v14 = v13;

    v15 = +[NSDate date];
    [v15 timeIntervalSinceDate:v14];
    v17 = v16;

    v18 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:interface]];
    v19 = [APSMetricLogger dualChannelStateFrom:self->_courierConnection isPiggyBacking:[(APSNetworkMonitor *)self->_networkMonitor isPiggybacking]];
    v20 = [NSNumber numberWithDouble:v17];
    v21 = [(APSCourierConnectionManager *)self dnsResolutionTimeMillisecondsOnInterface:interface];
    v22 = [(APSCourierConnectionManager *)self tlsHandshakeTimeMillisecondsOnInterface:interface];
    [APSMetricLogger connectionConnectedWithDuration:v20 interface:interface linkQuality:v18 dualChannelState:v19 dnsResolutionTimeMilliseconds:v21 tlsHandshakeTimeMilliseconds:v22];

    [(APSCourierConnectionManager *)self clearDNSResolutionAndTLSHandshakeOnInterface:interface];
    courierConnection2 = [(APSCourierConnectionManager *)self courierConnection];
    [courierConnection2 setObject:0 forKey:@"startedOpeningStream" onInterface:interface];

    courierConnection3 = [(APSCourierConnectionManager *)self courierConnection];
    v25 = +[NSDate date];
    [courierConnection3 setObject:v25 forKey:@"connectionEstablished" onInterface:interface];

    v26 = +[APSLog courier];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@: AWD PushConnectionConnected finished", buf, 0xCu);
    }
  }
}

- (BOOL)_adjustConnectionWithInterfacePreference:(int64_t)preference
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    countConnectedInterfaces = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    pcPersistentInterfaceManager = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
    currentLinkQualityString = [pcPersistentInterfaceManager currentLinkQualityString];
    v17 = 138412802;
    selfCopy6 = self;
    v19 = 2048;
    v20 = countConnectedInterfaces;
    v21 = 2112;
    v22 = currentLinkQualityString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "APSUserCourier %@ adjusting connection. Connected on %lu interfaces. Current link quality: %@", &v17, 0x20u);
  }

  if ([(APSCourierConnectionManager *)self shouldUseInternet])
  {
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000067F8(preference);
      v17 = 138412546;
      selfCopy6 = self;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ calling _connectStream with interface preference %@", &v17, 0x16u);
    }

    if (preference == 3 && [(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
    {
      v11 = +[APSLog courier];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        selfCopy6 = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ _connectStream has None preference and dual channel is enabled.", &v17, 0xCu);
      }

      if ([(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:0])
      {
        v12 = 0;
      }

      else
      {
        v15 = +[APSLog courier];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          selfCopy6 = self;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ _connectStream - kicking WWAN for dual channel", &v17, 0xCu);
        }

        v12 = [(APSCourierConnectionManager *)self _connectStreamWithInterfacePreference:0];
      }

      if (![(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:1])
      {
        v16 = +[APSLog courier];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          selfCopy6 = self;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ _connectStream - kicking NonCellular for dual channel", &v17, 0xCu);
        }

        v12 |= [(APSCourierConnectionManager *)self _connectStreamWithInterfacePreference:1];
      }
    }

    else
    {
      v12 = [(APSCourierConnectionManager *)self _connectStreamWithInterfacePreference:preference];
    }
  }

  else
  {
    if ([(APSCourierConnection *)self->_courierConnection hasOpenConnection])
    {
      v13 = +[APSLog courier];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        selfCopy6 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Disconnecting from courier as there are no more connections with enabled topics, we have been disabled, or we are in push proxy mode.", &v17, 0xCu);
      }
    }

    [(APSCourierConnection *)self->_courierConnection stopManagers];
    [(APSCourierConnectionManager *)self _disconnectAllStreamsWithReason:2];
    v12 = 0;
  }

  return v12 & 1;
}

- (void)_handleConnectionFailureOnInterface:(int64_t)interface forceDelayedReconnect:(BOOL)reconnect withReason:(unsigned int)reason error:(id)error
{
  reconnectCopy = reconnect;
  errorCopy = error;
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  v12 = [courierConnection isConnectionOffloadedOnInterface:interface];

  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_10009DBD0;
  v75[3] = &unk_100188A10;
  v75[4] = self;
  interfaceCopy = interface;
  reasonCopy = reason;
  v72 = errorCopy;
  v76 = v72;
  [(APSCourierConnectionManager *)self _invokeInFailureHandlingContext:v75];
  connectionRetryManager = [(APSCourierConnectionManager *)self connectionRetryManager];
  [connectionRetryManager noteConnectionAttemptFailed];

  if ([(APSCourierConnection *)self->_courierConnection isConnectingOnInterface:interface])
  {
    v14 = [(APSCourierConnection *)self->_courierConnection usingCachedIPAddressOnInterface:interface];

    if (v14)
    {
      [(APSCourierConnectionManager *)self _cacheIPAddress:0 onInterface:interface];
    }

    else
    {
      [(APSCourierConnectionManager *)self _useCachedLastIPIfPossible:interface];
    }

    [(APSCourierConnection *)self->_courierConnection setIsConnecting:0 onInterface:interface];
  }

  if (self->_consecutiveConnectionFailureCount)
  {
    isCellularWatch = [(APSCourierConnectionManager *)self isCellularWatch];
    if (interface == 1 && isCellularWatch)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"APSDDetectedUnusableWiFi", 0, 0, 1u);
      v17 = +[APSLog courier];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy8 = self;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: WiFi might be out of range or captive. Posting notification for iRatManager: APSDDetectedUnusableWiFi.", buf, 0xCu);
      }
    }

    symptomReporter = self->_symptomReporter;
    if (!symptomReporter)
    {
      v19 = objc_alloc_init(APSSymptomReporter);
      v20 = self->_symptomReporter;
      self->_symptomReporter = v19;

      symptomReporter = self->_symptomReporter;
    }

    [(APSSymptomReporter *)symptomReporter reportConnectionFailureOnConnectionType:interface != 0];
    v21 = self->_consecutiveConnectionFailureCount + 1;
  }

  else
  {
    v21 = 1;
  }

  self->_consecutiveConnectionFailureCount = v21;
  [(APSCourierConnection *)self->_courierConnection setObject:0 forKey:@"connectionEstablished" onInterface:interface];
  isConnected = [(APSCourierConnection *)self->_courierConnection isConnected];
  v23 = +[APSLog courier];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = sub_1000067F8(interface);
    v70 = reconnectCopy;
    v71 = v12;
    consecutiveConnectionFailureCount = self->_consecutiveConnectionFailureCount;
    interfaceCopy2 = interface;
    v25 = @"YES";
    if (isConnected)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v27 = sub_1000067F8([(APSCourierConnection *)self->_courierConnection preferredInterface]);
    if ([(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    if (!self->_enableCriticalReliability)
    {
      v25 = @"NO";
    }

    cmaType = self->_cmaType;
    countConnectedInterfaces = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    *buf = 138414338;
    selfCopy8 = self;
    v81 = 2112;
    v82 = *&v24;
    v83 = 2048;
    v84 = consecutiveConnectionFailureCount;
    v85 = 2112;
    v86 = v26;
    interface = interfaceCopy2;
    v87 = 2112;
    v88 = v27;
    v89 = 2112;
    v90 = v28;
    v91 = 2112;
    v92 = v25;
    v93 = 2048;
    v94 = cmaType;
    reconnectCopy = v70;
    v12 = v71;
    v95 = 2048;
    v96 = countConnectedInterfaces;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Disconnected in response to connection failure on interface %@. (Consecutive failures: %lu) isConnected %@ onInterface %@  shouldUseDualChannel %@ criticalReliability %@ cmaType %lu. Connected on %lu interfaces.", buf, 0x5Cu);
  }

  interfaceCopy3 = interface;
  if ([(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
  {
LABEL_27:
    if (interface == 1)
    {
      v32 = self->_cmaType;
      if (v32)
      {
        v33 = v32 == 1;
        v34 = 1;
        if (v33)
        {
          v34 = 2;
        }

        self->_cmaType = v34;
      }
    }

    pcInterfaceMonitorNonCellular = [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
    isInterfaceUsable = [pcInterfaceMonitorNonCellular isInterfaceUsable];

    if ((isInterfaceUsable & 1) == 0)
    {
      self->_cmaType = 0;
    }

    v37 = self->_consecutiveConnectionFailureCount;
    if (self->_enableCriticalReliability)
    {
      if (v37 < 3)
      {
        goto LABEL_44;
      }
    }

    else if (v37 == 1)
    {
      goto LABEL_44;
    }

    if ([(APSCourierConnection *)self->_courierConnection shouldClientScheduleReconnectDueToFailureOnInterface:interface])
    {
      v40 = self->_cmaType == 2;
      if (!reconnectCopy)
      {
        goto LABEL_48;
      }

LABEL_45:
      v41 = +[APSLog courier];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy8 = self;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%@: forceDelayedReconnect.", buf, 0xCu);
      }

      v40 = 0;
LABEL_48:
      delayedReconnectTLSIntervalTrigger = self->_delayedReconnectTLSIntervalTrigger;
      if (self->_consecutiveTLSConnectionFailureCount > delayedReconnectTLSIntervalTrigger && delayedReconnectTLSIntervalTrigger > 0 || (-[APSCourierConnectionManager connectionRetryManager](self, "connectionRetryManager"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 shouldDelayNextReconnect], v43, v44))
      {
        if ([(APSCourierConnectionManager *)self shouldUseInternet])
        {
          if (self->_consecutiveTLSConnectionFailureCount <= self->_delayedReconnectTLSIntervalTrigger || (delayedReconnectTLSInterval = self->_delayedReconnectTLSInterval, delayedReconnectTLSInterval <= 0.0))
          {
            connectionRetryManager2 = [(APSCourierConnectionManager *)self connectionRetryManager];
            [connectionRetryManager2 currentDelay];
            delayedReconnectTLSInterval = v47;
          }

          v48 = [[PCPersistentTimer alloc] initWithTimeInterval:@"APSCourier" serviceIdentifier:self target:"_delayedReconnectTimerFired" selector:0 userInfo:delayedReconnectTLSInterval];
          delayedReconnectTimer = self->_delayedReconnectTimer;
          self->_delayedReconnectTimer = v48;

          [(PCPersistentTimer *)self->_delayedReconnectTimer setMinimumEarlyFireProportion:1.0];
          v50 = self->_delayedReconnectTimer;
          v51 = +[NSRunLoop mainRunLoop];
          [(PCPersistentTimer *)v50 scheduleInRunLoop:v51];

          v52 = +[APSLog courier];
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v53 = self->_consecutiveConnectionFailureCount;
          *buf = 138412802;
          selfCopy8 = self;
          v81 = 2048;
          v82 = delayedReconnectTLSInterval;
          v83 = 1024;
          LODWORD(v84) = v53;
          v54 = "%@: scheduled reconnect in %f seconds {consecutiveFailures: %d}";
          v55 = v52;
          v56 = 28;
          goto LABEL_57;
        }
      }

      if (v40)
      {
        if ((v12 & 1) == 0)
        {
          [(APSCourierConnection *)self->_courierConnection resumeManagerWithAction:1 onInterface:interface];
          [(APSCourierConnection *)self->_courierConnection stopManagerOnInterface:interface];
        }
      }

      else
      {
        delegate = [(APSCourierConnectionManager *)self delegate];
        courierConnectionManagerClientsHaveEagerMessages = [delegate courierConnectionManagerClientsHaveEagerMessages];

        if (!courierConnectionManagerClientsHaveEagerMessages)
        {
          if ([(APSCourierConnectionManager *)self shouldUseInternet])
          {
            [(APSCourierConnection *)self->_courierConnection resumeManagerWithAction:5 onInterface:interfaceCopy3];
          }

          goto LABEL_80;
        }

        [(NSDate *)self->_lastConnectionAttempt timeIntervalSinceNow];
        v60 = fabs(v59);
        if (v60 <= 29.0)
        {
          v63 = 29.0 - v60;
          v64 = [[PCPersistentTimer alloc] initWithTimeInterval:@"APSCourier" serviceIdentifier:self target:"_pendingMessageReconnectTimerFired" selector:0 userInfo:v63];
          pendingMessageReconnectTimer = self->_pendingMessageReconnectTimer;
          self->_pendingMessageReconnectTimer = v64;

          [(PCPersistentTimer *)self->_pendingMessageReconnectTimer setMinimumEarlyFireProportion:1.0];
          v66 = self->_pendingMessageReconnectTimer;
          v67 = +[NSRunLoop mainRunLoop];
          [(PCPersistentTimer *)v66 scheduleInRunLoop:v67];

          v52 = +[APSLog courier];
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          *buf = 138412546;
          selfCopy8 = self;
          v81 = 2048;
          v82 = v63;
          v54 = "%@ has pending messages but it hasn't been long enough since the last connection attempt. Scheduling retry in %f";
          v55 = v52;
          v56 = 22;
LABEL_57:
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
LABEL_58:

LABEL_80:
          [(APSCourierConnectionManager *)self protocolConnectionForInterface:interface];
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_10009DBE4;
          v74 = v73[3] = &unk_100188A38;
          v62 = v74;
          [v62 enumerateStateListeners:v73];

          goto LABEL_81;
        }

        v61 = +[APSLog courier];
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          selfCopy8 = self;
          v81 = 2048;
          v82 = v60;
          v83 = 2048;
          v84 = 0x403D000000000000;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%@ has eager messages and it's been %f > %f, trying to reconnect now.", buf, 0x20u);
        }
      }

      if ([(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:interfaceCopy3])
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

LABEL_44:
    v40 = 1;
    if (!reconnectCopy)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (isConnected)
  {
    v38 = +[APSLog courier];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy8 = self;
      v39 = "%@: We are still connected on another interface. No need to retry/schedule a retry.";
LABEL_65:
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
    }
  }

  else
  {
    if (![(APSCourierConnection *)self->_courierConnection hasOpenConnection])
    {
      interfaceCopy3 = [(APSCourierConnection *)self->_courierConnection nextConnectionAttemptInterface];
      if (self->_consecutiveConnectionFailureCount == 1 && [(APSCourierConnectionManager *)self _isWiFiLinkQualityBetter])
      {
        interfaceCopy3 = 1;
      }

      goto LABEL_27;
    }

    v38 = +[APSLog courier];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy8 = self;
      v39 = "%@: We have an open connection attempt on another interface. No need to retry/schedule a retry.";
      goto LABEL_65;
    }
  }

  [(APSCourierConnection *)self->_courierConnection stopManagerOnInterface:interface];
LABEL_81:
}

- (void)_delayedReconnectTimerFired
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: _delayedReconnectTimerFired! Connecting now.", &v5, 0xCu);
  }

  [(PCPersistentTimer *)self->_delayedReconnectTimer invalidate];
  delayedReconnectTimer = self->_delayedReconnectTimer;
  self->_delayedReconnectTimer = 0;

  [(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:[(APSCourierConnection *)self->_courierConnection nextConnectionAttemptInterface]];
}

- (void)_clearDelayedReconnectTimer
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Canceling _delayedReconnectTimer.", &v5, 0xCu);
  }

  [(PCPersistentTimer *)self->_delayedReconnectTimer invalidate];
  delayedReconnectTimer = self->_delayedReconnectTimer;
  self->_delayedReconnectTimer = 0;
}

- (void)_pendingMessageReconnectTimerFired
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: _pendingMessageReconnectTimerFired!", &v5, 0xCu);
  }

  [(PCPersistentTimer *)self->_pendingMessageReconnectTimer invalidate];
  pendingMessageReconnectTimer = self->_pendingMessageReconnectTimer;
  self->_pendingMessageReconnectTimer = 0;

  [(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:[(APSCourierConnection *)self->_courierConnection nextConnectionAttemptInterface]];
}

- (void)_cacheIPAddress:(id)address onInterface:(int64_t)interface
{
  addressCopy = address;
  v7 = +[APSLog courier];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000067F8(interface);
    *buf = 138412802;
    selfCopy = self;
    v20 = 2112;
    v21 = addressCopy;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ cache ip address %@ on interface %@", buf, 0x20u);
  }

  v9 = APSCachedIPKey;
  v10 = sub_100004328(APSCachedIPKey, 0);
  if (v10)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 mutableCopy];
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v11);
    if (!addressCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (!addressCopy)
    {
      goto LABEL_12;
    }
  }

  if (!v12)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
LABEL_13:
    v13 = [NSDictionary alloc];
    v14 = +[NSDate date];
    name2 = [v13 initWithObjectsAndKeys:{v14, @"date", addressCopy, @"ip", 0}];

    name = [(APSEnvironment *)self->_environment name];
    [v12 setObject:name2 forKey:name];

    goto LABEL_14;
  }

LABEL_12:
  if (addressCopy)
  {
    goto LABEL_13;
  }

  name2 = [(APSEnvironment *)self->_environment name];
  [v12 removeObjectForKey:name2];
LABEL_14:

  if ([v12 count])
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  sub_100005394(v9, v17, 0);
  sub_1000054B8(0);
  [(APSCourierConnection *)self->_courierConnection setUsingCachedIPAddress:0 onInterface:interface];
}

- (void)_useCachedLastIPIfPossible:(int64_t)possible
{
  if (self->_lastIPCachingTTLSeconds > 0.0)
  {
    v5 = sub_100004328(APSCachedIPKey, 0);
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        name = [(APSEnvironment *)self->_environment name];
        v7 = [v5 objectForKey:name];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"ip"];
          v9 = [v7 objectForKey:@"date"];
          if (v9)
          {
            v10 = +[NSDate date];
            [v10 timeIntervalSinceDate:v9];
            v12 = v11;
          }

          else
          {
            v12 = 978307200.0;
          }

          if (v8 && v12 > 0.0 && v12 < self->_lastIPCachingTTLSeconds)
          {
            [(APSCourierConnection *)self->_courierConnection setUsingCachedIPAddress:v8 onInterface:possible];
            v13 = +[APSLog courier];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = sub_1000067F8(possible);
              v15 = 138413314;
              selfCopy = self;
              v17 = 2080;
              v18 = "[APSCourierConnectionManager _useCachedLastIPIfPossible:]";
              v19 = 2112;
              v20 = v8;
              v21 = 2048;
              v22 = v12;
              v23 = 2112;
              v24 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ %s setCachedIPAddress %@ with age %f on interface %@", &v15, 0x34u);
            }
          }

          goto LABEL_9;
        }
      }
    }

    v8 = 0;
    v9 = 0;
LABEL_9:
  }
}

- (BOOL)_connectStreamWithInterfacePreference:(int64_t)preference
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000067F8([(APSCourierConnection *)self->_courierConnection preferredInterface]);
    consecutiveConnectionFailureCount = self->_consecutiveConnectionFailureCount;
    v8 = sub_1000067F8(preference);
    if ([(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    countConnectedInterfaces = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    *buf = 138413570;
    selfCopy19 = self;
    v116 = 2112;
    v117 = v6;
    v118 = 2048;
    v119 = consecutiveConnectionFailureCount;
    v120 = 2112;
    v121 = v8;
    v122 = 2112;
    v123 = v9;
    v124 = 2048;
    v125 = countConnectedInterfaces;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ attempting to _connectStream. currently onInterface %@ consecutiveFailures %lu preference %@ shouldUseDualChannel %@. Connected on %lu interfaces.", buf, 0x3Eu);
  }

  if (+[APSSimulatorSupport isSimulator](APSSimulatorSupport, "isSimulator") && !+[APSSimulatorSupport isBuildSupported])
  {
    v27 = +[APSLog courier];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = +[APSSimulatorSupport isBuildSupported];
      v29 = @"NO";
      if (v28)
      {
        v29 = @"YES";
      }

      *buf = 138412290;
      selfCopy19 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Build version not supported {isSupportedOnBuild:%@} - disconnecting", buf, 0xCu);
    }

    return 0;
  }

  if (self->_delayedReconnectTimer)
  {
    v11 = +[APSLog courier];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      return 0;
    }

    delayedReconnectTimer = self->_delayedReconnectTimer;
    *buf = 138412546;
    selfCopy19 = self;
    v116 = 2112;
    v117 = delayedReconnectTimer;
    v13 = "%@: Not connecting. {delayedReconnectTimer:%@}";
    goto LABEL_11;
  }

  v16 = +[NSDate date];
  lastConnectionAttempt = self->_lastConnectionAttempt;
  self->_lastConnectionAttempt = v16;

  delegate = [(APSCourierConnectionManager *)self delegate];
  courierConnectionManagerClientsWillBeAbleToConnect = [delegate courierConnectionManagerClientsWillBeAbleToConnect];

  if (!courierConnectionManagerClientsWillBeAbleToConnect)
  {
    v30 = +[APSLog courier];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10010C690(v30);
    }

    [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:3 forceDelayedReconnect:1 withReason:14];
    return 0;
  }

  pcInterfaceMonitorNonCellular = [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
  isInterfaceUsable = [pcInterfaceMonitorNonCellular isInterfaceUsable];

  pcInterfaceMonitorWWAN = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  interfaceConstraint = [pcInterfaceMonitorWWAN interfaceConstraint];

  if ((_os_feature_enabled_impl() & isInterfaceUsable & (interfaceConstraint == 1)) != 0)
  {
    preferenceCopy = 1;
  }

  else
  {
    preferenceCopy = preference;
  }

  if (![(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
  {
    hasOpenConnection = [(APSCourierConnection *)self->_courierConnection hasOpenConnection];
    if (preferenceCopy == 3)
    {
      if (hasOpenConnection)
      {
        v11 = +[APSLog courier];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        countConnectedInterfaces2 = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
        *buf = 138412546;
        selfCopy19 = self;
        v116 = 2048;
        v117 = countConnectedInterfaces2;
        v13 = "%@ _connectStream - caller is ensuring that we are connected. We are so there's nothing to do here. - Connected on %lu interfaces.";
LABEL_11:
        v14 = v11;
        v15 = 22;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
        goto LABEL_13;
      }
    }
  }

  if ([(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:preferenceCopy])
  {
    v11 = +[APSLog courier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v25 = sub_1000067F8(preferenceCopy);
      courierConnection = self->_courierConnection;
      *buf = 138412802;
      selfCopy19 = self;
      v116 = 2112;
      v117 = v25;
      v118 = 2112;
      v119 = courierConnection;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ _connectStream - called with a preference %@ that matches our current connection %@, nothing to do", buf, 0x20u);
    }

    goto LABEL_13;
  }

  if ([(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
  {
    if ([(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:1])
    {
      v34 = [(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:0];
      if (preferenceCopy == 3)
      {
        if (v34)
        {
          v11 = +[APSLog courier];
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          *buf = 138412290;
          selfCopy19 = self;
          v13 = "%@ _connectStream - should use dual channel, no preference specified and we are already connected on both channels.";
          goto LABEL_101;
        }
      }
    }
  }

  v35 = isInterfaceUsable ^ 1;
  pcPersistentInterfaceManager = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
  isWWANInterfaceUp = [pcPersistentInterfaceManager isWWANInterfaceUp];

  pcInterfaceMonitorWWAN2 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  v39 = [pcInterfaceMonitorWWAN2 isInterfaceUsable] & isWWANInterfaceUp;

  if (_os_feature_enabled_impl())
  {
    if (((interfaceConstraint != 1) & v39) == 0 && ((interfaceConstraint == 1) & v39 & v35) == 0)
    {
      goto LABEL_44;
    }

LABEL_46:
    v41 = [(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:0]^ 1;
    v40 = 1;
    goto LABEL_47;
  }

  if (v39)
  {
    goto LABEL_46;
  }

LABEL_44:
  v40 = 0;
  v41 = 0;
LABEL_47:
  if (isInterfaceUsable && ![(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:1])
  {
    v41 = 1;
  }

  shouldUseDualMode = [(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode];
  hasOpenConnection2 = [(APSCourierConnection *)self->_courierConnection hasOpenConnection];
  if ((shouldUseDualMode & 1) == 0)
  {
    v48 = hasOpenConnection2 ^ 1;
    if (preferenceCopy)
    {
      v48 = 1;
    }

    if (v48 & 1) != 0 || (-[APSCourierConnectionManager pcInterfaceMonitorWWAN](self, "pcInterfaceMonitorWWAN"), v49 = objc_claimAutoreleasedReturnValue(), v50 = [v49 isInterfaceHistoricallyUsable] & isWWANInterfaceUp, v49, (v50))
    {
      if ((preferenceCopy != 1) | ![(APSCourierConnection *)self->_courierConnection hasOpenConnection]| isInterfaceUsable & 1)
      {
        goto LABEL_65;
      }

      v11 = +[APSLog courier];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      selfCopy19 = self;
      v13 = "%@ _connectStream - want wifi but it is not currently usable, nothing to do";
    }

    else
    {
      v11 = +[APSLog courier];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      selfCopy19 = self;
      v13 = "%@ _connectStream - want wwan but it is not historically usable, nothing to do";
    }

LABEL_101:
    v14 = v11;
    v15 = 12;
    goto LABEL_12;
  }

  if (((v41 | hasOpenConnection2 ^ 1) & 1) == 0)
  {
    v44 = +[APSLog courier];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      countConnectedInterfaces3 = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
      v46 = @"NO";
      v116 = 2048;
      *buf = 138413058;
      if (v40)
      {
        v47 = @"YES";
      }

      else
      {
        v47 = @"NO";
      }

      selfCopy19 = self;
      v117 = countConnectedInterfaces3;
      v118 = 2112;
      if (isInterfaceUsable)
      {
        v46 = @"YES";
      }

      v119 = v47;
      v120 = 2112;
      v121 = v46;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%@ _connectStream - dual channel with %lu connected interfaces. isWWANUsable %@, isWiFiUsable %@. Not attempting to connect.", buf, 0x2Au);
    }

    result = 0;
    self->_consecutiveConnectionFailureCount = 0;
    self->_consecutiveTLSConnectionFailureCount = 0;
    return result;
  }

LABEL_65:
  if (!v41)
  {
    v58 = +[APSLog courier];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = self->_courierConnection;
      *buf = 138412546;
      selfCopy19 = self;
      v116 = 2112;
      v117 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@ _connectStream - we want to connect but no closed interfaces are usable, scheduling a reconnect. %@", buf, 0x16u);
    }

    if (preferenceCopy == 3)
    {
      if (![(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:1])
      {
        v60 = +[APSLog courier];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = sub_1000067F8(1uLL);
          *buf = 138412546;
          selfCopy19 = self;
          v116 = 2112;
          v117 = v61;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%@ scheduled on %@", buf, 0x16u);
        }

        [(APSCourierConnection *)self->_courierConnection resumeManagerWithAction:5 onInterface:1];
      }

      if ([(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:0])
      {
        return 0;
      }

      v62 = +[APSLog courier];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = sub_1000067F8(0);
        *buf = 138412546;
        selfCopy19 = self;
        v116 = 2112;
        v117 = v63;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%@ scheduled on %@", buf, 0x16u);
      }

      v64 = self->_courierConnection;
      v65 = 0;
    }

    else
    {
      v67 = +[APSLog courier];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = sub_1000067F8(preferenceCopy);
        *buf = 138412546;
        selfCopy19 = self;
        v116 = 2112;
        v117 = v68;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%@ scheduled on %@", buf, 0x16u);
      }

      v64 = self->_courierConnection;
      v65 = preferenceCopy;
    }

    goto LABEL_174;
  }

  v51 = v40;
  if (![(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
  {
    if (preferenceCopy != 3)
    {
      [(APSCourierConnectionManager *)self _disconnectStreamForInterface:preferenceCopy withReason:4];
    }

    connectingInterface = [(APSCourierConnection *)self->_courierConnection connectingInterface];
    if (connectingInterface != 3)
    {
      v53 = connectingInterface;
      v54 = +[APSLog courier];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = sub_1000067F8(v53);
        *buf = 138412546;
        selfCopy19 = self;
        v116 = 2112;
        v117 = v55;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%@: _connectStream - Disconnecting pending connection on %@ before opening a new one.", buf, 0x16u);
      }

      [(APSCourierConnectionManager *)self _disconnectStreamForInterface:v53 withReason:1020];
    }
  }

  if ([(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
  {
    if (v51)
    {
      v56 = [(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:0];
      if (v56)
      {
        _isWiFiLinkQualityBetter = 3;
      }

      else
      {
        _isWiFiLinkQualityBetter = 0;
      }

      if ((v56 & isInterfaceUsable & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (!isInterfaceUsable)
    {
      _isWiFiLinkQualityBetter = 3;
LABEL_110:
      if (preferenceCopy == 3 || [(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:preferenceCopy])
      {
        goto LABEL_112;
      }

      if (preferenceCopy == 1)
      {
        v69 = isInterfaceUsable;
      }

      else
      {
        v69 = 0;
      }

      if (v69)
      {
LABEL_121:
        _isWiFiLinkQualityBetter = 1;
        goto LABEL_134;
      }

      if (preferenceCopy)
      {
        v72 = 0;
      }

      else
      {
        v72 = v51;
      }

      if ((v72 & 1) == 0)
      {
LABEL_112:
        if (_isWiFiLinkQualityBetter == 3)
        {
          v66 = +[APSLog courier];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
          {
            sub_10010C744();
          }

          _isWiFiLinkQualityBetter = 3;
LABEL_116:

          goto LABEL_134;
        }

        goto LABEL_134;
      }

LABEL_133:
      _isWiFiLinkQualityBetter = 0;
      goto LABEL_134;
    }

    if ([(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:1])
    {
      _isWiFiLinkQualityBetter = 3;
    }

    else
    {
      _isWiFiLinkQualityBetter = 1;
    }

    goto LABEL_110;
  }

  if (((v51 ^ 1 | isInterfaceUsable) & 1) == 0)
  {
    goto LABEL_133;
  }

  if ((v51 | v35) != 1)
  {
    goto LABEL_121;
  }

  if ((v51 ^ 1 | v35))
  {
    v66 = +[APSLog courier];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
    {
      sub_10010C6D4();
    }

    _isWiFiLinkQualityBetter = 0;
    goto LABEL_116;
  }

  _isWiFiLinkQualityBetter = preferenceCopy;
  if (preferenceCopy == 3)
  {
    nextConnectionAttemptInterface = [(APSCourierConnection *)self->_courierConnection nextConnectionAttemptInterface];
    if (!self->_consecutiveConnectionFailureCount || (_isWiFiLinkQualityBetter = nextConnectionAttemptInterface, nextConnectionAttemptInterface == 3))
    {
      _isWiFiLinkQualityBetter = [(APSCourierConnectionManager *)self _isWiFiLinkQualityBetter];
      v66 = +[APSLog courier];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v71 = @"NO";
        if (_isWiFiLinkQualityBetter)
        {
          v71 = @"YES";
        }

        *buf = 138412546;
        selfCopy19 = self;
        v116 = 2112;
        v117 = v71;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%@: No interface preference specified. Is WiFi lq better? %@", buf, 0x16u);
      }

      goto LABEL_116;
    }
  }

LABEL_134:
  if (![(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode]&& ![(APSCourierConnection *)self->_courierConnection isConnected])
  {
    v73 = +[APSLog courier];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy19 = self;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%@: _connectStream - We have no connections, stopping the connectionManager on all interfaces", buf, 0xCu);
    }

    [(APSCourierConnection *)self->_courierConnection stopManagerOnInterface:3];
  }

  v74 = +[APSLog courier];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v75 = sub_1000067F8(_isWiFiLinkQualityBetter);
    *buf = 138412546;
    selfCopy19 = self;
    v116 = 2112;
    v117 = v75;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%@ _connectStream - Stopping the connectionManager on our attemptInterface %@", buf, 0x16u);
  }

  [(APSCourierConnection *)self->_courierConnection stopManagerOnInterface:_isWiFiLinkQualityBetter];
  v76 = +[APSLog courier];
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    if (v51)
    {
      v77 = @"YES";
    }

    else
    {
      v77 = @"NO";
    }

    if (isInterfaceUsable)
    {
      v78 = @"YES";
    }

    else
    {
      v78 = @"NO";
    }

    v79 = sub_1000067F8(_isWiFiLinkQualityBetter);
    *buf = 138413058;
    selfCopy19 = self;
    v116 = 2112;
    v117 = v77;
    v118 = 2112;
    v119 = v78;
    v120 = 2112;
    v121 = v79;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%@: isWWANUsable %@  isWiFiUsable %@ onInterface %@", buf, 0x2Au);
  }

  if (_isWiFiLinkQualityBetter == 1)
  {
    cmaType = self->_cmaType;
    if (!cmaType)
    {
      cmaType = 1;
      self->_cmaType = 1;
    }

    v81 = cmaType == 2;
  }

  else
  {
    v81 = 0;
  }

  if (self->_lastIPCachingPercentage > arc4random_uniform(0x64u))
  {
    v82 = [(APSCourierConnection *)self->_courierConnection usingCachedIPAddressOnInterface:_isWiFiLinkQualityBetter];
    if (v82)
    {
    }

    else
    {
      redirectHost = [(APSCourierConnection *)self->_courierConnection redirectHost];

      if (!redirectHost)
      {
        v84 = +[APSLog courier];
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v85 = self->_courierConnection;
          v86 = sub_1000067F8(_isWiFiLinkQualityBetter);
          *buf = 138412546;
          selfCopy19 = v85;
          v116 = 2112;
          v117 = v86;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%@ device selected to connect using cached ip if possible on %@", buf, 0x16u);
        }

        [(APSCourierConnectionManager *)self _useCachedLastIPIfPossible:_isWiFiLinkQualityBetter];
      }
    }
  }

  if (![(APSCourierConnection *)self->_courierConnection shouldConnectOnInterface:_isWiFiLinkQualityBetter])
  {
    v96 = +[APSLog courier];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      v97 = sub_1000067F8(_isWiFiLinkQualityBetter);
      *buf = 138412546;
      selfCopy19 = self;
      v116 = 2112;
      v117 = v97;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%@ device should not connect on interface %@", buf, 0x16u);
    }

    v64 = self->_courierConnection;
    v65 = _isWiFiLinkQualityBetter;
LABEL_174:
    [(APSCourierConnection *)v64 resumeManagerWithAction:5 onInterface:v65];
    return 0;
  }

  if (_isWiFiLinkQualityBetter)
  {
    v87 = 0;
  }

  else
  {
    v87 = interfaceConstraint == 1;
  }

  v88 = v87;
  v89 = [(APSCourierConnectionManager *)self _usableOffloadInfo:_isWiFiLinkQualityBetter];
  environment = [(APSCourierConnectionManager *)self environment];
  name = [environment name];
  v92 = [name isEqualToString:APSEnvironmentProduction];

  if (v92)
  {
    v93 = +[APSOffloadHeuristics shared];
    v94 = v93;
    if (!v89)
    {
      [v93 directConnectionAttemptedOnInterface:_isWiFiLinkQualityBetter];

      v95 = &fputc_ptr;
      goto LABEL_178;
    }

    [v93 offloadConnectionAttemptedOnInterface:_isWiFiLinkQualityBetter];

    v95 = &fputc_ptr;
    goto LABEL_176;
  }

  v95 = &fputc_ptr;
  if (v89)
  {
LABEL_176:
    v98 = [(CoreTelephonyClient *)self->_ctClient getInternetConnectionAvailabilitySync:0];
  }

LABEL_178:
  [(APSCourierConnection *)self->_courierConnection connectToEnvironment:self->_environment onInterface:_isWiFiLinkQualityBetter allowedInterfaceConstraint:v88 useAlternatePort:v81 keepAliveProxyMode:0 offloadInfo:v89];
  v99 = +[APSLog courier];
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
  {
    v100 = sub_1000067F8(_isWiFiLinkQualityBetter);
    name2 = [(APSEnvironment *)self->_environment name];
    *buf = 138412546;
    selfCopy19 = v100;
    v116 = 2112;
    v117 = name2;
    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "Opening stream onInterface: %@, %@", buf, 0x16u);
  }

  v102 = +[APSLog courier];
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    configurationURL = [(APSEnvironment *)self->_environment configurationURL];
    environment = self->_environment;
    if (v81)
    {
      alternatePort = [(APSEnvironment *)environment alternatePort];
    }

    else
    {
      alternatePort = [(APSEnvironment *)environment port];
    }

    *buf = 138412802;
    selfCopy19 = self;
    v116 = 2112;
    v117 = configurationURL;
    v118 = 2048;
    v119 = alternatePort;
    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%@: Connecting courier stream using configuration bag at %@ and port TCP %lu", buf, 0x20u);
  }

  v106 = self->_courierConnection;
  date = [v95[474] date];
  [(APSCourierConnection *)v106 setObject:date forKey:@"startedOpeningStream" onInterface:_isWiFiLinkQualityBetter];

  [(APSCourierConnectionManager *)self _startConnectionEstablishTimerOnInterface:_isWiFiLinkQualityBetter];
  connectionRetryManager = [(APSCourierConnectionManager *)self connectionRetryManager];
  [connectionRetryManager noteConnectionAttemptStart];

  if (_isWiFiLinkQualityBetter)
  {
    v109 = @"wifi";
  }

  else
  {
    v109 = @"wwan";
  }

  v110 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:_isWiFiLinkQualityBetter, @"Interface", @"LinkQuality", v109]];
  v113[1] = v110;
  v111 = [NSDictionary dictionaryWithObjects:v113 forKeys:&v112 count:2];

  APSPowerLog();
  return 1;
}

- (void)_stopOffloadingToAOP
{
  if (_os_feature_enabled_impl())
  {
    connectionOffloader = [(APSCourierConnectionManager *)self connectionOffloader];
    [connectionOffloader stopOffloading];

    courierConnection = [(APSCourierConnectionManager *)self courierConnection];
    environment = [(APSCourierConnectionManager *)self environment];
    [courierConnection resetKeepAliveStateMachineOnInterface:0 forEnvironment:environment];

    [(APSCourierConnectionManager *)self disconnectAllStreamsWithReason:28];
  }
}

- (BOOL)_deviceCanOffloadPresenceResponse:(id)response interface:(int64_t)interface
{
  v6 = [response objectForKey:@"APSProtocolConnectedResponse"];
  intValue = [v6 intValue];

  environment = [(APSCourierConnectionManager *)self environment];
  v9 = [(APSCourierConnectionManager *)self _shouldOffloadToAOP:interface environment:environment];

  return v9 && [(APSCourierConnectionManager *)self _hasUsableOffloadInfo:interface]&& !intValue;
}

- (BOOL)_hasUsableOffloadInfo:(int64_t)info
{
  v4 = [(APSCourierConnectionManager *)self _usableOffloadInfo:info];
  if (v4)
  {
    offloadInfo = [(APSCourierConnectionManager *)self offloadInfo];
    [offloadInfo insertObject:v4 atIndex:0];
  }

  return v4 != 0;
}

- (id)_usableOffloadInfo:(int64_t)info
{
  environment = [(APSCourierConnectionManager *)self environment];
  LODWORD(info) = [(APSCourierConnectionManager *)self _shouldOffloadToAOP:info environment:environment];

  if (!info)
  {
    goto LABEL_4;
  }

  _shouldPerformFullHandshake = [(APSCourierConnectionManager *)self _shouldPerformFullHandshake];
  offloadInfo = [(APSCourierConnectionManager *)self offloadInfo];
  v8 = offloadInfo;
  if (_shouldPerformFullHandshake)
  {
    [offloadInfo removeAllObjects];

    [(APSCourierConnectionManager *)self _noteFullTCPHandshake];
LABEL_4:
    v9 = 0;
    goto LABEL_18;
  }

  v10 = [offloadInfo copy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v26;
    *&v13 = 138412290;
    v24 = v13;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        if (![v17 isExpired])
        {
          v21 = v17;
          offloadInfo2 = [(APSCourierConnectionManager *)self offloadInfo];
          [offloadInfo2 removeObject:v21];

          v20 = v21;
          v9 = v20;
          goto LABEL_17;
        }

        v18 = +[APSLog courier];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v24;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: Offload is expired, skipping.", buf, 0xCu);
        }

        offloadInfo3 = [(APSCourierConnectionManager *)self offloadInfo];
        [offloadInfo3 removeObject:v17];
      }

      v14 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
  v20 = v11;
LABEL_17:

LABEL_18:

  return v9;
}

- (unint64_t)numberOfPSKsToRequestOnInterface:(int64_t)interface
{
  environment = [(APSCourierConnectionManager *)self environment];
  v6 = [(APSCourierConnectionManager *)self _shouldOffloadToAOP:interface environment:environment];

  if (!v6 || [(APSCourierConnectionManager *)self isDelayingPSKRequests])
  {
    return 0;
  }

  environment2 = [(APSCourierConnectionManager *)self environment];
  v9 = [APSConfiguration configurationForEnvironment:environment2 connectionType:interface];
  offloadInfoCacheSize = [v9 offloadInfoCacheSize];
  v11 = offloadInfoCacheSize;
  v12 = &off_100197A88;
  if (offloadInfoCacheSize)
  {
    v12 = offloadInfoCacheSize;
  }

  v13 = v12;

  unsignedIntValue = [v13 unsignedIntValue];
  offloadInfo = [(APSCourierConnectionManager *)self offloadInfo];
  v7 = unsignedIntValue - [offloadInfo count];

  v16 = +[APSLog courier];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    offloadInfo2 = [(APSCourierConnectionManager *)self offloadInfo];
    v19 = 138412802;
    selfCopy = self;
    v21 = 2048;
    v22 = [offloadInfo2 count];
    v23 = 2048;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: Currently have %ld PSKs, requesting %ld PSKs for offloading", &v19, 0x20u);
  }

  return v7;
}

- (BOOL)_shouldPerformFullHandshake
{
  v2 = sub_100004328(APSLastFullHandshakeTime, 0);
  [v2 doubleValue];
  v3 = [NSDate dateWithTimeIntervalSince1970:?];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5 > 604800.0;

  return v6;
}

- (void)_noteFullTCPHandshake
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v3 = [NSNumber numberWithDouble:?];

  sub_100005394(APSLastFullHandshakeTime, v3, 0);
}

- (BOOL)_shouldOffloadToAOP:(int64_t)p environment:(id)environment
{
  environmentCopy = environment;
  v7 = sub_100004328(APSForceAOPConnnection, 1);
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    shouldOffloadToAOP = +[APSLog courier];
    if (os_log_type_enabled(shouldOffloadToAOP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy6 = self;
      _os_log_impl(&_mh_execute_header, shouldOffloadToAOP, OS_LOG_TYPE_DEFAULT, "%@: Offloading forced by defaults.", buf, 0xCu);
    }

    v10 = 1;
    goto LABEL_24;
  }

  if (![environmentCopy environmentType])
  {
    v11 = [APSConfiguration configurationForEnvironment:environmentCopy connectionType:p];
    shouldOffloadToAOP = [v11 shouldOffloadToAOP];

    if (([shouldOffloadToAOP BOOLValue]& 1) != 0)
    {
      if (nw_settings_get_push_ulpn_enabled())
      {
        v12 = +[PCCarrierBundleHelper helper];
        v24 = 0;
        v13 = [v12 BOOLValueFromPushBundleForKey:@"ForceDisablePushOffload" error:&v24];
        v14 = v24;

        if (v13)
        {
          if (v14)
          {
            v15 = +[APSLog courier];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_10010C7B4();
            }
          }

          v16 = +[APSLog courier];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy6 = self;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: Offload disabled by carrier bundle.", buf, 0xCu);
          }
        }

        else
        {
          v19 = +[APSOffloadHeuristics shared];
          v20 = [v19 canOffloadOnInterface:p];

          v21 = +[APSLog courier];
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            if (v22)
            {
              v23 = @"NO";
              if (!p)
              {
                v23 = @"YES";
              }

              *buf = 138412546;
              selfCopy6 = self;
              v27 = 2112;
              v28 = v23;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: Can offload? %@", buf, 0x16u);
            }

            v10 = p == 0;
            goto LABEL_23;
          }

          if (v22)
          {
            *buf = 138412290;
            selfCopy6 = self;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: Offload disabled by offloading heuristics.", buf, 0xCu);
          }
        }

LABEL_22:
        v10 = 0;
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v14 = +[APSLog courier];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      selfCopy6 = self;
      v17 = "%@: Device is not in offloading population.";
    }

    else
    {
      v14 = +[APSLog courier];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      selfCopy6 = self;
      v17 = "%@: Offload disabled by APNS bag.";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
    goto LABEL_22;
  }

  v10 = 0;
LABEL_25:

  return v10;
}

- (void)_handlePSKVendingStatus:(unint64_t)status onConnectionType:(int64_t)type
{
  if ([(APSCourierConnectionManager *)self isDelayingPSKRequests])
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10010C878();
    }

    goto LABEL_4;
  }

  if (status > 2)
  {
    if (status == 3)
    {
      v9 = +[APSLog courier];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "The server has rate limited us.  Disabling PSK vending for a while.", buf, 2u);
      }

      [(APSCourierConnectionManager *)self setIsDelayingPSKRequests:1];
      environment = [(APSCourierConnectionManager *)self environment];
      v11 = [APSConfiguration configurationForEnvironment:environment connectionType:type];
      pskRateLimitDelayInSeconds = [v11 pskRateLimitDelayInSeconds];

      if (pskRateLimitDelayInSeconds)
      {
        v7 = pskRateLimitDelayInSeconds;
      }

      else
      {
        v7 = &off_100197AA0;
      }

      v13 = dispatch_time(0, ([v7 unsignedIntegerValue]* 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A0700;
      block[3] = &unk_100186D90;
      block[4] = self;
      dispatch_after(v13, &_dispatch_main_q, block);
      goto LABEL_4;
    }

    if (status == 4)
    {
      v7 = +[APSLog courier];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Server is not in a state to handle our PSK request.";
        goto LABEL_15;
      }

LABEL_4:
    }
  }

  else
  {
    if (status == 1)
    {
      v7 = +[APSLog courier];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_10010C838();
      }

      goto LABEL_4;
    }

    if (status == 2)
    {
      v7 = +[APSLog courier];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Server hit an internal error when trying to vend us a PSK.";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
        goto LABEL_4;
      }

      goto LABEL_4;
    }
  }
}

- (void)_startConnectionEstablishTimerOnInterface:(int64_t)interface
{
  [(APSCourierConnectionManager *)self _clearConnectionEstablishTimerOnInterface:?];
  courierConnection = self->_courierConnection;

  [(APSCourierConnection *)courierConnection startConnectionEstablishTimerOnInterface:interface];
}

- (void)_startFilterMessageTimerOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    [(APSCourierConnectionManager *)self _clearFilterMessageTimerOnInterface:?];
    filterMessageTimeout = self->_filterMessageTimeout;
    v10 = [NSNumber numberWithInteger:interface];
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_filterMessageTimeoutTimerFired:" selector:v10 userInfo:0 repeats:filterMessageTimeout];
    v8 = &self->super.isa + interface;
    v9 = v8[18];
    v8[18] = v7;
  }
}

- (void)_clearFilterMessageTimerOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    filterMessageTimer = self->_filterMessageTimer;
    v5 = self->_filterMessageTimer[interface];
    if (v5)
    {
      [(NSTimer *)v5 invalidate];
      v6 = filterMessageTimer[interface];
      filterMessageTimer[interface] = 0;
    }
  }
}

- (void)_filterMessageTimeoutTimerFired:(id)fired
{
  userInfo = [fired userInfo];
  integerValue = [userInfo integerValue];

  [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:integerValue forceDelayedReconnect:0 withReason:22];
}

- (NSString)ifname
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  ifname = [courierConnection ifname];

  return ifname;
}

- (id)pcInterfaceMonitorOnInterface:(int64_t)interface
{
  if (!interface)
  {
    v5 = 1;
LABEL_5:
    v6 = [PCInterfaceMonitor sharedInstanceForIdentifier:v5, v3];

    return v6;
  }

  if (interface == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (BOOL)_isWiFiLinkQualityBetter
{
  pcInterfaceMonitorWWAN = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  if ([pcInterfaceMonitorWWAN isPoorLinkQuality])
  {
    pcInterfaceMonitorNonCellular = [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
    if ([pcInterfaceMonitorNonCellular isPoorLinkQuality])
    {
      isWakeOnWiFiSupported = 0;
    }

    else
    {
      pcInterfaceMonitorNonCellular2 = [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
      if ([pcInterfaceMonitorNonCellular2 isInternetReachable])
      {
        pcPersistentInterfaceManager = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
        isWakeOnWiFiSupported = [pcPersistentInterfaceManager isWakeOnWiFiSupported];
      }

      else
      {
        isWakeOnWiFiSupported = 0;
      }
    }
  }

  else
  {
    isWakeOnWiFiSupported = 0;
  }

  return isWakeOnWiFiSupported;
}

- (int)_linkQualityForInterface:(int64_t)interface
{
  if (interface == 1)
  {
    [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
  }

  else
  {
    [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  }
  v3 = ;
  linkQuality = [v3 linkQuality];

  return linkQuality;
}

- (BOOL)_useShortKeepAliveInterval
{
  if (qword_1001BF8A8 != -1)
  {
    sub_10010C8B8();
  }

  return byte_1001BF8A0;
}

- (unsigned)_keepAliveVersionForInterface:(int64_t)interface
{
  if ([(APSCourierConnection *)self->_courierConnection keepAliveV2SupportedOnInterface:interface])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)useServerKeepAliveStatsOnInterface:(int64_t)interface
{
  if (interface)
  {
    return 0;
  }

  if ([(APSConnectionHistory *)self->_connectionHistory connectionQualityOnInterface:?]< 1)
  {
    return 0;
  }

  if (self->_serverMaxKeepAliveInterval || self->_serverExpectedKeepAliveInterval)
  {
    return 1;
  }

  return self->_serverMinKeepAliveInterval != 0;
}

- (BOOL)_isInternetReachableOnInterface:(int64_t)interface
{
  if (interface > 1)
  {
    return 0;
  }

  v10 = v3;
  if (interface == 1)
  {
    [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
  }

  else
  {
    [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  }
  v8 = ;
  isInternetReachable = [v8 isInternetReachable];

  return isInternetReachable;
}

- (id)hourlySuspendToggleRateLimiter
{
  suspendToggleHourlyLimiter = self->_suspendToggleHourlyLimiter;
  if (!suspendToggleHourlyLimiter || [(APSRateLimiter *)suspendToggleHourlyLimiter isUnset])
  {
    v4 = [[APSRateLimiter alloc] initWithLimit:self->_suspendToggleHourlyLimit timeLimit:3600.0];
    v5 = self->_suspendToggleHourlyLimiter;
    self->_suspendToggleHourlyLimiter = v4;
  }

  v6 = self->_suspendToggleHourlyLimiter;

  return v6;
}

- (id)dailySuspendToggleRateLimiter
{
  suspendToggleDailyLimiter = self->_suspendToggleDailyLimiter;
  if (!suspendToggleDailyLimiter || [(APSRateLimiter *)suspendToggleDailyLimiter isUnset])
  {
    v4 = [[APSRateLimiter alloc] initWithLimit:self->_suspendToggleDailyLimit timeLimit:86400.0];
    v5 = self->_suspendToggleDailyLimiter;
    self->_suspendToggleDailyLimiter = v4;
  }

  v6 = self->_suspendToggleDailyLimiter;

  return v6;
}

- (void)clearDNSResolutionAndTLSHandshakeOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v7 = &self->super.isa + interface;
    v8 = v7[3];
    v7[3] = 0;

    v9 = v7[5];
    v7[5] = 0;
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(interface);
      v10 = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to clear dnsResolutionTimeMilliseconds on invalid interface %@", &v10, 0x16u);
    }
  }
}

- (NSString)currentLinkQualityString
{
  pcPersistentInterfaceManager = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
  currentLinkQualityString = [pcPersistentInterfaceManager currentLinkQualityString];

  return currentLinkQualityString;
}

- (NSArray)activeProtocolConnections
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = 0;
  protocolConnections = self->_protocolConnections;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = protocolConnections[v4];
    v9 = v8;
    if (v8 && [(APSCourierConnectionProtocolConnection *)v8 isConnected])
    {
      [v3 addObject:v9];
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  v10 = [v3 copy];

  return v10;
}

- (void)clearProtocolConnectionForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v3 = &self->super.isa + interface;
    v4 = v3[12];
    v3[12] = 0;
  }
}

- (id)protocolConnectionForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v4 = self->_protocolConnections[interface];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)carrierBundleDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A10AC;
  block[3] = &unk_100186D90;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)courierConnection:(id)connection connectionManager:(id)manager handleEvent:(int)event context:(id)context onInterface:(int64_t)interface
{
  connectionCopy = connection;
  managerCopy = manager;
  contextCopy = context;
  if (event > 6)
  {
    if (event == 7)
    {
      v25 = +[APSLog courier];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy18 = self;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: Persistent interface went up", buf, 0xCu);
      }
    }

    else if (event != 8)
    {
      goto LABEL_85;
    }

    pcPersistentInterfaceManager = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
    v27 = +[APSLog courier];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = "inactive";
      if (event == 7)
      {
        v28 = "active";
      }

      v60 = v28;
      sub_1000067F8(interface);
      v29 = v63 = managerCopy;
      courierConnection = self->_courierConnection;
      v61 = connectionCopy;
      v62 = contextCopy;
      v31 = @"YES";
      if ([(APSCourierConnection *)courierConnection hasConnectionEstablishTimerOnInterface:interface])
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v59 = v32;
      if ([pcPersistentInterfaceManager isInternetReachable])
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      if (![(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
      {
        v31 = @"NO";
      }

      v34 = sub_1000067F8(interface);
      *buf = 138414082;
      selfCopy18 = self;
      v66 = 2080;
      *v67 = v60;
      *&v67[8] = 2112;
      *&v67[10] = v29;
      v68 = 2112;
      v69 = courierConnection;
      v70 = 2112;
      v71 = v59;
      v72 = 2112;
      v73 = v33;
      v74 = 2112;
      v75 = v31;
      connectionCopy = v61;
      contextCopy = v62;
      v76 = 2112;
      v77 = v34;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@: Persistent interface went %s. onInterface: %@ conn %@ connectTimer %@ reachable? %@ shouldUseDualChannel? %@  onInterface: %@", buf, 0x52u);

      managerCopy = v63;
    }

    v35 = 0;
    if (interface || !self->_remainsConnectedWhenWWANSuspends)
    {
LABEL_62:
      shouldUseDualMode = [(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode];
      v47 = self->_courierConnection;
      if (shouldUseDualMode)
      {
        if ([(APSCourierConnection *)v47 hasOpenConnectionOnInterface:interface]|| ![(APSCourierConnectionManager *)self _isInternetReachableOnInterface:interface])
        {
          goto LABEL_84;
        }

        selfCopy6 = self;
        interfaceCopy = interface;
      }

      else
      {
        if (!-[APSCourierConnection hasOpenConnection](v47, "hasOpenConnection") && [pcPersistentInterfaceManager isInternetReachable])
        {
          v50 = +[APSLog courier];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy18 = self;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%@: Reconnecting because of an interface change while disconnected.", buf, 0xCu);
          }

          [(APSCourierConnectionManager *)self _adjustConnection];
          goto LABEL_84;
        }

        if (!-[APSCourierConnection hasOpenConnectionOnInterface:](self->_courierConnection, "hasOpenConnectionOnInterface:", 0) || ((v35 | [pcPersistentInterfaceManager isWWANInterfaceUp]) & 1) != 0)
        {
LABEL_84:

          goto LABEL_85;
        }

        v51 = +[APSLog courier];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy18 = self;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%@: WWAN interface went down. Attempting to switch to WiFi.", buf, 0xCu);
        }

        selfCopy6 = self;
        interfaceCopy = 1;
      }

      [(APSCourierConnectionManager *)selfCopy6 _adjustConnectionWithInterfacePreference:interfaceCopy];
      goto LABEL_84;
    }

    isWWANInterfaceUp = [pcPersistentInterfaceManager isWWANInterfaceUp];
    if (event == 8)
    {
      if ((isWWANInterfaceUp & 1) == 0 && [pcPersistentInterfaceManager isWWANInterfaceSuspended])
      {
        v37 = +[APSLog courier];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Cellular interface is suspended", buf, 2u);
        }

        [(APSCourierConnectionManager *)self _handleConnectionSuspendedOnInterface:0];
LABEL_96:
        v35 = 1;
        goto LABEL_62;
      }

      if (([pcPersistentInterfaceManager isWWANInterfaceUp] & 1) == 0 && (objc_msgSend(pcPersistentInterfaceManager, "isWWANInterfaceSuspended") & 1) == 0)
      {
        if (![pcPersistentInterfaceManager hasWWANStatusIndicator] || (-[APSCourierConnectionManager pcInterfaceMonitorWWAN](self, "pcInterfaceMonitorWWAN"), v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "isInterfaceUsable"), v55, !v56))
        {
          v58 = +[APSLog courier];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Cellular interface is not suspended, ignore transition", buf, 2u);
          }

          goto LABEL_96;
        }

        [(APSCourierConnectionManager *)self _disconnectStreamForInterface:0 withReason:12];
      }
    }

    else if (isWWANInterfaceUp)
    {
      [(APSCourierConnectionManager *)self _handleConnectionRecoverFromSuspensionOnInterface:0];
    }

    v35 = 0;
    goto LABEL_62;
  }

  if ((event - 3) < 3)
  {
    v15 = +[APSLog courier];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_1000067F8(interface);
      *buf = 138412802;
      selfCopy18 = self;
      v66 = 1024;
      *v67 = event;
      *&v67[4] = 2112;
      *&v67[6] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ handleEvent: %d onInterface %@", buf, 0x1Cu);
    }

    if ([(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
    {
      [(APSCourierConnectionManager *)self _disconnectStreamForInterface:interface withReason:3];
      selfCopy19 = self;
      interfaceCopy2 = interface;
    }

    else
    {
      [(APSCourierConnectionManager *)self _disconnectAllStreamsWithReason:3];
      interfaceCopy2 = [(APSCourierConnection *)self->_courierConnection nextConnectionAttemptInterface];
      selfCopy19 = self;
    }

LABEL_21:
    [(APSCourierConnectionManager *)selfCopy19 _adjustConnectionWithInterfacePreference:interfaceCopy2];
    goto LABEL_85;
  }

  if (event == 2)
  {
    v19 = +[APSLog courier];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [connectionCopy keepAliveV2SupportedOnInterface:interface];
      v21 = @"NO";
      if (v20)
      {
        v21 = @"YES";
      }

      *buf = 138412546;
      selfCopy18 = self;
      v66 = 2112;
      *v67 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: received PCEventPushKeepAlive call back, keepAliveV2SupportedOnInterface: %@", buf, 0x16u);
    }

    if ([connectionCopy keepAliveV2SupportedOnInterface:interface])
    {
      v22 = [contextCopy objectForKey:PCTimerFireEarlyToCoalesceKey];
      bOOLValue = [v22 BOOLValue];

      if (bOOLValue)
      {
        v24 = +[APSLog courier];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy18 = self;
          v66 = 2112;
          *v67 = managerCopy;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: PCEventPushKeepAlive callback is an early fire from %@", buf, 0x16u);
        }

        [(APSCourierConnectionManager *)self _performKeepAliveOnInterface:interface shortInterval:0 withAction:2];
        goto LABEL_85;
      }

      [(APSCourierConnectionManager *)self _submitKeepAliveFailedAWDonInterface:interface];
      v52 = +[APSLog courier];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy18 = self;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%@: AWD for KeepAliveFailed finished", buf, 0xCu);
      }

      v53 = +[APSLog courier];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy18 = self;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for ConnectionDisconnected", buf, 0xCu);
      }

      pcPersistentInterfaceManager = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:interface]];
      [APSMetricLogger connectionDisconnected:interface linkQuality:pcPersistentInterfaceManager reason:15];
      v54 = +[APSLog courier];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy18 = self;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%@: AWD for ConnectionDisconnected finished", buf, 0xCu);
      }

      [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:interface forceDelayedReconnect:0 withReason:15];
      goto LABEL_84;
    }

    v38 = +[APSLog courier];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = sub_1000067F8(interface);
      shouldUseDualMode2 = [(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode];
      v41 = @"NO";
      *buf = 138412802;
      selfCopy18 = self;
      v66 = 2112;
      if (shouldUseDualMode2)
      {
        v41 = @"YES";
      }

      *v67 = v39;
      *&v67[8] = 2112;
      *&v67[10] = v41;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@: performing keepAlive for interface %@. Should use dual channel? %@", buf, 0x20u);
    }

    [(APSCourierConnectionManager *)self _performKeepAliveOnInterface:interface shortInterval:0 withAction:2];
    if (![(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
    {
      preferredInterface = [(APSCourierConnection *)self->_courierConnection preferredInterface];
      if (!preferredInterface)
      {
        if (![(APSCourierConnectionManager *)self _isWiFiLinkQualityBetter])
        {
          goto LABEL_85;
        }

        v57 = +[APSLog courier];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy18 = self;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@: PCEventPushKeepAlive - we're connected over wwan but WiFi is better LQ. Attempting to switch to WiFi.", buf, 0xCu);
        }

        APSAlert();
        selfCopy19 = self;
        interfaceCopy2 = 1;
        goto LABEL_21;
      }

      if (preferredInterface == 1)
      {
        pcInterfaceMonitorWWAN = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
        if (([pcInterfaceMonitorWWAN isInterfaceHistoricallyUsable] & 1) == 0)
        {

          goto LABEL_85;
        }

        _isWiFiLinkQualityBetter = [(APSCourierConnectionManager *)self _isWiFiLinkQualityBetter];

        if ((_isWiFiLinkQualityBetter & 1) == 0)
        {
          v45 = +[APSLog courier];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy18 = self;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%@: PCEventPushKeepAlive - we're connected over wifi and wwan is historically usable. Attempting to switch to WWAN.", buf, 0xCu);
          }

          APSAlert();
          selfCopy19 = self;
          interfaceCopy2 = 0;
          goto LABEL_21;
        }
      }
    }
  }

LABEL_85:
}

- (void)courierConnection:(id)connection parserErrorMessage:(id)message OnInterface:(int64_t)interface
{
  connectionCopy = connection;
  messageCopy = message;
  symptomReporter = self->_symptomReporter;
  if (!symptomReporter)
  {
    v11 = objc_alloc_init(APSSymptomReporter);
    v12 = self->_symptomReporter;
    self->_symptomReporter = v11;

    symptomReporter = self->_symptomReporter;
  }

  [(APSSymptomReporter *)symptomReporter reportSymptomToAutoBugCapture:@"ParserError" subType:messageCopy];
  v13 = +[APSLog courier];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = sub_1000067F8(interface);
    v15 = 138413058;
    selfCopy = self;
    v17 = 2112;
    v18 = connectionCopy;
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@: Encoding/decoding error occurred for %@ onInterface %@: %@", &v15, 0x2Au);
  }

  [(APSCourierConnectionManager *)self _disconnectStreamForInterface:interface withReason:6];
  [(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:interface];
}

- (void)courierConnection:(id)connection aboutToWriteDataOnConnectedInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v9 = v4;
    v10 = v5;
    [(APSCourierConnectionManager *)self protocolConnectionForInterface:interface];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A2300;
    v8 = v7[3] = &unk_100188A38;
    v6 = v8;
    [v6 enumerateStateListeners:v7];
  }
}

- (void)courierConnection:(id)connection errorOccured:(id)occured disconnectReason:(unsigned int)reason onInterface:(int64_t)interface
{
  connectionCopy = connection;
  occuredCopy = occured;
  tcpInfoDescription = [connectionCopy tcpInfoDescription];
  v12 = +[APSLog networking];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v13 && tcpInfoDescription != 0)
  {
    v15 = +[APSLog networking];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10010C8CC();
    }
  }

  v16 = sub_1000882BC(occuredCopy);
  if (v16)
  {
    v17 = v16;
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"TLS Error Code=%ld %@", [occuredCopy code], v16);

    ++self->_consecutiveTLSConnectionFailureCount;
  }

  else
  {
    v18 = 0;
  }

  v19 = +[APSLog courier];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = sub_1000067F8(interface);
    v21 = v20;
    *buf = 138413058;
    if (v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = occuredCopy;
    }

    selfCopy3 = self;
    v36 = 2112;
    v37 = connectionCopy;
    v38 = 2112;
    v39 = v20;
    v40 = 2112;
    v41 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: Stream error occurred for %@ onInterface %@: %@", buf, 0x2Au);
  }

  v23 = +[APSLog courier];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for ConnectionDisconnected (withError)", buf, 0xCu);
  }

  +[APSMetricLogger connectionEncounteredSSLError:interface:](APSMetricLogger, "connectionEncounteredSSLError:interface:", +[APSMetricLogger sslErrorFromErrorCode:](APSMetricLogger, "sslErrorFromErrorCode:", [occuredCopy code]), interface);
  v24 = +[APSLog courier];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: AWD for ConnectionDisconnected (withError) finished", buf, 0xCu);
  }

  if (interface)
  {
    v25 = @"wifi";
  }

  else
  {
    v25 = @"wwan";
  }

  v32[0] = @"Interface";
  v32[1] = @"LinkQuality";
  v33[0] = v25;
  v26 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:interface]];
  v33[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  APSPowerLog();
  [(APSCourierConnectionManager *)self setConnectionFailure:occuredCopy onInterface:interface];
  domain = [occuredCopy domain];
  v29 = APSErrorDomain;

  if (domain == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = occuredCopy;
  }

  [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:interface forceDelayedReconnect:0 withReason:reason error:v30];
}

- (double)currentKeepAliveInterval
{
  courierConnection = self->_courierConnection;
  preferredInterface = [(APSCourierConnection *)courierConnection preferredInterface];

  [(APSCourierConnection *)courierConnection currentKeepAliveIntervalOnInterface:preferredInterface];
  return result;
}

- (void)courierConnection:(id)connection receivedOffloadInfo:(id)info onInterface:(int64_t)interface
{
  infoCopy = info;
  environment = [(APSCourierConnectionManager *)self environment];
  v9 = [(APSCourierConnectionManager *)self _shouldOffloadToAOP:interface environment:environment];

  offloadInfo = +[APSLog courier];
  v11 = os_log_type_enabled(offloadInfo, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, offloadInfo, OS_LOG_TYPE_DEFAULT, "%@: Received offload info from connection", &v12, 0xCu);
    }

    offloadInfo = [(APSCourierConnectionManager *)self offloadInfo];
    [offloadInfo addObject:infoCopy];
  }

  else if (v11)
  {
    v12 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, offloadInfo, OS_LOG_TYPE_DEFAULT, "%@: Offloading to AOP is currently disabled, ignoring PSKs.", &v12, 0xCu);
  }
}

- (void)courierConnection:(id)connection receivedServerBag:(id)bag finishedProcessingServerBagBlock:(id)block
{
  connectionCopy = connection;
  bagCopy = bag;
  networkMonitor = self->_networkMonitor;
  blockCopy = block;
  disableCostDrivenDualChannelAttempts = [bagCopy disableCostDrivenDualChannelAttempts];
  [(APSNetworkMonitor *)networkMonitor setDisableCostDrivenDualChannelAttempts:disableCostDrivenDualChannelAttempts];

  v12 = self->_networkMonitor;
  piggybackDualChannelAttempts = [bagCopy piggybackDualChannelAttempts];
  [(APSNetworkMonitor *)v12 setPiggybackDualChannelAttempts:piggybackDualChannelAttempts];

  v14 = self->_networkMonitor;
  costDrivenDualChannelAttempts = [bagCopy costDrivenDualChannelAttempts];
  [(APSNetworkMonitor *)v14 setCostDrivenDualChannelAttempts:costDrivenDualChannelAttempts];

  v16 = self->_networkMonitor;
  disableDualModePiggybackTimer = [bagCopy disableDualModePiggybackTimer];
  [(APSNetworkMonitor *)v16 setDisableDualModePiggybackTimer:disableDualModePiggybackTimer];

  keepAliveV2TimeDriftMaximum = [bagCopy keepAliveV2TimeDriftMaximum];
  v19 = keepAliveV2TimeDriftMaximum;
  if (keepAliveV2TimeDriftMaximum)
  {
    [(__CFString *)keepAliveV2TimeDriftMaximum doubleValue];
    self->_keepAliveV2TimeDriftMaximum = v20;
    v21 = +[APSLog courier];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: keepAliveV2TimeDriftMaximum = %@", buf, 0x16u);
    }
  }

  lastIPCachingPercentage = [bagCopy lastIPCachingPercentage];
  v23 = lastIPCachingPercentage;
  if (lastIPCachingPercentage)
  {
    self->_lastIPCachingPercentage = [(__CFString *)lastIPCachingPercentage integerValue];
    v24 = +[APSLog courier];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: lastIPCachingPercentage = %@", buf, 0x16u);
    }
  }

  lastIPCachingTTLMinutesV2 = [bagCopy lastIPCachingTTLMinutesV2];
  if (lastIPCachingTTLMinutesV2)
  {
    lastIPCachingTTLMinutes = lastIPCachingTTLMinutesV2;
  }

  else
  {
    lastIPCachingTTLMinutes = [bagCopy lastIPCachingTTLMinutes];
    if (!lastIPCachingTTLMinutes)
    {
      goto LABEL_15;
    }
  }

  self->_lastIPCachingTTLSeconds = [(__CFString *)lastIPCachingTTLMinutes integerValue]* 60.0;
  v27 = +[APSLog courier];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy16 = self;
    v83 = 2112;
    v84 = lastIPCachingTTLMinutes;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@:  lastIPCachingTTLMinutes = %@", buf, 0x16u);
  }

LABEL_15:
  minimumIntervalFallbackEnabled = [bagCopy minimumIntervalFallbackEnabled];
  v29 = minimumIntervalFallbackEnabled;
  if (minimumIntervalFallbackEnabled)
  {
    [connectionCopy setMinimumIntervalFallbackEnabled:{objc_msgSend(minimumIntervalFallbackEnabled, "BOOLValue")}];
    v30 = +[APSLog courier];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue = [v29 BOOLValue];
      v32 = @"NO";
      if (bOOLValue)
      {
        v32 = @"YES";
      }

      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@: minimumIntervalFallbackEnabled = %@", buf, 0x16u);
    }
  }

  powerOptimizationsForExpensiveNetworkingDisabled = [bagCopy powerOptimizationsForExpensiveNetworkingDisabled];
  if (powerOptimizationsForExpensiveNetworkingDisabled)
  {
    bOOLValue2 = [powerOptimizationsForExpensiveNetworkingDisabled BOOLValue];
    [connectionCopy setPowerOptimizationsForExpensiveNetworkingDisabled:bOOLValue2];
    v34 = +[APSLog courier];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = @"NO";
      if (bOOLValue2)
      {
        v35 = @"YES";
      }

      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@:  powerOptimizationsForExpensiveNetworkingDisabled = %@", buf, 0x16u);
    }
  }

  maxExpensiveConditionsConnectionAttempts = [bagCopy maxExpensiveConditionsConnectionAttempts];
  v37 = maxExpensiveConditionsConnectionAttempts;
  if (maxExpensiveConditionsConnectionAttempts)
  {
    [connectionCopy setMaxExpensiveConditionsConnectionAttempts:{-[__CFString integerValue](maxExpensiveConditionsConnectionAttempts, "integerValue")}];
    v38 = +[APSLog courier];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v37;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@:  maxExpensiveConditionsConnectionAttempts = %@", buf, 0x16u);
    }
  }

  expensiveConditionsBackOffInterval = [bagCopy expensiveConditionsBackOffInterval];
  if (expensiveConditionsBackOffInterval)
  {
    [(__CFString *)expensiveConditionsBackOffInterval doubleValue];
    [connectionCopy setExpensiveConditionsBackOffInterval:?];
    v39 = +[APSLog courier];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = expensiveConditionsBackOffInterval;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@:  expensiveConditionsBackOffInterval = %@", buf, 0x16u);
    }
  }

  wifiKeepAliveEarlyFireConstantInterval = [bagCopy wifiKeepAliveEarlyFireConstantInterval];
  if ([(APSCourierConnectionManager *)self isCellularWatch]&& wifiKeepAliveEarlyFireConstantInterval && (_os_feature_enabled_impl() & 1) == 0)
  {
    [(__CFString *)wifiKeepAliveEarlyFireConstantInterval doubleValue];
    [connectionCopy setWifiKeepAliveEarlyFireConstantInterval:?];
    v40 = +[APSLog courier];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = wifiKeepAliveEarlyFireConstantInterval;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@:  wifiKeepAliveEarlyFireConstantInterval = %@", buf, 0x16u);
    }
  }

  delayedReconnectTLSIntervalTrigger = [bagCopy delayedReconnectTLSIntervalTrigger];
  if (delayedReconnectTLSIntervalTrigger)
  {
    [(__CFString *)delayedReconnectTLSIntervalTrigger doubleValue];
    self->_delayedReconnectTLSIntervalTrigger = v41;
    v42 = +[APSLog courier];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = delayedReconnectTLSIntervalTrigger;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@:  delayedReconnectTLSIntervalTrigger = %@", buf, 0x16u);
    }
  }

  v71 = v37;
  delayedReconnectTLSInterval = [bagCopy delayedReconnectTLSInterval];
  v44 = delayedReconnectTLSInterval;
  if (delayedReconnectTLSInterval)
  {
    [(__CFString *)delayedReconnectTLSInterval doubleValue];
    self->_delayedReconnectTLSInterval = v45;
    v46 = +[APSLog courier];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v44;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%@:  delayedReconnectTLSInterval = %@", buf, 0x16u);
    }
  }

  v74 = v23;
  highQualityThresholdConnectedTime = [bagCopy highQualityThresholdConnectedTime];
  v48 = highQualityThresholdConnectedTime;
  if (highQualityThresholdConnectedTime)
  {
    connectionHistory = self->_connectionHistory;
    [(__CFString *)highQualityThresholdConnectedTime doubleValue];
    [(APSConnectionHistory *)connectionHistory setHighQualityThresholdConnectedTime:?];
    v50 = +[APSLog courier];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v48;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%@:  highQualityThresholdConnectedTime = %@", buf, 0x16u);
    }
  }

  v73 = lastIPCachingTTLMinutes;
  lowQualityThresholdConnectedTime = [bagCopy lowQualityThresholdConnectedTime];
  v52 = lowQualityThresholdConnectedTime;
  if (lowQualityThresholdConnectedTime)
  {
    v53 = self->_connectionHistory;
    [(__CFString *)lowQualityThresholdConnectedTime doubleValue];
    [(APSConnectionHistory *)v53 setLowQualityThresholdConnectedTime:?];
    v54 = +[APSLog courier];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v52;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%@:  lowQualityThresholdConnectedTime = %@", buf, 0x16u);
    }
  }

  v76 = connectionCopy;
  suspendToggleHourlyLimit = [bagCopy suspendToggleHourlyLimit];
  v56 = suspendToggleHourlyLimit;
  if (suspendToggleHourlyLimit)
  {
    self->_suspendToggleHourlyLimit = [(__CFString *)suspendToggleHourlyLimit integerValue];
    v57 = +[APSLog courier];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v56;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@:  suspendToggleHourlyLimit = %@", buf, 0x16u);
    }
  }

  v72 = v29;
  suspendToggleDailyLimit = [bagCopy suspendToggleDailyLimit];
  v59 = suspendToggleDailyLimit;
  if (suspendToggleDailyLimit)
  {
    self->_suspendToggleDailyLimit = [(__CFString *)suspendToggleDailyLimit integerValue];
    v60 = +[APSLog courier];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v59;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%@:  suspendToggleDailyLimit = %@", buf, 0x16u);
    }
  }

  v70 = v19;
  delayedSuspendKeepAliveInterval = [bagCopy delayedSuspendKeepAliveInterval];
  v62 = delayedSuspendKeepAliveInterval;
  if (delayedSuspendKeepAliveInterval)
  {
    [(__CFString *)delayedSuspendKeepAliveInterval doubleValue];
    self->_delayedSuspendKeepAliveInterval = v63;
    v64 = +[APSLog courier];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v62;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%@:  delayedSuspendKeepAliveInterval = %@", buf, 0x16u);
    }
  }

  filterMessageTimeout = [bagCopy filterMessageTimeout];
  v66 = filterMessageTimeout;
  if (filterMessageTimeout)
  {
    [(__CFString *)filterMessageTimeout doubleValue];
    if (v67 == 0.0)
    {
      v67 = 30.0;
    }

    self->_filterMessageTimeout = v67;
    v68 = +[APSLog courier];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy16 = self;
      v83 = 2112;
      v84 = v66;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%@:  filterMessageTimeout = %@", buf, 0x16u);
    }
  }

  delegate = [(APSCourierConnectionManager *)self delegate];
  [delegate courierConnectionManager:self receivedServerBag:bagCopy finishedProcessingServerBagBlock:blockCopy];
}

- (void)courierConnection:(id)connection shouldConnect:(id)connect
{
  connectCopy = connect;
  delegate = [(APSCourierConnectionManager *)self delegate];
  [delegate courierConnectionManager:self shouldConnectBlock:connectCopy];
}

- (void)courierConnection:(id)connection hasDeterminedServerHostname:(id)hostname onInterface:(int64_t)interface
{
  connectionCopy = connection;
  hostnameCopy = hostname;
  v10 = +[APSLog courier];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1000067F8(interface);
    v12 = 138413058;
    selfCopy = self;
    v14 = 2112;
    v15 = hostnameCopy;
    v16 = 2112;
    v17 = connectionCopy;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Connecting to courier %@ with connection: %@ onInterface: %@", &v12, 0x2Au);
  }

  [(APSCourierConnectionManager *)self _startConnectionEstablishTimerOnInterface:interface];
}

- (void)courierConnection:(id)connection keepAliveResponseTimerFiredOnInterface:(int64_t)interface
{
  connectionCopy = connection;
  v7 = +[APSLog courier];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000067F8(interface);
    countConnectedInterfaces = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    pcPersistentInterfaceManager = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
    currentLinkQualityString = [pcPersistentInterfaceManager currentLinkQualityString];
    v17 = 138413058;
    selfCopy4 = self;
    v19 = 2112;
    v20 = v8;
    v21 = 2048;
    v22 = countConnectedInterfaces;
    v23 = 2112;
    v24 = currentLinkQualityString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Keep-alive response timer fired onInterface %@. Keep-alive failed. Connected on %lu interfaces. Current link quality: %@", &v17, 0x2Au);
  }

  [(APSCourierConnectionManager *)self _clearKeepAliveResponseTimerOnInterface:interface];
  v12 = [connectionCopy keepAliveV2SupportedOnInterface:interface];

  if ((v12 & 1) == 0)
  {
    [(APSCourierConnectionManager *)self _submitKeepAliveFailedAWDonInterface:interface];
    v13 = +[APSLog courier];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: AWD for KeepAliveFailed finished", &v17, 0xCu);
    }
  }

  v14 = +[APSLog courier];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for ConnectionDisconnected", &v17, 0xCu);
  }

  v15 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:interface]];
  [APSMetricLogger connectionDisconnected:interface linkQuality:v15 reason:16];
  v16 = +[APSLog courier];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: AWD for ConnectionDisconnected finished", &v17, 0xCu);
  }

  [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:interface forceDelayedReconnect:0 withReason:16];
}

- (void)courierConnection:(id)connection connectionEstablishTimerFiredOnInterface:(int64_t)interface
{
  name = [(APSEnvironment *)self->_environment name];
  v15 = sub_1000067F8(interface);
  APSAlert();

  v7 = [APSLog courier:name];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000067F8(interface);
    countConnectedInterfaces = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    pcPersistentInterfaceManager = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
    currentLinkQualityString = [pcPersistentInterfaceManager currentLinkQualityString];
    *buf = 138413058;
    selfCopy3 = self;
    v18 = 2112;
    v19 = v8;
    v20 = 2048;
    v21 = countConnectedInterfaces;
    v22 = 2112;
    v23 = currentLinkQualityString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Connection establish timer fired. Connection failed onInterface %@. Connected on %lu interfaces. Current link quality: %@", buf, 0x2Au);
  }

  [(APSCourierConnectionManager *)self _clearConnectionEstablishTimerOnInterface:interface];
  v12 = +[APSLog courier];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for ConnectionDisconnected", buf, 0xCu);
  }

  v13 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:interface]];
  [APSMetricLogger connectionDisconnected:interface linkQuality:v13 reason:17];
  v14 = +[APSLog courier];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: AWD for ConnectionDisconnected finished", buf, 0xCu);
  }

  [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:interface forceDelayedReconnect:0 withReason:17];
}

- (void)_handleKeepAliveAckMessage:(id)message onInterface:(int64_t)interface
{
  messageCopy = message;
  v7 = +[APSLog courier];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000067F8(interface);
    v17 = 138412802;
    selfCopy2 = self;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Received successful keep-alive ack on interface %@: %@", &v17, 0x20u);
  }

  v9 = +[NSDate date];
  v10 = [(APSCourierConnection *)self->_courierConnection objectForKey:@"keepAliveSent" onInterface:interface];
  if (v10)
  {
    [v9 timeIntervalSinceDate:v10];
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [NSNumber numberWithDouble:v11];
  [(APSCourierConnection *)self->_courierConnection setObject:v12 forKey:@"keepAliveAckTime" onInterface:interface];
  [(APSCourierConnectionManager *)self _clearKeepAliveResponseTimerOnInterface:interface];
  if ([(APSCourierConnection *)self->_courierConnection isConnectedOnInterface:interface])
  {
    if (interface == 1)
    {
      networkMonitor = self->_networkMonitor;
      [(APSCourierConnection *)self->_courierConnection currentKeepAliveIntervalOnInterface:1];
      [(APSNetworkMonitor *)networkMonitor setCurrentWiFiKeepAliveInterval:[(APSCourierConnection *)self->_courierConnection countOfGrowthActionsOnInterface:1] growAttempts:v14];
    }
  }

  else
  {
    v15 = +[APSLog courier];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_1000067F8(interface);
      v17 = 138412546;
      selfCopy2 = self;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ received keepAlive for interface %@ that is no longer connected, ignoring.", &v17, 0x16u);
    }
  }
}

- (unint64_t)courierConnection:(id)connection dataReceived:(id)received onInterface:(int64_t)interface withGeneration:(unint64_t)generation isWakingMessage:(BOOL)message
{
  messageCopy = message;
  connectionCopy = connection;
  receivedCopy = received;
  v11 = sub_1000067F8(interface);
  v107 = [NSString stringWithFormat:@"APSCourier(tcpStream:dataReceived:)-%@", v11];

  v105 = [[APSPowerAssertion alloc] initWithName:v107 category:202 holdDuration:2.0];
  v12 = +[APSLog courier];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [receivedCopy length];
    v14 = sub_1000067F8(interface);
    countConnectedInterfaces = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    *buf = 138413314;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = receivedCopy;
    *&buf[22] = 2048;
    v159 = v13;
    v160 = 2112;
    v161 = v14;
    v162 = 2048;
    v163 = countConnectedInterfaces;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Outstanding data received: %@ (length %lu) onInterface: %@. Connected on %lu interfaces.", buf, 0x34u);
  }

  environment = [(APSCourierConnectionManager *)self environment];
  name = [environment name];
  v18 = [name isEqualToString:APSEnvironmentProduction];

  if (v18)
  {
    v19 = +[APSOffloadHeuristics shared];
    [v19 receivedBytes:objc_msgSend(receivedCopy onInterface:{"length"), interface}];
  }

  v20 = 0;
  v104 = interface != 0;
  do
  {
    v153 = 0;
    v151 = 0;
    v152 = 0;
    v21 = [(APSCourierConnection *)self->_courierConnection parseMessage:receivedCopy parameters:&v151 isInvalid:&v153 lengthParsed:&v152 onInterface:interface];
    v22 = v151;
    v20 += v152;
    v23 = +[APSLog courier];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = "no";
      if (v21)
      {
        v25 = "yes";
      }

      else
      {
        v25 = "no";
      }

      if (v153)
      {
        v24 = "yes";
      }

      *buf = 138413314;
      *&buf[4] = self;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      *&buf[22] = 2080;
      v159 = v24;
      v160 = 2048;
      v161 = v152;
      v162 = 2112;
      v163 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Stream processing: complete %s, invalid %s, length parsed %lu, parameters %@", buf, 0x34u);
    }

    v26 = [(APSCourierConnectionManager *)self protocolConnectionForInterface:interface];
    if (v21)
    {
      v147 = 0;
      v148 = &v147;
      v149 = 0x2020000000;
      v150 = 0;
      v27 = [v22 objectForKey:@"APSProtocolCommand"];
      intValue = [v27 intValue];

      switch(intValue)
      {
        case 1u:
        case 8u:
          v116 = [v22 objectForKey:@"APSProtocolServerTime"];
          if (v116)
          {
            [v116 doubleValue];
            v30 = [NSDate dateWithTimeIntervalSince1970:v29 / 1000.0];
            v31 = v30;
            if (&_TMSetAuthenticatedSourceTime && type metadata for )
            {
              [v30 timeIntervalSinceReferenceDate];
              TMSetAuthenticatedSourceTime();
            }

            serverTimeTracker = [(APSCourierConnectionManager *)self serverTimeTracker];
            [serverTimeTracker updateServerTimeWithTimeInMilliseconds:{objc_msgSend(v116, "unsignedLongLongValue")}];
          }

          *(&v117 + 1) = [v22 objectForKey:@"APSProtocolMessageSize"];
          *&v117 = [v22 objectForKey:@"APSProtocolLargeMessageSize"];
          [(APSCourierConnectionManager *)self setMaxMessageSize:*(&v117 + 1) forInterface:interface];
          [(APSCourierConnectionManager *)self setMaxLargeMessageSize:v117 forInterface:interface];
          if (v117 != 0)
          {
            v33 = +[APSLog courier];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = *(&v117 + 1);
              *&buf[22] = 2112;
              v159 = v117;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@: Received message sizes {standard: %@, large: %@}", buf, 0x20u);
            }
          }

          v34 = [v22 objectForKey:@"APSProtocolMinKeepAliveInterval"];
          v35 = [v34 copy];
          serverMinKeepAliveInterval = self->_serverMinKeepAliveInterval;
          self->_serverMinKeepAliveInterval = v35;

          v37 = [v22 objectForKey:@"APSProtocolExpectedKeepAliveInterval"];
          v38 = [v37 copy];
          serverExpectedKeepAliveInterval = self->_serverExpectedKeepAliveInterval;
          self->_serverExpectedKeepAliveInterval = v38;

          v40 = [v22 objectForKey:@"APSProtocolMaxKeepAliveInterval"];
          v41 = [v40 copy];
          serverMaxKeepAliveInterval = self->_serverMaxKeepAliveInterval;
          self->_serverMaxKeepAliveInterval = v41;

          v43 = +[APSLog courier];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v113 = receivedCopy;
            interfaceCopy = interface;
            v45 = self->_serverExpectedKeepAliveInterval;
            v46 = self->_serverMinKeepAliveInterval;
            v47 = self->_serverMaxKeepAliveInterval;
            v111 = interfaceCopy;
            v48 = sub_1000067F8(interfaceCopy);
            *buf = 138413314;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v46;
            *&buf[22] = 2112;
            v159 = v45;
            v160 = 2112;
            v161 = v47;
            v162 = 2112;
            v163 = v48;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%@: Setting server keep alive stats. {Min: %@, Expected: %@, Max: %@, Interface:%@}", buf, 0x34u);

            interface = v111;
            receivedCopy = v113;
          }

          v114 = [v22 objectForKey:@"APSProtocolGeoRegion"];
          if (v114 != self->_latestGeoRegion)
          {
            v49 = [(NSString *)v114 copy];
            latestGeoRegion = self->_latestGeoRegion;
            self->_latestGeoRegion = v49;
          }

          v112 = [v22 objectForKey:@"APSProtocolPSKVendingStatus"];
          if (v112)
          {
            -[APSCourierConnectionManager _handlePSKVendingStatus:onConnectionType:](self, "_handlePSKVendingStatus:onConnectionType:", [v112 intValue], objc_msgSend(v26, "connectionType"));
          }

          v109 = [(APSCourierConnectionManager *)self _handleRedirectMessage:v22 onInterface:interface];
          v51 = [(APSCourierConnectionManager *)self _deviceCanOffloadPresenceResponse:v22 interface:interface];
          v52 = [connectionCopy isConnectionOffloadingViableOnInterface:interface];
          v53 = [connectionCopy isConnectionOffloadedOnInterface:interface];
          if (v51)
          {
            v108 = v52 & (v53 ^ 1);
          }

          else
          {
            v108 = 0;
          }

          [connectionCopy clearConnectionEstablishTimerOnInterface:interface];
          if (((v109 | v108) & 1) == 0)
          {
            outgoingConnectMessageQueue = [(APSCourierConnectionManager *)self outgoingConnectMessageQueue];
            v86 = sub_1000067F8(interface);
            [outgoingConnectMessageQueue handleResponseForPendingItem:v22 error:0 onInterface:v86];
          }

          *(v148 + 24) = 1;
          v87 = [v22 objectForKey:@"APSProtocolDualChannelSupport"];
          bOOLValue = [v87 BOOLValue];

          v89 = +[APSLog courier];
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v90 = @"NO";
            if (bOOLValue)
            {
              v90 = @"YES";
            }

            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v90;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "%@: Setting dualChannelSupport: %@", buf, 0x16u);
          }

          networkMonitor = [(APSCourierConnectionManager *)self networkMonitor];
          [networkMonitor setServerSupportsDualMode:bOOLValue];

          self->_consecutiveConnectionFailureCount = 0;
          self->_consecutiveTLSConnectionFailureCount = 0;
          if ((v109 | v108))
          {
            if (v109)
            {
              v92 = 9;
            }

            else
            {
              v92 = 27;
            }

            [(APSCourierConnectionManager *)self _disconnectStreamForInterface:interface withReason:v92];
            [(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:interface];
            [(APSCourierConnection *)self->_courierConnection setRedirectHost:0];
            [(APSCourierConnection *)self->_courierConnection setEstablishingOffload:v108];
          }

          else
          {
            if (!self->_symptomReporter)
            {
              v93 = objc_alloc_init(APSSymptomReporter);
              symptomReporter = self->_symptomReporter;
              self->_symptomReporter = v93;
            }

            v95 = [v22 objectForKey:@"APSProtocolClientIPAddress"];
            v96 = [v95 copy];

            courierConnection = [(APSCourierConnectionManager *)self courierConnection];
            v98 = [courierConnection interfaceNameForInterface:interface];

            [(APSSymptomReporter *)self->_symptomReporter reportConnectionSuccessOnConnectionType:v104];
            if (v96)
            {
              [(APSSymptomReporter *)self->_symptomReporter reportClientIPAddress:v96 forInterfaceOfName:v98];
            }
          }

          goto LABEL_73;
        case 3u:
        case 0xAu:
          courierConnection2 = [(APSCourierConnectionManager *)self courierConnection];
          v59 = [courierConnection2 isConnectionOffloadedOnInterface:interface];

          if (v59)
          {
            v60 = [(APSCourierConnection *)self->_courierConnection nwInterfaceTypeForInterface:interface];
            ctClient = [(APSCourierConnectionManager *)self ctClient];
            v142[0] = _NSConcreteStackBlock;
            v142[1] = 3221225472;
            v142[2] = sub_1000A5524;
            v142[3] = &unk_100188AD0;
            v142[4] = self;
            [ctClient triggerKeepaliveWakeupEvent:v60 completion:v142];
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v159) = 0;
          v136[0] = _NSConcreteStackBlock;
          v136[1] = 3221225472;
          v136[2] = sub_1000A55F4;
          v136[3] = &unk_100188AF8;
          v62 = v22;
          v137 = v62;
          v63 = v26;
          generationCopy = generation;
          v141 = messageCopy;
          v138 = v63;
          v139 = buf;
          [v63 enumerateDataRecipient:v136];
          if ((*(*&buf[8] + 24) & 1) == 0)
          {
            v64 = +[APSLog courier];
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *v154 = 138412546;
              selfCopy = self;
              v156 = 2048;
              v157 = 2;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%@: Sending acknowledgement message with response %ld", v154, 0x16u);
            }

            v65 = [v62 objectForKey:@"APSProtocolToken"];
            v66 = [v62 objectForKey:@"APSProtocolMessageID"];
            [(APSCourierConnectionManager *)self sendMessageAcknowledgeMessageWithResponse:2 messageId:v66 token:v65 onInterface:interface];
          }

          *(v148 + 24) = 1;
          [(APSCourierConnectionManager *)self notePush];

          _Block_object_dispose(buf, 8);
          if (![(APSCourierConnection *)self->_courierConnection isConnectionOffloadedOnInterface:interface])
          {
            [(APSCourierConnectionManager *)self _resetKeepAliveOnInterface:interface];
          }

          goto LABEL_73;
        case 6u:
        case 0xDu:
          [(APSCourierConnectionManager *)self _handleKeepAliveResponseMessage:v22 onInterface:interface didWake:messageCopy];
          goto LABEL_72;
        case 7u:
          v143[0] = _NSConcreteStackBlock;
          v143[1] = 3221225472;
          v143[2] = sub_1000A54E8;
          v143[3] = &unk_100188AA8;
          v77 = v26;
          v144 = v77;
          v145 = v22;
          v146 = &v147;
          [v77 enumerateDataRecipient:v143];

          goto LABEL_73;
        case 9u:
          v74 = +[APSLog courier];
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Received filter message response.", buf, 2u);
          }

          [(APSCourierConnectionManager *)self _clearFilterMessageTimerOnInterface:interface];
          outgoingFilterQueue = [(APSCourierConnectionManager *)self outgoingFilterQueue];
          v76 = sub_1000067F8(interface);
          [outgoingFilterQueue handleResponseForPendingItem:v22 error:0 onInterface:v76];

          goto LABEL_72;
        case 0xBu:
          outgoingSendMessageQueue = [(APSCourierConnectionManager *)self outgoingSendMessageQueue];
          v73 = sub_1000067F8(interface);
          [outgoingSendMessageQueue handleResponseForPendingItem:v22 error:0 onInterface:v73];

          goto LABEL_72;
        case 0xFu:
          [(APSCourierConnectionManager *)self _handleFlushMessage:v22 onInterface:interface];
          goto LABEL_72;
        case 0x10u:
          v80 = +[APSLog courier];
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = self;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%@: Received flush response.", buf, 0xCu);
          }

          goto LABEL_72;
        case 0x12u:
          tokenGenerateResponseQueue = [(APSCourierConnectionManager *)self tokenGenerateResponseQueue];
          v79 = sub_1000067F8(interface);
          [tokenGenerateResponseQueue handleResponseForPendingItem:v22 error:0 onInterface:v79];

          goto LABEL_72;
        case 0x16u:
          [(APSCourierConnectionManager *)self _handleKeepAliveAckMessage:v22 onInterface:interface];
          goto LABEL_72;
        case 0x17u:
          [(APSCourierConnectionManager *)self _handleRedirectMessage:v22 onInterface:interface];
          [(APSCourierConnectionManager *)self _disconnectStreamForInterface:interface withReason:9];
          [(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:interface];
          [(APSCourierConnection *)self->_courierConnection setRedirectHost:0];
          goto LABEL_72;
        case 0x1Du:
          v69 = +[APSLog courier];
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Received pubsub subscription response", buf, 2u);
          }

          v132[0] = _NSConcreteStackBlock;
          v132[1] = 3221225472;
          v132[2] = sub_1000A5670;
          v132[3] = &unk_100188AA8;
          v133 = v22;
          v134 = v26;
          v135 = &v147;
          [v134 enumerateDataRecipient:v132];

          goto LABEL_73;
        case 0x1Eu:
          v128[0] = _NSConcreteStackBlock;
          v128[1] = 3221225472;
          v128[2] = sub_1000A56E4;
          v128[3] = &unk_100188AA8;
          v129 = v22;
          v130 = v26;
          v131 = &v147;
          [v130 enumerateDataRecipient:v128];

          goto LABEL_73;
        case 0x20u:
          v70 = +[APSLog courier];
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Received presence tracking response.", buf, 2u);
          }

          v124[0] = _NSConcreteStackBlock;
          v124[1] = 3221225472;
          v124[2] = sub_1000A5758;
          v124[3] = &unk_100188AA8;
          v71 = v26;
          v125 = v71;
          v126 = v22;
          v127 = &v147;
          [v71 enumerateDataRecipient:v124];

          goto LABEL_73;
        case 0x21u:
          v67 = +[APSLog courier];
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Received server initiated filter update request.", buf, 2u);
          }

          v120[0] = _NSConcreteStackBlock;
          v120[1] = 3221225472;
          v120[2] = sub_1000A5794;
          v120[3] = &unk_100188AA8;
          v68 = v26;
          v121 = v68;
          v122 = v22;
          v123 = &v147;
          [v68 enumerateDataRecipient:v120];

          goto LABEL_73;
        case 0x22u:
          [(APSCourierConnectionManager *)self _handleDelayKeepAliveCancelMessageOnInterface:interface];
LABEL_72:
          *(v148 + 24) = 1;
LABEL_73:
          if ((v148[3] & 1) == 0)
          {
            v81 = +[APSLog courier];
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v99 = sub_1000067F8(interface);
              *buf = 138412546;
              *&buf[4] = v22;
              *&buf[12] = 2112;
              *&buf[14] = v99;
              _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Incoming message was not handled! {parameters: %@, interface: %@}", buf, 0x16u);
            }
          }

          _Block_object_dispose(&v147, 8);
          break;
        default:
          v100 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"missing protocol command enum" userInfo:0];
          objc_exception_throw(v100);
      }
    }

    else if (v153 == 1)
    {
      v54 = +[APSLog courier];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = receivedCopy;
        _os_log_fault_impl(&_mh_execute_header, v54, OS_LOG_TYPE_FAULT, "%@: Received invalid message data: %@", buf, 0x16u);
      }

      v55 = +[APSLog courier];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for ConnectionDisconnected", buf, 0xCu);
      }

      v56 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:interface]];
      [APSMetricLogger connectionDisconnected:interface linkQuality:v56 reason:18];
      v57 = +[APSLog courier];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@: AWD for ConnectionDisconnected finished", buf, 0xCu);
      }

      [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:interface forceDelayedReconnect:0 withReason:18];
    }

    v82 = v152;
    if (v152)
    {
      v83 = [receivedCopy length];
      v84 = [receivedCopy subdataWithRange:{v82, v83 - v152}];

      receivedCopy = v84;
    }
  }

  while ((v21 & 1) != 0);
  v101 = _os_feature_enabled_impl();
  if ((v101 & 1) == 0)
  {
    v102 = dispatch_time(0, 2000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = nullsub_10;
    block[3] = &unk_100186D90;
    v119 = v105;
    dispatch_after(v102, &_dispatch_main_q, block);
  }

  return v20;
}

- (id)consecutiveConnectionFailureReasonOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v7 = self->_consecutiveConnectionFailureReason[interface];
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(interface);
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to return consecutiveConnectionFailureReason on invalid interface %@", &v9, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)addConnectionFailureReasons:(id)reasons onInterface:(int64_t)interface
{
  reasonsCopy = reasons;
  if (interface < 2)
  {
    consecutiveConnectionFailureReason = self->_consecutiveConnectionFailureReason;
    if (!self->_consecutiveConnectionFailureReason[interface])
    {
      v10 = objc_alloc_init(NSCountedSet);
      v11 = consecutiveConnectionFailureReason[interface];
      consecutiveConnectionFailureReason[interface] = v10;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = reasonsCopy;
    v12 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = consecutiveConnectionFailureReason[interface];
          v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(&v18 + 1) + 8 * v15) code]);
          [(NSCountedSet *)v16 addObject:v17];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(interface);
      *buf = 138412546;
      selfCopy = self;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ asked to add errors to consecutiveConnectionFailureReason on invalid interface %@", buf, 0x16u);
    }
  }
}

- (void)setConnectionFailure:(id)failure onInterface:(int64_t)interface
{
  failureCopy = failure;
  if (interface < 2)
  {
    consecutiveConnectionFailureReason = self->_consecutiveConnectionFailureReason;
    v10 = consecutiveConnectionFailureReason[interface];
    if (!v10)
    {
      v11 = objc_alloc_init(NSCountedSet);
      v12 = consecutiveConnectionFailureReason[interface];
      consecutiveConnectionFailureReason[interface] = v11;

      v10 = consecutiveConnectionFailureReason[interface];
    }

    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [failureCopy code]);
    [(NSCountedSet *)v10 addObject:v13];
  }

  else
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(interface);
      v14 = 138412802;
      selfCopy = self;
      v16 = 2112;
      v17 = failureCopy;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ asked to add error %@ to consecutiveConnectionFailureReason on invalid interface %@", &v14, 0x20u);
    }
  }
}

- (void)clearConsecutiveConnectionFailureReasonOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v7 = &self->super.isa + interface;
    v8 = v7[8];
    v7[8] = 0;
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(interface);
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to clear consecutiveConnectionFailureReason on invalid interface %@", &v9, 0x16u);
    }
  }
}

- (BOOL)_handleRedirectMessage:(id)message onInterface:(int64_t)interface
{
  messageCopy = message;
  v7 = [messageCopy objectForKey:@"APSProtocolServerMetadata"];
  v8 = [messageCopy objectForKey:@"APSProtocolRedirectReason"];

  if (v7)
  {
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Received courier redirect host '%@' with reason: '%@'", &v12, 0x20u);
    }

    [(APSCourierConnection *)self->_courierConnection setUsingCachedIPAddress:0 onInterface:interface];
    [(APSCourierConnection *)self->_courierConnection setRedirectHost:v7];
    v10 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:interface]];
    [APSMetricLogger connectionDisconnected:interface linkQuality:v10 reason:9];
    [(APSCourierConnection *)self->_courierConnection incrementRedirectCount];
  }

  return v7 != 0;
}

- (void)_submitKeepAliveFailedAWDonInterface:(int64_t)interface
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for KeepAliveFailed", &v7, 0xCu);
  }

  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: AWD for KeepAliveFailed returned", &v7, 0xCu);
  }

  [(APSCourierConnection *)self->_courierConnection setObject:0 forKey:@"keepAliveSent" onInterface:interface];
  [(APSCourierConnection *)self->_courierConnection setObject:0 forKey:@"keepAliveAckTime" onInterface:interface];
}

- (void)setConnectionStatistics:(id)statistics onInterface:(int64_t)interface
{
  statisticsCopy = statistics;
  if (interface < 2)
  {
    v9 = &self->super.isa + interface;
    v10 = v9[3];
    v9[3] = 0;

    v11 = v9[5];
    v9[5] = 0;

    v12 = [statisticsCopy objectForKey:@"tcp_handshake"];
    v13 = [v12 copy];
    v14 = v9[1];
    v9[1] = v13;

    v15 = [statisticsCopy objectForKey:@"dns"];
    v16 = [v15 copy];
    v17 = v9[3];
    v9[3] = v16;

    v7 = [statisticsCopy objectForKey:@"tls"];
    v18 = [v7 copy];
    v19 = v9[5];
    v9[5] = v18;
  }

  else
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(interface);
      v20 = 138412802;
      selfCopy = self;
      v22 = 2112;
      v23 = statisticsCopy;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ asked to add connection statictis %@ on invalid interface %@", &v20, 0x20u);
    }
  }
}

- (void)_handleConnectionSuspendedOnInterface:(int64_t)interface
{
  if (!interface)
  {
    v9 = v3;
    v10 = v4;
    if (![(APSCourierConnection *)self->_courierConnection isSuspendedOnInterface:?])
    {
      [(APSCourierConnectionManager *)self _clearPostSuspensionFlushState];
      [(APSCourierConnection *)self->_courierConnection setIsSuspended:1 onInterface:0];
      [(APSCourierConnection *)self->_courierConnection setIsConnected:0 onInterface:0 withDisconnectReason:1030];
      [(APSCourierConnection *)self->_courierConnection stopManagerOnInterface:0];
      [(APSCourierConnectionManager *)self protocolConnectionForInterface:0];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000A6290;
      v8 = v7[3] = &unk_100188A38;
      v6 = v8;
      [v6 enumerateStateListeners:v7];
    }
  }
}

- (void)_handleConnectionRecoverFromSuspensionOnInterface:(int64_t)interface
{
  if (!interface && [(APSCourierConnection *)self->_courierConnection isSuspendedOnInterface:?])
  {
    v4 = +[APSLog courier];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cellular interface is recovering from suspension", &v16, 2u);
    }

    [(APSCourierConnection *)self->_courierConnection setIsSuspended:0 onInterface:0];
    [(APSCourierConnection *)self->_courierConnection setIsConnected:1 onInterface:0];
    if (self->_delayedSuspendKeepAliveInterval <= 0.0)
    {
      goto LABEL_9;
    }

    hourlySuspendToggleRateLimiter = [(APSCourierConnectionManager *)self hourlySuspendToggleRateLimiter];
    dailySuspendToggleRateLimiter = [(APSCourierConnectionManager *)self dailySuspendToggleRateLimiter];
    if ([hourlySuspendToggleRateLimiter isUnderLimit] && (objc_msgSend(dailySuspendToggleRateLimiter, "isUnderLimit") & 1) != 0)
    {
      [hourlySuspendToggleRateLimiter note];
      [dailySuspendToggleRateLimiter note];

LABEL_9:
      [(APSCourierConnectionManager *)self _handleConnectionAfterSuspensionRecoveryOnInterface:0 withKeepAlive:1];
      return;
    }

    self->_pendingPostSuspensionWWANFlush = 1;
    v7 = [PCPersistentTimer alloc];
    delayedSuspendKeepAliveInterval = self->_delayedSuspendKeepAliveInterval;
    v9 = [NSNumber numberWithInteger:0];
    v10 = [v7 initWithTimeInterval:@"APSCourier" serviceIdentifier:self target:"_delayedSuspendKeepAliveTimerFired:" selector:v9 userInfo:delayedSuspendKeepAliveInterval];
    delayedSuspendKeepAliveTimer = self->_delayedSuspendKeepAliveTimer;
    self->_delayedSuspendKeepAliveTimer = v10;

    [(PCPersistentTimer *)self->_delayedSuspendKeepAliveTimer setMinimumEarlyFireProportion:1.0];
    v12 = self->_delayedSuspendKeepAliveTimer;
    v13 = +[NSRunLoop mainRunLoop];
    [(PCPersistentTimer *)v12 scheduleInRunLoop:v13];

    v14 = +[APSLog courier];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_delayedSuspendKeepAliveInterval;
      v16 = 138413058;
      selfCopy = self;
      v18 = 2048;
      v19 = v15;
      v20 = 2112;
      v21 = hourlySuspendToggleRateLimiter;
      v22 = 2112;
      v23 = dailySuspendToggleRateLimiter;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ cellular interface suspension toggles are over the limit! {delay: %f, hourly: %@, daily: %@}", &v16, 0x2Au);
    }
  }
}

- (void)_delayedSuspendKeepAliveTimerFired:(id)fired
{
  firedCopy = fired;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: _delayedSuspendKeepAliveTimerFired! Connecting now.", &v8, 0xCu);
  }

  [(APSCourierConnectionManager *)self _clearPostSuspensionFlushState];
  userInfo = [firedCopy userInfo];

  integerValue = [userInfo integerValue];
  [(APSCourierConnectionManager *)self _handleConnectionAfterSuspensionRecoveryOnInterface:integerValue withKeepAlive:1];
}

- (void)_handleConnectionAfterSuspensionRecoveryOnInterface:(int64_t)interface withKeepAlive:(BOOL)alive
{
  aliveCopy = alive;
  v7 = +[APSLog courier];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (aliveCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: _handleConnectionAfterSuspensionRecoveryOnInterface {withKeepAlive: %@}", buf, 0x16u);
  }

  if ([(APSCourierConnection *)self->_courierConnection countConnectedInterfaces]>= 2)
  {
    [(APSNetworkMonitor *)self->_networkMonitor openedSecondChannel];
  }

  if (aliveCopy)
  {
    [(APSCourierConnectionManager *)self _performKeepAliveOnInterface:interface shortInterval:0 withAction:2];
  }

  [(APSCourierConnectionManager *)self protocolConnectionForInterface:interface];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A679C;
  v11 = v10[3] = &unk_100188A38;
  v9 = v11;
  [v9 enumerateStateListeners:v10];
}

- (void)_resetServerKeepAliveStatsOnInterface:(int64_t)interface
{
  [(APSCourierConnection *)self->_courierConnection setServerStatsMaxKeepAlive:0.0 onInterface:?];
  [(APSCourierConnection *)self->_courierConnection setServerStatsMinKeepAlive:interface onInterface:0.0];
  [(APSCourierConnection *)self->_courierConnection setServerStatsExpectedKeepAlive:interface onInterface:0.0];
  courierConnection = self->_courierConnection;

  [(APSCourierConnection *)courierConnection setUsingServerStatsAggressively:0 onInterface:interface];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(APSCourierConnectionManager *)self _adjustConnection];
  }
}

- (void)_invokeInFailureHandlingContext:(id)context
{
  contextCopy = context;
  [(APSCourierConnectionManager *)self setHandlingFailure:1];
  if (contextCopy)
  {
    contextCopy[2]();
  }

  [(APSCourierConnectionManager *)self setHandlingFailure:0];
}

- (void)_handleFlushMessage:(id)message onInterface:(int64_t)interface
{
  messageCopy = message;
  v7 = [messageCopy objectForKey:@"APSProtocolFlushWantPadding"];
  intValue = [v7 intValue];

  v9 = +[APSLog courier];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000067F8(interface);
    v12 = 138413058;
    selfCopy2 = self;
    v14 = 2112;
    v15 = messageCopy;
    v16 = 2048;
    v17 = intValue;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Received flush message %@ with paddingLength %lu onInterface: %@", &v12, 0x2Au);
  }

  if (intValue)
  {
    v11 = +[APSLog courier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      selfCopy2 = self;
      v14 = 2048;
      v15 = intValue;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Sending flush response message with padding length %lu", &v12, 0x16u);
    }

    [(APSCourierConnection *)self->_courierConnection sendFlushResponseMessageWithPaddingLength:intValue onInterface:interface];
  }
}

- (void)_delayedPerformKeepAliveOnInterface:(int64_t)interface withDelay:(double)delay
{
  if (interface < 2)
  {
    delayCopy = delay;
    delayedKeepAlivePowerAssertion = self->_delayedKeepAlivePowerAssertion;
    if (delayedKeepAlivePowerAssertion)
    {
      self->_delayedKeepAlivePowerAssertion = 0;
    }

    v10 = APSBundleIdentifier;
    domain = [(APSEnvironment *)self->_environment domain];
    v12 = sub_1000067F8(interface);
    v17 = [NSString stringWithFormat:@"%@-delayed-keepalive-%@-%@", v10, domain, v12];

    v13 = [[APSPowerAssertion alloc] initWithName:v17 category:203 holdDuration:60.0];
    v14 = self->_delayedKeepAlivePowerAssertion;
    self->_delayedKeepAlivePowerAssertion = v13;

    v15 = [NSNumber numberWithInteger:interface];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__delayedPerformKeepAliveOnInterface:" object:v15];

    if (delayCopy <= 0.0)
    {
      delayCopy = 2.0;
    }

    v16 = [NSNumber numberWithInteger:interface];
    [(APSCourierConnectionManager *)self performSelector:"__delayedPerformKeepAliveOnInterface:" withObject:v16 afterDelay:delayCopy];
  }

  else
  {
    v6 = +[APSLog courier];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1000067F8(interface);
      *buf = 138412546;
      selfCopy = self;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ asked to perform delayed keep alive with invalid interface %@", buf, 0x16u);
    }
  }
}

- (void)__delayedPerformKeepAliveOnInterface:(id)interface
{
  integerValue = [interface integerValue];
  if ([(APSCourierConnection *)self->_courierConnection isConnectedOnInterface:integerValue])
  {
    [(APSCourierConnectionManager *)self _performKeepAliveOnInterface:integerValue shortInterval:0 withAction:2];
  }

  delayedKeepAlivePowerAssertion = self->_delayedKeepAlivePowerAssertion;
  self->_delayedKeepAlivePowerAssertion = 0;
}

- (void)_handleDelayKeepAliveCancelMessageOnInterface:(int64_t)interface
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received cancel keep alive command. Canceling delayed keep alive timer and requesting keep alive now.", v8, 2u);
  }

  v6 = [NSNumber numberWithInteger:interface];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__delayedPerformKeepAliveOnInterface:" object:v6];

  if (self->_delayedKeepAlivePowerAssertion)
  {
    v7 = [NSNumber numberWithInteger:interface];
    [(APSCourierConnectionManager *)self __delayedPerformKeepAliveOnInterface:v7];
  }
}

- (void)requestConnectionIfNeeded
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ requestConnectionIfNeeded", &v4, 0xCu);
  }

  [(APSCourierConnectionManager *)self _requestKeepAlive:0 orConnection:1];
}

- (void)performKeepAlive
{
  [(APSCourierConnectionManager *)self performKeepAliveOnInterface:0];

  [(APSCourierConnectionManager *)self performKeepAliveOnInterface:1];
}

- (void)_resetKeepAliveOnInterface:(int64_t)interface
{
  if ([(APSCourierConnection *)self->_courierConnection keepAliveV2SupportedOnInterface:?])
  {

    [(APSCourierConnectionManager *)self _delayedPerformKeepAliveOnInterface:interface];
  }

  else
  {
    [(APSCourierConnectionManager *)self _clearKeepAliveResponseTimerOnInterface:interface];
    courierConnection = self->_courierConnection;

    [(APSCourierConnection *)courierConnection updateConnectionManagerKeepAliveIntervalOnInterface:interface];
  }
}

- (void)_submitKeepAliveSucceededAWDonInterface:(int64_t)interface
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for KeepAliveSucceeded", &v9, 0xCu);
  }

  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: AWD for KeepAliveSucceeded returned", &v9, 0xCu);
  }

  [(APSCourierConnection *)self->_courierConnection setObject:0 forKey:@"keepAliveSent" onInterface:interface];
  [(APSCourierConnection *)self->_courierConnection setObject:0 forKey:@"keepAliveAckTime" onInterface:interface];
  courierConnection = self->_courierConnection;
  v8 = +[NSDate date];
  [(APSCourierConnection *)courierConnection setObject:v8 forKey:@"timeSinceLastKeepAliveSucceeded" onInterface:interface];
}

- (void)updateKeepAliveInterval:(double)interval
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2048;
    intervalCopy = interval;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Updating keep alive delay interval to %f", &v6, 0x16u);
  }

  self->_delayedSuspendKeepAliveInterval = interval;
}

- (void)networkMonitorWiFiBecameAssociated:(id)associated
{
  v4 = +[APSLog courier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Received networkMonitorWiFiBecameAssociated", &v5, 0xCu);
  }

  [(APSCourierConnectionManager *)self _adjustConnection];
}

- (void)interfaceRadioHotnessChanged:(id)changed
{
  changedCopy = changed;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isRadioHot = [changedCopy isRadioHot];
    v7 = @"NO";
    *buf = 138412802;
    selfCopy = self;
    v15 = 2112;
    if (isRadioHot)
    {
      v7 = @"YES";
    }

    v16 = changedCopy;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %@ interface radio hotness changed to %@", buf, 0x20u);
  }

  pcInterfaceMonitorWWAN = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  v9 = pcInterfaceMonitorWWAN != changedCopy;

  [(APSCourierConnectionManager *)self protocolConnectionForInterface:v9];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A88A0;
  v12 = v11[3] = &unk_100188A38;
  v10 = v12;
  [v10 enumerateStateListeners:v11];
}

- (unint64_t)serverTimeInNanoSeconds
{
  serverTimeTracker = [(APSCourierConnectionManager *)self serverTimeTracker];
  serverTimeInNanoSeconds = [serverTimeTracker serverTimeInNanoSeconds];

  return serverTimeInNanoSeconds;
}

- (id)dnsResolutionTimeMillisecondsOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v7 = self->_dnsResolutionTimeMilliseconds[interface];
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(interface);
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to return dnsResolutionTimeMilliseconds on invalid interface %@", &v9, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)tlsHandshakeTimeMillisecondsOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v7 = self->_tlsHandshakeTimeMilliseconds[interface];
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(interface);
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to return tlsHandshakeTimeMilliseconds on invalid interface %@", &v9, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)tcpHandshakeTimeMillisecondsOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v7 = self->_tcpHandshakeTimeMilliseconds[interface];
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(interface);
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to return tcpHandshakeTimeMilliseconds on invalid interface %@", &v9, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)forceAdjustConnections
{
  [(APSCourierConnectionManager *)self _clearDelayedReconnectTimer];

  [(APSCourierConnectionManager *)self adjustConnectionsIfNeeded];
}

- (void)adjustConnectionsIfNeeded
{
  if ([(APSCourierConnectionManager *)self handlingFailure])
  {
    v3 = +[APSLog courier];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ mid-failure handling, ignoring adjustConnectionsIfNeeded call", &v4, 0xCu);
    }
  }

  else
  {

    [(APSCourierConnectionManager *)self _adjustConnection];
  }
}

- (void)performKeepAliveOnInterface:(int64_t)interface
{
  if ([(APSCourierConnection *)self->_courierConnection isConnectedOnInterface:1])
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(interface);
      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ force performing keep alive on %@ interface", &v7, 0x16u);
    }

    [(APSCourierConnectionManager *)self _performKeepAliveOnInterface:interface shortInterval:0 withAction:2];
  }
}

- (BOOL)isConnected
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  isConnected = [courierConnection isConnected];

  return isConnected;
}

- (BOOL)hasOpenConnection
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  hasOpenConnection = [courierConnection hasOpenConnection];

  return hasOpenConnection;
}

- (unint64_t)countOpenConnections
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  countOpenConnections = [courierConnection countOpenConnections];

  return countOpenConnections;
}

- (id)currentKeepAliveStateOnInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  v5 = [courierConnection currentKeepAliveStateOnInterface:interface];

  return v5;
}

- (BOOL)didPushCauseWake
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  didPushCauseWake = [courierConnection didPushCauseWake];

  return didPushCauseWake;
}

- (id)tcpInfoDescription
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  tcpInfoDescription = [courierConnection tcpInfoDescription];

  return tcpInfoDescription;
}

- (BOOL)isConnectedOnInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(interface) = [courierConnection isConnectedOnInterface:interface];

  return interface;
}

- (BOOL)isSuspendedOnInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(interface) = [courierConnection isSuspendedOnInterface:interface];

  return interface;
}

- (BOOL)hasOpenConnectionOnInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(interface) = [courierConnection hasOpenConnectionOnInterface:interface];

  return interface;
}

- (void)holdPowerAssertionUntilStreamsQuiesce
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  [courierConnection holdPowerAssertionUntilStreamsQuiesce];
}

- (id)serverIPAddressForInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  v5 = [courierConnection serverIPAddressForInterface:interface];

  return v5;
}

- (id)serverHostnameForInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  v5 = [courierConnection serverHostnameForInterface:interface];

  return v5;
}

- (id)_sendOutgoingMessage:(id)message topicHash:(id)hash lastRTT:(id)t token:(id)token onInterface:(int64_t)interface ultraConstrainedAllowed:(BOOL)allowed withCompletion:(id)completion
{
  messageCopy = message;
  hashCopy = hash;
  tCopy = t;
  tokenCopy = token;
  completionCopy = completion;
  if ([messageCopy payloadFormat] == 1)
  {
    userInfo = [messageCopy userInfo];
    [NSPropertyListSerialization dataWithPropertyList:userInfo format:200 options:0 error:0];
  }

  else
  {
    userInfo = [messageCopy userInfo];
    [NSJSONSerialization dataWithJSONObject:userInfo options:0 error:0];
  }
  v18 = ;

  if (v18)
  {
    [messageCopy setPayloadLength:{objc_msgSend(v18, "length")}];
    v19 = [(APSCourierConnectionManager *)self maxLargeMessageSizeForInterface:interface];
    if (v19)
    {
      v20 = [v18 length];
      v21 = [(APSCourierConnectionManager *)self maxLargeMessageSizeForInterface:interface];
      unsignedIntegerValue = [v21 unsignedIntegerValue];

      if (v20 > unsignedIntegerValue)
      {
        v23 = +[APSLog courier];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          messageID = [messageCopy messageID];
          v25 = [v18 length];
          v26 = [(APSCourierConnectionManager *)self maxLargeMessageSizeForInterface:interface];
          *buf = 138413058;
          selfCopy4 = self;
          v60 = 2048;
          messageID2 = messageID;
          v62 = 2048;
          v63 = v25;
          v64 = 2048;
          v65 = v26;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Dropping outgoing message %lu because its length of %lu bytes is larger than %lu bytes", buf, 0x2Au);
        }

LABEL_9:

        v27 = APSError();

        goto LABEL_33;
      }
    }

    v28 = [(APSCourierConnectionManager *)self pcInterfaceMonitorOnInterface:interface];
    isInternetReachable = [v28 isInternetReachable];

    courierConnection = [(APSCourierConnectionManager *)self courierConnection];
    v31 = [courierConnection isConnectedOnInterface:interface];

    if (isInternetReachable & 1 | ((v31 & 1) == 0))
    {
      v32 = [(APSCourierConnectionManager *)self pcInterfaceMonitorOnInterface:interface];
      v33 = [v32 interfaceConstraint] != 1 || allowed;

      v23 = +[APSLog courier];
      v34 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (!v33)
      {
        if (v34)
        {
          *buf = 138412546;
          selfCopy4 = self;
          v60 = 2048;
          messageID2 = [messageCopy messageID];
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ Trying to send outgoing message %lu but only connected on ultra constrained", buf, 0x16u);
        }

        goto LABEL_9;
      }

      if (v34)
      {
        messageID3 = [messageCopy messageID];
        v35 = sub_1000067F8(interface);
        v48 = [v18 length];
        courierConnection2 = [(APSCourierConnectionManager *)self courierConnection];
        countConnectedInterfaces = [courierConnection2 countConnectedInterfaces];
        pcPersistentInterfaceManager = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
        currentLinkQualityString = [pcPersistentInterfaceManager currentLinkQualityString];
        *buf = 138413570;
        selfCopy4 = self;
        v60 = 2048;
        messageID2 = messageID3;
        v62 = 2112;
        v63 = v35;
        v64 = 2048;
        v65 = v48;
        v66 = 2048;
        v67 = countConnectedInterfaces;
        v68 = 2112;
        v69 = currentLinkQualityString;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Sending outgoing message %lu onInterface: %@. Size of %lu. Connected on %lu interfaces. Current link quality: %@", buf, 0x3Eu);
      }

      v38 = -[APSCourierConnectionManager sendMessageWithTopicHash:identifier:payload:token:isPlistFormat:lastRTT:onInterface:withCompletion:](self, "sendMessageWithTopicHash:identifier:payload:token:isPlistFormat:lastRTT:onInterface:withCompletion:", hashCopy, [messageCopy identifier], v18, tokenCopy, objc_msgSend(messageCopy, "payloadFormat") == 1, tCopy, interface, completionCopy);
      v39 = +[APSLog networking];
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);

      if (v40)
      {
        v41 = +[APSLog networking];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          sub_10010C9A8(self, v41);
        }
      }

      [(APSCourierConnectionManager *)self notePush];
      if (v38)
      {

        v27 = 0;
      }

      else
      {
        v27 = APSError();
      }
    }

    else
    {
      v42 = +[APSLog courier];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        messageID4 = [messageCopy messageID];
        v44 = sub_1000067F8(interface);
        *buf = 138412802;
        selfCopy4 = self;
        v60 = 2048;
        messageID2 = messageID4;
        v62 = 2112;
        v63 = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@ Trying to send outgoing message %lu but connected interface %@ is not reachable", buf, 0x20u);
      }

      [(APSCourierConnectionManager *)self disconnectStreamForInterface:interface withReason:10];
      [(APSCourierConnectionManager *)self adjustConnectionsIfNeeded];
      v27 = APSError();
    }
  }

  else
  {
    v45 = +[APSLog courier];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *v54 = 138412546;
      selfCopy5 = self;
      v56 = 2048;
      messageID5 = [messageCopy messageID];
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%@: Dropping outgoing message %lu because it could not be encoded in JSON", v54, 0x16u);
    }

    v27 = APSError();
  }

LABEL_33:

  return v27;
}

- (void)sendTokenGenerateMessageWithTopicHash:(id)hash baseToken:(id)token appId:(unsigned __int16)id expirationTTL:(unsigned int)l vapidPublicKeyHash:(id)keyHash type:(int64_t)type withCompletion:(id)completion onInterface:(int64_t)self0
{
  hashCopy = hash;
  tokenCopy = token;
  keyHashCopy = keyHash;
  completionCopy = completion;
  tokenGenerateResponseQueue = [(APSCourierConnectionManager *)self tokenGenerateResponseQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A9AAC;
  v24[3] = &unk_100188B20;
  v24[4] = self;
  v25 = hashCopy;
  idCopy = id;
  lCopy = l;
  v26 = tokenCopy;
  v27 = keyHashCopy;
  typeCopy = type;
  interfaceCopy = interface;
  v20 = keyHashCopy;
  v21 = tokenCopy;
  v22 = hashCopy;
  [tokenGenerateResponseQueue enqueueSendBlock:v24 completionBlock:completionCopy];
}

- (BOOL)generationMatches:(unint64_t)matches forInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(interface) = [courierConnection generationMatches:matches forInterface:interface];

  return interface;
}

- (double)currentKeepAliveIntervalOnInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  [courierConnection currentKeepAliveIntervalOnInterface:interface];
  v6 = v5;

  return v6;
}

- (BOOL)isAttemptingToReconnect
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  hasConnectionEstablishTimer = [courierConnection hasConnectionEstablishTimer];

  return hasConnectionEstablishTimer;
}

- (void)sendFilterMessageWithEnabledHashes:(id)hashes ignoredHashes:(id)ignoredHashes opportunisticHashes:(id)opportunisticHashes nonWakingHashes:(id)wakingHashes pausedHashes:(id)pausedHashes token:(id)token version:(unint64_t)version expectsResponse:(BOOL)self0 onInterface:(int64_t)self1 withCompletion:(id)self2
{
  hashesCopy = hashes;
  ignoredHashesCopy = ignoredHashes;
  opportunisticHashesCopy = opportunisticHashes;
  wakingHashesCopy = wakingHashes;
  pausedHashesCopy = pausedHashes;
  tokenCopy = token;
  completionCopy = completion;
  if (response)
  {
    [(APSCourierConnectionManager *)self _startFilterMessageTimerOnInterface:interface];
    outgoingFilterQueue = [(APSCourierConnectionManager *)self outgoingFilterQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000AA140;
    v27[3] = &unk_100188B90;
    v27[4] = self;
    v28 = hashesCopy;
    v29 = ignoredHashesCopy;
    v30 = opportunisticHashesCopy;
    v31 = wakingHashesCopy;
    v32 = pausedHashesCopy;
    v33 = tokenCopy;
    versionCopy = version;
    interfaceCopy = interface;
    [outgoingFilterQueue enqueueSendBlock:v27 completionBlock:completionCopy];
  }

  else
  {
    courierConnection = [(APSCourierConnectionManager *)self courierConnection];
    [courierConnection sendFilterMessageWithEnabledHashes:hashesCopy ignoredHashes:ignoredHashesCopy opportunisticHashes:opportunisticHashesCopy nonWakingHashes:wakingHashesCopy pausedHashes:pausedHashesCopy token:tokenCopy version:version onInterface:interface];
  }
}

- (void)sendConnectMessageWithToken:(id)token state:(int)state interface:(int64_t)interface activeInterval:(unsigned int)interval presenceFlags:(int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)self0 signature:(id)self1 redirectCount:(unsigned __int8)self2 withCompletion:(id)self3 onInterface:(int64_t)self4
{
  tokenCopy = token;
  metadataCopy = metadata;
  certificatesCopy = certificates;
  nonceCopy = nonce;
  signatureCopy = signature;
  completionCopy = completion;
  outgoingConnectMessageQueue = [(APSCourierConnectionManager *)self outgoingConnectMessageQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000AA34C;
  v32[3] = &unk_100188BB8;
  v32[4] = self;
  v33 = tokenCopy;
  stateCopy = state;
  flagsCopy = flags;
  intervalCopy = interval;
  v34 = metadataCopy;
  v35 = certificatesCopy;
  v36 = nonceCopy;
  v37 = signatureCopy;
  countCopy = count;
  interfaceCopy = interface;
  onInterfaceCopy = onInterface;
  v25 = signatureCopy;
  v26 = nonceCopy;
  v27 = certificatesCopy;
  v28 = metadataCopy;
  v29 = tokenCopy;
  [outgoingConnectMessageQueue enqueueSendBlock:v32 completionBlock:completionCopy];
}

- (void)sendConnectMessageWithToken:(id)token interface:(int64_t)interface activeInterval:(unsigned int)interval presenceFlags:(int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)nonce signature:(id)self0 hostCertificateInfo:(id)self1 redirectCount:(unsigned __int8)self2 tcpHandshakeTimeMilliseconds:(double)self3 dnsResolveTimeMilliseconds:(double)self4 tlsHandshakeTimeMilliseconds:(double)self5 consecutiveConnectionFailureReason:(id)self6 withCompletion:(id)self7 onInterface:(int64_t)self8
{
  tokenCopy = token;
  metadataCopy = metadata;
  certificatesCopy = certificates;
  nonceCopy = nonce;
  signatureCopy = signature;
  infoCopy = info;
  reasonCopy = reason;
  completionCopy = completion;
  outgoingConnectMessageQueue = [(APSCourierConnectionManager *)self outgoingConnectMessageQueue];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000AA5D4;
  v43[3] = &unk_100188BE0;
  v43[4] = self;
  v44 = tokenCopy;
  v50 = reasonCopy;
  interfaceCopy = interface;
  intervalCopy = interval;
  flagsCopy = flags;
  v45 = metadataCopy;
  v46 = certificatesCopy;
  v47 = nonceCopy;
  v48 = signatureCopy;
  countCopy = count;
  millisecondsCopy = milliseconds;
  timeMillisecondsCopy = timeMilliseconds;
  handshakeTimeMillisecondsCopy = handshakeTimeMilliseconds;
  v49 = infoCopy;
  onInterfaceCopy = onInterface;
  v33 = reasonCopy;
  v34 = infoCopy;
  v35 = signatureCopy;
  v36 = nonceCopy;
  v37 = certificatesCopy;
  v38 = metadataCopy;
  v39 = tokenCopy;
  [outgoingConnectMessageQueue enqueueSendBlock:v43 completionBlock:completionCopy];
}

- (void)sendConnectMessageWithToken:(id)token state:(int)state presenceFlags:(int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)self0 redirectCount:(unsigned __int8)self1 withCompletion:(id)self2 onInterface:(int64_t)self3
{
  tokenCopy = token;
  metadataCopy = metadata;
  certificatesCopy = certificates;
  nonceCopy = nonce;
  signatureCopy = signature;
  infoCopy = info;
  completionCopy = completion;
  outgoingConnectMessageQueue = [(APSCourierConnectionManager *)self outgoingConnectMessageQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000AA87C;
  v33[3] = &unk_100188C08;
  v33[4] = self;
  v34 = tokenCopy;
  stateCopy = state;
  flagsCopy = flags;
  v35 = metadataCopy;
  v36 = certificatesCopy;
  v37 = nonceCopy;
  v38 = signatureCopy;
  countCopy = count;
  v39 = infoCopy;
  interfaceCopy = interface;
  v25 = infoCopy;
  v26 = signatureCopy;
  v27 = nonceCopy;
  v28 = certificatesCopy;
  v29 = metadataCopy;
  v30 = tokenCopy;
  [outgoingConnectMessageQueue enqueueSendBlock:v33 completionBlock:completionCopy];
}

- (BOOL)isKeepAliveProxyConfiguredOnInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(interface) = [courierConnection isKeepAliveProxyConfiguredOnInterface:interface];

  return interface;
}

- (BOOL)isKeepAliveProxyConfiguredOnAnyInterface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  isKeepAliveProxyConfiguredOnAnyInterface = [courierConnection isKeepAliveProxyConfiguredOnAnyInterface];

  return isKeepAliveProxyConfiguredOnAnyInterface;
}

- (BOOL)keepAliveV2SupportedOnInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(interface) = [courierConnection keepAliveV2SupportedOnInterface:interface];

  return interface;
}

- (unsigned)redirectCount
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  redirectCount = [courierConnection redirectCount];

  return redirectCount;
}

- (void)stopManagerOnInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  [courierConnection stopManagerOnInterface:interface];
}

- (void)recalculateCriticalReliability
{
  delegate = [(APSCourierConnectionManager *)self delegate];
  courierConnectionManagerClientsWantsCriticalReliability = [delegate courierConnectionManagerClientsWantsCriticalReliability];

  if (self->_enableCriticalReliability != courierConnectionManagerClientsWantsCriticalReliability)
  {
    self->_enableCriticalReliability = courierConnectionManagerClientsWantsCriticalReliability;
    v6 = +[APSLog courier];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (courierConnectionManagerClientsWantsCriticalReliability)
      {
        v7 = "enabled";
      }

      else
      {
        v7 = "disabled";
      }

      domain = [(APSEnvironment *)self->_environment domain];
      *buf = 138412802;
      selfCopy = self;
      v15 = 2080;
      v16 = v7;
      v17 = 2112;
      v18 = domain;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Critical reliability for is now %s for '%@'", buf, 0x20u);
    }

    [(APSNetworkMonitor *)self->_networkMonitor setCriticalReliability:self->_enableCriticalReliability];
    criticalReliabilityPowerAssertion = self->_criticalReliabilityPowerAssertion;
    if (courierConnectionManagerClientsWantsCriticalReliability)
    {
      if (criticalReliabilityPowerAssertion)
      {
        sub_10010CA58(a2, self);
      }

      criticalReliabilityTimer = [NSString stringWithFormat:@"%@-criticalreliability", APSBundleIdentifier];
      v11 = [[APSPowerAssertion alloc] initWithName:criticalReliabilityTimer category:204 holdDuration:600.0];
      v12 = self->_criticalReliabilityPowerAssertion;
      self->_criticalReliabilityPowerAssertion = v11;
    }

    else
    {
      self->_criticalReliabilityPowerAssertion = 0;

      [(PCPersistentTimer *)self->_criticalReliabilityTimer invalidate];
      criticalReliabilityTimer = self->_criticalReliabilityTimer;
      self->_criticalReliabilityTimer = 0;
    }
  }
}

- (void)triggerCriticalReliability
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ _criticalReliabilityFlushTimerFired", &v10, 0xCu);
  }

  [(NSTimer *)self->_criticalFlushTimer invalidate];
  criticalFlushTimer = self->_criticalFlushTimer;
  self->_criticalFlushTimer = 0;

  [(APSCourierConnectionManager *)self sendFlushOnAllConnectionshWithPaddingLength:2];
  if (self->_enableCriticalReliability)
  {
    v5 = +[NSDate date];
    v6 = [v5 dateByAddingTimeInterval:9.0];

    v7 = [[NSTimer alloc] initWithFireDate:v6 interval:self target:"triggerCriticalReliability" selector:0 userInfo:0 repeats:0.0];
    v8 = self->_criticalFlushTimer;
    self->_criticalFlushTimer = v7;

    v9 = +[NSRunLoop currentRunLoop];
    [v9 addTimer:self->_criticalFlushTimer forMode:NSDefaultRunLoopMode];
  }
}

- (void)setKeepAliveConfiguration:(unint64_t)configuration
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  [courierConnection setKeepAliveConfiguration:configuration];
}

- (void)_criticalReliabilityTimerFired
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ _criticalReliabilityTimerFired", &v4, 0xCu);
  }

  [(APSCourierConnectionManager *)self refreshCriticalReliabilityTimerWithShortKeepAlive:0];
}

- (BOOL)isPiggybacking
{
  networkMonitor = [(APSCourierConnectionManager *)self networkMonitor];
  isPiggybacking = [networkMonitor isPiggybacking];

  return isPiggybacking;
}

- (BOOL)isKeepAliveProxyConfiguredOnAnyConnection
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  isKeepAliveProxyConfiguredOnAnyInterface = [courierConnection isKeepAliveProxyConfiguredOnAnyInterface];

  return isKeepAliveProxyConfiguredOnAnyInterface;
}

- (void)sendMessageTransportAcknowledgeMessageOnInterface:(int64_t)interface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  [courierConnection sendMessageTransportAcknowledgeMessageOnInterface:interface];
}

- (void)prepareForSleep
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  [courierConnection stopManagers];

  if ([(APSCourierConnectionManager *)self _neededToSwitchToKeepAliveProxyInterface])
  {

    [(APSCourierConnectionManager *)self _switchToKeepAliveProxyInterface];
  }
}

- (void)prepareForDarkWake
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: prepareForDarkWake", &v7, 0xCu);
  }

  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  if ([courierConnection hasOpenConnection])
  {
    courierConnection2 = [(APSCourierConnectionManager *)self courierConnection];
    isConnected = [courierConnection2 isConnected];

    if ((isConnected & 1) == 0)
    {
      [(APSNoOpPowerAssertion *)self->_waitForConnectionAttemptsPowerAssertion hold];
    }
  }

  else
  {
  }

  [(APSCourierConnectionManager *)self performKeepAlive];
}

- (void)prepareForFullWake
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: prepareForFullWake", &v11, 0xCu);
  }

  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  isConnected = [courierConnection isConnected];

  if (isConnected || (-[APSCourierConnectionManager courierConnection](self, "courierConnection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasOpenConnection], v6, (v7 & 1) != 0))
  {
    if (self->_interfacePreference)
    {
      [(APSCourierConnectionManager *)self _startResetInterfacePreferenceTimer];
    }
  }

  else
  {
    self->_interfacePreference = 0;
  }

  courierConnection2 = [(APSCourierConnectionManager *)self courierConnection];
  if ([courierConnection2 hasOpenConnection])
  {
    courierConnection3 = [(APSCourierConnectionManager *)self courierConnection];
    isConnected2 = [courierConnection3 isConnected];

    if ((isConnected2 & 1) == 0)
    {
      [(APSNoOpPowerAssertion *)self->_waitForConnectionAttemptsPowerAssertion hold];
    }
  }

  else
  {
  }

  [(APSCourierConnectionManager *)self performKeepAlive];
}

- (void)_startResetInterfacePreferenceTimer
{
  [(APSCourierConnectionManager *)self _clearResetInterfacePreferenceTimer];
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 1024;
    v9 = 90;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Scheduling reset of interface preference in %d seconds", &v6, 0x12u);
  }

  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"_resetInterfacePreferenceTimerFired:" selector:0 userInfo:0 repeats:90.0];
  resetInterfacePreferenceTimer = self->_resetInterfacePreferenceTimer;
  self->_resetInterfacePreferenceTimer = v4;

  [(NSTimer *)self->_resetInterfacePreferenceTimer setTolerance:9.0];
}

- (void)_clearResetInterfacePreferenceTimer
{
  resetInterfacePreferenceTimer = self->_resetInterfacePreferenceTimer;
  if (resetInterfacePreferenceTimer)
  {
    [(NSTimer *)resetInterfacePreferenceTimer invalidate];
    v4 = self->_resetInterfacePreferenceTimer;
    self->_resetInterfacePreferenceTimer = 0;
  }
}

- (void)_resetInterfacePreferenceTimerFired:(id)fired
{
  v4 = +[APSLog courier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Timer fired to reset the interface", &v8, 0xCu);
  }

  [(APSCourierConnectionManager *)self _clearResetInterfacePreferenceTimer];
  if (self->_interfacePreference)
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Switching to preferred interface", &v8, 0xCu);
    }

    [(APSCourierConnectionManager *)self _useInteractivePowerAssertionIfNeededWithReason:@"switching to preferred interface"];
    self->_interfacePreference = 0;
    courierConnection = [(APSCourierConnectionManager *)self courierConnection];
    isConnected = [courierConnection isConnected];

    if (isConnected)
    {
      [(APSCourierConnectionManager *)self disconnectAllStreamsWithReason:103];
    }

    [(APSCourierConnectionManager *)self adjustConnectionsIfNeeded];
  }
}

- (void)_useInteractivePowerAssertionIfNeededWithReason:(id)reason
{
  reasonCopy = reason;
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  isConnected = [courierConnection isConnected];

  if (isConnected)
  {
    delegate = [(APSCourierConnectionManager *)self delegate];
    courierConnectionManagerClientsHaveInteractivePushDuringSleepEnabled = [delegate courierConnectionManagerClientsHaveInteractivePushDuringSleepEnabled];

    if (courierConnectionManagerClientsHaveInteractivePushDuringSleepEnabled)
    {
      v9 = +[APSLog courier];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        selfCopy = self;
        v12 = 2112;
        v13 = reasonCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Enabling interactive power assertions due to %@", &v10, 0x16u);
      }

      [APSNoOpPowerAssertion setUseInteractivePowerAssertion:1];
    }
  }
}

- (BOOL)_neededToSwitchToKeepAliveProxyInterface
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  v4 = [courierConnection isConnectedOnInterface:1];

  if (v4)
  {
    if (!+[APSNWTCPStream isKeepAliveProxyFeatureEnabled])
    {
      return 0;
    }

    courierConnection2 = [(APSCourierConnectionManager *)self courierConnection];
    v6 = [courierConnection2 isKeepAliveProxyConfiguredOnInterface:1];

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    courierConnection3 = [(APSCourierConnectionManager *)self courierConnection];
    v8 = [courierConnection3 isConnectedOnInterface:0];

    if (!v8)
    {
      return 0;
    }

    if (!+[APSNWTCPStream isKeepAliveProxyFeatureEnabled])
    {
      return 0;
    }

    courierConnection4 = [(APSCourierConnectionManager *)self courierConnection];
    v10 = [courierConnection4 isKeepAliveProxyConfiguredOnInterface:0];

    if (!v10)
    {
      return 0;
    }
  }

  return +[APSNWTCPStream isKeepAliveProxySupportedOnSomeInterface];
}

- (void)_switchToKeepAliveProxyInterface
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Switching interfaces to enable keep alive proxy", &v4, 0xCu);
  }

  [(APSCourierConnectionManager *)self _clearResetInterfacePreferenceTimer];
  [(APSNoOpPowerAssertion *)self->_waitForConnectionAttemptsPowerAssertion hold];
  [(APSCourierConnectionManager *)self disconnectAllStreamsWithReason:104];
  self->_interfacePreference = 10;
  [(APSCourierConnectionManager *)self adjustConnectionsIfNeeded];
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  domain = [(APSEnvironment *)self->_environment domain];
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  countConnectedInterfaces = [courierConnection countConnectedInterfaces];
  courierConnection2 = [(APSCourierConnectionManager *)self courierConnection];
  connectionDebugInfo = [courierConnection2 connectionDebugInfo];
  v9 = APSPrettyPrintCollection();
  v10 = [NSString stringWithFormat:@"<%@ %p, domain=%@, connectedInterfaces=%lu, connectionInfo=%@>", v3, self, domain, countConnectedInterfaces, v9];

  return v10;
}

- (id)aps_prettyDescription
{
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  connectionDebugInfo = [courierConnection connectionDebugInfo];

  v32 = objc_alloc_init(NSMutableDictionary);
  v5 = 0;
  v6 = 1;
  do
  {
    v31 = v6;
    v7 = [(APSCourierConnectionManager *)self connectionTimeForInterface:v5];
    v33[0] = @"keepAlive";
    [(APSCourierConnectionManager *)self currentKeepAliveIntervalOnInterface:v5];
    v9 = [NSString stringWithFormat:@"%.0f", v8];
    v34[0] = v9;
    v33[1] = @"connected";
    if (v7)
    {
      [v7 doubleValue];
      v2 = [APSDatePrinter dateStringFromInterval:?];
      v10 = v2;
    }

    else
    {
      v10 = @"N/A";
    }

    v34[1] = v10;
    v33[2] = @"connection";
    v11 = sub_1000067F8(v5);
    v12 = [connectionDebugInfo objectForKeyedSubscript:v11];
    v34[2] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
    v14 = [v13 mutableCopy];
    v15 = sub_1000067F8(v5);
    [v32 setObject:v14 forKeyedSubscript:v15];

    if (v7)
    {
    }

    environment = [(APSCourierConnectionManager *)self environment];
    v17 = [(APSCourierConnectionManager *)self _shouldOffloadToAOP:v5 environment:environment];

    if (v17)
    {
      courierConnection2 = [(APSCourierConnectionManager *)self courierConnection];
      if ([courierConnection2 isConnectionOffloadedOnInterface:v5])
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v20 = sub_1000067F8(v5);
      v21 = [v32 objectForKeyedSubscript:v20];
      [v21 setObject:v19 forKeyedSubscript:@"isOffloaded"];
    }

    else
    {
      courierConnection2 = sub_1000067F8(v5);
      v20 = [v32 objectForKeyedSubscript:courierConnection2];
      [v20 setObject:@"Not Supported" forKeyedSubscript:@"isOffloaded"];
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v31 & 1) != 0);
  domain = [(APSEnvironment *)self->_environment domain];
  courierConnection3 = [(APSCourierConnectionManager *)self courierConnection];
  countConnectedInterfaces = [courierConnection3 countConnectedInterfaces];
  v25 = APSPrettyPrintCollection();
  serverTimeTracker = [(APSCourierConnectionManager *)self serverTimeTracker];
  v27 = APSPrettyPrintObject();
  v28 = [NSString stringWithFormat:@"<domain=%@, connectedInterfaces=%lu, info=%@, serverTime=%@>", domain, countConnectedInterfaces, v25, v27];

  return v28;
}

- (id)JSONDebugState
{
  selfCopy = self;
  v30[0] = @"connection status";
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [courierConnection isConnected]);
  v31[0] = v4;
  v30[1] = @"enabled";
  v5 = [NSNumber numberWithBool:selfCopy->_enabled];
  v31[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  v27 = [v6 mutableCopy];

  v7 = 0;
  v8 = 1;
  v25 = selfCopy;
  do
  {
    v9 = v8;
    courierConnection2 = [(APSCourierConnectionManager *)selfCopy courierConnection];
    v11 = [courierConnection2 isConnectedOnInterface:v7];

    if (v11)
    {
      v28[0] = @"serverHostName";
      courierConnection3 = [(APSCourierConnectionManager *)selfCopy courierConnection];
      v26 = [courierConnection3 serverHostnameForInterface:v7];
      v29[0] = v26;
      v28[1] = @"serverPort";
      courierConnection4 = [(APSCourierConnectionManager *)selfCopy courierConnection];
      v14 = [courierConnection4 serverPortForInterface:v7];
      v29[1] = v14;
      v28[2] = @"serverIP";
      courierConnection5 = [(APSCourierConnectionManager *)selfCopy courierConnection];
      v16 = [courierConnection5 serverAddressForInterface:v7];
      v29[2] = v16;
      v28[3] = @"connectionTime";
      v17 = [(APSCourierConnectionManager *)selfCopy connectionTimeForInterface:v7];
      v29[3] = v17;
      v28[4] = @"keepAliveInterval";
      [(APSCourierConnectionManager *)selfCopy currentKeepAliveIntervalOnInterface:v7];
      v19 = [NSString stringWithFormat:@"%.0f", v18];
      v29[4] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5];
      v21 = sub_1000067F8(v7);
      [v27 setObject:v20 forKeyedSubscript:v21];

      selfCopy = v25;
    }

    else
    {
      courierConnection3 = sub_1000067F8(v7);
      [v27 setObject:&__NSDictionary0__struct forKeyedSubscript:courierConnection3];
    }

    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[APSNWTCPStream isKeepAliveProxyFeatureEnabled]);
  [v27 setObject:v22 forKeyedSubscript:@"keepAliveProxyingEnabled"];

  if (+[APSNWTCPStream isKeepAliveProxyFeatureEnabled])
  {
    v23 = [NSNumber numberWithBool:[(APSCourierConnectionManager *)v25 _requestKeepAliveProxy]];
    [v27 setObject:v23 forKeyedSubscript:@"didRequestKeepAliveProxying"];
  }

  return v27;
}

- (void)appendPrettyStatusToStatusPrinter:(id)printer
{
  printerCopy = printer;
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  [printerCopy appendDescription:@"connection status" BOOLValue:{objc_msgSend(courierConnection, "isConnected")}];

  [printerCopy pushIndent];
  [printerCopy appendDescription:@"enabled" BOOLValue:self->_enabled];
  [printerCopy pushIndent];
  courierConnection2 = [(APSCourierConnectionManager *)self courierConnection];
  [printerCopy appendDescription:@"noncellular connected" BOOLValue:{objc_msgSend(courierConnection2, "isConnectedOnInterface:", 1)}];

  courierConnection3 = [(APSCourierConnectionManager *)self courierConnection];
  v7 = [courierConnection3 isConnectedOnInterface:1];

  if (v7)
  {
    [printerCopy pushIndent];
    courierConnection4 = [(APSCourierConnectionManager *)self courierConnection];
    v9 = [courierConnection4 serverHostnameForInterface:1];
    [printerCopy appendDescription:@"server hostname" stringValue:v9];

    courierConnection5 = [(APSCourierConnectionManager *)self courierConnection];
    v11 = [courierConnection5 serverPortForInterface:1];
    [printerCopy appendDescription:@"server port" unsignedIntegerValue:{objc_msgSend(v11, "unsignedLongLongValue")}];

    courierConnection6 = [(APSCourierConnectionManager *)self courierConnection];
    v13 = [courierConnection6 serverAddressForInterface:1];
    [printerCopy appendDescription:@"server ip" stringValue:v13];

    v14 = [(APSCourierConnectionManager *)self connectionTimeForInterface:1];
    [v14 doubleValue];
    [printerCopy appendDescription:@"connection time" timeIntervalValue:?];

    [printerCopy popIndent];
  }

  courierConnection7 = [(APSCourierConnectionManager *)self courierConnection];
  [printerCopy appendDescription:@"wwan connected" BOOLValue:{objc_msgSend(courierConnection7, "isConnectedOnInterface:", 0)}];

  courierConnection8 = [(APSCourierConnectionManager *)self courierConnection];
  v17 = [courierConnection8 isConnectedOnInterface:0];

  if (v17)
  {
    [printerCopy pushIndent];
    courierConnection9 = [(APSCourierConnectionManager *)self courierConnection];
    v19 = [courierConnection9 serverHostnameForInterface:0];
    [printerCopy appendDescription:@"server hostname" stringValue:v19];

    courierConnection10 = [(APSCourierConnectionManager *)self courierConnection];
    v21 = [courierConnection10 serverPortForInterface:0];
    [printerCopy appendDescription:@"server port" unsignedIntegerValue:{objc_msgSend(v21, "unsignedLongLongValue")}];

    courierConnection11 = [(APSCourierConnectionManager *)self courierConnection];
    v23 = [courierConnection11 serverAddressForInterface:0];
    [printerCopy appendDescription:@"server ip" stringValue:v23];

    v24 = [(APSCourierConnectionManager *)self connectionTimeForInterface:0];
    [v24 doubleValue];
    [printerCopy appendDescription:@"connection time" timeIntervalValue:?];

    [printerCopy popIndent];
  }

  if (self->_consecutiveConnectionFailureCount)
  {
    [printerCopy appendDescription:@"consecutive connection failures" unsignedIntegerValue:?];
    if (self->_lastConnectionAttempt)
    {
      [printerCopy appendDescription:@"last connection attempt" dateValue:?];
    }
  }

  [printerCopy popIndent];
  [printerCopy appendDescription:@"keep alive proxying" enabledValue:{+[APSNWTCPStream isKeepAliveProxyFeatureEnabled](APSNWTCPStream, "isKeepAliveProxyFeatureEnabled")}];
  if (+[APSNWTCPStream isKeepAliveProxyFeatureEnabled])
  {
    [printerCopy appendDescription:@"request keep alive proxying" BOOLValue:{-[APSCourierConnectionManager _requestKeepAliveProxy](self, "_requestKeepAliveProxy")}];
  }

  [printerCopy popIndent];
}

- (id)connectionTimeForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v4 = self->_connectionTime[interface];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setConnectionTime:(id)time forInterface:(int64_t)interface
{
  timeCopy = time;
  if (interface <= 1)
  {
    v8 = timeCopy;
    objc_storeStrong(&self->_connectionTime[interface], time);
    timeCopy = v8;
  }
}

- (id)maxMessageSizeForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v6 = self->_maxMessageSizes[interface];
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = [NSNumber numberWithUnsignedInteger:[(APSEnvironment *)self->_environment messageSize]];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMaxMessageSize:(id)size forInterface:(int64_t)interface
{
  sizeCopy = size;
  if (interface <= 1)
  {
    v8 = sizeCopy;
    objc_storeStrong(&self->_maxMessageSizes[interface], size);
    sizeCopy = v8;
  }
}

- (id)maxLargeMessageSizeForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v6 = self->_maxLargeMessageSizes[interface];
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = [NSNumber numberWithUnsignedInteger:[(APSEnvironment *)self->_environment largeMessageSize]];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMaxLargeMessageSize:(id)size forInterface:(int64_t)interface
{
  sizeCopy = size;
  if (interface <= 1)
  {
    v8 = sizeCopy;
    objc_storeStrong(&self->_maxLargeMessageSizes[interface], size);
    sizeCopy = v8;
  }
}

- (int64_t)interfaceConstraintForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    return [(APSCourierConnection *)self->_courierConnection interfaceConstraintForInterface:?];
  }

  else
  {
    return 0;
  }
}

- (void)offloadHeuristics:(id)heuristics offloadDisabledOnInterface:(int64_t)interface
{
  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(interface);
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Heuristics told us that offloading is disabled for interface %@.  Disconnecting...", &v8, 0x16u);
  }

  [(APSCourierConnectionManager *)self _stopOffloadingToAOP];
}

- (void)offloadHeuristics:(id)heuristics offloadEnabledOnInterface:(int64_t)interface
{
  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(interface);
    v15 = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Heuristics told us that offloading is now available for interface %@. Disconnecting from AP...", &v15, 0x16u);
  }

  v8 = +[NSMutableDictionary dictionary];
  courierConnection = [(APSCourierConnectionManager *)self courierConnection];
  v10 = [courierConnection keepAliveCacheForInterface:0];
  [v8 setObject:v10 forKeyedSubscript:&off_100197A58];

  courierConnection2 = [(APSCourierConnectionManager *)self courierConnection];
  v12 = [courierConnection2 keepAliveCacheForInterface:1];
  [v8 setObject:v12 forKeyedSubscript:&off_100197A70];

  carrierBundleHelper = [(APSCourierConnectionManager *)self carrierBundleHelper];
  LODWORD(v12) = [carrierBundleHelper BOOLValueFromPushBundleForKey:APSForceKeepAliveV1Key error:0];

  connectionOffloader = [(APSCourierConnectionManager *)self connectionOffloader];
  [connectionOffloader resumeOffloadingWithCacheDictionary:v8 supportsKeepAliveV2:v12 ^ 1];

  [(APSCourierConnectionManager *)self _disconnectStreamForInterface:interface withReason:27];
}

@end