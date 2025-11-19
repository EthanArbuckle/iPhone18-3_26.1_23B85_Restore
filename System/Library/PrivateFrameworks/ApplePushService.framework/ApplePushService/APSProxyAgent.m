@interface APSProxyAgent
- (APSProxyAgent)initWithEnvironment:(id)a3 proxyManager:(id)a4 delegate:(id)a5;
- (APSProxyAgentDelegate)delegate;
- (NSArray)activeProtocolConnections;
- (NSString)description;
- (id)sendMessage:(id)a3 topicHash:(id)a4 lastRTT:(id)a5 token:(id)a6 ultraConstrainedAllowed:(BOOL)a7 withCompletion:(id)a8;
- (void)_failAllPendingMessages;
- (void)_markDisconnectedIsPermanent:(BOOL)a3;
- (void)_noteConnection;
- (void)_sendInactiveMessage;
- (void)addDataListener:(id)a3;
- (void)addStateListener:(id)a3;
- (void)dealloc;
- (void)enumerateDataRecipient:(id)a3;
- (void)enumerateStateListeners:(id)a3;
- (void)kickstartProxyConnection;
- (void)proxyManager:(id)a3 appTokenGenerateResponse:(id)a4 error:(id)a5 guid:(id)a6 environmentName:(id)a7;
- (void)proxyManager:(id)a3 expiredNonceWithServerTime:(id)a4 shouldRollToken:(BOOL)a5 guid:(id)a6 environmentName:(id)a7;
- (void)proxyManager:(id)a3 handlePubSubChannelListRequest:(int64_t)a4 envName:(id)a5 guid:(id)a6;
- (void)proxyManager:(id)a3 handlePubSubChannelListResponse:(id)a4 environmentName:(id)a5 guid:(id)a6;
- (void)proxyManager:(id)a3 handlePubSubUpdateMessage:(id)a4 connectionType:(int64_t)a5 environmentName:(id)a6 guid:(id)a7;
- (void)proxyManager:(id)a3 incomingMessageSize:(id)a4 largeMessageSize:(id)a5 guid:(id)a6 environmentName:(id)a7;
- (void)proxyManager:(id)a3 incomingPushToken:(id)a4 guid:(id)a5 environmentName:(id)a6;
- (void)proxyManager:(id)a3 isConnected:(BOOL)a4 guid:(id)a5 environmentName:(id)a6;
- (void)proxyManager:(id)a3 isNearbyChanged:(BOOL)a4;
- (void)proxyManager:(id)a3 receivedPush:(id)a4 connectionType:(id)a5 generation:(id)a6 guid:(id)a7 environmentName:(id)a8;
- (void)proxyManager:(id)a3 reversePushResponse:(id)a4 messageGUID:(id)a5 messageId:(id)a6 guid:(id)a7 environmentName:(id)a8;
- (void)proxyManagerReceivedDaemonAliveNotification:(id)a3;
- (void)removeDataListener:(id)a3;
- (void)removeStateListener:(id)a3;
- (void)sendConnectMessageWithToken:(id)a3 presenceFlags:(int)a4 certificates:(id)a5 nonce:(id)a6 signature:(id)a7 hostCertificateInfo:(id)a8 connectionErrors:(id)a9 withCompletion:(id)a10;
- (void)sendFilterMessageWithEnabledTopicsByHash:(id)a3 ignoredTopicsByHash:(id)a4 opportunisticTopicsByHash:(id)a5 nonWakingTopicsByHash:(id)a6 pausedTopicsByHash:(id)a7 saltsByTopic:(id)a8 token:(id)a9 version:(unint64_t)a10 expectsResponse:(BOOL)a11 withCompletion:(id)a12;
- (void)setEnabled:(BOOL)a3;
@end

@implementation APSProxyAgent

- (APSProxyAgent)initWithEnvironment:(id)a3 proxyManager:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = APSProxyAgent;
  v12 = [(APSProxyAgent *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v11);
    objc_storeStrong(&v13->_environment, a3);
    v14 = +[NSUUID UUID];
    v15 = [v14 UUIDString];
    guid = v13->_guid;
    v13->_guid = v15;

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

    objc_storeStrong(&v13->_proxyManager, a4);
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
  v4 = [(APSProxyAgent *)self environment];
  v5 = [v4 name];
  v6 = [NSString stringWithFormat:@"<%@ %p %@>", v3, self, v5];

  return v6;
}

- (NSArray)activeProtocolConnections
{
  if (self->_canAttemptConnection)
  {
    v4 = self;
    v2 = [NSArray arrayWithObjects:&v4 count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ setEnabled: %@", &v6, 0x16u);
  }

  if (self->_enabled != v3)
  {
    self->_enabled = v3;
    if (v3)
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
    v3 = [(APSIDSProxyManager *)self->_proxyManager isNearby];
    v4 = @"NO";
    if (v3)
    {
      v4 = @"YES";
    }

    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sendInactiveMessage, isNearby? %@", &v7, 0x16u);
  }

  if ([(APSIDSProxyManager *)self->_proxyManager isNearby])
  {
    proxyManager = self->_proxyManager;
    v6 = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendInactiveWithEnvironmentName:v6 guid:self->_guid];
  }
}

- (void)_failAllPendingMessages
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(NSMutableDictionary *)self->_outgoingMessageGUIDToCompletion count];
    *buf = 138412546;
    v20 = self;
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
  v11 = [(APSProxyAgent *)self appTokenGenerateCompletions];
  [v11 removeAllObjects];

  v12 = [(APSProxyAgent *)self connectionTypeByMessageID];
  [v12 removeAllObjects];

  [(APSProxyAgent *)self setPresenceCompletion:0];
  [(APSProxyAgent *)self setQueuedPresenceSend:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BE3E0;
  v13[3] = &unk_100188A38;
  v13[4] = self;
  [(APSProxyAgent *)self enumerateStateListeners:v13];
}

- (void)_markDisconnectedIsPermanent:(BOOL)a3
{
  if (a3)
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
  if (!a3)
  {
    v5 = [(APSProxyAgent *)self proxyManager];
    v6 = [v5 isNearby];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (v6)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ _markDisconnectedIsPermanent, might reconnect {isNearby: %@}", buf, 0x16u);
    }

    if (v6)
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
    v4 = self;
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

- (void)proxyManager:(id)a3 isNearbyChanged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ isNearbyChanged %@", &v8, 0x16u);
  }

  if (v4)
  {
    [(APSProxyAgent *)self _noteConnection];
  }

  else
  {
    [(APSProxyAgent *)self _markDisconnectedIsPermanent:1];
  }
}

- (void)proxyManagerReceivedDaemonAliveNotification:(id)a3
{
  v4 = [(APSProxyAgent *)self queuedPresenceSend];

  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v5)
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ proxyManagerReceivedDaemonAliveNotification, resending presence", &v7, 0xCu);
    }

    v6 = [(APSProxyAgent *)self queuedPresenceSend];
    (v6)[2](v6, self);
  }

  else
  {
    if (v5)
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ proxyManagerReceivedDaemonAliveNotification, failing connection", &v7, 0xCu);
    }

    [(APSProxyAgent *)self _markDisconnectedIsPermanent:0];
  }
}

- (void)proxyManager:(id)a3 isConnected:(BOOL)a4 guid:(id)a5 environmentName:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    v14 = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    v26 = self;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = guid;
    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ connectedStatus change guid %@ myGuid %@ envName %@  myEnvName %@", buf, 0x34u);
  }

  if ([(__CFString *)v11 isEqualToString:self->_guid])
  {
    v15 = [(APSEnvironment *)self->_environment name];
    v16 = [v12 isEqualToString:v15];

    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"NO";
        if (v8)
        {
          v17 = @"YES";
        }

        *buf = 138412546;
        v26 = self;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received connectedStatus, isConnected %@", buf, 0x16u);
      }

      if (v8)
      {
        self->_presenceRetryTimeDelta = 0;
        v23 = @"APSProtocolConnectedResponse";
        v24 = &off_100197B00;
        v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v19 = [v18 mutableCopy];

        if ([(APSProxyAgent *)self gotNewToken])
        {
          v20 = [(APSProxyAgent *)self token];
          [v19 setObject:v20 forKeyedSubscript:@"APSProtocolToken"];

          [(APSProxyAgent *)self setGotNewToken:0];
        }

        [(APSProxyAgent *)self setHasActiveConnection:1];
        v21 = [(APSProxyAgent *)self presenceCompletion];

        if (v21)
        {
          v22 = [(APSProxyAgent *)self presenceCompletion];
          (v22)[2](v22, v19, 0);
        }
      }

      else
      {
        [(APSProxyAgent *)self _markDisconnectedIsPermanent:0];
      }
    }
  }
}

- (void)proxyManager:(id)a3 incomingPushToken:(id)a4 guid:(id)a5 environmentName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    v15 = [(APSEnvironment *)self->_environment name];
    v18 = 138413314;
    v19 = self;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = guid;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ incomingPushToken guid %@ myGuid %@  envName %@  myEnvName %@", &v18, 0x34u);
  }

  if ([v12 isEqualToString:self->_guid])
  {
    v16 = [(APSEnvironment *)self->_environment name];
    v17 = [v13 isEqualToString:v16];

    if (v17)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = self;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received push token %@", &v18, 0x16u);
      }

      [(APSProxyAgent *)self setToken:v11];
      [(APSProxyAgent *)self setGotNewToken:1];
    }
  }
}

- (void)proxyManager:(id)a3 incomingMessageSize:(id)a4 largeMessageSize:(id)a5 guid:(id)a6 environmentName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    v18 = [(APSEnvironment *)self->_environment name];
    v21 = 138413826;
    v22 = self;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = guid;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ incomingMessageSize %@ largeMessageSize %@ guid %@ myGuid %@  envName %@  myEnvName %@", &v21, 0x48u);
  }

  if ([v15 isEqualToString:self->_guid])
  {
    v19 = [(APSEnvironment *)self->_environment name];
    v20 = [v16 isEqualToString:v19];

    if (v20)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412802;
        v22 = self;
        v23 = 2112;
        v24 = v13;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received sizes %@ %@", &v21, 0x20u);
      }

      [(APSProxyAgent *)self setMaxMessageSize:v13];
      [(APSProxyAgent *)self setMaxLargeMessageSize:v14];
    }
  }
}

- (void)proxyManager:(id)a3 receivedPush:(id)a4 connectionType:(id)a5 generation:(id)a6 guid:(id)a7 environmentName:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    v21 = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    v30 = self;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = guid;
    v35 = 2112;
    v36 = v19;
    v37 = 2112;
    v38 = v21;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ receivedPush guid %@ myGuid %@  envName %@  myEnvName %@", buf, 0x34u);
  }

  v22 = [v15 objectForKey:@"APSProtocolMessageID"];
  if (v22)
  {
    v23 = [(APSProxyAgent *)self connectionTypeByMessageID];
    [v23 setObject:v16 forKeyedSubscript:v22];
  }

  if ([v18 isEqualToString:self->_guid])
  {
    v24 = [(APSEnvironment *)self->_environment name];
    v25 = [v19 isEqualToString:v24];

    if (v25)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v30 = self;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received push %@", buf, 0x16u);
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000BF1D0;
      v26[3] = &unk_100189F20;
      v26[4] = self;
      v27 = v15;
      v28 = v17;
      [(APSProxyAgent *)self enumerateDataRecipient:v26];
    }
  }
}

- (void)proxyManager:(id)a3 reversePushResponse:(id)a4 messageGUID:(id)a5 messageId:(id)a6 guid:(id)a7 environmentName:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    v21 = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    v32 = self;
    v33 = 2112;
    v34 = v18;
    v35 = 2112;
    v36 = guid;
    v37 = 2112;
    v38 = v19;
    v39 = 2112;
    v40 = v21;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ reversePushResponse guid %@ myGuid %@  envName %@  myEnvName %@", buf, 0x34u);
  }

  if ([v18 isEqualToString:self->_guid])
  {
    v22 = [(APSEnvironment *)self->_environment name];
    v23 = [v19 isEqualToString:v22];

    if (v23)
    {
      v24 = [(NSMutableDictionary *)self->_outgoingMessageGUIDToCompletion objectForKey:v16];
      if (v24)
      {
        v25 = [v15 intValue];
        if (v25 > 6)
        {
          v26 = 255;
        }

        else
        {
          v26 = dword_10015CEB0[v25];
        }

        v27 = [NSNumber numberWithUnsignedInt:v26, @"APSProtocolDeliveryStatus"];
        v30 = v27;
        v28 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];

        (v24)[2](v24, v28, 0);
        [(NSMutableDictionary *)self->_outgoingMessageGUIDToCompletion removeObjectForKey:v16];
        [(NSMutableDictionary *)self->_outgoingMessageGUIDToMessageID removeObjectForKey:v16];
        if ([v15 intValue] == 2)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = self;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ reverse push response was Invalid -- make sure the agent device has asserted our presence.", buf, 0xCu);
          }

          [(APSProxyAgent *)self _markDisconnectedIsPermanent:0];
        }
      }
    }
  }
}

- (void)proxyManager:(id)a3 expiredNonceWithServerTime:(id)a4 shouldRollToken:(BOOL)a5 guid:(id)a6 environmentName:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    guid = self->_guid;
    v18 = [(APSEnvironment *)self->_environment name];
    presenceRetryTimeDelta = self->_presenceRetryTimeDelta;
    *buf = 138414082;
    v29 = self;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = guid;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v18;
    v40 = 2112;
    v41 = v13;
    v42 = 2048;
    v43 = presenceRetryTimeDelta;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ expiredNonceWithServerTime shouldRollToken %@ guid %@ myGuid %@  envName %@  myEnvName %@  serverTime %@  delayTime %llu", buf, 0x52u);
  }

  if ([v14 isEqualToString:self->_guid])
  {
    v20 = [(APSEnvironment *)self->_environment name];
    if (![v15 isEqualToString:v20])
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
      v27 = v9;
      v25 = v13;
      v26 = self;
      dispatch_after(v22, &_dispatch_main_q, block);
      v23 = 2 * self->_presenceRetryTimeDelta;
      if (!v23)
      {
        v23 = 2;
      }

      self->_presenceRetryTimeDelta = v23;
      v20 = v25;
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)proxyManager:(id)a3 appTokenGenerateResponse:(id)a4 error:(id)a5 guid:(id)a6 environmentName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    v18 = [(APSEnvironment *)self->_environment name];
    v24 = 138413314;
    v25 = self;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = guid;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ appTokenGenerate response guid %@ myGuid %@  envName %@  myEnvName %@", &v24, 0x34u);
  }

  if ([v15 isEqualToString:self->_guid])
  {
    v19 = [(APSEnvironment *)self->_environment name];
    v20 = [v16 isEqualToString:v19];

    if (v20)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412802;
        v25 = self;
        v26 = 2112;
        v27 = v13;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received appTokenGenerateResponse %@ errorCode %@", &v24, 0x20u);
      }

      v21 = [(APSProxyAgent *)self appTokenGenerateCompletions];
      v22 = [v21 firstObject];

      if (v22)
      {
        (v22)[2](v22, v13, 0);
        v23 = [(APSProxyAgent *)self appTokenGenerateCompletions];
        [v23 removeObjectAtIndex:0];
      }
    }
  }
}

- (void)proxyManager:(id)a3 handlePubSubChannelListResponse:(id)a4 environmentName:(id)a5 guid:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sendPubSubChannelList response guid %@ envName %@", buf, 0x20u);
  }

  if ([v13 isEqualToString:self->_guid])
  {
    v14 = [(APSEnvironment *)self->_environment name];
    v15 = [v12 isEqualToString:v14];

    if (v15)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000BFCA4;
      v16[3] = &unk_100189F70;
      v16[4] = self;
      v17 = v11;
      [(APSProxyAgent *)self enumerateDataRecipient:v16];
    }
  }
}

- (void)proxyManager:(id)a3 handlePubSubUpdateMessage:(id)a4 connectionType:(int64_t)a5 environmentName:(id)a6 guid:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = sub_10001B3FC(a5);
    *buf = 138413058;
    v22 = self;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ PubSub update message guid %@ interface %@ envName %@", buf, 0x2Au);
  }

  if ([v15 isEqualToString:self->_guid])
  {
    v17 = [(APSEnvironment *)self->_environment name];
    v18 = [v14 isEqualToString:v17];

    if (v18)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000BFE74;
      v19[3] = &unk_100189F70;
      v19[4] = self;
      v20 = v13;
      [(APSProxyAgent *)self enumerateDataRecipient:v19];
    }
  }
}

- (void)proxyManager:(id)a3 handlePubSubChannelListRequest:(int64_t)a4 envName:(id)a5 guid:(id)a6
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = a6;
    v13 = 2112;
    v14 = a5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ PubSub channel list request message guid %@ envName %@", &v9, 0x20u);
  }
}

- (void)enumerateStateListeners:(id)a3
{
  v4 = a3;
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

      v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
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

- (void)enumerateDataRecipient:(id)a3
{
  v4 = a3;
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

      v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
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

- (void)addStateListener:(id)a3
{
  v4 = a3;
  v5 = [(APSProxyAgent *)self stateListeners];
  [v5 addObject:v4];
}

- (void)removeStateListener:(id)a3
{
  v4 = a3;
  v5 = [(APSProxyAgent *)self stateListeners];
  [v5 removeObject:v4];
}

- (void)addDataListener:(id)a3
{
  v4 = a3;
  v5 = [(APSProxyAgent *)self dataListeners];
  [v5 addObject:v4];
}

- (void)removeDataListener:(id)a3
{
  v4 = a3;
  v5 = [(APSProxyAgent *)self dataListeners];
  [v5 removeObject:v4];
}

- (void)sendConnectMessageWithToken:(id)a3 presenceFlags:(int)a4 certificates:(id)a5 nonce:(id)a6 signature:(id)a7 hostCertificateInfo:(id)a8 connectionErrors:(id)a9 withCompletion:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(APSIDSProxyManager *)self->_proxyManager isNearby];
    v24 = @"NO";
    *buf = 138412802;
    *&buf[4] = self;
    v48 = 2112;
    if (v23)
    {
      v24 = @"YES";
    }

    v49 = v16;
    v50 = 2112;
    v51 = v24;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ _sendPresenceMessageWithServerTime %@, isNearby? %@", buf, 0x20u);
  }

  if (self->_enabled && [(APSProxyAgent *)self canAttemptConnection])
  {
    v35 = a4;
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

    [(APSProxyAgent *)self setPresenceCompletion:v22];
    [(APSProxyAgent *)self setToken:v16];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000C071C;
    v37[3] = &unk_100189F98;
    v38 = v16;
    v39 = v33;
    v40 = v28;
    v41 = v29;
    v42 = v17;
    v43 = v18;
    v44 = v19;
    v46 = v35;
    v45 = v20;
    v32 = v29;
    v36 = v28;
    v30 = v33;
    [(APSProxyAgent *)self setQueuedPresenceSend:v37];
    v31 = [(APSProxyAgent *)self queuedPresenceSend];
    (v31)[2](v31, self);
  }
}

- (id)sendMessage:(id)a3 topicHash:(id)a4 lastRTT:(id)a5 token:(id)a6 ultraConstrainedAllowed:(BOOL)a7 withCompletion:(id)a8
{
  v10 = a3;
  v11 = a8;
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [v10 guid];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v17 = +[NSUUID UUID];
      v15 = [v17 UUIDString];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412546;
      v31 = self;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sendingMessage with messageGUID %@", &v30, 0x16u);
    }

    [v10 setGuid:v15];
    outgoingMessageGUIDToCompletion = self->_outgoingMessageGUIDToCompletion;
    if (!outgoingMessageGUIDToCompletion)
    {
      v19 = objc_alloc_init(NSMutableDictionary);
      v20 = self->_outgoingMessageGUIDToCompletion;
      self->_outgoingMessageGUIDToCompletion = v19;

      outgoingMessageGUIDToCompletion = self->_outgoingMessageGUIDToCompletion;
    }

    v21 = objc_retainBlock(v12);
    [(NSMutableDictionary *)outgoingMessageGUIDToCompletion setObject:v21 forKey:v15];

    outgoingMessageGUIDToMessageID = self->_outgoingMessageGUIDToMessageID;
    if (!outgoingMessageGUIDToMessageID)
    {
      v23 = objc_alloc_init(NSMutableDictionary);
      v24 = self->_outgoingMessageGUIDToMessageID;
      self->_outgoingMessageGUIDToMessageID = v23;

      outgoingMessageGUIDToMessageID = self->_outgoingMessageGUIDToMessageID;
    }

    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 messageID]);
    [(NSMutableDictionary *)outgoingMessageGUIDToMessageID setObject:v25 forKey:v15];

    guid = self->_guid;
    proxyManager = self->_proxyManager;
    v28 = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendMessage:v10 guid:guid environmentName:v28];

    v16 = 0;
  }

  else
  {
    v16 = APSError();
  }

  return v16;
}

- (void)sendFilterMessageWithEnabledTopicsByHash:(id)a3 ignoredTopicsByHash:(id)a4 opportunisticTopicsByHash:(id)a5 nonWakingTopicsByHash:(id)a6 pausedTopicsByHash:(id)a7 saltsByTopic:(id)a8 token:(id)a9 version:(unint64_t)a10 expectsResponse:(BOOL)a11 withCompletion:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  if ([(APSProxyAgent *)self hasActiveConnection])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v17 allValues];
      v23 = [v18 allValues];
      v24 = [v19 allValues];
      v25 = [v20 allValues];
      *buf = 138413570;
      v38 = self;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v23;
      v43 = 2112;
      v44 = v24;
      v45 = 2112;
      v46 = v25;
      v47 = 2112;
      v48 = v21;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sending filter to agent device for enabled %@ ignored %@ opportunistic %@ nonWaking %@ topicSalts %@", buf, 0x3Eu);
    }

    proxyManager = self->_proxyManager;
    v26 = [(APSEnvironment *)self->_environment name];
    guid = self->_guid;
    v27 = [v17 allValues];
    v28 = [v18 allValues];
    [v19 allValues];
    v29 = v19;
    v31 = v30 = v17;
    [v20 allValues];
    v32 = v20;
    v34 = v33 = v18;
    [(APSIDSProxyManager *)proxyManager sendFilterWithEnvironmentName:v26 guid:guid enabledTopics:v27 ignoredTopics:v28 opportunisticTopics:v31 nonWakingTopics:v34 topicSalts:v21];

    v18 = v33;
    v20 = v32;

    v17 = v30;
    v19 = v29;
  }
}

- (APSProxyAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end