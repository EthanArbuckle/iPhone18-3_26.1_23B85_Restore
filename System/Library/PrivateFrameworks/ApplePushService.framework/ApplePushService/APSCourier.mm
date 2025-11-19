@interface APSCourier
- (APSClientIdentityProvider)identityProviderForMainCourier;
- (APSCourier)initWithEnvironment:(id)a3 defaultUser:(id)a4 userDependencies:(id)a5 delegate:(id)a6;
- (APSCourierDelegate)delegate;
- (APSIDSProxyManager)proxyManager;
- (BOOL)courierConnectionManagerClientsCanConnectRightNow;
- (BOOL)courierConnectionManagerClientsHaveEagerMessages;
- (BOOL)courierConnectionManagerClientsHaveInteractivePushDuringSleepEnabled;
- (BOOL)courierConnectionManagerClientsWantsCriticalReliability;
- (BOOL)courierConnectionManagerClientsWillBeAbleToConnect;
- (BOOL)hasIdentity;
- (BOOL)isConnectedToService;
- (BOOL)isIdle;
- (BOOL)isInteractivePushDuringSleepEnabled;
- (BOOL)isKeepAliveProxyConfigured;
- (BOOL)shouldUseInternet;
- (NSString)debugDescription;
- (NSString)description;
- (double)currentKeepAliveInterval;
- (id)JSONDebugState;
- (id)allRegisteredChannelsForTopic:(id)a3 user:(id)a4;
- (id)aps_prettyDescription;
- (id)clientIdentityProvider;
- (id)connectionForConnectionPortName:(id)a3 user:(id)a4;
- (id)connectionServerDelegateForUser:(id)a3 dependencies:(id)a4;
- (id)connectionServersForUser:(id)a3;
- (id)daemonUserIDs;
- (id)ifname;
- (id)latestGeoRegion;
- (id)publicTokenForUser:(id)a3;
- (unint64_t)serverTimeInNanoSeconds;
- (void)_addProtocolConnectionsToUserCourier:(id)a3;
- (void)addConnection:(id)a3 forUser:(id)a4 dependencies:(id)a5;
- (void)appendPrettyStatusToStatusPrinter:(id)a3;
- (void)canUseProxyChanged;
- (void)courierConnectionManager:(id)a3 openedNewProtocolConnection:(id)a4;
- (void)courierConnectionManager:(id)a3 receivedServerBag:(id)a4 finishedProcessingServerBagBlock:(id)a5;
- (void)courierConnectionManager:(id)a3 shouldConnectBlock:(id)a4;
- (void)courierConnectionStatusDidChange:(id)a3;
- (void)courierFilterChanged:(id)a3;
- (void)courierHasNoConnections:(id)a3;
- (void)courierIdentityBecameAvailable:(id)a3;
- (void)courierIsIdle:(id)a3;
- (void)courierShouldRollBAAEnvironmentTokens:(id)a3;
- (void)didConnectOrDisconnectTokenForCourier:(id)a3 onProtocolConnection:(id)a4;
- (void)fetchUserCourierIdentityForSigningWithCompletion:(id)a3;
- (void)flushUser:(id)a3;
- (void)forceBAAIdentityRefreshWithCompletion:(id)a3;
- (void)incomingPresenceWithGuid:(id)a3 token:(id)a4 hwVersion:(id)a5 swVersion:(id)a6 swBuild:(id)a7 certificates:(id)a8 nonce:(id)a9 signature:(id)a10 additionalFlags:(int)a11;
- (void)invalidateDeviceIdentity;
- (void)kickstartProxyConnection;
- (void)logoutUser:(id)a3;
- (void)performKeepAlive;
- (void)periodicSignalFired;
- (void)prepareForDarkWake;
- (void)prepareForFullWake;
- (void)prepareForSleep;
- (void)proxyAgent:(id)a3 openedNewProtocolConnection:(id)a4;
- (void)removeConnectionForConnectionPortName:(id)a3 user:(id)a4;
- (void)reportOffloadEvents:(const aonmicroapsd_telemetryeventrecord_v_s *)a3 droppedEvents:(aonmicroapsd_droppedtelemetryeventcount_s *)a4;
- (void)requestConnectionIfNeeded;
- (void)rollTokenAndReconnect;
- (void)setupForUser:(id)a3 dependencies:(id)a4;
- (void)shouldUseInternetDidChange:(id)a3;
- (void)updateKeepAliveInterval:(double)a3;
- (void)userCourier:(id)a3 hasReasonToConnectChangedTo:(BOOL)a4;
@end

@implementation APSCourier

- (id)clientIdentityProvider
{
  v2 = [(APSCourier *)self rootUserCourier];
  v3 = [v2 clientIdentityProvider];

  return v3;
}

- (BOOL)courierConnectionManagerClientsCanConnectRightNow
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isConnectableRightNow])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)courierConnectionManagerClientsWillBeAbleToConnect
{
  v2 = [(APSCourier *)self rootUserCourier];
  v3 = [v2 willBeAbleToConnect];

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(APSCourier *)self environment];
  v5 = [v4 name];
  v6 = [(APSCourier *)self courierByUser];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p %@ numCouriers: %d>", v3, self, v5, [v6 count]);

  return v7;
}

- (APSCourier)initWithEnvironment:(id)a3 defaultUser:(id)a4 userDependencies:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v35.receiver = self;
  v35.super_class = APSCourier;
  v15 = [(APSCourier *)&v35 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_environment, a3);
    v17 = objc_alloc_init(NSMutableDictionary);
    courierByUser = v16->_courierByUser;
    v16->_courierByUser = v17;

    v19 = objc_alloc_init(NSMutableArray);
    orderedListOfNonMainCouriers = v16->_orderedListOfNonMainCouriers;
    v16->_orderedListOfNonMainCouriers = v19;

    objc_storeWeak(&v16->_delegate, v14);
    v21 = [[APSCourierConnectionManager alloc] initWithEnvironment:v11 delegate:v16];
    connectionManager = v16->_connectionManager;
    v16->_connectionManager = v21;

    v23 = [v13 clientIdentityProvider];
    objc_storeWeak(&v16->_identityProviderForMainCourier, v23);

    v24 = [APSUserCourier alloc];
    v25 = [v13 userPreferences];
    v26 = [v13 clientIdentityProvider];
    v27 = [v13 userAppIDManager];
    v28 = [v13 systemTokenStorage];
    v29 = [(APSUserCourier *)v24 initWithEnvironment:v11 courierUser:v12 userPreferences:v25 clientIdentityProvider:v26 userAppIDManager:v27 systemTokenStorage:v28 delegate:v16 withConnectionEstablisher:v16->_connectionManager];
    rootUserCourier = v16->_rootUserCourier;
    v16->_rootUserCourier = v29;

    v31 = v16->_courierByUser;
    v32 = [(APSCourier *)v16 rootUserCourier];
    v33 = [v12 name];
    [(NSMutableDictionary *)v31 setObject:v32 forKey:v33];
  }

  return v16;
}

- (void)courierHasNoConnections:(id)a3
{
  v4 = a3;
  v5 = [(APSCourier *)self delegate];
  [v5 courierHasNoConnections:v4];
}

- (void)courierConnectionStatusDidChange:(id)a3
{
  v4 = a3;
  v5 = [(APSCourier *)self delegate];
  [v5 courierConnectionStatusDidChange:v4];
}

- (void)courierFilterChanged:(id)a3
{
  v4 = a3;
  v5 = [(APSCourier *)self delegate];
  [v5 courierFilterChanged:v4];
}

- (void)userCourier:(id)a3 hasReasonToConnectChangedTo:(BOOL)a4
{
  if (a4)
  {
    [(APSProxyAgent *)self->_proxyAgent setEnabled:1];
  }
}

- (void)courierIsIdle:(id)a3
{
  v4 = a3;
  v5 = [(APSCourier *)self delegate];
  [v5 courierIsIdle:v4];
}

- (void)shouldUseInternetDidChange:(id)a3
{
  v4 = a3;
  v5 = [(APSCourier *)self delegate];
  [v5 shouldUseInternetDidChange:v4];
}

- (void)courierIdentityBecameAvailable:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(APSCourier *)self proxyAgent];
  v5 = [v4 activeProtocolConnections];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138412802;
    v15 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = +[APSLog courier];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(APSCourier *)self rootUserCourier];
          *buf = v15;
          v21 = self;
          v22 = 2112;
          v23 = v13;
          v24 = 2112;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ Proxy was available adding since courier now has an identity {mainCourier: %@, protocolConnection: %@}", buf, 0x20u);
        }

        v14 = [(APSCourier *)self rootUserCourier];
        [v14 beginTrackingProtocolConnection:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)kickstartProxyConnection
{
  v2 = [(APSCourier *)self proxyAgent];
  [v2 kickstartProxyConnection];
}

- (APSIDSProxyManager)proxyManager
{
  v2 = [(APSCourier *)self delegate];
  v3 = [v2 proxyManager];

  return v3;
}

- (void)didConnectOrDisconnectTokenForCourier:(id)a3 onProtocolConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APSCourier *)self rootUserCourier];

  if (v8 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSMutableArray *)self->_orderedListOfNonMainCouriers indexOfObject:v6]+ 1;
  }

  if ([(NSMutableArray *)self->_orderedListOfNonMainCouriers count]> v9)
  {
    v10 = [(NSMutableArray *)self->_orderedListOfNonMainCouriers objectAtIndexedSubscript:v9];
    v11 = +[APSLog courier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Trying to connect/disconnect for courier %@", &v12, 0x16u);
    }

    [v10 beginTrackingProtocolConnection:v7];
  }
}

- (void)courierShouldRollBAAEnvironmentTokens:(id)a3
{
  v4 = [(APSCourier *)self delegate];
  [v4 rollTokensForAllBAAEnvironments:self];
}

- (void)proxyAgent:(id)a3 openedNewProtocolConnection:(id)a4
{
  v5 = a4;
  v6 = [(APSCourier *)self rootUserCourier];
  v7 = [v6 hasIdentity];

  if (v7)
  {
    v8 = [(APSCourier *)self rootUserCourier];
    v9 = [v8 hasReasonToConnect];

    if (v9)
    {
      v10 = [(APSCourier *)self rootUserCourier];
      [v10 beginTrackingProtocolConnection:v5];
    }

    else
    {
      v13 = +[APSLog courier];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(APSCourier *)self rootUserCourier];
        v15 = 138412802;
        v16 = self;
        v17 = 2112;
        v18 = v14;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Proxy available but courier does not have any active topics, waiting {mainCourier: %@, protocolConnection: %@}", &v15, 0x20u);
      }

      [(APSProxyAgent *)self->_proxyAgent setEnabled:0];
    }
  }

  else
  {
    v11 = +[APSLog courier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(APSCourier *)self rootUserCourier];
      v15 = 138412802;
      v16 = self;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Proxy available but courier does not have an identity yet, waiting {mainCourier: %@, protocolConnection: %@}", &v15, 0x20u);
    }
  }
}

- (void)updateKeepAliveInterval:(double)a3
{
  v4 = [(APSCourier *)self connectionManager];
  [v4 updateKeepAliveInterval:a3];
}

- (void)courierConnectionManager:(id)a3 openedNewProtocolConnection:(id)a4
{
  v5 = a4;
  v6 = [(APSCourier *)self rootUserCourier];
  [v6 beginTrackingProtocolConnection:v5];
}

- (void)courierConnectionManager:(id)a3 receivedServerBag:(id)a4 finishedProcessingServerBagBlock:(id)a5
{
  v15 = a3;
  v17 = a4;
  v8 = a5;
  v16 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v9 = [v16 count];
  if (v9)
  {
    objc_initWeak(&location, self);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [(NSMutableDictionary *)self->_courierByUser allValues];
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v11)
    {
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10001F140;
          v18[3] = &unk_100186558;
          objc_copyWeak(v21, &location);
          v20 = v27;
          v21[1] = v9;
          v19 = v8;
          [v14 updateForReceivedConfig:v17 finishedProcessingConfigBlock:v18];

          objc_destroyWeak(v21);
        }

        v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v11);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v8[2](v8);
  }

  _Block_object_dispose(v27, 8);
}

- (void)courierConnectionManager:(id)a3 shouldConnectBlock:(id)a4
{
  v5 = a4;
  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ checking if main user courier is ready to connect", buf, 0xCu);
  }

  v7 = [(APSCourier *)self rootUserCourier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001F438;
  v9[3] = &unk_100186580;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 shouldConnectToCourier:v9];
}

- (BOOL)courierConnectionManagerClientsHaveEagerMessages
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasEagerMessages])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)courierConnectionManagerClientsWantsCriticalReliability
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) wantsCriticalReliability])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)courierConnectionManagerClientsHaveInteractivePushDuringSleepEnabled
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isInteractivePushDuringSleepEnabled])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_addProtocolConnectionsToUserCourier:(id)a3
{
  v4 = a3;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(APSCourier *)self connectionManager];
    v7 = [v6 activeProtocolConnections];
    v8 = [(APSCourier *)self proxyAgent];
    v9 = [v8 activeProtocolConnections];
    *buf = 138413058;
    v33 = self;
    v34 = 2112;
    v35 = v4;
    v36 = 2112;
    v37 = v7;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Adding protocol connections to userCourier %@ {connectionManager.activeProtocolConnections: %@, proxyAgent.activeProtocolConnections: %@}", buf, 0x2Au);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [(APSCourier *)self connectionManager];
  v11 = [v10 activeProtocolConnections];

  v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v4 beginTrackingProtocolConnection:*(*(&v26 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [(APSCourier *)self proxyAgent];
  v17 = [v16 activeProtocolConnections];

  v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [v4 beginTrackingProtocolConnection:*(*(&v22 + 1) + 8 * v21)];
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }
}

- (id)daemonUserIDs
{
  v3 = [(APSCourier *)self courierByUser];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_courierByUser;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [APSSystemUser systemUserWithUserID:v10, v14];
        v12 = [v11 isDaemonUser];

        if (v12)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)setupForUser:(id)a3 dependencies:(id)a4
{
  v6 = a3;
  v7 = a4;
  courierByUser = self->_courierByUser;
  v9 = [v6 name];
  v10 = [(NSMutableDictionary *)courierByUser objectForKey:v9];

  if (!v10)
  {
    v11 = +[APSLog courier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 name];
      *buf = 138412546;
      v24 = self;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Login user %@", buf, 0x16u);
    }

    v13 = [APSUserCourier alloc];
    v14 = [(APSCourier *)self environment];
    v15 = [v7 userPreferences];
    v16 = [v7 clientIdentityProvider];
    v17 = [v7 userAppIDManager];
    v18 = [v7 systemTokenStorage];
    v19 = [(APSUserCourier *)v13 initWithEnvironment:v14 courierUser:v6 userPreferences:v15 clientIdentityProvider:v16 userAppIDManager:v17 systemTokenStorage:v18 delegate:self withConnectionEstablisher:self->_connectionManager];

    v20 = self->_courierByUser;
    v21 = [v6 name];
    [(NSMutableDictionary *)v20 setObject:v19 forKey:v21];

    [(NSMutableArray *)self->_orderedListOfNonMainCouriers addObject:v19];
    v22 = [(APSCourier *)self rootUserCourier];
    -[APSUserCourier setEnabled:](v19, "setEnabled:", [v22 enabled]);

    [(APSCourier *)self _addProtocolConnectionsToUserCourier:v19];
  }
}

- (void)logoutUser:(id)a3
{
  v4 = a3;
  courierByUser = self->_courierByUser;
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)courierByUser objectForKey:v6];

  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Logging out user %@ on %@", &v9, 0x20u);
  }

  [v7 logout];
}

- (void)flushUser:(id)a3
{
  v4 = a3;
  courierByUser = self->_courierByUser;
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)courierByUser objectForKey:v6];

  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Flushing user %@ on %@", &v9, 0x20u);
  }

  [v7 flush];
}

- (BOOL)isIdle
{
  v2 = [(APSCourier *)self rootUserCourier];
  v3 = [v2 isIdle];

  return v3;
}

- (id)connectionServersForUser:(id)a3
{
  courierByUser = self->_courierByUser;
  v4 = [a3 name];
  v5 = [(NSMutableDictionary *)courierByUser objectForKey:v4];
  v6 = [v5 connectionServers];

  return v6;
}

- (void)addConnection:(id)a3 forUser:(id)a4 dependencies:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  courierByUser = self->_courierByUser;
  v11 = [v8 name];
  v12 = [(NSMutableDictionary *)courierByUser objectForKey:v11];

  if (v12)
  {
    [v12 addConnection:v23];
  }

  else
  {
    v13 = [APSUserCourier alloc];
    v14 = [(APSCourier *)self environment];
    v15 = [v9 userPreferences];
    v16 = [v9 clientIdentityProvider];
    v17 = [v9 userAppIDManager];
    v18 = [v9 systemTokenStorage];
    v19 = [(APSUserCourier *)v13 initWithEnvironment:v14 courierUser:v8 userPreferences:v15 clientIdentityProvider:v16 userAppIDManager:v17 systemTokenStorage:v18 delegate:self withConnectionEstablisher:self->_connectionManager];

    v20 = self->_courierByUser;
    v21 = [v8 name];
    [(NSMutableDictionary *)v20 setObject:v19 forKey:v21];

    [(NSMutableArray *)self->_orderedListOfNonMainCouriers addObject:v19];
    v22 = [(APSCourier *)self rootUserCourier];
    -[APSUserCourier setEnabled:](v19, "setEnabled:", [v22 enabled]);

    [(APSUserCourier *)v19 addConnection:v23];
    [(APSCourier *)self _addProtocolConnectionsToUserCourier:v19];
  }
}

- (BOOL)isInteractivePushDuringSleepEnabled
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isInteractivePushDuringSleepEnabled])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isKeepAliveProxyConfigured
{
  v2 = [(APSCourier *)self rootUserCourier];
  v3 = [v2 isKeepAliveProxyConfigured];

  return v3;
}

- (void)appendPrettyStatusToStatusPrinter:(id)a3
{
  v4 = a3;
  v5 = [(APSCourier *)self connectionManager];
  [v5 appendPrettyStatusToStatusPrinter:v4];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) appendPrettyStatusToStatusPrinter:v4];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)JSONDebugState
{
  v3 = [&__NSDictionary0__struct mutableCopy];
  v4 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_courierByUser;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_courierByUser objectForKeyedSubscript:v10, v15];
        v12 = [v11 JSONDebugState];
        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKeyedSubscript:@"users"];
  v13 = [(APSCourierConnectionManager *)self->_connectionManager JSONDebugState];
  [v3 setObject:v13 forKeyedSubscript:@"connection"];

  return v3;
}

- (NSString)debugDescription
{
  v3 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v4 = APSPrettyPrintCollection();

  v5 = objc_opt_class();
  v6 = [(APSCourier *)self environment];
  v7 = [v6 name];
  v8 = [(APSCourierConnectionManager *)self->_connectionManager debugDescription];
  v9 = [NSString stringWithFormat:@"<%@ %p, %@, couriers=%@, connectionManager=%@>", v5, self, v7, v4, v8];

  return v9;
}

- (id)aps_prettyDescription
{
  v3 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v4 = APSPrettyPrintCollection();

  v5 = [(APSCourier *)self environment];
  v6 = [v5 name];
  connectionManager = self->_connectionManager;
  v8 = APSPrettyPrintObject();
  v9 = [NSString stringWithFormat:@"<%@, couriers=%@, connectionManager=%@>", v6, v4, v8];

  return v9;
}

- (double)currentKeepAliveInterval
{
  v2 = [(APSCourier *)self connectionManager];
  [v2 currentKeepAliveInterval];
  v4 = v3;

  return v4;
}

- (void)removeConnectionForConnectionPortName:(id)a3 user:(id)a4
{
  courierByUser = self->_courierByUser;
  v6 = a3;
  v8 = [a4 name];
  v7 = [(NSMutableDictionary *)courierByUser objectForKey:v8];
  [v7 removeConnectionForConnectionPortName:v6];
}

- (id)connectionForConnectionPortName:(id)a3 user:(id)a4
{
  courierByUser = self->_courierByUser;
  v6 = a3;
  v7 = [a4 name];
  v8 = [(NSMutableDictionary *)courierByUser objectForKey:v7];
  v9 = [v8 connectionForConnectionPortName:v6];

  return v9;
}

- (void)requestConnectionIfNeeded
{
  v2 = [(APSCourier *)self connectionManager];
  [v2 requestConnectionIfNeeded];
}

- (id)publicTokenForUser:(id)a3
{
  v4 = a3;
  v5 = [(APSCourier *)self courierByUser];
  v6 = [v4 name];

  v7 = [v5 objectForKey:v6];
  v8 = [v7 publicToken];

  return v8;
}

- (void)canUseProxyChanged
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) canUseProxyChanged];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)incomingPresenceWithGuid:(id)a3 token:(id)a4 hwVersion:(id)a5 swVersion:(id)a6 swBuild:(id)a7 certificates:(id)a8 nonce:(id)a9 signature:(id)a10 additionalFlags:(int)a11
{
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v27 = [(APSCourier *)self rootUserCourier];
  LODWORD(v26) = a11;
  [v27 incomingPresenceWithGuid:v25 token:v24 hwVersion:v23 swVersion:v22 swBuild:v21 certificates:v20 nonce:v19 signature:v18 additionalFlags:v26];
}

- (BOOL)isConnectedToService
{
  v2 = [(APSCourier *)self rootUserCourier];
  v3 = [v2 isConnectedToService];

  return v3;
}

- (void)invalidateDeviceIdentity
{
  v2 = [(APSCourier *)self rootUserCourier];
  [v2 invalidateDeviceIdentity];
}

- (void)periodicSignalFired
{
  v2 = [(APSCourier *)self rootUserCourier];
  [v2 periodicSignalFired];
}

- (id)connectionServerDelegateForUser:(id)a3 dependencies:(id)a4
{
  v6 = a3;
  v7 = a4;
  courierByUser = self->_courierByUser;
  v9 = [v6 name];
  v10 = [(NSMutableDictionary *)courierByUser objectForKey:v9];

  if (!v10)
  {
    [(APSCourier *)self setupForUser:v6 dependencies:v7];
  }

  v11 = self->_courierByUser;
  v12 = [v6 name];
  v13 = [(NSMutableDictionary *)v11 objectForKey:v12];

  return v13;
}

- (BOOL)hasIdentity
{
  v2 = [(APSCourier *)self rootUserCourier];
  v3 = [v2 hasIdentity];

  return v3;
}

- (unint64_t)serverTimeInNanoSeconds
{
  v2 = [(APSCourier *)self connectionManager];
  v3 = [v2 serverTimeInNanoSeconds];

  return v3;
}

- (id)latestGeoRegion
{
  v2 = [(APSCourier *)self rootUserCourier];
  v3 = [v2 latestGeoRegion];

  return v3;
}

- (id)allRegisteredChannelsForTopic:(id)a3 user:(id)a4
{
  courierByUser = self->_courierByUser;
  v6 = a3;
  v7 = [a4 name];
  v8 = [(NSMutableDictionary *)courierByUser objectForKey:v7];
  v9 = [v8 allRegisteredChannelsForTopic:v6];

  return v9;
}

- (void)performKeepAlive
{
  v2 = [(APSCourier *)self connectionManager];
  [v2 performKeepAlive];
}

- (BOOL)shouldUseInternet
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldUseInternet])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)ifname
{
  v2 = [(APSCourier *)self connectionManager];
  v3 = [v2 ifname];

  return v3;
}

- (void)fetchUserCourierIdentityForSigningWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(APSCourier *)self rootUserCourier];
  v6 = [v5 clientIdentityProvider];
  v7 = [(APSCourier *)self rootUserCourier];
  v8 = [v7 publicToken];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021368;
  v10[3] = &unk_1001865A8;
  v11 = v4;
  v9 = v4;
  [v6 fetchClientIdentityWithReason:0 hasExistingToken:v8 != 0 completionHandler:v10];
}

- (void)rollTokenAndReconnect
{
  v2 = [(APSCourier *)self rootUserCourier];
  [v2 rollTokenAndReconnectImmediately:1];
}

- (void)forceBAAIdentityRefreshWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(APSCourier *)self rootUserCourier];
  v5 = [v6 clientIdentityProvider];
  [v5 debugForceDeleteIdentity:v4];
}

- (void)prepareForDarkWake
{
  v3 = [(APSCourier *)self rootUserCourier];
  [v3 prepareForDarkWake];

  v4 = [(APSCourier *)self connectionManager];
  [v4 prepareForDarkWake];
}

- (void)prepareForFullWake
{
  v3 = [(APSCourier *)self rootUserCourier];
  [v3 prepareForFullWake];

  v4 = [(APSCourier *)self connectionManager];
  [v4 prepareForFullWake];
}

- (void)prepareForSleep
{
  v3 = [(APSCourier *)self rootUserCourier];
  [v3 prepareForSleep];

  v4 = [(APSCourier *)self connectionManager];
  [v4 prepareForSleep];
}

- (APSCourierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (APSClientIdentityProvider)identityProviderForMainCourier
{
  WeakRetained = objc_loadWeakRetained(&self->_identityProviderForMainCourier);

  return WeakRetained;
}

- (void)reportOffloadEvents:(const aonmicroapsd_telemetryeventrecord_v_s *)a3 droppedEvents:(aonmicroapsd_droppedtelemetryeventcount_s *)a4
{
  v5 = *&a4->var7;
  v7 = *&a4->var0;
  v6 = *&a4->var3;
  v8 = self;
  APSCourier.reportOffloadEvents(_:droppedEvents:)(a3, v7, v6, v5);
}

@end