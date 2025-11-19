@interface APSCourierConnection
- (APSCourierConnection)initWithEnvironment:(id)a3;
- (BOOL)didPushCauseWake;
- (BOOL)didPushCauseWakeOnInterface:(int64_t)a3;
- (BOOL)hasEstablishedConnectionOnInterface:(int64_t)a3;
- (BOOL)isConnected;
- (BOOL)isConnectedOnInterface:(int64_t)a3;
- (BOOL)isConnectionOffloadedOnInterface:(int64_t)a3;
- (BOOL)isConnectionOffloadingViableOnInterface:(int64_t)a3;
- (BOOL)isExpensiveToUseInterface:(int64_t)a3;
- (BOOL)isKeepAliveProxyConfiguredOnAnyInterface;
- (BOOL)isKeepAliveProxyConfiguredOnInterface:(int64_t)a3;
- (BOOL)isKeepAliveProxySupportedOnSocketOnInterface:(int64_t)a3;
- (BOOL)isPackedFormatOnInterface:(int64_t)a3;
- (BOOL)isSuspendedOnInterface:(int64_t)a3;
- (BOOL)keepAliveV2SupportedOnInterface:(int64_t)a3;
- (BOOL)parseMessage:(id)a3 parameters:(id *)a4 isInvalid:(BOOL *)a5 lengthParsed:(unint64_t *)a6 onInterface:(int64_t)a7;
- (BOOL)shouldClientScheduleReconnectDueToFailureOnInterface:(int64_t)a3;
- (BOOL)shouldConnectOnInterface:(int64_t)a3;
- (NSDictionary)connectionDebugInfo;
- (NSString)ifname;
- (NSString)tcpInfoDescription;
- (double)currentKeepAliveIntervalOnInterface:(int64_t)a3;
- (double)keepAliveGracePeriodOnInterface:(int64_t)a3;
- (double)minimumKeepAliveInterval;
- (id)TCPStreamWithEnvironment:(id)a3;
- (id)_currentStream;
- (id)currentKeepAliveStateOnInterface:(int64_t)a3;
- (id)interfaceNameForInterface:(int64_t)a3;
- (id)objectForKey:(id)a3 onInterface:(int64_t)a4;
- (id)pcInterfaceMonitorOnInterface:(int64_t)a3;
- (id)serverAddressForInterface:(int64_t)a3;
- (id)serverHostnameForInterface:(int64_t)a3;
- (id)serverIPAddressForInterface:(int64_t)a3;
- (id)serverPortForInterface:(int64_t)a3;
- (id)streamForInterface:(int64_t)a3;
- (id)tcpInfoDescriptionForInterface:(int64_t)a3;
- (id)usingCachedIPAddressOnInterface:(int64_t)a3;
- (int)currentGrowthStageOnInterface:(int64_t)a3;
- (int)lastKeepAliveActionOnInterface:(int64_t)a3;
- (int)nwInterfaceTypeForInterface:(int64_t)a3;
- (int64_t)_interfaceForConnectionManager:(id)a3;
- (int64_t)_interfaceForProtocolParser:(id)a3;
- (int64_t)_interfaceForStream:(id)a3;
- (int64_t)connectingInterface;
- (int64_t)interfaceConstraintForInterface:(int64_t)a3;
- (int64_t)nextConnectionAttemptInterface;
- (int64_t)preferredInterface;
- (unint64_t)countConnectedInterfaces;
- (unint64_t)countOfGrowthActionsOnInterface:(int64_t)a3;
- (unint64_t)countOpenConnections;
- (void)__updateConnectionManagerKeepAliveIntervalNonCellular;
- (void)__updateConnectionManagerKeepAliveIntervalWWAN;
- (void)_connectionEstablishTimerFired:(id)a3;
- (void)_handleDualModeState;
- (void)_keepAliveResponseTimerFired:(id)a3;
- (void)_prepareToParseOutgoingDataOnInterface:(int64_t)a3;
- (void)_updateConnectionManagerKeepAliveIntervalNonCellular;
- (void)_updateConnectionManagerKeepAliveIntervalWWAN;
- (void)clearConnectionEstablishTimerOnInterface:(int64_t)a3;
- (void)clearKeepAliveResponseTimerOnInterface:(int64_t)a3;
- (void)closeStreamForInterface:(int64_t)a3;
- (void)dealloc;
- (void)holdPowerAssertionUntilStreamsQuiesce;
- (void)protocolParser:(id)a3 receiveAPNSPackError:(id)a4;
- (void)sendConnectMessageWithToken:(id)a3 interface:(int64_t)a4 activeInterval:(unsigned int)a5 presenceFlags:(int)a6 metadata:(id)a7 certificates:(id)a8 nonce:(id)a9 signature:(id)a10 hostCertificateInfo:(id)a11 redirectCount:(unsigned __int8)a12 tcpHandshakeTimeMilliseconds:(double)a13 dnsResolveTimeMilliseconds:(double)a14 tlsHandshakeTimeMilliseconds:(double)a15 consecutiveConnectionFailureReason:(id)a16 onInterface:(int64_t)a17 numberOfPSKToRequest:(unint64_t)a18;
- (void)sendConnectMessageWithToken:(id)a3 state:(int)a4 presenceFlags:(int)a5 interface:(int64_t)a6 activeInterval:(unsigned int)a7 metadata:(id)a8 certificates:(id)a9 nonce:(id)a10 signature:(id)a11 redirectCount:(unsigned __int8)a12 onInterface:(int64_t)a13;
- (void)sendConnectMessageWithToken:(id)a3 state:(int)a4 presenceFlags:(int)a5 metadata:(id)a6 certificates:(id)a7 nonce:(id)a8 signature:(id)a9 hostCertificateInfo:(id)a10 redirectCount:(unsigned __int8)a11 onInterface:(int64_t)a12;
- (void)sendFilterMessageWithEnabledHashes:(id)a3 ignoredHashes:(id)a4 opportunisticHashes:(id)a5 nonWakingHashes:(id)a6 pausedHashes:(id)a7 token:(id)a8 version:(unint64_t)a9 onInterface:(int64_t)a10;
- (void)sendKeepAliveMessageWithMetadata:(id)a3 onInterface:(int64_t)a4;
- (void)sendMessageTransportAcknowledgeMessageOnInterface:(int64_t)a3;
- (void)setConnectionAttemptsInExpensiveConditions:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setIsConnecting:(BOOL)a3 onInterface:(int64_t)a4;
- (void)setIsDualChannelAllowed:(BOOL)a3;
- (void)setIsSuspended:(BOOL)a3 onInterface:(int64_t)a4;
- (void)setKeepAliveConfiguration:(unint64_t)a3;
- (void)setKeepAliveGracePeriod:(double)a3 onInterface:(int64_t)a4;
- (void)setKeepAliveV2Supported:(BOOL)a3 onInterface:(int64_t)a4;
- (void)setObject:(id)a3 forKey:(id)a4 onInterface:(int64_t)a5;
- (void)setPowerOptimizationsForExpensiveNetworkingDisabled:(BOOL)a3;
- (void)setRemainsConnectedWhenWWANSuspends:(BOOL)a3;
- (void)setServerStatsExpectedKeepAlive:(double)a3 onInterface:(int64_t)a4;
- (void)setServerStatsMaxKeepAlive:(double)a3 onInterface:(int64_t)a4;
- (void)setServerStatsMinKeepAlive:(double)a3 onInterface:(int64_t)a4;
- (void)setUsingCachedIPAddress:(id)a3 onInterface:(int64_t)a4;
- (void)setUsingServerStatsAggressively:(BOOL)a3 onInterface:(int64_t)a4;
- (void)setWifiKeepAliveEarlyFireConstantInterval:(double)a3;
- (void)startConnectionEstablishTimerOnInterface:(int64_t)a3;
- (void)startKeepAliveResponseTimerOnInterface:(int64_t)a3 shortInterval:(BOOL)a4;
- (void)stopAndResetManagerOnInterface:(int64_t)a3;
- (void)stopManagerOnInterface:(int64_t)a3;
- (void)stopManagers;
- (void)tcpStream:(id)a3 hasDeterminedServerHostname:(id)a4;
- (void)tcpStream:(id)a3 receivedOffloadInfo:(id)a4;
- (void)tcpStreamDidFailToFindKeepAliveProxyInterface:(id)a3;
- (void)tcpStreamDidFailToForceKeepAliveProxyInterface:(id)a3;
- (void)updateConnectionManagerKeepAliveIntervalOnInterface:(int64_t)a3;
- (void)writeDataInBackground:(id)a3;
- (void)writeDataInBackground:(id)a3 onInterface:(int64_t)a4;
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
    v7 = [(APSTCPStream *)streams[v2] isConnected];
    v5 = 0;
    v3 += v7;
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
    v5 = [(APSTCPStream *)streams[v3] isConnected];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (!v5);
  return v5;
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
    v7 = self;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: handleDualModeState isDualChannelAllowed %@", &v6, 0x16u);
  }

  if (![(APSCourierConnection *)self isDualChannelAllowed])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ dual channel is no longer allowed", &v6, 0xCu);
    }

    if ([(APSTCPStream *)self->_streams[0] isConnected])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = self;
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
        v7 = self;
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
        v7 = self;
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
        v7 = self;
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
        v7 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ WWAN's connection manager is running. To be consistent, stopping WiFi's manager", &v6, 0xCu);
      }

      [(APSCourierConnection *)self stopAndResetManagerOnInterface:1];
    }

    if ([(PCConnectionManager *)self->_connectionManagers[1] isRunning])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = self;
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

- (APSCourierConnection)initWithEnvironment:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = APSCourierConnection;
  v5 = [(APSCourierConnection *)&v26 init];
  v6 = v5;
  if (v5)
  {
    v5->_lastAttemptedInterface = 3;
    v7 = [v4 domain];
    v8 = [v7 copy];
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
      v16 = [v4 domain];
      v17 = sub_1000067F8(v10);
      v18 = [v15 initWithFormat:@"%@(%@)-%@", v11, v16, v17];

      v19 = [v4 priority];
      v20 = v13 & 1;
      v21 = 2;
      if ((v13 & 1) == 0)
      {
        v21 = 3;
      }

      if (v19)
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

- (id)streamForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v4 = self->_streams[a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_interfaceForProtocolParser:(id)a3
{
  if (self->_parsers[1] == a3)
  {
    return 1;
  }

  if (self->_parsers[0] == a3)
  {
    return 0;
  }

  return 3;
}

- (void)_prepareToParseOutgoingDataOnInterface:(int64_t)a3
{
  if (!self->_informingOfWrite)
  {
    v5 = [(APSCourierConnection *)self streamForInterface:?];
    v6 = [v5 isConnected];

    if (v6)
    {
      self->_informingOfWrite = 1;
      v7 = [(APSCourierConnection *)self delegate];
      [v7 courierConnection:self aboutToWriteDataOnConnectedInterface:a3];

      self->_informingOfWrite = 0;
    }
  }
}

- (int64_t)_interfaceForStream:(id)a3
{
  if (self->_streams[1] == a3)
  {
    return 1;
  }

  if (self->_streams[0] == a3)
  {
    return 0;
  }

  return 3;
}

- (int64_t)_interfaceForConnectionManager:(id)a3
{
  if (self->_connectionManagers[1] == a3)
  {
    return 1;
  }

  if (self->_connectionManagers[0] == a3)
  {
    return 0;
  }

  return 3;
}

- (id)usingCachedIPAddressOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v4 = self->_usingCachedIPAddress[a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUsingCachedIPAddress:(id)a3 onInterface:(int64_t)a4
{
  v6 = a3;
  if (a4 >= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(a4);
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked to set setCachedIPAddress %@ on invalid interface %@", &v11, 0x20u);
  }

  usingCachedIPAddress = self->_usingCachedIPAddress;
  if (usingCachedIPAddress[a4] != v6)
  {
    v9 = [(NSString *)v6 copy];
    v10 = usingCachedIPAddress[a4];
    usingCachedIPAddress[a4] = v9;
  }
}

- (void)setIsConnecting:(BOOL)a3 onInterface:(int64_t)a4
{
  v5 = a3;
  if (a4 < 2)
  {
    self->_isConnecting[a4] = a3;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = sub_1000067F8(a4);
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked to set isConnecting %@ on invalid interface %@", &v9, 0x20u);
  }
}

- (void)setIsSuspended:(BOOL)a3 onInterface:(int64_t)a4
{
  v5 = a3;
  if (a4 < 2)
  {
    v9 = self->_streams[a4];

    [(APSTCPStream *)v9 setIsSuspended:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = sub_1000067F8(a4);
    v10 = 138412802;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked to set isSuspended %@ on invalid interface %@", &v10, 0x20u);
  }
}

- (BOOL)isSuspendedOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    return [(APSTCPStream *)self->_streams[a3] isSuspended];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isConnectionOffloadingViableOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    return [(APSTCPStream *)self->_streams[a3] isOffloadingViable];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isConnectionOffloadedOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    return [(APSTCPStream *)self->_streams[a3] isOffloadedConnection];
  }

  else
  {
    return 0;
  }
}

- (void)setRemainsConnectedWhenWWANSuspends:(BOOL)a3
{
  if (self->_remainsConnectedWhenWWANSuspends != a3)
  {
    self->_remainsConnectedWhenWWANSuspends = a3;
    [(PCConnectionManager *)self->_connectionManagers[0] setAlwaysWantsInterfaceChangeCallbacks:?];
    v5 = self->_connectionManagers[1];
    remainsConnectedWhenWWANSuspends = self->_remainsConnectedWhenWWANSuspends;

    [(PCConnectionManager *)v5 setAlwaysWantsInterfaceChangeCallbacks:remainsConnectedWhenWWANSuspends];
  }
}

- (void)setPowerOptimizationsForExpensiveNetworkingDisabled:(BOOL)a3
{
  if (self->_powerOptimizationsForExpensiveNetworkingDisabled != a3)
  {
    self->_powerOptimizationsForExpensiveNetworkingDisabled = a3;
    [(PCConnectionManager *)self->_connectionManagers[0] setPowerOptimizationsForExpensiveNetworkingDisabled:?];
    v5 = self->_connectionManagers[1];
    powerOptimizationsForExpensiveNetworkingDisabled = self->_powerOptimizationsForExpensiveNetworkingDisabled;

    [(PCConnectionManager *)v5 setPowerOptimizationsForExpensiveNetworkingDisabled:powerOptimizationsForExpensiveNetworkingDisabled];
  }
}

- (void)setWifiKeepAliveEarlyFireConstantInterval:(double)a3
{
  if (self->_wifiKeepAliveEarlyFireConstantInterval != a3)
  {
    self->_wifiKeepAliveEarlyFireConstantInterval = a3;
    [(PCConnectionManager *)self->_connectionManagers[1] setNonCellularEarlyFireConstantInterval:?];
  }
}

- (void)setKeepAliveConfiguration:(unint64_t)a3
{
  v4 = 60.0;
  if (a3 != 1)
  {
    v4 = 0.0;
  }

  if (a3)
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

- (void)setConnectionAttemptsInExpensiveConditions:(id)a3
{
  v5 = a3;
  connectionAttemptsInExpensiveConditions = self->_connectionAttemptsInExpensiveConditions;
  p_connectionAttemptsInExpensiveConditions = &self->_connectionAttemptsInExpensiveConditions;
  if (connectionAttemptsInExpensiveConditions != v5)
  {
    v8 = v5;
    objc_storeStrong(p_connectionAttemptsInExpensiveConditions, a3);
    v5 = v8;
  }
}

- (BOOL)shouldConnectOnInterface:(int64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  if (self->_powerOptimizationsForExpensiveNetworkingDisabled)
  {
    goto LABEL_5;
  }

  v6 = [(APSCourierConnection *)self redirectHost];
  if (!v6 && ![(APSCourierConnection *)self establishingOffload])
  {
    if (![(APSCourierConnection *)self isExpensiveToUseInterface:a3])
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
        v22 = sub_1000067F8(a3);
        maxExpensiveConditionsConnectionAttempts = self->_maxExpensiveConditionsConnectionAttempts;
        expensiveConditionsBackOffInterval = self->_expensiveConditionsBackOffInterval;
        v28 = 138413058;
        v29 = self;
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
        v22 = sub_1000067F8(a3);
        v26 = self->_maxExpensiveConditionsConnectionAttempts;
        v27 = self->_expensiveConditionsBackOffInterval;
        v28 = 138413058;
        v29 = self;
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

- (id)TCPStreamWithEnvironment:(id)a3
{
  v3 = a3;
  v4 = [[APSNWTCPStream alloc] initWithEnvironment:v3];

  return v4;
}

- (void)writeDataInBackground:(id)a3 onInterface:(int64_t)a4
{
  v6 = a3;
  if (a4 <= 1 && (v7 = self->_streams[a4]) != 0)
  {
    v8 = v7;
    [(APSTCPStream *)v7 writeDataInBackground:v6];
    v9 = [(APSTCPStream *)v8 environment];
    v10 = [v9 name];
    v11 = [v10 isEqualToString:APSEnvironmentProduction];

    if (v11)
    {
      v12 = +[APSOffloadHeuristics shared];
      [v12 sentBytes:objc_msgSend(v6 onInterface:{"length"), a4}];
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000067F8(a4);
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ Asked to write data but our stream for interface %@ is invalid", &v14, 0x16u);
    }

    v8 = 0;
  }
}

- (void)writeDataInBackground:(id)a3
{
  v4 = a3;
  [(APSCourierConnection *)self writeDataInBackground:v4 onInterface:[(APSCourierConnection *)self preferredInterface]];
}

- (void)closeStreamForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v4 = (&self->super.isa + a3);
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

- (void)stopManagerOnInterface:(int64_t)a3
{
  if (a3 == 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to stopManager on None, stopping on all interfaces.", &v7, 0xCu);
    }

    [(PCConnectionManager *)self->_connectionManagers[0] stopManager];
    [(PCConnectionManager *)self->_connectionManagers[1] stopManager];
  }

  else if (a3 < 2)
  {
    v6 = self->_connectionManagers[a3];

    [(PCConnectionManager *)v6 stopManager];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1000067F8(a3);
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to stopManager with invalid interface %@", &v7, 0x16u);
  }
}

- (void)stopAndResetManagerOnInterface:(int64_t)a3
{
  if (a3 == 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to stopAndResetManager on None, stopping on all interfaces.", &v7, 0xCu);
    }

    [(PCConnectionManager *)self->_connectionManagers[0] stopAndResetManager];
    [(PCConnectionManager *)self->_connectionManagers[1] stopAndResetManager];
  }

  else if (a3 < 2)
  {
    v6 = self->_connectionManagers[a3];

    [(PCConnectionManager *)v6 stopAndResetManager];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1000067F8(a3);
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to stopAndResetManager with invalid interface %@", &v7, 0x16u);
  }
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

- (BOOL)isExpensiveToUseInterface:(int64_t)a3
{
  v3 = [(APSCourierConnection *)self pcInterfaceMonitorOnInterface:a3];
  v4 = [v3 isNetworkingPowerExpensiveToUse];

  return v4;
}

- (void)setServerStatsMaxKeepAlive:(double)a3 onInterface:(int64_t)a4
{
  if (a4 < 2)
  {
    v8 = self->_connectionManagers[a4];

    [(PCConnectionManager *)v8 setServerStatsMaxKeepAliveInterval:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(a4);
    v9 = 138412802;
    v10 = self;
    v11 = 2048;
    v12 = a3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to set server stats max keep alive interval with interval %f with invalid interface %@", &v9, 0x20u);
  }
}

- (void)setServerStatsMinKeepAlive:(double)a3 onInterface:(int64_t)a4
{
  if (a4 < 2)
  {
    v8 = self->_connectionManagers[a4];

    [(PCConnectionManager *)v8 setServerStatsMinKeepAliveInterval:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(a4);
    v9 = 138412802;
    v10 = self;
    v11 = 2048;
    v12 = a3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to set server stats min keep alive interval with interval %f with invalid interface %@", &v9, 0x20u);
  }
}

- (void)setServerStatsExpectedKeepAlive:(double)a3 onInterface:(int64_t)a4
{
  if (a4 < 2)
  {
    v8 = self->_connectionManagers[a4];

    [(PCConnectionManager *)v8 setServerStatsExpectedKeepAliveInterval:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(a4);
    v9 = 138412802;
    v10 = self;
    v11 = 2048;
    v12 = a3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to set server stats expected keep alive interval with interval %f with invalid interface %@", &v9, 0x20u);
  }
}

- (void)setUsingServerStatsAggressively:(BOOL)a3 onInterface:(int64_t)a4
{
  v5 = a3;
  if (a4 < 2)
  {
    v9 = self->_connectionManagers[a4];

    [(PCConnectionManager *)v9 setUsingServerStatsAggressively:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = sub_1000067F8(a4);
    v10 = 138412802;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to set using server stats aggressively %@ with invalid interface %@", &v10, 0x20u);
  }
}

- (double)keepAliveGracePeriodOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    v7 = self->_connectionManagers[a3];

    [(PCConnectionManager *)v7 keepAliveGracePeriod];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000067F8(a3);
      v8 = 138412546;
      v9 = self;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to get GracePeriod with invalid interface %@", &v8, 0x16u);
    }

    return 0.0;
  }

  return result;
}

- (void)setKeepAliveGracePeriod:(double)a3 onInterface:(int64_t)a4
{
  if (a4 < 2)
  {
    v8 = self->_connectionManagers[a4];

    [(PCConnectionManager *)v8 setKeepAliveGracePeriod:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(a4);
    v9 = 138412802;
    v10 = self;
    v11 = 2048;
    v12 = a3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to setManager with GracePeriod:%f with invalid interface %@", &v9, 0x20u);
  }
}

- (void)updateConnectionManagerKeepAliveIntervalOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    if (a3)
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
    v5 = sub_1000067F8(a3);
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to update keepAliveInterval with invalid interface %@", &v6, 0x16u);
  }
}

- (void)setKeepAliveV2Supported:(BOOL)a3 onInterface:(int64_t)a4
{
  if (a4 < 2)
  {
    self->_keepAliveV2Supported[a4] = a3;
    if (!a3)
    {

      [(APSCourierConnection *)self setKeepAliveGracePeriod:a4 onInterface:0.0];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000067F8(a4);
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to change keepAliveV2Supported with invalid interface %@", &v7, 0x16u);
  }
}

- (BOOL)keepAliveV2SupportedOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    return self->_keepAliveV2Supported[a3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000067F8(a3);
      v8 = 138412546;
      v9 = self;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to get keepAliveV2Supported with invalid interface %@", &v8, 0x16u);
    }

    return 1;
  }
}

- (int)lastKeepAliveActionOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    v7 = self->_connectionManagers[a3];

    return [(PCConnectionManager *)v7 lastProcessedAction];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000067F8(a3);
      v8 = 138412546;
      v9 = self;
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

- (void)startConnectionEstablishTimerOnInterface:(int64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  if (a3 <= 1)
  {
    [(APSCourierConnection *)self clearConnectionEstablishTimerOnInterface:a3];
    v6 = APSBundleIdentifier;
    domain = self->_domain;
    v8 = sub_1000067F8(a3);
    v9 = [NSString stringWithFormat:@"%@-connectionestablish-%@-%@", v6, domain, v8];

    v10 = [[APSPowerAssertion alloc] initWithName:v9 category:213 holdDuration:40.0];
    v11 = &self->super.isa + a3;
    v12 = v11[22];
    v11[22] = v10;

    v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"_connectionEstablishTimerFired:" selector:0 userInfo:0 repeats:30.0];
    v14 = v11[20];
    v11[20] = v13;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)clearConnectionEstablishTimerOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    connectionEstablishTimers = self->_connectionEstablishTimers;
    v6 = self->_connectionEstablishTimers[a3];
    if (v6)
    {
      [(NSTimer *)v6 invalidate];
      v7 = connectionEstablishTimers[a3];
      connectionEstablishTimers[a3] = 0;
    }

    v8 = self->_connectionEstablishPowerAssertions[a3];
    if (v8)
    {
      self->_connectionEstablishPowerAssertions[a3] = 0;
    }
  }
}

- (void)_connectionEstablishTimerFired:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 3;
  if (self->_connectionEstablishTimers[0] == v4)
  {
    v6 = 0;
  }

  if (self->_connectionEstablishTimers[1] == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 1)
  {
    v9 = v4;
    [(APSCourierConnection *)self clearConnectionEstablishTimerOnInterface:v7];
    delegate = self->_delegate;
    v4 = objc_opt_respondsToSelector();
    v5 = v9;
    if (v4)
    {
      v4 = [(APSCourierConnectionDelegate *)self->_delegate courierConnection:self connectionEstablishTimerFiredOnInterface:v7];
      v5 = v9;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)startKeepAliveResponseTimerOnInterface:(int64_t)a3 shortInterval:(BOOL)a4
{
  v4 = a4;
  v7 = objc_autoreleasePoolPush();
  if (a3 <= 1)
  {
    [(APSCourierConnection *)self clearKeepAliveResponseTimerOnInterface:a3];
    v8 = APSBundleIdentifier;
    domain = self->_domain;
    v10 = sub_1000067F8(a3);
    v11 = [NSString stringWithFormat:@"%@-keepalive-%@-%@", v8, domain, v10];

    v12 = [[APSPowerAssertion alloc] initWithName:v11 category:215];
    v13 = &self->super.isa + a3;
    v14 = v13[18];
    v13[18] = v12;

    v15 = 20.0;
    if (v4)
    {
      v15 = 5.0;
    }

    v16 = [NSTimer scheduledTimerWithTimeInterval:self target:"_keepAliveResponseTimerFired:" selector:0 userInfo:0 repeats:v15];
    v17 = v13[12];
    v13[12] = v16;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)clearKeepAliveResponseTimerOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    keepAliveTimers = self->_keepAliveTimers;
    v6 = self->_keepAliveTimers[a3];
    if (v6)
    {
      [(NSTimer *)v6 invalidate];
      v7 = keepAliveTimers[a3];
      keepAliveTimers[a3] = 0;
    }

    v8 = self->_keepAlivePowerAssertions[a3];
    if (v8)
    {
      self->_keepAlivePowerAssertions[a3] = 0;
    }
  }
}

- (void)_keepAliveResponseTimerFired:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 3;
  if (self->_keepAliveTimers[0] == v4)
  {
    v6 = 0;
  }

  if (self->_keepAliveTimers[1] == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 1)
  {
    v9 = v4;
    [(APSCourierConnection *)self clearKeepAliveResponseTimerOnInterface:v7];
    delegate = self->_delegate;
    v4 = objc_opt_respondsToSelector();
    v5 = v9;
    if (v4)
    {
      v4 = [(APSCourierConnectionDelegate *)self->_delegate courierConnection:self keepAliveResponseTimerFiredOnInterface:v7];
      v5 = v9;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)setObject:(id)a3 forKey:(id)a4 onInterface:(int64_t)a5
{
  v14 = a3;
  v8 = a4;
  if (v8 && a5 <= 1)
  {
    contexts = self->_contexts;
    v10 = contexts[a5];
    if (v14)
    {
      if (!v10)
      {
        v11 = [[NSMutableDictionary alloc] initWithCapacity:1];
        v12 = contexts[a5];
        contexts[a5] = v11;

        v10 = contexts[a5];
      }

      [(NSMutableDictionary *)v10 setObject:v14 forKey:v8];
    }

    else
    {
      [(NSMutableDictionary *)v10 removeObjectForKey:v8];
      if (![(NSMutableDictionary *)contexts[a5] count])
      {
        v13 = contexts[a5];
        contexts[a5] = 0;
      }
    }
  }
}

- (id)objectForKey:(id)a3 onInterface:(int64_t)a4
{
  if (a4 <= 1)
  {
    v6 = [(NSMutableDictionary *)self->_contexts[a4] objectForKey:a3, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  delegate = self->_delegate;
  p_delegate = &self->_delegate;
  if (delegate != v5)
  {
    v8 = v5;
    objc_storeStrong(p_delegate, a3);
    v5 = v8;
  }
}

- (id)_currentStream
{
  v3 = [(APSCourierConnection *)self preferredInterface];
  if (v3 <= 1)
  {
    v4 = self->_streams[v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serverAddressForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v5 = [(APSTCPStream *)self->_streams[a3] serverIPAddress];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)serverPortForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v4 = [NSNumber numberWithUnsignedShort:[(APSTCPStream *)self->_streams[a3] serverPort]];
  }

  else
  {
    v4 = &off_100197A40;
  }

  return v4;
}

- (NSString)tcpInfoDescription
{
  v2 = [(APSCourierConnection *)self _currentStream];
  v3 = [v2 tcpInfoDescription];

  return v3;
}

- (id)tcpInfoDescriptionForInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    v5 = [(APSTCPStream *)self->_streams[a3] tcpInfoDescription];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
    v9 = [(APSTCPStream *)v7 isConnected];
    v4 = 0;
    v2 = 1;
  }

  while ((v9 & v6 & 1) != 0);
  if (v9)
  {
    return 3;
  }

  else
  {
    return v8;
  }
}

- (id)serverIPAddressForInterface:(int64_t)a3
{
  if (a3 <= 1 && (v5 = self->_streams[a3]) != 0)
  {
    v6 = v5;
    v7 = [(APSTCPStream *)v5 serverIPAddress];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(a3);
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked for serverIPAddress but we have no current stream for interface %@", &v10, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)serverHostnameForInterface:(int64_t)a3
{
  if (a3 <= 1 && (v5 = self->_streams[a3]) != 0)
  {
    v6 = v5;
    v7 = [(APSTCPStream *)v5 serverHostname];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(a3);
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked for serverHostname but we have no current stream for interface %@", &v10, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)interfaceNameForInterface:(int64_t)a3
{
  if (a3 <= 1 && (v5 = self->_streams[a3]) != 0)
  {
    v6 = v5;
    v7 = [(APSTCPStream *)v5 interfaceName];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000067F8(a3);
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: asked for interfaceName but we have no current stream for interface %@", &v10, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (int)nwInterfaceTypeForInterface:(int64_t)a3
{
  v3 = [(APSCourierConnection *)self interfaceNameForInterface:a3];
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

- (BOOL)isConnectedOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    return [(APSTCPStream *)self->_streams[a3] isConnected];
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasEstablishedConnectionOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    return [(APSTCPStream *)self->_streams[a3] hasEstablishedConnection];
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

- (BOOL)isKeepAliveProxySupportedOnSocketOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    return [(APSTCPStream *)self->_streams[a3] isKeepAliveProxySupportedOnSocketInterface];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isKeepAliveProxyConfiguredOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    return [(APSTCPStream *)self->_streams[a3] isKeepAliveProxyConfigured];
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
    v5 = [(APSTCPStream *)streams[v3] isKeepAliveProxyConfigured];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (!v5);
  return v5;
}

- (NSString)ifname
{
  v3 = [(APSCourierConnection *)self preferredInterface];
  if (v3 > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(APSTCPStream *)self->_streams[v3] ifname];
  }

  return v4;
}

- (double)minimumKeepAliveInterval
{
  v3 = [(APSCourierConnection *)self preferredInterface];
  connectionManagers = self->_connectionManagers;
  if (v3 < 2)
  {
    connectionManagers = &self->_connectionManagers[v3];
  }

  v5 = *connectionManagers;

  [(PCConnectionManager *)v5 minimumKeepAliveInterval];
  return result;
}

- (double)currentKeepAliveIntervalOnInterface:(int64_t)a3
{
  connectionManagers = self->_connectionManagers;
  if (a3 <= 1)
  {
    connectionManagers = &self->_connectionManagers[a3];
  }

  [(PCConnectionManager *)*connectionManagers currentKeepAliveInterval];
  return result;
}

- (id)currentKeepAliveStateOnInterface:(int64_t)a3
{
  if (a3 < 2)
  {
    v3 = [(PCConnectionManager *)self->_connectionManagers[a3] currentKeepAliveState];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown interface, not reporting a keep alive state.", v5, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (int)currentGrowthStageOnInterface:(int64_t)a3
{
  connectionManagers = self->_connectionManagers;
  if (a3 <= 1)
  {
    connectionManagers = &self->_connectionManagers[a3];
  }

  return [(PCConnectionManager *)*connectionManagers currentGrowthStage];
}

- (BOOL)shouldClientScheduleReconnectDueToFailureOnInterface:(int64_t)a3
{
  if (a3 <= 1)
  {
    return [(PCConnectionManager *)self->_connectionManagers[a3] shouldClientScheduleReconnectDueToFailure];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)countOfGrowthActionsOnInterface:(int64_t)a3
{
  connectionManagers = self->_connectionManagers;
  if (a3 <= 1)
  {
    connectionManagers = &self->_connectionManagers[a3];
  }

  return [(PCConnectionManager *)*connectionManagers countOfGrowthActions];
}

- (void)setIsDualChannelAllowed:(BOOL)a3
{
  if (self->_isDualChannelAllowed != a3)
  {
    self->_isDualChannelAllowed = a3;
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

- (BOOL)didPushCauseWakeOnInterface:(int64_t)a3
{
  if (a3 > 1)
  {
    return 0;
  }

  streams = self->_streams;
  v6 = self->_streams[a3];
  return (objc_opt_respondsToSelector() & 1) != 0 && ([(APSTCPStream *)streams[a3] didPushCauseWake]& 1) != 0;
}

- (int64_t)interfaceConstraintForInterface:(int64_t)a3
{
  if (a3 <= 1 && (v3 = self->_streams[a3]) != 0)
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

- (void)sendConnectMessageWithToken:(id)a3 state:(int)a4 presenceFlags:(int)a5 interface:(int64_t)a6 activeInterval:(unsigned int)a7 metadata:(id)a8 certificates:(id)a9 nonce:(id)a10 signature:(id)a11 redirectCount:(unsigned __int8)a12 onInterface:(int64_t)a13
{
  v17 = a11;
  v18 = a10;
  v27 = a9;
  v19 = a8;
  v26 = a3;
  [(APSCourierConnection *)self _prepareToParseOutgoingDataOnInterface:a13];
  v20 = self->_parsers[a13];
  v21 = [(APSCourierConnection *)self streamForInterface:a6];
  v22 = [v21 interfaceConstraint];
  v23 = [(APSCourierConnection *)self lastConnected];
  LODWORD(v25) = [(APSCourierConnection *)self disconnectReason];
  LOBYTE(v24) = a12;
  v31 = [(APSProtocolParser *)v20 copyConnectMessageWithToken:v26 state:a4 presenceFlags:a5 interface:a6 interfaceConstraint:v22 activeInterval:a7 metadata:v19 certificates:v27 nonce:v18 signature:v17 redirectCount:v24 lastConnected:v23 disconnectReason:v25];

  [(APSCourierConnection *)self writeDataInBackground:v31 onInterface:a13];
}

- (void)sendConnectMessageWithToken:(id)a3 state:(int)a4 presenceFlags:(int)a5 metadata:(id)a6 certificates:(id)a7 nonce:(id)a8 signature:(id)a9 hostCertificateInfo:(id)a10 redirectCount:(unsigned __int8)a11 onInterface:(int64_t)a12
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a3;
  [(APSCourierConnection *)self _prepareToParseOutgoingDataOnInterface:a12];
  v23 = self->_parsers[a12];
  v24 = [(APSCourierConnection *)self lastConnected];
  LODWORD(v26) = [(APSCourierConnection *)self disconnectReason];
  LOBYTE(v25) = a11;
  v29 = [(APSProtocolParser *)v23 copyConnectMessageWithToken:v22 state:a4 presenceFlags:a5 metadata:v21 certificates:v20 nonce:v19 signature:v18 hostCertificateInfo:v17 redirectCount:v25 lastConnected:v24 disconnectReason:v26];

  [(APSCourierConnection *)self writeDataInBackground:v29 onInterface:a12];
}

- (void)sendConnectMessageWithToken:(id)a3 interface:(int64_t)a4 activeInterval:(unsigned int)a5 presenceFlags:(int)a6 metadata:(id)a7 certificates:(id)a8 nonce:(id)a9 signature:(id)a10 hostCertificateInfo:(id)a11 redirectCount:(unsigned __int8)a12 tcpHandshakeTimeMilliseconds:(double)a13 dnsResolveTimeMilliseconds:(double)a14 tlsHandshakeTimeMilliseconds:(double)a15 consecutiveConnectionFailureReason:(id)a16 onInterface:(int64_t)a17 numberOfPSKToRequest:(unint64_t)a18
{
  v57 = a16;
  v59 = a11;
  v26 = a10;
  v27 = a9;
  v28 = a8;
  v29 = a7;
  v30 = a3;
  [(APSCourierConnection *)self _prepareToParseOutgoingDataOnInterface:a17];
  v31 = &self->super.isa + a17;
  if (v31[15])
  {
    v49 = v27;
    v51 = v28;
    v53 = v29;
    v55 = v30;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v32 = sub_1000067F8(a4);
      *buf = 138412546;
      v62 = self;
      v63 = 2112;
      v64 = v32;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ copy presence message with APSProtocolSerialPresenceFlagEnableCachedIP on interface %@", buf, 0x16u);
    }

    v33 = v31[4];
    v48 = [(APSCourierConnection *)self streamForInterface:a4];
    v34 = [v48 interfaceConstraint];
    v35 = [(APSCourierConnection *)self lastConnected];
    v36 = [(APSCourierConnection *)self disconnectReason];
    v37 = [(APSTCPStream *)self->_streams[a4] isOffloadedConnection];
    HIDWORD(v47) = [(APSCourierConnection *)self offloadMigrationReason];
    LOBYTE(v47) = v37;
    LODWORD(v46) = v36;
    LOBYTE(v45) = a12;
    v38 = [(objc_class *)v33 copyConnectMessageWithToken:v55 interface:a4 interfaceConstraint:v34 presenceFlags:a6 | 0x100u activeInterval:a5 metadata:v53 certificates:a13 nonce:a14 signature:a15 hostCertificateInfo:v51 redirectCount:v49 tcpHandshakeTimeMilliseconds:v26 dnsResolveTimeMilliseconds:v59 tlsHandshakeTimeMilliseconds:v45 consecutiveConnectionFailureReason:v57 lastConnected:v35 disconnectReason:v46 numberOfPSKToRequest:a18 isOffloadedConnection:v47 offloadMigrationReason:?];

    v39 = v48;
  }

  else
  {
    v52 = v31[4];
    v56 = [(APSCourierConnection *)self streamForInterface:a4];
    v40 = v29;
    v50 = [v56 interfaceConstraint];
    v54 = [(APSCourierConnection *)self lastConnected];
    v41 = v28;
    v42 = [(APSCourierConnection *)self disconnectReason];
    v43 = v27;
    v44 = [(APSTCPStream *)self->_streams[a4] isOffloadedConnection];
    HIDWORD(v47) = [(APSCourierConnection *)self offloadMigrationReason];
    LOBYTE(v47) = v44;
    LODWORD(v46) = v42;
    LOBYTE(v45) = a12;
    v38 = [(objc_class *)v52 copyConnectMessageWithToken:v30 interface:a4 interfaceConstraint:v50 presenceFlags:a6 activeInterval:a5 metadata:v40 certificates:a13 nonce:a14 signature:a15 hostCertificateInfo:v41 redirectCount:v43 tcpHandshakeTimeMilliseconds:v26 dnsResolveTimeMilliseconds:v59 tlsHandshakeTimeMilliseconds:v45 consecutiveConnectionFailureReason:v57 lastConnected:v54 disconnectReason:v46 numberOfPSKToRequest:a18 isOffloadedConnection:v47 offloadMigrationReason:?];

    v39 = v56;
  }

  [(APSCourierConnection *)self writeDataInBackground:v38 onInterface:a17];
  [(APSCourierConnection *)self setDisconnectReason:0];
}

- (void)sendMessageTransportAcknowledgeMessageOnInterface:(int64_t)a3
{
  [(APSCourierConnection *)self _prepareToParseOutgoingDataOnInterface:?];
  v6 = self->_parsers[a3];
  v5 = [(APSProtocolParser *)v6 copyMessageTransportAcknowledgeMessage];
  [(APSCourierConnection *)self writeDataInBackground:v5 onInterface:a3];
}

- (void)sendKeepAliveMessageWithMetadata:(id)a3 onInterface:(int64_t)a4
{
  v6 = a3;
  [(APSCourierConnection *)self _prepareToParseOutgoingDataOnInterface:a4];
  v8 = self->_parsers[a4];
  v7 = [(APSProtocolParser *)v8 copyKeepAliveMessageWithMetadata:v6];

  [(APSCourierConnection *)self writeDataInBackground:v7 onInterface:a4];
}

- (void)sendFilterMessageWithEnabledHashes:(id)a3 ignoredHashes:(id)a4 opportunisticHashes:(id)a5 nonWakingHashes:(id)a6 pausedHashes:(id)a7 token:(id)a8 version:(unint64_t)a9 onInterface:(int64_t)a10
{
  v18 = self->_parsers[a10];
  v17 = [(APSProtocolParser *)v18 copyFilterMessageWithEnabledHashes:a3 ignoredHashes:a4 opportunisticHashes:a5 nonWakingHashes:a6 pausedHashes:a7 token:a8 version:a9];
  [(APSCourierConnection *)self writeDataInBackground:v17 onInterface:a10];
}

- (BOOL)parseMessage:(id)a3 parameters:(id *)a4 isInvalid:(BOOL *)a5 lengthParsed:(unint64_t *)a6 onInterface:(int64_t)a7
{
  v11 = self->_parsers[a7];
  LOBYTE(a6) = [(APSProtocolParser *)v11 parseMessage:a3 parameters:a4 isInvalid:a5 lengthParsed:a6];

  return a6;
}

- (BOOL)isPackedFormatOnInterface:(int64_t)a3
{
  v3 = self->_parsers[a3];
  v4 = [(APSProtocolParser *)v3 isPackedFormat];

  return v4;
}

- (void)protocolParser:(id)a3 receiveAPNSPackError:(id)a4
{
  delegate = self->_delegate;
  v7 = a4;
  [(APSCourierConnectionDelegate *)delegate courierConnection:self parserErrorMessage:v7 OnInterface:[(APSCourierConnection *)self _interfaceForProtocolParser:a3]];
}

- (void)tcpStream:(id)a3 receivedOffloadInfo:(id)a4
{
  delegate = self->_delegate;
  v7 = a4;
  [(APSCourierConnectionDelegate *)delegate courierConnection:self receivedOffloadInfo:v7 onInterface:[(APSCourierConnection *)self _interfaceForStream:a3]];
}

- (void)tcpStream:(id)a3 hasDeterminedServerHostname:(id)a4
{
  delegate = self->_delegate;
  v7 = a4;
  [(APSCourierConnectionDelegate *)delegate courierConnection:self hasDeterminedServerHostname:v7 onInterface:[(APSCourierConnection *)self _interfaceForStream:a3]];
}

- (void)tcpStreamDidFailToForceKeepAliveProxyInterface:(id)a3
{
  delegate = self->_delegate;
  v5 = [(APSCourierConnection *)self _interfaceForStream:a3];

  [(APSCourierConnectionDelegate *)delegate courierConnection:self failedToForceKeepAliveProxyOnInterface:v5];
}

- (void)tcpStreamDidFailToFindKeepAliveProxyInterface:(id)a3
{
  delegate = self->_delegate;
  v5 = [(APSCourierConnection *)self _interfaceForStream:a3];

  [(APSCourierConnectionDelegate *)delegate courierConnection:self failedToFindKeepAliveProxyOnInterface:v5];
}

- (NSDictionary)connectionDebugInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(APSTCPStream *)self->_streams[0] connectionDebugInfo];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"N/A";
  }

  v7 = sub_1000067F8(0);
  [v3 setObject:v6 forKeyedSubscript:v7];

  v8 = [(APSTCPStream *)self->_streams[1] connectionDebugInfo];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
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