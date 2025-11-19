@interface APSProxyClient
- (APSProxyClient)initWithEnvironment:(id)a3 guid:(id)a4;
- (APSProxyClientDelegate)delegate;
- (BOOL)_setToken:(id)a3;
- (BOOL)isConnectedOnInterface:(id)a3;
- (BOOL)needsToConnectOnInterface:(id)a3;
- (BOOL)needsToDisconnect;
- (BOOL)needsToDisconnectOnInterface:(id)a3;
- (BOOL)shouldOnlySendFilterOnPreferredInterface;
- (id)aps_prettyDescription;
- (unint64_t)filterModeOnInterface:(id)a3;
- (unint64_t)stateOnInterface:(id)a3;
- (void)_adjustConnectedStateWithInterfaceHint:(BOOL)a3;
- (void)dealloc;
- (void)handleAppTokenGenerateResponse:(id)a3 error:(id)a4;
- (void)handleResult:(id)a3 forSendingOutgoingMessage:(id)a4;
- (void)incomingPresenceWithCertificates:(id)a3 nonce:(id)a4 signature:(id)a5 token:(id)a6 hwVersion:(id)a7 swVersion:(id)a8 swBuild:(id)a9 additionalFlags:(int)a10;
- (void)invalidate;
- (void)noteIsConnected;
- (void)proxyManager:(id)a3 inactiveReceivedForGuid:(id)a4 environmentName:(id)a5;
- (void)proxyManager:(id)a3 incomingFilterForGuid:(id)a4 environmentName:(id)a5 enabledTopics:(id)a6 ignoredTopics:(id)a7 opportunisticTopics:(id)a8 nonWakingTopics:(id)a9 topicSalts:(id)a10;
- (void)proxyManager:(id)a3 isNearbyChanged:(BOOL)a4;
- (void)proxyManager:(id)a3 receivedPushAckResponse:(id)a4 messageId:(id)a5 token:(id)a6 connectionType:(id)a7 generation:(id)a8 guid:(id)a9 environmentName:(id)a10;
- (void)proxyManager:(id)a3 sendReversePush:(id)a4 guid:(id)a5 environmentName:(id)a6;
- (void)proxyManager:(id)a3 tokenGenerateWithTopicHash:(id)a4 baseToken:(id)a5 appId:(id)a6 expirationTTL:(id)a7 vapidPublicKeyHash:(id)a8 type:(id)a9 guid:(id)a10 environmentName:(id)a11;
- (void)receivedPush:(id)a3 onConnectionType:(int64_t)a4 withGeneration:(unint64_t)a5;
- (void)sendPubSubChannelListRequestForConnectionType:(int64_t)a3;
- (void)sendPubSubChannelListResponse:(id)a3;
- (void)sendPubSubUpdateMessage:(id)a3 forConnectionType:(int64_t)a4;
- (void)setActive:(BOOL)a3;
- (void)setFilterMode:(unint64_t)a3 onInterface:(id)a4;
- (void)setLargeMessageSize:(unint64_t)a3;
- (void)setMessageSize:(unint64_t)a3;
- (void)setProxyManager:(id)a3;
- (void)setPublicToken:(id)a3;
- (void)setState:(unint64_t)a3 onInterface:(id)a4;
@end

@implementation APSProxyClient

- (APSProxyClient)initWithEnvironment:(id)a3 guid:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = APSProxyClient;
  v9 = [(APSProxyClient *)&v21 init];
  if (v9)
  {
    v10 = [v8 copy];
    guid = v9->_guid;
    v9->_guid = v10;

    objc_storeStrong(&v9->_environment, a3);
    v12 = objc_alloc_init(NSMutableDictionary);
    stateByInterfaceIdentifier = v9->_stateByInterfaceIdentifier;
    v9->_stateByInterfaceIdentifier = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    filterModeByInterfaceIdentifier = v9->_filterModeByInterfaceIdentifier;
    v9->_filterModeByInterfaceIdentifier = v14;

    v16 = objc_alloc_init(APSFilterVersionStateMachine);
    filterVersionStateMachine = v9->_filterVersionStateMachine;
    v9->_filterVersionStateMachine = v16;

    v18 = [[APSRateLimiter alloc] initWithLimit:10 timeLimit:1800.0];
    connectedNotesSentLimiter = v9->_connectedNotesSentLimiter;
    v9->_connectedNotesSentLimiter = v18;
  }

  return v9;
}

- (void)dealloc
{
  [(APSIDSProxyManager *)self->_proxyManager removeListener:self environment:self->_environment];
  v3.receiver = self;
  v3.super_class = APSProxyClient;
  [(APSProxyClient *)&v3 dealloc];
}

- (id)aps_prettyDescription
{
  guid = self->_guid;
  if (self->_active)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_invalid)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v21 = v4;
  v22 = v3;
  stateByInterfaceIdentifier = self->_stateByInterfaceIdentifier;
  v18 = APSPrettyPrintCollection();
  filterModeByInterfaceIdentifier = self->_filterModeByInterfaceIdentifier;
  v17 = APSPrettyPrintCollection();
  v25 = [(APSTopicManager *)self->_topicManager group];
  v24 = [v25 enabledTopics];
  v7 = APSPrettyPrintCollection();
  v20 = [(APSTopicManager *)self->_topicManager group];
  v19 = [v20 ignoredTopics];
  v8 = APSPrettyPrintCollection();
  v9 = [(APSTopicManager *)self->_topicManager group];
  v10 = [v9 opportunisticTopics];
  v11 = APSPrettyPrintCollection();
  v12 = [(APSTopicManager *)self->_topicManager group];
  v13 = [v12 nonWakingTopics];
  v14 = APSPrettyPrintCollection();
  v15 = [NSString stringWithFormat:@"<%p guid: %@ isActive: %@; invalid: %@ stateByInterfaceIdentifier: %@; filterModeByInterfaceIdentifier: %@; enabledTopics: %@, ignoredTopics: %@, opportunisticTopics: %@, nonWakingTopics: %@>", self, guid, v22, v21, v18, v17, v7, v8, v11, v14];;

  return v15;
}

- (void)setProxyManager:(id)a3
{
  v5 = a3;
  proxyManager = self->_proxyManager;
  if (proxyManager != v5)
  {
    v7 = v5;
    [(APSIDSProxyManager *)proxyManager removeListener:self environment:self->_environment];
    objc_storeStrong(&self->_proxyManager, a3);
    proxyManager = [(APSIDSProxyManager *)self->_proxyManager setListener:self environment:self->_environment];
    v5 = v7;
  }

  _objc_release_x1(proxyManager, v5);
}

- (void)incomingPresenceWithCertificates:(id)a3 nonce:(id)a4 signature:(id)a5 token:(id)a6 hwVersion:(id)a7 swVersion:(id)a8 swBuild:(id)a9 additionalFlags:(int)a10
{
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = +[APSLog proxy];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138413314;
    v27 = self;
    v28 = 1024;
    v29 = a10;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = v18;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ incomingPresence {flags: %u hwVersion: %@, swVersion: %@, swBuild: %@}", &v26, 0x30u);
  }

  [(APSProxyClient *)self setCertificates:v22];
  [(APSProxyClient *)self setNonce:v21];

  [(APSProxyClient *)self setSignature:v20];
  [(APSProxyClient *)self setHwVersion:v16];
  [(APSProxyClient *)self _setToken:v19];

  [(APSProxyClient *)self setSwVersion:v17];
  [(APSProxyClient *)self setSwBuild:v18];
  [(APSProxyClient *)self setAdditionalFlags:a10];
  v24 = objc_alloc_init(NSDate);
  lastPresence = self->_lastPresence;
  self->_lastPresence = v24;

  [(APSProxyClient *)self setActive:1];
}

- (void)receivedPush:(id)a3 onConnectionType:(int64_t)a4 withGeneration:(unint64_t)a5
{
  proxyManager = self->_proxyManager;
  guid = self->_guid;
  environment = self->_environment;
  v10 = a3;
  v11 = [(APSEnvironment *)environment name];
  [(APSIDSProxyManager *)proxyManager sendReceivedPush:v10 forConnectionType:a4 generation:a5 guid:guid environmentName:v11];
}

- (BOOL)needsToConnectOnInterface:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_stateByInterfaceIdentifier objectForKeyedSubscript:a3];
  v5 = [v4 unsignedIntegerValue];

  return (v5 - 3) < 0xFFFFFFFFFFFFFFFELL && self->_active;
}

- (BOOL)needsToDisconnectOnInterface:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_stateByInterfaceIdentifier objectForKeyedSubscript:a3];
  v5 = [v4 unsignedIntegerValue];

  if (self->_active)
  {
    return 0;
  }

  return v5 != 3 && v5 != 0;
}

- (BOOL)needsToDisconnect
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(APSProxyClient *)self stateByInterfaceIdentifier];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(APSProxyClient *)self needsToDisconnectOnInterface:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)isConnectedOnInterface:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_stateByInterfaceIdentifier objectForKeyedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4 == 2;
}

- (void)_adjustConnectedStateWithInterfaceHint:(BOOL)a3
{
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(APSProxyClient *)self stateByInterfaceIdentifier];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v16 + 1) + 8 * i) unsignedIntegerValue] == 2)
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  isConnected = self->_isConnected;
  if (isConnected != v7 || v3)
  {
    self->_isConnected = v7;
    v11 = +[APSLog proxy];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"disconnected";
      if (self->_isConnected)
      {
        v12 = @"connected";
      }

      *buf = 138412546;
      v21 = self;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ broadcasting to client device it's now %@", buf, 0x16u);
    }

    proxyManager = self->_proxyManager;
    guid = self->_guid;
    v15 = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendProxyIsConnected:v7 guid:guid environmentName:v15];
  }

  if (isConnected != v7)
  {
    [(APSRateLimiter *)self->_connectedNotesSentLimiter clear];
  }
}

- (void)noteIsConnected
{
  if ([(APSRateLimiter *)self->_connectedNotesSentLimiter isUnderLimit])
  {
    [(APSRateLimiter *)self->_connectedNotesSentLimiter note];

    [(APSProxyClient *)self _adjustConnectedStateWithInterfaceHint:1];
  }

  else
  {
    v3 = +[APSLog proxy];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      connectedNotesSentLimiter = self->_connectedNotesSentLimiter;
      v5 = 138412546;
      v6 = self;
      v7 = 2112;
      v8 = connectedNotesSentLimiter;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ noted connections too many times, likely in a loop -- stopping {connectedNotesSentLimiter: %@}", &v5, 0x16u);
    }
  }
}

- (void)setState:(unint64_t)a3 onInterface:(id)a4
{
  v6 = a4;
  v7 = [(APSProxyClient *)self stateByInterfaceIdentifier];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 unsignedIntegerValue];

  v10 = +[APSLog proxy];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v9 > 3)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_100187DD8[v9];
    }

    if (a3 > 3)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = off_100187DD8[a3];
    }

    v17 = 138413058;
    v18 = self;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ setting state from %@ to %@ onInterface %@", &v17, 0x2Au);
  }

  v13 = [NSNumber numberWithUnsignedInteger:a3];
  v14 = [(APSProxyClient *)self stateByInterfaceIdentifier];
  [v14 setObject:v13 forKeyedSubscript:v6];

  v16 = a3 == 2 && v9 != 2;
  [(APSProxyClient *)self _adjustConnectedStateWithInterfaceHint:v16];
}

- (unint64_t)stateOnInterface:(id)a3
{
  v4 = a3;
  v5 = [(APSProxyClient *)self stateByInterfaceIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

- (void)setFilterMode:(unint64_t)a3 onInterface:(id)a4
{
  v6 = a4;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [(APSProxyClient *)self filterModeByInterfaceIdentifier];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

- (unint64_t)filterModeOnInterface:(id)a3
{
  v4 = a3;
  v5 = [(APSProxyClient *)self filterModeByInterfaceIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

- (BOOL)shouldOnlySendFilterOnPreferredInterface
{
  v3 = [(APSProxyClient *)self filterModeByInterfaceIdentifier];
  if ([v3 count] < 2)
  {

LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v4 = _os_feature_enabled_impl();

  if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v5 = [(APSProxyClient *)self filterModeByInterfaceIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000716C4;
  v8[3] = &unk_100187D00;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6 & 1;
}

- (BOOL)_setToken:(id)a3
{
  v4 = a3;
  v5 = 0;
  if (v4)
  {
    publicToken = self->_publicToken;
    if (publicToken != v4)
    {
      if ([(NSData *)publicToken isEqualToData:v4])
      {
        v5 = 0;
      }

      else
      {
        v7 = self->_publicToken;
        v8 = [(NSData *)v4 copy];
        v9 = self->_publicToken;
        self->_publicToken = v8;

        if (v7)
        {
          v10 = +[APSLog proxy];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 138412290;
            v14 = self;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ had a token but got a different one - any previously sent presence is now wrong", &v13, 0xCu);
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained pushTokenBecameInvalidForClient:self];
        }

        v5 = 1;
      }
    }
  }

  return v5;
}

- (void)setPublicToken:(id)a3
{
  v4 = a3;
  v5 = +[APSLog proxy];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    publicToken = self->_publicToken;
    v10 = 138412802;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = publicToken;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ got a token %@ (had %@)", &v10, 0x20u);
  }

  if ([(APSProxyClient *)self _setToken:v4])
  {
    proxyManager = self->_proxyManager;
    guid = self->_guid;
    v9 = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendPushToken:v4 guid:guid environmentName:v9];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    if (a3)
    {
      if (self->_invalid)
      {
        v4 = +[APSLog proxy];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          publicToken = self->_publicToken;
          *buf = 138412546;
          v10 = self;
          v11 = 2112;
          v12 = publicToken;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ has been activated while invalidated (%@)", buf, 0x16u);
        }
      }

      else
      {
        self->_active = a3;
        proxyManager = self->_proxyManager;
        environment = self->_environment;

        [(APSIDSProxyManager *)proxyManager setListener:self environment:environment];
      }
    }

    else
    {
      self->_active = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained clientBecameInactive:self];
    }
  }
}

- (void)invalidate
{
  v3 = +[APSLog proxy];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    publicToken = self->_publicToken;
    v5 = 138412546;
    v6 = self;
    v7 = 2112;
    v8 = publicToken;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ has been invalidated %@", &v5, 0x16u);
  }

  self->_invalid = 1;
  [(APSProxyClient *)self setActive:0];
}

- (void)setLargeMessageSize:(unint64_t)a3
{
  if (self->_largeMessageSize == a3)
  {
    v4 = +[APSLog proxy];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Large Message Size did not change, not sending to client device.", buf, 0xCu);
    }
  }

  else
  {
    self->_largeMessageSize = a3;
    proxyManager = self->_proxyManager;
    guid = self->_guid;
    v8 = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendLargeMessageSize:a3 guid:guid environmentName:?];
  }
}

- (void)setMessageSize:(unint64_t)a3
{
  if (self->_messageSize == a3)
  {
    v4 = +[APSLog proxy];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Message Size did not change, not sending to client device.", buf, 0xCu);
    }
  }

  else
  {
    self->_messageSize = a3;
    proxyManager = self->_proxyManager;
    guid = self->_guid;
    v8 = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendMessageSize:a3 guid:guid environmentName:?];
  }
}

- (void)proxyManager:(id)a3 isNearbyChanged:(BOOL)a4
{
  v6 = a3;
  if (!a4 && self->_active)
  {
    v7 = +[APSLog proxy];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ isNearby became NO, deactivating", &v8, 0xCu);
    }

    [(APSProxyClient *)self setActive:0];
  }
}

- (void)proxyManager:(id)a3 incomingFilterForGuid:(id)a4 environmentName:(id)a5 enabledTopics:(id)a6 ignoredTopics:(id)a7 opportunisticTopics:(id)a8 nonWakingTopics:(id)a9 topicSalts:(id)a10
{
  v16 = a3;
  v71 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v70 = a8;
  v20 = a9;
  v21 = a10;
  v22 = +[APSLog proxy];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v16;
    v24 = v20;
    v25 = v19;
    guid = self->_guid;
    v27 = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    v88 = self;
    v89 = 2112;
    v90 = v71;
    v91 = 2112;
    v92 = guid;
    v19 = v25;
    v20 = v24;
    v16 = v23;
    v93 = 2112;
    v94 = v17;
    v95 = 2112;
    v96 = v27;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ incomingFilterForGuid guid %@ myGuid %@  envName %@  myEnvName %@", buf, 0x34u);
  }

  if ([v71 isEqualToString:self->_guid])
  {
    v28 = [(APSEnvironment *)self->_environment name];
    v29 = [v17 isEqualToString:v28];

    if (v29)
    {
      v58 = v17;
      v59 = v16;
      if (!self->_topicManager)
      {
        v30 = [[APSDictionaryTopicSaltStore alloc] initWithDictionary:v21];
        v31 = [[APSTopicHasher alloc] initWithTopicSaltStore:v30];
        v32 = [[APSTopicManager alloc] initWithEnvironment:self->_environment topicHasher:v31 user:0 userPreferences:0 ultraConstrainedProvider:0 delegate:0];
        topicManager = self->_topicManager;
        self->_topicManager = v32;
      }

      v69 = v21;
      context = objc_autoreleasePoolPush();
      v57 = v18;
      v68 = [NSSet setWithArray:v18];
      v56 = v19;
      v67 = [NSSet setWithArray:v19];
      v65 = [NSSet setWithArray:v70];
      v55 = v20;
      v66 = [NSSet setWithArray:v20];
      v34 = objc_alloc_init(NSMutableSet);
      v35 = objc_alloc_init(NSMutableSet);
      v36 = objc_alloc_init(NSMutableSet);
      v63 = objc_alloc_init(NSMutableSet);
      v37 = [v68 mutableCopy];
      v53 = [v67 mutableCopy];
      v38 = [v65 mutableCopy];
      v39 = [v66 mutableCopy];
      v40 = self->_topicManager;
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100072658;
      v81[3] = &unk_100187D68;
      v86 = &stru_100187D40;
      v41 = v34;
      v82 = v41;
      v42 = v35;
      v83 = v42;
      v43 = v36;
      v84 = v43;
      v44 = v63;
      v85 = v44;
      [(APSTopicManager *)v40 performFilterBlock:v81];
      v45 = v37;
      [v37 minusSet:v41];
      [v53 minusSet:v42];
      [v38 minusSet:v43];
      [v39 minusSet:v44];
      [v41 minusSet:v68];
      [v42 minusSet:v67];
      [v43 minusSet:v65];
      [v44 minusSet:v66];
      v46 = self->_topicManager;
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_10007273C;
      v72[3] = &unk_100187DB8;
      v64 = v41;
      v73 = v64;
      v62 = v42;
      v74 = v62;
      v61 = v43;
      v75 = v61;
      v60 = v44;
      v76 = v60;
      v47 = v45;
      v77 = v47;
      v48 = v53;
      v78 = v48;
      v49 = v38;
      v79 = v49;
      v50 = v39;
      v80 = v50;
      [(APSTopicManager *)v46 performTransactionBlock:v72];
      if ([v47 count])
      {
        v51 = 1;
        v20 = v55;
        v19 = v56;
        v21 = v69;
      }

      else
      {
        v20 = v55;
        v19 = v56;
        v21 = v69;
        v51 = [v48 count] || objc_msgSend(v49, "count") || objc_msgSend(v50, "count") || objc_msgSend(v64, "count") || objc_msgSend(v62, "count") || objc_msgSend(v61, "count") || objc_msgSend(v60, "count") != 0;
      }

      objc_autoreleasePoolPop(context);
      v17 = v58;
      v16 = v59;
      v18 = v57;
      if (v51 && [(APSProxyClient *)self isConnected])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained requestFilterForClient:self];
      }
    }
  }
}

- (void)proxyManager:(id)a3 inactiveReceivedForGuid:(id)a4 environmentName:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[APSLog proxy];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    v11 = [(APSEnvironment *)self->_environment name];
    v15 = 138413314;
    v16 = self;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = guid;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ inactiveReceivedForGuid guid %@ myGuid %@  envName %@  myEnvName %@", &v15, 0x34u);
  }

  if ([v7 isEqualToString:self->_guid])
  {
    v12 = [(APSEnvironment *)self->_environment name];
    v13 = [v8 isEqualToString:v12];

    if (v13)
    {
      v14 = +[APSLog proxy];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ client told us that we should no longer be active.", &v15, 0xCu);
      }

      [(APSProxyClient *)self setActive:0];
    }
  }
}

- (void)proxyManager:(id)a3 receivedPushAckResponse:(id)a4 messageId:(id)a5 token:(id)a6 connectionType:(id)a7 generation:(id)a8 guid:(id)a9 environmentName:(id)a10
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = +[APSLog proxy];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v21;
    v23 = v19;
    v24 = v18;
    v25 = v17;
    v26 = v16;
    v27 = v15;
    guid = self->_guid;
    v29 = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    v35 = self;
    v36 = 2112;
    v37 = v20;
    v38 = 2112;
    v39 = guid;
    v15 = v27;
    v16 = v26;
    v17 = v25;
    v18 = v24;
    v19 = v23;
    v21 = v33;
    v40 = 2112;
    v41 = v33;
    v42 = 2112;
    v43 = v29;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ receivedPushAckResponse guid %@ myGuid %@  envName %@  myEnvName %@", buf, 0x34u);
  }

  if ([v20 isEqualToString:self->_guid])
  {
    v30 = [(APSEnvironment *)self->_environment name];
    v31 = [v21 isEqualToString:v30];

    if (v31)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained client:self requestPushAckResponse:v15 messageId:v16 token:v17 connectionType:v18 generation:v19];
    }
  }
}

- (void)proxyManager:(id)a3 sendReversePush:(id)a4 guid:(id)a5 environmentName:(id)a6
{
  v7 = a4;
  pendingMessageGUIDs = self->_pendingMessageGUIDs;
  v13 = v7;
  if (!pendingMessageGUIDs)
  {
    v9 = objc_alloc_init(NSMutableSet);
    v10 = self->_pendingMessageGUIDs;
    self->_pendingMessageGUIDs = v9;

    v7 = v13;
    pendingMessageGUIDs = self->_pendingMessageGUIDs;
  }

  v11 = [v7 guid];
  [(NSMutableSet *)pendingMessageGUIDs addObject:v11];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self requestSendOutgoingMessage:v13];
}

- (void)proxyManager:(id)a3 tokenGenerateWithTopicHash:(id)a4 baseToken:(id)a5 appId:(id)a6 expirationTTL:(id)a7 vapidPublicKeyHash:(id)a8 type:(id)a9 guid:(id)a10 environmentName:(id)a11
{
  v28 = a4;
  v29 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = +[APSLog proxy];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    v24 = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    v31 = self;
    v32 = 2112;
    v33 = v20;
    v34 = 2112;
    v35 = guid;
    v36 = 2112;
    v37 = v21;
    v38 = 2112;
    v39 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ appTokenGenerate request guid %@ myGuid %@  envName %@  myEnvName %@", buf, 0x34u);
  }

  if ([v20 isEqualToString:self->_guid])
  {
    v25 = [(APSEnvironment *)self->_environment name];
    v26 = [v21 isEqualToString:v25];

    if (v26)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained client:self requestTokenGenerateWithTopicHash:v28 baseToken:v29 appId:v16 expirationTTL:v17 vapidPublicKeyHash:v18 type:v19];
    }
  }
}

- (void)sendPubSubChannelListResponse:(id)a3
{
  if (self->_active)
  {
    v4 = a3;
    v5 = +[APSLog proxy];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ sending pubsub channel list response to agent device", &v8, 0xCu);
    }

    proxyManager = self->_proxyManager;
    v7 = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendPubSubChannelListResponse:v4 environmentName:v7 guid:self->_guid];
  }
}

- (void)sendPubSubUpdateMessage:(id)a3 forConnectionType:(int64_t)a4
{
  if (self->_active)
  {
    v6 = a3;
    v7 = +[APSLog proxy];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ sending pubsub update message to agent device", &v10, 0xCu);
    }

    proxyManager = self->_proxyManager;
    v9 = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendPubSubUpdateMessage:v6 connectionType:a4 environmentName:v9 guid:self->_guid];
  }
}

- (void)sendPubSubChannelListRequestForConnectionType:(int64_t)a3
{
  if (self->_active)
  {
    v5 = +[APSLog proxy];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ sending pubsub channel list request message to client device", &v8, 0xCu);
    }

    proxyManager = self->_proxyManager;
    v7 = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendPubSubChannelListRequest:a3 environmentName:v7 guid:self->_guid];
  }
}

- (void)handleResult:(id)a3 forSendingOutgoingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog proxy];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412802;
    v23 = self;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ received result %@ for outgoing message %@", &v22, 0x20u);
  }

  v9 = [v7 guid];
  if (v9)
  {
    v10 = v9;
    pendingMessageGUIDs = self->_pendingMessageGUIDs;
    v12 = [v7 guid];
    LODWORD(pendingMessageGUIDs) = [(NSMutableSet *)pendingMessageGUIDs containsObject:v12];

    if (pendingMessageGUIDs)
    {
      v13 = +[APSLog proxy];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ We have this message, forwarding feedback to proxied device.", &v22, 0xCu);
      }

      v14 = self->_pendingMessageGUIDs;
      v15 = [v7 guid];
      [(NSMutableSet *)v14 removeObject:v15];

      v16 = [v6 code];
      proxyManager = self->_proxyManager;
      v18 = [v7 guid];
      v19 = [v7 messageID];
      guid = self->_guid;
      v21 = [(APSEnvironment *)self->_environment name];
      [(APSIDSProxyManager *)proxyManager sendReversePushResponse:v16 messageGUID:v18 messageId:v19 guid:guid environmentName:v21];
    }
  }
}

- (void)handleAppTokenGenerateResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog proxy];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ received result AppTokenGenerateResponse %@ error %@", &v12, 0x20u);
  }

  proxyManager = self->_proxyManager;
  guid = self->_guid;
  v11 = [(APSEnvironment *)self->_environment name];
  [(APSIDSProxyManager *)proxyManager sendAppTokenGenerateResponse:v6 error:v7 guid:guid environmentName:v11];
}

- (APSProxyClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end