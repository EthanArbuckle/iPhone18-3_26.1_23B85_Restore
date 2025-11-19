@interface APSCourierConnectionManager
- (APSCourierConnectionManager)initWithEnvironment:(id)a3 courierConnection:(id)a4 carrierBundleHelper:(id)a5 networkMonitor:(id)a6 connectionRetryManager:(id)a7 connectionOffloader:(id)a8 delegate:(id)a9;
- (APSCourierConnectionManager)initWithEnvironment:(id)a3 delegate:(id)a4;
- (BOOL)_adjustConnectionWithInterfacePreference:(int64_t)a3;
- (BOOL)_connectStreamWithInterfacePreference:(int64_t)a3;
- (BOOL)_deviceCanOffloadPresenceResponse:(id)a3 interface:(int64_t)a4;
- (BOOL)_handleRedirectMessage:(id)a3 onInterface:(int64_t)a4;
- (BOOL)_hasUsableOffloadInfo:(int64_t)a3;
- (BOOL)_isInternetReachableOnInterface:(int64_t)a3;
- (BOOL)_isWiFiLinkQualityBetter;
- (BOOL)_neededToSwitchToKeepAliveProxyInterface;
- (BOOL)_shouldOffloadToAOP:(int64_t)a3 environment:(id)a4;
- (BOOL)_shouldPerformFullHandshake;
- (BOOL)_useShortKeepAliveInterval;
- (BOOL)didPushCauseWake;
- (BOOL)generationMatches:(unint64_t)a3 forInterface:(int64_t)a4;
- (BOOL)hasOpenConnection;
- (BOOL)hasOpenConnectionOnInterface:(int64_t)a3;
- (BOOL)isAttemptingToReconnect;
- (BOOL)isConnected;
- (BOOL)isConnectedOnInterface:(int64_t)a3;
- (BOOL)isKeepAliveProxyConfiguredOnAnyConnection;
- (BOOL)isKeepAliveProxyConfiguredOnAnyInterface;
- (BOOL)isKeepAliveProxyConfiguredOnInterface:(int64_t)a3;
- (BOOL)isPiggybacking;
- (BOOL)isSuspendedOnInterface:(int64_t)a3;
- (BOOL)keepAliveV2SupportedOnInterface:(int64_t)a3;
- (BOOL)shouldUseInternet;
- (BOOL)useServerKeepAliveStatsOnInterface:(int64_t)a3;
- (NSArray)activeProtocolConnections;
- (NSString)currentLinkQualityString;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)ifname;
- (double)currentKeepAliveInterval;
- (double)currentKeepAliveIntervalOnInterface:(int64_t)a3;
- (id)JSONDebugState;
- (id)_sendOutgoingMessage:(id)a3 topicHash:(id)a4 lastRTT:(id)a5 token:(id)a6 onInterface:(int64_t)a7 ultraConstrainedAllowed:(BOOL)a8 withCompletion:(id)a9;
- (id)_usableOffloadInfo:(int64_t)a3;
- (id)aps_prettyDescription;
- (id)connectionTimeForInterface:(int64_t)a3;
- (id)consecutiveConnectionFailureReasonOnInterface:(int64_t)a3;
- (id)currentKeepAliveStateOnInterface:(int64_t)a3;
- (id)dailySuspendToggleRateLimiter;
- (id)dnsResolutionTimeMillisecondsOnInterface:(int64_t)a3;
- (id)hourlySuspendToggleRateLimiter;
- (id)maxLargeMessageSizeForInterface:(int64_t)a3;
- (id)maxMessageSizeForInterface:(int64_t)a3;
- (id)pcInterfaceMonitorOnInterface:(int64_t)a3;
- (id)protocolConnectionForInterface:(int64_t)a3;
- (id)serverHostnameForInterface:(int64_t)a3;
- (id)serverIPAddressForInterface:(int64_t)a3;
- (id)tcpHandshakeTimeMillisecondsOnInterface:(int64_t)a3;
- (id)tcpInfoDescription;
- (id)tlsHandshakeTimeMillisecondsOnInterface:(int64_t)a3;
- (int)_linkQualityForInterface:(int64_t)a3;
- (int64_t)interfaceConstraintForInterface:(int64_t)a3;
- (int64_t)preferredInterface;
- (unint64_t)countConnectedInterfaces;
- (unint64_t)countOpenConnections;
- (unint64_t)courierConnection:(id)a3 dataReceived:(id)a4 onInterface:(int64_t)a5 withGeneration:(unint64_t)a6 isWakingMessage:(BOOL)a7;
- (unint64_t)numberOfPSKsToRequestOnInterface:(int64_t)a3;
- (unint64_t)serverTimeInNanoSeconds;
- (unsigned)_keepAliveVersionForInterface:(int64_t)a3;
- (unsigned)redirectCount;
- (void)__delayedPerformKeepAliveOnInterface:(id)a3;
- (void)_cacheIPAddress:(id)a3 onInterface:(int64_t)a4;
- (void)_clearDelayedReconnectTimer;
- (void)_clearFilterMessageTimerOnInterface:(int64_t)a3;
- (void)_clearPostSuspensionFlushState;
- (void)_clearResetInterfacePreferenceTimer;
- (void)_criticalReliabilityTimerFired;
- (void)_delayedPerformKeepAliveOnInterface:(int64_t)a3 withDelay:(double)a4;
- (void)_delayedReconnectTimerFired;
- (void)_delayedSuspendKeepAliveTimerFired:(id)a3;
- (void)_filterMessageTimeoutTimerFired:(id)a3;
- (void)_handleConnectionAfterSuspensionRecoveryOnInterface:(int64_t)a3 withKeepAlive:(BOOL)a4;
- (void)_handleConnectionFailureOnInterface:(int64_t)a3 forceDelayedReconnect:(BOOL)a4 withReason:(unsigned int)a5 error:(id)a6;
- (void)_handleConnectionRecoverFromSuspensionOnInterface:(int64_t)a3;
- (void)_handleConnectionSuspendedOnInterface:(int64_t)a3;
- (void)_handleDelayKeepAliveCancelMessageOnInterface:(int64_t)a3;
- (void)_handleFlushMessage:(id)a3 onInterface:(int64_t)a4;
- (void)_handleKeepAliveAckMessage:(id)a3 onInterface:(int64_t)a4;
- (void)_handlePSKVendingStatus:(unint64_t)a3 onConnectionType:(int64_t)a4;
- (void)_invokeInFailureHandlingContext:(id)a3;
- (void)_noteFullTCPHandshake;
- (void)_pendingMessageReconnectTimerFired;
- (void)_resetInterfacePreferenceTimerFired:(id)a3;
- (void)_resetKeepAliveOnInterface:(int64_t)a3;
- (void)_resetServerKeepAliveStatsOnInterface:(int64_t)a3;
- (void)_startConnectionEstablishTimerOnInterface:(int64_t)a3;
- (void)_startFilterMessageTimerOnInterface:(int64_t)a3;
- (void)_startResetInterfacePreferenceTimer;
- (void)_stopOffloadingToAOP;
- (void)_submitKeepAliveFailedAWDonInterface:(int64_t)a3;
- (void)_submitKeepAliveSucceededAWDonInterface:(int64_t)a3;
- (void)_switchToKeepAliveProxyInterface;
- (void)_useCachedLastIPIfPossible:(int64_t)a3;
- (void)_useInteractivePowerAssertionIfNeededWithReason:(id)a3;
- (void)addConnectionFailureReasons:(id)a3 onInterface:(int64_t)a4;
- (void)adjustConnectionsIfNeeded;
- (void)appendPrettyStatusToStatusPrinter:(id)a3;
- (void)carrierBundleDidChange;
- (void)clearConsecutiveConnectionFailureReasonOnInterface:(int64_t)a3;
- (void)clearDNSResolutionAndTLSHandshakeOnInterface:(int64_t)a3;
- (void)clearProtocolConnectionForInterface:(int64_t)a3;
- (void)courierConnection:(id)a3 aboutToWriteDataOnConnectedInterface:(int64_t)a4;
- (void)courierConnection:(id)a3 connectionEstablishTimerFiredOnInterface:(int64_t)a4;
- (void)courierConnection:(id)a3 connectionManager:(id)a4 handleEvent:(int)a5 context:(id)a6 onInterface:(int64_t)a7;
- (void)courierConnection:(id)a3 errorOccured:(id)a4 disconnectReason:(unsigned int)a5 onInterface:(int64_t)a6;
- (void)courierConnection:(id)a3 hasDeterminedServerHostname:(id)a4 onInterface:(int64_t)a5;
- (void)courierConnection:(id)a3 keepAliveResponseTimerFiredOnInterface:(int64_t)a4;
- (void)courierConnection:(id)a3 parserErrorMessage:(id)a4 OnInterface:(int64_t)a5;
- (void)courierConnection:(id)a3 receivedOffloadInfo:(id)a4 onInterface:(int64_t)a5;
- (void)courierConnection:(id)a3 receivedServerBag:(id)a4 finishedProcessingServerBagBlock:(id)a5;
- (void)courierConnection:(id)a3 shouldConnect:(id)a4;
- (void)dealloc;
- (void)forceAdjustConnections;
- (void)holdPowerAssertionUntilStreamsQuiesce;
- (void)interfaceRadioHotnessChanged:(id)a3;
- (void)markInitiallyConnectedOnInterface:(int64_t)a3;
- (void)networkMonitorWiFiBecameAssociated:(id)a3;
- (void)notePush;
- (void)offloadHeuristics:(id)a3 offloadDisabledOnInterface:(int64_t)a4;
- (void)offloadHeuristics:(id)a3 offloadEnabledOnInterface:(int64_t)a4;
- (void)performKeepAlive;
- (void)performKeepAliveOnInterface:(int64_t)a3;
- (void)prepareForDarkWake;
- (void)prepareForFullWake;
- (void)prepareForSleep;
- (void)recalculateCriticalReliability;
- (void)requestConnectionIfNeeded;
- (void)sendConnectMessageWithToken:(id)a3 interface:(int64_t)a4 activeInterval:(unsigned int)a5 presenceFlags:(int)a6 metadata:(id)a7 certificates:(id)a8 nonce:(id)a9 signature:(id)a10 hostCertificateInfo:(id)a11 redirectCount:(unsigned __int8)a12 tcpHandshakeTimeMilliseconds:(double)a13 dnsResolveTimeMilliseconds:(double)a14 tlsHandshakeTimeMilliseconds:(double)a15 consecutiveConnectionFailureReason:(id)a16 withCompletion:(id)a17 onInterface:(int64_t)a18;
- (void)sendConnectMessageWithToken:(id)a3 state:(int)a4 interface:(int64_t)a5 activeInterval:(unsigned int)a6 presenceFlags:(int)a7 metadata:(id)a8 certificates:(id)a9 nonce:(id)a10 signature:(id)a11 redirectCount:(unsigned __int8)a12 withCompletion:(id)a13 onInterface:(int64_t)a14;
- (void)sendConnectMessageWithToken:(id)a3 state:(int)a4 presenceFlags:(int)a5 metadata:(id)a6 certificates:(id)a7 nonce:(id)a8 signature:(id)a9 hostCertificateInfo:(id)a10 redirectCount:(unsigned __int8)a11 withCompletion:(id)a12 onInterface:(int64_t)a13;
- (void)sendFilterMessageWithEnabledHashes:(id)a3 ignoredHashes:(id)a4 opportunisticHashes:(id)a5 nonWakingHashes:(id)a6 pausedHashes:(id)a7 token:(id)a8 version:(unint64_t)a9 expectsResponse:(BOOL)a10 onInterface:(int64_t)a11 withCompletion:(id)a12;
- (void)sendMessageTransportAcknowledgeMessageOnInterface:(int64_t)a3;
- (void)sendTokenGenerateMessageWithTopicHash:(id)a3 baseToken:(id)a4 appId:(unsigned __int16)a5 expirationTTL:(unsigned int)a6 vapidPublicKeyHash:(id)a7 type:(int64_t)a8 withCompletion:(id)a9 onInterface:(int64_t)a10;
- (void)setConnectionFailure:(id)a3 onInterface:(int64_t)a4;
- (void)setConnectionStatistics:(id)a3 onInterface:(int64_t)a4;
- (void)setConnectionTime:(id)a3 forInterface:(int64_t)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setKeepAliveConfiguration:(unint64_t)a3;
- (void)setMaxLargeMessageSize:(id)a3 forInterface:(int64_t)a4;
- (void)setMaxMessageSize:(id)a3 forInterface:(int64_t)a4;
- (void)stopManagerOnInterface:(int64_t)a3;
- (void)triggerCriticalReliability;
- (void)updateKeepAliveInterval:(double)a3;
@end

@implementation APSCourierConnectionManager

- (unint64_t)countConnectedInterfaces
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 countConnectedInterfaces];

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(APSCourierConnectionManager *)self environment];
  v5 = [v4 name];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v3, self, v5];;

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
    v3 = [(APSCourierConnectionManager *)self delegate];
    self->_shouldUseInternet = [v3 courierConnectionManagerClientsCanConnectRightNow];

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
  v3 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  v4 = [v3 linkQuality];

  v5 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
    v8 = [v7 currentRAT];

    if (v4 != -2 && v8 <= 0xFFFFFFFD)
    {
      self->_lastPushLQ = v4;
      if (self->_lastPushRAT != v8)
      {
        self->_lastPushRAT = v8;
      }
    }
  }

  v9 = [APSNetworkMonitor powerCostForPushOnRAT:self->_lastPushRAT withLinkQuality:self->_lastPushLQ];
  v10 = [(APSCourierConnectionManager *)self networkMonitor];
  [v10 notePushWithCost:v9];
}

- (int64_t)preferredInterface
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 preferredInterface];

  return v3;
}

- (APSCourierConnectionManager)initWithEnvironment:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v21 = a4;
  v7 = [[APSCourierConnection alloc] initWithEnvironment:v6];
  v8 = +[PCCarrierBundleHelper helper];
  v20 = objc_alloc_init(APSNetworkMonitor);
  v9 = objc_alloc_init(APSDefaultConnectionRetryStateManager);
  v10 = +[NSMutableDictionary dictionary];
  v11 = [(APSCourierConnection *)v7 keepAliveCacheForInterface:0];
  [v10 setObject:v11 forKeyedSubscript:&off_100197A58];

  v12 = [(APSCourierConnection *)v7 keepAliveCacheForInterface:1];
  [v10 setObject:v12 forKeyedSubscript:&off_100197A70];

  v13 = -[APSConnectionOffloader initWithEnvironment:cacheDictionary:supportsKeepAliveV2:]([APSConnectionOffloader alloc], "initWithEnvironment:cacheDictionary:supportsKeepAliveV2:", v6, v10, [v8 BOOLValueFromPushBundleForKey:APSForceKeepAliveV1Key error:0] ^ 1);
  v14 = [(APSCourierConnectionManager *)self environment];
  v15 = [v14 name];
  v16 = [v15 isEqualToString:APSEnvironmentProduction];

  if (v16)
  {
    v17 = +[APSOffloadHeuristics shared];
    [v17 addDelegate:self];
  }

  v18 = [(APSCourierConnectionManager *)self initWithEnvironment:v6 courierConnection:v7 carrierBundleHelper:v8 networkMonitor:v20 connectionRetryManager:v9 connectionOffloader:v13 delegate:v21];

  return v18;
}

- (APSCourierConnectionManager)initWithEnvironment:(id)a3 courierConnection:(id)a4 carrierBundleHelper:(id)a5 networkMonitor:(id)a6 connectionRetryManager:(id)a7 connectionOffloader:(id)a8 delegate:(id)a9
{
  v52 = a3;
  v51 = a4;
  v50 = a5;
  v49 = a6;
  v48 = a7;
  v16 = a8;
  v17 = a9;
  v53.receiver = self;
  v53.super_class = APSCourierConnectionManager;
  v18 = [(APSCourierConnectionManager *)&v53 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_environment, a3);
    objc_storeStrong(&v19->_delegate, a9);
    objc_storeStrong(&v19->_carrierBundleHelper, a5);
    v20 = objc_alloc_init(APSServerTimeTracker);
    serverTimeTracker = v19->_serverTimeTracker;
    v19->_serverTimeTracker = v20;

    objc_storeStrong(&v19->_networkMonitor, a6);
    [(APSNetworkMonitor *)v19->_networkMonitor setDelegate:v19];
    objc_storeStrong(&v19->_connectionRetryManager, a7);
    objc_storeStrong(&v19->_connectionOffloader, a8);
    [(APSConnectionOffloading *)v19->_connectionOffloader setOffloadDelegate:v19];
    [(APSConnectionOffloading *)v19->_connectionOffloader setMetricDelegate:v17];
    v22 = +[NSMutableArray array];
    offloadInfo = v19->_offloadInfo;
    v19->_offloadInfo = v22;

    v24 = [(APSCourierConnectionManager *)v19 pcInterfaceMonitorNonCellular];
    [v24 addDelegate:v19 queue:&_dispatch_main_q];

    v25 = [(APSCourierConnectionManager *)v19 pcInterfaceMonitorWWAN];
    [v25 addDelegate:v19 queue:&_dispatch_main_q];

    objc_storeStrong(&v19->_courierConnection, a4);
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
      v26 = [(APSCourierConnectionManager *)v19 copyOperatorName];
      v27 = +[APSLog courier];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v26;
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
    v33 = [(APSEnvironment *)v19->_environment domain];
    v34 = [NSString stringWithFormat:@"%@-wakeconnection-%@", v32, v33];

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

- (void)markInitiallyConnectedOnInterface:(int64_t)a3
{
  if (![(APSCourierConnection *)self->_courierConnection isConnectedOnInterface:?])
  {
    [(APSCourierConnectionManager *)self _clearConnectionEstablishTimerOnInterface:a3];
    v5 = [(APSCourierConnectionManager *)self connectionRetryManager];
    [v5 noteConnectionEstablished];

    v6 = [(APSCourierConnectionManager *)self connectionRetryManager];
    [v6 notePresenceSuccess];

    v7 = [(APSCourierConnection *)self->_courierConnection serverIPAddressForInterface:a3];
    if (self->_lastIPCachingTTLSeconds > 0.0)
    {
      v8 = [(APSCourierConnection *)self->_courierConnection usingCachedIPAddressOnInterface:a3];

      if (!v8)
      {
        [(APSCourierConnectionManager *)self _cacheIPAddress:v7 onInterface:a3];
      }
    }

    [(APSCourierConnection *)self->_courierConnection setUsingCachedIPAddress:0 onInterface:a3];
    [(APSCourierConnection *)self->_courierConnection setIsConnecting:0 onInterface:a3];
    [(APSCourierConnection *)self->_courierConnection setIsConnected:1 onInterface:a3];
    if ([(APSCourierConnection *)self->_courierConnection countConnectedInterfaces]>= 2)
    {
      [(APSNetworkMonitor *)self->_networkMonitor openedSecondChannel];
    }

    self->_cmaType = 0;
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for PushConnectionConnected", buf, 0xCu);
    }

    v10 = [(APSCourierConnectionManager *)self courierConnection];
    v11 = [v10 objectForKey:@"startedOpeningStream" onInterface:a3];
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

    v18 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:a3]];
    v19 = [APSMetricLogger dualChannelStateFrom:self->_courierConnection isPiggyBacking:[(APSNetworkMonitor *)self->_networkMonitor isPiggybacking]];
    v20 = [NSNumber numberWithDouble:v17];
    v21 = [(APSCourierConnectionManager *)self dnsResolutionTimeMillisecondsOnInterface:a3];
    v22 = [(APSCourierConnectionManager *)self tlsHandshakeTimeMillisecondsOnInterface:a3];
    [APSMetricLogger connectionConnectedWithDuration:v20 interface:a3 linkQuality:v18 dualChannelState:v19 dnsResolutionTimeMilliseconds:v21 tlsHandshakeTimeMilliseconds:v22];

    [(APSCourierConnectionManager *)self clearDNSResolutionAndTLSHandshakeOnInterface:a3];
    v23 = [(APSCourierConnectionManager *)self courierConnection];
    [v23 setObject:0 forKey:@"startedOpeningStream" onInterface:a3];

    v24 = [(APSCourierConnectionManager *)self courierConnection];
    v25 = +[NSDate date];
    [v24 setObject:v25 forKey:@"connectionEstablished" onInterface:a3];

    v26 = +[APSLog courier];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = self;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@: AWD PushConnectionConnected finished", buf, 0xCu);
    }
  }
}

- (BOOL)_adjustConnectionWithInterfacePreference:(int64_t)a3
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    v7 = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
    v8 = [v7 currentLinkQualityString];
    v17 = 138412802;
    v18 = self;
    v19 = 2048;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "APSUserCourier %@ adjusting connection. Connected on %lu interfaces. Current link quality: %@", &v17, 0x20u);
  }

  if ([(APSCourierConnectionManager *)self shouldUseInternet])
  {
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000067F8(a3);
      v17 = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ calling _connectStream with interface preference %@", &v17, 0x16u);
    }

    if (a3 == 3 && [(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
    {
      v11 = +[APSLog courier];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = self;
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
          v18 = self;
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
          v18 = self;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ _connectStream - kicking NonCellular for dual channel", &v17, 0xCu);
        }

        v12 |= [(APSCourierConnectionManager *)self _connectStreamWithInterfacePreference:1];
      }
    }

    else
    {
      v12 = [(APSCourierConnectionManager *)self _connectStreamWithInterfacePreference:a3];
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
        v18 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Disconnecting from courier as there are no more connections with enabled topics, we have been disabled, or we are in push proxy mode.", &v17, 0xCu);
      }
    }

    [(APSCourierConnection *)self->_courierConnection stopManagers];
    [(APSCourierConnectionManager *)self _disconnectAllStreamsWithReason:2];
    v12 = 0;
  }

  return v12 & 1;
}

- (void)_handleConnectionFailureOnInterface:(int64_t)a3 forceDelayedReconnect:(BOOL)a4 withReason:(unsigned int)a5 error:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = [(APSCourierConnectionManager *)self courierConnection];
  v12 = [v11 isConnectionOffloadedOnInterface:a3];

  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_10009DBD0;
  v75[3] = &unk_100188A10;
  v75[4] = self;
  v77 = a3;
  v78 = a5;
  v72 = v10;
  v76 = v72;
  [(APSCourierConnectionManager *)self _invokeInFailureHandlingContext:v75];
  v13 = [(APSCourierConnectionManager *)self connectionRetryManager];
  [v13 noteConnectionAttemptFailed];

  if ([(APSCourierConnection *)self->_courierConnection isConnectingOnInterface:a3])
  {
    v14 = [(APSCourierConnection *)self->_courierConnection usingCachedIPAddressOnInterface:a3];

    if (v14)
    {
      [(APSCourierConnectionManager *)self _cacheIPAddress:0 onInterface:a3];
    }

    else
    {
      [(APSCourierConnectionManager *)self _useCachedLastIPIfPossible:a3];
    }

    [(APSCourierConnection *)self->_courierConnection setIsConnecting:0 onInterface:a3];
  }

  if (self->_consecutiveConnectionFailureCount)
  {
    v15 = [(APSCourierConnectionManager *)self isCellularWatch];
    if (a3 == 1 && v15)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"APSDDetectedUnusableWiFi", 0, 0, 1u);
      v17 = +[APSLog courier];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = self;
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

    [(APSSymptomReporter *)symptomReporter reportConnectionFailureOnConnectionType:a3 != 0];
    v21 = self->_consecutiveConnectionFailureCount + 1;
  }

  else
  {
    v21 = 1;
  }

  self->_consecutiveConnectionFailureCount = v21;
  [(APSCourierConnection *)self->_courierConnection setObject:0 forKey:@"connectionEstablished" onInterface:a3];
  v22 = [(APSCourierConnection *)self->_courierConnection isConnected];
  v23 = +[APSLog courier];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = sub_1000067F8(a3);
    v70 = v7;
    v71 = v12;
    consecutiveConnectionFailureCount = self->_consecutiveConnectionFailureCount;
    v69 = a3;
    v25 = @"YES";
    if (v22)
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
    v30 = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    *buf = 138414338;
    v80 = self;
    v81 = 2112;
    v82 = *&v24;
    v83 = 2048;
    v84 = consecutiveConnectionFailureCount;
    v85 = 2112;
    v86 = v26;
    a3 = v69;
    v87 = 2112;
    v88 = v27;
    v89 = 2112;
    v90 = v28;
    v91 = 2112;
    v92 = v25;
    v93 = 2048;
    v94 = cmaType;
    v7 = v70;
    v12 = v71;
    v95 = 2048;
    v96 = v30;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Disconnected in response to connection failure on interface %@. (Consecutive failures: %lu) isConnected %@ onInterface %@  shouldUseDualChannel %@ criticalReliability %@ cmaType %lu. Connected on %lu interfaces.", buf, 0x5Cu);
  }

  v31 = a3;
  if ([(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
  {
LABEL_27:
    if (a3 == 1)
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

    v35 = [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
    v36 = [v35 isInterfaceUsable];

    if ((v36 & 1) == 0)
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

    if ([(APSCourierConnection *)self->_courierConnection shouldClientScheduleReconnectDueToFailureOnInterface:a3])
    {
      v40 = self->_cmaType == 2;
      if (!v7)
      {
        goto LABEL_48;
      }

LABEL_45:
      v41 = +[APSLog courier];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = self;
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
            v46 = [(APSCourierConnectionManager *)self connectionRetryManager];
            [v46 currentDelay];
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
          v80 = self;
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
          [(APSCourierConnection *)self->_courierConnection resumeManagerWithAction:1 onInterface:a3];
          [(APSCourierConnection *)self->_courierConnection stopManagerOnInterface:a3];
        }
      }

      else
      {
        v57 = [(APSCourierConnectionManager *)self delegate];
        v58 = [v57 courierConnectionManagerClientsHaveEagerMessages];

        if (!v58)
        {
          if ([(APSCourierConnectionManager *)self shouldUseInternet])
          {
            [(APSCourierConnection *)self->_courierConnection resumeManagerWithAction:5 onInterface:v31];
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
          v80 = self;
          v81 = 2048;
          v82 = v63;
          v54 = "%@ has pending messages but it hasn't been long enough since the last connection attempt. Scheduling retry in %f";
          v55 = v52;
          v56 = 22;
LABEL_57:
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
LABEL_58:

LABEL_80:
          [(APSCourierConnectionManager *)self protocolConnectionForInterface:a3];
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
          v80 = self;
          v81 = 2048;
          v82 = v60;
          v83 = 2048;
          v84 = 0x403D000000000000;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%@ has eager messages and it's been %f > %f, trying to reconnect now.", buf, 0x20u);
        }
      }

      if ([(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:v31])
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

LABEL_44:
    v40 = 1;
    if (!v7)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (v22)
  {
    v38 = +[APSLog courier];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v80 = self;
      v39 = "%@: We are still connected on another interface. No need to retry/schedule a retry.";
LABEL_65:
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
    }
  }

  else
  {
    if (![(APSCourierConnection *)self->_courierConnection hasOpenConnection])
    {
      v31 = [(APSCourierConnection *)self->_courierConnection nextConnectionAttemptInterface];
      if (self->_consecutiveConnectionFailureCount == 1 && [(APSCourierConnectionManager *)self _isWiFiLinkQualityBetter])
      {
        v31 = 1;
      }

      goto LABEL_27;
    }

    v38 = +[APSLog courier];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v80 = self;
      v39 = "%@: We have an open connection attempt on another interface. No need to retry/schedule a retry.";
      goto LABEL_65;
    }
  }

  [(APSCourierConnection *)self->_courierConnection stopManagerOnInterface:a3];
LABEL_81:
}

- (void)_delayedReconnectTimerFired
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
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
    v6 = self;
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: _pendingMessageReconnectTimerFired!", &v5, 0xCu);
  }

  [(PCPersistentTimer *)self->_pendingMessageReconnectTimer invalidate];
  pendingMessageReconnectTimer = self->_pendingMessageReconnectTimer;
  self->_pendingMessageReconnectTimer = 0;

  [(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:[(APSCourierConnection *)self->_courierConnection nextConnectionAttemptInterface]];
}

- (void)_cacheIPAddress:(id)a3 onInterface:(int64_t)a4
{
  v6 = a3;
  v7 = +[APSLog courier];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000067F8(a4);
    *buf = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v6;
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
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (!v6)
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
    v15 = [v13 initWithObjectsAndKeys:{v14, @"date", v6, @"ip", 0}];

    v16 = [(APSEnvironment *)self->_environment name];
    [v12 setObject:v15 forKey:v16];

    goto LABEL_14;
  }

LABEL_12:
  if (v6)
  {
    goto LABEL_13;
  }

  v15 = [(APSEnvironment *)self->_environment name];
  [v12 removeObjectForKey:v15];
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
  [(APSCourierConnection *)self->_courierConnection setUsingCachedIPAddress:0 onInterface:a4];
}

- (void)_useCachedLastIPIfPossible:(int64_t)a3
{
  if (self->_lastIPCachingTTLSeconds > 0.0)
  {
    v5 = sub_100004328(APSCachedIPKey, 0);
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [(APSEnvironment *)self->_environment name];
        v7 = [v5 objectForKey:v6];

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
            [(APSCourierConnection *)self->_courierConnection setUsingCachedIPAddress:v8 onInterface:a3];
            v13 = +[APSLog courier];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = sub_1000067F8(a3);
              v15 = 138413314;
              v16 = self;
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

- (BOOL)_connectStreamWithInterfacePreference:(int64_t)a3
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000067F8([(APSCourierConnection *)self->_courierConnection preferredInterface]);
    consecutiveConnectionFailureCount = self->_consecutiveConnectionFailureCount;
    v8 = sub_1000067F8(a3);
    if ([(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    *buf = 138413570;
    v115 = self;
    v116 = 2112;
    v117 = v6;
    v118 = 2048;
    v119 = consecutiveConnectionFailureCount;
    v120 = 2112;
    v121 = v8;
    v122 = 2112;
    v123 = v9;
    v124 = 2048;
    v125 = v10;
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
      v115 = v29;
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
    v115 = self;
    v116 = 2112;
    v117 = delayedReconnectTimer;
    v13 = "%@: Not connecting. {delayedReconnectTimer:%@}";
    goto LABEL_11;
  }

  v16 = +[NSDate date];
  lastConnectionAttempt = self->_lastConnectionAttempt;
  self->_lastConnectionAttempt = v16;

  v18 = [(APSCourierConnectionManager *)self delegate];
  v19 = [v18 courierConnectionManagerClientsWillBeAbleToConnect];

  if (!v19)
  {
    v30 = +[APSLog courier];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10010C690(v30);
    }

    [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:3 forceDelayedReconnect:1 withReason:14];
    return 0;
  }

  v20 = [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
  v21 = [v20 isInterfaceUsable];

  v22 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  v23 = [v22 interfaceConstraint];

  if ((_os_feature_enabled_impl() & v21 & (v23 == 1)) != 0)
  {
    v24 = 1;
  }

  else
  {
    v24 = a3;
  }

  if (![(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
  {
    v32 = [(APSCourierConnection *)self->_courierConnection hasOpenConnection];
    if (v24 == 3)
    {
      if (v32)
      {
        v11 = +[APSLog courier];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v33 = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
        *buf = 138412546;
        v115 = self;
        v116 = 2048;
        v117 = v33;
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

  if ([(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:v24])
  {
    v11 = +[APSLog courier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v25 = sub_1000067F8(v24);
      courierConnection = self->_courierConnection;
      *buf = 138412802;
      v115 = self;
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
      if (v24 == 3)
      {
        if (v34)
        {
          v11 = +[APSLog courier];
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          *buf = 138412290;
          v115 = self;
          v13 = "%@ _connectStream - should use dual channel, no preference specified and we are already connected on both channels.";
          goto LABEL_101;
        }
      }
    }
  }

  v35 = v21 ^ 1;
  v36 = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
  v37 = [v36 isWWANInterfaceUp];

  v38 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  v39 = [v38 isInterfaceUsable] & v37;

  if (_os_feature_enabled_impl())
  {
    if (((v23 != 1) & v39) == 0 && ((v23 == 1) & v39 & v35) == 0)
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
  if (v21 && ![(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:1])
  {
    v41 = 1;
  }

  v42 = [(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode];
  v43 = [(APSCourierConnection *)self->_courierConnection hasOpenConnection];
  if ((v42 & 1) == 0)
  {
    v48 = v43 ^ 1;
    if (v24)
    {
      v48 = 1;
    }

    if (v48 & 1) != 0 || (-[APSCourierConnectionManager pcInterfaceMonitorWWAN](self, "pcInterfaceMonitorWWAN"), v49 = objc_claimAutoreleasedReturnValue(), v50 = [v49 isInterfaceHistoricallyUsable] & v37, v49, (v50))
    {
      if ((v24 != 1) | ![(APSCourierConnection *)self->_courierConnection hasOpenConnection]| v21 & 1)
      {
        goto LABEL_65;
      }

      v11 = +[APSLog courier];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v115 = self;
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
      v115 = self;
      v13 = "%@ _connectStream - want wwan but it is not historically usable, nothing to do";
    }

LABEL_101:
    v14 = v11;
    v15 = 12;
    goto LABEL_12;
  }

  if (((v41 | v43 ^ 1) & 1) == 0)
  {
    v44 = +[APSLog courier];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
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

      v115 = self;
      v117 = v45;
      v118 = 2112;
      if (v21)
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
      v115 = self;
      v116 = 2112;
      v117 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@ _connectStream - we want to connect but no closed interfaces are usable, scheduling a reconnect. %@", buf, 0x16u);
    }

    if (v24 == 3)
    {
      if (![(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:1])
      {
        v60 = +[APSLog courier];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = sub_1000067F8(1uLL);
          *buf = 138412546;
          v115 = self;
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
        v115 = self;
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
        v68 = sub_1000067F8(v24);
        *buf = 138412546;
        v115 = self;
        v116 = 2112;
        v117 = v68;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%@ scheduled on %@", buf, 0x16u);
      }

      v64 = self->_courierConnection;
      v65 = v24;
    }

    goto LABEL_174;
  }

  v51 = v40;
  if (![(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
  {
    if (v24 != 3)
    {
      [(APSCourierConnectionManager *)self _disconnectStreamForInterface:v24 withReason:4];
    }

    v52 = [(APSCourierConnection *)self->_courierConnection connectingInterface];
    if (v52 != 3)
    {
      v53 = v52;
      v54 = +[APSLog courier];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = sub_1000067F8(v53);
        *buf = 138412546;
        v115 = self;
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
        v57 = 3;
      }

      else
      {
        v57 = 0;
      }

      if ((v56 & v21 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (!v21)
    {
      v57 = 3;
LABEL_110:
      if (v24 == 3 || [(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:v24])
      {
        goto LABEL_112;
      }

      if (v24 == 1)
      {
        v69 = v21;
      }

      else
      {
        v69 = 0;
      }

      if (v69)
      {
LABEL_121:
        v57 = 1;
        goto LABEL_134;
      }

      if (v24)
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
        if (v57 == 3)
        {
          v66 = +[APSLog courier];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
          {
            sub_10010C744();
          }

          v57 = 3;
LABEL_116:

          goto LABEL_134;
        }

        goto LABEL_134;
      }

LABEL_133:
      v57 = 0;
      goto LABEL_134;
    }

    if ([(APSCourierConnection *)self->_courierConnection hasOpenConnectionOnInterface:1])
    {
      v57 = 3;
    }

    else
    {
      v57 = 1;
    }

    goto LABEL_110;
  }

  if (((v51 ^ 1 | v21) & 1) == 0)
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

    v57 = 0;
    goto LABEL_116;
  }

  v57 = v24;
  if (v24 == 3)
  {
    v70 = [(APSCourierConnection *)self->_courierConnection nextConnectionAttemptInterface];
    if (!self->_consecutiveConnectionFailureCount || (v57 = v70, v70 == 3))
    {
      v57 = [(APSCourierConnectionManager *)self _isWiFiLinkQualityBetter];
      v66 = +[APSLog courier];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v71 = @"NO";
        if (v57)
        {
          v71 = @"YES";
        }

        *buf = 138412546;
        v115 = self;
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
      v115 = self;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%@: _connectStream - We have no connections, stopping the connectionManager on all interfaces", buf, 0xCu);
    }

    [(APSCourierConnection *)self->_courierConnection stopManagerOnInterface:3];
  }

  v74 = +[APSLog courier];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v75 = sub_1000067F8(v57);
    *buf = 138412546;
    v115 = self;
    v116 = 2112;
    v117 = v75;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%@ _connectStream - Stopping the connectionManager on our attemptInterface %@", buf, 0x16u);
  }

  [(APSCourierConnection *)self->_courierConnection stopManagerOnInterface:v57];
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

    if (v21)
    {
      v78 = @"YES";
    }

    else
    {
      v78 = @"NO";
    }

    v79 = sub_1000067F8(v57);
    *buf = 138413058;
    v115 = self;
    v116 = 2112;
    v117 = v77;
    v118 = 2112;
    v119 = v78;
    v120 = 2112;
    v121 = v79;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%@: isWWANUsable %@  isWiFiUsable %@ onInterface %@", buf, 0x2Au);
  }

  if (v57 == 1)
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
    v82 = [(APSCourierConnection *)self->_courierConnection usingCachedIPAddressOnInterface:v57];
    if (v82)
    {
    }

    else
    {
      v83 = [(APSCourierConnection *)self->_courierConnection redirectHost];

      if (!v83)
      {
        v84 = +[APSLog courier];
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v85 = self->_courierConnection;
          v86 = sub_1000067F8(v57);
          *buf = 138412546;
          v115 = v85;
          v116 = 2112;
          v117 = v86;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%@ device selected to connect using cached ip if possible on %@", buf, 0x16u);
        }

        [(APSCourierConnectionManager *)self _useCachedLastIPIfPossible:v57];
      }
    }
  }

  if (![(APSCourierConnection *)self->_courierConnection shouldConnectOnInterface:v57])
  {
    v96 = +[APSLog courier];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      v97 = sub_1000067F8(v57);
      *buf = 138412546;
      v115 = self;
      v116 = 2112;
      v117 = v97;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%@ device should not connect on interface %@", buf, 0x16u);
    }

    v64 = self->_courierConnection;
    v65 = v57;
LABEL_174:
    [(APSCourierConnection *)v64 resumeManagerWithAction:5 onInterface:v65];
    return 0;
  }

  if (v57)
  {
    v87 = 0;
  }

  else
  {
    v87 = v23 == 1;
  }

  v88 = v87;
  v89 = [(APSCourierConnectionManager *)self _usableOffloadInfo:v57];
  v90 = [(APSCourierConnectionManager *)self environment];
  v91 = [v90 name];
  v92 = [v91 isEqualToString:APSEnvironmentProduction];

  if (v92)
  {
    v93 = +[APSOffloadHeuristics shared];
    v94 = v93;
    if (!v89)
    {
      [v93 directConnectionAttemptedOnInterface:v57];

      v95 = &fputc_ptr;
      goto LABEL_178;
    }

    [v93 offloadConnectionAttemptedOnInterface:v57];

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
  [(APSCourierConnection *)self->_courierConnection connectToEnvironment:self->_environment onInterface:v57 allowedInterfaceConstraint:v88 useAlternatePort:v81 keepAliveProxyMode:0 offloadInfo:v89];
  v99 = +[APSLog courier];
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
  {
    v100 = sub_1000067F8(v57);
    v101 = [(APSEnvironment *)self->_environment name];
    *buf = 138412546;
    v115 = v100;
    v116 = 2112;
    v117 = v101;
    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "Opening stream onInterface: %@, %@", buf, 0x16u);
  }

  v102 = +[APSLog courier];
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    v103 = [(APSEnvironment *)self->_environment configurationURL];
    environment = self->_environment;
    if (v81)
    {
      v105 = [(APSEnvironment *)environment alternatePort];
    }

    else
    {
      v105 = [(APSEnvironment *)environment port];
    }

    *buf = 138412802;
    v115 = self;
    v116 = 2112;
    v117 = v103;
    v118 = 2048;
    v119 = v105;
    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%@: Connecting courier stream using configuration bag at %@ and port TCP %lu", buf, 0x20u);
  }

  v106 = self->_courierConnection;
  v107 = [v95[474] date];
  [(APSCourierConnection *)v106 setObject:v107 forKey:@"startedOpeningStream" onInterface:v57];

  [(APSCourierConnectionManager *)self _startConnectionEstablishTimerOnInterface:v57];
  v108 = [(APSCourierConnectionManager *)self connectionRetryManager];
  [v108 noteConnectionAttemptStart];

  if (v57)
  {
    v109 = @"wifi";
  }

  else
  {
    v109 = @"wwan";
  }

  v110 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:v57, @"Interface", @"LinkQuality", v109]];
  v113[1] = v110;
  v111 = [NSDictionary dictionaryWithObjects:v113 forKeys:&v112 count:2];

  APSPowerLog();
  return 1;
}

- (void)_stopOffloadingToAOP
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(APSCourierConnectionManager *)self connectionOffloader];
    [v3 stopOffloading];

    v4 = [(APSCourierConnectionManager *)self courierConnection];
    v5 = [(APSCourierConnectionManager *)self environment];
    [v4 resetKeepAliveStateMachineOnInterface:0 forEnvironment:v5];

    [(APSCourierConnectionManager *)self disconnectAllStreamsWithReason:28];
  }
}

- (BOOL)_deviceCanOffloadPresenceResponse:(id)a3 interface:(int64_t)a4
{
  v6 = [a3 objectForKey:@"APSProtocolConnectedResponse"];
  v7 = [v6 intValue];

  v8 = [(APSCourierConnectionManager *)self environment];
  v9 = [(APSCourierConnectionManager *)self _shouldOffloadToAOP:a4 environment:v8];

  return v9 && [(APSCourierConnectionManager *)self _hasUsableOffloadInfo:a4]&& !v7;
}

- (BOOL)_hasUsableOffloadInfo:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self _usableOffloadInfo:a3];
  if (v4)
  {
    v5 = [(APSCourierConnectionManager *)self offloadInfo];
    [v5 insertObject:v4 atIndex:0];
  }

  return v4 != 0;
}

- (id)_usableOffloadInfo:(int64_t)a3
{
  v5 = [(APSCourierConnectionManager *)self environment];
  LODWORD(a3) = [(APSCourierConnectionManager *)self _shouldOffloadToAOP:a3 environment:v5];

  if (!a3)
  {
    goto LABEL_4;
  }

  v6 = [(APSCourierConnectionManager *)self _shouldPerformFullHandshake];
  v7 = [(APSCourierConnectionManager *)self offloadInfo];
  v8 = v7;
  if (v6)
  {
    [v7 removeAllObjects];

    [(APSCourierConnectionManager *)self _noteFullTCPHandshake];
LABEL_4:
    v9 = 0;
    goto LABEL_18;
  }

  v10 = [v7 copy];

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
          v22 = [(APSCourierConnectionManager *)self offloadInfo];
          [v22 removeObject:v21];

          v20 = v21;
          v9 = v20;
          goto LABEL_17;
        }

        v18 = +[APSLog courier];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v24;
          v30 = self;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: Offload is expired, skipping.", buf, 0xCu);
        }

        v19 = [(APSCourierConnectionManager *)self offloadInfo];
        [v19 removeObject:v17];
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

- (unint64_t)numberOfPSKsToRequestOnInterface:(int64_t)a3
{
  v5 = [(APSCourierConnectionManager *)self environment];
  v6 = [(APSCourierConnectionManager *)self _shouldOffloadToAOP:a3 environment:v5];

  if (!v6 || [(APSCourierConnectionManager *)self isDelayingPSKRequests])
  {
    return 0;
  }

  v8 = [(APSCourierConnectionManager *)self environment];
  v9 = [APSConfiguration configurationForEnvironment:v8 connectionType:a3];
  v10 = [v9 offloadInfoCacheSize];
  v11 = v10;
  v12 = &off_100197A88;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [v13 unsignedIntValue];
  v15 = [(APSCourierConnectionManager *)self offloadInfo];
  v7 = v14 - [v15 count];

  v16 = +[APSLog courier];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(APSCourierConnectionManager *)self offloadInfo];
    v19 = 138412802;
    v20 = self;
    v21 = 2048;
    v22 = [v17 count];
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

- (BOOL)_shouldOffloadToAOP:(int64_t)a3 environment:(id)a4
{
  v6 = a4;
  v7 = sub_100004328(APSForceAOPConnnection, 1);
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Offloading forced by defaults.", buf, 0xCu);
    }

    v10 = 1;
    goto LABEL_24;
  }

  if (![v6 environmentType])
  {
    v11 = [APSConfiguration configurationForEnvironment:v6 connectionType:a3];
    v9 = [v11 shouldOffloadToAOP];

    if (([v9 BOOLValue]& 1) != 0)
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
            v26 = self;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: Offload disabled by carrier bundle.", buf, 0xCu);
          }
        }

        else
        {
          v19 = +[APSOffloadHeuristics shared];
          v20 = [v19 canOffloadOnInterface:a3];

          v21 = +[APSLog courier];
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            if (v22)
            {
              v23 = @"NO";
              if (!a3)
              {
                v23 = @"YES";
              }

              *buf = 138412546;
              v26 = self;
              v27 = 2112;
              v28 = v23;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: Can offload? %@", buf, 0x16u);
            }

            v10 = a3 == 0;
            goto LABEL_23;
          }

          if (v22)
          {
            *buf = 138412290;
            v26 = self;
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
      v26 = self;
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
      v26 = self;
      v17 = "%@: Offload disabled by APNS bag.";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
    goto LABEL_22;
  }

  v10 = 0;
LABEL_25:

  return v10;
}

- (void)_handlePSKVendingStatus:(unint64_t)a3 onConnectionType:(int64_t)a4
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

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v9 = +[APSLog courier];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "The server has rate limited us.  Disabling PSK vending for a while.", buf, 2u);
      }

      [(APSCourierConnectionManager *)self setIsDelayingPSKRequests:1];
      v10 = [(APSCourierConnectionManager *)self environment];
      v11 = [APSConfiguration configurationForEnvironment:v10 connectionType:a4];
      v12 = [v11 pskRateLimitDelayInSeconds];

      if (v12)
      {
        v7 = v12;
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

    if (a3 == 4)
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
    if (a3 == 1)
    {
      v7 = +[APSLog courier];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_10010C838();
      }

      goto LABEL_4;
    }

    if (a3 == 2)
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

- (void)_startConnectionEstablishTimerOnInterface:(int64_t)a3
{
  [(APSCourierConnectionManager *)self _clearConnectionEstablishTimerOnInterface:?];
  courierConnection = self->_courierConnection;

  [(APSCourierConnection *)courierConnection startConnectionEstablishTimerOnInterface:a3];
}

- (void)_startFilterMessageTimerOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    [(APSCourierConnectionManager *)self _clearFilterMessageTimerOnInterface:?];
    filterMessageTimeout = self->_filterMessageTimeout;
    v10 = [NSNumber numberWithInteger:a3];
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_filterMessageTimeoutTimerFired:" selector:v10 userInfo:0 repeats:filterMessageTimeout];
    v8 = &self->super.isa + a3;
    v9 = v8[18];
    v8[18] = v7;
  }
}

- (void)_clearFilterMessageTimerOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    filterMessageTimer = self->_filterMessageTimer;
    v5 = self->_filterMessageTimer[a3];
    if (v5)
    {
      [(NSTimer *)v5 invalidate];
      v6 = filterMessageTimer[a3];
      filterMessageTimer[a3] = 0;
    }
  }
}

- (void)_filterMessageTimeoutTimerFired:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 integerValue];

  [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:v5 forceDelayedReconnect:0 withReason:22];
}

- (NSString)ifname
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 ifname];

  return v3;
}

- (id)pcInterfaceMonitorOnInterface:(int64_t)a3
{
  if (!a3)
  {
    v5 = 1;
LABEL_5:
    v6 = [PCInterfaceMonitor sharedInstanceForIdentifier:v5, v3];

    return v6;
  }

  if (a3 == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (BOOL)_isWiFiLinkQualityBetter
{
  v3 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  if ([v3 isPoorLinkQuality])
  {
    v4 = [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
    if ([v4 isPoorLinkQuality])
    {
      v5 = 0;
    }

    else
    {
      v6 = [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
      if ([v6 isInternetReachable])
      {
        v7 = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
        v5 = [v7 isWakeOnWiFiSupported];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)_linkQualityForInterface:(int64_t)a3
{
  if (a3 == 1)
  {
    [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
  }

  else
  {
    [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  }
  v3 = ;
  v4 = [v3 linkQuality];

  return v4;
}

- (BOOL)_useShortKeepAliveInterval
{
  if (qword_1001BF8A8 != -1)
  {
    sub_10010C8B8();
  }

  return byte_1001BF8A0;
}

- (unsigned)_keepAliveVersionForInterface:(int64_t)a3
{
  if ([(APSCourierConnection *)self->_courierConnection keepAliveV2SupportedOnInterface:a3])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)useServerKeepAliveStatsOnInterface:(int64_t)a3
{
  if (a3)
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

- (BOOL)_isInternetReachableOnInterface:(int64_t)a3
{
  if (a3 > 1)
  {
    return 0;
  }

  v10 = v3;
  if (a3 == 1)
  {
    [(APSCourierConnectionManager *)self pcInterfaceMonitorNonCellular];
  }

  else
  {
    [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  }
  v8 = ;
  v9 = [v8 isInternetReachable];

  return v9;
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

- (void)clearDNSResolutionAndTLSHandshakeOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    v7 = &self->super.isa + a3;
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
      v6 = sub_1000067F8(a3);
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to clear dnsResolutionTimeMilliseconds on invalid interface %@", &v10, 0x16u);
    }
  }
}

- (NSString)currentLinkQualityString
{
  v2 = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
  v3 = [v2 currentLinkQualityString];

  return v3;
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

- (void)clearProtocolConnectionForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v3 = &self->super.isa + a3;
    v4 = v3[12];
    v3[12] = 0;
  }
}

- (id)protocolConnectionForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v4 = self->_protocolConnections[a3];
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

- (void)courierConnection:(id)a3 connectionManager:(id)a4 handleEvent:(int)a5 context:(id)a6 onInterface:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (a5 > 6)
  {
    if (a5 == 7)
    {
      v25 = +[APSLog courier];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = self;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: Persistent interface went up", buf, 0xCu);
      }
    }

    else if (a5 != 8)
    {
      goto LABEL_85;
    }

    v26 = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
    v27 = +[APSLog courier];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = "inactive";
      if (a5 == 7)
      {
        v28 = "active";
      }

      v60 = v28;
      sub_1000067F8(a7);
      v29 = v63 = v13;
      courierConnection = self->_courierConnection;
      v61 = v12;
      v62 = v14;
      v31 = @"YES";
      if ([(APSCourierConnection *)courierConnection hasConnectionEstablishTimerOnInterface:a7])
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v59 = v32;
      if ([v26 isInternetReachable])
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

      v34 = sub_1000067F8(a7);
      *buf = 138414082;
      v65 = self;
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
      v12 = v61;
      v14 = v62;
      v76 = 2112;
      v77 = v34;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@: Persistent interface went %s. onInterface: %@ conn %@ connectTimer %@ reachable? %@ shouldUseDualChannel? %@  onInterface: %@", buf, 0x52u);

      v13 = v63;
    }

    v35 = 0;
    if (a7 || !self->_remainsConnectedWhenWWANSuspends)
    {
LABEL_62:
      v46 = [(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode];
      v47 = self->_courierConnection;
      if (v46)
      {
        if ([(APSCourierConnection *)v47 hasOpenConnectionOnInterface:a7]|| ![(APSCourierConnectionManager *)self _isInternetReachableOnInterface:a7])
        {
          goto LABEL_84;
        }

        v48 = self;
        v49 = a7;
      }

      else
      {
        if (!-[APSCourierConnection hasOpenConnection](v47, "hasOpenConnection") && [v26 isInternetReachable])
        {
          v50 = +[APSLog courier];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = self;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%@: Reconnecting because of an interface change while disconnected.", buf, 0xCu);
          }

          [(APSCourierConnectionManager *)self _adjustConnection];
          goto LABEL_84;
        }

        if (!-[APSCourierConnection hasOpenConnectionOnInterface:](self->_courierConnection, "hasOpenConnectionOnInterface:", 0) || ((v35 | [v26 isWWANInterfaceUp]) & 1) != 0)
        {
LABEL_84:

          goto LABEL_85;
        }

        v51 = +[APSLog courier];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = self;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%@: WWAN interface went down. Attempting to switch to WiFi.", buf, 0xCu);
        }

        v48 = self;
        v49 = 1;
      }

      [(APSCourierConnectionManager *)v48 _adjustConnectionWithInterfacePreference:v49];
      goto LABEL_84;
    }

    v36 = [v26 isWWANInterfaceUp];
    if (a5 == 8)
    {
      if ((v36 & 1) == 0 && [v26 isWWANInterfaceSuspended])
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

      if (([v26 isWWANInterfaceUp] & 1) == 0 && (objc_msgSend(v26, "isWWANInterfaceSuspended") & 1) == 0)
      {
        if (![v26 hasWWANStatusIndicator] || (-[APSCourierConnectionManager pcInterfaceMonitorWWAN](self, "pcInterfaceMonitorWWAN"), v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "isInterfaceUsable"), v55, !v56))
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

    else if (v36)
    {
      [(APSCourierConnectionManager *)self _handleConnectionRecoverFromSuspensionOnInterface:0];
    }

    v35 = 0;
    goto LABEL_62;
  }

  if ((a5 - 3) < 3)
  {
    v15 = +[APSLog courier];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_1000067F8(a7);
      *buf = 138412802;
      v65 = self;
      v66 = 1024;
      *v67 = a5;
      *&v67[4] = 2112;
      *&v67[6] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ handleEvent: %d onInterface %@", buf, 0x1Cu);
    }

    if ([(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
    {
      [(APSCourierConnectionManager *)self _disconnectStreamForInterface:a7 withReason:3];
      v17 = self;
      v18 = a7;
    }

    else
    {
      [(APSCourierConnectionManager *)self _disconnectAllStreamsWithReason:3];
      v18 = [(APSCourierConnection *)self->_courierConnection nextConnectionAttemptInterface];
      v17 = self;
    }

LABEL_21:
    [(APSCourierConnectionManager *)v17 _adjustConnectionWithInterfacePreference:v18];
    goto LABEL_85;
  }

  if (a5 == 2)
  {
    v19 = +[APSLog courier];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v12 keepAliveV2SupportedOnInterface:a7];
      v21 = @"NO";
      if (v20)
      {
        v21 = @"YES";
      }

      *buf = 138412546;
      v65 = self;
      v66 = 2112;
      *v67 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: received PCEventPushKeepAlive call back, keepAliveV2SupportedOnInterface: %@", buf, 0x16u);
    }

    if ([v12 keepAliveV2SupportedOnInterface:a7])
    {
      v22 = [v14 objectForKey:PCTimerFireEarlyToCoalesceKey];
      v23 = [v22 BOOLValue];

      if (v23)
      {
        v24 = +[APSLog courier];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v65 = self;
          v66 = 2112;
          *v67 = v13;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: PCEventPushKeepAlive callback is an early fire from %@", buf, 0x16u);
        }

        [(APSCourierConnectionManager *)self _performKeepAliveOnInterface:a7 shortInterval:0 withAction:2];
        goto LABEL_85;
      }

      [(APSCourierConnectionManager *)self _submitKeepAliveFailedAWDonInterface:a7];
      v52 = +[APSLog courier];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = self;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%@: AWD for KeepAliveFailed finished", buf, 0xCu);
      }

      v53 = +[APSLog courier];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = self;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for ConnectionDisconnected", buf, 0xCu);
      }

      v26 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:a7]];
      [APSMetricLogger connectionDisconnected:a7 linkQuality:v26 reason:15];
      v54 = +[APSLog courier];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = self;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%@: AWD for ConnectionDisconnected finished", buf, 0xCu);
      }

      [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:a7 forceDelayedReconnect:0 withReason:15];
      goto LABEL_84;
    }

    v38 = +[APSLog courier];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = sub_1000067F8(a7);
      v40 = [(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode];
      v41 = @"NO";
      *buf = 138412802;
      v65 = self;
      v66 = 2112;
      if (v40)
      {
        v41 = @"YES";
      }

      *v67 = v39;
      *&v67[8] = 2112;
      *&v67[10] = v41;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@: performing keepAlive for interface %@. Should use dual channel? %@", buf, 0x20u);
    }

    [(APSCourierConnectionManager *)self _performKeepAliveOnInterface:a7 shortInterval:0 withAction:2];
    if (![(APSNetworkMonitor *)self->_networkMonitor shouldUseDualMode])
    {
      v42 = [(APSCourierConnection *)self->_courierConnection preferredInterface];
      if (!v42)
      {
        if (![(APSCourierConnectionManager *)self _isWiFiLinkQualityBetter])
        {
          goto LABEL_85;
        }

        v57 = +[APSLog courier];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = self;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@: PCEventPushKeepAlive - we're connected over wwan but WiFi is better LQ. Attempting to switch to WiFi.", buf, 0xCu);
        }

        APSAlert();
        v17 = self;
        v18 = 1;
        goto LABEL_21;
      }

      if (v42 == 1)
      {
        v43 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
        if (([v43 isInterfaceHistoricallyUsable] & 1) == 0)
        {

          goto LABEL_85;
        }

        v44 = [(APSCourierConnectionManager *)self _isWiFiLinkQualityBetter];

        if ((v44 & 1) == 0)
        {
          v45 = +[APSLog courier];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = self;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%@: PCEventPushKeepAlive - we're connected over wifi and wwan is historically usable. Attempting to switch to WWAN.", buf, 0xCu);
          }

          APSAlert();
          v17 = self;
          v18 = 0;
          goto LABEL_21;
        }
      }
    }
  }

LABEL_85:
}

- (void)courierConnection:(id)a3 parserErrorMessage:(id)a4 OnInterface:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  symptomReporter = self->_symptomReporter;
  if (!symptomReporter)
  {
    v11 = objc_alloc_init(APSSymptomReporter);
    v12 = self->_symptomReporter;
    self->_symptomReporter = v11;

    symptomReporter = self->_symptomReporter;
  }

  [(APSSymptomReporter *)symptomReporter reportSymptomToAutoBugCapture:@"ParserError" subType:v9];
  v13 = +[APSLog courier];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = sub_1000067F8(a5);
    v15 = 138413058;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@: Encoding/decoding error occurred for %@ onInterface %@: %@", &v15, 0x2Au);
  }

  [(APSCourierConnectionManager *)self _disconnectStreamForInterface:a5 withReason:6];
  [(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:a5];
}

- (void)courierConnection:(id)a3 aboutToWriteDataOnConnectedInterface:(int64_t)a4
{
  if (a4 <= 1)
  {
    v9 = v4;
    v10 = v5;
    [(APSCourierConnectionManager *)self protocolConnectionForInterface:a4];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A2300;
    v8 = v7[3] = &unk_100188A38;
    v6 = v8;
    [v6 enumerateStateListeners:v7];
  }
}

- (void)courierConnection:(id)a3 errorOccured:(id)a4 disconnectReason:(unsigned int)a5 onInterface:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 tcpInfoDescription];
  v12 = +[APSLog networking];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v13 && v11 != 0)
  {
    v15 = +[APSLog networking];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10010C8CC();
    }
  }

  v16 = sub_1000882BC(v10);
  if (v16)
  {
    v17 = v16;
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"TLS Error Code=%ld %@", [v10 code], v16);

    ++self->_consecutiveTLSConnectionFailureCount;
  }

  else
  {
    v18 = 0;
  }

  v19 = +[APSLog courier];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = sub_1000067F8(a6);
    v21 = v20;
    *buf = 138413058;
    if (v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = v10;
    }

    v35 = self;
    v36 = 2112;
    v37 = v9;
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
    v35 = self;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for ConnectionDisconnected (withError)", buf, 0xCu);
  }

  +[APSMetricLogger connectionEncounteredSSLError:interface:](APSMetricLogger, "connectionEncounteredSSLError:interface:", +[APSMetricLogger sslErrorFromErrorCode:](APSMetricLogger, "sslErrorFromErrorCode:", [v10 code]), a6);
  v24 = +[APSLog courier];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = self;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: AWD for ConnectionDisconnected (withError) finished", buf, 0xCu);
  }

  if (a6)
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
  v26 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:a6]];
  v33[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  APSPowerLog();
  [(APSCourierConnectionManager *)self setConnectionFailure:v10 onInterface:a6];
  v28 = [v10 domain];
  v29 = APSErrorDomain;

  if (v28 == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v10;
  }

  [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:a6 forceDelayedReconnect:0 withReason:a5 error:v30];
}

- (double)currentKeepAliveInterval
{
  courierConnection = self->_courierConnection;
  v3 = [(APSCourierConnection *)courierConnection preferredInterface];

  [(APSCourierConnection *)courierConnection currentKeepAliveIntervalOnInterface:v3];
  return result;
}

- (void)courierConnection:(id)a3 receivedOffloadInfo:(id)a4 onInterface:(int64_t)a5
{
  v7 = a4;
  v8 = [(APSCourierConnectionManager *)self environment];
  v9 = [(APSCourierConnectionManager *)self _shouldOffloadToAOP:a5 environment:v8];

  v10 = +[APSLog courier];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = 138412290;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Received offload info from connection", &v12, 0xCu);
    }

    v10 = [(APSCourierConnectionManager *)self offloadInfo];
    [v10 addObject:v7];
  }

  else if (v11)
  {
    v12 = 138412290;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Offloading to AOP is currently disabled, ignoring PSKs.", &v12, 0xCu);
  }
}

- (void)courierConnection:(id)a3 receivedServerBag:(id)a4 finishedProcessingServerBagBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  networkMonitor = self->_networkMonitor;
  v75 = a5;
  v11 = [v9 disableCostDrivenDualChannelAttempts];
  [(APSNetworkMonitor *)networkMonitor setDisableCostDrivenDualChannelAttempts:v11];

  v12 = self->_networkMonitor;
  v13 = [v9 piggybackDualChannelAttempts];
  [(APSNetworkMonitor *)v12 setPiggybackDualChannelAttempts:v13];

  v14 = self->_networkMonitor;
  v15 = [v9 costDrivenDualChannelAttempts];
  [(APSNetworkMonitor *)v14 setCostDrivenDualChannelAttempts:v15];

  v16 = self->_networkMonitor;
  v17 = [v9 disableDualModePiggybackTimer];
  [(APSNetworkMonitor *)v16 setDisableDualModePiggybackTimer:v17];

  v18 = [v9 keepAliveV2TimeDriftMaximum];
  v19 = v18;
  if (v18)
  {
    [(__CFString *)v18 doubleValue];
    self->_keepAliveV2TimeDriftMaximum = v20;
    v21 = +[APSLog courier];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: keepAliveV2TimeDriftMaximum = %@", buf, 0x16u);
    }
  }

  v22 = [v9 lastIPCachingPercentage];
  v23 = v22;
  if (v22)
  {
    self->_lastIPCachingPercentage = [(__CFString *)v22 integerValue];
    v24 = +[APSLog courier];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: lastIPCachingPercentage = %@", buf, 0x16u);
    }
  }

  v25 = [v9 lastIPCachingTTLMinutesV2];
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = [v9 lastIPCachingTTLMinutes];
    if (!v26)
    {
      goto LABEL_15;
    }
  }

  self->_lastIPCachingTTLSeconds = [(__CFString *)v26 integerValue]* 60.0;
  v27 = +[APSLog courier];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v82 = self;
    v83 = 2112;
    v84 = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@:  lastIPCachingTTLMinutes = %@", buf, 0x16u);
  }

LABEL_15:
  v28 = [v9 minimumIntervalFallbackEnabled];
  v29 = v28;
  if (v28)
  {
    [v8 setMinimumIntervalFallbackEnabled:{objc_msgSend(v28, "BOOLValue")}];
    v30 = +[APSLog courier];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v29 BOOLValue];
      v32 = @"NO";
      if (v31)
      {
        v32 = @"YES";
      }

      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@: minimumIntervalFallbackEnabled = %@", buf, 0x16u);
    }
  }

  v77 = [v9 powerOptimizationsForExpensiveNetworkingDisabled];
  if (v77)
  {
    v33 = [v77 BOOLValue];
    [v8 setPowerOptimizationsForExpensiveNetworkingDisabled:v33];
    v34 = +[APSLog courier];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = @"NO";
      if (v33)
      {
        v35 = @"YES";
      }

      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@:  powerOptimizationsForExpensiveNetworkingDisabled = %@", buf, 0x16u);
    }
  }

  v36 = [v9 maxExpensiveConditionsConnectionAttempts];
  v37 = v36;
  if (v36)
  {
    [v8 setMaxExpensiveConditionsConnectionAttempts:{-[__CFString integerValue](v36, "integerValue")}];
    v38 = +[APSLog courier];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v37;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@:  maxExpensiveConditionsConnectionAttempts = %@", buf, 0x16u);
    }
  }

  v79 = [v9 expensiveConditionsBackOffInterval];
  if (v79)
  {
    [(__CFString *)v79 doubleValue];
    [v8 setExpensiveConditionsBackOffInterval:?];
    v39 = +[APSLog courier];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v79;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@:  expensiveConditionsBackOffInterval = %@", buf, 0x16u);
    }
  }

  v80 = [v9 wifiKeepAliveEarlyFireConstantInterval];
  if ([(APSCourierConnectionManager *)self isCellularWatch]&& v80 && (_os_feature_enabled_impl() & 1) == 0)
  {
    [(__CFString *)v80 doubleValue];
    [v8 setWifiKeepAliveEarlyFireConstantInterval:?];
    v40 = +[APSLog courier];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v80;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@:  wifiKeepAliveEarlyFireConstantInterval = %@", buf, 0x16u);
    }
  }

  v78 = [v9 delayedReconnectTLSIntervalTrigger];
  if (v78)
  {
    [(__CFString *)v78 doubleValue];
    self->_delayedReconnectTLSIntervalTrigger = v41;
    v42 = +[APSLog courier];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v78;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@:  delayedReconnectTLSIntervalTrigger = %@", buf, 0x16u);
    }
  }

  v71 = v37;
  v43 = [v9 delayedReconnectTLSInterval];
  v44 = v43;
  if (v43)
  {
    [(__CFString *)v43 doubleValue];
    self->_delayedReconnectTLSInterval = v45;
    v46 = +[APSLog courier];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v44;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%@:  delayedReconnectTLSInterval = %@", buf, 0x16u);
    }
  }

  v74 = v23;
  v47 = [v9 highQualityThresholdConnectedTime];
  v48 = v47;
  if (v47)
  {
    connectionHistory = self->_connectionHistory;
    [(__CFString *)v47 doubleValue];
    [(APSConnectionHistory *)connectionHistory setHighQualityThresholdConnectedTime:?];
    v50 = +[APSLog courier];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v48;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%@:  highQualityThresholdConnectedTime = %@", buf, 0x16u);
    }
  }

  v73 = v26;
  v51 = [v9 lowQualityThresholdConnectedTime];
  v52 = v51;
  if (v51)
  {
    v53 = self->_connectionHistory;
    [(__CFString *)v51 doubleValue];
    [(APSConnectionHistory *)v53 setLowQualityThresholdConnectedTime:?];
    v54 = +[APSLog courier];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v52;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%@:  lowQualityThresholdConnectedTime = %@", buf, 0x16u);
    }
  }

  v76 = v8;
  v55 = [v9 suspendToggleHourlyLimit];
  v56 = v55;
  if (v55)
  {
    self->_suspendToggleHourlyLimit = [(__CFString *)v55 integerValue];
    v57 = +[APSLog courier];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v56;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@:  suspendToggleHourlyLimit = %@", buf, 0x16u);
    }
  }

  v72 = v29;
  v58 = [v9 suspendToggleDailyLimit];
  v59 = v58;
  if (v58)
  {
    self->_suspendToggleDailyLimit = [(__CFString *)v58 integerValue];
    v60 = +[APSLog courier];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v59;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%@:  suspendToggleDailyLimit = %@", buf, 0x16u);
    }
  }

  v70 = v19;
  v61 = [v9 delayedSuspendKeepAliveInterval];
  v62 = v61;
  if (v61)
  {
    [(__CFString *)v61 doubleValue];
    self->_delayedSuspendKeepAliveInterval = v63;
    v64 = +[APSLog courier];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v62;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%@:  delayedSuspendKeepAliveInterval = %@", buf, 0x16u);
    }
  }

  v65 = [v9 filterMessageTimeout];
  v66 = v65;
  if (v65)
  {
    [(__CFString *)v65 doubleValue];
    if (v67 == 0.0)
    {
      v67 = 30.0;
    }

    self->_filterMessageTimeout = v67;
    v68 = +[APSLog courier];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v82 = self;
      v83 = 2112;
      v84 = v66;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%@:  filterMessageTimeout = %@", buf, 0x16u);
    }
  }

  v69 = [(APSCourierConnectionManager *)self delegate];
  [v69 courierConnectionManager:self receivedServerBag:v9 finishedProcessingServerBagBlock:v75];
}

- (void)courierConnection:(id)a3 shouldConnect:(id)a4
{
  v5 = a4;
  v6 = [(APSCourierConnectionManager *)self delegate];
  [v6 courierConnectionManager:self shouldConnectBlock:v5];
}

- (void)courierConnection:(id)a3 hasDeterminedServerHostname:(id)a4 onInterface:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[APSLog courier];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1000067F8(a5);
    v12 = 138413058;
    v13 = self;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Connecting to courier %@ with connection: %@ onInterface: %@", &v12, 0x2Au);
  }

  [(APSCourierConnectionManager *)self _startConnectionEstablishTimerOnInterface:a5];
}

- (void)courierConnection:(id)a3 keepAliveResponseTimerFiredOnInterface:(int64_t)a4
{
  v6 = a3;
  v7 = +[APSLog courier];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000067F8(a4);
    v9 = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    v10 = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
    v11 = [v10 currentLinkQualityString];
    v17 = 138413058;
    v18 = self;
    v19 = 2112;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Keep-alive response timer fired onInterface %@. Keep-alive failed. Connected on %lu interfaces. Current link quality: %@", &v17, 0x2Au);
  }

  [(APSCourierConnectionManager *)self _clearKeepAliveResponseTimerOnInterface:a4];
  v12 = [v6 keepAliveV2SupportedOnInterface:a4];

  if ((v12 & 1) == 0)
  {
    [(APSCourierConnectionManager *)self _submitKeepAliveFailedAWDonInterface:a4];
    v13 = +[APSLog courier];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: AWD for KeepAliveFailed finished", &v17, 0xCu);
    }
  }

  v14 = +[APSLog courier];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for ConnectionDisconnected", &v17, 0xCu);
  }

  v15 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:a4]];
  [APSMetricLogger connectionDisconnected:a4 linkQuality:v15 reason:16];
  v16 = +[APSLog courier];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: AWD for ConnectionDisconnected finished", &v17, 0xCu);
  }

  [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:a4 forceDelayedReconnect:0 withReason:16];
}

- (void)courierConnection:(id)a3 connectionEstablishTimerFiredOnInterface:(int64_t)a4
{
  v6 = [(APSEnvironment *)self->_environment name];
  v15 = sub_1000067F8(a4);
  APSAlert();

  v7 = [APSLog courier:v6];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000067F8(a4);
    v9 = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    v10 = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
    v11 = [v10 currentLinkQualityString];
    *buf = 138413058;
    v17 = self;
    v18 = 2112;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Connection establish timer fired. Connection failed onInterface %@. Connected on %lu interfaces. Current link quality: %@", buf, 0x2Au);
  }

  [(APSCourierConnectionManager *)self _clearConnectionEstablishTimerOnInterface:a4];
  v12 = +[APSLog courier];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for ConnectionDisconnected", buf, 0xCu);
  }

  v13 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:a4]];
  [APSMetricLogger connectionDisconnected:a4 linkQuality:v13 reason:17];
  v14 = +[APSLog courier];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: AWD for ConnectionDisconnected finished", buf, 0xCu);
  }

  [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:a4 forceDelayedReconnect:0 withReason:17];
}

- (void)_handleKeepAliveAckMessage:(id)a3 onInterface:(int64_t)a4
{
  v6 = a3;
  v7 = +[APSLog courier];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000067F8(a4);
    v17 = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Received successful keep-alive ack on interface %@: %@", &v17, 0x20u);
  }

  v9 = +[NSDate date];
  v10 = [(APSCourierConnection *)self->_courierConnection objectForKey:@"keepAliveSent" onInterface:a4];
  if (v10)
  {
    [v9 timeIntervalSinceDate:v10];
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [NSNumber numberWithDouble:v11];
  [(APSCourierConnection *)self->_courierConnection setObject:v12 forKey:@"keepAliveAckTime" onInterface:a4];
  [(APSCourierConnectionManager *)self _clearKeepAliveResponseTimerOnInterface:a4];
  if ([(APSCourierConnection *)self->_courierConnection isConnectedOnInterface:a4])
  {
    if (a4 == 1)
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
      v16 = sub_1000067F8(a4);
      v17 = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ received keepAlive for interface %@ that is no longer connected, ignoring.", &v17, 0x16u);
    }
  }
}

- (unint64_t)courierConnection:(id)a3 dataReceived:(id)a4 onInterface:(int64_t)a5 withGeneration:(unint64_t)a6 isWakingMessage:(BOOL)a7
{
  v110 = a7;
  v115 = a3;
  v10 = a4;
  v11 = sub_1000067F8(a5);
  v107 = [NSString stringWithFormat:@"APSCourier(tcpStream:dataReceived:)-%@", v11];

  v105 = [[APSPowerAssertion alloc] initWithName:v107 category:202 holdDuration:2.0];
  v12 = +[APSLog courier];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 length];
    v14 = sub_1000067F8(a5);
    v15 = [(APSCourierConnection *)self->_courierConnection countConnectedInterfaces];
    *buf = 138413314;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    v159 = v13;
    v160 = 2112;
    v161 = v14;
    v162 = 2048;
    v163 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Outstanding data received: %@ (length %lu) onInterface: %@. Connected on %lu interfaces.", buf, 0x34u);
  }

  v16 = [(APSCourierConnectionManager *)self environment];
  v17 = [v16 name];
  v18 = [v17 isEqualToString:APSEnvironmentProduction];

  if (v18)
  {
    v19 = +[APSOffloadHeuristics shared];
    [v19 receivedBytes:objc_msgSend(v10 onInterface:{"length"), a5}];
  }

  v20 = 0;
  v104 = a5 != 0;
  do
  {
    v153 = 0;
    v151 = 0;
    v152 = 0;
    v21 = [(APSCourierConnection *)self->_courierConnection parseMessage:v10 parameters:&v151 isInvalid:&v153 lengthParsed:&v152 onInterface:a5];
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

    v26 = [(APSCourierConnectionManager *)self protocolConnectionForInterface:a5];
    if (v21)
    {
      v147 = 0;
      v148 = &v147;
      v149 = 0x2020000000;
      v150 = 0;
      v27 = [v22 objectForKey:@"APSProtocolCommand"];
      v28 = [v27 intValue];

      switch(v28)
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

            v32 = [(APSCourierConnectionManager *)self serverTimeTracker];
            [v32 updateServerTimeWithTimeInMilliseconds:{objc_msgSend(v116, "unsignedLongLongValue")}];
          }

          *(&v117 + 1) = [v22 objectForKey:@"APSProtocolMessageSize"];
          *&v117 = [v22 objectForKey:@"APSProtocolLargeMessageSize"];
          [(APSCourierConnectionManager *)self setMaxMessageSize:*(&v117 + 1) forInterface:a5];
          [(APSCourierConnectionManager *)self setMaxLargeMessageSize:v117 forInterface:a5];
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
            v113 = v10;
            v44 = a5;
            v45 = self->_serverExpectedKeepAliveInterval;
            v46 = self->_serverMinKeepAliveInterval;
            v47 = self->_serverMaxKeepAliveInterval;
            v111 = v44;
            v48 = sub_1000067F8(v44);
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

            a5 = v111;
            v10 = v113;
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

          v109 = [(APSCourierConnectionManager *)self _handleRedirectMessage:v22 onInterface:a5];
          v51 = [(APSCourierConnectionManager *)self _deviceCanOffloadPresenceResponse:v22 interface:a5];
          v52 = [v115 isConnectionOffloadingViableOnInterface:a5];
          v53 = [v115 isConnectionOffloadedOnInterface:a5];
          if (v51)
          {
            v108 = v52 & (v53 ^ 1);
          }

          else
          {
            v108 = 0;
          }

          [v115 clearConnectionEstablishTimerOnInterface:a5];
          if (((v109 | v108) & 1) == 0)
          {
            v85 = [(APSCourierConnectionManager *)self outgoingConnectMessageQueue];
            v86 = sub_1000067F8(a5);
            [v85 handleResponseForPendingItem:v22 error:0 onInterface:v86];
          }

          *(v148 + 24) = 1;
          v87 = [v22 objectForKey:@"APSProtocolDualChannelSupport"];
          v88 = [v87 BOOLValue];

          v89 = +[APSLog courier];
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v90 = @"NO";
            if (v88)
            {
              v90 = @"YES";
            }

            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v90;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "%@: Setting dualChannelSupport: %@", buf, 0x16u);
          }

          v91 = [(APSCourierConnectionManager *)self networkMonitor];
          [v91 setServerSupportsDualMode:v88];

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

            [(APSCourierConnectionManager *)self _disconnectStreamForInterface:a5 withReason:v92];
            [(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:a5];
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

            v97 = [(APSCourierConnectionManager *)self courierConnection];
            v98 = [v97 interfaceNameForInterface:a5];

            [(APSSymptomReporter *)self->_symptomReporter reportConnectionSuccessOnConnectionType:v104];
            if (v96)
            {
              [(APSSymptomReporter *)self->_symptomReporter reportClientIPAddress:v96 forInterfaceOfName:v98];
            }
          }

          goto LABEL_73;
        case 3u:
        case 0xAu:
          v58 = [(APSCourierConnectionManager *)self courierConnection];
          v59 = [v58 isConnectionOffloadedOnInterface:a5];

          if (v59)
          {
            v60 = [(APSCourierConnection *)self->_courierConnection nwInterfaceTypeForInterface:a5];
            v61 = [(APSCourierConnectionManager *)self ctClient];
            v142[0] = _NSConcreteStackBlock;
            v142[1] = 3221225472;
            v142[2] = sub_1000A5524;
            v142[3] = &unk_100188AD0;
            v142[4] = self;
            [v61 triggerKeepaliveWakeupEvent:v60 completion:v142];
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
          v140 = a6;
          v141 = v110;
          v138 = v63;
          v139 = buf;
          [v63 enumerateDataRecipient:v136];
          if ((*(*&buf[8] + 24) & 1) == 0)
          {
            v64 = +[APSLog courier];
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *v154 = 138412546;
              v155 = self;
              v156 = 2048;
              v157 = 2;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%@: Sending acknowledgement message with response %ld", v154, 0x16u);
            }

            v65 = [v62 objectForKey:@"APSProtocolToken"];
            v66 = [v62 objectForKey:@"APSProtocolMessageID"];
            [(APSCourierConnectionManager *)self sendMessageAcknowledgeMessageWithResponse:2 messageId:v66 token:v65 onInterface:a5];
          }

          *(v148 + 24) = 1;
          [(APSCourierConnectionManager *)self notePush];

          _Block_object_dispose(buf, 8);
          if (![(APSCourierConnection *)self->_courierConnection isConnectionOffloadedOnInterface:a5])
          {
            [(APSCourierConnectionManager *)self _resetKeepAliveOnInterface:a5];
          }

          goto LABEL_73;
        case 6u:
        case 0xDu:
          [(APSCourierConnectionManager *)self _handleKeepAliveResponseMessage:v22 onInterface:a5 didWake:v110];
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

          [(APSCourierConnectionManager *)self _clearFilterMessageTimerOnInterface:a5];
          v75 = [(APSCourierConnectionManager *)self outgoingFilterQueue];
          v76 = sub_1000067F8(a5);
          [v75 handleResponseForPendingItem:v22 error:0 onInterface:v76];

          goto LABEL_72;
        case 0xBu:
          v72 = [(APSCourierConnectionManager *)self outgoingSendMessageQueue];
          v73 = sub_1000067F8(a5);
          [v72 handleResponseForPendingItem:v22 error:0 onInterface:v73];

          goto LABEL_72;
        case 0xFu:
          [(APSCourierConnectionManager *)self _handleFlushMessage:v22 onInterface:a5];
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
          v78 = [(APSCourierConnectionManager *)self tokenGenerateResponseQueue];
          v79 = sub_1000067F8(a5);
          [v78 handleResponseForPendingItem:v22 error:0 onInterface:v79];

          goto LABEL_72;
        case 0x16u:
          [(APSCourierConnectionManager *)self _handleKeepAliveAckMessage:v22 onInterface:a5];
          goto LABEL_72;
        case 0x17u:
          [(APSCourierConnectionManager *)self _handleRedirectMessage:v22 onInterface:a5];
          [(APSCourierConnectionManager *)self _disconnectStreamForInterface:a5 withReason:9];
          [(APSCourierConnectionManager *)self _adjustConnectionWithInterfacePreference:a5];
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
          [(APSCourierConnectionManager *)self _handleDelayKeepAliveCancelMessageOnInterface:a5];
LABEL_72:
          *(v148 + 24) = 1;
LABEL_73:
          if ((v148[3] & 1) == 0)
          {
            v81 = +[APSLog courier];
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v99 = sub_1000067F8(a5);
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
        *&buf[14] = v10;
        _os_log_fault_impl(&_mh_execute_header, v54, OS_LOG_TYPE_FAULT, "%@: Received invalid message data: %@", buf, 0x16u);
      }

      v55 = +[APSLog courier];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for ConnectionDisconnected", buf, 0xCu);
      }

      v56 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:a5]];
      [APSMetricLogger connectionDisconnected:a5 linkQuality:v56 reason:18];
      v57 = +[APSLog courier];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@: AWD for ConnectionDisconnected finished", buf, 0xCu);
      }

      [(APSCourierConnectionManager *)self _handleConnectionFailureOnInterface:a5 forceDelayedReconnect:0 withReason:18];
    }

    v82 = v152;
    if (v152)
    {
      v83 = [v10 length];
      v84 = [v10 subdataWithRange:{v82, v83 - v152}];

      v10 = v84;
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

- (id)consecutiveConnectionFailureReasonOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    v7 = self->_consecutiveConnectionFailureReason[a3];
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(a3);
      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to return consecutiveConnectionFailureReason on invalid interface %@", &v9, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)addConnectionFailureReasons:(id)a3 onInterface:(int64_t)a4
{
  v6 = a3;
  if (a4 < 2)
  {
    consecutiveConnectionFailureReason = self->_consecutiveConnectionFailureReason;
    if (!self->_consecutiveConnectionFailureReason[a4])
    {
      v10 = objc_alloc_init(NSCountedSet);
      v11 = consecutiveConnectionFailureReason[a4];
      consecutiveConnectionFailureReason[a4] = v10;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v6;
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

          v16 = consecutiveConnectionFailureReason[a4];
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
      v8 = sub_1000067F8(a4);
      *buf = 138412546;
      v24 = self;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ asked to add errors to consecutiveConnectionFailureReason on invalid interface %@", buf, 0x16u);
    }
  }
}

- (void)setConnectionFailure:(id)a3 onInterface:(int64_t)a4
{
  v6 = a3;
  if (a4 < 2)
  {
    consecutiveConnectionFailureReason = self->_consecutiveConnectionFailureReason;
    v10 = consecutiveConnectionFailureReason[a4];
    if (!v10)
    {
      v11 = objc_alloc_init(NSCountedSet);
      v12 = consecutiveConnectionFailureReason[a4];
      consecutiveConnectionFailureReason[a4] = v11;

      v10 = consecutiveConnectionFailureReason[a4];
    }

    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    [(NSCountedSet *)v10 addObject:v13];
  }

  else
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(a4);
      v14 = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ asked to add error %@ to consecutiveConnectionFailureReason on invalid interface %@", &v14, 0x20u);
    }
  }
}

- (void)clearConsecutiveConnectionFailureReasonOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    v7 = &self->super.isa + a3;
    v8 = v7[8];
    v7[8] = 0;
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(a3);
      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to clear consecutiveConnectionFailureReason on invalid interface %@", &v9, 0x16u);
    }
  }
}

- (BOOL)_handleRedirectMessage:(id)a3 onInterface:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 objectForKey:@"APSProtocolServerMetadata"];
  v8 = [v6 objectForKey:@"APSProtocolRedirectReason"];

  if (v7)
  {
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Received courier redirect host '%@' with reason: '%@'", &v12, 0x20u);
    }

    [(APSCourierConnection *)self->_courierConnection setUsingCachedIPAddress:0 onInterface:a4];
    [(APSCourierConnection *)self->_courierConnection setRedirectHost:v7];
    v10 = [NSNumber numberWithInt:[(APSCourierConnectionManager *)self _linkQualityForInterface:a4]];
    [APSMetricLogger connectionDisconnected:a4 linkQuality:v10 reason:9];
    [(APSCourierConnection *)self->_courierConnection incrementRedirectCount];
  }

  return v7 != 0;
}

- (void)_submitKeepAliveFailedAWDonInterface:(int64_t)a3
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for KeepAliveFailed", &v7, 0xCu);
  }

  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: AWD for KeepAliveFailed returned", &v7, 0xCu);
  }

  [(APSCourierConnection *)self->_courierConnection setObject:0 forKey:@"keepAliveSent" onInterface:a3];
  [(APSCourierConnection *)self->_courierConnection setObject:0 forKey:@"keepAliveAckTime" onInterface:a3];
}

- (void)setConnectionStatistics:(id)a3 onInterface:(int64_t)a4
{
  v6 = a3;
  if (a4 < 2)
  {
    v9 = &self->super.isa + a4;
    v10 = v9[3];
    v9[3] = 0;

    v11 = v9[5];
    v9[5] = 0;

    v12 = [v6 objectForKey:@"tcp_handshake"];
    v13 = [v12 copy];
    v14 = v9[1];
    v9[1] = v13;

    v15 = [v6 objectForKey:@"dns"];
    v16 = [v15 copy];
    v17 = v9[3];
    v9[3] = v16;

    v7 = [v6 objectForKey:@"tls"];
    v18 = [v7 copy];
    v19 = v9[5];
    v9[5] = v18;
  }

  else
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(a4);
      v20 = 138412802;
      v21 = self;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ asked to add connection statictis %@ on invalid interface %@", &v20, 0x20u);
    }
  }
}

- (void)_handleConnectionSuspendedOnInterface:(int64_t)a3
{
  if (!a3)
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

- (void)_handleConnectionRecoverFromSuspensionOnInterface:(int64_t)a3
{
  if (!a3 && [(APSCourierConnection *)self->_courierConnection isSuspendedOnInterface:?])
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

    v5 = [(APSCourierConnectionManager *)self hourlySuspendToggleRateLimiter];
    v6 = [(APSCourierConnectionManager *)self dailySuspendToggleRateLimiter];
    if ([v5 isUnderLimit] && (objc_msgSend(v6, "isUnderLimit") & 1) != 0)
    {
      [v5 note];
      [v6 note];

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
      v17 = self;
      v18 = 2048;
      v19 = v15;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ cellular interface suspension toggles are over the limit! {delay: %f, hourly: %@, daily: %@}", &v16, 0x2Au);
    }
  }
}

- (void)_delayedSuspendKeepAliveTimerFired:(id)a3
{
  v4 = a3;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: _delayedSuspendKeepAliveTimerFired! Connecting now.", &v8, 0xCu);
  }

  [(APSCourierConnectionManager *)self _clearPostSuspensionFlushState];
  v6 = [v4 userInfo];

  v7 = [v6 integerValue];
  [(APSCourierConnectionManager *)self _handleConnectionAfterSuspensionRecoveryOnInterface:v7 withKeepAlive:1];
}

- (void)_handleConnectionAfterSuspensionRecoveryOnInterface:(int64_t)a3 withKeepAlive:(BOOL)a4
{
  v4 = a4;
  v7 = +[APSLog courier];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: _handleConnectionAfterSuspensionRecoveryOnInterface {withKeepAlive: %@}", buf, 0x16u);
  }

  if ([(APSCourierConnection *)self->_courierConnection countConnectedInterfaces]>= 2)
  {
    [(APSNetworkMonitor *)self->_networkMonitor openedSecondChannel];
  }

  if (v4)
  {
    [(APSCourierConnectionManager *)self _performKeepAliveOnInterface:a3 shortInterval:0 withAction:2];
  }

  [(APSCourierConnectionManager *)self protocolConnectionForInterface:a3];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A679C;
  v11 = v10[3] = &unk_100188A38;
  v9 = v11;
  [v9 enumerateStateListeners:v10];
}

- (void)_resetServerKeepAliveStatsOnInterface:(int64_t)a3
{
  [(APSCourierConnection *)self->_courierConnection setServerStatsMaxKeepAlive:0.0 onInterface:?];
  [(APSCourierConnection *)self->_courierConnection setServerStatsMinKeepAlive:a3 onInterface:0.0];
  [(APSCourierConnection *)self->_courierConnection setServerStatsExpectedKeepAlive:a3 onInterface:0.0];
  courierConnection = self->_courierConnection;

  [(APSCourierConnection *)courierConnection setUsingServerStatsAggressively:0 onInterface:a3];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(APSCourierConnectionManager *)self _adjustConnection];
  }
}

- (void)_invokeInFailureHandlingContext:(id)a3
{
  v4 = a3;
  [(APSCourierConnectionManager *)self setHandlingFailure:1];
  if (v4)
  {
    v4[2]();
  }

  [(APSCourierConnectionManager *)self setHandlingFailure:0];
}

- (void)_handleFlushMessage:(id)a3 onInterface:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 objectForKey:@"APSProtocolFlushWantPadding"];
  v8 = [v7 intValue];

  v9 = +[APSLog courier];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000067F8(a4);
    v12 = 138413058;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    v16 = 2048;
    v17 = v8;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Received flush message %@ with paddingLength %lu onInterface: %@", &v12, 0x2Au);
  }

  if (v8)
  {
    v11 = +[APSLog courier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Sending flush response message with padding length %lu", &v12, 0x16u);
    }

    [(APSCourierConnection *)self->_courierConnection sendFlushResponseMessageWithPaddingLength:v8 onInterface:a4];
  }
}

- (void)_delayedPerformKeepAliveOnInterface:(int64_t)a3 withDelay:(double)a4
{
  if (a3 < 2)
  {
    v8 = a4;
    delayedKeepAlivePowerAssertion = self->_delayedKeepAlivePowerAssertion;
    if (delayedKeepAlivePowerAssertion)
    {
      self->_delayedKeepAlivePowerAssertion = 0;
    }

    v10 = APSBundleIdentifier;
    v11 = [(APSEnvironment *)self->_environment domain];
    v12 = sub_1000067F8(a3);
    v17 = [NSString stringWithFormat:@"%@-delayed-keepalive-%@-%@", v10, v11, v12];

    v13 = [[APSPowerAssertion alloc] initWithName:v17 category:203 holdDuration:60.0];
    v14 = self->_delayedKeepAlivePowerAssertion;
    self->_delayedKeepAlivePowerAssertion = v13;

    v15 = [NSNumber numberWithInteger:a3];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__delayedPerformKeepAliveOnInterface:" object:v15];

    if (v8 <= 0.0)
    {
      v8 = 2.0;
    }

    v16 = [NSNumber numberWithInteger:a3];
    [(APSCourierConnectionManager *)self performSelector:"__delayedPerformKeepAliveOnInterface:" withObject:v16 afterDelay:v8];
  }

  else
  {
    v6 = +[APSLog courier];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1000067F8(a3);
      *buf = 138412546;
      v19 = self;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ asked to perform delayed keep alive with invalid interface %@", buf, 0x16u);
    }
  }
}

- (void)__delayedPerformKeepAliveOnInterface:(id)a3
{
  v4 = [a3 integerValue];
  if ([(APSCourierConnection *)self->_courierConnection isConnectedOnInterface:v4])
  {
    [(APSCourierConnectionManager *)self _performKeepAliveOnInterface:v4 shortInterval:0 withAction:2];
  }

  delayedKeepAlivePowerAssertion = self->_delayedKeepAlivePowerAssertion;
  self->_delayedKeepAlivePowerAssertion = 0;
}

- (void)_handleDelayKeepAliveCancelMessageOnInterface:(int64_t)a3
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received cancel keep alive command. Canceling delayed keep alive timer and requesting keep alive now.", v8, 2u);
  }

  v6 = [NSNumber numberWithInteger:a3];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__delayedPerformKeepAliveOnInterface:" object:v6];

  if (self->_delayedKeepAlivePowerAssertion)
  {
    v7 = [NSNumber numberWithInteger:a3];
    [(APSCourierConnectionManager *)self __delayedPerformKeepAliveOnInterface:v7];
  }
}

- (void)requestConnectionIfNeeded
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ requestConnectionIfNeeded", &v4, 0xCu);
  }

  [(APSCourierConnectionManager *)self _requestKeepAlive:0 orConnection:1];
}

- (void)performKeepAlive
{
  [(APSCourierConnectionManager *)self performKeepAliveOnInterface:0];

  [(APSCourierConnectionManager *)self performKeepAliveOnInterface:1];
}

- (void)_resetKeepAliveOnInterface:(int64_t)a3
{
  if ([(APSCourierConnection *)self->_courierConnection keepAliveV2SupportedOnInterface:?])
  {

    [(APSCourierConnectionManager *)self _delayedPerformKeepAliveOnInterface:a3];
  }

  else
  {
    [(APSCourierConnectionManager *)self _clearKeepAliveResponseTimerOnInterface:a3];
    courierConnection = self->_courierConnection;

    [(APSCourierConnection *)courierConnection updateConnectionManagerKeepAliveIntervalOnInterface:a3];
  }
}

- (void)_submitKeepAliveSucceededAWDonInterface:(int64_t)a3
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Calling into AWD for KeepAliveSucceeded", &v9, 0xCu);
  }

  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: AWD for KeepAliveSucceeded returned", &v9, 0xCu);
  }

  [(APSCourierConnection *)self->_courierConnection setObject:0 forKey:@"keepAliveSent" onInterface:a3];
  [(APSCourierConnection *)self->_courierConnection setObject:0 forKey:@"keepAliveAckTime" onInterface:a3];
  courierConnection = self->_courierConnection;
  v8 = +[NSDate date];
  [(APSCourierConnection *)courierConnection setObject:v8 forKey:@"timeSinceLastKeepAliveSucceeded" onInterface:a3];
}

- (void)updateKeepAliveInterval:(double)a3
{
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Updating keep alive delay interval to %f", &v6, 0x16u);
  }

  self->_delayedSuspendKeepAliveInterval = a3;
}

- (void)networkMonitorWiFiBecameAssociated:(id)a3
{
  v4 = +[APSLog courier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Received networkMonitorWiFiBecameAssociated", &v5, 0xCu);
  }

  [(APSCourierConnectionManager *)self _adjustConnection];
}

- (void)interfaceRadioHotnessChanged:(id)a3
{
  v4 = a3;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 isRadioHot];
    v7 = @"NO";
    *buf = 138412802;
    v14 = self;
    v15 = 2112;
    if (v6)
    {
      v7 = @"YES";
    }

    v16 = v4;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %@ interface radio hotness changed to %@", buf, 0x20u);
  }

  v8 = [(APSCourierConnectionManager *)self pcInterfaceMonitorWWAN];
  v9 = v8 != v4;

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
  v2 = [(APSCourierConnectionManager *)self serverTimeTracker];
  v3 = [v2 serverTimeInNanoSeconds];

  return v3;
}

- (id)dnsResolutionTimeMillisecondsOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    v7 = self->_dnsResolutionTimeMilliseconds[a3];
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(a3);
      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to return dnsResolutionTimeMilliseconds on invalid interface %@", &v9, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)tlsHandshakeTimeMillisecondsOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    v7 = self->_tlsHandshakeTimeMilliseconds[a3];
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(a3);
      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to return tlsHandshakeTimeMilliseconds on invalid interface %@", &v9, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)tcpHandshakeTimeMillisecondsOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    v7 = self->_tcpHandshakeTimeMilliseconds[a3];
  }

  else
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(a3);
      v9 = 138412546;
      v10 = self;
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
      v5 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ mid-failure handling, ignoring adjustConnectionsIfNeeded call", &v4, 0xCu);
    }
  }

  else
  {

    [(APSCourierConnectionManager *)self _adjustConnection];
  }
}

- (void)performKeepAliveOnInterface:(int64_t)a3
{
  if ([(APSCourierConnection *)self->_courierConnection isConnectedOnInterface:1])
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000067F8(a3);
      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ force performing keep alive on %@ interface", &v7, 0x16u);
    }

    [(APSCourierConnectionManager *)self _performKeepAliveOnInterface:a3 shortInterval:0 withAction:2];
  }
}

- (BOOL)isConnected
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 isConnected];

  return v3;
}

- (BOOL)hasOpenConnection
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 hasOpenConnection];

  return v3;
}

- (unint64_t)countOpenConnections
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 countOpenConnections];

  return v3;
}

- (id)currentKeepAliveStateOnInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  v5 = [v4 currentKeepAliveStateOnInterface:a3];

  return v5;
}

- (BOOL)didPushCauseWake
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 didPushCauseWake];

  return v3;
}

- (id)tcpInfoDescription
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 tcpInfoDescription];

  return v3;
}

- (BOOL)isConnectedOnInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(a3) = [v4 isConnectedOnInterface:a3];

  return a3;
}

- (BOOL)isSuspendedOnInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(a3) = [v4 isSuspendedOnInterface:a3];

  return a3;
}

- (BOOL)hasOpenConnectionOnInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(a3) = [v4 hasOpenConnectionOnInterface:a3];

  return a3;
}

- (void)holdPowerAssertionUntilStreamsQuiesce
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  [v2 holdPowerAssertionUntilStreamsQuiesce];
}

- (id)serverIPAddressForInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  v5 = [v4 serverIPAddressForInterface:a3];

  return v5;
}

- (id)serverHostnameForInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  v5 = [v4 serverHostnameForInterface:a3];

  return v5;
}

- (id)_sendOutgoingMessage:(id)a3 topicHash:(id)a4 lastRTT:(id)a5 token:(id)a6 onInterface:(int64_t)a7 ultraConstrainedAllowed:(BOOL)a8 withCompletion:(id)a9
{
  v15 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v16 = a9;
  if ([v15 payloadFormat] == 1)
  {
    v17 = [v15 userInfo];
    [NSPropertyListSerialization dataWithPropertyList:v17 format:200 options:0 error:0];
  }

  else
  {
    v17 = [v15 userInfo];
    [NSJSONSerialization dataWithJSONObject:v17 options:0 error:0];
  }
  v18 = ;

  if (v18)
  {
    [v15 setPayloadLength:{objc_msgSend(v18, "length")}];
    v19 = [(APSCourierConnectionManager *)self maxLargeMessageSizeForInterface:a7];
    if (v19)
    {
      v20 = [v18 length];
      v21 = [(APSCourierConnectionManager *)self maxLargeMessageSizeForInterface:a7];
      v22 = [v21 unsignedIntegerValue];

      if (v20 > v22)
      {
        v23 = +[APSLog courier];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v15 messageID];
          v25 = [v18 length];
          v26 = [(APSCourierConnectionManager *)self maxLargeMessageSizeForInterface:a7];
          *buf = 138413058;
          v59 = self;
          v60 = 2048;
          v61 = v24;
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

    v28 = [(APSCourierConnectionManager *)self pcInterfaceMonitorOnInterface:a7];
    v29 = [v28 isInternetReachable];

    v30 = [(APSCourierConnectionManager *)self courierConnection];
    v31 = [v30 isConnectedOnInterface:a7];

    if (v29 & 1 | ((v31 & 1) == 0))
    {
      v32 = [(APSCourierConnectionManager *)self pcInterfaceMonitorOnInterface:a7];
      v33 = [v32 interfaceConstraint] != 1 || a8;

      v23 = +[APSLog courier];
      v34 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (!v33)
      {
        if (v34)
        {
          *buf = 138412546;
          v59 = self;
          v60 = 2048;
          v61 = [v15 messageID];
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ Trying to send outgoing message %lu but only connected on ultra constrained", buf, 0x16u);
        }

        goto LABEL_9;
      }

      if (v34)
      {
        v49 = [v15 messageID];
        v35 = sub_1000067F8(a7);
        v48 = [v18 length];
        v36 = [(APSCourierConnectionManager *)self courierConnection];
        v47 = [v36 countConnectedInterfaces];
        v37 = [(APSCourierConnectionManager *)self pcPersistentInterfaceManager];
        v50 = [v37 currentLinkQualityString];
        *buf = 138413570;
        v59 = self;
        v60 = 2048;
        v61 = v49;
        v62 = 2112;
        v63 = v35;
        v64 = 2048;
        v65 = v48;
        v66 = 2048;
        v67 = v47;
        v68 = 2112;
        v69 = v50;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Sending outgoing message %lu onInterface: %@. Size of %lu. Connected on %lu interfaces. Current link quality: %@", buf, 0x3Eu);
      }

      v38 = -[APSCourierConnectionManager sendMessageWithTopicHash:identifier:payload:token:isPlistFormat:lastRTT:onInterface:withCompletion:](self, "sendMessageWithTopicHash:identifier:payload:token:isPlistFormat:lastRTT:onInterface:withCompletion:", v51, [v15 identifier], v18, v53, objc_msgSend(v15, "payloadFormat") == 1, v52, a7, v16);
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
        v43 = [v15 messageID];
        v44 = sub_1000067F8(a7);
        *buf = 138412802;
        v59 = self;
        v60 = 2048;
        v61 = v43;
        v62 = 2112;
        v63 = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@ Trying to send outgoing message %lu but connected interface %@ is not reachable", buf, 0x20u);
      }

      [(APSCourierConnectionManager *)self disconnectStreamForInterface:a7 withReason:10];
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
      v55 = self;
      v56 = 2048;
      v57 = [v15 messageID];
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%@: Dropping outgoing message %lu because it could not be encoded in JSON", v54, 0x16u);
    }

    v27 = APSError();
  }

LABEL_33:

  return v27;
}

- (void)sendTokenGenerateMessageWithTopicHash:(id)a3 baseToken:(id)a4 appId:(unsigned __int16)a5 expirationTTL:(unsigned int)a6 vapidPublicKeyHash:(id)a7 type:(int64_t)a8 withCompletion:(id)a9 onInterface:(int64_t)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a9;
  v19 = [(APSCourierConnectionManager *)self tokenGenerateResponseQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A9AAC;
  v24[3] = &unk_100188B20;
  v24[4] = self;
  v25 = v15;
  v31 = a5;
  v30 = a6;
  v26 = v16;
  v27 = v17;
  v28 = a8;
  v29 = a10;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  [v19 enqueueSendBlock:v24 completionBlock:v18];
}

- (BOOL)generationMatches:(unint64_t)a3 forInterface:(int64_t)a4
{
  v6 = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(a4) = [v6 generationMatches:a3 forInterface:a4];

  return a4;
}

- (double)currentKeepAliveIntervalOnInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  [v4 currentKeepAliveIntervalOnInterface:a3];
  v6 = v5;

  return v6;
}

- (BOOL)isAttemptingToReconnect
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 hasConnectionEstablishTimer];

  return v3;
}

- (void)sendFilterMessageWithEnabledHashes:(id)a3 ignoredHashes:(id)a4 opportunisticHashes:(id)a5 nonWakingHashes:(id)a6 pausedHashes:(id)a7 token:(id)a8 version:(unint64_t)a9 expectsResponse:(BOOL)a10 onInterface:(int64_t)a11 withCompletion:(id)a12
{
  v26 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a12;
  if (a10)
  {
    [(APSCourierConnectionManager *)self _startFilterMessageTimerOnInterface:a11];
    v24 = [(APSCourierConnectionManager *)self outgoingFilterQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000AA140;
    v27[3] = &unk_100188B90;
    v27[4] = self;
    v28 = v26;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v33 = v22;
    v34 = a9;
    v35 = a11;
    [v24 enqueueSendBlock:v27 completionBlock:v23];
  }

  else
  {
    v25 = [(APSCourierConnectionManager *)self courierConnection];
    [v25 sendFilterMessageWithEnabledHashes:v26 ignoredHashes:v18 opportunisticHashes:v19 nonWakingHashes:v20 pausedHashes:v21 token:v22 version:a9 onInterface:a11];
  }
}

- (void)sendConnectMessageWithToken:(id)a3 state:(int)a4 interface:(int64_t)a5 activeInterval:(unsigned int)a6 presenceFlags:(int)a7 metadata:(id)a8 certificates:(id)a9 nonce:(id)a10 signature:(id)a11 redirectCount:(unsigned __int8)a12 withCompletion:(id)a13 onInterface:(int64_t)a14
{
  v18 = a3;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a13;
  v24 = [(APSCourierConnectionManager *)self outgoingConnectMessageQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000AA34C;
  v32[3] = &unk_100188BB8;
  v32[4] = self;
  v33 = v18;
  v40 = a4;
  v41 = a7;
  v42 = a6;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v43 = a12;
  v38 = a5;
  v39 = a14;
  v25 = v22;
  v26 = v21;
  v27 = v20;
  v28 = v19;
  v29 = v18;
  [v24 enqueueSendBlock:v32 completionBlock:v23];
}

- (void)sendConnectMessageWithToken:(id)a3 interface:(int64_t)a4 activeInterval:(unsigned int)a5 presenceFlags:(int)a6 metadata:(id)a7 certificates:(id)a8 nonce:(id)a9 signature:(id)a10 hostCertificateInfo:(id)a11 redirectCount:(unsigned __int8)a12 tcpHandshakeTimeMilliseconds:(double)a13 dnsResolveTimeMilliseconds:(double)a14 tlsHandshakeTimeMilliseconds:(double)a15 consecutiveConnectionFailureReason:(id)a16 withCompletion:(id)a17 onInterface:(int64_t)a18
{
  v24 = a3;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v30 = a16;
  v31 = a17;
  v32 = [(APSCourierConnectionManager *)self outgoingConnectMessageQueue];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000AA5D4;
  v43[3] = &unk_100188BE0;
  v43[4] = self;
  v44 = v24;
  v50 = v30;
  v51 = a4;
  v56 = a5;
  v57 = a6;
  v45 = v25;
  v46 = v26;
  v47 = v27;
  v48 = v28;
  v58 = a12;
  v52 = a13;
  v53 = a14;
  v54 = a15;
  v49 = v29;
  v55 = a18;
  v33 = v30;
  v34 = v29;
  v35 = v28;
  v36 = v27;
  v37 = v26;
  v38 = v25;
  v39 = v24;
  [v32 enqueueSendBlock:v43 completionBlock:v31];
}

- (void)sendConnectMessageWithToken:(id)a3 state:(int)a4 presenceFlags:(int)a5 metadata:(id)a6 certificates:(id)a7 nonce:(id)a8 signature:(id)a9 hostCertificateInfo:(id)a10 redirectCount:(unsigned __int8)a11 withCompletion:(id)a12 onInterface:(int64_t)a13
{
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a12;
  v24 = [(APSCourierConnectionManager *)self outgoingConnectMessageQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000AA87C;
  v33[3] = &unk_100188C08;
  v33[4] = self;
  v34 = v17;
  v41 = a4;
  v42 = a5;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v43 = a11;
  v39 = v22;
  v40 = a13;
  v25 = v22;
  v26 = v21;
  v27 = v20;
  v28 = v19;
  v29 = v18;
  v30 = v17;
  [v24 enqueueSendBlock:v33 completionBlock:v23];
}

- (BOOL)isKeepAliveProxyConfiguredOnInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(a3) = [v4 isKeepAliveProxyConfiguredOnInterface:a3];

  return a3;
}

- (BOOL)isKeepAliveProxyConfiguredOnAnyInterface
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 isKeepAliveProxyConfiguredOnAnyInterface];

  return v3;
}

- (BOOL)keepAliveV2SupportedOnInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  LOBYTE(a3) = [v4 keepAliveV2SupportedOnInterface:a3];

  return a3;
}

- (unsigned)redirectCount
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 redirectCount];

  return v3;
}

- (void)stopManagerOnInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  [v4 stopManagerOnInterface:a3];
}

- (void)recalculateCriticalReliability
{
  v4 = [(APSCourierConnectionManager *)self delegate];
  v5 = [v4 courierConnectionManagerClientsWantsCriticalReliability];

  if (self->_enableCriticalReliability != v5)
  {
    self->_enableCriticalReliability = v5;
    v6 = +[APSLog courier];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v7 = "enabled";
      }

      else
      {
        v7 = "disabled";
      }

      v8 = [(APSEnvironment *)self->_environment domain];
      *buf = 138412802;
      v14 = self;
      v15 = 2080;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Critical reliability for is now %s for '%@'", buf, 0x20u);
    }

    [(APSNetworkMonitor *)self->_networkMonitor setCriticalReliability:self->_enableCriticalReliability];
    criticalReliabilityPowerAssertion = self->_criticalReliabilityPowerAssertion;
    if (v5)
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
    v11 = self;
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

- (void)setKeepAliveConfiguration:(unint64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  [v4 setKeepAliveConfiguration:a3];
}

- (void)_criticalReliabilityTimerFired
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ _criticalReliabilityTimerFired", &v4, 0xCu);
  }

  [(APSCourierConnectionManager *)self refreshCriticalReliabilityTimerWithShortKeepAlive:0];
}

- (BOOL)isPiggybacking
{
  v2 = [(APSCourierConnectionManager *)self networkMonitor];
  v3 = [v2 isPiggybacking];

  return v3;
}

- (BOOL)isKeepAliveProxyConfiguredOnAnyConnection
{
  v2 = [(APSCourierConnectionManager *)self courierConnection];
  v3 = [v2 isKeepAliveProxyConfiguredOnAnyInterface];

  return v3;
}

- (void)sendMessageTransportAcknowledgeMessageOnInterface:(int64_t)a3
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  [v4 sendMessageTransportAcknowledgeMessageOnInterface:a3];
}

- (void)prepareForSleep
{
  v3 = [(APSCourierConnectionManager *)self courierConnection];
  [v3 stopManagers];

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
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: prepareForDarkWake", &v7, 0xCu);
  }

  v4 = [(APSCourierConnectionManager *)self courierConnection];
  if ([v4 hasOpenConnection])
  {
    v5 = [(APSCourierConnectionManager *)self courierConnection];
    v6 = [v5 isConnected];

    if ((v6 & 1) == 0)
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
    v12 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: prepareForFullWake", &v11, 0xCu);
  }

  v4 = [(APSCourierConnectionManager *)self courierConnection];
  v5 = [v4 isConnected];

  if (v5 || (-[APSCourierConnectionManager courierConnection](self, "courierConnection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasOpenConnection], v6, (v7 & 1) != 0))
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

  v8 = [(APSCourierConnectionManager *)self courierConnection];
  if ([v8 hasOpenConnection])
  {
    v9 = [(APSCourierConnectionManager *)self courierConnection];
    v10 = [v9 isConnected];

    if ((v10 & 1) == 0)
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
    v7 = self;
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

- (void)_resetInterfacePreferenceTimerFired:(id)a3
{
  v4 = +[APSLog courier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Timer fired to reset the interface", &v8, 0xCu);
  }

  [(APSCourierConnectionManager *)self _clearResetInterfacePreferenceTimer];
  if (self->_interfacePreference)
  {
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Switching to preferred interface", &v8, 0xCu);
    }

    [(APSCourierConnectionManager *)self _useInteractivePowerAssertionIfNeededWithReason:@"switching to preferred interface"];
    self->_interfacePreference = 0;
    v6 = [(APSCourierConnectionManager *)self courierConnection];
    v7 = [v6 isConnected];

    if (v7)
    {
      [(APSCourierConnectionManager *)self disconnectAllStreamsWithReason:103];
    }

    [(APSCourierConnectionManager *)self adjustConnectionsIfNeeded];
  }
}

- (void)_useInteractivePowerAssertionIfNeededWithReason:(id)a3
{
  v4 = a3;
  v5 = [(APSCourierConnectionManager *)self courierConnection];
  v6 = [v5 isConnected];

  if (v6)
  {
    v7 = [(APSCourierConnectionManager *)self delegate];
    v8 = [v7 courierConnectionManagerClientsHaveInteractivePushDuringSleepEnabled];

    if (v8)
    {
      v9 = +[APSLog courier];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = self;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Enabling interactive power assertions due to %@", &v10, 0x16u);
      }

      [APSNoOpPowerAssertion setUseInteractivePowerAssertion:1];
    }
  }
}

- (BOOL)_neededToSwitchToKeepAliveProxyInterface
{
  v3 = [(APSCourierConnectionManager *)self courierConnection];
  v4 = [v3 isConnectedOnInterface:1];

  if (v4)
  {
    if (!+[APSNWTCPStream isKeepAliveProxyFeatureEnabled])
    {
      return 0;
    }

    v5 = [(APSCourierConnectionManager *)self courierConnection];
    v6 = [v5 isKeepAliveProxyConfiguredOnInterface:1];

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v7 = [(APSCourierConnectionManager *)self courierConnection];
    v8 = [v7 isConnectedOnInterface:0];

    if (!v8)
    {
      return 0;
    }

    if (!+[APSNWTCPStream isKeepAliveProxyFeatureEnabled])
    {
      return 0;
    }

    v9 = [(APSCourierConnectionManager *)self courierConnection];
    v10 = [v9 isKeepAliveProxyConfiguredOnInterface:0];

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
    v5 = self;
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
  v4 = [(APSEnvironment *)self->_environment domain];
  v5 = [(APSCourierConnectionManager *)self courierConnection];
  v6 = [v5 countConnectedInterfaces];
  v7 = [(APSCourierConnectionManager *)self courierConnection];
  v8 = [v7 connectionDebugInfo];
  v9 = APSPrettyPrintCollection();
  v10 = [NSString stringWithFormat:@"<%@ %p, domain=%@, connectedInterfaces=%lu, connectionInfo=%@>", v3, self, v4, v6, v9];

  return v10;
}

- (id)aps_prettyDescription
{
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  v30 = [v4 connectionDebugInfo];

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
    v12 = [v30 objectForKeyedSubscript:v11];
    v34[2] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
    v14 = [v13 mutableCopy];
    v15 = sub_1000067F8(v5);
    [v32 setObject:v14 forKeyedSubscript:v15];

    if (v7)
    {
    }

    v16 = [(APSCourierConnectionManager *)self environment];
    v17 = [(APSCourierConnectionManager *)self _shouldOffloadToAOP:v5 environment:v16];

    if (v17)
    {
      v18 = [(APSCourierConnectionManager *)self courierConnection];
      if ([v18 isConnectionOffloadedOnInterface:v5])
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
      v18 = sub_1000067F8(v5);
      v20 = [v32 objectForKeyedSubscript:v18];
      [v20 setObject:@"Not Supported" forKeyedSubscript:@"isOffloaded"];
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v31 & 1) != 0);
  v22 = [(APSEnvironment *)self->_environment domain];
  v23 = [(APSCourierConnectionManager *)self courierConnection];
  v24 = [v23 countConnectedInterfaces];
  v25 = APSPrettyPrintCollection();
  v26 = [(APSCourierConnectionManager *)self serverTimeTracker];
  v27 = APSPrettyPrintObject();
  v28 = [NSString stringWithFormat:@"<domain=%@, connectedInterfaces=%lu, info=%@, serverTime=%@>", v22, v24, v25, v27];

  return v28;
}

- (id)JSONDebugState
{
  v2 = self;
  v30[0] = @"connection status";
  v3 = [(APSCourierConnectionManager *)self courierConnection];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isConnected]);
  v31[0] = v4;
  v30[1] = @"enabled";
  v5 = [NSNumber numberWithBool:v2->_enabled];
  v31[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  v27 = [v6 mutableCopy];

  v7 = 0;
  v8 = 1;
  v25 = v2;
  do
  {
    v9 = v8;
    v10 = [(APSCourierConnectionManager *)v2 courierConnection];
    v11 = [v10 isConnectedOnInterface:v7];

    if (v11)
    {
      v28[0] = @"serverHostName";
      v12 = [(APSCourierConnectionManager *)v2 courierConnection];
      v26 = [v12 serverHostnameForInterface:v7];
      v29[0] = v26;
      v28[1] = @"serverPort";
      v13 = [(APSCourierConnectionManager *)v2 courierConnection];
      v14 = [v13 serverPortForInterface:v7];
      v29[1] = v14;
      v28[2] = @"serverIP";
      v15 = [(APSCourierConnectionManager *)v2 courierConnection];
      v16 = [v15 serverAddressForInterface:v7];
      v29[2] = v16;
      v28[3] = @"connectionTime";
      v17 = [(APSCourierConnectionManager *)v2 connectionTimeForInterface:v7];
      v29[3] = v17;
      v28[4] = @"keepAliveInterval";
      [(APSCourierConnectionManager *)v2 currentKeepAliveIntervalOnInterface:v7];
      v19 = [NSString stringWithFormat:@"%.0f", v18];
      v29[4] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5];
      v21 = sub_1000067F8(v7);
      [v27 setObject:v20 forKeyedSubscript:v21];

      v2 = v25;
    }

    else
    {
      v12 = sub_1000067F8(v7);
      [v27 setObject:&__NSDictionary0__struct forKeyedSubscript:v12];
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

- (void)appendPrettyStatusToStatusPrinter:(id)a3
{
  v25 = a3;
  v4 = [(APSCourierConnectionManager *)self courierConnection];
  [v25 appendDescription:@"connection status" BOOLValue:{objc_msgSend(v4, "isConnected")}];

  [v25 pushIndent];
  [v25 appendDescription:@"enabled" BOOLValue:self->_enabled];
  [v25 pushIndent];
  v5 = [(APSCourierConnectionManager *)self courierConnection];
  [v25 appendDescription:@"noncellular connected" BOOLValue:{objc_msgSend(v5, "isConnectedOnInterface:", 1)}];

  v6 = [(APSCourierConnectionManager *)self courierConnection];
  v7 = [v6 isConnectedOnInterface:1];

  if (v7)
  {
    [v25 pushIndent];
    v8 = [(APSCourierConnectionManager *)self courierConnection];
    v9 = [v8 serverHostnameForInterface:1];
    [v25 appendDescription:@"server hostname" stringValue:v9];

    v10 = [(APSCourierConnectionManager *)self courierConnection];
    v11 = [v10 serverPortForInterface:1];
    [v25 appendDescription:@"server port" unsignedIntegerValue:{objc_msgSend(v11, "unsignedLongLongValue")}];

    v12 = [(APSCourierConnectionManager *)self courierConnection];
    v13 = [v12 serverAddressForInterface:1];
    [v25 appendDescription:@"server ip" stringValue:v13];

    v14 = [(APSCourierConnectionManager *)self connectionTimeForInterface:1];
    [v14 doubleValue];
    [v25 appendDescription:@"connection time" timeIntervalValue:?];

    [v25 popIndent];
  }

  v15 = [(APSCourierConnectionManager *)self courierConnection];
  [v25 appendDescription:@"wwan connected" BOOLValue:{objc_msgSend(v15, "isConnectedOnInterface:", 0)}];

  v16 = [(APSCourierConnectionManager *)self courierConnection];
  v17 = [v16 isConnectedOnInterface:0];

  if (v17)
  {
    [v25 pushIndent];
    v18 = [(APSCourierConnectionManager *)self courierConnection];
    v19 = [v18 serverHostnameForInterface:0];
    [v25 appendDescription:@"server hostname" stringValue:v19];

    v20 = [(APSCourierConnectionManager *)self courierConnection];
    v21 = [v20 serverPortForInterface:0];
    [v25 appendDescription:@"server port" unsignedIntegerValue:{objc_msgSend(v21, "unsignedLongLongValue")}];

    v22 = [(APSCourierConnectionManager *)self courierConnection];
    v23 = [v22 serverAddressForInterface:0];
    [v25 appendDescription:@"server ip" stringValue:v23];

    v24 = [(APSCourierConnectionManager *)self connectionTimeForInterface:0];
    [v24 doubleValue];
    [v25 appendDescription:@"connection time" timeIntervalValue:?];

    [v25 popIndent];
  }

  if (self->_consecutiveConnectionFailureCount)
  {
    [v25 appendDescription:@"consecutive connection failures" unsignedIntegerValue:?];
    if (self->_lastConnectionAttempt)
    {
      [v25 appendDescription:@"last connection attempt" dateValue:?];
    }
  }

  [v25 popIndent];
  [v25 appendDescription:@"keep alive proxying" enabledValue:{+[APSNWTCPStream isKeepAliveProxyFeatureEnabled](APSNWTCPStream, "isKeepAliveProxyFeatureEnabled")}];
  if (+[APSNWTCPStream isKeepAliveProxyFeatureEnabled])
  {
    [v25 appendDescription:@"request keep alive proxying" BOOLValue:{-[APSCourierConnectionManager _requestKeepAliveProxy](self, "_requestKeepAliveProxy")}];
  }

  [v25 popIndent];
}

- (id)connectionTimeForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v4 = self->_connectionTime[a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setConnectionTime:(id)a3 forInterface:(int64_t)a4
{
  v7 = a3;
  if (a4 <= 1)
  {
    v8 = v7;
    objc_storeStrong(&self->_connectionTime[a4], a3);
    v7 = v8;
  }
}

- (id)maxMessageSizeForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v6 = self->_maxMessageSizes[a3];
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

- (void)setMaxMessageSize:(id)a3 forInterface:(int64_t)a4
{
  v7 = a3;
  if (a4 <= 1)
  {
    v8 = v7;
    objc_storeStrong(&self->_maxMessageSizes[a4], a3);
    v7 = v8;
  }
}

- (id)maxLargeMessageSizeForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v6 = self->_maxLargeMessageSizes[a3];
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

- (void)setMaxLargeMessageSize:(id)a3 forInterface:(int64_t)a4
{
  v7 = a3;
  if (a4 <= 1)
  {
    v8 = v7;
    objc_storeStrong(&self->_maxLargeMessageSizes[a4], a3);
    v7 = v8;
  }
}

- (int64_t)interfaceConstraintForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    return [(APSCourierConnection *)self->_courierConnection interfaceConstraintForInterface:?];
  }

  else
  {
    return 0;
  }
}

- (void)offloadHeuristics:(id)a3 offloadDisabledOnInterface:(int64_t)a4
{
  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(a4);
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Heuristics told us that offloading is disabled for interface %@.  Disconnecting...", &v8, 0x16u);
  }

  [(APSCourierConnectionManager *)self _stopOffloadingToAOP];
}

- (void)offloadHeuristics:(id)a3 offloadEnabledOnInterface:(int64_t)a4
{
  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(a4);
    v15 = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Heuristics told us that offloading is now available for interface %@. Disconnecting from AP...", &v15, 0x16u);
  }

  v8 = +[NSMutableDictionary dictionary];
  v9 = [(APSCourierConnectionManager *)self courierConnection];
  v10 = [v9 keepAliveCacheForInterface:0];
  [v8 setObject:v10 forKeyedSubscript:&off_100197A58];

  v11 = [(APSCourierConnectionManager *)self courierConnection];
  v12 = [v11 keepAliveCacheForInterface:1];
  [v8 setObject:v12 forKeyedSubscript:&off_100197A70];

  v13 = [(APSCourierConnectionManager *)self carrierBundleHelper];
  LODWORD(v12) = [v13 BOOLValueFromPushBundleForKey:APSForceKeepAliveV1Key error:0];

  v14 = [(APSCourierConnectionManager *)self connectionOffloader];
  [v14 resumeOffloadingWithCacheDictionary:v8 supportsKeepAliveV2:v12 ^ 1];

  [(APSCourierConnectionManager *)self _disconnectStreamForInterface:a4 withReason:27];
}

@end