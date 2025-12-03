@interface APSProxyClient
- (APSProxyClient)initWithEnvironment:(id)environment guid:(id)guid;
- (APSProxyClientDelegate)delegate;
- (BOOL)_setToken:(id)token;
- (BOOL)isConnectedOnInterface:(id)interface;
- (BOOL)needsToConnectOnInterface:(id)interface;
- (BOOL)needsToDisconnect;
- (BOOL)needsToDisconnectOnInterface:(id)interface;
- (BOOL)shouldOnlySendFilterOnPreferredInterface;
- (id)aps_prettyDescription;
- (unint64_t)filterModeOnInterface:(id)interface;
- (unint64_t)stateOnInterface:(id)interface;
- (void)_adjustConnectedStateWithInterfaceHint:(BOOL)hint;
- (void)dealloc;
- (void)handleAppTokenGenerateResponse:(id)response error:(id)error;
- (void)handleResult:(id)result forSendingOutgoingMessage:(id)message;
- (void)incomingPresenceWithCertificates:(id)certificates nonce:(id)nonce signature:(id)signature token:(id)token hwVersion:(id)version swVersion:(id)swVersion swBuild:(id)build additionalFlags:(int)self0;
- (void)invalidate;
- (void)noteIsConnected;
- (void)proxyManager:(id)manager inactiveReceivedForGuid:(id)guid environmentName:(id)name;
- (void)proxyManager:(id)manager incomingFilterForGuid:(id)guid environmentName:(id)name enabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics topicSalts:(id)self0;
- (void)proxyManager:(id)manager isNearbyChanged:(BOOL)changed;
- (void)proxyManager:(id)manager receivedPushAckResponse:(id)response messageId:(id)id token:(id)token connectionType:(id)type generation:(id)generation guid:(id)guid environmentName:(id)self0;
- (void)proxyManager:(id)manager sendReversePush:(id)push guid:(id)guid environmentName:(id)name;
- (void)proxyManager:(id)manager tokenGenerateWithTopicHash:(id)hash baseToken:(id)token appId:(id)id expirationTTL:(id)l vapidPublicKeyHash:(id)keyHash type:(id)type guid:(id)self0 environmentName:(id)self1;
- (void)receivedPush:(id)push onConnectionType:(int64_t)type withGeneration:(unint64_t)generation;
- (void)sendPubSubChannelListRequestForConnectionType:(int64_t)type;
- (void)sendPubSubChannelListResponse:(id)response;
- (void)sendPubSubUpdateMessage:(id)message forConnectionType:(int64_t)type;
- (void)setActive:(BOOL)active;
- (void)setFilterMode:(unint64_t)mode onInterface:(id)interface;
- (void)setLargeMessageSize:(unint64_t)size;
- (void)setMessageSize:(unint64_t)size;
- (void)setProxyManager:(id)manager;
- (void)setPublicToken:(id)token;
- (void)setState:(unint64_t)state onInterface:(id)interface;
@end

@implementation APSProxyClient

- (APSProxyClient)initWithEnvironment:(id)environment guid:(id)guid
{
  environmentCopy = environment;
  guidCopy = guid;
  v21.receiver = self;
  v21.super_class = APSProxyClient;
  v9 = [(APSProxyClient *)&v21 init];
  if (v9)
  {
    v10 = [guidCopy copy];
    guid = v9->_guid;
    v9->_guid = v10;

    objc_storeStrong(&v9->_environment, environment);
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
  group = [(APSTopicManager *)self->_topicManager group];
  enabledTopics = [group enabledTopics];
  v7 = APSPrettyPrintCollection();
  group2 = [(APSTopicManager *)self->_topicManager group];
  ignoredTopics = [group2 ignoredTopics];
  v8 = APSPrettyPrintCollection();
  group3 = [(APSTopicManager *)self->_topicManager group];
  opportunisticTopics = [group3 opportunisticTopics];
  v11 = APSPrettyPrintCollection();
  group4 = [(APSTopicManager *)self->_topicManager group];
  nonWakingTopics = [group4 nonWakingTopics];
  v14 = APSPrettyPrintCollection();
  v15 = [NSString stringWithFormat:@"<%p guid: %@ isActive: %@; invalid: %@ stateByInterfaceIdentifier: %@; filterModeByInterfaceIdentifier: %@; enabledTopics: %@, ignoredTopics: %@, opportunisticTopics: %@, nonWakingTopics: %@>", self, guid, v22, v21, v18, v17, v7, v8, v11, v14];;

  return v15;
}

- (void)setProxyManager:(id)manager
{
  managerCopy = manager;
  proxyManager = self->_proxyManager;
  if (proxyManager != managerCopy)
  {
    v7 = managerCopy;
    [(APSIDSProxyManager *)proxyManager removeListener:self environment:self->_environment];
    objc_storeStrong(&self->_proxyManager, manager);
    proxyManager = [(APSIDSProxyManager *)self->_proxyManager setListener:self environment:self->_environment];
    managerCopy = v7;
  }

  _objc_release_x1(proxyManager, managerCopy);
}

- (void)incomingPresenceWithCertificates:(id)certificates nonce:(id)nonce signature:(id)signature token:(id)token hwVersion:(id)version swVersion:(id)swVersion swBuild:(id)build additionalFlags:(int)self0
{
  versionCopy = version;
  swVersionCopy = swVersion;
  buildCopy = build;
  tokenCopy = token;
  signatureCopy = signature;
  nonceCopy = nonce;
  certificatesCopy = certificates;
  v23 = +[APSLog proxy];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138413314;
    selfCopy = self;
    v28 = 1024;
    flagsCopy = flags;
    v30 = 2112;
    v31 = versionCopy;
    v32 = 2112;
    v33 = swVersionCopy;
    v34 = 2112;
    v35 = buildCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ incomingPresence {flags: %u hwVersion: %@, swVersion: %@, swBuild: %@}", &v26, 0x30u);
  }

  [(APSProxyClient *)self setCertificates:certificatesCopy];
  [(APSProxyClient *)self setNonce:nonceCopy];

  [(APSProxyClient *)self setSignature:signatureCopy];
  [(APSProxyClient *)self setHwVersion:versionCopy];
  [(APSProxyClient *)self _setToken:tokenCopy];

  [(APSProxyClient *)self setSwVersion:swVersionCopy];
  [(APSProxyClient *)self setSwBuild:buildCopy];
  [(APSProxyClient *)self setAdditionalFlags:flags];
  v24 = objc_alloc_init(NSDate);
  lastPresence = self->_lastPresence;
  self->_lastPresence = v24;

  [(APSProxyClient *)self setActive:1];
}

- (void)receivedPush:(id)push onConnectionType:(int64_t)type withGeneration:(unint64_t)generation
{
  proxyManager = self->_proxyManager;
  guid = self->_guid;
  environment = self->_environment;
  pushCopy = push;
  name = [(APSEnvironment *)environment name];
  [(APSIDSProxyManager *)proxyManager sendReceivedPush:pushCopy forConnectionType:type generation:generation guid:guid environmentName:name];
}

- (BOOL)needsToConnectOnInterface:(id)interface
{
  v4 = [(NSMutableDictionary *)self->_stateByInterfaceIdentifier objectForKeyedSubscript:interface];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return (unsignedIntegerValue - 3) < 0xFFFFFFFFFFFFFFFELL && self->_active;
}

- (BOOL)needsToDisconnectOnInterface:(id)interface
{
  v4 = [(NSMutableDictionary *)self->_stateByInterfaceIdentifier objectForKeyedSubscript:interface];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  if (self->_active)
  {
    return 0;
  }

  return unsignedIntegerValue != 3 && unsignedIntegerValue != 0;
}

- (BOOL)needsToDisconnect
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  stateByInterfaceIdentifier = [(APSProxyClient *)self stateByInterfaceIdentifier];
  v4 = [stateByInterfaceIdentifier countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(stateByInterfaceIdentifier);
        }

        if ([(APSProxyClient *)self needsToDisconnectOnInterface:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [stateByInterfaceIdentifier countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)isConnectedOnInterface:(id)interface
{
  v3 = [(NSMutableDictionary *)self->_stateByInterfaceIdentifier objectForKeyedSubscript:interface];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue == 2;
}

- (void)_adjustConnectedStateWithInterfaceHint:(BOOL)hint
{
  hintCopy = hint;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  stateByInterfaceIdentifier = [(APSProxyClient *)self stateByInterfaceIdentifier];
  allValues = [stateByInterfaceIdentifier allValues];

  v7 = [allValues countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v16 + 1) + 8 * i) unsignedIntegerValue] == 2)
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  isConnected = self->_isConnected;
  if (isConnected != v7 || hintCopy)
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
      selfCopy = self;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ broadcasting to client device it's now %@", buf, 0x16u);
    }

    proxyManager = self->_proxyManager;
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendProxyIsConnected:v7 guid:guid environmentName:name];
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
      selfCopy = self;
      v7 = 2112;
      v8 = connectedNotesSentLimiter;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ noted connections too many times, likely in a loop -- stopping {connectedNotesSentLimiter: %@}", &v5, 0x16u);
    }
  }
}

- (void)setState:(unint64_t)state onInterface:(id)interface
{
  interfaceCopy = interface;
  stateByInterfaceIdentifier = [(APSProxyClient *)self stateByInterfaceIdentifier];
  v8 = [stateByInterfaceIdentifier objectForKeyedSubscript:interfaceCopy];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = +[APSLog proxy];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (unsignedIntegerValue > 3)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_100187DD8[unsignedIntegerValue];
    }

    if (state > 3)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = off_100187DD8[state];
    }

    v17 = 138413058;
    selfCopy = self;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = interfaceCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ setting state from %@ to %@ onInterface %@", &v17, 0x2Au);
  }

  v13 = [NSNumber numberWithUnsignedInteger:state];
  stateByInterfaceIdentifier2 = [(APSProxyClient *)self stateByInterfaceIdentifier];
  [stateByInterfaceIdentifier2 setObject:v13 forKeyedSubscript:interfaceCopy];

  v16 = state == 2 && unsignedIntegerValue != 2;
  [(APSProxyClient *)self _adjustConnectedStateWithInterfaceHint:v16];
}

- (unint64_t)stateOnInterface:(id)interface
{
  interfaceCopy = interface;
  stateByInterfaceIdentifier = [(APSProxyClient *)self stateByInterfaceIdentifier];
  v6 = [stateByInterfaceIdentifier objectForKeyedSubscript:interfaceCopy];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setFilterMode:(unint64_t)mode onInterface:(id)interface
{
  interfaceCopy = interface;
  v8 = [NSNumber numberWithUnsignedInteger:mode];
  filterModeByInterfaceIdentifier = [(APSProxyClient *)self filterModeByInterfaceIdentifier];
  [filterModeByInterfaceIdentifier setObject:v8 forKeyedSubscript:interfaceCopy];
}

- (unint64_t)filterModeOnInterface:(id)interface
{
  interfaceCopy = interface;
  filterModeByInterfaceIdentifier = [(APSProxyClient *)self filterModeByInterfaceIdentifier];
  v6 = [filterModeByInterfaceIdentifier objectForKeyedSubscript:interfaceCopy];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (BOOL)shouldOnlySendFilterOnPreferredInterface
{
  filterModeByInterfaceIdentifier = [(APSProxyClient *)self filterModeByInterfaceIdentifier];
  if ([filterModeByInterfaceIdentifier count] < 2)
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
  filterModeByInterfaceIdentifier2 = [(APSProxyClient *)self filterModeByInterfaceIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000716C4;
  v8[3] = &unk_100187D00;
  v8[4] = &v9;
  [filterModeByInterfaceIdentifier2 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6 & 1;
}

- (BOOL)_setToken:(id)token
{
  tokenCopy = token;
  v5 = 0;
  if (tokenCopy)
  {
    publicToken = self->_publicToken;
    if (publicToken != tokenCopy)
    {
      if ([(NSData *)publicToken isEqualToData:tokenCopy])
      {
        v5 = 0;
      }

      else
      {
        v7 = self->_publicToken;
        v8 = [(NSData *)tokenCopy copy];
        v9 = self->_publicToken;
        self->_publicToken = v8;

        if (v7)
        {
          v10 = +[APSLog proxy];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 138412290;
            selfCopy = self;
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

- (void)setPublicToken:(id)token
{
  tokenCopy = token;
  v5 = +[APSLog proxy];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    publicToken = self->_publicToken;
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = tokenCopy;
    v14 = 2112;
    v15 = publicToken;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ got a token %@ (had %@)", &v10, 0x20u);
  }

  if ([(APSProxyClient *)self _setToken:tokenCopy])
  {
    proxyManager = self->_proxyManager;
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendPushToken:tokenCopy guid:guid environmentName:name];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    if (active)
    {
      if (self->_invalid)
      {
        v4 = +[APSLog proxy];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          publicToken = self->_publicToken;
          *buf = 138412546;
          selfCopy = self;
          v11 = 2112;
          v12 = publicToken;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ has been activated while invalidated (%@)", buf, 0x16u);
        }
      }

      else
      {
        self->_active = active;
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
    selfCopy = self;
    v7 = 2112;
    v8 = publicToken;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ has been invalidated %@", &v5, 0x16u);
  }

  self->_invalid = 1;
  [(APSProxyClient *)self setActive:0];
}

- (void)setLargeMessageSize:(unint64_t)size
{
  if (self->_largeMessageSize == size)
  {
    v4 = +[APSLog proxy];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Large Message Size did not change, not sending to client device.", buf, 0xCu);
    }
  }

  else
  {
    self->_largeMessageSize = size;
    proxyManager = self->_proxyManager;
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendLargeMessageSize:size guid:guid environmentName:?];
  }
}

- (void)setMessageSize:(unint64_t)size
{
  if (self->_messageSize == size)
  {
    v4 = +[APSLog proxy];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Message Size did not change, not sending to client device.", buf, 0xCu);
    }
  }

  else
  {
    self->_messageSize = size;
    proxyManager = self->_proxyManager;
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendMessageSize:size guid:guid environmentName:?];
  }
}

- (void)proxyManager:(id)manager isNearbyChanged:(BOOL)changed
{
  managerCopy = manager;
  if (!changed && self->_active)
  {
    v7 = +[APSLog proxy];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ isNearby became NO, deactivating", &v8, 0xCu);
    }

    [(APSProxyClient *)self setActive:0];
  }
}

- (void)proxyManager:(id)manager incomingFilterForGuid:(id)guid environmentName:(id)name enabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics topicSalts:(id)self0
{
  managerCopy = manager;
  guidCopy = guid;
  nameCopy = name;
  topicsCopy = topics;
  ignoredTopicsCopy = ignoredTopics;
  opportunisticTopicsCopy = opportunisticTopics;
  wakingTopicsCopy = wakingTopics;
  saltsCopy = salts;
  v22 = +[APSLog proxy];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = managerCopy;
    v24 = wakingTopicsCopy;
    v25 = ignoredTopicsCopy;
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    selfCopy = self;
    v89 = 2112;
    v90 = guidCopy;
    v91 = 2112;
    guidCopy2 = guid;
    ignoredTopicsCopy = v25;
    wakingTopicsCopy = v24;
    managerCopy = v23;
    v93 = 2112;
    v94 = nameCopy;
    v95 = 2112;
    v96 = name;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ incomingFilterForGuid guid %@ myGuid %@  envName %@  myEnvName %@", buf, 0x34u);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    v29 = [nameCopy isEqualToString:name2];

    if (v29)
    {
      v58 = nameCopy;
      v59 = managerCopy;
      if (!self->_topicManager)
      {
        v30 = [[APSDictionaryTopicSaltStore alloc] initWithDictionary:saltsCopy];
        v31 = [[APSTopicHasher alloc] initWithTopicSaltStore:v30];
        v32 = [[APSTopicManager alloc] initWithEnvironment:self->_environment topicHasher:v31 user:0 userPreferences:0 ultraConstrainedProvider:0 delegate:0];
        topicManager = self->_topicManager;
        self->_topicManager = v32;
      }

      v69 = saltsCopy;
      context = objc_autoreleasePoolPush();
      v57 = topicsCopy;
      v68 = [NSSet setWithArray:topicsCopy];
      v56 = ignoredTopicsCopy;
      v67 = [NSSet setWithArray:ignoredTopicsCopy];
      v65 = [NSSet setWithArray:opportunisticTopicsCopy];
      v55 = wakingTopicsCopy;
      v66 = [NSSet setWithArray:wakingTopicsCopy];
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
        wakingTopicsCopy = v55;
        ignoredTopicsCopy = v56;
        saltsCopy = v69;
      }

      else
      {
        wakingTopicsCopy = v55;
        ignoredTopicsCopy = v56;
        saltsCopy = v69;
        v51 = [v48 count] || objc_msgSend(v49, "count") || objc_msgSend(v50, "count") || objc_msgSend(v64, "count") || objc_msgSend(v62, "count") || objc_msgSend(v61, "count") || objc_msgSend(v60, "count") != 0;
      }

      objc_autoreleasePoolPop(context);
      nameCopy = v58;
      managerCopy = v59;
      topicsCopy = v57;
      if (v51 && [(APSProxyClient *)self isConnected])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained requestFilterForClient:self];
      }
    }
  }
}

- (void)proxyManager:(id)manager inactiveReceivedForGuid:(id)guid environmentName:(id)name
{
  guidCopy = guid;
  nameCopy = name;
  v9 = +[APSLog proxy];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    v15 = 138413314;
    selfCopy2 = self;
    v17 = 2112;
    v18 = guidCopy;
    v19 = 2112;
    guidCopy2 = guid;
    v21 = 2112;
    v22 = nameCopy;
    v23 = 2112;
    v24 = name;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ inactiveReceivedForGuid guid %@ myGuid %@  envName %@  myEnvName %@", &v15, 0x34u);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    v13 = [nameCopy isEqualToString:name2];

    if (v13)
    {
      v14 = +[APSLog proxy];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ client told us that we should no longer be active.", &v15, 0xCu);
      }

      [(APSProxyClient *)self setActive:0];
    }
  }
}

- (void)proxyManager:(id)manager receivedPushAckResponse:(id)response messageId:(id)id token:(id)token connectionType:(id)type generation:(id)generation guid:(id)guid environmentName:(id)self0
{
  responseCopy = response;
  idCopy = id;
  tokenCopy = token;
  typeCopy = type;
  generationCopy = generation;
  guidCopy = guid;
  nameCopy = name;
  v22 = +[APSLog proxy];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v33 = nameCopy;
    v23 = generationCopy;
    v24 = typeCopy;
    v25 = tokenCopy;
    v26 = idCopy;
    v27 = responseCopy;
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    selfCopy = self;
    v36 = 2112;
    v37 = guidCopy;
    v38 = 2112;
    guidCopy2 = guid;
    responseCopy = v27;
    idCopy = v26;
    tokenCopy = v25;
    typeCopy = v24;
    generationCopy = v23;
    nameCopy = v33;
    v40 = 2112;
    v41 = v33;
    v42 = 2112;
    v43 = name;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ receivedPushAckResponse guid %@ myGuid %@  envName %@  myEnvName %@", buf, 0x34u);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    v31 = [nameCopy isEqualToString:name2];

    if (v31)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained client:self requestPushAckResponse:responseCopy messageId:idCopy token:tokenCopy connectionType:typeCopy generation:generationCopy];
    }
  }
}

- (void)proxyManager:(id)manager sendReversePush:(id)push guid:(id)guid environmentName:(id)name
{
  pushCopy = push;
  pendingMessageGUIDs = self->_pendingMessageGUIDs;
  v13 = pushCopy;
  if (!pendingMessageGUIDs)
  {
    v9 = objc_alloc_init(NSMutableSet);
    v10 = self->_pendingMessageGUIDs;
    self->_pendingMessageGUIDs = v9;

    pushCopy = v13;
    pendingMessageGUIDs = self->_pendingMessageGUIDs;
  }

  guid = [pushCopy guid];
  [(NSMutableSet *)pendingMessageGUIDs addObject:guid];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self requestSendOutgoingMessage:v13];
}

- (void)proxyManager:(id)manager tokenGenerateWithTopicHash:(id)hash baseToken:(id)token appId:(id)id expirationTTL:(id)l vapidPublicKeyHash:(id)keyHash type:(id)type guid:(id)self0 environmentName:(id)self1
{
  hashCopy = hash;
  tokenCopy = token;
  idCopy = id;
  lCopy = l;
  keyHashCopy = keyHash;
  typeCopy = type;
  guidCopy = guid;
  nameCopy = name;
  v22 = +[APSLog proxy];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    guid = self->_guid;
    name = [(APSEnvironment *)self->_environment name];
    *buf = 138413314;
    selfCopy = self;
    v32 = 2112;
    v33 = guidCopy;
    v34 = 2112;
    guidCopy2 = guid;
    v36 = 2112;
    v37 = nameCopy;
    v38 = 2112;
    v39 = name;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ appTokenGenerate request guid %@ myGuid %@  envName %@  myEnvName %@", buf, 0x34u);
  }

  if ([guidCopy isEqualToString:self->_guid])
  {
    name2 = [(APSEnvironment *)self->_environment name];
    v26 = [nameCopy isEqualToString:name2];

    if (v26)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained client:self requestTokenGenerateWithTopicHash:hashCopy baseToken:tokenCopy appId:idCopy expirationTTL:lCopy vapidPublicKeyHash:keyHashCopy type:typeCopy];
    }
  }
}

- (void)sendPubSubChannelListResponse:(id)response
{
  if (self->_active)
  {
    responseCopy = response;
    v5 = +[APSLog proxy];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ sending pubsub channel list response to agent device", &v8, 0xCu);
    }

    proxyManager = self->_proxyManager;
    name = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendPubSubChannelListResponse:responseCopy environmentName:name guid:self->_guid];
  }
}

- (void)sendPubSubUpdateMessage:(id)message forConnectionType:(int64_t)type
{
  if (self->_active)
  {
    messageCopy = message;
    v7 = +[APSLog proxy];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ sending pubsub update message to agent device", &v10, 0xCu);
    }

    proxyManager = self->_proxyManager;
    name = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendPubSubUpdateMessage:messageCopy connectionType:type environmentName:name guid:self->_guid];
  }
}

- (void)sendPubSubChannelListRequestForConnectionType:(int64_t)type
{
  if (self->_active)
  {
    v5 = +[APSLog proxy];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ sending pubsub channel list request message to client device", &v8, 0xCu);
    }

    proxyManager = self->_proxyManager;
    name = [(APSEnvironment *)self->_environment name];
    [(APSIDSProxyManager *)proxyManager sendPubSubChannelListRequest:type environmentName:name guid:self->_guid];
  }
}

- (void)handleResult:(id)result forSendingOutgoingMessage:(id)message
{
  resultCopy = result;
  messageCopy = message;
  v8 = +[APSLog proxy];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412802;
    selfCopy2 = self;
    v24 = 2112;
    v25 = resultCopy;
    v26 = 2112;
    v27 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ received result %@ for outgoing message %@", &v22, 0x20u);
  }

  guid = [messageCopy guid];
  if (guid)
  {
    v10 = guid;
    pendingMessageGUIDs = self->_pendingMessageGUIDs;
    guid2 = [messageCopy guid];
    LODWORD(pendingMessageGUIDs) = [(NSMutableSet *)pendingMessageGUIDs containsObject:guid2];

    if (pendingMessageGUIDs)
    {
      v13 = +[APSLog proxy];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ We have this message, forwarding feedback to proxied device.", &v22, 0xCu);
      }

      v14 = self->_pendingMessageGUIDs;
      guid3 = [messageCopy guid];
      [(NSMutableSet *)v14 removeObject:guid3];

      code = [resultCopy code];
      proxyManager = self->_proxyManager;
      guid4 = [messageCopy guid];
      messageID = [messageCopy messageID];
      guid = self->_guid;
      name = [(APSEnvironment *)self->_environment name];
      [(APSIDSProxyManager *)proxyManager sendReversePushResponse:code messageGUID:guid4 messageId:messageID guid:guid environmentName:name];
    }
  }
}

- (void)handleAppTokenGenerateResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = +[APSLog proxy];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = responseCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ received result AppTokenGenerateResponse %@ error %@", &v12, 0x20u);
  }

  proxyManager = self->_proxyManager;
  guid = self->_guid;
  name = [(APSEnvironment *)self->_environment name];
  [(APSIDSProxyManager *)proxyManager sendAppTokenGenerateResponse:responseCopy error:errorCopy guid:guid environmentName:name];
}

- (APSProxyClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end