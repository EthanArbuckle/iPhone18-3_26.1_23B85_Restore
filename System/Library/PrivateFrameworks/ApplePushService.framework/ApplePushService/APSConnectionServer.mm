@interface APSConnectionServer
+ (id)environmentForNamedPort:(id)port userPreferences:(id)preferences;
+ (id)serverEnvironmentNamesForUserPreferences:(id)preferences;
+ (id)serversWithEnvironmentName:(id)name user:(id)user userPreferences:(id)preferences excludeServers:(id)servers delegate:(id)delegate;
+ (void)serversWithEnvironmentName:(id)name user:(id)user userPreferences:(id)preferences excludeServers:(id)servers delegate:(id)delegate returnServers:(id)returnServers;
- (APSConnectionServer)initWithDelegate:(id)delegate user:(id)user userPreferences:(id)preferences enableDarkWake:(BOOL)wake environmentName:(id)name connectionPortName:(id)portName processName:(id)processName connection:(id)self0;
- (APSConnectionServerDelegate)delegate;
- (BOOL)_containsInvalidTopic:(id)topic;
- (BOOL)isConnected;
- (NSString)debugDescription;
- (NSString)description;
- (OS_xpc_object)connection;
- (id)JSONDebugState;
- (id)aps_prettyDescription;
- (id)processNameWithLabels:(BOOL)labels;
- (void)_enqueueXPCMessage:(id)message wakingClient:(BOOL)client highPriority:(BOOL)priority shouldBoostPriority:(BOOL)boostPriority withReply:(id)reply;
- (void)_handleInvalidateTokenForInfo:(id)info;
- (void)_handleRequestTokenForInfo:(id)info;
- (void)_informTopicManagerOfChangedFilter:(int64_t)filter newTopics:(id)topics oldTopics:(id)oldTopics;
- (void)_initiateConnectionIfNecessary;
- (void)_lookUpMachPort;
- (void)_migratePersistentTopicsIfNeeded;
- (void)_redeliverCurrentPublicToken;
- (void)_resumeQueue;
- (void)_savePersistentConnection;
- (void)_sendClientToken:(id)token forInfo:(id)info;
- (void)_suspendQueue;
- (void)_warnIfOverlappingTopics:(id)topics againstTopics:(id)againstTopics string:(id)string;
- (void)acknowledgeDidReceivePublicToken:(id)token;
- (void)appendPrettyStatusToStatusPrinter:(id)printer;
- (void)appendPrettyStatusToStatusPrinter:(id)printer forTopics:(id)topics type:(id)type;
- (void)close;
- (void)connectionHandshakeDidComplete;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)handleAckIncomingMessageWithGuid:(id)guid topic:(id)topic tracingUUID:(id)d;
- (void)handleCancelOutgoingMessageWithID:(unint64_t)d;
- (void)handleChannelSubscriptionFailures:(id)failures forTopic:(id)topic;
- (void)handleConnectionStatusChanged:(BOOL)changed;
- (void)handleCurrentTokenForInfo:(id)info;
- (void)handleCurrentURLTokenForInfo:(id)info;
- (void)handleFakeMessage:(id)message;
- (void)handleIncomingMessageReceiptWithTopic:(id)topic tracingUUID:(id)d;
- (void)handleInvalidatePerAppTokenForInfo:(id)info;
- (void)handleInvalidatePerAppTokenForTopic:(id)topic identifier:(id)identifier;
- (void)handleInvalidateURLTokenForTopic:(id)topic;
- (void)handleNotificationAcknowledged;
- (void)handlePublicTokenDeliveryReply:(id)reply;
- (void)handleReceivedMessage:(id)message;
- (void)handleReceivedToken:(id)token forInfo:(id)info;
- (void)handleReceivedTokenError:(id)error forInfo:(id)info;
- (void)handleRequestPerAppTokenForTopic:(id)topic identifier:(id)identifier;
- (void)handleRequestTokenForInfo:(id)info;
- (void)handleRequestURLTokenForInfo:(id)info;
- (void)handleResult:(id)result forSendingOutgoingMessage:(id)message;
- (void)handleResult:(id)result forSendingOutgoingMessageWithID:(unint64_t)d sendRTT:(unint64_t)t ackTimestamp:(unint64_t)timestamp;
- (void)handleSendOutgoingMessage:(id)message;
- (void)handleSubscribeToChannels:(id)channels forTopic:(id)topic;
- (void)handleUnsubscribeFromChannels:(id)channels forTopic:(id)topic;
- (void)saveAndUpdateDelegate;
- (void)setConnection:(id)connection;
- (void)setEnableCriticalReliability:(BOOL)reliability;
- (void)setEnableStatusChangeNotifications:(BOOL)notifications;
- (void)setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics;
- (void)setIsPublicTokenAcknowledged:(BOOL)acknowledged;
- (void)setKeepAliveConfiguration:(unint64_t)configuration;
- (void)setLargeMessageSize:(unint64_t)size;
- (void)setMessageSize:(unint64_t)size;
- (void)setPublicToken:(id)token needsAck:(BOOL)ack;
- (void)setPushWakeTopics:(id)topics;
- (void)setTrackActivityPresence:(BOOL)presence;
- (void)setUltraConstrainedTopics:(id)topics;
- (void)setUser:(id)user;
@end

@implementation APSConnectionServer

- (void)_savePersistentConnection
{
  if (self->_connectionPortName)
  {
    userPreferences = [(APSConnectionServer *)self userPreferences];
    persistentTopics = [userPreferences persistentTopics];

    if (!persistentTopics || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = [persistentTopics mutableCopy]) == 0)
    {
      v5 = objc_alloc_init(NSMutableDictionary);
    }

    v22 = v5;
    if ([(NSSet *)self->_enabledTopics count]|| [(NSSet *)self->_ignoredTopics count]|| [(NSSet *)self->_opportunisticTopics count]|| [(NSSet *)self->_nonWakingTopics count])
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      if ([(NSSet *)self->_enabledTopics count])
      {
        allObjects = [(NSSet *)self->_enabledTopics allObjects];
        [v6 setObject:allObjects forKey:@"enabled"];
      }

      if ([(NSSet *)self->_nonWakingTopics count])
      {
        v8 = [(NSSet *)self->_nonWakingTopics mutableCopy];
        [v8 minusSet:self->_enabledTopics];
        allObjects2 = [v8 allObjects];
        [v6 setObject:allObjects2 forKey:@"nonWaking"];
      }

      if ([(NSSet *)self->_opportunisticTopics count])
      {
        v10 = [(NSSet *)self->_opportunisticTopics mutableCopy];
        [v10 minusSet:self->_enabledTopics];
        [v10 minusSet:self->_nonWakingTopics];
        allObjects3 = [v10 allObjects];
        [v6 setObject:allObjects3 forKey:@"opportunistic"];
      }

      if ([(NSSet *)self->_ignoredTopics count])
      {
        v12 = [(NSSet *)self->_ignoredTopics mutableCopy];
        [v12 minusSet:self->_enabledTopics];
        [v12 minusSet:self->_opportunisticTopics];
        [v12 minusSet:self->_nonWakingTopics];
        allObjects4 = [v12 allObjects];
        [v6 setObject:allObjects4 forKey:@"ignored"];
      }

      [v6 setObject:self->_environmentName forKey:@"environment"];
      processName = self->_processName;
      if (processName)
      {
        [v6 setObject:processName forKey:@"processName"];
      }

      v15 = [NSNumber numberWithBool:self->_isPublicTokenAcknowledged];
      [v6 setObject:v15 forKey:@"tokenAcked"];

      v16 = [NSNumber numberWithBool:self->_enableDarkWake];
      [v6 setObject:v16 forKey:@"darkWakeEnabled"];

      if ([(NSSet *)self->_pushWakeTopics count])
      {
        allObjects5 = [(NSSet *)self->_pushWakeTopics allObjects];
        [v6 setObject:allObjects5 forKey:@"pushWake"];
      }

      if ([(NSSet *)self->_ultraConstrainedTopics count])
      {
        allObjects6 = [(NSSet *)self->_ultraConstrainedTopics allObjects];
        [v6 setObject:allObjects6 forKey:@"ultraConstrained"];
      }

      if (self->_enableStatusChangeNotifications)
      {
        v19 = [NSNumber numberWithBool:1];
        [v6 setObject:v19 forKey:@"enableStatusUpdates"];
      }

      [v22 setObject:v6 forKey:self->_connectionPortName];
    }

    else
    {
      [v22 removeObjectForKey:self->_connectionPortName];
    }

    v20 = objc_autoreleasePoolPush();
    userPreferences2 = [(APSConnectionServer *)self userPreferences];
    [userPreferences2 setPersistentTopics:v22];

    objc_autoreleasePoolPop(v20);
  }
}

- (OS_xpc_object)connection
{
  os_unfair_lock_lock(&self->_connectionLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_connectionLock);

  return v3;
}

- (APSConnectionServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleNotificationAcknowledged
{
  atomic_fetch_add(&self->_numberNotificationsAcknowledged, 1uLL);
  +[NSDate timeIntervalSinceReferenceDate];
  self->_lastNotificationAcknowledgedTime = v3;
}

- (void)_initiateConnectionIfNecessary
{
  connection = [(APSConnectionServer *)self connection];

  if (!connection)
  {
    v4 = +[APSLog connectionServer];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      connectionPortName = self->_connectionPortName;
      *buf = 138412290;
      selfCopy = connectionPortName;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pinging client via mach since we are not currently connected for port %@", buf, 0xCu);
    }

    if ([(NSString *)self->_connectionPortName length])
    {
      if (self->_connectionMachPort + 1 > 1)
      {
        v7 = 0;
      }

      else
      {
        v6 = +[APSLog connectionServer];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Should've had a valid mach port but didn't, trying to create port.", buf, 2u);
        }

        [(APSConnectionServer *)self _lookUpMachPort];
        v7 = 1;
      }

      self->_freshMachPort = v7;
    }

    connectionMachPort = self->_connectionMachPort;
    if (connectionMachPort - 1 > 0xFFFFFFFD)
    {
      v10 = +[APSLog connectionServer];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_connectionPortName;
        *buf = 138412546;
        selfCopy = self;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Invalid mach port - Cleaning up this named port's topics. %@", buf, 0x16u);
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100067234;
      v12[3] = &unk_100186D90;
      v12[4] = self;
      dispatch_async(&_dispatch_main_q, v12);
    }

    else
    {
      v9 = dispatch_queue_create("pingQueue", 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100066F34;
      block[3] = &unk_100187BB8;
      v14 = connectionMachPort;
      block[4] = self;
      dispatch_async(v9, block);
    }
  }
}

- (void)_migratePersistentTopicsIfNeeded
{
  user = [(APSConnectionServer *)self user];
  if ([user isDefaultUser])
  {

    return;
  }

  connectionPortName = self->_connectionPortName;

  if (!connectionPortName)
  {
    return;
  }

  userPreferences = [(APSConnectionServer *)self userPreferences];
  defaultUserPersistentTopics = [userPreferences defaultUserPersistentTopics];

  if (!defaultUserPersistentTopics || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = [defaultUserPersistentTopics mutableCopy];
  v7 = v6;
  if (!v6)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v8 = [v6 objectForKey:self->_connectionPortName];
  v9 = [v8 copy];

LABEL_12:
  [v7 removeObjectForKey:self->_connectionPortName];
  userPreferences2 = [(APSConnectionServer *)self userPreferences];
  [userPreferences2 setDefaultUserPersistentTopics:v7];

  if (v9)
  {
    userPreferences3 = [(APSConnectionServer *)self userPreferences];
    persistentTopics = [userPreferences3 persistentTopics];

    if (!persistentTopics || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v13 = [persistentTopics mutableCopy]) == 0)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
    }

    [v13 setObject:v9 forKey:self->_connectionPortName];
    userPreferences4 = [(APSConnectionServer *)self userPreferences];
    [userPreferences4 setPersistentTopics:v13];

    v15 = +[APSLog connectionServer];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_connectionPortName;
      user2 = [(APSConnectionServer *)self user];
      *buf = 138412802;
      selfCopy = self;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = user2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Migrate persistent topics for %@ from Default to %@", buf, 0x20u);
    }
  }
}

- (void)_suspendQueue
{
  queue = self->_queue;
  if (queue)
  {
    if (!self->_isQueueSuspended)
    {
      dispatch_suspend(queue);
      self->_isQueueSuspended = 1;
    }
  }
}

- (void)saveAndUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connectionTopicsChanged:self];

  [(APSConnectionServer *)self _savePersistentConnectionTopics];
}

- (BOOL)isConnected
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained connectionDelegateIsConnectedToService:selfCopy];

  return selfCopy;
}

- (void)connectionHandshakeDidComplete
{
  [(APSConnectionServer *)self _resumeQueue];
  connectionPortName = [(APSConnectionServer *)self connectionPortName];

  if (connectionPortName)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained connectionWasOpened:self];
  }
}

- (void)_resumeQueue
{
  queue = self->_queue;
  if (queue)
  {
    if (self->_isQueueSuspended)
    {
      dispatch_resume(queue);
      self->_isQueueSuspended = 0;
    }
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  environmentName = self->_environmentName;
  connectionPortName = self->_connectionPortName;
  processName = self->_processName;
  name = [(APSUser *)self->_user name];
  v8 = [NSString stringWithFormat:@"<%@: %p %@/%@/%@ %@>", v3, self, environmentName, connectionPortName, processName, name];;

  return v8;
}

+ (id)serverEnvironmentNamesForUserPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = +[NSMutableArray array];
  persistentTopics = [preferencesCopy persistentTopics];
  if (persistentTopics)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = persistentTopics;
      v15 = preferencesCopy;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = persistentTopics;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [v6 objectForKey:{*(*(&v16 + 1) + 8 * i), v14, v15, v16}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v11 objectForKey:@"environment"];
              if (([v4 containsObject:v12] & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v4 addObject:v12];
                }
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }

      persistentTopics = v14;
      preferencesCopy = v15;
    }
  }

  return v4;
}

+ (id)serversWithEnvironmentName:(id)name user:(id)user userPreferences:(id)preferences excludeServers:(id)servers delegate:(id)delegate
{
  nameCopy = name;
  userCopy = user;
  preferencesCopy = preferences;
  serversCopy = servers;
  delegateCopy = delegate;
  v17 = +[NSMutableArray array];
  v18 = +[APSLog connectionServer];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = nameCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "serversWithEnvironmentNames: %@", &v21, 0xCu);
  }

  if (nameCopy)
  {
    [self serversWithEnvironmentName:nameCopy user:userCopy userPreferences:preferencesCopy excludeServers:serversCopy delegate:delegateCopy returnServers:v17];
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (void)serversWithEnvironmentName:(id)name user:(id)user userPreferences:(id)preferences excludeServers:(id)servers delegate:(id)delegate returnServers:(id)returnServers
{
  nameCopy = name;
  userCopy = user;
  preferencesCopy = preferences;
  delegateCopy = delegate;
  returnServersCopy = returnServers;
  persistentTopics = [preferencesCopy persistentTopics];
  v15 = objc_alloc_init(NSMutableArray);
  if (persistentTopics)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = preferencesCopy;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v55 = persistentTopics;
      v16 = persistentTopics;
      v17 = [v16 countByEnumeratingWithState:&v75 objects:v85 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v76;
        v56 = nameCopy;
        v69 = v15;
        v70 = *v76;
        do
        {
          v20 = 0;
          v71 = v18;
          do
          {
            if (*v76 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v75 + 1) + 8 * v20);
            v22 = [v16 objectForKey:{v21, uTF8String}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v74 = 0;
              v23 = [userCopy bootstrapLookupForPortName:-[APSConnectionServer UTF8String](v21 outConnectionPort:{"UTF8String"), &v74}];
              getpid();
              uTF8String = [(APSConnectionServer *)v21 UTF8String];
              if (sandbox_check())
              {
                v24 = +[APSLog connectionServer];
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v80 = v21;
                  _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "APSConnection is created with an invalid mach port that sandbox hasn't allowlisted yet. Please switch to use mach port with format <com.apple.aps.*>. {MachPort: %@}", buf, 0xCu);
                }
              }

              if ((v74 - 1) >= 0xFFFFFFFE)
              {
                v34 = +[APSLog connectionServer];
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = bootstrap_strerror(v23);
                  *buf = 138412546;
                  v80 = v21;
                  v81 = 2080;
                  v82 = v35;
                  _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unable to bootstrap_lookup connection port for '%@': %s", buf, 0x16u);
                }

                [v15 addObject:v21];
              }

              else
              {
                v25 = [v22 objectForKey:@"environment"];
                v72 = [v22 objectForKey:@"processName"];
                v26 = [v22 objectForKey:@"tokenAcked"];
                bOOLValue = [v26 BOOLValue];

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 isEqualToString:nameCopy])
                {
                  v28 = nameCopy;
                  v29 = [[APSConnectionServer alloc] initWithDelegate:delegateCopy user:userCopy userPreferences:v58 enableDarkWake:0 environmentName:v25 connectionPortName:v21 processName:v72 connection:0];
                  v30 = +[APSLog connectionServer];
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412802;
                    v80 = v29;
                    v81 = 2112;
                    v82 = v21;
                    v83 = 2112;
                    v84 = userCopy;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Creating server: %@ with connectionPortName: %@ user: %@", buf, 0x20u);
                  }

                  if (v29)
                  {
                    [(APSConnectionServer *)v29 setIsPublicTokenAcknowledged:bOOLValue];
                    v31 = [v22 objectForKey:@"enabled"];
                    v32 = APSSafeArrayOfStrings();

                    v33 = v29;
                    if (v32)
                    {
                      v68 = [[NSSet alloc] initWithArray:v32];
                    }

                    else
                    {
                      v68 = 0;
                    }

                    v36 = [v22 objectForKey:@"ignored"];
                    v37 = APSSafeArrayOfStrings();

                    v65 = v37;
                    if (v37)
                    {
                      v67 = [[NSSet alloc] initWithArray:v37];
                    }

                    else
                    {
                      v67 = 0;
                    }

                    v38 = [v22 objectForKey:@"opportunistic"];
                    v39 = APSSafeArrayOfStrings();

                    v64 = v39;
                    v40 = v32;
                    if (v39)
                    {
                      v39 = [[NSSet alloc] initWithArray:v39];
                    }

                    v41 = [v22 objectForKey:@"nonWaking"];
                    v42 = APSSafeArrayOfStrings();

                    if (v42)
                    {
                      v43 = [[NSSet alloc] initWithArray:v42];
                    }

                    else
                    {
                      v43 = 0;
                    }

                    v62 = v43;
                    v63 = v42;
                    [(APSConnectionServer *)v33 setEnabledTopics:v68 ignoredTopics:v67 opportunisticTopics:v39 nonWakingTopics:v43];
                    v44 = [v22 objectForKey:@"enableStatusUpdates"];
                    v45 = v44;
                    if (v44)
                    {
                      -[APSConnectionServer setEnableStatusChangeNotifications:](v33, "setEnableStatusChangeNotifications:", [v44 BOOLValue]);
                    }

                    v61 = v45;
                    v66 = v40;
                    v46 = [v22 objectForKey:@"pushWake"];
                    v47 = APSSafeArrayOfStrings();

                    v60 = v39;
                    if (v47)
                    {
                      v48 = v47;
                      v49 = [[NSSet alloc] initWithArray:v47];
                    }

                    else
                    {
                      v48 = 0;
                      v49 = 0;
                    }

                    v29 = v33;
                    [(APSConnectionServer *)v33 setPushWakeTopics:v49];
                    v50 = [v22 objectForKey:@"ultraConstrained"];
                    v51 = APSSafeArrayOfStrings();

                    if (v51)
                    {
                      v52 = [[NSSet alloc] initWithArray:v51];
                    }

                    else
                    {
                      v52 = 0;
                    }

                    [(APSConnectionServer *)v29 setUltraConstrainedTopics:v52];
                    [returnServersCopy addObject:v29];

                    v28 = v56;
                  }

                  nameCopy = v28;
                }

                v15 = v69;
              }

              v19 = v70;
              v18 = v71;
            }

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v75 objects:v85 count:16];
        }

        while (v18);
      }

      preferencesCopy = v58;
      persistentTopics = v55;
    }
  }

  if ([v15 count])
  {
    v53 = [persistentTopics mutableCopy];
    [v53 removeObjectsForKeys:v15];
    [preferencesCopy setPersistentTopics:v53];
  }
}

- (void)_enqueueXPCMessage:(id)message wakingClient:(BOOL)client highPriority:(BOOL)priority shouldBoostPriority:(BOOL)boostPriority withReply:(id)reply
{
  boostPriorityCopy = boostPriority;
  clientCopy = client;
  messageCopy = message;
  replyCopy = reply;
  if (messageCopy)
  {
    if (self->_enqueuedBlockCount >= 0x65)
    {
      v14 = +[APSLog connectionServer];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        enqueuedBlockCount = self->_enqueuedBlockCount;
        *buf = 138412546;
        selfCopy = self;
        v32 = 2048;
        v33 = enqueuedBlockCount;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: _queue has too many operations %lu! Droping block.", buf, 0x16u);
      }

      goto LABEL_17;
    }

    [CUTWeakReference weakRefWithObject:self];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100065A4C;
    v14 = v24[3] = &unk_100187B70;
    v25 = v14;
    v26 = messageCopy;
    priorityCopy = priority;
    v27 = replyCopy;
    v29 = boostPriorityCopy;
    v16 = objc_retainBlock(v24);
    v17 = v16;
    if (!self->_queue)
    {
      (v16[2])(v16);
LABEL_16:

LABEL_17:
      goto LABEL_18;
    }

    if (clientCopy)
    {
      [(APSConnectionServer *)self _initiateConnectionIfNecessary];
    }

    else if (self->_isQueueSuspended)
    {
      p_numberNotificationsDropped = &self->_numberNotificationsDropped;
LABEL_15:
      atomic_fetch_add(p_numberNotificationsDropped, 1uLL);
      goto LABEL_16;
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    ++self->_enqueuedBlockCount;
    objc_sync_exit(selfCopy2);

    queue = self->_queue;
    if (boostPriorityCopy)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100065DF8;
      block[3] = &unk_100187B48;
      v23 = v17;
      v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
      dispatch_async(queue, v21);
    }

    else
    {
      dispatch_async(queue, v17);
    }

    p_numberNotificationsDropped = &selfCopy2->_numberNotificationsQueued;
    goto LABEL_15;
  }

LABEL_18:
}

- (APSConnectionServer)initWithDelegate:(id)delegate user:(id)user userPreferences:(id)preferences enableDarkWake:(BOOL)wake environmentName:(id)name connectionPortName:(id)portName processName:(id)processName connection:(id)self0
{
  delegateCopy = delegate;
  userCopy = user;
  preferencesCopy = preferences;
  nameCopy = name;
  portNameCopy = portName;
  processNameCopy = processName;
  connectionCopy = connection;
  v48.receiver = self;
  v48.super_class = APSConnectionServer;
  v20 = [(APSConnectionServer *)&v48 init];
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = +[APSLog connectionServer];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v50 = v20;
    v51 = 2112;
    v52 = nameCopy;
    v53 = 2112;
    v54 = portNameCopy;
    v55 = 2112;
    v56 = processNameCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: Initializing connection server with environmentName '%@' and connectionPortName '%@' and processName '%@'", buf, 0x2Au);
  }

  objc_storeStrong(&v20->_userPreferences, preferences);
  v20->_connectionLock._os_unfair_lock_opaque = 0;
  if (portNameCopy)
  {
    v22 = [NSString alloc];
    name = [userCopy name];
    nameCopy = [v22 initWithFormat:@"port=%@-user=%@-env=%@", portNameCopy, name, nameCopy];
LABEL_8:
    name = v20->_name;
    v20->_name = nameCopy;

    goto LABEL_9;
  }

  if (processNameCopy)
  {
    v25 = [NSString alloc];
    name = [userCopy name];
    nameCopy = [v25 initWithFormat:@"proc=%@-user=%@-env=%@", processNameCopy, name, nameCopy];
    goto LABEL_8;
  }

LABEL_9:
  objc_storeStrong(&v20->_user, user);
  objc_storeWeak(&v20->_delegate, delegateCopy);
  v27 = [nameCopy copy];
  environmentName = v20->_environmentName;
  v20->_environmentName = v27;

  v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v30 = dispatch_queue_create("com.apple.apsd-apsconnectionserver", v29);
  queue = v20->_queue;
  v20->_queue = v30;

  v32 = [processNameCopy copy];
  processName = v20->_processName;
  v20->_processName = v32;

  v20->_publicTokenDeliveryRetries = 0;
  v34 = +[NSMutableSet set];
  inMemorySubscriptions = v20->_inMemorySubscriptions;
  v20->_inMemorySubscriptions = v34;

  v36 = +[NSDate date];
  [v36 timeIntervalSinceReferenceDate];
  v20->_dateCreated = v37;

  v20->_enableDarkWake = wake;
  if (portNameCopy)
  {
    v38 = [portNameCopy copy];
    connectionPortName = v20->_connectionPortName;
    v20->_connectionPortName = v38;

    [(APSConnectionServer *)v20 _lookUpMachPort];
  }

  if (connectionCopy)
  {
    v20->_clientPID = xpc_connection_get_pid(connectionCopy);
    objc_storeStrong(&v20->_connection, connection);
    [(APSConnectionServer *)v20 _migratePersistentTopicsIfNeeded];
  }

  else
  {
    v40 = v20->_connectionPortName;
    v41 = +[APSLog connectionServer];
    v42 = v41;
    if (v40)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v20->_connectionPortName;
        *buf = 138412290;
        v50 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "nil _connection but we have a port name: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      sub_100109F88(v42);
    }
  }

  [(APSConnectionServer *)v20 _suspendQueue];
LABEL_20:

  return v20;
}

- (void)dealloc
{
  [(APSConnectionServer *)self close];
  connectionMachPort = self->_connectionMachPort;
  if (connectionMachPort)
  {
    mach_port_deallocate(mach_task_self_, connectionMachPort);
    self->_connectionMachPort = 0;
  }

  if (self->_isQueueSuspended)
  {
    dispatch_resume(self->_queue);
  }

  v4.receiver = self;
  v4.super_class = APSConnectionServer;
  [(APSConnectionServer *)&v4 dealloc];
}

- (void)_lookUpMachPort
{
  v9 = 0;
  user = [(APSConnectionServer *)self user];
  v4 = [user bootstrapLookupForPortName:-[NSString UTF8String](self->_connectionPortName outConnectionPort:{"UTF8String"), &v9}];

  if (v9 - 1 > 0xFFFFFFFD)
  {
    v5 = +[APSLog connectionServer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      connectionPortName = self->_connectionPortName;
      user2 = [(APSConnectionServer *)self user];
      v8 = bootstrap_strerror(v4);
      *buf = 138412802;
      v11 = connectionPortName;
      v12 = 2112;
      v13 = user2;
      v14 = 2080;
      v15 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to bootstrap_look_up connection port '%@' for user %@: %s", buf, 0x20u);
    }
  }

  else
  {
    self->_connectionMachPort = v9;
  }
}

- (void)close
{
  self->_isClosed = 1;
  connection = [(APSConnectionServer *)self connection];
  if (connection)
  {
    connection = connection;
    [(APSConnectionServer *)self _suspendQueue];
    xpc_connection_set_context(connection, 0);
    xpc_connection_cancel(connection);
    [(APSConnectionServer *)self setConnection:0];
    connection = connection;
  }
}

- (id)processNameWithLabels:(BOOL)labels
{
  connectionPortName = self->_connectionPortName;
  if (connectionPortName)
  {
    v4 = &stru_10018F6A0;
    if (labels)
    {
      v4 = @"portname=";
    }

    [NSString stringWithFormat:@"%@%@", v4, connectionPortName, v8];
  }

  else
  {
    v5 = &stru_10018F6A0;
    if (labels)
    {
      v5 = @"process=";
    }

    [NSString stringWithFormat:@"%@%@[%i]", v5, self->_processName, self->_clientPID];
  }
  v6 = ;

  return v6;
}

- (NSString)debugDescription
{
  v3 = [(APSConnectionServer *)self processNameWithLabels:1];
  v4 = objc_opt_class();
  if (self->_enableCriticalReliability)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  enabledTopics = self->_enabledTopics;
  v7 = APSPrettyPrintCollection();
  ignoredTopics = self->_ignoredTopics;
  v9 = APSPrettyPrintCollection();
  opportunisticTopics = self->_opportunisticTopics;
  v11 = APSPrettyPrintCollection();
  nonWakingTopics = self->_nonWakingTopics;
  v13 = APSPrettyPrintCollection();
  v14 = [NSString stringWithFormat:@"<%@ %p: %@, criticalReliability=%s, enabledTopics=%@, ignoredTopics=%@, opportunisticTopics=%@, nonwakingTopics=%@>", v4, self, v3, v5, v7, v9, v11, v13];

  return v14;
}

- (id)aps_prettyDescription
{
  v3 = [(APSConnectionServer *)self processNameWithLabels:1];
  v4 = objc_alloc_init(NSMutableDictionary);
  incomingCounts = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
  total = [incomingCounts total];
  v7 = [total count];

  if (v7)
  {
    incomingCounts2 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
    incomingCountsByTopic = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCountsByTopic];
    v10 = sub_100066840(incomingCountsByTopic, incomingCounts2, incomingCountsByTopic);
    [v4 setObject:v10 forKeyedSubscript:@"in"];
  }

  outgoingCounts = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCounts];
  total2 = [outgoingCounts total];
  v13 = [total2 count];

  if (v13)
  {
    outgoingCounts2 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCounts];
    outgoingCountsByTopic = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCountsByTopic];
    v16 = sub_100066840(outgoingCountsByTopic, outgoingCounts2, outgoingCountsByTopic);
    [v4 setObject:v16 forKeyedSubscript:@"out"];
  }

  if (self->_enableCriticalReliability)
  {
    v17 = "yes";
  }

  else
  {
    v17 = "no";
  }

  enabledTopics = self->_enabledTopics;
  v19 = APSPrettyPrintCollection();
  ignoredTopics = self->_ignoredTopics;
  v21 = APSPrettyPrintCollection();
  opportunisticTopics = self->_opportunisticTopics;
  v23 = APSPrettyPrintCollection();
  nonWakingTopics = self->_nonWakingTopics;
  v25 = APSPrettyPrintCollection();
  v26 = APSPrettyPrintCollection();
  v27 = [NSString stringWithFormat:@"<%@, criticalReliability=%s, enabledTopics=%@, ignoredTopics=%@, opportunisticTopics=%@, nonwakingTopics=%@, statistic=%@>", v3, v17, v19, v21, v23, v25, v26];

  return v27;
}

- (void)setUser:(id)user
{
  if (self->_user != user)
  {
    [(APSConnectionServer *)self _migratePersistentTopicsIfNeeded];
  }
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  connection = [(APSConnectionServer *)self connection];
  v7 = +[APSLog connectionServer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    connectionPortName = self->_connectionPortName;
    LODWORD(v11[0]) = 138413058;
    *(v11 + 4) = connection;
    WORD6(v11[0]) = 2112;
    *(v11 + 14) = connectionCopy;
    WORD3(v11[1]) = 2112;
    *(&v11[1] + 1) = self;
    v12 = 2112;
    v13 = connectionPortName;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Replacing xpc conn %@ with %@ for %@ (%@)", v11, 0x2Au);
  }

  if (connection != connectionCopy)
  {
    if (connection)
    {
      v9 = +[APSLog connectionServer];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100109FCC();
      }

      xpc_connection_cancel(connection);
    }

    objc_storeStrong(&self->_connection, connection);
    if (connectionCopy && connection)
    {
      memset(v11, 0, sizeof(v11));
      xpc_connection_get_audit_token();
      if ([(NSSet *)self->_pushWakeTopics count]&& !sub_100003C4C(v11, APSPushWakeEntitlement))
      {
        [(APSConnectionServer *)self setPushWakeTopics:0];
      }

      if ([(NSSet *)self->_ultraConstrainedTopics count]&& !sub_100003C4C(v11, APSUltraConstrainedEntitlement))
      {
        [(APSConnectionServer *)self setUltraConstrainedTopics:0];
      }
    }

    else
    {
      v10 = +[APSLog connectionServer];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10010A040();
      }
    }

    [(APSConnectionServer *)self _suspendQueue];
  }
}

- (void)connectionInvalidated
{
  [(APSConnectionServer *)self close];
  if (!self->_connectionPortName)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained connectionWasClosed:self];
  }
}

- (void)handleConnectionStatusChanged:(BOOL)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100066EB0;
  v3[3] = &unk_100187B90;
  changedCopy = changed;
  [(APSConnectionServer *)self _enqueueXPCMessage:v3 wakingClient:0 highPriority:0];
}

- (void)handleReceivedMessage:(id)message
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100067464;
  v7[3] = &unk_100187BE0;
  messageCopy = message;
  v8 = messageCopy;
  -[APSConnectionServer _enqueueXPCMessage:wakingClient:highPriority:](self, "_enqueueXPCMessage:wakingClient:highPriority:", v7, 1, [messageCopy priority] == 10);
  v5 = +[APSLog PUSHTRACE];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    tracingUUID = [messageCopy tracingUUID];
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = tracingUUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Sending push to client. UUID: %@", buf, 0x16u);
  }

  [(APSPayloadMessageStats *)self->_payloadMessageStats payloadMessageReceived:messageCopy];
}

- (void)handleResult:(id)result forSendingOutgoingMessage:(id)message
{
  messageCopy = message;
  resultCopy = result;
  messageID = [messageCopy messageID];
  sendRTT = [messageCopy sendRTT];
  ackTimestamp = [messageCopy ackTimestamp];

  [(APSConnectionServer *)self handleResult:resultCopy forSendingOutgoingMessageWithID:messageID sendRTT:sendRTT ackTimestamp:ackTimestamp];
}

- (void)handleResult:(id)result forSendingOutgoingMessageWithID:(unint64_t)d sendRTT:(unint64_t)t ackTimestamp:(unint64_t)timestamp
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100067698;
  v11[3] = &unk_100187C08;
  resultCopy = result;
  dCopy = d;
  tCopy = t;
  timestampCopy = timestamp;
  v10 = resultCopy;
  [(APSConnectionServer *)self _enqueueXPCMessage:v11 wakingClient:0 highPriority:1];
}

- (void)handleSendOutgoingMessage:(id)message
{
  messageCopy = message;
  if (_os_feature_enabled_impl())
  {
    topic = [messageCopy topic];
    v5 = [topic isEqualToString:@"com.apple.private.alloy.facetime.multi"];

    if (v5)
    {
      [messageCopy identifier];
      kdebug_trace();
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveOutgoingMessageToSend:messageCopy];

  [(APSPayloadMessageStats *)self->_payloadMessageStats payloadMessageSent:messageCopy];
}

- (void)handleCancelOutgoingMessageWithID:(unint64_t)d
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveCancellationForOutgoingMessageWithID:d];
}

- (void)handleFakeMessage:(id)message
{
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveFakeMessageToSend:messageCopy];
}

- (void)handleRequestPerAppTokenForTopic:(id)topic identifier:(id)identifier
{
  identifierCopy = identifier;
  topicCopy = topic;
  v8 = [[APSAppTokenInfo alloc] initUnextendedAppTokenWithTopic:topicCopy identifier:identifierCopy];

  [(APSConnectionServer *)self _handleRequestTokenForInfo:v8];
}

- (void)handleRequestTokenForInfo:(id)info
{
  infoCopy = info;
  v5 = +[APSLog connectionServer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Received extended app token request for info %@", &v6, 0x16u);
  }

  [(APSConnectionServer *)self _handleRequestTokenForInfo:infoCopy];
}

- (void)handleRequestURLTokenForInfo:(id)info
{
  infoCopy = info;
  v5 = +[APSLog connectionServer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Received web token request for info %@", &v6, 0x16u);
  }

  [(APSConnectionServer *)self _handleRequestTokenForInfo:infoCopy];
}

- (void)_handleRequestTokenForInfo:(id)info
{
  infoCopy = info;
  [(APSConnectionServer *)self _savePersistentConnectionTopics];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didRequestTokenForInfo:infoCopy];
}

- (void)handleReceivedToken:(id)token forInfo:(id)info
{
  tokenCopy = token;
  infoCopy = info;
  v8 = +[APSLog connectionServer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [tokenCopy debugDescription];
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Received token %@ for info %@", &v10, 0x20u);
  }

  [(APSConnectionServer *)self _sendClientToken:tokenCopy forInfo:infoCopy];
}

- (void)handleReceivedTokenError:(id)error forInfo:(id)info
{
  errorCopy = error;
  infoCopy = info;
  if ([infoCopy type] == 2)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100067D98;
    v8[3] = &unk_100187C30;
    v9 = infoCopy;
    v10 = errorCopy;
    [(APSConnectionServer *)self _enqueueXPCMessage:v8 wakingClient:1 highPriority:0];
  }
}

- (void)handleCurrentTokenForInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didRequestCurrentTokenForInfo:infoCopy];
}

- (void)handleCurrentURLTokenForInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didRequestCurrentTokenForInfo:infoCopy];
}

- (void)_sendClientToken:(id)token forInfo:(id)info
{
  tokenCopy = token;
  infoCopy = info;
  type = [infoCopy type];
  if (type == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained connection:self createURLTokenForToken:tokenCopy];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000682D0;
    v12[3] = &unk_100187C30;
    v13 = infoCopy;
    v14 = v11;
    v9 = v11;
    [(APSConnectionServer *)self _enqueueXPCMessage:v12 wakingClient:1 highPriority:0];

    goto LABEL_7;
  }

  if (type == 1)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006820C;
    v15[3] = &unk_100187C30;
    v16 = infoCopy;
    v17 = tokenCopy;
    [(APSConnectionServer *)self _enqueueXPCMessage:v15 wakingClient:1 highPriority:0];

    v9 = v16;
    goto LABEL_7;
  }

  if (!type)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100068138;
    v18[3] = &unk_100187C30;
    v19 = infoCopy;
    v20 = tokenCopy;
    [(APSConnectionServer *)self _enqueueXPCMessage:v18 wakingClient:1 highPriority:0];

    v9 = v19;
LABEL_7:
  }
}

- (void)handleInvalidatePerAppTokenForTopic:(id)topic identifier:(id)identifier
{
  identifierCopy = identifier;
  topicCopy = topic;
  v8 = [[APSAppTokenInfo alloc] initUnextendedAppTokenWithTopic:topicCopy identifier:identifierCopy];

  [(APSConnectionServer *)self _handleInvalidateTokenForInfo:v8];
}

- (void)handleInvalidateURLTokenForTopic:(id)topic
{
  topicCopy = topic;
  v5 = +[APSLog connectionServer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = topicCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Received web token invalidate request for topic %@", &v7, 0x16u);
  }

  v6 = [[APSURLTokenInfo alloc] initWithTopic:topicCopy];
  [(APSConnectionServer *)self _handleInvalidateTokenForInfo:v6];
}

- (void)handleInvalidatePerAppTokenForInfo:(id)info
{
  infoCopy = info;
  v5 = +[APSLog connectionServer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Received extended app token invalidate request for info %@", &v6, 0x16u);
  }

  [(APSConnectionServer *)self _handleInvalidateTokenForInfo:infoCopy];
}

- (void)_handleInvalidateTokenForInfo:(id)info
{
  infoCopy = info;
  [(APSConnectionServer *)self _savePersistentConnectionTopics];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didInvalidateTokenForInfo:infoCopy];
}

- (void)handleSubscribeToChannels:(id)channels forTopic:(id)topic
{
  channelsCopy = channels;
  topicCopy = topic;
  connectionPortName = [(APSConnectionServer *)self connectionPortName];

  if (!connectionPortName)
  {
    v21 = topicCopy;
    v9 = +[APSLog connectionServer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Adding incoming pubsub subscriptions to inMemory list", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = channelsCopy;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[PKPublicChannel alloc] initWithDictionary:*(*(&v22 + 1) + 8 * v14)];
          environmentName = [(APSConnectionServer *)self environmentName];
          [v15 setEnvironment:environmentName];

          user = [(APSConnectionServer *)self user];
          pubSubName = [user pubSubName];
          [v15 setTokenName:pubSubName];

          inMemorySubscriptions = [(APSConnectionServer *)self inMemorySubscriptions];
          [inMemorySubscriptions addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    topicCopy = v21;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveSubscribeToChannels:channelsCopy forTopic:topicCopy];
}

- (void)handleUnsubscribeFromChannels:(id)channels forTopic:(id)topic
{
  topicCopy = topic;
  channelsCopy = channels;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveUnsubscribeToChannels:channelsCopy forTopic:topicCopy];
}

- (void)handleIncomingMessageReceiptWithTopic:(id)topic tracingUUID:(id)d
{
  dCopy = d;
  topicCopy = topic;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveIncomingMessageReceiptWithTopic:topicCopy tracingUUID:dCopy];
}

- (void)handleAckIncomingMessageWithGuid:(id)guid topic:(id)topic tracingUUID:(id)d
{
  dCopy = d;
  topicCopy = topic;
  guidCopy = guid;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self handleAckIncomingMessageWithGuid:guidCopy topic:topicCopy tracingUUID:dCopy];
}

- (void)setPublicToken:(id)token needsAck:(BOOL)ack
{
  tokenCopy = token;
  v7 = tokenCopy;
  publicToken = self->_publicToken;
  if (publicToken == tokenCopy || publicToken && [(NSData *)tokenCopy isEqualToData:?])
  {
    v9 = 0;
    if (ack)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = [(NSData *)v7 copy];
    v11 = self->_publicToken;
    self->_publicToken = v10;

    v9 = 1;
    if (ack)
    {
LABEL_12:
      v14 = 1;
      goto LABEL_13;
    }
  }

  if (!self->_isPublicTokenAcknowledged)
  {
    goto LABEL_12;
  }

  connection = [(APSConnectionServer *)self connection];

  v13 = v9 ^ 1;
  if (!connection)
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v14 = !self->_isPublicTokenAcknowledged;
LABEL_13:
    v15 = [(NSData *)self->_publicToken copy];
    v16 = [CUTWeakReference weakRefWithObject:self];
    [(APSConnectionServer *)self setIsPublicTokenAcknowledged:0];
    v20 = v16;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100068BEC;
    v21[3] = &unk_100187BE0;
    v22 = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100068C70;
    v19[3] = &unk_100187BE0;
    v17 = v16;
    v18 = v15;
    [(APSConnectionServer *)self _enqueueXPCMessage:v21 wakingClient:v14 highPriority:1 withReply:v19];
  }
}

- (void)handlePublicTokenDeliveryReply:(id)reply
{
  replyCopy = reply;
  v5 = replyCopy;
  if (replyCopy)
  {
    type = xpc_get_type(replyCopy);
    if (type == &_xpc_type_dictionary)
    {
      v14 = APSGetXPCDataFromDictionary();
      [(APSConnectionServer *)self acknowledgeDidReceivePublicToken:v14];

      [(APSConnectionServer *)self isPublicTokenAcknowledged];
      goto LABEL_11;
    }

    v7 = type;
    v8 = +[APSLog connectionServer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      connectionPortName = [(APSConnectionServer *)self connectionPortName];
      publicToken = [(APSConnectionServer *)self publicToken];
      v15 = 138413058;
      v16 = v7;
      v17 = 2112;
      v18 = connectionPortName;
      v19 = 2112;
      publicTokenDeliveryRetries2 = publicToken;
      v21 = 2048;
      publicTokenDeliveryRetries = [(APSConnectionServer *)self publicTokenDeliveryRetries];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received %@ when updating public token. {connectionPort:%@, token: %@, retries: %ld}", &v15, 0x2Au);
    }
  }

  else
  {
    v8 = +[APSLog connectionServer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      connectionPortName2 = [(APSConnectionServer *)self connectionPortName];
      publicToken2 = [(APSConnectionServer *)self publicToken];
      v15 = 138412802;
      v16 = connectionPortName2;
      v17 = 2112;
      v18 = publicToken2;
      v19 = 2048;
      publicTokenDeliveryRetries2 = [(APSConnectionServer *)self publicTokenDeliveryRetries];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No reply received when updating public token. {connectionPort:%@, token: %@, retries: %ld}", &v15, 0x20u);
    }
  }

  publicTokenDeliveryRetries3 = [(APSConnectionServer *)self publicTokenDeliveryRetries];
  if (![(APSConnectionServer *)self isPublicTokenAcknowledged]&& publicTokenDeliveryRetries3 <= 2)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_redeliverCurrentPublicToken" object:0];
    [(APSConnectionServer *)self publicTokenDeliveryDelay];
    [(APSConnectionServer *)self performSelector:"_redeliverCurrentPublicToken" withObject:0 afterDelay:?];
  }

LABEL_11:
}

- (void)_redeliverCurrentPublicToken
{
  v3 = +[APSLog connectionServer];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ scheduled public token delivery", &v4, 0xCu);
  }

  if (![(APSConnectionServer *)self isClosed]&& [(APSConnectionServer *)self publicTokenDeliveryRetries]<= 2 && ![(APSConnectionServer *)self isPublicTokenAcknowledged])
  {
    ++self->_publicTokenDeliveryRetries;
    [(APSConnectionServer *)self setPublicToken:self->_publicToken needsAck:1];
  }
}

- (void)setIsPublicTokenAcknowledged:(BOOL)acknowledged
{
  connectionPortName = self->_connectionPortName;
  if (connectionPortName && (v5 = acknowledged, [(NSString *)connectionPortName length]))
  {
    if (self->_isPublicTokenAcknowledged != v5)
    {
      self->_isPublicTokenAcknowledged = v5;
      if (v5)
      {
        self->_publicTokenDeliveryRetries = 0;
      }

      [(APSConnectionServer *)self _savePersistentConnectionTopics];
    }
  }

  else
  {
    self->_isPublicTokenAcknowledged = 1;
  }
}

- (void)acknowledgeDidReceivePublicToken:(id)token
{
  tokenCopy = token;
  connectionPortName = self->_connectionPortName;
  if (!connectionPortName || (v6 = [(NSString *)connectionPortName length], !tokenCopy) || !v6)
  {
    v9 = +[APSLog connectionServer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      processName = self->_processName;
      v12 = 138412290;
      selfCopy = processName;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring token acknowledgement from %@", &v12, 0xCu);
    }

    goto LABEL_12;
  }

  v7 = [(NSData *)self->_publicToken isEqualToData:tokenCopy];
  v8 = +[APSLog connectionServer];
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10010A1F0(&self->_connectionPortName);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_connectionPortName;
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Token acknowledged by %@", &v12, 0x16u);
  }

  [(APSConnectionServer *)self setIsPublicTokenAcknowledged:1];
LABEL_13:
}

- (void)setMessageSize:(unint64_t)size
{
  if (self->_messageSize != size)
  {
    v14[14] = v3;
    v14[15] = v4;
    self->_messageSize = size;
    connectionPortName = [(APSConnectionServer *)self connectionPortName];
    if (connectionPortName)
    {
      v8 = connectionPortName;
      enabledTopics = [(APSConnectionServer *)self enabledTopics];
      if (![enabledTopics count])
      {
        opportunisticTopics = [(APSConnectionServer *)self opportunisticTopics];
        if (![opportunisticTopics count])
        {
          ignoredTopics = [(APSConnectionServer *)self ignoredTopics];
          v13 = [ignoredTopics count];

          if (!v13)
          {
            return;
          }

          goto LABEL_7;
        }
      }
    }

LABEL_7:
    largeMessageSize = self->_largeMessageSize;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100069368;
    v14[3] = &unk_100187C50;
    v14[4] = size;
    v14[5] = largeMessageSize;
    [(APSConnectionServer *)self _enqueueXPCMessage:v14 wakingClient:0 highPriority:0];
  }
}

- (void)setLargeMessageSize:(unint64_t)size
{
  if (self->_largeMessageSize != size)
  {
    v14[14] = v3;
    v14[15] = v4;
    self->_largeMessageSize = size;
    connectionPortName = [(APSConnectionServer *)self connectionPortName];
    if (connectionPortName)
    {
      v8 = connectionPortName;
      enabledTopics = [(APSConnectionServer *)self enabledTopics];
      if (![enabledTopics count])
      {
        opportunisticTopics = [(APSConnectionServer *)self opportunisticTopics];
        if (![opportunisticTopics count])
        {
          ignoredTopics = [(APSConnectionServer *)self ignoredTopics];
          v13 = [ignoredTopics count];

          if (!v13)
          {
            return;
          }

          goto LABEL_7;
        }
      }
    }

LABEL_7:
    messageSize = self->_messageSize;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100069538;
    v14[3] = &unk_100187C50;
    v14[4] = messageSize;
    v14[5] = size;
    [(APSConnectionServer *)self _enqueueXPCMessage:v14 wakingClient:0 highPriority:0];
  }
}

- (void)handleChannelSubscriptionFailures:(id)failures forTopic:(id)topic
{
  failuresCopy = failures;
  topicCopy = topic;
  v8 = +[APSLog connectionServer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = failuresCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Sending failures %@ to client", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006972C;
  v11[3] = &unk_100187C30;
  v12 = topicCopy;
  v13 = failuresCopy;
  v9 = failuresCopy;
  v10 = topicCopy;
  [(APSConnectionServer *)self _enqueueXPCMessage:v11 wakingClient:1 highPriority:0];
}

- (void)_warnIfOverlappingTopics:(id)topics againstTopics:(id)againstTopics string:(id)string
{
  topicsCopy = topics;
  againstTopicsCopy = againstTopics;
  stringCopy = string;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [topicsCopy countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v21;
    *&v11 = 138412802;
    v18 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(topicsCopy);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([againstTopicsCopy containsObject:{v15, v18}])
        {
          v16 = self->_processName;
          if (!v16)
          {
            v16 = self->_connectionPortName;
          }

          v17 = +[APSLog connectionServer];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v25 = v16;
            v26 = 2112;
            v27 = v15;
            v28 = 2112;
            v29 = stringCopy;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received request from %@ to put topic %@ into both %@ topic sets", buf, 0x20u);
          }
        }
      }

      v12 = [topicsCopy countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v12);
  }
}

- (void)_informTopicManagerOfChangedFilter:(int64_t)filter newTopics:(id)topics oldTopics:(id)oldTopics
{
  topicsCopy = topics;
  oldTopicsCopy = oldTopics;
  if (oldTopicsCopy)
  {
    if (topicsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    oldTopicsCopy = [NSMutableSet setWithCapacity:0];
    if (topicsCopy)
    {
      goto LABEL_3;
    }
  }

  topicsCopy = [NSMutableSet setWithCapacity:0];
LABEL_3:
  v9 = [oldTopicsCopy mutableCopy];
  [v9 minusSet:topicsCopy];
  v10 = [topicsCopy mutableCopy];
  [v10 minusSet:oldTopicsCopy];
  delegate = [(APSConnectionServer *)self delegate];
  topicManager = [delegate topicManager];

  [topicManager removeTopics:v9 connectionServer:self filter:filter];
  if ([v10 count])
  {
    v26 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v10 count]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v20 = topicManager;
      v21 = v10;
      v22 = v9;
      v23 = oldTopicsCopy;
      v24 = topicsCopy;
      v15 = 0;
      v16 = *v29;
      do
      {
        v17 = 0;
        v18 = v15;
        do
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v28 + 1) + 8 * v17);
          v15 = [APSTopicAttributes topicAttributesWithFilter:filter darkWakeEnabled:[(NSSet *)self->_darkWakeTopics containsObject:v19 pushWakeEnabled:v20 criticalWakeEnabled:v21 ultraConstrainedEnabled:v22, v23, v24], [(NSSet *)self->_pushWakeTopics containsObject:v19], [(NSSet *)self->_criticalWakeTopics containsObject:v19], [(NSSet *)self->_ultraConstrainedTopics containsObject:v19]];

          [v26 setObject:v15 forKey:v19];
          v17 = v17 + 1;
          v18 = v15;
        }

        while (v14 != v17);
        v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);

      oldTopicsCopy = v23;
      topicsCopy = v24;
      v10 = v21;
      v9 = v22;
      topicManager = v20;
    }

    [topicManager addTopicsAndAttributes:v26 connectionServer:self];
  }
}

- (BOOL)_containsInvalidTopic:(id)topic
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  topicCopy = topic;
  v4 = [topicCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(topicCopy);
        }

        if (![*(*(&v8 + 1) + 8 * i) length])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [topicCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics
{
  topicsCopy = topics;
  ignoredTopicsCopy = ignoredTopics;
  opportunisticTopicsCopy = opportunisticTopics;
  wakingTopicsCopy = wakingTopics;
  [(APSConnectionServer *)self _warnIfOverlappingTopics:topicsCopy againstTopics:opportunisticTopicsCopy string:@"enabled and opportunistic"];
  [(APSConnectionServer *)self _warnIfOverlappingTopics:topicsCopy againstTopics:ignoredTopicsCopy string:@"enabled and ignored"];
  [(APSConnectionServer *)self _warnIfOverlappingTopics:ignoredTopicsCopy againstTopics:opportunisticTopicsCopy string:@"ignored and opportunistic"];
  [(APSConnectionServer *)self _warnIfOverlappingTopics:topicsCopy againstTopics:wakingTopicsCopy string:@"enabled and nonWaking"];
  [(APSConnectionServer *)self _warnIfOverlappingTopics:ignoredTopicsCopy againstTopics:wakingTopicsCopy string:@"ignored and nonWaking"];
  [(APSConnectionServer *)self _warnIfOverlappingTopics:opportunisticTopicsCopy againstTopics:wakingTopicsCopy string:@"opportunistic and nonWaking"];
  delegate = [(APSConnectionServer *)self delegate];
  topicManager = [delegate topicManager];
  [topicManager beginTransaction];

  if (topicsCopy)
  {
    if (sub_100003E14(topicsCopy, self->_enabledTopics))
    {
      v16 = 0;
      v17 = topicsCopy;
      if (!opportunisticTopicsCopy)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v19 = +[APSLog connectionServer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = APSPrettyPrintCollection();
        *buf = 138412546;
        selfCopy5 = self;
        v56 = 2112;
        ignoredTopicsCopy2 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: connection set enabled topics %@", buf, 0x16u);
      }

      v53 = 0;
      v17 = [(APSConnectionServer *)self entitledTopicsFromSet:topicsCopy unentitledTopics:&v53];
      v21 = v53;

      if (![v17 count] && objc_msgSend(v21, "count") || -[APSConnectionServer _containsInvalidTopic:](self, "_containsInvalidTopic:", v17))
      {
        p_super = +[APSLog connectionServer];
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
        {
          sub_10010A268();
        }

        v16 = 0;
      }

      else
      {
        v16 = 1;
        [(APSConnectionServer *)self _informTopicManagerOfChangedFilter:1 newTopics:v17 oldTopics:self->_enabledTopics];
        v22 = v17;
        p_super = &self->_enabledTopics->super;
        self->_enabledTopics = v22;
      }

      if ([v21 count])
      {
        v29 = +[APSLog connectionServer];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          sub_10010A2D0(self);
        }
      }

      if (!opportunisticTopicsCopy)
      {
LABEL_28:
        v18 = 0;
        if (ignoredTopicsCopy)
        {
          goto LABEL_29;
        }

        goto LABEL_47;
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    if (!opportunisticTopicsCopy)
    {
      goto LABEL_28;
    }
  }

  if (sub_100003E14(opportunisticTopicsCopy, self->_opportunisticTopics))
  {
    v18 = opportunisticTopicsCopy;
    if (ignoredTopicsCopy)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v24 = +[APSLog connectionServer];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = APSPrettyPrintCollection();
      *buf = 138412546;
      selfCopy5 = self;
      v56 = 2112;
      ignoredTopicsCopy2 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: connection set opportuntistic topics %@", buf, 0x16u);
    }

    v52 = 0;
    v18 = [(APSConnectionServer *)self entitledTopicsFromSet:opportunisticTopicsCopy unentitledTopics:&v52];
    v26 = v52;

    if (![v18 count] && objc_msgSend(v26, "count") || -[APSConnectionServer _containsInvalidTopic:](self, "_containsInvalidTopic:", v18))
    {
      v28 = +[APSLog connectionServer];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        sub_10010A340();
      }
    }

    else
    {
      [(APSConnectionServer *)self _informTopicManagerOfChangedFilter:2 newTopics:v18 oldTopics:self->_opportunisticTopics];
      v27 = v18;
      v28 = &self->_opportunisticTopics->super;
      self->_opportunisticTopics = v27;
      v16 = 1;
    }

    if ([v26 count])
    {
      v39 = +[APSLog connectionServer];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_10010A3A8(self);
      }
    }

    if (ignoredTopicsCopy)
    {
LABEL_29:
      if (sub_100003E14(ignoredTopicsCopy, self->_ignoredTopics))
      {
        v30 = 0;
        v31 = ignoredTopicsCopy;
        if (!wakingTopicsCopy)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v32 = +[APSLog connectionServer];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = APSPrettyPrintCollection();
          *buf = 138412546;
          selfCopy5 = self;
          v56 = 2112;
          ignoredTopicsCopy2 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@: connection set ignored topics %@", buf, 0x16u);
        }

        v51 = 0;
        v31 = [(APSConnectionServer *)self entitledTopicsFromSet:ignoredTopicsCopy unentitledTopics:&v51];
        v34 = v51;

        if (![v31 count] && objc_msgSend(v34, "count") || -[APSConnectionServer _containsInvalidTopic:](self, "_containsInvalidTopic:", v31))
        {
          v37 = +[APSLog connectionServer];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            sub_10010A418();
          }

          v30 = 0;
        }

        else
        {
          [(APSConnectionServer *)self _informTopicManagerOfChangedFilter:3 newTopics:v31 oldTopics:self->_ignoredTopics];
          v35 = +[APSLog connectionServer];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            ignoredTopics = self->_ignoredTopics;
            *buf = 138412802;
            selfCopy5 = self;
            v56 = 2112;
            ignoredTopicsCopy2 = ignoredTopics;
            v58 = 2112;
            v59 = v31;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%@: connection set ignored topics from %@ to %@", buf, 0x20u);
          }

          v37 = [(NSSet *)self->_ignoredTopics mutableCopy];
          [v37 minusSet:v31];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained connection:self subscribeToPreviouslyIgnoredTopics:v37];

          objc_storeStrong(&self->_ignoredTopics, v31);
          v30 = 1;
        }

        if ([v34 count])
        {
          v46 = +[APSLog connectionServer];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            sub_10010A480(self);
          }
        }

        if (!wakingTopicsCopy)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_48;
    }
  }

LABEL_47:
  v30 = 0;
  v31 = 0;
  if (!wakingTopicsCopy)
  {
LABEL_64:
    v40 = 0;
    goto LABEL_69;
  }

LABEL_48:
  if (sub_100003E14(wakingTopicsCopy, self->_nonWakingTopics))
  {
    v40 = wakingTopicsCopy;
  }

  else
  {
    v41 = +[APSLog connectionServer];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = APSPrettyPrintCollection();
      *buf = 138412546;
      selfCopy5 = self;
      v56 = 2112;
      ignoredTopicsCopy2 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%@: connection set nonWaking topics %@", buf, 0x16u);
    }

    v50 = 0;
    v40 = [(APSConnectionServer *)self entitledTopicsFromSet:wakingTopicsCopy unentitledTopics:&v50];
    v43 = v50;

    if (![v40 count] && objc_msgSend(v43, "count") || -[APSConnectionServer _containsInvalidTopic:](self, "_containsInvalidTopic:", v40))
    {
      v45 = +[APSLog connectionServer];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        sub_10010A4F0();
      }
    }

    else
    {
      [(APSConnectionServer *)self _informTopicManagerOfChangedFilter:4 newTopics:v40 oldTopics:self->_nonWakingTopics];
      v44 = v40;
      v45 = &self->_nonWakingTopics->super;
      self->_nonWakingTopics = v44;
      v16 = 1;
    }
  }

LABEL_69:
  delegate2 = [(APSConnectionServer *)self delegate];
  topicManager2 = [delegate2 topicManager];
  [topicManager2 endTransaction];

  if (self->_enableDarkWake && !self->_hasChosenDarkWakeTopics)
  {
    v49 = objc_alloc_init(NSMutableSet);
    [v49 unionSet:self->_enabledTopics];
    [v49 unionSet:self->_opportunisticTopics];
    [v49 unionSet:self->_ignoredTopics];
    [v49 unionSet:self->_nonWakingTopics];
  }

  if ((v30 | v16) == 1)
  {
    [(APSConnectionServer *)self saveAndUpdateDelegate];
  }
}

- (void)setEnableCriticalReliability:(BOOL)reliability
{
  self->_enableCriticalReliability = reliability;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connectionChangedCriticalReliability:self];
}

- (void)setTrackActivityPresence:(BOOL)presence
{
  self->_trackActivityPresence = presence;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connectionChangedTrackActivityPresence:self];
}

- (void)setEnableStatusChangeNotifications:(BOOL)notifications
{
  if (self->_enableStatusChangeNotifications != notifications)
  {
    notificationsCopy = notifications;
    self->_enableStatusChangeNotifications = notifications;
    v5 = +[APSLog connectionServer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Disabling";
      if (notificationsCopy)
      {
        v6 = @"Enabling";
      }

      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: %@ status notifications for connection", &v7, 0x16u);
    }
  }
}

+ (id)environmentForNamedPort:(id)port userPreferences:(id)preferences
{
  portCopy = port;
  preferencesCopy = preferences;
  v7 = +[APSLog connectionServer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = portCopy;
    v20 = 2112;
    v21 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "environmentForNamedPort called for port %@ from user preferences %@", &v18, 0x16u);
  }

  persistentTopics = [preferencesCopy persistentTopics];
  if (!persistentTopics || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = 0;
    goto LABEL_18;
  }

  v9 = [persistentTopics objectForKey:portCopy];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKey:@"enabled"];
      if ([v10 count])
      {
LABEL_10:

LABEL_11:
        v12 = [v9 objectForKey:@"environment"];
        v13 = +[APSLog connectionServer];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          v19 = v12;
          v20 = 2112;
          v21 = preferencesCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found persistent connection in environment %@ from user preferences %@", &v18, 0x16u);
        }

        goto LABEL_17;
      }

      v11 = [v9 objectForKey:@"opportunistic"];
      if ([v11 count])
      {

        goto LABEL_10;
      }

      v15 = [v9 objectForKey:@"ignored"];
      v16 = [v15 count];

      if (v16)
      {
        goto LABEL_11;
      }
    }
  }

  v12 = 0;
LABEL_17:
  v14 = v12;

LABEL_18:

  return v14;
}

- (void)setPushWakeTopics:(id)topics
{
  topicsCopy = topics;
  if (self->_enableDarkWake)
  {
    connection = [(APSConnectionServer *)self connection];
    if (connection)
    {
      memset(buf, 0, 32);
      xpc_connection_get_audit_token();
      if (!sub_100003C4C(buf, APSPushWakeEntitlement))
      {

        v6 = +[APSLog connectionServer];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_10010A5F0(connection);
        }

        topicsCopy = 0;
      }
    }

    if ((sub_100003E14(self->_pushWakeTopics, topicsCopy) & 1) == 0)
    {
      delegate = [(APSConnectionServer *)self delegate];
      topicManager = [delegate topicManager];

      v9 = +[APSLog connectionServer];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        pushWakeTopics = self->_pushWakeTopics;
        v11 = APSPrettyPrintCollection();
        v12 = APSPrettyPrintCollection();
        *buf = 138412802;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        *&buf[22] = 2112;
        *&buf[24] = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: connection set push wake topics from %@ to %@", buf, 0x20u);
      }

      objc_storeStrong(&self->_pushWakeTopics, topicsCopy);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = [topicManager topicStatesForConnectionServer:self];
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v26 = topicManager;
        v27 = connection;
        v16 = 0;
        v17 = *v29;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            topicName = [v19 topicName];
            attributes = [v19 attributes];
            v22 = [topicsCopy containsObject:topicName];
            if (v22 != [attributes isPushWakeEnabled])
            {
              [attributes setPushWakeEnabled:v22];
              v16 = 1;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v15);

        [(APSConnectionServer *)self _savePersistentConnectionTopics];
        topicManager = v26;
        connection = v27;
        if (v16)
        {
          delegate2 = [(APSConnectionServer *)self delegate];
          topicManager2 = [delegate2 topicManager];
          policy = [topicManager2 policy];
          [policy filtersWillPotentiallyBeChangedBy:self];
        }
      }

      else
      {

        [(APSConnectionServer *)self _savePersistentConnectionTopics];
      }
    }
  }

  else
  {
    connection = +[APSLog connectionServer];
    if (os_log_type_enabled(connection, OS_LOG_TYPE_FAULT))
    {
      sub_10010A558();
    }
  }
}

- (void)setUltraConstrainedTopics:(id)topics
{
  topicsCopy = topics;
  connection = [(APSConnectionServer *)self connection];
  if (connection)
  {
    memset(buf, 0, 32);
    xpc_connection_get_audit_token();
    if (!sub_100003C4C(buf, APSUltraConstrainedEntitlement))
    {

      v6 = +[APSLog connectionServer];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_10010A674(connection);
      }

      topicsCopy = 0;
    }
  }

  if ((sub_100003E14(self->_ultraConstrainedTopics, topicsCopy) & 1) == 0)
  {
    delegate = [(APSConnectionServer *)self delegate];
    topicManager = [delegate topicManager];

    v9 = +[APSLog connectionServer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      ultraConstrainedTopics = self->_ultraConstrainedTopics;
      v11 = APSPrettyPrintCollection();
      v12 = APSPrettyPrintCollection();
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      *&buf[22] = 2112;
      *&buf[24] = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: connection set ultra constrained topics from %@ to %@", buf, 0x20u);
    }

    objc_storeStrong(&self->_ultraConstrainedTopics, topicsCopy);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [topicManager topicStatesForConnectionServer:self];
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v26 = topicManager;
      v27 = connection;
      v16 = 0;
      v17 = *v29;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          topicName = [v19 topicName];
          attributes = [v19 attributes];
          v22 = [topicsCopy containsObject:topicName];
          if (v22 != [attributes isUltraConstrainedEnabled])
          {
            [attributes setUltraConstrainedEnabled:v22];
            v16 = 1;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);

      [(APSConnectionServer *)self _savePersistentConnectionTopics];
      topicManager = v26;
      connection = v27;
      if (v16)
      {
        delegate2 = [(APSConnectionServer *)self delegate];
        topicManager2 = [delegate2 topicManager];
        policy = [topicManager2 policy];
        [policy filtersWillPotentiallyBeChangedBy:self];
      }
    }

    else
    {

      [(APSConnectionServer *)self _savePersistentConnectionTopics];
    }
  }
}

- (void)setKeepAliveConfiguration:(unint64_t)configuration
{
  delegate = [(APSConnectionServer *)self delegate];
  [delegate connection:self setKeepAliveConfiguration:configuration];
}

- (id)JSONDebugState
{
  v34[0] = @"statusChangeNotifications";
  v3 = [NSNumber numberWithBool:self->_enableStatusChangeNotifications];
  v34[1] = @"trackAcitivityPresence";
  v35[0] = v3;
  v4 = [NSNumber numberWithBool:self->_trackActivityPresence];
  v35[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
  v6 = [v5 mutableCopy];

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = v7;
  connectionPortName = self->_connectionPortName;
  if (connectionPortName)
  {
    [v7 setObject:connectionPortName forKeyedSubscript:@"portName"];
    processName = self->_processName;
    if (processName)
    {
      [v8 setObject:processName forKeyedSubscript:@"processName"];
    }
  }

  else
  {
    v11 = self->_processName;
    if (v11)
    {
      [v7 setObject:v11 forKeyedSubscript:@"processName"];
      v12 = [NSNumber numberWithDouble:self->_dateCreated];
      [v8 setObject:v12 forKeyedSubscript:@"connectedTime"];

      v13 = [NSNumber numberWithInt:self->_clientPID];
      v14 = @"pid";
    }

    else
    {
      [v7 setObject:self->_name forKeyedSubscript:@"name"];
      v13 = [NSNumber numberWithDouble:self->_dateCreated];
      v14 = @"dateCreated";
    }

    [v8 setObject:v13 forKeyedSubscript:v14];
  }

  [v6 setObject:v8 forKeyedSubscript:@"XPCState"];
  publicToken = self->_publicToken;
  if (publicToken && [(NSData *)publicToken length])
  {
    v16 = [(NSData *)self->_publicToken debugDescription];
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;
  [v6 setObject:v16 forKeyedSubscript:@"token"];

  v32[0] = @"enabled";
  allObjects = [(NSSet *)self->_enabledTopics allObjects];
  v19 = allObjects;
  if (allObjects)
  {
    v20 = allObjects;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  v33[0] = v20;
  v32[1] = @"opportunistic";
  allObjects2 = [(NSSet *)self->_opportunisticTopics allObjects];
  v22 = allObjects2;
  if (allObjects2)
  {
    v23 = allObjects2;
  }

  else
  {
    v23 = &__NSArray0__struct;
  }

  v33[1] = v23;
  v32[2] = @"ignored";
  allObjects3 = [(NSSet *)self->_ignoredTopics allObjects];
  v25 = allObjects3;
  if (allObjects3)
  {
    v26 = allObjects3;
  }

  else
  {
    v26 = &__NSArray0__struct;
  }

  v33[2] = v26;
  v32[3] = @"nonWaking";
  allObjects4 = [(NSSet *)self->_nonWakingTopics allObjects];
  v28 = allObjects4;
  if (allObjects4)
  {
    v29 = allObjects4;
  }

  else
  {
    v29 = &__NSArray0__struct;
  }

  v33[3] = v29;
  v30 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
  [v6 setObject:v30 forKeyedSubscript:@"topics"];

  return v6;
}

- (void)appendPrettyStatusToStatusPrinter:(id)printer
{
  printerCopy = printer;
  if (![(NSSet *)self->_enabledTopics count]&& ![(NSSet *)self->_opportunisticTopics count]&& ![(NSSet *)self->_nonWakingTopics count])
  {
    v18 = @"No listening topics, will not send or receive push notifications";
    goto LABEL_40;
  }

  publicToken = self->_publicToken;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained connectionDelegateIsConnectedToService:self];

  if (!publicToken)
  {
    if (v7)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      v20 = [v19 connectionDelegateHasConnectedUser:self];

      if (v20)
      {
        v18 = @"Missing token";
      }

      else
      {
        v18 = @"Missing token because user not connected";
      }
    }

    else
    {
      v18 = @"Missing token because not connected to service";
    }

    goto LABEL_40;
  }

  if ((v7 & 1) == 0)
  {
    v18 = @"Not connected to service";
    if (self->_enableDarkWake)
    {
      goto LABEL_40;
    }

    v21 = +[APSWakeStateManager wakeStateManager];
    inDarkWake = [v21 inDarkWake];

    if (inDarkWake)
    {
      v18 = @"Not connected to service during dark wake";
      goto LABEL_40;
    }

    v28 = +[APSWakeStateManager wakeStateManager];
    inFullWake = [v28 inFullWake];

    v30 = @"Not connected to service during sleep";
LABEL_34:
    if (!inFullWake)
    {
      v18 = v30;
    }

    goto LABEL_40;
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = [v8 connectionDelegateHasConnectedUser:self];

  if ((v9 & 1) == 0)
  {
    v18 = @"User not connected";
    if (self->_enableDarkWake)
    {
      goto LABEL_40;
    }

    v23 = +[APSWakeStateManager wakeStateManager];
    inDarkWake2 = [v23 inDarkWake];

    if (inDarkWake2)
    {
      v18 = @"User not connected during dark wake";
      goto LABEL_40;
    }

    v31 = +[APSWakeStateManager wakeStateManager];
    inFullWake = [v31 inFullWake];

    v30 = @"User not connected during sleep";
    goto LABEL_34;
  }

  v10 = +[NSMutableSet set];
  [v10 unionSet:self->_enabledTopics];
  [v10 unionSet:self->_opportunisticTopics];
  [v10 unionSet:self->_nonWakingTopics];
  delegate = [(APSConnectionServer *)self delegate];
  topicManager = [delegate topicManager];

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v100 objects:v106 count:16];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  v16 = *v101;
  while (2)
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v101 != v16)
      {
        objc_enumerationMutation(v13);
      }

      if ([topicManager hasListeningTopic:*(*(&v100 + 1) + 8 * i)])
      {

        if (!self->_processName && !self->_connectionMachPort)
        {
          v18 = @"Unregistered port name";
          goto LABEL_39;
        }

        incomingCounts = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
        total = [incomingCounts total];
        lastMessageTopic = [total lastMessageTopic];
        if (lastMessageTopic)
        {
        }

        else
        {
          outgoingCounts = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCounts];
          total2 = [outgoingCounts total];
          lastMessageTopic2 = [total2 lastMessageTopic];

          if (!lastMessageTopic2)
          {
            v18 = @"Waiting for push notifications";
            goto LABEL_39;
          }
        }

        v18 = @"Ok";
        goto LABEL_39;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v100 objects:v106 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v18 = @"No eligible topics, will not send or receive push notifications";
LABEL_39:

LABEL_40:
  if (self->_connectionPortName)
  {
    [printerCopy appendDescription:@"application port name" stringValue:?];
    [printerCopy pushIndent];
    if (self->_processName)
    {
      [printerCopy appendDescription:@"process" stringValue:?];
    }

    [printerCopy appendDescription:@"persistent connection status" stringValue:v18];
    v35 = @"persistent connection created";
  }

  else if (self->_processName)
  {
    [printerCopy appendDescription:@"process" stringValue:?];
    [printerCopy pushIndent];
    [printerCopy appendDescription:@"process connection status" stringValue:v18];
    v35 = @"process connected";
  }

  else
  {
    [printerCopy appendDescription:@"name" stringValue:self->_name];
    [printerCopy pushIndent];
    v35 = @"created";
  }

  [printerCopy appendDescription:v35 timeIntervalValue:self->_dateCreated];
  user = [(APSConnectionServer *)self user];
  name = [user name];
  [printerCopy appendDescription:@"user" stringValue:name];

  v38 = self->_publicToken;
  if (v38 && [(NSData *)v38 length])
  {
    v39 = [(NSData *)self->_publicToken length];
    v40 = [(NSData *)self->_publicToken debugDescription];
    v41 = [NSString stringWithFormat:@"%@, {length = %lu, bytes=%@}", @"Yes", v39, v40];
    [printerCopy appendDescription:@"token" stringValue:v41];
  }

  else
  {
    [printerCopy appendDescription:@"token" stringValue:@"Missing"];
  }

  [printerCopy appendDescription:@"status change notifications" enabledValue:self->_enableStatusChangeNotifications];
  [printerCopy appendDescription:@"track acitivity presence" enabledValue:self->_trackActivityPresence];
  incomingCounts2 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
  [incomingCounts2 appendPrettyStatusToStatusPrinter:printerCopy total:1 direction:@"incoming"];

  outgoingCounts2 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCounts];
  [outgoingCounts2 appendPrettyStatusToStatusPrinter:printerCopy total:1 direction:@"reverse"];

  [(APSConnectionServer *)self appendPrettyStatusToStatusPrinter:printerCopy forTopics:self->_enabledTopics type:@"enabled topics"];
  [(APSConnectionServer *)self appendPrettyStatusToStatusPrinter:printerCopy forTopics:self->_opportunisticTopics type:@"opportunistic topics"];
  [(APSConnectionServer *)self appendPrettyStatusToStatusPrinter:printerCopy forTopics:self->_nonWakingTopics type:@"nonwaking topics"];
  numberNotificationsSent = self->_numberNotificationsSent;
  if (numberNotificationsSent)
  {
    numberNotificationsAcknowledged = self->_numberNotificationsAcknowledged;
    if (numberNotificationsSent < 1 || numberNotificationsAcknowledged)
    {
      if (numberNotificationsSent <= numberNotificationsAcknowledged)
      {
        v46 = @"Ok";
      }

      else
      {
        v46 = @"Application possibly slow or failing to acknowledge some ipc messages";
      }
    }

    else
    {
      v46 = @"Application possibly not responding to ipc messages";
    }
  }

  else
  {
    v46 = @"No ipc messages have been sent";
  }

  [printerCopy appendDescription:@"ipc message queue status" stringValue:v46];
  if (self->_numberNotifications >= 1)
  {
    [printerCopy pushIndent];
    incomingCounts3 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
    total3 = [incomingCounts3 total];
    [printerCopy appendDescription:@"push notifications" unsignedIntegerValue:{objc_msgSend(total3, "count")}];

    incomingCounts4 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
    total4 = [incomingCounts4 total];
    [total4 lastMessageTime];
    v52 = v51;

    if (v52 != 0.0)
    {
      incomingCounts5 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
      total5 = [incomingCounts5 total];
      [total5 lastMessageTime];
      [printerCopy appendDescription:@"last push notification" timeIntervalValue:?];
    }

    incomingCounts6 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
    total6 = [incomingCounts6 total];
    lastMessageTopic3 = [total6 lastMessageTopic];

    if (lastMessageTopic3)
    {
      incomingCounts7 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
      total7 = [incomingCounts7 total];
      lastMessageTopic4 = [total7 lastMessageTopic];
      [printerCopy appendDescription:@"last push notification topic" stringValue:lastMessageTopic4];
    }

    numberNotifications = self->_numberNotifications;
    incomingCounts8 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
    total8 = [incomingCounts8 total];
    [total8 lastMessageTime];
    [printerCopy appendDescription:@"non-push ipc messages" unsignedIntegerValue:(numberNotifications - v64)];

    if (self->_lastNotificationTime != 0.0)
    {
      [printerCopy appendDescription:@"last ipc action" timeIntervalValue:?];
    }

    if (self->_numberNotificationsLost >= 1)
    {
      [printerCopy appendDescription:@"ipc messages lost" unsignedIntegerValue:?];
    }

    [printerCopy appendDescription:@"ipc messages sent" unsignedIntegerValue:self->_numberNotificationsSent];
    if (self->_lastNotificationSentTime != 0.0)
    {
      [printerCopy appendDescription:@"last ipc message sent" timeIntervalValue:?];
    }

    if (self->_numberNotificationsQueued >= 1)
    {
      [printerCopy appendDescription:@"ipc messages queued" unsignedIntegerValue:?];
    }

    if (self->_enqueuedBlockCount || self->_numberNotificationsQueued >= 1)
    {
      [printerCopy appendDescription:@"ipc messages waiting in queue" unsignedIntegerValue:?];
    }

    if (self->_numberNotificationsDropped >= 1)
    {
      [printerCopy appendDescription:@"ipc messages skipped" unsignedIntegerValue:?];
    }

    [printerCopy appendDescription:@"ipc messages acknowledged" unsignedIntegerValue:self->_numberNotificationsAcknowledged];
    if (self->_lastNotificationAcknowledgedTime != 0.0)
    {
      [printerCopy appendDescription:@"last ack from application" timeIntervalValue:?];
    }

    v65 = self->_numberNotificationsSent;
    if (v65 >= 1)
    {
      [printerCopy appendDescription:@"ipc delivery success rate" successRateWithSuccessCount:self->_numberNotificationsAcknowledged failureCount:v65 - self->_numberNotificationsAcknowledged];
    }

    [printerCopy popIndent];
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  allObjects = [(NSSet *)self->_ignoredTopics allObjects];
  v67 = [allObjects sortedArrayUsingSelector:"compare:"];

  v68 = [v67 countByEnumeratingWithState:&v96 objects:v105 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v97;
    do
    {
      for (j = 0; j != v69; j = j + 1)
      {
        if (*v97 != v70)
        {
          objc_enumerationMutation(v67);
        }

        [printerCopy appendDescription:@"ignored topic" stringValue:*(*(&v96 + 1) + 8 * j)];
      }

      v69 = [v67 countByEnumeratingWithState:&v96 objects:v105 count:16];
    }

    while (v69);
  }

  incomingCountsByTopic = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCountsByTopic];
  allKeys = [incomingCountsByTopic allKeys];
  v74 = [NSMutableSet setWithArray:allKeys];

  outgoingCountsByTopic = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCountsByTopic];
  allKeys2 = [outgoingCountsByTopic allKeys];
  [v74 addObjectsFromArray:allKeys2];

  v77 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v74 count]);
  [v77 unionSet:self->_enabledTopics];
  [v77 unionSet:self->_opportunisticTopics];
  [v77 unionSet:self->_nonWakingTopics];
  [v77 unionSet:self->_ignoredTopics];
  v78 = [v74 mutableCopy];
  [v78 minusSet:v77];
  if ([v78 count])
  {
    v89 = v77;
    v90 = v74;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v88 = v78;
    allObjects2 = [v78 allObjects];
    v80 = [allObjects2 sortedArrayUsingSelector:"compare:"];

    obj = v80;
    v81 = [v80 countByEnumeratingWithState:&v92 objects:v104 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v93;
      do
      {
        for (k = 0; k != v82; k = k + 1)
        {
          if (*v93 != v83)
          {
            objc_enumerationMutation(obj);
          }

          v85 = *(*(&v92 + 1) + 8 * k);
          [printerCopy appendDescription:@"disabled topic" stringValue:v85];
          [printerCopy pushIndent];
          [printerCopy appendDescription:@"status" stringValue:{@"Topic disabled, unable to send or receive push notifications"}];
          v86 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCountsForTopic:v85];
          [v86 appendPrettyStatusToStatusPrinter:printerCopy total:0 direction:@"incoming"];
          v87 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCountsForTopic:v85];
          [v87 appendPrettyStatusToStatusPrinter:printerCopy total:0 direction:@"reverse"];
          [printerCopy popIndent];
        }

        v82 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
      }

      while (v82);
    }

    v77 = v89;
    v74 = v90;
    v78 = v88;
  }

  [printerCopy popIndent];
}

- (void)appendPrettyStatusToStatusPrinter:(id)printer forTopics:(id)topics type:(id)type
{
  printerCopy = printer;
  topicsCopy = topics;
  typeCopy = type;
  if ([topicsCopy count])
  {
    v31 = typeCopy;
    [printerCopy appendDescription:typeCopy unsignedIntegerValue:{objc_msgSend(topicsCopy, "count")}];
    [printerCopy pushIndent];
    delegate = [(APSConnectionServer *)self delegate];
    topicManager = [delegate topicManager];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = topicsCopy;
    allObjects = [topicsCopy allObjects];
    v13 = [allObjects sortedArrayUsingSelector:"compare:"];

    obj = v13;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (!v14)
    {
      goto LABEL_36;
    }

    v15 = v14;
    v35 = *v38;
    while (1)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCountsForTopic:v17];
        v19 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCountsForTopic:v17];
        if (![topicManager hasListeningTopic:v17])
        {
          v22 = @"Paused, topic is redlisted";
          goto LABEL_22;
        }

        if (v18)
        {
          total = [v18 total];
          lastMessageTopic = [total lastMessageTopic];
          v33 = total;
          if (lastMessageTopic)
          {
            v13 = lastMessageTopic;

LABEL_19:
            v22 = @"Ok";
            goto LABEL_22;
          }

          if (!v19)
          {

            v13 = 0;
            goto LABEL_21;
          }

          v13 = 0;
        }

        else if (!v19)
        {
          goto LABEL_21;
        }

        total2 = [v19 total];
        lastMessageTopic2 = [total2 lastMessageTopic];

        if (v18)
        {
        }

        if (lastMessageTopic2)
        {
          goto LABEL_19;
        }

LABEL_21:
        v22 = @"Waiting for push notifications";
LABEL_22:
        [printerCopy appendDescription:@"topic" stringValue:v17];
        [printerCopy pushIndent];
        [printerCopy appendDescription:@"status" stringValue:v22];
        if ([(NSSet *)self->_pushWakeTopics containsObject:v17])
        {
          [printerCopy appendDescription:@"push-to-wake" BOOLValue:1];
        }

        if ([(NSSet *)self->_darkWakeTopics containsObject:v17])
        {
          [printerCopy appendDescription:@"dark-wake" BOOLValue:1];
        }

        if ([(NSSet *)self->_ultraConstrainedTopics containsObject:v17])
        {
          [printerCopy appendDescription:@"ultra-constrained" BOOLValue:1];
        }

        if (v18)
        {
          total3 = [v18 total];
          lastMessageTopic3 = [total3 lastMessageTopic];

          if (lastMessageTopic3)
          {
            v27 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCountsForTopic:v17];
            [v27 appendPrettyStatusToStatusPrinter:printerCopy total:0 direction:@"incoming"];
          }
        }

        if (v19)
        {
          total4 = [v19 total];
          lastMessageTopic4 = [total4 lastMessageTopic];

          if (lastMessageTopic4)
          {
            v30 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCountsForTopic:v17];
            [v30 appendPrettyStatusToStatusPrinter:printerCopy total:0 direction:@"reverse"];
          }
        }

        [printerCopy popIndent];
      }

      v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (!v15)
      {
LABEL_36:

        [printerCopy popIndent];
        typeCopy = v31;
        topicsCopy = v32;
        break;
      }
    }
  }
}

@end