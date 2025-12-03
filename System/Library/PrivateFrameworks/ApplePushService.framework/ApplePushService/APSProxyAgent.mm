@interface APSProxyAgent
- (APSProxyAgent)initWithEnvironment:(id)environment proxyManager:(id)manager delegate:(id)delegate;
- (APSProxyAgentDelegate)delegate;
- (NSArray)activeProtocolConnections;
- (NSString)description;
- (id)sendMessage:(id)message topicHash:(id)hash lastRTT:(id)t token:(id)token ultraConstrainedAllowed:(BOOL)allowed withCompletion:(id)completion;
- (void)_failAllPendingMessages;
- (void)_markDisconnectedIsPermanent:(BOOL)permanent;
- (void)_noteConnection;
- (void)_sendInactiveMessage;
- (void)addDataListener:(id)listener;
- (void)addStateListener:(id)listener;
- (void)dealloc;
- (void)enumerateDataRecipient:(id)recipient;
- (void)enumerateStateListeners:(id)listeners;
- (void)kickstartProxyConnection;
- (void)proxyManager:(id)manager appTokenGenerateResponse:(id)response error:(id)error guid:(id)guid environmentName:(id)name;
- (void)proxyManager:(id)manager expiredNonceWithServerTime:(id)time shouldRollToken:(BOOL)token guid:(id)guid environmentName:(id)name;
- (void)proxyManager:(id)manager handlePubSubChannelListRequest:(int64_t)request envName:(id)name guid:(id)guid;
- (void)proxyManager:(id)manager handlePubSubChannelListResponse:(id)response environmentName:(id)name guid:(id)guid;
- (void)proxyManager:(id)manager handlePubSubUpdateMessage:(id)message connectionType:(int64_t)type environmentName:(id)name guid:(id)guid;
- (void)proxyManager:(id)manager incomingMessageSize:(id)size largeMessageSize:(id)messageSize guid:(id)guid environmentName:(id)name;
- (void)proxyManager:(id)manager incomingPushToken:(id)token guid:(id)guid environmentName:(id)name;
- (void)proxyManager:(id)manager isConnected:(BOOL)connected guid:(id)guid environmentName:(id)name;
- (void)proxyManager:(id)manager isNearbyChanged:(BOOL)changed;
- (void)proxyManager:(id)manager receivedPush:(id)push connectionType:(id)type generation:(id)generation guid:(id)guid environmentName:(id)name;
- (void)proxyManager:(id)manager reversePushResponse:(id)response messageGUID:(id)d messageId:(id)id guid:(id)guid environmentName:(id)name;
- (void)proxyManagerReceivedDaemonAliveNotification:(id)notification;
- (void)removeDataListener:(id)listener;
- (void)removeStateListener:(id)listener;
- (void)sendConnectMessageWithToken:(id)token presenceFlags:(int)flags certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)info connectionErrors:(id)errors withCompletion:(id)self0;
- (void)sendFilterMessageWithEnabledTopicsByHash:(id)hash ignoredTopicsByHash:(id)byHash opportunisticTopicsByHash:(id)topicsByHash nonWakingTopicsByHash:(id)wakingTopicsByHash pausedTopicsByHash:(id)pausedTopicsByHash saltsByTopic:(id)topic token:(id)token version:(unint64_t)self0 expectsResponse:(BOOL)self1 withCompletion:(id)self2;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation APSProxyAgent

- (APSProxyAgent)initWithEnvironment:(id)environment proxyManager:(id)manager delegate:(id)delegate
{
  environmentCopy = environment;
  managerCopy = manager;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = APSProxyAgent;
  v12 = [(APSProxyAgent *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_environment, environment);
    v14 = +[NSUUID UUID];
    uUIDString = [v14 UUIDString];
    guid = v13->_guid;
    v13->_guid = uUIDString;

    v17 = objc_alloc_init(NSMutableArray);
    appTokenGenerateCompletions = v13->_appTokenGenerateCompletions;
    v13->_appTokenGenerateCompletions = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    connectionTypeByMessageID = v13->_connectionTypeByMessageID;
    v13->_connectionTypeByMessageID = v19;

    v21 = [NSHashTable hashTableWithOptions:517];
    stateListeners = v13->_stateListeners;
    v13->_stateListeners = v21;

    v23 = [NSHashTable hashTableWithOptions:517];
    dataListeners = v13->_dataListeners;
    v13->_dataListeners = v23;

    objc_storeStrong(&v13->_proxyManager, manager);
    [(APSIDSProxyManager *)v13->_proxyManager setListener:v13 environment:v13->_environment];
  }

  return v13;
}

- (void)dealloc
{
  [(APSIDSProxyManager *)self->_proxyManager removeListener:self environment:self->_environment];
  v3.receiver = self;
  v3.super_class = APSProxyAgent;
  [(APSProxyAgent *)&v3 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  environment = [(APSProxyAgent *)self environment];
  name = [environment name];
  v6 = [NSString stringWithFormat:@"<%@ %p %@>", v3, self, name];

  return v6;
}

- (NSArray)activeProtocolConnections
{
  if (self->_canAttemptConnection)
  {
    selfCopy = self;
    v2 = [NSArray arrayWithObjects:&selfCopy count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (enabledCopy)
    {
      v5 = @"YES";
    }

    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ setEnabled: %@", &v6, 0x16u);
  }

  if (self->_enabled != enabledCopy)
  {
    self->_enabled = enabledCopy;
    if (enabledCopy)
    {
      [(APSProxyAgent *)self proxyManager:self->_proxyManager isNearbyChanged:[(APSIDSProxyManager *)self->_proxyManager isNearby]];
    }

    else
    {
      [(APSProxyAgent *)self _markDisconnectedIsPermanent:1];
      [(APSProxyAgent *)self _sendInactiveMessage];
    }
  }
}

- (void)_sendInactiveMessage
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    isNearby = [(APSIDSProxyManager *)self->_proxyManager isNearby];
    v4 = @"NO";
    if (isNearby)
    {
      v4 = @"YES";
    }

    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sendInactiveMessage, isNearby? %@", &v7, 0x16u);
  }

  if ([(APSIDSProxyManager *)self->_proxyManager isNearby])
  {
    proxyManager = self->_proxyManager;
    name = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendInactiveWithEnvironmentName:name guid:self->_guid];
  }
}

- (void)_failAllPendingMessages
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(NSMutableDictionary *)self->_outgoingMessageGUIDToCompletion count];
    *buf = 138412546;
    selfCopy = self;
    v21 = 2048;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ _failAllPendingMessages: %lu", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_outgoingMessageGUIDToCompletion;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_outgoingMessageGUIDToCompletion objectForKey:*(*(&v14 + 1) + 8 * v8)];
        v10 = APSError();
        (v9)[2](v9, 0, v10);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(APSIDSProxyManager *)self->_proxyManager removeAllPendingAPSMessages];
  appTokenGenerateCompletions = [(APSProxyAgent *)self appTokenGenerateCompletions];
  [appTokenGenerateCompletions removeAllObjects];

  connectionTypeByMessageID = [(APSProxyAgent *)self connectionTypeByMessageID];
  [connectionTypeByMessageID removeAllObjects];

  [(APSProxyAgent *)self setPresenceCompletion:0];
  [(APSProxyAgent *)self setQueuedPresenceSend:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BE3E0;
  v13[3] = &unk_100188A38;
  v13[4] = self;
  [(APSProxyAgent *)self enumerateStateListeners:v13];
}

- (void)_markDisconnectedIsPermanent:(BOOL)permanent
{
  if (permanent)
  {
    [(APSProxyAgent *)self _failAllPendingMessages];
    [(APSProxyAgent *)self setCanAttemptConnection:0];
  }

  [(APSProxyAgent *)self setHasActiveConnection:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BE568;
  v8[3] = &unk_100188A38;
  v8[4] = self;
  [(APSProxyAgent *)self enumerateStateListeners:v8];
  if (!permanent)
  {
    proxyManager = [(APSProxyAgent *)self proxyManager];
    isNearby = [proxyManager isNearby];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (isNearby)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ _markDisconnectedIsPermanent, might reconnect {isNearby: %@}", buf, 0x16u);
    }

    if (isNearby)
    {
      [(APSProxyAgent *)self _noteConnection];
    }
  }
}

- (void)kickstartProxyConnection
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: We may be an orphaned client, kickstarting proxy connection.", &v3, 0xCu);
  }

  [(APSProxyAgent *)self _noteConnection];
}

- (void)_noteConnection
{
  [(APSProxyAgent *)self setCanAttemptConnection:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained proxyAgent:self openedNewProtocolConnection:self];
}

- (void)proxyManager:(id)manager isNearbyChanged:(BOOL)changed
{
  changedCopy = changed;
  managerCopy = manager;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (changedCopy)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ isNearbyChanged %@", &v8, 0x16u);
  }

  if (changedCopy)
  {
    [(APSProxyAgent *)self _noteConnection];
  }

  else
  {
    [(APSProxyAgent *)self _markDisconnectedIsPermanent:1];
  }
}

- (void)proxyManagerReceivedDaemonAliveNotification:(id)notification
{
  queuedPresenceSend = [(APSProxyAgent *)self queuedPresenceSend];

  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (queuedPresenceSend)
  {
    if (v5)
    {
      v7 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ proxyManagerReceivedDaemonAliveNotification, resending presence", &v7, 0xCu);
    }

    queuedPresenceSend2 = [(APSProxyAgent *)self queuedPresenceSend];
    (queuedPresenceSend2)[2](queuedPresenceSend2, self);
  }

  else
  {
    if (v5)
    {
      v7 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ proxyManagerReceivedDaemonAliveNotification, failing connection", &v7, 0xCu);
    }

    [(APSProxyAgent *)self _markDisconnectedIsPermanent:0];
  }
}

- (void)proxyManager:(id)manager isConnected:(BOOL)connected guid:(id)guid environmentName:(id)name
{
  connectedCopy = connected;
  managerCopy = manager;
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    selfCopy2 = self;
    v27 = 2112;
    v28 = guidCopy;
    v29 = 2112;
    guidCopy2 = guid;
    v31 = 2112;
    v32 = nameCopy;
    v33 = 2112;
    v34 = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ connectedStatus change guid %@ myGuid %@ envName %@  myEnvName %@", buf, 0x34u);
  }

  if ([(__CFString *)guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    v16 = [nameCopy isEqualToString:name2];

    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"NO";
        if (connectedCopy)
        {
          v17 = @"YES";
        }

        *buf = 138412546;
        selfCopy2 = self;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received connectedStatus, isConnected %@", buf, 0x16u);
      }

      if (connectedCopy)
      {
        self->_presenceRetryTimeDelta = 0;
        v23 = @"APSProtocolConnectedResponse";
        v24 = &off_100197B00;
        v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v19 = [v18 mutableCopy];

        if ([(APSProxyAgent *)self gotNewToken])
        {
          token = [(APSProxyAgent *)self token];
          [v19 setObject:token forKeyedSubscript:@"APSProtocolToken"];

          [(APSProxyAgent *)self setGotNewToken:0];
        }

        [(APSProxyAgent *)self setHasActiveConnection:1];
        presenceCompletion = [(APSProxyAgent *)self presenceCompletion];

        if (presenceCompletion)
        {
          presenceCompletion2 = [(APSProxyAgent *)self presenceCompletion];
          (presenceCompletion2)[2](presenceCompletion2, v19, 0);
        }
      }

      else
      {
        [(APSProxyAgent *)self _markDisconnectedIsPermanent:0];
      }
    }
  }
}

- (void)proxyManager:(id)manager incomingPushToken:(id)token guid:(id)guid environmentName:(id)name
{
  managerCopy = manager;
  tokenCopy = token;
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    v18 = 138413314;
    selfCopy2 = self;
    v20 = 2112;
    v21 = guidCopy;
    v22 = 2112;
    guidCopy2 = guid;
    v24 = 2112;
    v25 = nameCopy;
    v26 = 2112;
    v27 = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ incomingPushToken guid %@ myGuid %@  envName %@  myEnvName %@", &v18, 0x34u);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    v17 = [nameCopy isEqualToString:name2];

    if (v17)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        selfCopy2 = self;
        v20 = 2112;
        v21 = tokenCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received push token %@", &v18, 0x16u);
      }

      [(APSProxyAgent *)self setToken:tokenCopy];
      [(APSProxyAgent *)self setGotNewToken:1];
    }
  }
}

- (void)proxyManager:(id)manager incomingMessageSize:(id)size largeMessageSize:(id)messageSize guid:(id)guid environmentName:(id)name
{
  managerCopy = manager;
  sizeCopy = size;
  messageSizeCopy = messageSize;
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    v21 = 138413826;
    selfCopy2 = self;
    v23 = 2112;
    v24 = sizeCopy;
    v25 = 2112;
    v26 = messageSizeCopy;
    v27 = 2112;
    v28 = guidCopy;
    v29 = 2112;
    guidCopy2 = guid;
    v31 = 2112;
    v32 = nameCopy;
    v33 = 2112;
    v34 = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ incomingMessageSize %@ largeMessageSize %@ guid %@ myGuid %@  envName %@  myEnvName %@", &v21, 0x48u);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    v20 = [nameCopy isEqualToString:name2];

    if (v20)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412802;
        selfCopy2 = self;
        v23 = 2112;
        v24 = sizeCopy;
        v25 = 2112;
        v26 = messageSizeCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received sizes %@ %@", &v21, 0x20u);
      }

      [(APSProxyAgent *)self setMaxMessageSize:sizeCopy];
      [(APSProxyAgent *)self setMaxLargeMessageSize:messageSizeCopy];
    }
  }
}

- (void)proxyManager:(id)manager receivedPush:(id)push connectionType:(id)type generation:(id)generation guid:(id)guid environmentName:(id)name
{
  managerCopy = manager;
  pushCopy = push;
  typeCopy = type;
  generationCopy = generation;
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    selfCopy2 = self;
    v31 = 2112;
    v32 = guidCopy;
    v33 = 2112;
    guidCopy2 = guid;
    v35 = 2112;
    v36 = nameCopy;
    v37 = 2112;
    v38 = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ receivedPush guid %@ myGuid %@  envName %@  myEnvName %@", buf, 0x34u);
  }

  v22 = [pushCopy objectForKey:@"APSProtocolMessageID"];
  if (v22)
  {
    connectionTypeByMessageID = [(APSProxyAgent *)self connectionTypeByMessageID];
    [connectionTypeByMessageID setObject:typeCopy forKeyedSubscript:v22];
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    v25 = [nameCopy isEqualToString:name2];

    if (v25)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v31 = 2112;
        v32 = pushCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received push %@", buf, 0x16u);
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000BF1D0;
      v26[3] = &unk_100189F20;
      v26[4] = self;
      v27 = pushCopy;
      v28 = generationCopy;
      [(APSProxyAgent *)self enumerateDataRecipient:v26];
    }
  }
}

- (void)proxyManager:(id)manager reversePushResponse:(id)response messageGUID:(id)d messageId:(id)id guid:(id)guid environmentName:(id)name
{
  managerCopy = manager;
  responseCopy = response;
  dCopy = d;
  idCopy = id;
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    selfCopy2 = self;
    v33 = 2112;
    v34 = guidCopy;
    v35 = 2112;
    guidCopy2 = guid;
    v37 = 2112;
    v38 = nameCopy;
    v39 = 2112;
    v40 = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ reversePushResponse guid %@ myGuid %@  envName %@  myEnvName %@", buf, 0x34u);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    v23 = [nameCopy isEqualToString:name2];

    if (v23)
    {
      v24 = [(NSMutableDictionary *)self->_outgoingMessageGUIDToCompletion objectForKey:dCopy];
      if (v24)
      {
        intValue = [responseCopy intValue];
        if (intValue > 6)
        {
          v26 = 255;
        }

        else
        {
          v26 = dword_10015CEB0[intValue];
        }

        v27 = [NSNumber numberWithUnsignedInt:v26, @"APSProtocolDeliveryStatus"];
        v30 = v27;
        v28 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];

        (v24)[2](v24, v28, 0);
        [(NSMutableDictionary *)self->_outgoingMessageGUIDToCompletion removeObjectForKey:dCopy];
        [(NSMutableDictionary *)self->_outgoingMessageGUIDToMessageID removeObjectForKey:dCopy];
        if ([responseCopy intValue] == 2)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy2 = self;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ reverse push response was Invalid -- make sure the agent device has asserted our presence.", buf, 0xCu);
          }

          [(APSProxyAgent *)self _markDisconnectedIsPermanent:0];
        }
      }
    }
  }
}

- (void)proxyManager:(id)manager expiredNonceWithServerTime:(id)time shouldRollToken:(BOOL)token guid:(id)guid environmentName:(id)name
{
  tokenCopy = token;
  managerCopy = manager;
  timeCopy = time;
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (tokenCopy)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    presenceRetryTimeDelta = self->_presenceRetryTimeDelta;
    *buf = 138414082;
    selfCopy = self;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = guidCopy;
    v34 = 2112;
    guidCopy2 = guid;
    v36 = 2112;
    v37 = nameCopy;
    v38 = 2112;
    v39 = name;
    v40 = 2112;
    v41 = timeCopy;
    v42 = 2048;
    v43 = presenceRetryTimeDelta;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ expiredNonceWithServerTime shouldRollToken %@ guid %@ myGuid %@  envName %@  myEnvName %@  serverTime %@  delayTime %llu", buf, 0x52u);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    if (![nameCopy isEqualToString:name2])
    {
LABEL_12:

      goto LABEL_13;
    }

    v21 = self->_presenceRetryTimeDelta;

    if (v21 <= 0x8BB2C96FFFLL)
    {
      v22 = dispatch_time(0, self->_presenceRetryTimeDelta);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BF76C;
      block[3] = &unk_100189F48;
      v27 = tokenCopy;
      v25 = timeCopy;
      selfCopy2 = self;
      dispatch_after(v22, &_dispatch_main_q, block);
      v23 = 2 * self->_presenceRetryTimeDelta;
      if (!v23)
      {
        v23 = 2;
      }

      self->_presenceRetryTimeDelta = v23;
      name2 = v25;
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)proxyManager:(id)manager appTokenGenerateResponse:(id)response error:(id)error guid:(id)guid environmentName:(id)name
{
  managerCopy = manager;
  responseCopy = response;
  errorCopy = error;
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    v24 = 138413314;
    selfCopy2 = self;
    v26 = 2112;
    v27 = guidCopy;
    v28 = 2112;
    guidCopy2 = guid;
    v30 = 2112;
    v31 = nameCopy;
    v32 = 2112;
    v33 = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ appTokenGenerate response guid %@ myGuid %@  envName %@  myEnvName %@", &v24, 0x34u);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    v20 = [nameCopy isEqualToString:name2];

    if (v20)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412802;
        selfCopy2 = self;
        v26 = 2112;
        v27 = responseCopy;
        v28 = 2112;
        guidCopy2 = errorCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received appTokenGenerateResponse %@ errorCode %@", &v24, 0x20u);
      }

      appTokenGenerateCompletions = [(APSProxyAgent *)self appTokenGenerateCompletions];
      firstObject = [appTokenGenerateCompletions firstObject];

      if (firstObject)
      {
        (firstObject)[2](firstObject, responseCopy, 0);
        appTokenGenerateCompletions2 = [(APSProxyAgent *)self appTokenGenerateCompletions];
        [appTokenGenerateCompletions2 removeObjectAtIndex:0];
      }
    }
  }
}

- (void)proxyManager:(id)manager handlePubSubChannelListResponse:(id)response environmentName:(id)name guid:(id)guid
{
  managerCopy = manager;
  responseCopy = response;
  nameCopy = name;
  guidCopy = guid;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v20 = 2112;
    v21 = guidCopy;
    v22 = 2112;
    v23 = nameCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sendPubSubChannelList response guid %@ envName %@", buf, 0x20u);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name = [(APSEnvironment *)self->_environment name];
    v15 = [nameCopy isEqualToString:name];

    if (v15)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000BFCA4;
      v16[3] = &unk_100189F70;
      v16[4] = self;
      v17 = responseCopy;
      [(APSProxyAgent *)self enumerateDataRecipient:v16];
    }
  }
}

- (void)proxyManager:(id)manager handlePubSubUpdateMessage:(id)message connectionType:(int64_t)type environmentName:(id)name guid:(id)guid
{
  managerCopy = manager;
  messageCopy = message;
  nameCopy = name;
  guidCopy = guid;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = sub_10001B3FC(type);
    *buf = 138413058;
    selfCopy = self;
    v23 = 2112;
    v24 = guidCopy;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = nameCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ PubSub update message guid %@ interface %@ envName %@", buf, 0x2Au);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name = [(APSEnvironment *)self->_environment name];
    v18 = [nameCopy isEqualToString:name];

    if (v18)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000BFE74;
      v19[3] = &unk_100189F70;
      v19[4] = self;
      v20 = messageCopy;
      [(APSProxyAgent *)self enumerateDataRecipient:v19];
    }
  }
}

- (void)proxyManager:(id)manager handlePubSubChannelListRequest:(int64_t)request envName:(id)name guid:(id)guid
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    guidCopy = guid;
    v13 = 2112;
    nameCopy = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ PubSub channel list request message guid %@ envName %@", &v9, 0x20u);
  }
}

- (void)enumerateStateListeners:(id)listeners
{
  listenersCopy = listeners;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_stateListeners;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      listenersCopy[2](listenersCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateDataRecipient:(id)recipient
{
  recipientCopy = recipient;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_dataListeners;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      recipientCopy[2](recipientCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addStateListener:(id)listener
{
  listenerCopy = listener;
  stateListeners = [(APSProxyAgent *)self stateListeners];
  [stateListeners addObject:listenerCopy];
}

- (void)removeStateListener:(id)listener
{
  listenerCopy = listener;
  stateListeners = [(APSProxyAgent *)self stateListeners];
  [stateListeners removeObject:listenerCopy];
}

- (void)addDataListener:(id)listener
{
  listenerCopy = listener;
  dataListeners = [(APSProxyAgent *)self dataListeners];
  [dataListeners addObject:listenerCopy];
}

- (void)removeDataListener:(id)listener
{
  listenerCopy = listener;
  dataListeners = [(APSProxyAgent *)self dataListeners];
  [dataListeners removeObject:listenerCopy];
}

- (void)sendConnectMessageWithToken:(id)token presenceFlags:(int)flags certificates:(id)certificates nonce:(id)nonce signature:(id)signature hostCertificateInfo:(id)info connectionErrors:(id)errors withCompletion:(id)self0
{
  tokenCopy = token;
  certificatesCopy = certificates;
  nonceCopy = nonce;
  signatureCopy = signature;
  infoCopy = info;
  errorsCopy = errors;
  completionCopy = completion;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    isNearby = [(APSIDSProxyManager *)self->_proxyManager isNearby];
    v24 = @"NO";
    *buf = 138412802;
    *&buf[4] = self;
    v48 = 2112;
    if (isNearby)
    {
      v24 = @"YES";
    }

    v49 = tokenCopy;
    v50 = 2112;
    v51 = v24;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ _sendPresenceMessageWithServerTime %@, isNearby? %@", buf, 0x20u);
  }

  if (self->_enabled && [(APSProxyAgent *)self canAttemptConnection])
  {
    flagsCopy = flags;
    *buf = 0;
    sysctlbyname("hw.machine", 0, buf, 0, 0);
    v25 = malloc_type_malloc(*buf, 0x4D4F69CuLL);
    sysctlbyname("hw.machine", v25, buf, 0, 0);
    v33 = [[NSString alloc] initWithCString:v25 encoding:4];
    if (v25)
    {
      free(v25);
    }

    v26 = _CFCopySystemVersionDictionary();
    v34 = v26;
    if (v26)
    {
      v27 = v26;
      v28 = [v26 objectForKey:_kCFSystemVersionProductVersionKey];
      v29 = [v27 objectForKey:_kCFSystemVersionBuildVersionKey];
    }

    else
    {
      v29 = @"Unknown";
      v28 = @"Unknown";
    }

    [(APSProxyAgent *)self setPresenceCompletion:completionCopy];
    [(APSProxyAgent *)self setToken:tokenCopy];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000C071C;
    v37[3] = &unk_100189F98;
    v38 = tokenCopy;
    v39 = v33;
    v40 = v28;
    v41 = v29;
    v42 = certificatesCopy;
    v43 = nonceCopy;
    v44 = signatureCopy;
    v46 = flagsCopy;
    v45 = infoCopy;
    v32 = v29;
    v36 = v28;
    v30 = v33;
    [(APSProxyAgent *)self setQueuedPresenceSend:v37];
    queuedPresenceSend = [(APSProxyAgent *)self queuedPresenceSend];
    (queuedPresenceSend)[2](queuedPresenceSend, self);
  }
}

- (id)sendMessage:(id)message topicHash:(id)hash lastRTT:(id)t token:(id)token ultraConstrainedAllowed:(BOOL)allowed withCompletion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v12 = completionCopy;
  if (messageCopy && completionCopy)
  {
    guid = [messageCopy guid];
    v14 = guid;
    if (guid)
    {
      uUIDString = guid;
    }

    else
    {
      v17 = +[NSUUID UUID];
      uUIDString = [v17 UUIDString];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412546;
      selfCopy = self;
      v32 = 2112;
      v33 = uUIDString;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sendingMessage with messageGUID %@", &v30, 0x16u);
    }

    [messageCopy setGuid:uUIDString];
    outgoingMessageGUIDToCompletion = self->_outgoingMessageGUIDToCompletion;
    if (!outgoingMessageGUIDToCompletion)
    {
      v19 = objc_alloc_init(NSMutableDictionary);
      v20 = self->_outgoingMessageGUIDToCompletion;
      self->_outgoingMessageGUIDToCompletion = v19;

      outgoingMessageGUIDToCompletion = self->_outgoingMessageGUIDToCompletion;
    }

    v21 = objc_retainBlock(v12);
    [(NSMutableDictionary *)outgoingMessageGUIDToCompletion setObject:v21 forKey:uUIDString];

    outgoingMessageGUIDToMessageID = self->_outgoingMessageGUIDToMessageID;
    if (!outgoingMessageGUIDToMessageID)
    {
      v23 = objc_alloc_init(NSMutableDictionary);
      v24 = self->_outgoingMessageGUIDToMessageID;
      self->_outgoingMessageGUIDToMessageID = v23;

      outgoingMessageGUIDToMessageID = self->_outgoingMessageGUIDToMessageID;
    }

    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [messageCopy messageID]);
    [(NSMutableDictionary *)outgoingMessageGUIDToMessageID setObject:v25 forKey:uUIDString];

    guid = self->_guid;
    proxyManager = self->_proxyManager;
    name = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendMessage:messageCopy guid:guid environmentName:name];

    v16 = 0;
  }

  else
  {
    v16 = APSError();
  }

  return v16;
}

- (void)sendFilterMessageWithEnabledTopicsByHash:(id)hash ignoredTopicsByHash:(id)byHash opportunisticTopicsByHash:(id)topicsByHash nonWakingTopicsByHash:(id)wakingTopicsByHash pausedTopicsByHash:(id)pausedTopicsByHash saltsByTopic:(id)topic token:(id)token version:(unint64_t)self0 expectsResponse:(BOOL)self1 withCompletion:(id)self2
{
  hashCopy = hash;
  byHashCopy = byHash;
  topicsByHashCopy = topicsByHash;
  wakingTopicsByHashCopy = wakingTopicsByHash;
  topicCopy = topic;
  if ([(APSProxyAgent *)self hasActiveConnection])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      allValues = [hashCopy allValues];
      allValues2 = [byHashCopy allValues];
      allValues3 = [topicsByHashCopy allValues];
      allValues4 = [wakingTopicsByHashCopy allValues];
      *buf = 138413570;
      selfCopy = self;
      v39 = 2112;
      v40 = allValues;
      v41 = 2112;
      v42 = allValues2;
      v43 = 2112;
      v44 = allValues3;
      v45 = 2112;
      v46 = allValues4;
      v47 = 2112;
      v48 = topicCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sending filter to agent device for enabled %@ ignored %@ opportunistic %@ nonWaking %@ topicSalts %@", buf, 0x3Eu);
    }

    proxyManager = self->_proxyManager;
    name = [(APSEnvironment *)self->_environment name];
    guid = self->_guid;
    allValues5 = [hashCopy allValues];
    allValues6 = [byHashCopy allValues];
    [topicsByHashCopy allValues];
    v29 = topicsByHashCopy;
    v31 = v30 = hashCopy;
    [wakingTopicsByHashCopy allValues];
    v32 = wakingTopicsByHashCopy;
    v34 = v33 = byHashCopy;
    [(APSIDSProxyManager *)proxyManager sendFilterWithEnvironmentName:name guid:guid enabledTopics:allValues5 ignoredTopics:allValues6 opportunisticTopics:v31 nonWakingTopics:v34 topicSalts:topicCopy];

    byHashCopy = v33;
    wakingTopicsByHashCopy = v32;

    hashCopy = v30;
    topicsByHashCopy = v29;
  }
}

- (APSProxyAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end