@interface APSCourier
- (APSClientIdentityProvider)identityProviderForMainCourier;
- (APSCourier)initWithEnvironment:(id)environment defaultUser:(id)user userDependencies:(id)dependencies delegate:(id)delegate;
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
- (id)allRegisteredChannelsForTopic:(id)topic user:(id)user;
- (id)aps_prettyDescription;
- (id)clientIdentityProvider;
- (id)connectionForConnectionPortName:(id)name user:(id)user;
- (id)connectionServerDelegateForUser:(id)user dependencies:(id)dependencies;
- (id)connectionServersForUser:(id)user;
- (id)daemonUserIDs;
- (id)ifname;
- (id)latestGeoRegion;
- (id)publicTokenForUser:(id)user;
- (unint64_t)serverTimeInNanoSeconds;
- (void)_addProtocolConnectionsToUserCourier:(id)courier;
- (void)addConnection:(id)connection forUser:(id)user dependencies:(id)dependencies;
- (void)appendPrettyStatusToStatusPrinter:(id)printer;
- (void)canUseProxyChanged;
- (void)courierConnectionManager:(id)manager openedNewProtocolConnection:(id)connection;
- (void)courierConnectionManager:(id)manager receivedServerBag:(id)bag finishedProcessingServerBagBlock:(id)block;
- (void)courierConnectionManager:(id)manager shouldConnectBlock:(id)block;
- (void)courierConnectionStatusDidChange:(id)change;
- (void)courierFilterChanged:(id)changed;
- (void)courierHasNoConnections:(id)connections;
- (void)courierIdentityBecameAvailable:(id)available;
- (void)courierIsIdle:(id)idle;
- (void)courierShouldRollBAAEnvironmentTokens:(id)tokens;
- (void)didConnectOrDisconnectTokenForCourier:(id)courier onProtocolConnection:(id)connection;
- (void)fetchUserCourierIdentityForSigningWithCompletion:(id)completion;
- (void)flushUser:(id)user;
- (void)forceBAAIdentityRefreshWithCompletion:(id)completion;
- (void)incomingPresenceWithGuid:(id)guid token:(id)token hwVersion:(id)version swVersion:(id)swVersion swBuild:(id)build certificates:(id)certificates nonce:(id)nonce signature:(id)self0 additionalFlags:(int)self1;
- (void)invalidateDeviceIdentity;
- (void)kickstartProxyConnection;
- (void)logoutUser:(id)user;
- (void)performKeepAlive;
- (void)periodicSignalFired;
- (void)prepareForDarkWake;
- (void)prepareForFullWake;
- (void)prepareForSleep;
- (void)proxyAgent:(id)agent openedNewProtocolConnection:(id)connection;
- (void)removeConnectionForConnectionPortName:(id)name user:(id)user;
- (void)reportOffloadEvents:(const aonmicroapsd_telemetryeventrecord_v_s *)events droppedEvents:(aonmicroapsd_droppedtelemetryeventcount_s *)droppedEvents;
- (void)requestConnectionIfNeeded;
- (void)rollTokenAndReconnect;
- (void)setupForUser:(id)user dependencies:(id)dependencies;
- (void)shouldUseInternetDidChange:(id)change;
- (void)updateKeepAliveInterval:(double)interval;
- (void)userCourier:(id)courier hasReasonToConnectChangedTo:(BOOL)to;
@end

@implementation APSCourier

- (id)clientIdentityProvider
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  clientIdentityProvider = [rootUserCourier clientIdentityProvider];

  return clientIdentityProvider;
}

- (BOOL)courierConnectionManagerClientsCanConnectRightNow
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v7 + 1) + 8 * i) isConnectableRightNow])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  willBeAbleToConnect = [rootUserCourier willBeAbleToConnect];

  return willBeAbleToConnect;
}

- (NSString)description
{
  v3 = objc_opt_class();
  environment = [(APSCourier *)self environment];
  name = [environment name];
  courierByUser = [(APSCourier *)self courierByUser];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p %@ numCouriers: %d>", v3, self, name, [courierByUser count]);

  return v7;
}

- (APSCourier)initWithEnvironment:(id)environment defaultUser:(id)user userDependencies:(id)dependencies delegate:(id)delegate
{
  environmentCopy = environment;
  userCopy = user;
  dependenciesCopy = dependencies;
  delegateCopy = delegate;
  v35.receiver = self;
  v35.super_class = APSCourier;
  v15 = [(APSCourier *)&v35 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_environment, environment);
    v17 = objc_alloc_init(NSMutableDictionary);
    courierByUser = v16->_courierByUser;
    v16->_courierByUser = v17;

    v19 = objc_alloc_init(NSMutableArray);
    orderedListOfNonMainCouriers = v16->_orderedListOfNonMainCouriers;
    v16->_orderedListOfNonMainCouriers = v19;

    objc_storeWeak(&v16->_delegate, delegateCopy);
    v21 = [[APSCourierConnectionManager alloc] initWithEnvironment:environmentCopy delegate:v16];
    connectionManager = v16->_connectionManager;
    v16->_connectionManager = v21;

    clientIdentityProvider = [dependenciesCopy clientIdentityProvider];
    objc_storeWeak(&v16->_identityProviderForMainCourier, clientIdentityProvider);

    v24 = [APSUserCourier alloc];
    userPreferences = [dependenciesCopy userPreferences];
    clientIdentityProvider2 = [dependenciesCopy clientIdentityProvider];
    userAppIDManager = [dependenciesCopy userAppIDManager];
    systemTokenStorage = [dependenciesCopy systemTokenStorage];
    v29 = [(APSUserCourier *)v24 initWithEnvironment:environmentCopy courierUser:userCopy userPreferences:userPreferences clientIdentityProvider:clientIdentityProvider2 userAppIDManager:userAppIDManager systemTokenStorage:systemTokenStorage delegate:v16 withConnectionEstablisher:v16->_connectionManager];
    rootUserCourier = v16->_rootUserCourier;
    v16->_rootUserCourier = v29;

    v31 = v16->_courierByUser;
    rootUserCourier = [(APSCourier *)v16 rootUserCourier];
    name = [userCopy name];
    [(NSMutableDictionary *)v31 setObject:rootUserCourier forKey:name];
  }

  return v16;
}

- (void)courierHasNoConnections:(id)connections
{
  connectionsCopy = connections;
  delegate = [(APSCourier *)self delegate];
  [delegate courierHasNoConnections:connectionsCopy];
}

- (void)courierConnectionStatusDidChange:(id)change
{
  changeCopy = change;
  delegate = [(APSCourier *)self delegate];
  [delegate courierConnectionStatusDidChange:changeCopy];
}

- (void)courierFilterChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(APSCourier *)self delegate];
  [delegate courierFilterChanged:changedCopy];
}

- (void)userCourier:(id)courier hasReasonToConnectChangedTo:(BOOL)to
{
  if (to)
  {
    [(APSProxyAgent *)self->_proxyAgent setEnabled:1];
  }
}

- (void)courierIsIdle:(id)idle
{
  idleCopy = idle;
  delegate = [(APSCourier *)self delegate];
  [delegate courierIsIdle:idleCopy];
}

- (void)shouldUseInternetDidChange:(id)change
{
  changeCopy = change;
  delegate = [(APSCourier *)self delegate];
  [delegate shouldUseInternetDidChange:changeCopy];
}

- (void)courierIdentityBecameAvailable:(id)available
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  proxyAgent = [(APSCourier *)self proxyAgent];
  activeProtocolConnections = [proxyAgent activeProtocolConnections];

  v6 = [activeProtocolConnections countByEnumeratingWithState:&v16 objects:v26 count:16];
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
          objc_enumerationMutation(activeProtocolConnections);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = +[APSLog courier];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          rootUserCourier = [(APSCourier *)self rootUserCourier];
          *buf = v15;
          selfCopy = self;
          v22 = 2112;
          v23 = rootUserCourier;
          v24 = 2112;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ Proxy was available adding since courier now has an identity {mainCourier: %@, protocolConnection: %@}", buf, 0x20u);
        }

        rootUserCourier2 = [(APSCourier *)self rootUserCourier];
        [rootUserCourier2 beginTrackingProtocolConnection:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [activeProtocolConnections countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)kickstartProxyConnection
{
  proxyAgent = [(APSCourier *)self proxyAgent];
  [proxyAgent kickstartProxyConnection];
}

- (APSIDSProxyManager)proxyManager
{
  delegate = [(APSCourier *)self delegate];
  proxyManager = [delegate proxyManager];

  return proxyManager;
}

- (void)didConnectOrDisconnectTokenForCourier:(id)courier onProtocolConnection:(id)connection
{
  courierCopy = courier;
  connectionCopy = connection;
  rootUserCourier = [(APSCourier *)self rootUserCourier];

  if (rootUserCourier == courierCopy)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSMutableArray *)self->_orderedListOfNonMainCouriers indexOfObject:courierCopy]+ 1;
  }

  if ([(NSMutableArray *)self->_orderedListOfNonMainCouriers count]> v9)
  {
    v10 = [(NSMutableArray *)self->_orderedListOfNonMainCouriers objectAtIndexedSubscript:v9];
    v11 = +[APSLog courier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Trying to connect/disconnect for courier %@", &v12, 0x16u);
    }

    [v10 beginTrackingProtocolConnection:connectionCopy];
  }
}

- (void)courierShouldRollBAAEnvironmentTokens:(id)tokens
{
  delegate = [(APSCourier *)self delegate];
  [delegate rollTokensForAllBAAEnvironments:self];
}

- (void)proxyAgent:(id)agent openedNewProtocolConnection:(id)connection
{
  connectionCopy = connection;
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  hasIdentity = [rootUserCourier hasIdentity];

  if (hasIdentity)
  {
    rootUserCourier2 = [(APSCourier *)self rootUserCourier];
    hasReasonToConnect = [rootUserCourier2 hasReasonToConnect];

    if (hasReasonToConnect)
    {
      rootUserCourier3 = [(APSCourier *)self rootUserCourier];
      [rootUserCourier3 beginTrackingProtocolConnection:connectionCopy];
    }

    else
    {
      v13 = +[APSLog courier];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        rootUserCourier4 = [(APSCourier *)self rootUserCourier];
        v15 = 138412802;
        selfCopy2 = self;
        v17 = 2112;
        v18 = rootUserCourier4;
        v19 = 2112;
        v20 = connectionCopy;
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
      rootUserCourier5 = [(APSCourier *)self rootUserCourier];
      v15 = 138412802;
      selfCopy2 = self;
      v17 = 2112;
      v18 = rootUserCourier5;
      v19 = 2112;
      v20 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Proxy available but courier does not have an identity yet, waiting {mainCourier: %@, protocolConnection: %@}", &v15, 0x20u);
    }
  }
}

- (void)updateKeepAliveInterval:(double)interval
{
  connectionManager = [(APSCourier *)self connectionManager];
  [connectionManager updateKeepAliveInterval:interval];
}

- (void)courierConnectionManager:(id)manager openedNewProtocolConnection:(id)connection
{
  connectionCopy = connection;
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  [rootUserCourier beginTrackingProtocolConnection:connectionCopy];
}

- (void)courierConnectionManager:(id)manager receivedServerBag:(id)bag finishedProcessingServerBagBlock:(id)block
{
  managerCopy = manager;
  bagCopy = bag;
  blockCopy = block;
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v9 = [allValues count];
  if (v9)
  {
    objc_initWeak(&location, self);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_courierByUser allValues];
    v11 = [allValues2 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v11)
    {
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(allValues2);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10001F140;
          v18[3] = &unk_100186558;
          objc_copyWeak(v21, &location);
          v20 = v27;
          v21[1] = v9;
          v19 = blockCopy;
          [v14 updateForReceivedConfig:bagCopy finishedProcessingConfigBlock:v18];

          objc_destroyWeak(v21);
        }

        v11 = [allValues2 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v11);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    blockCopy[2](blockCopy);
  }

  _Block_object_dispose(v27, 8);
}

- (void)courierConnectionManager:(id)manager shouldConnectBlock:(id)block
{
  blockCopy = block;
  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ checking if main user courier is ready to connect", buf, 0xCu);
  }

  rootUserCourier = [(APSCourier *)self rootUserCourier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001F438;
  v9[3] = &unk_100186580;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [rootUserCourier shouldConnectToCourier:v9];
}

- (BOOL)courierConnectionManagerClientsHaveEagerMessages
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasEagerMessages])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v7 + 1) + 8 * i) wantsCriticalReliability])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v7 + 1) + 8 * i) isInteractivePushDuringSleepEnabled])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (void)_addProtocolConnectionsToUserCourier:(id)courier
{
  courierCopy = courier;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    connectionManager = [(APSCourier *)self connectionManager];
    activeProtocolConnections = [connectionManager activeProtocolConnections];
    proxyAgent = [(APSCourier *)self proxyAgent];
    activeProtocolConnections2 = [proxyAgent activeProtocolConnections];
    *buf = 138413058;
    selfCopy = self;
    v34 = 2112;
    v35 = courierCopy;
    v36 = 2112;
    v37 = activeProtocolConnections;
    v38 = 2112;
    v39 = activeProtocolConnections2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Adding protocol connections to userCourier %@ {connectionManager.activeProtocolConnections: %@, proxyAgent.activeProtocolConnections: %@}", buf, 0x2Au);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  connectionManager2 = [(APSCourier *)self connectionManager];
  activeProtocolConnections3 = [connectionManager2 activeProtocolConnections];

  v12 = [activeProtocolConnections3 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(activeProtocolConnections3);
        }

        [courierCopy beginTrackingProtocolConnection:*(*(&v26 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [activeProtocolConnections3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  proxyAgent2 = [(APSCourier *)self proxyAgent];
  activeProtocolConnections4 = [proxyAgent2 activeProtocolConnections];

  v18 = [activeProtocolConnections4 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(activeProtocolConnections4);
        }

        [courierCopy beginTrackingProtocolConnection:*(*(&v22 + 1) + 8 * v21)];
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [activeProtocolConnections4 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }
}

- (id)daemonUserIDs
{
  courierByUser = [(APSCourier *)self courierByUser];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [courierByUser count]);

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
        isDaemonUser = [v11 isDaemonUser];

        if (isDaemonUser)
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

- (void)setupForUser:(id)user dependencies:(id)dependencies
{
  userCopy = user;
  dependenciesCopy = dependencies;
  courierByUser = self->_courierByUser;
  name = [userCopy name];
  v10 = [(NSMutableDictionary *)courierByUser objectForKey:name];

  if (!v10)
  {
    v11 = +[APSLog courier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [userCopy name];
      *buf = 138412546;
      selfCopy = self;
      v25 = 2112;
      v26 = name2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Login user %@", buf, 0x16u);
    }

    v13 = [APSUserCourier alloc];
    environment = [(APSCourier *)self environment];
    userPreferences = [dependenciesCopy userPreferences];
    clientIdentityProvider = [dependenciesCopy clientIdentityProvider];
    userAppIDManager = [dependenciesCopy userAppIDManager];
    systemTokenStorage = [dependenciesCopy systemTokenStorage];
    v19 = [(APSUserCourier *)v13 initWithEnvironment:environment courierUser:userCopy userPreferences:userPreferences clientIdentityProvider:clientIdentityProvider userAppIDManager:userAppIDManager systemTokenStorage:systemTokenStorage delegate:self withConnectionEstablisher:self->_connectionManager];

    v20 = self->_courierByUser;
    name3 = [userCopy name];
    [(NSMutableDictionary *)v20 setObject:v19 forKey:name3];

    [(NSMutableArray *)self->_orderedListOfNonMainCouriers addObject:v19];
    rootUserCourier = [(APSCourier *)self rootUserCourier];
    -[APSUserCourier setEnabled:](v19, "setEnabled:", [rootUserCourier enabled]);

    [(APSCourier *)self _addProtocolConnectionsToUserCourier:v19];
  }
}

- (void)logoutUser:(id)user
{
  userCopy = user;
  courierByUser = self->_courierByUser;
  name = [userCopy name];
  v7 = [(NSMutableDictionary *)courierByUser objectForKey:name];

  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = userCopy;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Logging out user %@ on %@", &v9, 0x20u);
  }

  [v7 logout];
}

- (void)flushUser:(id)user
{
  userCopy = user;
  courierByUser = self->_courierByUser;
  name = [userCopy name];
  v7 = [(NSMutableDictionary *)courierByUser objectForKey:name];

  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = userCopy;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Flushing user %@ on %@", &v9, 0x20u);
  }

  [v7 flush];
}

- (BOOL)isIdle
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  isIdle = [rootUserCourier isIdle];

  return isIdle;
}

- (id)connectionServersForUser:(id)user
{
  courierByUser = self->_courierByUser;
  name = [user name];
  v5 = [(NSMutableDictionary *)courierByUser objectForKey:name];
  connectionServers = [v5 connectionServers];

  return connectionServers;
}

- (void)addConnection:(id)connection forUser:(id)user dependencies:(id)dependencies
{
  connectionCopy = connection;
  userCopy = user;
  dependenciesCopy = dependencies;
  courierByUser = self->_courierByUser;
  name = [userCopy name];
  v12 = [(NSMutableDictionary *)courierByUser objectForKey:name];

  if (v12)
  {
    [v12 addConnection:connectionCopy];
  }

  else
  {
    v13 = [APSUserCourier alloc];
    environment = [(APSCourier *)self environment];
    userPreferences = [dependenciesCopy userPreferences];
    clientIdentityProvider = [dependenciesCopy clientIdentityProvider];
    userAppIDManager = [dependenciesCopy userAppIDManager];
    systemTokenStorage = [dependenciesCopy systemTokenStorage];
    v19 = [(APSUserCourier *)v13 initWithEnvironment:environment courierUser:userCopy userPreferences:userPreferences clientIdentityProvider:clientIdentityProvider userAppIDManager:userAppIDManager systemTokenStorage:systemTokenStorage delegate:self withConnectionEstablisher:self->_connectionManager];

    v20 = self->_courierByUser;
    name2 = [userCopy name];
    [(NSMutableDictionary *)v20 setObject:v19 forKey:name2];

    [(NSMutableArray *)self->_orderedListOfNonMainCouriers addObject:v19];
    rootUserCourier = [(APSCourier *)self rootUserCourier];
    -[APSUserCourier setEnabled:](v19, "setEnabled:", [rootUserCourier enabled]);

    [(APSUserCourier *)v19 addConnection:connectionCopy];
    [(APSCourier *)self _addProtocolConnectionsToUserCourier:v19];
  }
}

- (BOOL)isInteractivePushDuringSleepEnabled
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v7 + 1) + 8 * i) isInteractivePushDuringSleepEnabled])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  isKeepAliveProxyConfigured = [rootUserCourier isKeepAliveProxyConfigured];

  return isKeepAliveProxyConfigured;
}

- (void)appendPrettyStatusToStatusPrinter:(id)printer
{
  printerCopy = printer;
  connectionManager = [(APSCourier *)self connectionManager];
  [connectionManager appendPrettyStatusToStatusPrinter:printerCopy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v10) appendPrettyStatusToStatusPrinter:printerCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        jSONDebugState = [v11 JSONDebugState];
        [v4 setObject:jSONDebugState forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKeyedSubscript:@"users"];
  jSONDebugState2 = [(APSCourierConnectionManager *)self->_connectionManager JSONDebugState];
  [v3 setObject:jSONDebugState2 forKeyedSubscript:@"connection"];

  return v3;
}

- (NSString)debugDescription
{
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v4 = APSPrettyPrintCollection();

  v5 = objc_opt_class();
  environment = [(APSCourier *)self environment];
  name = [environment name];
  v8 = [(APSCourierConnectionManager *)self->_connectionManager debugDescription];
  v9 = [NSString stringWithFormat:@"<%@ %p, %@, couriers=%@, connectionManager=%@>", v5, self, name, v4, v8];

  return v9;
}

- (id)aps_prettyDescription
{
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v4 = APSPrettyPrintCollection();

  environment = [(APSCourier *)self environment];
  name = [environment name];
  connectionManager = self->_connectionManager;
  v8 = APSPrettyPrintObject();
  v9 = [NSString stringWithFormat:@"<%@, couriers=%@, connectionManager=%@>", name, v4, v8];

  return v9;
}

- (double)currentKeepAliveInterval
{
  connectionManager = [(APSCourier *)self connectionManager];
  [connectionManager currentKeepAliveInterval];
  v4 = v3;

  return v4;
}

- (void)removeConnectionForConnectionPortName:(id)name user:(id)user
{
  courierByUser = self->_courierByUser;
  nameCopy = name;
  name = [user name];
  v7 = [(NSMutableDictionary *)courierByUser objectForKey:name];
  [v7 removeConnectionForConnectionPortName:nameCopy];
}

- (id)connectionForConnectionPortName:(id)name user:(id)user
{
  courierByUser = self->_courierByUser;
  nameCopy = name;
  name = [user name];
  v8 = [(NSMutableDictionary *)courierByUser objectForKey:name];
  v9 = [v8 connectionForConnectionPortName:nameCopy];

  return v9;
}

- (void)requestConnectionIfNeeded
{
  connectionManager = [(APSCourier *)self connectionManager];
  [connectionManager requestConnectionIfNeeded];
}

- (id)publicTokenForUser:(id)user
{
  userCopy = user;
  courierByUser = [(APSCourier *)self courierByUser];
  name = [userCopy name];

  v7 = [courierByUser objectForKey:name];
  publicToken = [v7 publicToken];

  return publicToken;
}

- (void)canUseProxyChanged
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6) canUseProxyChanged];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)incomingPresenceWithGuid:(id)guid token:(id)token hwVersion:(id)version swVersion:(id)swVersion swBuild:(id)build certificates:(id)certificates nonce:(id)nonce signature:(id)self0 additionalFlags:(int)self1
{
  signatureCopy = signature;
  nonceCopy = nonce;
  certificatesCopy = certificates;
  buildCopy = build;
  swVersionCopy = swVersion;
  versionCopy = version;
  tokenCopy = token;
  guidCopy = guid;
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  LODWORD(v26) = flags;
  [rootUserCourier incomingPresenceWithGuid:guidCopy token:tokenCopy hwVersion:versionCopy swVersion:swVersionCopy swBuild:buildCopy certificates:certificatesCopy nonce:nonceCopy signature:signatureCopy additionalFlags:v26];
}

- (BOOL)isConnectedToService
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  isConnectedToService = [rootUserCourier isConnectedToService];

  return isConnectedToService;
}

- (void)invalidateDeviceIdentity
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  [rootUserCourier invalidateDeviceIdentity];
}

- (void)periodicSignalFired
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  [rootUserCourier periodicSignalFired];
}

- (id)connectionServerDelegateForUser:(id)user dependencies:(id)dependencies
{
  userCopy = user;
  dependenciesCopy = dependencies;
  courierByUser = self->_courierByUser;
  name = [userCopy name];
  v10 = [(NSMutableDictionary *)courierByUser objectForKey:name];

  if (!v10)
  {
    [(APSCourier *)self setupForUser:userCopy dependencies:dependenciesCopy];
  }

  v11 = self->_courierByUser;
  name2 = [userCopy name];
  v13 = [(NSMutableDictionary *)v11 objectForKey:name2];

  return v13;
}

- (BOOL)hasIdentity
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  hasIdentity = [rootUserCourier hasIdentity];

  return hasIdentity;
}

- (unint64_t)serverTimeInNanoSeconds
{
  connectionManager = [(APSCourier *)self connectionManager];
  serverTimeInNanoSeconds = [connectionManager serverTimeInNanoSeconds];

  return serverTimeInNanoSeconds;
}

- (id)latestGeoRegion
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  latestGeoRegion = [rootUserCourier latestGeoRegion];

  return latestGeoRegion;
}

- (id)allRegisteredChannelsForTopic:(id)topic user:(id)user
{
  courierByUser = self->_courierByUser;
  topicCopy = topic;
  name = [user name];
  v8 = [(NSMutableDictionary *)courierByUser objectForKey:name];
  v9 = [v8 allRegisteredChannelsForTopic:topicCopy];

  return v9;
}

- (void)performKeepAlive
{
  connectionManager = [(APSCourier *)self connectionManager];
  [connectionManager performKeepAlive];
}

- (BOOL)shouldUseInternet
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_courierByUser allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldUseInternet])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  connectionManager = [(APSCourier *)self connectionManager];
  ifname = [connectionManager ifname];

  return ifname;
}

- (void)fetchUserCourierIdentityForSigningWithCompletion:(id)completion
{
  completionCopy = completion;
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  clientIdentityProvider = [rootUserCourier clientIdentityProvider];
  rootUserCourier2 = [(APSCourier *)self rootUserCourier];
  publicToken = [rootUserCourier2 publicToken];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021368;
  v10[3] = &unk_1001865A8;
  v11 = completionCopy;
  v9 = completionCopy;
  [clientIdentityProvider fetchClientIdentityWithReason:0 hasExistingToken:publicToken != 0 completionHandler:v10];
}

- (void)rollTokenAndReconnect
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  [rootUserCourier rollTokenAndReconnectImmediately:1];
}

- (void)forceBAAIdentityRefreshWithCompletion:(id)completion
{
  completionCopy = completion;
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  clientIdentityProvider = [rootUserCourier clientIdentityProvider];
  [clientIdentityProvider debugForceDeleteIdentity:completionCopy];
}

- (void)prepareForDarkWake
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  [rootUserCourier prepareForDarkWake];

  connectionManager = [(APSCourier *)self connectionManager];
  [connectionManager prepareForDarkWake];
}

- (void)prepareForFullWake
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  [rootUserCourier prepareForFullWake];

  connectionManager = [(APSCourier *)self connectionManager];
  [connectionManager prepareForFullWake];
}

- (void)prepareForSleep
{
  rootUserCourier = [(APSCourier *)self rootUserCourier];
  [rootUserCourier prepareForSleep];

  connectionManager = [(APSCourier *)self connectionManager];
  [connectionManager prepareForSleep];
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

- (void)reportOffloadEvents:(const aonmicroapsd_telemetryeventrecord_v_s *)events droppedEvents:(aonmicroapsd_droppedtelemetryeventcount_s *)droppedEvents
{
  v5 = *&droppedEvents->var7;
  v7 = *&droppedEvents->var0;
  v6 = *&droppedEvents->var3;
  selfCopy = self;
  APSCourier.reportOffloadEvents(_:droppedEvents:)(events, v7, v6, v5);
}

@end