@interface APSCourierConnection
- (APSCourierConnection)initWithEnvironment:(id)environment;
- (BOOL)didPushCauseWake;
- (BOOL)didPushCauseWakeOnInterface:(int64_t)interface;
- (BOOL)hasEstablishedConnectionOnInterface:(int64_t)interface;
- (BOOL)isConnected;
- (BOOL)isConnectedOnInterface:(int64_t)interface;
- (BOOL)isConnectionOffloadedOnInterface:(int64_t)interface;
- (BOOL)isConnectionOffloadingViableOnInterface:(int64_t)interface;
- (BOOL)isExpensiveToUseInterface:(int64_t)interface;
- (BOOL)isKeepAliveProxyConfiguredOnAnyInterface;
- (BOOL)isKeepAliveProxyConfiguredOnInterface:(int64_t)interface;
- (BOOL)isKeepAliveProxySupportedOnSocketOnInterface:(int64_t)interface;
- (BOOL)isPackedFormatOnInterface:(int64_t)interface;
- (BOOL)isSuspendedOnInterface:(int64_t)interface;
- (BOOL)keepAliveV2SupportedOnInterface:(int64_t)interface;
- (BOOL)parseMessage:(id)message parameters:(id *)parameters isInvalid:(BOOL *)invalid lengthParsed:(unint64_t *)parsed onInterface:(int64_t)interface;
- (BOOL)shouldClientScheduleReconnectDueToFailureOnInterface:(int64_t)interface;
- (BOOL)shouldConnectOnInterface:(int64_t)interface;
- (NSDictionary)connectionDebugInfo;
- (NSString)ifname;
- (NSString)tcpInfoDescription;
- (double)currentKeepAliveIntervalOnInterface:(int64_t)interface;
- (double)keepAliveGracePeriodOnInterface:(int64_t)interface;
- (double)minimumKeepAliveInterval;
- (id)TCPStreamWithEnvironment:(id)environment;
- (id)_currentStream;
- (id)currentKeepAliveStateOnInterface:(int64_t)interface;
- (id)interfaceNameForInterface:(int64_t)interface;
- (id)objectForKey:(id)key onInterface:(int64_t)interface;
- (id)pcInterfaceMonitorOnInterface:(int64_t)interface;
- (id)serverAddressForInterface:(int64_t)interface;
- (id)serverHostnameForInterface:(int64_t)interface;
- (id)serverIPAddressForInterface:(int64_t)interface;
- (id)serverPortForInterface:(int64_t)interface;
- (id)streamForInterface:(int64_t)interface;
- (id)tcpInfoDescriptionForInterface:(int64_t)interface;
- (id)usingCachedIPAddressOnInterface:(int64_t)interface;
- (int)currentGrowthStageOnInterface:(int64_t)interface;
- (int)lastKeepAliveActionOnInterface:(int64_t)interface;
- (int)nwInterfaceTypeForInterface:(int64_t)interface;
- (int64_t)_interfaceForConnectionManager:(id)manager;
- (int64_t)_interfaceForProtocolParser:(id)parser;
- (int64_t)_interfaceForStream:(id)stream;
- (int64_t)connectingInterface;
- (int64_t)interfaceConstraintForInterface:(int64_t)interface;
- (int64_t)nextConnectionAttemptInterface;
- (int64_t)preferredInterface;
- (unint64_t)countConnectedInterfaces;
- (unint64_t)countOfGrowthActionsOnInterface:(int64_t)interface;
- (unint64_t)countOpenConnections;
- (void)__updateConnectionManagerKeepAliveIntervalNonCellular;
- (void)__updateConnectionManagerKeepAliveIntervalWWAN;
- (void)_connectionEstablishTimerFired:(id)fired;
- (void)_handleDualModeState;
- (void)_keepAliveResponseTimerFired:(id)fired;
- (void)_prepareToParseOutgoingDataOnInterface:(int64_t)interface;
- (void)_updateConnectionManagerKeepAliveIntervalNonCellular;
- (void)_updateConnectionManagerKeepAliveIntervalWWAN;
- (void)clearConnectionEstablishTimerOnInterface:(int64_t)interface;
- (void)clearKeepAliveResponseTimerOnInterface:(int64_t)interface;
- (void)closeStreamForInterface:(int64_t)interface;
- (void)dealloc;
- (void)holdPowerAssertionUntilStreamsQuiesce;
- (void)protocolParser:(id)parser receiveAPNSPackError:(id)error;
- (void)sendConnectMessageWithToken:(id)token interface:(int64_t)interface activeInterval:(unsigned int)interval presenceFlags:(int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)nonce signature:(id)self0 hostCertificateInfo:(id)self1 redirectCount:(unsigned __int8)self2 tcpHandshakeTimeMilliseconds:(double)self3 dnsResolveTimeMilliseconds:(double)self4 tlsHandshakeTimeMilliseconds:(double)self5 consecutiveConnectionFailureReason:(id)self6 onInterface:(int64_t)self7 numberOfPSKToRequest:(unint64_t)self8;
- (void)sendConnectMessageWithToken:(id)token state:(int)state presenceFlags:(int)flags interface:(int64_t)interface activeInterval:(unsigned int)interval metadata:(id)metadata certificates:(id)certificates nonce:(id)self0 signature:(id)self1 redirectCount:(unsigned __int8)self2 onInterface:(int64_t)self3;
- (void)sendConnectMessageWithToken:(id)token state:(int)state presenceFlags:(int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)self0 redirectCount:(unsigned __int8)self1 onInterface:(int64_t)self2;
- (void)sendFilterMessageWithEnabledHashes:(id)hashes ignoredHashes:(id)ignoredHashes opportunisticHashes:(id)opportunisticHashes nonWakingHashes:(id)wakingHashes pausedHashes:(id)pausedHashes token:(id)token version:(unint64_t)version onInterface:(int64_t)self0;
- (void)sendKeepAliveMessageWithMetadata:(id)metadata onInterface:(int64_t)interface;
- (void)sendMessageTransportAcknowledgeMessageOnInterface:(int64_t)interface;
- (void)setConnectionAttemptsInExpensiveConditions:(id)conditions;
- (void)setDelegate:(id)delegate;
- (void)setIsConnecting:(BOOL)connecting onInterface:(int64_t)interface;
- (void)setIsDualChannelAllowed:(BOOL)allowed;
- (void)setIsSuspended:(BOOL)suspended onInterface:(int64_t)interface;
- (void)setKeepAliveConfiguration:(unint64_t)configuration;
- (void)setKeepAliveGracePeriod:(double)period onInterface:(int64_t)interface;
- (void)setKeepAliveV2Supported:(BOOL)supported onInterface:(int64_t)interface;
- (void)setObject:(id)object forKey:(id)key onInterface:(int64_t)interface;
- (void)setPowerOptimizationsForExpensiveNetworkingDisabled:(BOOL)disabled;
- (void)setRemainsConnectedWhenWWANSuspends:(BOOL)suspends;
- (void)setServerStatsExpectedKeepAlive:(double)alive onInterface:(int64_t)interface;
- (void)setServerStatsMaxKeepAlive:(double)alive onInterface:(int64_t)interface;
- (void)setServerStatsMinKeepAlive:(double)alive onInterface:(int64_t)interface;
- (void)setUsingCachedIPAddress:(id)address onInterface:(int64_t)interface;
- (void)setUsingServerStatsAggressively:(BOOL)aggressively onInterface:(int64_t)interface;
- (void)setWifiKeepAliveEarlyFireConstantInterval:(double)interval;
- (void)startConnectionEstablishTimerOnInterface:(int64_t)interface;
- (void)startKeepAliveResponseTimerOnInterface:(int64_t)interface shortInterval:(BOOL)interval;
- (void)stopAndResetManagerOnInterface:(int64_t)interface;
- (void)stopManagerOnInterface:(int64_t)interface;
- (void)stopManagers;
- (void)tcpStream:(id)stream hasDeterminedServerHostname:(id)hostname;
- (void)tcpStream:(id)stream receivedOffloadInfo:(id)info;
- (void)tcpStreamDidFailToFindKeepAliveProxyInterface:(id)interface;
- (void)tcpStreamDidFailToForceKeepAliveProxyInterface:(id)interface;
- (void)updateConnectionManagerKeepAliveIntervalOnInterface:(int64_t)interface;
- (void)writeDataInBackground:(id)background;
- (void)writeDataInBackground:(id)background onInterface:(int64_t)interface;
@end

@implementation APSCourierConnection

- (unint64_t)countConnectedInterfaces
{
  v2 = 0;
  v3 = 0;
  streams = self->_streams;
  v5 = 1;
  do
  {
    v6 = v5;
    isConnected = [(APSTCPStream *)streams[v2] isConnected];
    v5 = 0;
    v3 += isConnected;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  return v3;
}

- (BOOL)isConnected
{
  v2 = 0;
  v3 = 0;
  streams = self->_streams;
  do
  {
    isConnected = [(APSTCPStream *)streams[v3] isConnected];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (!isConnected);
  return isConnected;
}

- (void)_handleDualModeState
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (self->_isDualChannelAllowed)
    {
      v3 = @"YES";
    }

    v6 = 138412546;
    selfCopy8 = self;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: handleDualModeState isDualChannelAllowed %@", &v6, 0x16u);
  }

  if (![(APSCourierConnection *)self isDualChannelAllowed])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy8 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ dual channel is no longer allowed", &v6, 0xCu);
    }

    if ([(APSTCPStream *)self->_streams[0] isConnected])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        selfCopy8 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ WWAN is connected; to be consistent, closing the non-cellular connection", &v6, 0xCu);
      }

      [(APSCourierConnection *)self stopAndResetManagerOnInterface:1];
      [(APSCourierConnectionDelegate *)self->_delegate courierConnection:self disconnectStreamOnInterface:1 withReason:5];
    }

    if ([(APSTCPStream *)self->_streams[1] isConnected])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        selfCopy8 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ NonCellular is connected; to be consistent, closing the wwan connection", &v6, 0xCu);
      }

      [(APSCourierConnection *)self stopAndResetManagerOnInterface:0];
      [(APSCourierConnectionDelegate *)self->_delegate courierConnection:self disconnectStreamOnInterface:0 withReason:5];
    }

    v4 = self->_streams[0];
    if (v4)
    {
      if (([(APSTCPStream *)v4 isConnected]& 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        selfCopy8 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ WWAN is connecting; to be consistent, closing the non-cellular connection", &v6, 0xCu);
      }

      [(APSCourierConnection *)self stopAndResetManagerOnInterface:1];
      [(APSCourierConnectionDelegate *)self->_delegate courierConnection:self disconnectStreamOnInterface:1 withReason:5];
    }

    v5 = self->_streams[1];
    if (v5)
    {
      if (([(APSTCPStream *)v5 isConnected]& 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        selfCopy8 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ NonCellular is connecting; to be consistent, closing the wwan connection", &v6, 0xCu);
      }

      [(APSCourierConnection *)self stopAndResetManagerOnInterface:0];
      [(APSCourierConnectionDelegate *)self->_delegate courierConnection:self disconnectStreamOnInterface:0 withReason:5];
    }

    if ([(PCConnectionManager *)self->_connectionManagers[0] isRunning])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        selfCopy8 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ WWAN's connection manager is running. To be consistent, stopping WiFi's manager", &v6, 0xCu);
      }

      [(APSCourierConnection *)self stopAndResetManagerOnInterface:1];
    }

    if ([(PCConnectionManager *)self->_connectionManagers[1] isRunning])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        selfCopy8 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ WiFi's connection manager is running. To be consistent, stopping WWAN's manager", &v6, 0xCu);
      }

      [(APSCourierConnection *)self stopAndResetManagerOnInterface:0];
    }
  }
}

- (int64_t)preferredInterface
{
  if (([(APSTCPStream *)self->_streams[1] isConnected]& 1) != 0)
  {
    return 1;
  }

  if ([(APSTCPStream *)self->_streams[0] isConnected])
  {
    return 0;
  }

  return 3;
}

- (APSCourierConnection)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v26.receiver = self;
  v26.super_class = APSCourierConnection;
  v5 = [(APSCourierConnection *)&v26 init];
  v6 = v5;
  if (v5)
  {
    v5->_lastAttemptedInterface = 3;
    domain = [environmentCopy domain];
    v8 = [domain copy];
    domain = v6->_domain;
    v6->_domain = v8;

    v10 = 0;
    v6->_redirectCount = 0;
    v6->_disconnectReason = 0;
    v11 = APSBundleIdentifier;
    connectionManagers = v6->_connectionManagers;
    v13 = 1;
    do
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [NSString alloc];
      domain2 = [environmentCopy domain];
      v17 = sub_1000067F8(v10);
      v18 = [v15 initWithFormat:@"%@(%@)-%@", v11, domain2, v17];

      priority = [environmentCopy priority];
      v20 = v13 & 1;
      v21 = 2;
      if ((v13 & 1) == 0)
      {
        v21 = 3;
      }

      if (priority)
      {
        v22 = v21;
      }

      else
      {
        v22 = v10;
      }

      v23 = [[PCConnectionManager alloc] initWithConnectionClass:0 interfaceIdentifier:v10 ^ 1 guidancePriority:v22 delegate:v6 serviceIdentifier:v18];
      v24 = connectionManagers[v10];
      connectionManagers[v10] = v23;

      [(PCConnectionManager *)connectionManagers[v10] setOnlyAllowedStyle:0];
      objc_autoreleasePoolPop(v14);
      v13 = 0;
      v10 = 1;
    }

    while (v20);
    v6->_maxExpensiveConditionsConnectionAttempts = 3;
    v6->_expensiveConditionsBackOffInterval = 600.0;
  }

  return v6;
}

- (void)dealloc
{
  v2 = 0;
  streams = self->_streams;
  parsers = self->_parsers;
  usingCachedIPAddress = self->_usingCachedIPAddress;
  connectionManagers = self->_connectionManagers;
  keepAliveTimers = self->_keepAliveTimers;
  keepAlivePowerAssertions = self->_keepAlivePowerAssertions;
  connectionEstablishTimers = self->_connectionEstablishTimers;
  connectionEstablishPowerAssertions = self->_connectionEstablishPowerAssertions;
  v11 = 1;
  do
  {
    v12 = v11;
    [(APSTCPStream *)streams[v2] setDelegate:0];
    v13 = streams[v2];
    streams[v2] = 0;

    v14 = parsers[v2];
    parsers[v2] = 0;

    v15 = usingCachedIPAddress[v2];
    usingCachedIPAddress[v2] = 0;

    [(PCConnectionManager *)connectionManagers[v2] stopManager];
    v16 = keepAliveTimers[v2];
    if (v16)
    {
      [(NSTimer *)v16 invalidate];
    }

    v17 = keepAlivePowerAssertions[v2];
    if (v17)
    {
      keepAlivePowerAssertions[v2] = 0;
    }

    v18 = connectionEstablishTimers[v2];
    if (v18)
    {
      [(NSTimer *)v18 invalidate];
    }

    v19 = connectionEstablishPowerAssertions[v2];
    if (v19)
    {
      connectionEstablishPowerAssertions[v2] = 0;
    }

    v11 = 0;
    v2 = 1;
  }

  while ((v12 & 1) != 0);
  redirectHost = self->_redirectHost;
  self->_redirectHost = 0;

  v22.receiver = self;
  v22.super_class = APSCourierConnection;
  [(APSCourierConnection *)&v22 dealloc];
}

- (id)streamForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v4 = self->_streams[interface];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_interfaceForProtocolParser:(id)parser
{
  if (self->_parsers[1] == parser)
  {
    return 1;
  }

  if (self->_parsers[0] == parser)
  {
    return 0;
  }

  return 3;
}

- (void)_prepareToParseOutgoingDataOnInterface:(int64_t)interface
{
  if (!self->_informingOfWrite)
  {
    v5 = [(APSCourierConnection *)self streamForInterface:?];
    isConnected = [v5 isConnected];

    if (isConnected)
    {
      self->_informingOfWrite = 1;
      delegate = [(APSCourierConnection *)self delegate];
      [delegate courierConnection:self aboutToWriteDataOnConnectedInterface:interface];

      self->_informingOfWrite = 0;
    }
  }
}

- (int64_t)_interfaceForStream:(id)stream
{
  if (self->_streams[1] == stream)
  {
    return 1;
  }

  if (self->_streams[0] == stream)
  {
    return 0;
  }

  return 3;
}

- (int64_t)_interfaceForConnectionManager:(id)manager
{
  if (self->_connectionManagers[1] == manager)
  {
    return 1;
  }

  if (self->_connectionManagers[0] == manager)
  {
    return 0;
  }

  return 3;
}

- (id)usingCachedIPAddressOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v4 = self->_usingCachedIPAddress[interface];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUsingCachedIPAddress:(id)address onInterface:(int64_t)interface
{
  addressCopy = address;
  if (interface >= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(interface);
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = addressCopy;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked to set setCachedIPAddress %@ on invalid interface %@", &v11, 0x20u);
  }

  usingCachedIPAddress = self->_usingCachedIPAddress;
  if (usingCachedIPAddress[interface] != addressCopy)
  {
    v9 = [(NSString *)addressCopy copy];
    v10 = usingCachedIPAddress[interface];
    usingCachedIPAddress[interface] = v9;
  }
}

- (void)setIsConnecting:(BOOL)connecting onInterface:(int64_t)interface
{
  connectingCopy = connecting;
  if (interface < 2)
  {
    self->_isConnecting[interface] = connecting;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (connectingCopy)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = sub_1000067F8(interface);
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked to set isConnecting %@ on invalid interface %@", &v9, 0x20u);
  }
}

- (void)setIsSuspended:(BOOL)suspended onInterface:(int64_t)interface
{
  suspendedCopy = suspended;
  if (interface < 2)
  {
    v9 = self->_streams[interface];

    [(APSTCPStream *)v9 setIsSuspended:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (suspendedCopy)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = sub_1000067F8(interface);
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked to set isSuspended %@ on invalid interface %@", &v10, 0x20u);
  }
}

- (BOOL)isSuspendedOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    return [(APSTCPStream *)self->_streams[interface] isSuspended];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isConnectionOffloadingViableOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    return [(APSTCPStream *)self->_streams[interface] isOffloadingViable];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isConnectionOffloadedOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    return [(APSTCPStream *)self->_streams[interface] isOffloadedConnection];
  }

  else
  {
    return 0;
  }
}

- (void)setRemainsConnectedWhenWWANSuspends:(BOOL)suspends
{
  if (self->_remainsConnectedWhenWWANSuspends != suspends)
  {
    self->_remainsConnectedWhenWWANSuspends = suspends;
    [(PCConnectionManager *)self->_connectionManagers[0] setAlwaysWantsInterfaceChangeCallbacks:?];
    v5 = self->_connectionManagers[1];
    remainsConnectedWhenWWANSuspends = self->_remainsConnectedWhenWWANSuspends;

    [(PCConnectionManager *)v5 setAlwaysWantsInterfaceChangeCallbacks:remainsConnectedWhenWWANSuspends];
  }
}

- (void)setPowerOptimizationsForExpensiveNetworkingDisabled:(BOOL)disabled
{
  if (self->_powerOptimizationsForExpensiveNetworkingDisabled != disabled)
  {
    self->_powerOptimizationsForExpensiveNetworkingDisabled = disabled;
    [(PCConnectionManager *)self->_connectionManagers[0] setPowerOptimizationsForExpensiveNetworkingDisabled:?];
    v5 = self->_connectionManagers[1];
    powerOptimizationsForExpensiveNetworkingDisabled = self->_powerOptimizationsForExpensiveNetworkingDisabled;

    [(PCConnectionManager *)v5 setPowerOptimizationsForExpensiveNetworkingDisabled:powerOptimizationsForExpensiveNetworkingDisabled];
  }
}

- (void)setWifiKeepAliveEarlyFireConstantInterval:(double)interval
{
  if (self->_wifiKeepAliveEarlyFireConstantInterval != interval)
  {
    self->_wifiKeepAliveEarlyFireConstantInterval = interval;
    [(PCConnectionManager *)self->_connectionManagers[1] setNonCellularEarlyFireConstantInterval:?];
  }
}

- (void)setKeepAliveConfiguration:(unint64_t)configuration
{
  v4 = 60.0;
  if (configuration != 1)
  {
    v4 = 0.0;
  }

  if (configuration)
  {
    v5 = v4;
  }

  else
  {
    v5 = 300.0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[APSCourierConnection setKeepAliveConfiguration:]";
    v8 = 2048;
    v9 = v5;
    v10 = 2048;
    v11 = 0x417E133800000000;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: interval %f timeout %f", &v6, 0x20u);
  }

  [(PCConnectionManager *)self->_connectionManagers[1] setKeepAliveOverrideOnInterface:0 interval:v5 timeout:31536000.0];
}

- (void)setConnectionAttemptsInExpensiveConditions:(id)conditions
{
  conditionsCopy = conditions;
  connectionAttemptsInExpensiveConditions = self->_connectionAttemptsInExpensiveConditions;
  p_connectionAttemptsInExpensiveConditions = &self->_connectionAttemptsInExpensiveConditions;
  if (connectionAttemptsInExpensiveConditions != conditionsCopy)
  {
    v8 = conditionsCopy;
    objc_storeStrong(p_connectionAttemptsInExpensiveConditions, conditions);
    conditionsCopy = v8;
  }
}

- (BOOL)shouldConnectOnInterface:(int64_t)interface
{
  v5 = objc_autoreleasePoolPush();
  if (self->_powerOptimizationsForExpensiveNetworkingDisabled)
  {
    goto LABEL_5;
  }

  redirectHost = [(APSCourierConnection *)self redirectHost];
  if (!redirectHost && ![(APSCourierConnection *)self establishingOffload])
  {
    if (![(APSCourierConnection *)self isExpensiveToUseInterface:interface])
    {
      goto LABEL_5;
    }

    if (!self->_connectionAttemptsInExpensiveConditions)
    {
      v9 = objc_alloc_init(NSMutableArray);
      connectionAttemptsInExpensiveConditions = self->_connectionAttemptsInExpensiveConditions;
      self->_connectionAttemptsInExpensiveConditions = v9;
    }

    v11 = +[NSMutableIndexSet indexSet];
    if ([(NSMutableArray *)self->_connectionAttemptsInExpensiveConditions count])
    {
      v12 = 0;
      do
      {
        v13 = +[NSDate date];
        v14 = [(NSMutableArray *)self->_connectionAttemptsInExpensiveConditions objectAtIndexedSubscript:v12];
        [v13 timeIntervalSinceDate:v14];
        v16 = v15;

        if (v16 < 0.0 || v16 > self->_expensiveConditionsBackOffInterval)
        {
          [v11 addIndex:v12];
        }

        ++v12;
      }

      while ([(NSMutableArray *)self->_connectionAttemptsInExpensiveConditions count]> v12);
    }

    [(NSMutableArray *)self->_connectionAttemptsInExpensiveConditions removeObjectsAtIndexes:v11];
    v18 = +[NSDate date];
    if ([(NSMutableArray *)self->_connectionAttemptsInExpensiveConditions count]>= self->_maxExpensiveConditionsConnectionAttempts)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_1000067F8(interface);
        maxExpensiveConditionsConnectionAttempts = self->_maxExpensiveConditionsConnectionAttempts;
        expensiveConditionsBackOffInterval = self->_expensiveConditionsBackOffInterval;
        v28 = 138413058;
        selfCopy2 = self;
        v30 = 2112;
        v31 = v22;
        v32 = 2048;
        v33 = maxExpensiveConditionsConnectionAttempts;
        v34 = 2048;
        v35 = expensiveConditionsBackOffInterval;
        v25 = "%@ Device is in bad cellular link quality and has exceeded max connection attempts allowed. Not attempting to connect! {interface:%@, maxConnectionAttemptsAllowed:%lu, expensiveConditionsBackOffInterval:%f}";
LABEL_26:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v25, &v28, 0x2Au);
      }
    }

    else
    {
      if (!-[NSMutableArray count](self->_connectionAttemptsInExpensiveConditions, "count") || (-[NSMutableArray lastObject](self->_connectionAttemptsInExpensiveConditions, "lastObject"), v19 = objc_claimAutoreleasedReturnValue(), [v18 timeIntervalSinceDate:v19], v21 = v20, v19, v21 > llround(self->_expensiveConditionsBackOffInterval / self->_maxExpensiveConditionsConnectionAttempts)))
      {
        [(NSMutableArray *)self->_connectionAttemptsInExpensiveConditions addObject:v18];
        v7 = 1;
LABEL_28:

        goto LABEL_6;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_1000067F8(interface);
        v26 = self->_maxExpensiveConditionsConnectionAttempts;
        v27 = self->_expensiveConditionsBackOffInterval;
        v28 = 138413058;
        selfCopy2 = self;
        v30 = 2112;
        v31 = v22;
        v32 = 2048;
        v33 = v26;
        v34 = 2048;
        v35 = v27;
        v25 = "%@ Device is in bad cellular link quality and hasn't passed reconnect threshold. Not attempting to connect! {interface:%@, maxConnectionAttemptsAllowed:%lu, expensiveConditionsBackOffInterval:%f}";
        goto LABEL_26;
      }
    }

    v7 = 0;
    goto LABEL_28;
  }

LABEL_5:
  v7 = 1;
LABEL_6:
  objc_autoreleasePoolPop(v5);
  return v7;
}

- (id)TCPStreamWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [[APSNWTCPStream alloc] initWithEnvironment:environmentCopy];

  return v4;
}

- (void)writeDataInBackground:(id)background onInterface:(int64_t)interface
{
  backgroundCopy = background;
  if (interface <= 1 && (v7 = self->_streams[interface]) != 0)
  {
    v8 = v7;
    [(APSTCPStream *)v7 writeDataInBackground:backgroundCopy];
    environment = [(APSTCPStream *)v8 environment];
    name = [environment name];
    v11 = [name isEqualToString:APSEnvironmentProduction];

    if (v11)
    {
      v12 = +[APSOffloadHeuristics shared];
      [v12 sentBytes:objc_msgSend(backgroundCopy onInterface:{"length"), interface}];
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000067F8(interface);
      v14 = 138412546;
      selfCopy = self;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ Asked to write data but our stream for interface %@ is invalid", &v14, 0x16u);
    }

    v8 = 0;
  }
}

- (void)writeDataInBackground:(id)background
{
  backgroundCopy = background;
  [(APSCourierConnection *)self writeDataInBackground:backgroundCopy onInterface:[(APSCourierConnection *)self preferredInterface]];
}

- (void)closeStreamForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v4 = (&self->super.isa + interface);
    [v4[2] close];
    [v4[2] setDelegate:0];
    v5 = v4[2];
    v4[2] = 0;

    v6 = v4[4];
    v4[4] = 0;
  }
}

- (void)stopManagers
{
  [(PCConnectionManager *)self->_connectionManagers[0] stopManager];
  v3 = self->_connectionManagers[1];

  [(PCConnectionManager *)v3 stopManager];
}

- (void)stopManagerOnInterface:(int64_t)interface
{
  if (interface == 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to stopManager on None, stopping on all interfaces.", &v7, 0xCu);
    }

    [(PCConnectionManager *)self->_connectionManagers[0] stopManager];
    [(PCConnectionManager *)self->_connectionManagers[1] stopManager];
  }

  else if (interface < 2)
  {
    v6 = self->_connectionManagers[interface];

    [(PCConnectionManager *)v6 stopManager];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1000067F8(interface);
    v7 = 138412546;
    selfCopy2 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to stopManager with invalid interface %@", &v7, 0x16u);
  }
}

- (void)stopAndResetManagerOnInterface:(int64_t)interface
{
  if (interface == 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to stopAndResetManager on None, stopping on all interfaces.", &v7, 0xCu);
    }

    [(PCConnectionManager *)self->_connectionManagers[0] stopAndResetManager];
    [(PCConnectionManager *)self->_connectionManagers[1] stopAndResetManager];
  }

  else if (interface < 2)
  {
    v6 = self->_connectionManagers[interface];

    [(PCConnectionManager *)v6 stopAndResetManager];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1000067F8(interface);
    v7 = 138412546;
    selfCopy2 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to stopAndResetManager with invalid interface %@", &v7, 0x16u);
  }
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

- (BOOL)isExpensiveToUseInterface:(int64_t)interface
{
  v3 = [(APSCourierConnection *)self pcInterfaceMonitorOnInterface:interface];
  isNetworkingPowerExpensiveToUse = [v3 isNetworkingPowerExpensiveToUse];

  return isNetworkingPowerExpensiveToUse;
}

- (void)setServerStatsMaxKeepAlive:(double)alive onInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v8 = self->_connectionManagers[interface];

    [(PCConnectionManager *)v8 setServerStatsMaxKeepAliveInterval:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(interface);
    v9 = 138412802;
    selfCopy = self;
    v11 = 2048;
    aliveCopy = alive;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to set server stats max keep alive interval with interval %f with invalid interface %@", &v9, 0x20u);
  }
}

- (void)setServerStatsMinKeepAlive:(double)alive onInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v8 = self->_connectionManagers[interface];

    [(PCConnectionManager *)v8 setServerStatsMinKeepAliveInterval:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(interface);
    v9 = 138412802;
    selfCopy = self;
    v11 = 2048;
    aliveCopy = alive;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to set server stats min keep alive interval with interval %f with invalid interface %@", &v9, 0x20u);
  }
}

- (void)setServerStatsExpectedKeepAlive:(double)alive onInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v8 = self->_connectionManagers[interface];

    [(PCConnectionManager *)v8 setServerStatsExpectedKeepAliveInterval:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(interface);
    v9 = 138412802;
    selfCopy = self;
    v11 = 2048;
    aliveCopy = alive;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to set server stats expected keep alive interval with interval %f with invalid interface %@", &v9, 0x20u);
  }
}

- (void)setUsingServerStatsAggressively:(BOOL)aggressively onInterface:(int64_t)interface
{
  aggressivelyCopy = aggressively;
  if (interface < 2)
  {
    v9 = self->_connectionManagers[interface];

    [(PCConnectionManager *)v9 setUsingServerStatsAggressively:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (aggressivelyCopy)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = sub_1000067F8(interface);
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to set using server stats aggressively %@ with invalid interface %@", &v10, 0x20u);
  }
}

- (double)keepAliveGracePeriodOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v7 = self->_connectionManagers[interface];

    [(PCConnectionManager *)v7 keepAliveGracePeriod];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000067F8(interface);
      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to get GracePeriod with invalid interface %@", &v8, 0x16u);
    }

    return 0.0;
  }

  return result;
}

- (void)setKeepAliveGracePeriod:(double)period onInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v8 = self->_connectionManagers[interface];

    [(PCConnectionManager *)v8 setKeepAliveGracePeriod:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(interface);
    v9 = 138412802;
    selfCopy = self;
    v11 = 2048;
    periodCopy = period;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to setManager with GracePeriod:%f with invalid interface %@", &v9, 0x20u);
  }
}

- (void)updateConnectionManagerKeepAliveIntervalOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    if (interface)
    {

      [(APSCourierConnection *)self _updateConnectionManagerKeepAliveIntervalNonCellular];
    }

    else
    {

      [(APSCourierConnection *)self _updateConnectionManagerKeepAliveIntervalWWAN];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1000067F8(interface);
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to update keepAliveInterval with invalid interface %@", &v6, 0x16u);
  }
}

- (void)setKeepAliveV2Supported:(BOOL)supported onInterface:(int64_t)interface
{
  if (interface < 2)
  {
    self->_keepAliveV2Supported[interface] = supported;
    if (!supported)
    {

      [(APSCourierConnection *)self setKeepAliveGracePeriod:interface onInterface:0.0];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000067F8(interface);
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to change keepAliveV2Supported with invalid interface %@", &v7, 0x16u);
  }
}

- (BOOL)keepAliveV2SupportedOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    return self->_keepAliveV2Supported[interface];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000067F8(interface);
      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to get keepAliveV2Supported with invalid interface %@", &v8, 0x16u);
    }

    return 1;
  }
}

- (int)lastKeepAliveActionOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    v7 = self->_connectionManagers[interface];

    return [(PCConnectionManager *)v7 lastProcessedAction];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000067F8(interface);
      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to get lastKeepAliveAction with invalid interface %@", &v8, 0x16u);
    }

    return 0;
  }
}

- (void)__updateConnectionManagerKeepAliveIntervalWWAN
{
  if ([(PCConnectionManager *)self->_connectionManagers[0] isRunning])
  {
    v3 = self->_connectionManagers[0];

    [(PCConnectionManager *)v3 resumeManagerWithAction:2];
  }
}

- (void)_updateConnectionManagerKeepAliveIntervalWWAN
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__updateConnectionManagerKeepAliveIntervalWWAN" object:0];

  [(APSCourierConnection *)self performSelector:"__updateConnectionManagerKeepAliveIntervalWWAN" withObject:0 afterDelay:5.0];
}

- (void)__updateConnectionManagerKeepAliveIntervalNonCellular
{
  if ([(PCConnectionManager *)self->_connectionManagers[1] isRunning])
  {
    v3 = self->_connectionManagers[1];

    [(PCConnectionManager *)v3 resumeManagerWithAction:2];
  }
}

- (void)_updateConnectionManagerKeepAliveIntervalNonCellular
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__updateConnectionManagerKeepAliveIntervalNonCellular" object:0];

  [(APSCourierConnection *)self performSelector:"__updateConnectionManagerKeepAliveIntervalNonCellular" withObject:0 afterDelay:5.0];
}

- (void)startConnectionEstablishTimerOnInterface:(int64_t)interface
{
  v5 = objc_autoreleasePoolPush();
  if (interface <= 1)
  {
    [(APSCourierConnection *)self clearConnectionEstablishTimerOnInterface:interface];
    v6 = APSBundleIdentifier;
    domain = self->_domain;
    v8 = sub_1000067F8(interface);
    v9 = [NSString stringWithFormat:@"%@-connectionestablish-%@-%@", v6, domain, v8];

    v10 = [[APSPowerAssertion alloc] initWithName:v9 category:213 holdDuration:40.0];
    v11 = &self->super.isa + interface;
    v12 = v11[22];
    v11[22] = v10;

    v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"_connectionEstablishTimerFired:" selector:0 userInfo:0 repeats:30.0];
    v14 = v11[20];
    v11[20] = v13;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)clearConnectionEstablishTimerOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    connectionEstablishTimers = self->_connectionEstablishTimers;
    v6 = self->_connectionEstablishTimers[interface];
    if (v6)
    {
      [(NSTimer *)v6 invalidate];
      v7 = connectionEstablishTimers[interface];
      connectionEstablishTimers[interface] = 0;
    }

    v8 = self->_connectionEstablishPowerAssertions[interface];
    if (v8)
    {
      self->_connectionEstablishPowerAssertions[interface] = 0;
    }
  }
}

- (void)_connectionEstablishTimerFired:(id)fired
{
  firedCopy = fired;
  v5 = firedCopy;
  v6 = 3;
  if (self->_connectionEstablishTimers[0] == firedCopy)
  {
    v6 = 0;
  }

  if (self->_connectionEstablishTimers[1] == firedCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 1)
  {
    v9 = firedCopy;
    [(APSCourierConnection *)self clearConnectionEstablishTimerOnInterface:v7];
    delegate = self->_delegate;
    firedCopy = objc_opt_respondsToSelector();
    v5 = v9;
    if (firedCopy)
    {
      firedCopy = [(APSCourierConnectionDelegate *)self->_delegate courierConnection:self connectionEstablishTimerFiredOnInterface:v7];
      v5 = v9;
    }
  }

  _objc_release_x1(firedCopy, v5);
}

- (void)startKeepAliveResponseTimerOnInterface:(int64_t)interface shortInterval:(BOOL)interval
{
  intervalCopy = interval;
  v7 = objc_autoreleasePoolPush();
  if (interface <= 1)
  {
    [(APSCourierConnection *)self clearKeepAliveResponseTimerOnInterface:interface];
    v8 = APSBundleIdentifier;
    domain = self->_domain;
    v10 = sub_1000067F8(interface);
    v11 = [NSString stringWithFormat:@"%@-keepalive-%@-%@", v8, domain, v10];

    v12 = [[APSPowerAssertion alloc] initWithName:v11 category:215];
    v13 = &self->super.isa + interface;
    v14 = v13[18];
    v13[18] = v12;

    v15 = 20.0;
    if (intervalCopy)
    {
      v15 = 5.0;
    }

    v16 = [NSTimer scheduledTimerWithTimeInterval:self target:"_keepAliveResponseTimerFired:" selector:0 userInfo:0 repeats:v15];
    v17 = v13[12];
    v13[12] = v16;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)clearKeepAliveResponseTimerOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    keepAliveTimers = self->_keepAliveTimers;
    v6 = self->_keepAliveTimers[interface];
    if (v6)
    {
      [(NSTimer *)v6 invalidate];
      v7 = keepAliveTimers[interface];
      keepAliveTimers[interface] = 0;
    }

    v8 = self->_keepAlivePowerAssertions[interface];
    if (v8)
    {
      self->_keepAlivePowerAssertions[interface] = 0;
    }
  }
}

- (void)_keepAliveResponseTimerFired:(id)fired
{
  firedCopy = fired;
  v5 = firedCopy;
  v6 = 3;
  if (self->_keepAliveTimers[0] == firedCopy)
  {
    v6 = 0;
  }

  if (self->_keepAliveTimers[1] == firedCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 1)
  {
    v9 = firedCopy;
    [(APSCourierConnection *)self clearKeepAliveResponseTimerOnInterface:v7];
    delegate = self->_delegate;
    firedCopy = objc_opt_respondsToSelector();
    v5 = v9;
    if (firedCopy)
    {
      firedCopy = [(APSCourierConnectionDelegate *)self->_delegate courierConnection:self keepAliveResponseTimerFiredOnInterface:v7];
      v5 = v9;
    }
  }

  _objc_release_x1(firedCopy, v5);
}

- (void)setObject:(id)object forKey:(id)key onInterface:(int64_t)interface
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy && interface <= 1)
  {
    contexts = self->_contexts;
    v10 = contexts[interface];
    if (objectCopy)
    {
      if (!v10)
      {
        v11 = [[NSMutableDictionary alloc] initWithCapacity:1];
        v12 = contexts[interface];
        contexts[interface] = v11;

        v10 = contexts[interface];
      }

      [(NSMutableDictionary *)v10 setObject:objectCopy forKey:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)v10 removeObjectForKey:keyCopy];
      if (![(NSMutableDictionary *)contexts[interface] count])
      {
        v13 = contexts[interface];
        contexts[interface] = 0;
      }
    }
  }
}

- (id)objectForKey:(id)key onInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v6 = [(NSMutableDictionary *)self->_contexts[interface] objectForKey:key, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = self->_delegate;
  p_delegate = &self->_delegate;
  if (delegate != delegateCopy)
  {
    v8 = delegateCopy;
    objc_storeStrong(p_delegate, delegate);
    delegateCopy = v8;
  }
}

- (id)_currentStream
{
  preferredInterface = [(APSCourierConnection *)self preferredInterface];
  if (preferredInterface <= 1)
  {
    v4 = self->_streams[preferredInterface];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serverAddressForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    serverIPAddress = [(APSTCPStream *)self->_streams[interface] serverIPAddress];
  }

  else
  {
    serverIPAddress = 0;
  }

  return serverIPAddress;
}

- (id)serverPortForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    v4 = [NSNumber numberWithUnsignedShort:[(APSTCPStream *)self->_streams[interface] serverPort]];
  }

  else
  {
    v4 = &off_100197A40;
  }

  return v4;
}

- (NSString)tcpInfoDescription
{
  _currentStream = [(APSCourierConnection *)self _currentStream];
  tcpInfoDescription = [_currentStream tcpInfoDescription];

  return tcpInfoDescription;
}

- (id)tcpInfoDescriptionForInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    tcpInfoDescription = [(APSTCPStream *)self->_streams[interface] tcpInfoDescription];
  }

  else
  {
    tcpInfoDescription = 0;
  }

  return tcpInfoDescription;
}

- (int64_t)nextConnectionAttemptInterface
{
  if (([(APSTCPStream *)self->_streams[1] isConnected]& 1) != 0)
  {
    return 0;
  }

  if (([(APSTCPStream *)self->_streams[0] isConnected]& 1) != 0)
  {
    return 1;
  }

  if (self->_streams[1])
  {
    return 0;
  }

  if (self->_streams[0])
  {
    return 1;
  }

  lastAttemptedInterface = self->_lastAttemptedInterface;
  v5 = 3;
  if (!lastAttemptedInterface)
  {
    v5 = 1;
  }

  if (lastAttemptedInterface == 1)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (int64_t)connectingInterface
{
  v2 = 0;
  streams = self->_streams;
  v4 = 1;
  v5 = 3;
  do
  {
    while (1)
    {
      v6 = v4;
      v7 = streams[v2];
      if (v7)
      {
        break;
      }

      v4 = 0;
      v2 = 1;
      if ((v6 & 1) == 0)
      {
        return v5;
      }
    }

    v8 = v2;
    isConnected = [(APSTCPStream *)v7 isConnected];
    v4 = 0;
    v2 = 1;
  }

  while ((isConnected & v6 & 1) != 0);
  if (isConnected)
  {
    return 3;
  }

  else
  {
    return v8;
  }
}

- (id)serverIPAddressForInterface:(int64_t)interface
{
  if (interface <= 1 && (v5 = self->_streams[interface]) != 0)
  {
    v6 = v5;
    serverIPAddress = [(APSTCPStream *)v5 serverIPAddress];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(interface);
      v10 = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked for serverIPAddress but we have no current stream for interface %@", &v10, 0x16u);
    }

    serverIPAddress = 0;
  }

  return serverIPAddress;
}

- (id)serverHostnameForInterface:(int64_t)interface
{
  if (interface <= 1 && (v5 = self->_streams[interface]) != 0)
  {
    v6 = v5;
    serverHostname = [(APSTCPStream *)v5 serverHostname];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(interface);
      v10 = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked for serverHostname but we have no current stream for interface %@", &v10, 0x16u);
    }

    serverHostname = 0;
  }

  return serverHostname;
}

- (id)interfaceNameForInterface:(int64_t)interface
{
  if (interface <= 1 && (v5 = self->_streams[interface]) != 0)
  {
    v6 = v5;
    interfaceName = [(APSTCPStream *)v5 interfaceName];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(interface);
      v10 = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked for interfaceName but we have no current stream for interface %@", &v10, 0x16u);
    }

    interfaceName = 0;
  }

  return interfaceName;
}

- (int)nwInterfaceTypeForInterface:(int64_t)interface
{
  v3 = [(APSCourierConnection *)self interfaceNameForInterface:interface];
  v4 = v3;
  if (v3)
  {
    [v3 UTF8String];
    v5 = nw_interface_create_with_name();
    type = nw_interface_get_type(v5);
  }

  else
  {
    type = nw_interface_type_other;
  }

  return type;
}

- (BOOL)isConnectedOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    return [(APSTCPStream *)self->_streams[interface] isConnected];
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasEstablishedConnectionOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    return [(APSTCPStream *)self->_streams[interface] hasEstablishedConnection];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)countOpenConnections
{
  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = [(APSCourierConnection *)self hasOpenConnectionOnInterface:v3];
    v5 = 0;
    v4 += v7;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  return v4;
}

- (BOOL)isKeepAliveProxySupportedOnSocketOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    return [(APSTCPStream *)self->_streams[interface] isKeepAliveProxySupportedOnSocketInterface];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isKeepAliveProxyConfiguredOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    return [(APSTCPStream *)self->_streams[interface] isKeepAliveProxyConfigured];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isKeepAliveProxyConfiguredOnAnyInterface
{
  v2 = 0;
  v3 = 0;
  streams = self->_streams;
  do
  {
    isKeepAliveProxyConfigured = [(APSTCPStream *)streams[v3] isKeepAliveProxyConfigured];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (!isKeepAliveProxyConfigured);
  return isKeepAliveProxyConfigured;
}

- (NSString)ifname
{
  preferredInterface = [(APSCourierConnection *)self preferredInterface];
  if (preferredInterface > 1)
  {
    ifname = 0;
  }

  else
  {
    ifname = [(APSTCPStream *)self->_streams[preferredInterface] ifname];
  }

  return ifname;
}

- (double)minimumKeepAliveInterval
{
  preferredInterface = [(APSCourierConnection *)self preferredInterface];
  connectionManagers = self->_connectionManagers;
  if (preferredInterface < 2)
  {
    connectionManagers = &self->_connectionManagers[preferredInterface];
  }

  v5 = *connectionManagers;

  [(PCConnectionManager *)v5 minimumKeepAliveInterval];
  return result;
}

- (double)currentKeepAliveIntervalOnInterface:(int64_t)interface
{
  connectionManagers = self->_connectionManagers;
  if (interface <= 1)
  {
    connectionManagers = &self->_connectionManagers[interface];
  }

  [(PCConnectionManager *)*connectionManagers currentKeepAliveInterval];
  return result;
}

- (id)currentKeepAliveStateOnInterface:(int64_t)interface
{
  if (interface < 2)
  {
    currentKeepAliveState = [(PCConnectionManager *)self->_connectionManagers[interface] currentKeepAliveState];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown interface, not reporting a keep alive state.", v5, 2u);
    }

    currentKeepAliveState = 0;
  }

  return currentKeepAliveState;
}

- (int)currentGrowthStageOnInterface:(int64_t)interface
{
  connectionManagers = self->_connectionManagers;
  if (interface <= 1)
  {
    connectionManagers = &self->_connectionManagers[interface];
  }

  return [(PCConnectionManager *)*connectionManagers currentGrowthStage];
}

- (BOOL)shouldClientScheduleReconnectDueToFailureOnInterface:(int64_t)interface
{
  if (interface <= 1)
  {
    return [(PCConnectionManager *)self->_connectionManagers[interface] shouldClientScheduleReconnectDueToFailure];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)countOfGrowthActionsOnInterface:(int64_t)interface
{
  connectionManagers = self->_connectionManagers;
  if (interface <= 1)
  {
    connectionManagers = &self->_connectionManagers[interface];
  }

  return [(PCConnectionManager *)*connectionManagers countOfGrowthActions];
}

- (void)setIsDualChannelAllowed:(BOOL)allowed
{
  if (self->_isDualChannelAllowed != allowed)
  {
    self->_isDualChannelAllowed = allowed;
  }

  [(APSCourierConnection *)self _handleDualModeState];
}

- (BOOL)didPushCauseWake
{
  v2 = 0;
  streams = self->_streams;
  v4 = 1;
  do
  {
    while (1)
    {
      v5 = v4;
      v6 = streams[v2];
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      v4 = 0;
      result = 0;
      v2 = 1;
      if ((v5 & 1) == 0)
      {
        return result;
      }
    }

    result = [(APSTCPStream *)streams[v2] didPushCauseWake];
    if (result)
    {
      break;
    }

    v4 = 0;
    v2 = 1;
  }

  while (((v5 ^ 1) & 1) == 0);
  return result;
}

- (BOOL)didPushCauseWakeOnInterface:(int64_t)interface
{
  if (interface > 1)
  {
    return 0;
  }

  streams = self->_streams;
  v6 = self->_streams[interface];
  return (objc_opt_respondsToSelector() & 1) != 0 && ([(APSTCPStream *)streams[interface] didPushCauseWake]& 1) != 0;
}

- (int64_t)interfaceConstraintForInterface:(int64_t)interface
{
  if (interface <= 1 && (v3 = self->_streams[interface]) != 0)
  {
    return [(APSTCPStream *)v3 interfaceConstraint];
  }

  else
  {
    return 0;
  }
}

- (void)holdPowerAssertionUntilStreamsQuiesce
{
  v2 = 0;
  streams = self->_streams;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = streams[v2];
    if (objc_opt_respondsToSelector())
    {
      [(APSTCPStream *)streams[v2] holdPowerAssertionUntilStreamQuiesces];
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
}

- (void)sendConnectMessageWithToken:(id)token state:(int)state presenceFlags:(int)flags interface:(int64_t)interface activeInterval:(unsigned int)interval metadata:(id)metadata certificates:(id)certificates nonce:(id)self0 signature:(id)self1 redirectCount:(unsigned __int8)self2 onInterface:(int64_t)self3
{
  signatureCopy = signature;
  nonceCopy = nonce;
  certificatesCopy = certificates;
  metadataCopy = metadata;
  tokenCopy = token;
  [(APSCourierConnection *)self _prepareToParseOutgoingDataOnInterface:onInterface];
  v20 = self->_parsers[onInterface];
  v21 = [(APSCourierConnection *)self streamForInterface:interface];
  interfaceConstraint = [v21 interfaceConstraint];
  lastConnected = [(APSCourierConnection *)self lastConnected];
  LODWORD(v25) = [(APSCourierConnection *)self disconnectReason];
  LOBYTE(v24) = count;
  v31 = [(APSProtocolParser *)v20 copyConnectMessageWithToken:tokenCopy state:state presenceFlags:flags interface:interface interfaceConstraint:interfaceConstraint activeInterval:interval metadata:metadataCopy certificates:certificatesCopy nonce:nonceCopy signature:signatureCopy redirectCount:v24 lastConnected:lastConnected disconnectReason:v25];

  [(APSCourierConnection *)self writeDataInBackground:v31 onInterface:onInterface];
}

- (void)sendConnectMessageWithToken:(id)token state:(int)state presenceFlags:(int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)self0 redirectCount:(unsigned __int8)self1 onInterface:(int64_t)self2
{
  infoCopy = info;
  signatureCopy = signature;
  nonceCopy = nonce;
  certificatesCopy = certificates;
  metadataCopy = metadata;
  tokenCopy = token;
  [(APSCourierConnection *)self _prepareToParseOutgoingDataOnInterface:interface];
  v23 = self->_parsers[interface];
  lastConnected = [(APSCourierConnection *)self lastConnected];
  LODWORD(v26) = [(APSCourierConnection *)self disconnectReason];
  LOBYTE(v25) = count;
  v29 = [(APSProtocolParser *)v23 copyConnectMessageWithToken:tokenCopy state:state presenceFlags:flags metadata:metadataCopy certificates:certificatesCopy nonce:nonceCopy signature:signatureCopy hostCertificateInfo:infoCopy redirectCount:v25 lastConnected:lastConnected disconnectReason:v26];

  [(APSCourierConnection *)self writeDataInBackground:v29 onInterface:interface];
}

- (void)sendConnectMessageWithToken:(id)token interface:(int64_t)interface activeInterval:(unsigned int)interval presenceFlags:(int)flags metadata:(id)metadata certificates:(id)certificates nonce:(id)nonce signature:(id)self0 hostCertificateInfo:(id)self1 redirectCount:(unsigned __int8)self2 tcpHandshakeTimeMilliseconds:(double)self3 dnsResolveTimeMilliseconds:(double)self4 tlsHandshakeTimeMilliseconds:(double)self5 consecutiveConnectionFailureReason:(id)self6 onInterface:(int64_t)self7 numberOfPSKToRequest:(unint64_t)self8
{
  reasonCopy = reason;
  infoCopy = info;
  signatureCopy = signature;
  nonceCopy = nonce;
  certificatesCopy = certificates;
  metadataCopy = metadata;
  tokenCopy = token;
  [(APSCourierConnection *)self _prepareToParseOutgoingDataOnInterface:onInterface];
  v31 = &self->super.isa + onInterface;
  if (v31[15])
  {
    v49 = nonceCopy;
    v51 = certificatesCopy;
    v53 = metadataCopy;
    v55 = tokenCopy;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v32 = sub_1000067F8(interface);
      *buf = 138412546;
      selfCopy = self;
      v63 = 2112;
      v64 = v32;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ copy presence message with APSProtocolSerialPresenceFlagEnableCachedIP on interface %@", buf, 0x16u);
    }

    v33 = v31[4];
    v48 = [(APSCourierConnection *)self streamForInterface:interface];
    interfaceConstraint = [v48 interfaceConstraint];
    lastConnected = [(APSCourierConnection *)self lastConnected];
    disconnectReason = [(APSCourierConnection *)self disconnectReason];
    isOffloadedConnection = [(APSTCPStream *)self->_streams[interface] isOffloadedConnection];
    HIDWORD(v47) = [(APSCourierConnection *)self offloadMigrationReason];
    LOBYTE(v47) = isOffloadedConnection;
    LODWORD(v46) = disconnectReason;
    LOBYTE(v45) = count;
    v38 = [(objc_class *)v33 copyConnectMessageWithToken:v55 interface:interface interfaceConstraint:interfaceConstraint presenceFlags:flags | 0x100u activeInterval:interval metadata:v53 certificates:milliseconds nonce:timeMilliseconds signature:handshakeTimeMilliseconds hostCertificateInfo:v51 redirectCount:v49 tcpHandshakeTimeMilliseconds:signatureCopy dnsResolveTimeMilliseconds:infoCopy tlsHandshakeTimeMilliseconds:v45 consecutiveConnectionFailureReason:reasonCopy lastConnected:lastConnected disconnectReason:v46 numberOfPSKToRequest:request isOffloadedConnection:v47 offloadMigrationReason:?];

    v39 = v48;
  }

  else
  {
    v52 = v31[4];
    v56 = [(APSCourierConnection *)self streamForInterface:interface];
    v40 = metadataCopy;
    interfaceConstraint2 = [v56 interfaceConstraint];
    lastConnected2 = [(APSCourierConnection *)self lastConnected];
    v41 = certificatesCopy;
    disconnectReason2 = [(APSCourierConnection *)self disconnectReason];
    v43 = nonceCopy;
    isOffloadedConnection2 = [(APSTCPStream *)self->_streams[interface] isOffloadedConnection];
    HIDWORD(v47) = [(APSCourierConnection *)self offloadMigrationReason];
    LOBYTE(v47) = isOffloadedConnection2;
    LODWORD(v46) = disconnectReason2;
    LOBYTE(v45) = count;
    v38 = [(objc_class *)v52 copyConnectMessageWithToken:tokenCopy interface:interface interfaceConstraint:interfaceConstraint2 presenceFlags:flags activeInterval:interval metadata:v40 certificates:milliseconds nonce:timeMilliseconds signature:handshakeTimeMilliseconds hostCertificateInfo:v41 redirectCount:v43 tcpHandshakeTimeMilliseconds:signatureCopy dnsResolveTimeMilliseconds:infoCopy tlsHandshakeTimeMilliseconds:v45 consecutiveConnectionFailureReason:reasonCopy lastConnected:lastConnected2 disconnectReason:v46 numberOfPSKToRequest:request isOffloadedConnection:v47 offloadMigrationReason:?];

    v39 = v56;
  }

  [(APSCourierConnection *)self writeDataInBackground:v38 onInterface:onInterface];
  [(APSCourierConnection *)self setDisconnectReason:0];
}

- (void)sendMessageTransportAcknowledgeMessageOnInterface:(int64_t)interface
{
  [(APSCourierConnection *)self _prepareToParseOutgoingDataOnInterface:?];
  v6 = self->_parsers[interface];
  copyMessageTransportAcknowledgeMessage = [(APSProtocolParser *)v6 copyMessageTransportAcknowledgeMessage];
  [(APSCourierConnection *)self writeDataInBackground:copyMessageTransportAcknowledgeMessage onInterface:interface];
}

- (void)sendKeepAliveMessageWithMetadata:(id)metadata onInterface:(int64_t)interface
{
  metadataCopy = metadata;
  [(APSCourierConnection *)self _prepareToParseOutgoingDataOnInterface:interface];
  v8 = self->_parsers[interface];
  v7 = [(APSProtocolParser *)v8 copyKeepAliveMessageWithMetadata:metadataCopy];

  [(APSCourierConnection *)self writeDataInBackground:v7 onInterface:interface];
}

- (void)sendFilterMessageWithEnabledHashes:(id)hashes ignoredHashes:(id)ignoredHashes opportunisticHashes:(id)opportunisticHashes nonWakingHashes:(id)wakingHashes pausedHashes:(id)pausedHashes token:(id)token version:(unint64_t)version onInterface:(int64_t)self0
{
  v18 = self->_parsers[interface];
  v17 = [(APSProtocolParser *)v18 copyFilterMessageWithEnabledHashes:hashes ignoredHashes:ignoredHashes opportunisticHashes:opportunisticHashes nonWakingHashes:wakingHashes pausedHashes:pausedHashes token:token version:version];
  [(APSCourierConnection *)self writeDataInBackground:v17 onInterface:interface];
}

- (BOOL)parseMessage:(id)message parameters:(id *)parameters isInvalid:(BOOL *)invalid lengthParsed:(unint64_t *)parsed onInterface:(int64_t)interface
{
  v11 = self->_parsers[interface];
  LOBYTE(parsed) = [(APSProtocolParser *)v11 parseMessage:message parameters:parameters isInvalid:invalid lengthParsed:parsed];

  return parsed;
}

- (BOOL)isPackedFormatOnInterface:(int64_t)interface
{
  v3 = self->_parsers[interface];
  isPackedFormat = [(APSProtocolParser *)v3 isPackedFormat];

  return isPackedFormat;
}

- (void)protocolParser:(id)parser receiveAPNSPackError:(id)error
{
  delegate = self->_delegate;
  errorCopy = error;
  [(APSCourierConnectionDelegate *)delegate courierConnection:self parserErrorMessage:errorCopy OnInterface:[(APSCourierConnection *)self _interfaceForProtocolParser:parser]];
}

- (void)tcpStream:(id)stream receivedOffloadInfo:(id)info
{
  delegate = self->_delegate;
  infoCopy = info;
  [(APSCourierConnectionDelegate *)delegate courierConnection:self receivedOffloadInfo:infoCopy onInterface:[(APSCourierConnection *)self _interfaceForStream:stream]];
}

- (void)tcpStream:(id)stream hasDeterminedServerHostname:(id)hostname
{
  delegate = self->_delegate;
  hostnameCopy = hostname;
  [(APSCourierConnectionDelegate *)delegate courierConnection:self hasDeterminedServerHostname:hostnameCopy onInterface:[(APSCourierConnection *)self _interfaceForStream:stream]];
}

- (void)tcpStreamDidFailToForceKeepAliveProxyInterface:(id)interface
{
  delegate = self->_delegate;
  v5 = [(APSCourierConnection *)self _interfaceForStream:interface];

  [(APSCourierConnectionDelegate *)delegate courierConnection:self failedToForceKeepAliveProxyOnInterface:v5];
}

- (void)tcpStreamDidFailToFindKeepAliveProxyInterface:(id)interface
{
  delegate = self->_delegate;
  v5 = [(APSCourierConnection *)self _interfaceForStream:interface];

  [(APSCourierConnectionDelegate *)delegate courierConnection:self failedToFindKeepAliveProxyOnInterface:v5];
}

- (NSDictionary)connectionDebugInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  connectionDebugInfo = [(APSTCPStream *)self->_streams[0] connectionDebugInfo];
  v5 = connectionDebugInfo;
  if (connectionDebugInfo)
  {
    v6 = connectionDebugInfo;
  }

  else
  {
    v6 = @"N/A";
  }

  v7 = sub_1000067F8(0);
  [v3 setObject:v6 forKeyedSubscript:v7];

  connectionDebugInfo2 = [(APSTCPStream *)self->_streams[1] connectionDebugInfo];
  v9 = connectionDebugInfo2;
  if (connectionDebugInfo2)
  {
    v10 = connectionDebugInfo2;
  }

  else
  {
    v10 = @"N/A";
  }

  v11 = sub_1000067F8(1uLL);
  [v3 setObject:v10 forKeyedSubscript:v11];

  return v3;
}

@end