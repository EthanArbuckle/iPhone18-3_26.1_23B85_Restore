@interface APSConnectionServer
+ (id)environmentForNamedPort:(id)a3 userPreferences:(id)a4;
+ (id)serverEnvironmentNamesForUserPreferences:(id)a3;
+ (id)serversWithEnvironmentName:(id)a3 user:(id)a4 userPreferences:(id)a5 excludeServers:(id)a6 delegate:(id)a7;
+ (void)serversWithEnvironmentName:(id)a3 user:(id)a4 userPreferences:(id)a5 excludeServers:(id)a6 delegate:(id)a7 returnServers:(id)a8;
- (APSConnectionServer)initWithDelegate:(id)a3 user:(id)a4 userPreferences:(id)a5 enableDarkWake:(BOOL)a6 environmentName:(id)a7 connectionPortName:(id)a8 processName:(id)a9 connection:(id)a10;
- (APSConnectionServerDelegate)delegate;
- (BOOL)_containsInvalidTopic:(id)a3;
- (BOOL)isConnected;
- (NSString)debugDescription;
- (NSString)description;
- (OS_xpc_object)connection;
- (id)JSONDebugState;
- (id)aps_prettyDescription;
- (id)processNameWithLabels:(BOOL)a3;
- (void)_enqueueXPCMessage:(id)a3 wakingClient:(BOOL)a4 highPriority:(BOOL)a5 shouldBoostPriority:(BOOL)a6 withReply:(id)a7;
- (void)_handleInvalidateTokenForInfo:(id)a3;
- (void)_handleRequestTokenForInfo:(id)a3;
- (void)_informTopicManagerOfChangedFilter:(int64_t)a3 newTopics:(id)a4 oldTopics:(id)a5;
- (void)_initiateConnectionIfNecessary;
- (void)_lookUpMachPort;
- (void)_migratePersistentTopicsIfNeeded;
- (void)_redeliverCurrentPublicToken;
- (void)_resumeQueue;
- (void)_savePersistentConnection;
- (void)_sendClientToken:(id)a3 forInfo:(id)a4;
- (void)_suspendQueue;
- (void)_warnIfOverlappingTopics:(id)a3 againstTopics:(id)a4 string:(id)a5;
- (void)acknowledgeDidReceivePublicToken:(id)a3;
- (void)appendPrettyStatusToStatusPrinter:(id)a3;
- (void)appendPrettyStatusToStatusPrinter:(id)a3 forTopics:(id)a4 type:(id)a5;
- (void)close;
- (void)connectionHandshakeDidComplete;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)handleAckIncomingMessageWithGuid:(id)a3 topic:(id)a4 tracingUUID:(id)a5;
- (void)handleCancelOutgoingMessageWithID:(unint64_t)a3;
- (void)handleChannelSubscriptionFailures:(id)a3 forTopic:(id)a4;
- (void)handleConnectionStatusChanged:(BOOL)a3;
- (void)handleCurrentTokenForInfo:(id)a3;
- (void)handleCurrentURLTokenForInfo:(id)a3;
- (void)handleFakeMessage:(id)a3;
- (void)handleIncomingMessageReceiptWithTopic:(id)a3 tracingUUID:(id)a4;
- (void)handleInvalidatePerAppTokenForInfo:(id)a3;
- (void)handleInvalidatePerAppTokenForTopic:(id)a3 identifier:(id)a4;
- (void)handleInvalidateURLTokenForTopic:(id)a3;
- (void)handleNotificationAcknowledged;
- (void)handlePublicTokenDeliveryReply:(id)a3;
- (void)handleReceivedMessage:(id)a3;
- (void)handleReceivedToken:(id)a3 forInfo:(id)a4;
- (void)handleReceivedTokenError:(id)a3 forInfo:(id)a4;
- (void)handleRequestPerAppTokenForTopic:(id)a3 identifier:(id)a4;
- (void)handleRequestTokenForInfo:(id)a3;
- (void)handleRequestURLTokenForInfo:(id)a3;
- (void)handleResult:(id)a3 forSendingOutgoingMessage:(id)a4;
- (void)handleResult:(id)a3 forSendingOutgoingMessageWithID:(unint64_t)a4 sendRTT:(unint64_t)a5 ackTimestamp:(unint64_t)a6;
- (void)handleSendOutgoingMessage:(id)a3;
- (void)handleSubscribeToChannels:(id)a3 forTopic:(id)a4;
- (void)handleUnsubscribeFromChannels:(id)a3 forTopic:(id)a4;
- (void)saveAndUpdateDelegate;
- (void)setConnection:(id)a3;
- (void)setEnableCriticalReliability:(BOOL)a3;
- (void)setEnableStatusChangeNotifications:(BOOL)a3;
- (void)setEnabledTopics:(id)a3 ignoredTopics:(id)a4 opportunisticTopics:(id)a5 nonWakingTopics:(id)a6;
- (void)setIsPublicTokenAcknowledged:(BOOL)a3;
- (void)setKeepAliveConfiguration:(unint64_t)a3;
- (void)setLargeMessageSize:(unint64_t)a3;
- (void)setMessageSize:(unint64_t)a3;
- (void)setPublicToken:(id)a3 needsAck:(BOOL)a4;
- (void)setPushWakeTopics:(id)a3;
- (void)setTrackActivityPresence:(BOOL)a3;
- (void)setUltraConstrainedTopics:(id)a3;
- (void)setUser:(id)a3;
@end

@implementation APSConnectionServer

- (void)_savePersistentConnection
{
  if (self->_connectionPortName)
  {
    v3 = [(APSConnectionServer *)self userPreferences];
    v4 = [v3 persistentTopics];

    if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = [v4 mutableCopy]) == 0)
    {
      v5 = objc_alloc_init(NSMutableDictionary);
    }

    v22 = v5;
    if ([(NSSet *)self->_enabledTopics count]|| [(NSSet *)self->_ignoredTopics count]|| [(NSSet *)self->_opportunisticTopics count]|| [(NSSet *)self->_nonWakingTopics count])
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      if ([(NSSet *)self->_enabledTopics count])
      {
        v7 = [(NSSet *)self->_enabledTopics allObjects];
        [v6 setObject:v7 forKey:@"enabled"];
      }

      if ([(NSSet *)self->_nonWakingTopics count])
      {
        v8 = [(NSSet *)self->_nonWakingTopics mutableCopy];
        [v8 minusSet:self->_enabledTopics];
        v9 = [v8 allObjects];
        [v6 setObject:v9 forKey:@"nonWaking"];
      }

      if ([(NSSet *)self->_opportunisticTopics count])
      {
        v10 = [(NSSet *)self->_opportunisticTopics mutableCopy];
        [v10 minusSet:self->_enabledTopics];
        [v10 minusSet:self->_nonWakingTopics];
        v11 = [v10 allObjects];
        [v6 setObject:v11 forKey:@"opportunistic"];
      }

      if ([(NSSet *)self->_ignoredTopics count])
      {
        v12 = [(NSSet *)self->_ignoredTopics mutableCopy];
        [v12 minusSet:self->_enabledTopics];
        [v12 minusSet:self->_opportunisticTopics];
        [v12 minusSet:self->_nonWakingTopics];
        v13 = [v12 allObjects];
        [v6 setObject:v13 forKey:@"ignored"];
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
        v17 = [(NSSet *)self->_pushWakeTopics allObjects];
        [v6 setObject:v17 forKey:@"pushWake"];
      }

      if ([(NSSet *)self->_ultraConstrainedTopics count])
      {
        v18 = [(NSSet *)self->_ultraConstrainedTopics allObjects];
        [v6 setObject:v18 forKey:@"ultraConstrained"];
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
    v21 = [(APSConnectionServer *)self userPreferences];
    [v21 setPersistentTopics:v22];

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
  v3 = [(APSConnectionServer *)self connection];

  if (!v3)
  {
    v4 = +[APSLog connectionServer];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      connectionPortName = self->_connectionPortName;
      *buf = 138412290;
      v16 = connectionPortName;
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
        v16 = self;
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
  v18 = [(APSConnectionServer *)self user];
  if ([v18 isDefaultUser])
  {

    return;
  }

  connectionPortName = self->_connectionPortName;

  if (!connectionPortName)
  {
    return;
  }

  v4 = [(APSConnectionServer *)self userPreferences];
  v5 = [v4 defaultUserPersistentTopics];

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = [v5 mutableCopy];
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
  v10 = [(APSConnectionServer *)self userPreferences];
  [v10 setDefaultUserPersistentTopics:v7];

  if (v9)
  {
    v11 = [(APSConnectionServer *)self userPreferences];
    v12 = [v11 persistentTopics];

    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v13 = [v12 mutableCopy]) == 0)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
    }

    [v13 setObject:v9 forKey:self->_connectionPortName];
    v14 = [(APSConnectionServer *)self userPreferences];
    [v14 setPersistentTopics:v13];

    v15 = +[APSLog connectionServer];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_connectionPortName;
      v17 = [(APSConnectionServer *)self user];
      *buf = 138412802;
      v20 = self;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
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
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v2) = [WeakRetained connectionDelegateIsConnectedToService:v2];

  return v2;
}

- (void)connectionHandshakeDidComplete
{
  [(APSConnectionServer *)self _resumeQueue];
  v3 = [(APSConnectionServer *)self connectionPortName];

  if (v3)
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
  v7 = [(APSUser *)self->_user name];
  v8 = [NSString stringWithFormat:@"<%@: %p %@/%@/%@ %@>", v3, self, environmentName, connectionPortName, processName, v7];;

  return v8;
}

+ (id)serverEnvironmentNamesForUserPreferences:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 persistentTopics];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v5;
      v15 = v3;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = v5;
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

      v5 = v14;
      v3 = v15;
    }
  }

  return v4;
}

+ (id)serversWithEnvironmentName:(id)a3 user:(id)a4 userPreferences:(id)a5 excludeServers:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[NSMutableArray array];
  v18 = +[APSLog connectionServer];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "serversWithEnvironmentNames: %@", &v21, 0xCu);
  }

  if (v12)
  {
    [a1 serversWithEnvironmentName:v12 user:v13 userPreferences:v14 excludeServers:v15 delegate:v16 returnServers:v17];
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (void)serversWithEnvironmentName:(id)a3 user:(id)a4 userPreferences:(id)a5 excludeServers:(id)a6 delegate:(id)a7 returnServers:(id)a8
{
  v12 = a3;
  v73 = a4;
  v13 = a5;
  v59 = a7;
  v57 = a8;
  v14 = [v13 persistentTopics];
  v15 = objc_alloc_init(NSMutableArray);
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = v13;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v55 = v14;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v75 objects:v85 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v76;
        v56 = v12;
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
            v22 = [v16 objectForKey:{v21, v54}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v74 = 0;
              v23 = [v73 bootstrapLookupForPortName:-[APSConnectionServer UTF8String](v21 outConnectionPort:{"UTF8String"), &v74}];
              getpid();
              v54 = [(APSConnectionServer *)v21 UTF8String];
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
                v27 = [v26 BOOLValue];

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 isEqualToString:v12])
                {
                  v28 = v12;
                  v29 = [[APSConnectionServer alloc] initWithDelegate:v59 user:v73 userPreferences:v58 enableDarkWake:0 environmentName:v25 connectionPortName:v21 processName:v72 connection:0];
                  v30 = +[APSLog connectionServer];
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412802;
                    v80 = v29;
                    v81 = 2112;
                    v82 = v21;
                    v83 = 2112;
                    v84 = v73;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Creating server: %@ with connectionPortName: %@ user: %@", buf, 0x20u);
                  }

                  if (v29)
                  {
                    [(APSConnectionServer *)v29 setIsPublicTokenAcknowledged:v27];
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
                    [v57 addObject:v29];

                    v28 = v56;
                  }

                  v12 = v28;
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

      v13 = v58;
      v14 = v55;
    }
  }

  if ([v15 count])
  {
    v53 = [v14 mutableCopy];
    [v53 removeObjectsForKeys:v15];
    [v13 setPersistentTopics:v53];
  }
}

- (void)_enqueueXPCMessage:(id)a3 wakingClient:(BOOL)a4 highPriority:(BOOL)a5 shouldBoostPriority:(BOOL)a6 withReply:(id)a7
{
  v8 = a6;
  v10 = a4;
  v12 = a3;
  v13 = a7;
  if (v12)
  {
    if (self->_enqueuedBlockCount >= 0x65)
    {
      v14 = +[APSLog connectionServer];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        enqueuedBlockCount = self->_enqueuedBlockCount;
        *buf = 138412546;
        v31 = self;
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
    v26 = v12;
    v28 = a5;
    v27 = v13;
    v29 = v8;
    v16 = objc_retainBlock(v24);
    v17 = v16;
    if (!self->_queue)
    {
      (v16[2])(v16);
LABEL_16:

LABEL_17:
      goto LABEL_18;
    }

    if (v10)
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

    v19 = self;
    objc_sync_enter(v19);
    ++self->_enqueuedBlockCount;
    objc_sync_exit(v19);

    queue = self->_queue;
    if (v8)
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

    p_numberNotificationsDropped = &v19->_numberNotificationsQueued;
    goto LABEL_15;
  }

LABEL_18:
}

- (APSConnectionServer)initWithDelegate:(id)a3 user:(id)a4 userPreferences:(id)a5 enableDarkWake:(BOOL)a6 environmentName:(id)a7 connectionPortName:(id)a8 processName:(id)a9 connection:(id)a10
{
  v15 = a3;
  v47 = a4;
  v46 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
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
    v52 = v16;
    v53 = 2112;
    v54 = v17;
    v55 = 2112;
    v56 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: Initializing connection server with environmentName '%@' and connectionPortName '%@' and processName '%@'", buf, 0x2Au);
  }

  objc_storeStrong(&v20->_userPreferences, a5);
  v20->_connectionLock._os_unfair_lock_opaque = 0;
  if (v17)
  {
    v22 = [NSString alloc];
    v23 = [v47 name];
    v24 = [v22 initWithFormat:@"port=%@-user=%@-env=%@", v17, v23, v16];
LABEL_8:
    name = v20->_name;
    v20->_name = v24;

    goto LABEL_9;
  }

  if (v18)
  {
    v25 = [NSString alloc];
    v23 = [v47 name];
    v24 = [v25 initWithFormat:@"proc=%@-user=%@-env=%@", v18, v23, v16];
    goto LABEL_8;
  }

LABEL_9:
  objc_storeStrong(&v20->_user, a4);
  objc_storeWeak(&v20->_delegate, v15);
  v27 = [v16 copy];
  environmentName = v20->_environmentName;
  v20->_environmentName = v27;

  v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v30 = dispatch_queue_create("com.apple.apsd-apsconnectionserver", v29);
  queue = v20->_queue;
  v20->_queue = v30;

  v32 = [v18 copy];
  processName = v20->_processName;
  v20->_processName = v32;

  v20->_publicTokenDeliveryRetries = 0;
  v34 = +[NSMutableSet set];
  inMemorySubscriptions = v20->_inMemorySubscriptions;
  v20->_inMemorySubscriptions = v34;

  v36 = +[NSDate date];
  [v36 timeIntervalSinceReferenceDate];
  v20->_dateCreated = v37;

  v20->_enableDarkWake = a6;
  if (v17)
  {
    v38 = [v17 copy];
    connectionPortName = v20->_connectionPortName;
    v20->_connectionPortName = v38;

    [(APSConnectionServer *)v20 _lookUpMachPort];
  }

  if (v19)
  {
    v20->_clientPID = xpc_connection_get_pid(v19);
    objc_storeStrong(&v20->_connection, a10);
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
  v3 = [(APSConnectionServer *)self user];
  v4 = [v3 bootstrapLookupForPortName:-[NSString UTF8String](self->_connectionPortName outConnectionPort:{"UTF8String"), &v9}];

  if (v9 - 1 > 0xFFFFFFFD)
  {
    v5 = +[APSLog connectionServer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      connectionPortName = self->_connectionPortName;
      v7 = [(APSConnectionServer *)self user];
      v8 = bootstrap_strerror(v4);
      *buf = 138412802;
      v11 = connectionPortName;
      v12 = 2112;
      v13 = v7;
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
  v3 = [(APSConnectionServer *)self connection];
  if (v3)
  {
    connection = v3;
    [(APSConnectionServer *)self _suspendQueue];
    xpc_connection_set_context(connection, 0);
    xpc_connection_cancel(connection);
    [(APSConnectionServer *)self setConnection:0];
    v3 = connection;
  }
}

- (id)processNameWithLabels:(BOOL)a3
{
  connectionPortName = self->_connectionPortName;
  if (connectionPortName)
  {
    v4 = &stru_10018F6A0;
    if (a3)
    {
      v4 = @"portname=";
    }

    [NSString stringWithFormat:@"%@%@", v4, connectionPortName, v8];
  }

  else
  {
    v5 = &stru_10018F6A0;
    if (a3)
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
  v5 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
  v6 = [v5 total];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
    v9 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCountsByTopic];
    v10 = sub_100066840(v9, v8, v9);
    [v4 setObject:v10 forKeyedSubscript:@"in"];
  }

  v11 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCounts];
  v12 = [v11 total];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCounts];
    v15 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCountsByTopic];
    v16 = sub_100066840(v15, v14, v15);
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

- (void)setUser:(id)a3
{
  if (self->_user != a3)
  {
    [(APSConnectionServer *)self _migratePersistentTopicsIfNeeded];
  }
}

- (void)setConnection:(id)a3
{
  v5 = a3;
  v6 = [(APSConnectionServer *)self connection];
  v7 = +[APSLog connectionServer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    connectionPortName = self->_connectionPortName;
    LODWORD(v11[0]) = 138413058;
    *(v11 + 4) = v6;
    WORD6(v11[0]) = 2112;
    *(v11 + 14) = v5;
    WORD3(v11[1]) = 2112;
    *(&v11[1] + 1) = self;
    v12 = 2112;
    v13 = connectionPortName;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Replacing xpc conn %@ with %@ for %@ (%@)", v11, 0x2Au);
  }

  if (v6 != v5)
  {
    if (v6)
    {
      v9 = +[APSLog connectionServer];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100109FCC();
      }

      xpc_connection_cancel(v6);
    }

    objc_storeStrong(&self->_connection, a3);
    if (v5 && v6)
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

- (void)handleConnectionStatusChanged:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100066EB0;
  v3[3] = &unk_100187B90;
  v4 = a3;
  [(APSConnectionServer *)self _enqueueXPCMessage:v3 wakingClient:0 highPriority:0];
}

- (void)handleReceivedMessage:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100067464;
  v7[3] = &unk_100187BE0;
  v4 = a3;
  v8 = v4;
  -[APSConnectionServer _enqueueXPCMessage:wakingClient:highPriority:](self, "_enqueueXPCMessage:wakingClient:highPriority:", v7, 1, [v4 priority] == 10);
  v5 = +[APSLog PUSHTRACE];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 tracingUUID];
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Sending push to client. UUID: %@", buf, 0x16u);
  }

  [(APSPayloadMessageStats *)self->_payloadMessageStats payloadMessageReceived:v4];
}

- (void)handleResult:(id)a3 forSendingOutgoingMessage:(id)a4
{
  v6 = a4;
  v10 = a3;
  v7 = [v6 messageID];
  v8 = [v6 sendRTT];
  v9 = [v6 ackTimestamp];

  [(APSConnectionServer *)self handleResult:v10 forSendingOutgoingMessageWithID:v7 sendRTT:v8 ackTimestamp:v9];
}

- (void)handleResult:(id)a3 forSendingOutgoingMessageWithID:(unint64_t)a4 sendRTT:(unint64_t)a5 ackTimestamp:(unint64_t)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100067698;
  v11[3] = &unk_100187C08;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v10 = v12;
  [(APSConnectionServer *)self _enqueueXPCMessage:v11 wakingClient:0 highPriority:1];
}

- (void)handleSendOutgoingMessage:(id)a3
{
  v7 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v7 topic];
    v5 = [v4 isEqualToString:@"com.apple.private.alloy.facetime.multi"];

    if (v5)
    {
      [v7 identifier];
      kdebug_trace();
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveOutgoingMessageToSend:v7];

  [(APSPayloadMessageStats *)self->_payloadMessageStats payloadMessageSent:v7];
}

- (void)handleCancelOutgoingMessageWithID:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveCancellationForOutgoingMessageWithID:a3];
}

- (void)handleFakeMessage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveFakeMessageToSend:v4];
}

- (void)handleRequestPerAppTokenForTopic:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[APSAppTokenInfo alloc] initUnextendedAppTokenWithTopic:v7 identifier:v6];

  [(APSConnectionServer *)self _handleRequestTokenForInfo:v8];
}

- (void)handleRequestTokenForInfo:(id)a3
{
  v4 = a3;
  v5 = +[APSLog connectionServer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Received extended app token request for info %@", &v6, 0x16u);
  }

  [(APSConnectionServer *)self _handleRequestTokenForInfo:v4];
}

- (void)handleRequestURLTokenForInfo:(id)a3
{
  v4 = a3;
  v5 = +[APSLog connectionServer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Received web token request for info %@", &v6, 0x16u);
  }

  [(APSConnectionServer *)self _handleRequestTokenForInfo:v4];
}

- (void)_handleRequestTokenForInfo:(id)a3
{
  v4 = a3;
  [(APSConnectionServer *)self _savePersistentConnectionTopics];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didRequestTokenForInfo:v4];
}

- (void)handleReceivedToken:(id)a3 forInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog connectionServer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 debugDescription];
    v10 = 138412802;
    v11 = self;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Received token %@ for info %@", &v10, 0x20u);
  }

  [(APSConnectionServer *)self _sendClientToken:v6 forInfo:v7];
}

- (void)handleReceivedTokenError:(id)a3 forInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 type] == 2)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100067D98;
    v8[3] = &unk_100187C30;
    v9 = v7;
    v10 = v6;
    [(APSConnectionServer *)self _enqueueXPCMessage:v8 wakingClient:1 highPriority:0];
  }
}

- (void)handleCurrentTokenForInfo:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didRequestCurrentTokenForInfo:v4];
}

- (void)handleCurrentURLTokenForInfo:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didRequestCurrentTokenForInfo:v4];
}

- (void)_sendClientToken:(id)a3 forInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 type];
  if (v8 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained connection:self createURLTokenForToken:v6];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000682D0;
    v12[3] = &unk_100187C30;
    v13 = v7;
    v14 = v11;
    v9 = v11;
    [(APSConnectionServer *)self _enqueueXPCMessage:v12 wakingClient:1 highPriority:0];

    goto LABEL_7;
  }

  if (v8 == 1)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006820C;
    v15[3] = &unk_100187C30;
    v16 = v7;
    v17 = v6;
    [(APSConnectionServer *)self _enqueueXPCMessage:v15 wakingClient:1 highPriority:0];

    v9 = v16;
    goto LABEL_7;
  }

  if (!v8)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100068138;
    v18[3] = &unk_100187C30;
    v19 = v7;
    v20 = v6;
    [(APSConnectionServer *)self _enqueueXPCMessage:v18 wakingClient:1 highPriority:0];

    v9 = v19;
LABEL_7:
  }
}

- (void)handleInvalidatePerAppTokenForTopic:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[APSAppTokenInfo alloc] initUnextendedAppTokenWithTopic:v7 identifier:v6];

  [(APSConnectionServer *)self _handleInvalidateTokenForInfo:v8];
}

- (void)handleInvalidateURLTokenForTopic:(id)a3
{
  v4 = a3;
  v5 = +[APSLog connectionServer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Received web token invalidate request for topic %@", &v7, 0x16u);
  }

  v6 = [[APSURLTokenInfo alloc] initWithTopic:v4];
  [(APSConnectionServer *)self _handleInvalidateTokenForInfo:v6];
}

- (void)handleInvalidatePerAppTokenForInfo:(id)a3
{
  v4 = a3;
  v5 = +[APSLog connectionServer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Received extended app token invalidate request for info %@", &v6, 0x16u);
  }

  [(APSConnectionServer *)self _handleInvalidateTokenForInfo:v4];
}

- (void)_handleInvalidateTokenForInfo:(id)a3
{
  v4 = a3;
  [(APSConnectionServer *)self _savePersistentConnectionTopics];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didInvalidateTokenForInfo:v4];
}

- (void)handleSubscribeToChannels:(id)a3 forTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APSConnectionServer *)self connectionPortName];

  if (!v8)
  {
    v21 = v7;
    v9 = +[APSLog connectionServer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Adding incoming pubsub subscriptions to inMemory list", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v6;
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
          v16 = [(APSConnectionServer *)self environmentName];
          [v15 setEnvironment:v16];

          v17 = [(APSConnectionServer *)self user];
          v18 = [v17 pubSubName];
          [v15 setTokenName:v18];

          v19 = [(APSConnectionServer *)self inMemorySubscriptions];
          [v19 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v7 = v21;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveSubscribeToChannels:v6 forTopic:v7];
}

- (void)handleUnsubscribeFromChannels:(id)a3 forTopic:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveUnsubscribeToChannels:v7 forTopic:v6];
}

- (void)handleIncomingMessageReceiptWithTopic:(id)a3 tracingUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self didReceiveIncomingMessageReceiptWithTopic:v7 tracingUUID:v6];
}

- (void)handleAckIncomingMessageWithGuid:(id)a3 topic:(id)a4 tracingUUID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self handleAckIncomingMessageWithGuid:v10 topic:v9 tracingUUID:v8];
}

- (void)setPublicToken:(id)a3 needsAck:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  publicToken = self->_publicToken;
  if (publicToken == v6 || publicToken && [(NSData *)v6 isEqualToData:?])
  {
    v9 = 0;
    if (a4)
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
    if (a4)
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

  v12 = [(APSConnectionServer *)self connection];

  v13 = v9 ^ 1;
  if (!v12)
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

- (void)handlePublicTokenDeliveryReply:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    type = xpc_get_type(v4);
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
      v9 = [(APSConnectionServer *)self connectionPortName];
      v10 = [(APSConnectionServer *)self publicToken];
      v15 = 138413058;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2048;
      v22 = [(APSConnectionServer *)self publicTokenDeliveryRetries];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received %@ when updating public token. {connectionPort:%@, token: %@, retries: %ld}", &v15, 0x2Au);
    }
  }

  else
  {
    v8 = +[APSLog connectionServer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(APSConnectionServer *)self connectionPortName];
      v12 = [(APSConnectionServer *)self publicToken];
      v15 = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2048;
      v20 = [(APSConnectionServer *)self publicTokenDeliveryRetries];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No reply received when updating public token. {connectionPort:%@, token: %@, retries: %ld}", &v15, 0x20u);
    }
  }

  v13 = [(APSConnectionServer *)self publicTokenDeliveryRetries];
  if (![(APSConnectionServer *)self isPublicTokenAcknowledged]&& v13 <= 2)
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
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ scheduled public token delivery", &v4, 0xCu);
  }

  if (![(APSConnectionServer *)self isClosed]&& [(APSConnectionServer *)self publicTokenDeliveryRetries]<= 2 && ![(APSConnectionServer *)self isPublicTokenAcknowledged])
  {
    ++self->_publicTokenDeliveryRetries;
    [(APSConnectionServer *)self setPublicToken:self->_publicToken needsAck:1];
  }
}

- (void)setIsPublicTokenAcknowledged:(BOOL)a3
{
  connectionPortName = self->_connectionPortName;
  if (connectionPortName && (v5 = a3, [(NSString *)connectionPortName length]))
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

- (void)acknowledgeDidReceivePublicToken:(id)a3
{
  v4 = a3;
  connectionPortName = self->_connectionPortName;
  if (!connectionPortName || (v6 = [(NSString *)connectionPortName length], !v4) || !v6)
  {
    v9 = +[APSLog connectionServer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      processName = self->_processName;
      v12 = 138412290;
      v13 = processName;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring token acknowledgement from %@", &v12, 0xCu);
    }

    goto LABEL_12;
  }

  v7 = [(NSData *)self->_publicToken isEqualToData:v4];
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
    v13 = self;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Token acknowledged by %@", &v12, 0x16u);
  }

  [(APSConnectionServer *)self setIsPublicTokenAcknowledged:1];
LABEL_13:
}

- (void)setMessageSize:(unint64_t)a3
{
  if (self->_messageSize != a3)
  {
    v14[14] = v3;
    v14[15] = v4;
    self->_messageSize = a3;
    v7 = [(APSConnectionServer *)self connectionPortName];
    if (v7)
    {
      v8 = v7;
      v9 = [(APSConnectionServer *)self enabledTopics];
      if (![v9 count])
      {
        v10 = [(APSConnectionServer *)self opportunisticTopics];
        if (![v10 count])
        {
          v12 = [(APSConnectionServer *)self ignoredTopics];
          v13 = [v12 count];

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
    v14[4] = a3;
    v14[5] = largeMessageSize;
    [(APSConnectionServer *)self _enqueueXPCMessage:v14 wakingClient:0 highPriority:0];
  }
}

- (void)setLargeMessageSize:(unint64_t)a3
{
  if (self->_largeMessageSize != a3)
  {
    v14[14] = v3;
    v14[15] = v4;
    self->_largeMessageSize = a3;
    v7 = [(APSConnectionServer *)self connectionPortName];
    if (v7)
    {
      v8 = v7;
      v9 = [(APSConnectionServer *)self enabledTopics];
      if (![v9 count])
      {
        v10 = [(APSConnectionServer *)self opportunisticTopics];
        if (![v10 count])
        {
          v12 = [(APSConnectionServer *)self ignoredTopics];
          v13 = [v12 count];

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
    v14[5] = a3;
    [(APSConnectionServer *)self _enqueueXPCMessage:v14 wakingClient:0 highPriority:0];
  }
}

- (void)handleChannelSubscriptionFailures:(id)a3 forTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog connectionServer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Sending failures %@ to client", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006972C;
  v11[3] = &unk_100187C30;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(APSConnectionServer *)self _enqueueXPCMessage:v11 wakingClient:1 highPriority:0];
}

- (void)_warnIfOverlappingTopics:(id)a3 againstTopics:(id)a4 string:(id)a5
{
  v8 = a3;
  v9 = a4;
  v19 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v20 objects:v30 count:16];
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
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v9 containsObject:{v15, v18}])
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
            v29 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received request from %@ to put topic %@ into both %@ topic sets", buf, 0x20u);
          }
        }
      }

      v12 = [v8 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v12);
  }
}

- (void)_informTopicManagerOfChangedFilter:(int64_t)a3 newTopics:(id)a4 oldTopics:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [NSMutableSet setWithCapacity:0];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v7 = [NSMutableSet setWithCapacity:0];
LABEL_3:
  v9 = [v8 mutableCopy];
  [v9 minusSet:v7];
  v10 = [v7 mutableCopy];
  [v10 minusSet:v8];
  v11 = [(APSConnectionServer *)self delegate];
  v12 = [v11 topicManager];

  [v12 removeTopics:v9 connectionServer:self filter:a3];
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
      v20 = v12;
      v21 = v10;
      v22 = v9;
      v23 = v8;
      v24 = v7;
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
          v15 = [APSTopicAttributes topicAttributesWithFilter:a3 darkWakeEnabled:[(NSSet *)self->_darkWakeTopics containsObject:v19 pushWakeEnabled:v20 criticalWakeEnabled:v21 ultraConstrainedEnabled:v22, v23, v24], [(NSSet *)self->_pushWakeTopics containsObject:v19], [(NSSet *)self->_criticalWakeTopics containsObject:v19], [(NSSet *)self->_ultraConstrainedTopics containsObject:v19]];

          [v26 setObject:v15 forKey:v19];
          v17 = v17 + 1;
          v18 = v15;
        }

        while (v14 != v17);
        v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);

      v8 = v23;
      v7 = v24;
      v10 = v21;
      v9 = v22;
      v12 = v20;
    }

    [v12 addTopicsAndAttributes:v26 connectionServer:self];
  }
}

- (BOOL)_containsInvalidTopic:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v8 + 1) + 8 * i) length])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)setEnabledTopics:(id)a3 ignoredTopics:(id)a4 opportunisticTopics:(id)a5 nonWakingTopics:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(APSConnectionServer *)self _warnIfOverlappingTopics:v10 againstTopics:v12 string:@"enabled and opportunistic"];
  [(APSConnectionServer *)self _warnIfOverlappingTopics:v10 againstTopics:v11 string:@"enabled and ignored"];
  [(APSConnectionServer *)self _warnIfOverlappingTopics:v11 againstTopics:v12 string:@"ignored and opportunistic"];
  [(APSConnectionServer *)self _warnIfOverlappingTopics:v10 againstTopics:v13 string:@"enabled and nonWaking"];
  [(APSConnectionServer *)self _warnIfOverlappingTopics:v11 againstTopics:v13 string:@"ignored and nonWaking"];
  [(APSConnectionServer *)self _warnIfOverlappingTopics:v12 againstTopics:v13 string:@"opportunistic and nonWaking"];
  v14 = [(APSConnectionServer *)self delegate];
  v15 = [v14 topicManager];
  [v15 beginTransaction];

  if (v10)
  {
    if (sub_100003E14(v10, self->_enabledTopics))
    {
      v16 = 0;
      v17 = v10;
      if (!v12)
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
        v55 = self;
        v56 = 2112;
        v57 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: connection set enabled topics %@", buf, 0x16u);
      }

      v53 = 0;
      v17 = [(APSConnectionServer *)self entitledTopicsFromSet:v10 unentitledTopics:&v53];
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

      if (!v12)
      {
LABEL_28:
        v18 = 0;
        if (v11)
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
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  if (sub_100003E14(v12, self->_opportunisticTopics))
  {
    v18 = v12;
    if (v11)
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
      v55 = self;
      v56 = 2112;
      v57 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: connection set opportuntistic topics %@", buf, 0x16u);
    }

    v52 = 0;
    v18 = [(APSConnectionServer *)self entitledTopicsFromSet:v12 unentitledTopics:&v52];
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

    if (v11)
    {
LABEL_29:
      if (sub_100003E14(v11, self->_ignoredTopics))
      {
        v30 = 0;
        v31 = v11;
        if (!v13)
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
          v55 = self;
          v56 = 2112;
          v57 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@: connection set ignored topics %@", buf, 0x16u);
        }

        v51 = 0;
        v31 = [(APSConnectionServer *)self entitledTopicsFromSet:v11 unentitledTopics:&v51];
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
            v55 = self;
            v56 = 2112;
            v57 = ignoredTopics;
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

        if (!v13)
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
  if (!v13)
  {
LABEL_64:
    v40 = 0;
    goto LABEL_69;
  }

LABEL_48:
  if (sub_100003E14(v13, self->_nonWakingTopics))
  {
    v40 = v13;
  }

  else
  {
    v41 = +[APSLog connectionServer];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = APSPrettyPrintCollection();
      *buf = 138412546;
      v55 = self;
      v56 = 2112;
      v57 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%@: connection set nonWaking topics %@", buf, 0x16u);
    }

    v50 = 0;
    v40 = [(APSConnectionServer *)self entitledTopicsFromSet:v13 unentitledTopics:&v50];
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
  v47 = [(APSConnectionServer *)self delegate];
  v48 = [v47 topicManager];
  [v48 endTransaction];

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

- (void)setEnableCriticalReliability:(BOOL)a3
{
  self->_enableCriticalReliability = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connectionChangedCriticalReliability:self];
}

- (void)setTrackActivityPresence:(BOOL)a3
{
  self->_trackActivityPresence = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connectionChangedTrackActivityPresence:self];
}

- (void)setEnableStatusChangeNotifications:(BOOL)a3
{
  if (self->_enableStatusChangeNotifications != a3)
  {
    v3 = a3;
    self->_enableStatusChangeNotifications = a3;
    v5 = +[APSLog connectionServer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Disabling";
      if (v3)
      {
        v6 = @"Enabling";
      }

      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: %@ status notifications for connection", &v7, 0x16u);
    }
  }
}

+ (id)environmentForNamedPort:(id)a3 userPreferences:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[APSLog connectionServer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "environmentForNamedPort called for port %@ from user preferences %@", &v18, 0x16u);
  }

  v8 = [v6 persistentTopics];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = 0;
    goto LABEL_18;
  }

  v9 = [v8 objectForKey:v5];
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
          v21 = v6;
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

- (void)setPushWakeTopics:(id)a3
{
  v4 = a3;
  if (self->_enableDarkWake)
  {
    v5 = [(APSConnectionServer *)self connection];
    if (v5)
    {
      memset(buf, 0, 32);
      xpc_connection_get_audit_token();
      if (!sub_100003C4C(buf, APSPushWakeEntitlement))
      {

        v6 = +[APSLog connectionServer];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_10010A5F0(v5);
        }

        v4 = 0;
      }
    }

    if ((sub_100003E14(self->_pushWakeTopics, v4) & 1) == 0)
    {
      v7 = [(APSConnectionServer *)self delegate];
      v8 = [v7 topicManager];

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

      objc_storeStrong(&self->_pushWakeTopics, v4);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = [v8 topicStatesForConnectionServer:self];
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v26 = v8;
        v27 = v5;
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
            v20 = [v19 topicName];
            v21 = [v19 attributes];
            v22 = [v4 containsObject:v20];
            if (v22 != [v21 isPushWakeEnabled])
            {
              [v21 setPushWakeEnabled:v22];
              v16 = 1;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v15);

        [(APSConnectionServer *)self _savePersistentConnectionTopics];
        v8 = v26;
        v5 = v27;
        if (v16)
        {
          v23 = [(APSConnectionServer *)self delegate];
          v24 = [v23 topicManager];
          v25 = [v24 policy];
          [v25 filtersWillPotentiallyBeChangedBy:self];
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
    v5 = +[APSLog connectionServer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10010A558();
    }
  }
}

- (void)setUltraConstrainedTopics:(id)a3
{
  v4 = a3;
  v5 = [(APSConnectionServer *)self connection];
  if (v5)
  {
    memset(buf, 0, 32);
    xpc_connection_get_audit_token();
    if (!sub_100003C4C(buf, APSUltraConstrainedEntitlement))
    {

      v6 = +[APSLog connectionServer];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_10010A674(v5);
      }

      v4 = 0;
    }
  }

  if ((sub_100003E14(self->_ultraConstrainedTopics, v4) & 1) == 0)
  {
    v7 = [(APSConnectionServer *)self delegate];
    v8 = [v7 topicManager];

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

    objc_storeStrong(&self->_ultraConstrainedTopics, v4);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [v8 topicStatesForConnectionServer:self];
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v26 = v8;
      v27 = v5;
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
          v20 = [v19 topicName];
          v21 = [v19 attributes];
          v22 = [v4 containsObject:v20];
          if (v22 != [v21 isUltraConstrainedEnabled])
          {
            [v21 setUltraConstrainedEnabled:v22];
            v16 = 1;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);

      [(APSConnectionServer *)self _savePersistentConnectionTopics];
      v8 = v26;
      v5 = v27;
      if (v16)
      {
        v23 = [(APSConnectionServer *)self delegate];
        v24 = [v23 topicManager];
        v25 = [v24 policy];
        [v25 filtersWillPotentiallyBeChangedBy:self];
      }
    }

    else
    {

      [(APSConnectionServer *)self _savePersistentConnectionTopics];
    }
  }
}

- (void)setKeepAliveConfiguration:(unint64_t)a3
{
  v5 = [(APSConnectionServer *)self delegate];
  [v5 connection:self setKeepAliveConfiguration:a3];
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
  v18 = [(NSSet *)self->_enabledTopics allObjects];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  v33[0] = v20;
  v32[1] = @"opportunistic";
  v21 = [(NSSet *)self->_opportunisticTopics allObjects];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &__NSArray0__struct;
  }

  v33[1] = v23;
  v32[2] = @"ignored";
  v24 = [(NSSet *)self->_ignoredTopics allObjects];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = &__NSArray0__struct;
  }

  v33[2] = v26;
  v32[3] = @"nonWaking";
  v27 = [(NSSet *)self->_nonWakingTopics allObjects];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
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

- (void)appendPrettyStatusToStatusPrinter:(id)a3
{
  v4 = a3;
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
    v22 = [v21 inDarkWake];

    if (v22)
    {
      v18 = @"Not connected to service during dark wake";
      goto LABEL_40;
    }

    v28 = +[APSWakeStateManager wakeStateManager];
    v29 = [v28 inFullWake];

    v30 = @"Not connected to service during sleep";
LABEL_34:
    if (!v29)
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
    v24 = [v23 inDarkWake];

    if (v24)
    {
      v18 = @"User not connected during dark wake";
      goto LABEL_40;
    }

    v31 = +[APSWakeStateManager wakeStateManager];
    v29 = [v31 inFullWake];

    v30 = @"User not connected during sleep";
    goto LABEL_34;
  }

  v10 = +[NSMutableSet set];
  [v10 unionSet:self->_enabledTopics];
  [v10 unionSet:self->_opportunisticTopics];
  [v10 unionSet:self->_nonWakingTopics];
  v11 = [(APSConnectionServer *)self delegate];
  v12 = [v11 topicManager];

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

      if ([v12 hasListeningTopic:*(*(&v100 + 1) + 8 * i)])
      {

        if (!self->_processName && !self->_connectionMachPort)
        {
          v18 = @"Unregistered port name";
          goto LABEL_39;
        }

        v25 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
        v26 = [v25 total];
        v27 = [v26 lastMessageTopic];
        if (v27)
        {
        }

        else
        {
          v32 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCounts];
          v33 = [v32 total];
          v34 = [v33 lastMessageTopic];

          if (!v34)
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
    [v4 appendDescription:@"application port name" stringValue:?];
    [v4 pushIndent];
    if (self->_processName)
    {
      [v4 appendDescription:@"process" stringValue:?];
    }

    [v4 appendDescription:@"persistent connection status" stringValue:v18];
    v35 = @"persistent connection created";
  }

  else if (self->_processName)
  {
    [v4 appendDescription:@"process" stringValue:?];
    [v4 pushIndent];
    [v4 appendDescription:@"process connection status" stringValue:v18];
    v35 = @"process connected";
  }

  else
  {
    [v4 appendDescription:@"name" stringValue:self->_name];
    [v4 pushIndent];
    v35 = @"created";
  }

  [v4 appendDescription:v35 timeIntervalValue:self->_dateCreated];
  v36 = [(APSConnectionServer *)self user];
  v37 = [v36 name];
  [v4 appendDescription:@"user" stringValue:v37];

  v38 = self->_publicToken;
  if (v38 && [(NSData *)v38 length])
  {
    v39 = [(NSData *)self->_publicToken length];
    v40 = [(NSData *)self->_publicToken debugDescription];
    v41 = [NSString stringWithFormat:@"%@, {length = %lu, bytes=%@}", @"Yes", v39, v40];
    [v4 appendDescription:@"token" stringValue:v41];
  }

  else
  {
    [v4 appendDescription:@"token" stringValue:@"Missing"];
  }

  [v4 appendDescription:@"status change notifications" enabledValue:self->_enableStatusChangeNotifications];
  [v4 appendDescription:@"track acitivity presence" enabledValue:self->_trackActivityPresence];
  v42 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
  [v42 appendPrettyStatusToStatusPrinter:v4 total:1 direction:@"incoming"];

  v43 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCounts];
  [v43 appendPrettyStatusToStatusPrinter:v4 total:1 direction:@"reverse"];

  [(APSConnectionServer *)self appendPrettyStatusToStatusPrinter:v4 forTopics:self->_enabledTopics type:@"enabled topics"];
  [(APSConnectionServer *)self appendPrettyStatusToStatusPrinter:v4 forTopics:self->_opportunisticTopics type:@"opportunistic topics"];
  [(APSConnectionServer *)self appendPrettyStatusToStatusPrinter:v4 forTopics:self->_nonWakingTopics type:@"nonwaking topics"];
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

  [v4 appendDescription:@"ipc message queue status" stringValue:v46];
  if (self->_numberNotifications >= 1)
  {
    [v4 pushIndent];
    v47 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
    v48 = [v47 total];
    [v4 appendDescription:@"push notifications" unsignedIntegerValue:{objc_msgSend(v48, "count")}];

    v49 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
    v50 = [v49 total];
    [v50 lastMessageTime];
    v52 = v51;

    if (v52 != 0.0)
    {
      v53 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
      v54 = [v53 total];
      [v54 lastMessageTime];
      [v4 appendDescription:@"last push notification" timeIntervalValue:?];
    }

    v55 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
    v56 = [v55 total];
    v57 = [v56 lastMessageTopic];

    if (v57)
    {
      v58 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
      v59 = [v58 total];
      v60 = [v59 lastMessageTopic];
      [v4 appendDescription:@"last push notification topic" stringValue:v60];
    }

    numberNotifications = self->_numberNotifications;
    v62 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCounts];
    v63 = [v62 total];
    [v63 lastMessageTime];
    [v4 appendDescription:@"non-push ipc messages" unsignedIntegerValue:(numberNotifications - v64)];

    if (self->_lastNotificationTime != 0.0)
    {
      [v4 appendDescription:@"last ipc action" timeIntervalValue:?];
    }

    if (self->_numberNotificationsLost >= 1)
    {
      [v4 appendDescription:@"ipc messages lost" unsignedIntegerValue:?];
    }

    [v4 appendDescription:@"ipc messages sent" unsignedIntegerValue:self->_numberNotificationsSent];
    if (self->_lastNotificationSentTime != 0.0)
    {
      [v4 appendDescription:@"last ipc message sent" timeIntervalValue:?];
    }

    if (self->_numberNotificationsQueued >= 1)
    {
      [v4 appendDescription:@"ipc messages queued" unsignedIntegerValue:?];
    }

    if (self->_enqueuedBlockCount || self->_numberNotificationsQueued >= 1)
    {
      [v4 appendDescription:@"ipc messages waiting in queue" unsignedIntegerValue:?];
    }

    if (self->_numberNotificationsDropped >= 1)
    {
      [v4 appendDescription:@"ipc messages skipped" unsignedIntegerValue:?];
    }

    [v4 appendDescription:@"ipc messages acknowledged" unsignedIntegerValue:self->_numberNotificationsAcknowledged];
    if (self->_lastNotificationAcknowledgedTime != 0.0)
    {
      [v4 appendDescription:@"last ack from application" timeIntervalValue:?];
    }

    v65 = self->_numberNotificationsSent;
    if (v65 >= 1)
    {
      [v4 appendDescription:@"ipc delivery success rate" successRateWithSuccessCount:self->_numberNotificationsAcknowledged failureCount:v65 - self->_numberNotificationsAcknowledged];
    }

    [v4 popIndent];
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v66 = [(NSSet *)self->_ignoredTopics allObjects];
  v67 = [v66 sortedArrayUsingSelector:"compare:"];

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

        [v4 appendDescription:@"ignored topic" stringValue:*(*(&v96 + 1) + 8 * j)];
      }

      v69 = [v67 countByEnumeratingWithState:&v96 objects:v105 count:16];
    }

    while (v69);
  }

  v72 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCountsByTopic];
  v73 = [v72 allKeys];
  v74 = [NSMutableSet setWithArray:v73];

  v75 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCountsByTopic];
  v76 = [v75 allKeys];
  [v74 addObjectsFromArray:v76];

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
    v79 = [v78 allObjects];
    v80 = [v79 sortedArrayUsingSelector:"compare:"];

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
          [v4 appendDescription:@"disabled topic" stringValue:v85];
          [v4 pushIndent];
          [v4 appendDescription:@"status" stringValue:{@"Topic disabled, unable to send or receive push notifications"}];
          v86 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCountsForTopic:v85];
          [v86 appendPrettyStatusToStatusPrinter:v4 total:0 direction:@"incoming"];
          v87 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCountsForTopic:v85];
          [v87 appendPrettyStatusToStatusPrinter:v4 total:0 direction:@"reverse"];
          [v4 popIndent];
        }

        v82 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
      }

      while (v82);
    }

    v77 = v89;
    v74 = v90;
    v78 = v88;
  }

  [v4 popIndent];
}

- (void)appendPrettyStatusToStatusPrinter:(id)a3 forTopics:(id)a4 type:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    v31 = v10;
    [v8 appendDescription:v10 unsignedIntegerValue:{objc_msgSend(v9, "count")}];
    [v8 pushIndent];
    v11 = [(APSConnectionServer *)self delegate];
    v36 = [v11 topicManager];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = v9;
    v12 = [v9 allObjects];
    v13 = [v12 sortedArrayUsingSelector:"compare:"];

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
        if (![v36 hasListeningTopic:v17])
        {
          v22 = @"Paused, topic is redlisted";
          goto LABEL_22;
        }

        if (v18)
        {
          v20 = [v18 total];
          v21 = [v20 lastMessageTopic];
          v33 = v20;
          if (v21)
          {
            v13 = v21;

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

        v23 = [v19 total];
        v24 = [v23 lastMessageTopic];

        if (v18)
        {
        }

        if (v24)
        {
          goto LABEL_19;
        }

LABEL_21:
        v22 = @"Waiting for push notifications";
LABEL_22:
        [v8 appendDescription:@"topic" stringValue:v17];
        [v8 pushIndent];
        [v8 appendDescription:@"status" stringValue:v22];
        if ([(NSSet *)self->_pushWakeTopics containsObject:v17])
        {
          [v8 appendDescription:@"push-to-wake" BOOLValue:1];
        }

        if ([(NSSet *)self->_darkWakeTopics containsObject:v17])
        {
          [v8 appendDescription:@"dark-wake" BOOLValue:1];
        }

        if ([(NSSet *)self->_ultraConstrainedTopics containsObject:v17])
        {
          [v8 appendDescription:@"ultra-constrained" BOOLValue:1];
        }

        if (v18)
        {
          v25 = [v18 total];
          v26 = [v25 lastMessageTopic];

          if (v26)
          {
            v27 = [(APSPayloadMessageStats *)self->_payloadMessageStats incomingCountsForTopic:v17];
            [v27 appendPrettyStatusToStatusPrinter:v8 total:0 direction:@"incoming"];
          }
        }

        if (v19)
        {
          v28 = [v19 total];
          v29 = [v28 lastMessageTopic];

          if (v29)
          {
            v30 = [(APSPayloadMessageStats *)self->_payloadMessageStats outgoingCountsForTopic:v17];
            [v30 appendPrettyStatusToStatusPrinter:v8 total:0 direction:@"reverse"];
          }
        }

        [v8 popIndent];
      }

      v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (!v15)
      {
LABEL_36:

        [v8 popIndent];
        v10 = v31;
        v9 = v32;
        break;
      }
    }
  }
}

@end