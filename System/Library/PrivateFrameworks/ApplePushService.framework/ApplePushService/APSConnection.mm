@interface APSConnection
+ (BOOL)isValidEnvironment:(id)environment;
+ (__SecIdentity)copyIdentity;
+ (double)keepAliveIntervalForEnvironmentName:(id)name;
+ (id)_createXPCConnectionWithQueueName:(const char *)name;
+ (id)connectionsDebuggingStateOfStyle:(unint64_t)style;
+ (id)geoRegion;
+ (unint64_t)serverTimeInNanoSeconds;
+ (void)_flushIdentityCache;
+ (void)_safelyCancelAndReleaseConnection:(id)connection;
+ (void)_setTokenState;
+ (void)invalidateDeviceIdentity;
+ (void)notifySafeToSendFilter;
+ (void)requestCourierConnection;
- (APSConnection)initWithEnvironmentName:(id)name namedDelegatePort:(id)port personaUniqueString:(id)string queue:(id)queue;
- (APSConnection)initWithEnvironmentName:(id)name namedDelegatePort:(id)port queue:(id)queue;
- (APSConnectionDelegate)delegate;
- (BOOL)hasIdentity;
- (BOOL)isConnected;
- (BOOL)trackActivityPresence;
- (NSArray)enabledTopics;
- (NSArray)ignoredTopics;
- (NSArray)nonWakingTopics;
- (NSArray)opportunisticTopics;
- (NSData)publicToken;
- (id)_initWithEnvironmentName:(id)name namedDelegatePort:(id)port enablePushDuringSleep:(BOOL)sleep personaUniqueString:(id)string queue:(id)queue;
- (id)_removeURLTokenBlocksForInfo:(id)info;
- (id)_topicListNameForLogging:(unint64_t)logging;
- (id)registeredChannelsForTopic:(id)topic error:(id *)error;
- (unint64_t)largeMessageSize;
- (unint64_t)messageSize;
- (void)_asyncOnDelegateQueueWithBlock:(id)block requiresDelegate:(BOOL)delegate;
- (void)_cancelConnection;
- (void)_cancelConnectionOnIvarQueue;
- (void)_connectIfNecessary;
- (void)_connectIfNecessaryOnIvarQueue;
- (void)_deliverConnectionStatusChange:(BOOL)change;
- (void)_deliverConnectionStatusFromDealloc:(BOOL)dealloc;
- (void)_deliverDidReconnectOnIvarQueue;
- (void)_deliverFailedChannelSubscriptions:(id)subscriptions onTopic:(id)topic;
- (void)_deliverMessage:(id)message;
- (void)_deliverOutgoingMessageResultWithID:(unint64_t)d error:(id)error sendRTT:(unint64_t)t ackTimestamp:(unint64_t)timestamp;
- (void)_deliverPublicToken:(id)token withCompletionBlock:(id)block;
- (void)_deliverPublicTokenOnIvarQueue:(id)queue withCompletionBlock:(id)block;
- (void)_deliverToken:(id)token forInfo:(id)info;
- (void)_deliverToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)_deliverURLToken:(id)token forInfo:(id)info;
- (void)_deliverURLTokenError:(id)error forInfo:(id)info;
- (void)_disconnect;
- (void)_disconnectFromDealloc;
- (void)_disconnectOnIvarQueue;
- (void)_dispatch_async_to_ivarQueue:(id)queue shutdownBlock:(id)block;
- (void)_dispatch_sync_to_ivarQueue:(id)queue shutdownBlock:(id)block;
- (void)_handleEvent:(id)event withHandler:(id)handler errorHandler:(id)errorHandler;
- (void)_insertURLTokenBlock:(id)block forInfo:(id)info;
- (void)_noteDisconnectedFromDaemonOnIvarQueue;
- (void)_onIvarQueue_setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics sendToDaemon:(BOOL)daemon completion:(id)completion;
- (void)_onIvarQueue_setPushWakeTopics:(id)topics;
- (void)_onIvarQueue_setUltraConstrainedTopics:(id)topics;
- (void)_onIvarQueue_subscribeToChannels:(id)channels onTopic:(id)topic;
- (void)_processQueuedTopicMovesOnIvarQueue;
- (void)_reconnectIfNecessaryOnIvarQueueAfterDelay;
- (void)_resendPubSubSubscriptions;
- (void)_sendOutgoingMessage:(id)message fake:(BOOL)fake;
- (void)_setEnableCriticalReliability:(BOOL)reliability sendToDaemon:(BOOL)daemon;
- (void)_setEnableStatusNotifications:(BOOL)notifications sendToDaemon:(BOOL)daemon;
- (void)_setEnabledTopics:(id)topics;
- (void)_setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics sendToDaemon:(BOOL)daemon completion:(id)completion;
- (void)_setIgnoredTopics:(id)topics;
- (void)_setNonWakingTopics:(id)topics;
- (void)_setOpportunisticTopics:(id)topics;
- (void)_setTrackActivityPresence:(BOOL)presence sendToDaemon:(BOOL)daemon;
- (void)_shutdownFromDealloc;
- (void)_shutdownOnIvarQueue;
- (void)calloutToDelegatesForURLTokenError:(id)error forInfo:(id)info completion:(id)completion;
- (void)calloutToInvalidateCompletion:(id)completion withSuccess:(BOOL)success error:(id)error;
- (void)cancelOutgoingMessage:(id)message;
- (void)confirmReceiptForMessage:(id)message;
- (void)currentTokenForInfo:(id)info;
- (void)currentURLTokenForInfo:(id)info;
- (void)dealloc;
- (void)forceClientIdentityProviderSwapWithCompletion:(id)completion;
- (void)getRegisteredChannelsForTopic:(id)topic completion:(id)completion;
- (void)getRegisteredChannelsForTopic:(id)topic withCompletion:(id)completion;
- (void)invalidateTokenForInfo:(id)info;
- (void)invalidateTokenForTopic:(id)topic identifier:(id)identifier;
- (void)invalidateURLTokenForInfo:(id)info completion:(id)completion;
- (void)moveTopic:(id)topic fromList:(unint64_t)list toList:(unint64_t)toList;
- (void)moveTopics:(id)topics fromList:(unint64_t)list toList:(unint64_t)toList;
- (void)removeFromRunLoop;
- (void)requestKeepAlive;
- (void)requestTokenForInfo:(id)info;
- (void)requestTokenForTopic:(id)topic identifier:(id)identifier;
- (void)requestURLTokenForInfo:(id)info completion:(id)completion;
- (void)rollBAACertsWithCompletion:(id)completion;
- (void)rollTokensAndReconnect:(id)reconnect;
- (void)scheduleInRunLoop:(id)loop;
- (void)setDelegate:(id)delegate;
- (void)setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics;
- (void)setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics;
- (void)setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics;
- (void)setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics completion:(id)completion;
- (void)setLargeMessageSize:(unint64_t)size;
- (void)setMessageSize:(unint64_t)size;
- (void)setUltraConstrainedTopics:(id)topics;
- (void)shutdown;
- (void)signDataWithDeviceIdentity:(id)identity withCompletion:(id)completion;
- (void)subscribeToChannel:(id)channel forTopic:(id)topic;
- (void)subscribeToChannels:(id)channels forTopic:(id)topic;
- (void)unsubscribeFromChannel:(id)channel forTopic:(id)topic;
- (void)unsubscribeFromChannels:(id)channels forTopic:(id)topic;
@end

@implementation APSConnection

- (unint64_t)largeMessageSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__APSConnection_largeMessageSize__block_invoke;
  v5[3] = &unk_1E7B22318;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__APSConnection_largeMessageSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 48);
  return result;
}

- (unint64_t)messageSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__APSConnection_messageSize__block_invoke;
  v5[3] = &unk_1E7B22318;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__APSConnection_messageSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 40);
  return result;
}

- (void)_connectIfNecessaryOnIvarQueue
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_processQueuedTopicMovesOnIvarQueue
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self->_enabledTopics;
  v52 = self->_opportunisticTopics;
  v53 = self->_ignoredTopics;
  v54 = self->_nonWakingTopics;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  os_unfair_lock_lock(&self->_topicMoveLock);
  v5 = self->_accumulatedTopicMoves;
  accumulatedTopicMoves = self->_accumulatedTopicMoves;
  self->_accumulatedTopicMoves = 0;

  selfCopy = self;
  os_unfair_lock_unlock(&self->_topicMoveLock);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v7 = v5;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v55 objects:v67 count:16];
  context = v3;
  if (v8)
  {
    v9 = *v56;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v55 + 1) + 8 * i);
        topic = [v11 topic];
        fromListID = [v11 fromListID];
        toListID = [v11 toListID];
        v15 = 0;
        if (fromListID > 1)
        {
          if (fromListID == 2)
          {
            v16 = &v60;
            v17 = v53;
          }

          else
          {
            if (fromListID != 3)
            {
              goto LABEL_23;
            }

            v16 = &v59;
            v17 = v54;
          }
        }

        else if (fromListID)
        {
          if (fromListID != 1)
          {
            goto LABEL_23;
          }

          v16 = &v61;
          v17 = v52;
        }

        else
        {
          v16 = &v62;
          v17 = v4;
        }

        v18 = v17;
        v15 = v18;
        if (!v18 || ![(NSArray *)v18 containsObject:topic])
        {
LABEL_23:
          v24 = +[APSLog connection];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = [(APSConnection *)selfCopy _topicListNameForLogging:toListID];
            *buf = 138412546;
            v64 = topic;
            v65 = 2112;
            v66 = v25;
            _os_log_error_impl(&dword_1B233B000, v24, OS_LOG_TYPE_ERROR, "Unable to move topic %@, This topic was not in the list provided! %@", buf, 0x16u);
          }

          goto LABEL_38;
        }

        v19 = *v16;
        if (!*v16)
        {
          v20 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v15];
          v21 = *v16;
          *v16 = v20;

          v19 = *v16;
        }

        [v19 removeObject:topic];
        if (toListID > 1)
        {
          if (toListID == 2)
          {
            v22 = &v60;
            v23 = v53;
            goto LABEL_32;
          }

          if (toListID == 3)
          {
            v22 = &v59;
            v23 = v54;
            goto LABEL_32;
          }
        }

        else
        {
          if (!toListID)
          {
            v22 = &v62;
            v23 = v4;
            goto LABEL_32;
          }

          if (toListID == 1)
          {
            v22 = &v61;
            v23 = v52;
LABEL_32:
            v24 = v23;
            if (!*v22)
            {
              v26 = objc_alloc(MEMORY[0x1E695DFA8]);
              if (v24)
              {
                v27 = [v26 initWithArray:v24];
              }

              else
              {
                v27 = [v26 initWithCapacity:1];
              }

              v28 = *v22;
              *v22 = v27;
            }

            [*v22 addObject:topic];
            goto LABEL_38;
          }
        }

        v24 = +[APSLog connection];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v64 = topic;
          v65 = 2048;
          v66 = toListID;
          _os_log_fault_impl(&dword_1B233B000, v24, OS_LOG_TYPE_FAULT, "Unable to move topic %@, The to list is not valid! %lu", buf, 0x16u);
        }

LABEL_38:
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v55 objects:v67 count:16];
      if (!v8)
      {
        v30 = v61;
        v29 = v62;
        v31 = v59;
        v8 = v60;
        goto LABEL_42;
      }
    }
  }

  v31 = 0;
  v30 = 0;
  v29 = 0;
LABEL_42:
  v51 = v29;

  allObjects = [v29 allObjects];
  v33 = allObjects;
  if (allObjects)
  {
    v34 = allObjects;
  }

  else
  {
    v34 = v4;
  }

  v35 = v34;

  allObjects2 = [v30 allObjects];
  v37 = allObjects2;
  if (allObjects2)
  {
    v38 = allObjects2;
  }

  else
  {
    v38 = v52;
  }

  v39 = v38;

  allObjects3 = [v8 allObjects];
  v41 = allObjects3;
  if (allObjects3)
  {
    v42 = allObjects3;
  }

  else
  {
    v42 = v53;
  }

  v43 = v42;

  allObjects4 = [v31 allObjects];
  v45 = allObjects4;
  if (allObjects4)
  {
    v46 = allObjects4;
  }

  else
  {
    v46 = v54;
  }

  v47 = v46;

  [(APSConnection *)selfCopy _onIvarQueue_setEnabledTopics:v35 ignoredTopics:v43 opportunisticTopics:v39 nonWakingTopics:v47 sendToDaemon:1 completion:0];
  objc_autoreleasePoolPop(context);
  v48 = *MEMORY[0x1E69E9840];
}

void __47__APSConnection__connectIfNecessaryOnIvarQueue__block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *(a1[8] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *(a1[9] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void __48__APSConnection__deliverDidReconnectOnIvarQueue__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[APSLog connection];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling %@ connectionDidReconnect", &v9, 0x16u);
    }

    [v3 connectionDidReconnect:*(a1 + 32)];
    v6 = +[APSLog connection];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1B233B000, v6, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ connectionDidReconnect", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __47__APSConnection__connectIfNecessaryOnIvarQueue__block_invoke_3(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = @"no reply received!";
    goto LABEL_7;
  }

  v5 = MEMORY[0x1B27471A0](v3);
  if (v5 == MEMORY[0x1E69E9E98])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28])];
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = APSGetEnabledTopicsFromXPCDictionary(v4);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = APSGetIgnoredTopicsFromXPCDictionary(v4);
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = APSGetOpportunisticTopicsFromXPCDictionary(v4);
    v17 = *(a1[8] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = APSGetNonWakingTopicsFromXPCDictionary(v4);
    v20 = *(a1[9] + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    *(*(a1[10] + 8) + 24) = APSGetEnableCriticalReliability(v4, 0);
    *(*(a1[11] + 8) + 24) = APSGetEnableStatusNotifications(v4, 0);
    *(*(a1[12] + 8) + 24) = APSGetTrackActivityPresence(v4, 0);
    v22 = APSGetXPCDataFromDictionary(v4, "publicToken");
    v23 = *(a1[13] + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    *(*(a1[14] + 8) + 24) = APSGetXPCIntFromDictionary(v4, "messageSize");
    *(*(a1[15] + 8) + 24) = APSGetXPCIntFromDictionary(v4, "largeMessageSize");
    v6 = 0;
    *(*(a1[16] + 8) + 24) = APSGetXPCBoolFromDictionary(v4, "isConnected");
    v9 = 1;
    goto LABEL_11;
  }

  if (v5 == MEMORY[0x1E69E9E80])
  {
    goto LABEL_10;
  }

  v6 = @"Received reply is not of type dictionary!";
LABEL_7:
  v7 = +[APSLog connection];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    *buf = 138412546;
    v28 = v8;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_1B233B000, v7, OS_LOG_TYPE_DEFAULT, "%@ Bad response from apsd: %@", buf, 0x16u);
  }

  v9 = 0;
LABEL_11:
  *(*(a1[17] + 8) + 24) = v9;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v25 = a1[5];
    if (v25)
    {
      dispatch_semaphore_signal(v25);
    }
  }

  dispatch_group_leave(*(*(a1[18] + 8) + 40));

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_deliverDidReconnectOnIvarQueue
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog connection];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v6, v7, "%@ Delivering did reconnect apsd", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__APSConnection__deliverDidReconnectOnIvarQueue__block_invoke;
  v9[3] = &unk_1E7B22480;
  v9[4] = self;
  [(APSConnection *)self _asyncOnDelegateQueueWithBlock:v9];
  v8 = *MEMORY[0x1E69E9840];
}

- (NSData)publicToken
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__APSConnection_publicToken__block_invoke;
  v5[3] = &unk_1E7B22318;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__APSConnection_publicToken__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v10 = v7;
      v11 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v10, v11, "%@ asked for publicToken, got %@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v15 = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isValidEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && (![environmentCopy compare:@"production"] || !objc_msgSend(environmentCopy, "compare:", @"development") || !objc_msgSend(environmentCopy, "compare:", @"demo") || !objc_msgSend(environmentCopy, "compare:", @"qa2"));

  return v4;
}

- (APSConnection)initWithEnvironmentName:(id)name namedDelegatePort:(id)port queue:(id)queue
{
  v27 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  portCopy = port;
  queueCopy = queue;
  v11 = +[APSLog shouldReduceLogging];
  v12 = +[APSLog connection];
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138413058;
      selfCopy2 = self;
      v21 = 2112;
      v22 = nameCopy;
      v23 = 2112;
      v24 = portCopy;
      v25 = 2112;
      v26 = queueCopy;
      v14 = v13;
      v15 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v14, v15, "Initializing APSConnection %@: env=%@ port=%@ queue=%@", &v19, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138413058;
    selfCopy2 = self;
    v21 = 2112;
    v22 = nameCopy;
    v23 = 2112;
    v24 = portCopy;
    v25 = 2112;
    v26 = queueCopy;
    v14 = v13;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v16 = [(APSConnection *)self _initWithEnvironmentName:nameCopy namedDelegatePort:portCopy enablePushDuringSleep:0 personaUniqueString:0 queue:queueCopy];
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (APSConnection)initWithEnvironmentName:(id)name namedDelegatePort:(id)port personaUniqueString:(id)string queue:(id)queue
{
  v30 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  portCopy = port;
  queueCopy = queue;
  stringCopy = string;
  v14 = +[APSLog shouldReduceLogging];
  v15 = +[APSLog connection];
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v22 = 138413058;
      selfCopy2 = self;
      v24 = 2112;
      v25 = nameCopy;
      v26 = 2112;
      v27 = portCopy;
      v28 = 2112;
      v29 = queueCopy;
      v17 = v16;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v17, v18, "Initializing APSConnection %@: env=%@ port=%@ queue=%@", &v22, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138413058;
    selfCopy2 = self;
    v24 = 2112;
    v25 = nameCopy;
    v26 = 2112;
    v27 = portCopy;
    v28 = 2112;
    v29 = queueCopy;
    v17 = v16;
    v18 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v19 = [(APSConnection *)self _initWithEnvironmentName:nameCopy namedDelegatePort:portCopy enablePushDuringSleep:0 personaUniqueString:stringCopy queue:queueCopy];
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)_initWithEnvironmentName:(id)name namedDelegatePort:(id)port enablePushDuringSleep:(BOOL)sleep personaUniqueString:(id)string queue:(id)queue
{
  v77 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  portCopy = port;
  stringCopy = string;
  queueCopy = queue;
  if ((_os_feature_enabled_impl() & 1) != 0 || ![stringCopy length])
  {
    v68.receiver = self;
    v68.super_class = APSConnection;
    v20 = [(APSConnection *)&v68 init];
    if (!v20)
    {
LABEL_40:
      self = v20;
      selfCopy = self;
      goto LABEL_41;
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"APSConnection-ivarQueue: %@", v20];
    v22 = dispatch_queue_create([v21 UTF8String], 0);
    v23 = *(v20 + 2);
    *(v20 + 2) = v22;

    v24 = [nameCopy copy];
    v25 = *(v20 + 3);
    *(v20 + 3) = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = *(v20 + 9);
    *(v20 + 9) = v26;

    *(v20 + 16) = 0;
    v28 = v20 + 64;
    *(v20 + 10) = 1;
    *(v20 + 40) = vdupq_n_s64(0x1400uLL);
    *(v20 + 47) = 0;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v31 = *(v20 + 17);
    *(v20 + 17) = processName;

    array = [MEMORY[0x1E695DF70] array];
    v33 = *(v20 + 29);
    *(v20 + 29) = array;

    v34 = [portCopy isEqualToString:@"com.apple.aps.ignore.namedPort"];
    v35 = portCopy;
    v36 = v35;
    v37 = 0;
    portCopy = v35;
    if (v35 && (v34 & 1) == 0)
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *buf = 0u;
      v70 = 0u;
      if (([v35 getCString:buf maxLength:128 encoding:4] & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s unable to convert nameOfPort argument to UTF8 string less than %i characters", "-[APSConnection _initWithEnvironmentName:namedDelegatePort:enablePushDuringSleep:personaUniqueString:queue:]", 128}];
      }

      v38 = *MEMORY[0x1E69E99F8];
      v39 = bootstrap_check_in2();
      v37 = v39 != 0;
      portCopy = v36;
      if (v39)
      {
        NSLog(&cfstr_UnableToBootst.isa, v36);

        portCopy = 0;
        *v28 = 0;
      }
    }

    v40 = [portCopy copy];
    v41 = *(v20 + 7);
    *(v20 + 7) = v40;

    if (v34)
    {
      v42 = +[APSLog shouldReduceLogging];
      v43 = +[APSLog connection];
      v44 = v43;
      if (v42)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v45 = v44;
          v46 = OS_LOG_TYPE_DEBUG;
LABEL_28:
          _os_log_impl(&dword_1B233B000, v45, v46, "Client opted out of using a mach port", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v45 = v44;
        v46 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_28;
      }
    }

    else
    {
      v47 = !v37;
      if (!v36)
      {
        v47 = 0;
      }

      if (v47)
      {
LABEL_30:
        if ([*(v20 + 7) length])
        {
          if ((*v28 + 1) <= 1)
          {
            v49 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, v20 + 16);
            if (v49)
            {
              v50 = v49;
              v51 = +[APSLog shouldReduceLogging];
              v52 = +[APSLog connection];
              v53 = v52;
              if (v51)
              {
                if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_45;
                }

                *buf = 0;
                v54 = v53;
                v55 = OS_LOG_TYPE_DEBUG;
              }

              else
              {
                if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_45;
                }

                *buf = 0;
                v54 = v53;
                v55 = OS_LOG_TYPE_DEFAULT;
              }

              _os_log_impl(&dword_1B233B000, v54, v55, "Failed allocating and checking into port", buf, 2u);
LABEL_45:

              [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s unable to allocate delegate port: %s", "-[APSConnection _initWithEnvironmentName:namedDelegatePort:enablePushDuringSleep:personaUniqueString:queue:]", mach_error_string(v50)}];
              if (!queueCopy)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }
          }

          v56 = dispatch_queue_create("APSPortQueue", 0);
          v57 = *(v20 + 11);
          *(v20 + 11) = v56;

          v58 = dispatch_source_create(MEMORY[0x1E69E96D8], *(v20 + 16), 0, *(v20 + 11));
          v59 = *(v20 + 12);
          *(v20 + 12) = v58;

          *buf = 0;
          *&buf[8] = buf;
          *&v70 = 0x3032000000;
          *(&v70 + 1) = __Block_byref_object_copy_;
          *&v71 = __Block_byref_object_dispose_;
          *(&v71 + 1) = *(v20 + 12);
          v60 = *(v20 + 12);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __108__APSConnection__initWithEnvironmentName_namedDelegatePort_enablePushDuringSleep_personaUniqueString_queue___block_invoke;
          handler[3] = &unk_1E7B220A0;
          v67 = buf;
          v66 = portCopy;
          dispatch_source_set_event_handler(v60, handler);
          dispatch_resume(*(v20 + 12));

          _Block_object_dispose(buf, 8);
        }

        if (!queueCopy)
        {
LABEL_39:

          goto LABEL_40;
        }

LABEL_38:
        objc_storeStrong(v20 + 14, queue);
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __108__APSConnection__initWithEnvironmentName_namedDelegatePort_enablePushDuringSleep_personaUniqueString_queue___block_invoke_45;
        v63[3] = &unk_1E7B220C8;
        v64 = v20;
        [v64 _dispatch_async_to_ivarQueue:v63];

        goto LABEL_39;
      }

      v44 = +[APSLog connection];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [APSConnection _initWithEnvironmentName:namedDelegatePort:enablePushDuringSleep:personaUniqueString:queue:];
      }
    }

    goto LABEL_30;
  }

  v15 = +[APSLog shouldReduceLogging];
  v16 = +[APSLog connection];
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = stringCopy;
      v18 = v17;
      v19 = OS_LOG_TYPE_DEBUG;
LABEL_24:
      _os_log_impl(&dword_1B233B000, v18, v19, "Given specific persona string, feature flag is not enabled {personaUniqueString: %@}", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = stringCopy;
    v18 = v17;
    v19 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_24;
  }

  selfCopy = 0;
LABEL_41:

  v61 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

void __108__APSConnection__initWithEnvironmentName_namedDelegatePort_enablePushDuringSleep_personaUniqueString_queue___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = dispatch_mig_server();
  if (v3)
  {
    v4 = v3 == 268435459;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 268451843)
  {
    v6 = v3;
    v7 = +[APSLog shouldReduceLogging];
    v8 = +[APSLog connection];
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = mach_error_string(v6);
        v11 = [*(a1 + 32) UTF8String];
        v17 = 136315394;
        v18 = v10;
        v19 = 2080;
        v20 = v11;
        v12 = v9;
        v13 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&dword_1B233B000, v12, v13, "dispatch_mig_server failed: %s   port: %s\n", &v17, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = mach_error_string(v6);
      v15 = [*(a1 + 32) UTF8String];
      v17 = 136315394;
      v18 = v14;
      v19 = 2080;
      v20 = v15;
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_13;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __108__APSConnection__initWithEnvironmentName_namedDelegatePort_enablePushDuringSleep_personaUniqueString_queue___block_invoke_45(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];

  objc_autoreleasePoolPop(v2);
}

- (void)_shutdownOnIvarQueue
{
  self->_isShutdown = 1;
  [(APSConnection *)self _disconnectOnIvarQueue];
  if (self->_mach_source)
  {
    handle = dispatch_source_get_handle(self->_mach_source);
    dispatch_source_cancel_and_wait();
    if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], handle, 1u, -1))
    {
      fwrite("mach_port_mod_refs() failed\n", 0x1CuLL, 1uLL, *MEMORY[0x1E69E9848]);
    }

    mach_source = self->_mach_source;
    self->_mach_source = 0;

    p_connectionPort = &self->_connectionPort;
  }

  else
  {
    p_connectionPort = &self->_connectionPort;
    connectionPort = self->_connectionPort;
    if (!connectionPort)
    {
      goto LABEL_8;
    }

    mach_port_mod_refs(*MEMORY[0x1E69E9A60], connectionPort, 1u, -1);
  }

  *p_connectionPort = 0;
LABEL_8:
  machQueue = self->_machQueue;
  if (machQueue)
  {
    self->_machQueue = 0;
  }
}

- (void)shutdown
{
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__APSConnection_shutdown__block_invoke;
  block[3] = &unk_1E7B220C8;
  block[4] = self;
  dispatch_sync(ivarQueue, block);
}

uint64_t __25__APSConnection_shutdown__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[14];
  if (v3)
  {
    v2[14] = 0;

    v2 = *(a1 + 32);
  }

  return [v2 _shutdownOnIvarQueue];
}

- (void)_shutdownFromDealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog connection];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      selfCopy2 = self;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v6, v7, "%@ _shutdownFromDealloc", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy2 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSConnection *)self _shutdownOnIvarQueue];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  self->_isDeallocing = 1;
  [(APSConnection *)self _shutdownFromDealloc];
  v3.receiver = self;
  v3.super_class = APSConnection;
  [(APSConnection *)&v3 dealloc];
}

- (APSConnectionDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__APSConnection_delegate__block_invoke;
  v5[3] = &unk_1E7B220A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __25__APSConnection_delegate__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) object];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setDelegate:(id)delegate
{
  v25 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = _os_feature_enabled_impl();
  v6 = +[APSLog shouldReduceLogging];
  v7 = +[APSLog connection];
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v9 = @"NO";
    *buf = 138412802;
    selfCopy2 = self;
    v21 = 2112;
    if (v5)
    {
      v9 = @"YES";
    }

    v22 = delegateCopy;
    v23 = 2112;
    v24 = v9;
    v10 = v8;
    v11 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v12 = @"NO";
    *buf = 138412802;
    selfCopy2 = self;
    v21 = 2112;
    if (v5)
    {
      v12 = @"YES";
    }

    v22 = delegateCopy;
    v23 = 2112;
    v24 = v12;
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v10, v11, "%@ setting delegate %@ {asyncSetDelegate: %@}", buf, 0x20u);
LABEL_11:

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __29__APSConnection_setDelegate___block_invoke;
  v17[3] = &unk_1E7B220F0;
  v17[4] = self;
  v13 = delegateCopy;
  v18 = v13;
  v14 = MEMORY[0x1B2746DE0](v17);
  ivarQueue = self->_ivarQueue;
  if (v5)
  {
    dispatch_async(ivarQueue, v14);
  }

  else
  {
    dispatch_sync(ivarQueue, v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __29__APSConnection_setDelegate___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  if (!*(a1 + 40))
  {
    goto LABEL_17;
  }

  v5 = [MEMORY[0x1E6995700] weakRefWithObject:?];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  *(*(a1 + 32) + 120) = 1;
  v8 = +[APSLog shouldReduceLogging];
  v9 = +[APSLog connection];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = [*(v11 + 128) count];
      *buf = 138412546;
      v33 = v11;
      v34 = 2048;
      v35 = v12;
      v13 = v10;
      v14 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&dword_1B233B000, v13, v14, "%@ Delivering queued delegate calls: %lu", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = [*(v15 + 128) count];
    *buf = 138412546;
    v33 = v15;
    v34 = 2048;
    v35 = v16;
    v13 = v10;
    v14 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = *(*(a1 + 32) + 128);
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = MEMORY[0x1B2746DE0](*(*(&v27 + 1) + 8 * i));
        [*(a1 + 32) _asyncOnDelegateQueueWithBlock:{v22, v27}];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  v23 = *(a1 + 32);
  v24 = *(v23 + 128);
  *(v23 + 128) = 0;

  v25 = *(a1 + 40);
LABEL_17:
  [*(a1 + 32) setEnableStatusNotifications:objc_opt_respondsToSelector() & 1];
  objc_autoreleasePoolPop(v2);
  v26 = *MEMORY[0x1E69E9840];
}

- (void)_asyncOnDelegateQueueWithBlock:(id)block requiresDelegate:(BOOL)delegate
{
  v34 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    v7 = objc_autoreleasePoolPush();
    delegateReference = self->_delegateReference;
    if (!delegateReference && delegate)
    {
      goto LABEL_4;
    }

    if (self->_delegateQueue)
    {
      v14 = delegateReference;
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__APSConnection__asyncOnDelegateQueueWithBlock_requiresDelegate___block_invoke;
      block[3] = &unk_1E7B22118;
      v29 = v14;
      delegateCopy = delegate;
      v30 = blockCopy;
      v16 = v14;
      dispatch_async(delegateQueue, block);

      goto LABEL_23;
    }

    if (!delegateReference)
    {
LABEL_4:
      if (!self->_everHadDelegate)
      {
        v9 = +[APSLog shouldReduceLogging];
        v10 = +[APSLog connection];
        v11 = v10;
        if (v9)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            selfCopy4 = self;
            v12 = v11;
            v13 = OS_LOG_TYPE_DEBUG;
LABEL_19:
            _os_log_impl(&dword_1B233B000, v12, v13, "%@ queuing call to delegate to tolerate setDelegate race", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy4 = self;
          v12 = v11;
          v13 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_19;
        }

        queuedDelegateBlocks = self->_queuedDelegateBlocks;
        if (!queuedDelegateBlocks)
        {
          v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v23 = self->_queuedDelegateBlocks;
          self->_queuedDelegateBlocks = v22;

          v24 = dispatch_time(0, 5000000000);
          ivarQueue = self->_ivarQueue;
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __65__APSConnection__asyncOnDelegateQueueWithBlock_requiresDelegate___block_invoke_59;
          v27[3] = &unk_1E7B220C8;
          v27[4] = self;
          dispatch_after(v24, ivarQueue, v27);
          queuedDelegateBlocks = self->_queuedDelegateBlocks;
        }

        v16 = MEMORY[0x1B2746DE0](blockCopy);
        [(NSMutableArray *)queuedDelegateBlocks addObject:v16];
        goto LABEL_23;
      }
    }

    v17 = +[APSLog shouldReduceLogging];
    v18 = +[APSLog connection];
    v16 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy4 = self;
        v19 = v16;
        v20 = OS_LOG_TYPE_DEBUG;
LABEL_16:
        _os_log_impl(&dword_1B233B000, v19, v20, "%@ dropping delegate call, no delegate", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy4 = self;
      v19 = v16;
      v20 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_16;
    }

LABEL_23:

    objc_autoreleasePoolPop(v7);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __65__APSConnection__asyncOnDelegateQueueWithBlock_requiresDelegate___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) object];
  if (v3 || (*(a1 + 48) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void __65__APSConnection__asyncOnDelegateQueueWithBlock_requiresDelegate___block_invoke_59(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(v3 + 128) count];
    v8 = 138412546;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_1B233B000, v2, OS_LOG_TYPE_DEFAULT, "%@ Flushing any queuedDelegateBlocks %lu", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  *(v5 + 128) = 0;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_noteDisconnectedFromDaemonOnIvarQueue
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog connection];
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    selfCopy4 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    selfCopy4 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v6, v7, "%@ disconnected from apsd...", buf, 0xCu);
LABEL_7:

  allValues = [(NSMutableDictionary *)self->_idsToOutgoingMessages allValues];
  v9 = +[APSLog shouldReduceLogging];
  v10 = +[APSLog connection];
  v11 = v10;
  if (v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v12 = [allValues count];
    *buf = 138412546;
    selfCopy4 = self;
    v37 = 2048;
    v38 = v12;
    v13 = v11;
    v14 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v15 = [allValues count];
    *buf = 138412546;
    selfCopy4 = self;
    v37 = 2048;
    v38 = v15;
    v13 = v11;
    v14 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v13, v14, "%@ failing %lu pending outgoing messages.", buf, 0x16u);
LABEL_13:

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = allValues;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        messageID = [*(*(&v30 + 1) + 8 * i) messageID];
        v28 = APSError(1, @"APSD crashed", v22, v23, v24, v25, v26, v27, v30);
        [(APSConnection *)self _deliverOutgoingMessageResultWithID:messageID error:v28 sendRTT:0];
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_handleEvent:(id)event withHandler:(id)handler errorHandler:(id)errorHandler
{
  v33 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v11 = objc_autoreleasePoolPush();
  v12 = MEMORY[0x1B27471A0](eventCopy);
  if (v12 == MEMORY[0x1E69E9E98])
  {
    if (eventCopy != MEMORY[0x1E69E9E18])
    {
      v13 = MEMORY[0x1E69E9E20];
      v14 = +[APSLog shouldReduceLogging];
      v15 = +[APSLog connection];
      v16 = v15;
      if (eventCopy != v13)
      {
        if (v14)
        {
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_19;
          }

          string = xpc_dictionary_get_string(eventCopy, *MEMORY[0x1E69E9E28]);
          v31 = 136315138;
          v32 = string;
          v18 = v16;
          v19 = OS_LOG_TYPE_DEBUG;
        }

        else
        {
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          v27 = xpc_dictionary_get_string(eventCopy, *MEMORY[0x1E69E9E28]);
          v31 = 136315138;
          v32 = v27;
          v18 = v16;
          v19 = OS_LOG_TYPE_DEFAULT;
        }

        _os_log_impl(&dword_1B233B000, v18, v19, "Unexpected error for service: %s", &v31, 0xCu);
LABEL_19:

        if (!errorHandlerCopy)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (v14)
      {
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_31;
        }

        LOWORD(v31) = 0;
        v25 = v16;
        v26 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        LOWORD(v31) = 0;
        v25 = v16;
        v26 = OS_LOG_TYPE_DEFAULT;
      }

      _os_log_impl(&dword_1B233B000, v25, v26, "_handleEventWithHandler: Connection Invalid for service", &v31, 2u);
LABEL_31:

      __APSConnectionInvalidationHandlerBlock_block_invoke(v30, self->_connection);
      if (!errorHandlerCopy)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v20 = +[APSLog shouldReduceLogging];
    v21 = +[APSLog connection];
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v31) = 0;
        v23 = v22;
        v24 = OS_LOG_TYPE_DEBUG;
LABEL_23:
        _os_log_impl(&dword_1B233B000, v23, v24, "_handleEventWithHandler: Interrupted connection to service", &v31, 2u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      v23 = v22;
      v24 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_23;
    }

    __APSConnectionInterruptedHandlerBlock_block_invoke(v28, self->_connection);
LABEL_25:
    if (!errorHandlerCopy)
    {
      goto LABEL_27;
    }

LABEL_26:
    errorHandlerCopy[2](errorHandlerCopy);
    goto LABEL_27;
  }

  if (v12 != MEMORY[0x1E69E9E80])
  {
    goto LABEL_25;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, eventCopy);
  }

LABEL_27:
  objc_autoreleasePoolPop(v11);

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_reconnectIfNecessaryOnIvarQueueAfterDelay
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_isReconnectScheduled)
  {
    v3 = +[APSLog shouldReduceLogging];
    v4 = +[APSLog connection];
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy6 = self;
        v6 = "%@: Skipping reconnect due to already scheduled reconnect";
LABEL_9:
        v9 = v5;
        v10 = OS_LOG_TYPE_DEBUG;
LABEL_22:
        v20 = 12;
LABEL_23:
        _os_log_impl(&dword_1B233B000, v9, v10, v6, buf, v20);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    selfCopy6 = self;
    v6 = "%@: Skipping reconnect due to already scheduled reconnect";
LABEL_21:
    v9 = v5;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_22;
  }

  if (!self->_connection)
  {
    reconnectDelay = self->_reconnectDelay;
    v12 = reconnectDelay + reconnectDelay;
    v13 = reconnectDelay == 0.0;
    v14 = 0.1;
    if (!v13)
    {
      v14 = v12;
    }

    if (v14 > 300.0)
    {
      v14 = 300.0;
    }

    self->_reconnectDelay = v14;
    self->_isReconnectScheduled = 1;
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    ivarQueue = self->_ivarQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__APSConnection__reconnectIfNecessaryOnIvarQueueAfterDelay__block_invoke;
    block[3] = &unk_1E7B220C8;
    block[4] = self;
    dispatch_after(v15, ivarQueue, block);
    v17 = +[APSLog shouldReduceLogging];
    v18 = +[APSLog connection];
    v5 = v18;
    if (v17)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      v19 = self->_reconnectDelay;
      *buf = 138412546;
      selfCopy6 = self;
      v26 = 2048;
      v27 = v19;
      v6 = "%@: Will attempt reconnect in %f seconds";
      v9 = v5;
      v10 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v22 = self->_reconnectDelay;
      *buf = 138412546;
      selfCopy6 = self;
      v26 = 2048;
      v27 = v22;
      v6 = "%@: Will attempt reconnect in %f seconds";
      v9 = v5;
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    v20 = 22;
    goto LABEL_23;
  }

  v7 = +[APSLog shouldReduceLogging];
  v8 = +[APSLog connection];
  v5 = v8;
  if (!v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    selfCopy6 = self;
    v6 = "%@: Skipping reconnect due to already being connected";
    goto LABEL_21;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy6 = self;
    v6 = "%@: Skipping reconnect due to already being connected";
    goto LABEL_9;
  }

LABEL_24:

  v21 = *MEMORY[0x1E69E9840];
}

_BYTE *__59__APSConnection__reconnectIfNecessaryOnIvarQueueAfterDelay__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 152) = 0;
  result = *(a1 + 32);
  if ((result[153] & 1) == 0 && (result[154] & 1) == 0)
  {
    return [result _connectIfNecessaryOnIvarQueue];
  }

  return result;
}

- (void)_connectIfNecessary
{
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__APSConnection__connectIfNecessary__block_invoke;
  block[3] = &unk_1E7B220C8;
  block[4] = self;
  dispatch_sync(ivarQueue, block);
}

+ (void)_safelyCancelAndReleaseConnection:(id)connection
{
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    xpc_connection_set_event_handler(connectionCopy, &__block_literal_global_91);
    xpc_connection_cancel(v4);
    v5 = v4;
    v6 = dispatch_time(0, 10000000000);
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__APSConnection__safelyCancelAndReleaseConnection___block_invoke_2;
    block[3] = &unk_1E7B220C8;
    v10 = v5;
    v8 = v5;
    dispatch_after(v6, v7, block);
  }
}

- (void)_cancelConnectionOnIvarQueue
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog connection];
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v11 = 138412290;
    selfCopy2 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = 138412290;
    selfCopy2 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v6, v7, "%@ _cancelConnection called", &v11, 0xCu);
LABEL_7:

  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v9 = self->_connection;
    self->_connection = 0;

    [(APSConnection *)self _deliverConnectionStatusChange:0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_cancelConnection
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __34__APSConnection__cancelConnection__block_invoke;
  v2[3] = &unk_1E7B220C8;
  v2[4] = self;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v2];
}

- (void)_disconnectOnIvarQueue
{
  self->_isDisconnected = 1;
  connection = self->_connection;
  if (connection)
  {
    APSXPCConnectionSetEventHandlers(connection, 0, 0, 0);
  }

  [(APSConnection *)self _cancelConnectionOnIvarQueue];
}

- (void)_disconnect
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28__APSConnection__disconnect__block_invoke;
  v2[3] = &unk_1E7B220C8;
  v2[4] = self;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v2];
}

- (void)_disconnectFromDealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog connection];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      selfCopy2 = self;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v6, v7, "%@ _disconnectFromDealloc", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy2 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSConnection *)self _disconnectOnIvarQueue];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)scheduleInRunLoop:(id)loop
{
  loopCopy = loop;
  if (!scheduleInRunLoop__sRunLoopSource)
  {
    scheduleInRunLoop__sRunLoopSource = CFRunLoopSourceCreate(0, 0, &scheduleInRunLoop__sourceContext);
  }

  getCFRunLoop = [loopCopy getCFRunLoop];
  CFRunLoopAddSource(getCFRunLoop, scheduleInRunLoop__sRunLoopSource, *MEMORY[0x1E695E8E0]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__APSConnection_scheduleInRunLoop___block_invoke;
  v7[3] = &unk_1E7B220F0;
  v7[4] = self;
  v8 = loopCopy;
  v6 = loopCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v7];
}

uint64_t __35__APSConnection_scheduleInRunLoop___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v19 = 138412290;
    v20 = v3;
    _os_log_impl(&dword_1B233B000, v2, OS_LOG_TYPE_DEFAULT, "%@ scheduleInRunLoop called", &v19, 0xCu);
  }

  if (*(*(a1 + 32) + 112))
  {
    v4 = +[APSLog connection];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __35__APSConnection_scheduleInRunLoop___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    if (v6)
    {
      *(v5 + 112) = 0;
    }
  }

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x1E695DFD0] mainRunLoop];

  v9 = +[APSLog connection];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7 == v8)
  {
    if (v10)
    {
      v13 = *(a1 + 32);
      v19 = 138412290;
      v20 = v13;
      _os_log_impl(&dword_1B233B000, v9, OS_LOG_TYPE_DEFAULT, "%@ scheduleInRunLoop called with main runloop. Scheduling on main serial queue.", &v19, 0xCu);
    }

    v12 = MEMORY[0x1E69E96A0];
    v14 = MEMORY[0x1E69E96A0];
  }

  else
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      v19 = 138412290;
      v20 = v11;
      _os_log_impl(&dword_1B233B000, v9, OS_LOG_TYPE_DEFAULT, "%@ scheduleInRunLoop called with non-main runloop. Scheduling on non-main serial queue.", &v19, 0xCu);
    }

    v12 = dispatch_queue_create("APSConnectionQueue", 0);
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 112);
  *(v15 + 112) = v12;

  result = [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeFromRunLoop
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog connection];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v6, v7, "%@ removeFromRunLoop", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__APSConnection_removeFromRunLoop__block_invoke;
  v9[3] = &unk_1E7B220C8;
  v9[4] = self;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v9];
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __34__APSConnection_removeFromRunLoop__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[14];
  if (v3)
  {
    v2[14] = 0;

    v2 = *(a1 + 32);
  }

  return [v2 _disconnectOnIvarQueue];
}

- (void)_onIvarQueue_setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics sendToDaemon:(BOOL)daemon completion:(id)completion
{
  daemonCopy = daemon;
  v75 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  ignoredTopicsCopy = ignoredTopics;
  opportunisticTopicsCopy = opportunisticTopics;
  wakingTopicsCopy = wakingTopics;
  completionCopy = completion;
  v19 = 0x1E7B21000uLL;
  v20 = +[APSLog shouldReduceLogging];
  v21 = +[APSLog connection];
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      if (daemonCopy)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v24 = MEMORY[0x1B2746DE0](completionCopy);
      *buf = 138413826;
      selfCopy6 = self;
      v63 = 2112;
      v64 = topicsCopy;
      v65 = 2112;
      v66 = ignoredTopicsCopy;
      v67 = 2112;
      v68 = opportunisticTopicsCopy;
      v69 = 2112;
      v70 = wakingTopicsCopy;
      v71 = 2112;
      v72 = v23;
      v19 = 0x1E7B21000;
      v73 = 2112;
      v74 = v24;
      v25 = v22;
      v26 = OS_LOG_TYPE_DEBUG;
LABEL_12:
      _os_log_impl(&dword_1B233B000, v25, v26, "%@ setEnabledTopics %@ ignoredTopics %@ opportunisticTopics %@ nonWakingTopics %@ sendToDaemon: %@ completion: %@", buf, 0x48u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (daemonCopy)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v24 = MEMORY[0x1B2746DE0](completionCopy);
    *buf = 138413826;
    selfCopy6 = self;
    v63 = 2112;
    v64 = topicsCopy;
    v65 = 2112;
    v66 = ignoredTopicsCopy;
    v67 = 2112;
    v68 = opportunisticTopicsCopy;
    v69 = 2112;
    v70 = wakingTopicsCopy;
    v71 = 2112;
    v72 = v27;
    v19 = 0x1E7B21000uLL;
    v73 = 2112;
    v74 = v24;
    v25 = v22;
    v26 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_12;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = ![(NSArray *)self->_enabledTopics isEqualToArray:topicsCopy]|| ![(NSArray *)self->_ignoredTopics isEqualToArray:ignoredTopicsCopy]|| ![(NSArray *)self->_opportunisticTopics isEqualToArray:opportunisticTopicsCopy]|| ![(NSArray *)self->_nonWakingTopics isEqualToArray:wakingTopicsCopy];
  if (![(NSArray *)self->_enabledTopics count]&& ![(NSArray *)self->_ignoredTopics count]&& ![(NSArray *)self->_opportunisticTopics count]&& ![(NSArray *)self->_nonWakingTopics count])
  {
    shouldReduceLogging = [*(v19 + 3680) shouldReduceLogging];
    connection = [*(v19 + 3680) connection];
    if (shouldReduceLogging)
    {
      v32 = connection;
      if (os_log_type_enabled(connection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy6 = self;
        v33 = v32;
        v34 = OS_LOG_TYPE_DEBUG;
LABEL_28:
        _os_log_impl(&dword_1B233B000, v33, v34, "%@ got all nil topics, considering this as a change to flush any cached topics in apsd for named ports.", buf, 0xCu);
      }
    }

    else
    {
      v32 = connection;
      if (os_log_type_enabled(connection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy6 = self;
        v33 = v32;
        v34 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_28;
      }
    }

    v29 = 1;
  }

  if (daemonCopy)
  {
    [(APSConnection *)self _connectIfNecessaryOnIvarQueue];
  }

  v35 = [topicsCopy copy];
  enabledTopics = self->_enabledTopics;
  self->_enabledTopics = v35;

  v37 = [ignoredTopicsCopy copy];
  ignoredTopics = self->_ignoredTopics;
  self->_ignoredTopics = v37;

  v39 = [opportunisticTopicsCopy copy];
  opportunisticTopics = self->_opportunisticTopics;
  self->_opportunisticTopics = v39;

  v41 = [wakingTopicsCopy copy];
  nonWakingTopics = self->_nonWakingTopics;
  self->_nonWakingTopics = v41;

  v43 = !v29;
  if (!self->_connection)
  {
    v43 = 1;
  }

  if ((v43 & 1) != 0 || !daemonCopy)
  {
    shouldReduceLogging2 = [*(v19 + 3680) shouldReduceLogging];
    connection2 = [*(v19 + 3680) connection];
    v44 = connection2;
    if (shouldReduceLogging2)
    {
      if (!os_log_type_enabled(connection2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_43;
      }

      *buf = 138412290;
      selfCopy6 = self;
      v56 = v44;
      v57 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(connection2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      *buf = 138412290;
      selfCopy6 = self;
      v56 = v44;
      v57 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_1B233B000, v56, v57, "APS %@ _connection is NULL in _sendEnabledTopics:ignoredTopics:opportunisticTopics:!", buf, 0xCu);
    goto LABEL_43;
  }

  v44 = xpc_dictionary_create(0, 0, 0);
  uTF8String = [@"message-type" UTF8String];
  APSInsertIntsToXPCDictionary(v44, uTF8String, v46, v47, v48, v49, v50, v51, 1);
  APSInsertEnabledTopicsToXPCDictionary(v44, self->_enabledTopics);
  APSInsertIgnoredTopicsToXPCDictionary(v44, self->_ignoredTopics);
  APSInsertOpportunisticTopicsToXPCDictionary(v44, self->_opportunisticTopics);
  APSInsertNonWakingTopicsToXPCDictionary(v44, self->_nonWakingTopics);
  connection = self->_connection;
  ivarQueue = self->_ivarQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __121__APSConnection__onIvarQueue_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_sendToDaemon_completion___block_invoke;
  handler[3] = &unk_1E7B22228;
  handler[4] = self;
  v60 = completionCopy;
  xpc_connection_send_message_with_reply(connection, v44, ivarQueue, handler);

LABEL_43:
  objc_autoreleasePoolPop(v28);

  v58 = *MEMORY[0x1E69E9840];
}

void __121__APSConnection__onIvarQueue_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_sendToDaemon_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __121__APSConnection__onIvarQueue_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_sendToDaemon_completion___block_invoke_2;
  v6[3] = &unk_1E7B22200;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 _handleEvent:a2 withHandler:v6];
}

void __121__APSConnection__onIvarQueue_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_sendToDaemon_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    v5 = v7;
    v8 = *(v7 + 112);
    if (v8)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __121__APSConnection__onIvarQueue_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_sendToDaemon_completion___block_invoke_3;
      v10[3] = &unk_1E7B221D8;
      v10[4] = v5;
      v11 = v4;
      dispatch_async(v8, v10);
    }

    else
    {
      v9 = +[APSLog connection];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __121__APSConnection__onIvarQueue_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_sendToDaemon_completion___block_invoke_2_cold_1(v6);
      }
    }
  }
}

uint64_t __121__APSConnection__onIvarQueue_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_sendToDaemon_completion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog shouldReduceLogging];
  v3 = +[APSLog connection];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v12 = 138412290;
      v13 = v5;
      v6 = v4;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v6, v7, "%@ calling topics completion", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412290;
    v13 = v8;
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  result = (*(*(a1 + 40) + 16))(*(a1 + 40), v9);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics sendToDaemon:(BOOL)daemon completion:(id)completion
{
  topicsCopy = topics;
  ignoredTopicsCopy = ignoredTopics;
  opportunisticTopicsCopy = opportunisticTopics;
  wakingTopicsCopy = wakingTopics;
  completionCopy = completion;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __109__APSConnection__setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_sendToDaemon_completion___block_invoke;
  v24[3] = &unk_1E7B22250;
  v24[4] = self;
  v25 = topicsCopy;
  v26 = ignoredTopicsCopy;
  v27 = opportunisticTopicsCopy;
  daemonCopy = daemon;
  v28 = wakingTopicsCopy;
  v29 = completionCopy;
  v19 = completionCopy;
  v20 = wakingTopicsCopy;
  v21 = opportunisticTopicsCopy;
  v22 = ignoredTopicsCopy;
  v23 = topicsCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v24];
}

- (void)setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics completion:(id)completion
{
  completionCopy = completion;
  wakingTopicsCopy = wakingTopics;
  opportunisticTopicsCopy = opportunisticTopics;
  ignoredTopicsCopy = ignoredTopics;
  v16 = [topics copy];
  v17 = [ignoredTopicsCopy copy];

  v18 = [opportunisticTopicsCopy copy];
  v19 = [wakingTopicsCopy copy];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __95__APSConnection_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_completion___block_invoke;
  v25[3] = &unk_1E7B22278;
  v25[4] = self;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = completionCopy;
  v20 = completionCopy;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v25];
}

- (void)setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics
{
  wakingTopicsCopy = wakingTopics;
  opportunisticTopicsCopy = opportunisticTopics;
  ignoredTopicsCopy = ignoredTopics;
  v13 = [topics copy];
  v14 = [ignoredTopicsCopy copy];

  v15 = [opportunisticTopicsCopy copy];
  v16 = [wakingTopicsCopy copy];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__APSConnection_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics___block_invoke;
  v21[3] = &unk_1E7B222A0;
  v21[4] = self;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v21];
}

- (void)setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics
{
  opportunisticTopicsCopy = opportunisticTopics;
  ignoredTopicsCopy = ignoredTopics;
  v10 = [topics copy];
  v11 = [ignoredTopicsCopy copy];

  v12 = [opportunisticTopicsCopy copy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__APSConnection_setEnabledTopics_ignoredTopics_opportunisticTopics___block_invoke;
  v16[3] = &unk_1E7B222C8;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v16];
}

- (void)setEnabledTopics:(id)topics ignoredTopics:(id)ignoredTopics
{
  ignoredTopicsCopy = ignoredTopics;
  v7 = [topics copy];
  v8 = [ignoredTopicsCopy copy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__APSConnection_setEnabledTopics_ignoredTopics___block_invoke;
  v11[3] = &unk_1E7B222F0;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v11];
}

- (void)_setEnabledTopics:(id)topics
{
  v4 = [topics copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__APSConnection__setEnabledTopics___block_invoke;
  v6[3] = &unk_1E7B220F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v6];
}

- (void)_setOpportunisticTopics:(id)topics
{
  v4 = [topics copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__APSConnection__setOpportunisticTopics___block_invoke;
  v6[3] = &unk_1E7B220F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v6];
}

- (void)_setIgnoredTopics:(id)topics
{
  v4 = [topics copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__APSConnection__setIgnoredTopics___block_invoke;
  v6[3] = &unk_1E7B220F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v6];
}

- (void)_setNonWakingTopics:(id)topics
{
  v4 = [topics copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__APSConnection__setNonWakingTopics___block_invoke;
  v6[3] = &unk_1E7B220F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v6];
}

- (NSArray)enabledTopics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__APSConnection_enabledTopics__block_invoke;
  v5[3] = &unk_1E7B220A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__APSConnection_enabledTopics__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 192) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)ignoredTopics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__APSConnection_ignoredTopics__block_invoke;
  v5[3] = &unk_1E7B220A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__APSConnection_ignoredTopics__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 200) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)opportunisticTopics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__APSConnection_opportunisticTopics__block_invoke;
  v5[3] = &unk_1E7B220A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__APSConnection_opportunisticTopics__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)nonWakingTopics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__APSConnection_nonWakingTopics__block_invoke;
  v5[3] = &unk_1E7B220A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__APSConnection_nonWakingTopics__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 216) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_topicListNameForLogging:(unint64_t)logging
{
  if (logging > 4)
  {
    return @"Unknown List";
  }

  else
  {
    return *(&off_1E7B22880 + logging);
  }
}

- (void)moveTopic:(id)topic fromList:(unint64_t)list toList:(unint64_t)toList
{
  v13 = *MEMORY[0x1E69E9840];
  if (topic)
  {
    topicCopy = topic;
    v8 = MEMORY[0x1E695DEC8];
    topicCopy2 = topic;
    v10 = [v8 arrayWithObjects:&topicCopy count:1];

    [(APSConnection *)self moveTopics:v10 fromList:list toList:toList, topicCopy, v13];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)moveTopics:(id)topics fromList:(unint64_t)list toList:(unint64_t)toList
{
  v44 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  v9 = [topicsCopy count];
  if (list == toList || (toList | list) > 3 || !v9)
  {
    goto LABEL_21;
  }

  v10 = +[APSLog shouldReduceLogging];
  v11 = +[APSLog connection];
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(APSConnection *)self _topicListNameForLogging:list];
      v14 = [(APSConnection *)self _topicListNameForLogging:toList];
      *buf = 138413058;
      selfCopy2 = self;
      v38 = 2112;
      v39 = topicsCopy;
      v40 = 2112;
      v41 = v13;
      v42 = 2112;
      v43 = v14;
      v15 = v12;
      v16 = OS_LOG_TYPE_DEBUG;
LABEL_9:
      _os_log_impl(&dword_1B233B000, v15, v16, "%@ moveTopics %@ fromList %@ toList %@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(APSConnection *)self _topicListNameForLogging:list];
    v14 = [(APSConnection *)self _topicListNameForLogging:toList];
    *buf = 138413058;
    selfCopy2 = self;
    v38 = 2112;
    v39 = topicsCopy;
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v14;
    v15 = v12;
    v16 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_9;
  }

  os_unfair_lock_lock(&self->_topicMoveLock);
  accumulatedTopicMoves = self->_accumulatedTopicMoves;
  if (!accumulatedTopicMoves)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = self->_accumulatedTopicMoves;
    self->_accumulatedTopicMoves = v17;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = topicsCopy;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v31 + 1) + 8 * i);
        v25 = objc_alloc_init(_APSTopicMove);
        [(_APSTopicMove *)v25 setTopic:v24];
        [(_APSTopicMove *)v25 setFromListID:list];
        [(_APSTopicMove *)v25 setToListID:toList];
        [(NSMutableArray *)self->_accumulatedTopicMoves addObject:v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v21);
  }

  os_unfair_lock_unlock(&self->_topicMoveLock);
  if (!accumulatedTopicMoves)
  {
    v26 = dispatch_time(0, 500000000);
    ivarQueue = self->_ivarQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__APSConnection_moveTopics_fromList_toList___block_invoke;
    block[3] = &unk_1E7B220C8;
    block[4] = self;
    dispatch_after(v26, ivarQueue, block);
  }

LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_setTrackActivityPresence:(BOOL)presence sendToDaemon:(BOOL)daemon
{
  daemonCopy = daemon;
  presenceCopy = presence;
  v26 = *MEMORY[0x1E69E9840];
  v7 = +[APSLog shouldReduceLogging];
  v8 = +[APSLog connection];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = @"NO";
      if (presenceCopy)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      *buf = 138412802;
      selfCopy2 = self;
      v23 = v11;
      v22 = 2112;
      if (daemonCopy)
      {
        v10 = @"YES";
      }

      v24 = 2112;
      v25 = v10;
      v12 = v9;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_16:
      _os_log_impl(&dword_1B233B000, v12, v13, "%@ _setTrackActivityPresence %@ sendToDaemon %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (presenceCopy)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    *buf = 138412802;
    selfCopy2 = self;
    v23 = v15;
    v22 = 2112;
    if (daemonCopy)
    {
      v14 = @"YES";
    }

    v24 = 2112;
    v25 = v14;
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_16;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__APSConnection__setTrackActivityPresence_sendToDaemon___block_invoke;
  v17[3] = &unk_1E7B22368;
  v17[4] = self;
  v18 = presenceCopy;
  v19 = daemonCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v17];
  v16 = *MEMORY[0x1E69E9840];
}

void __56__APSConnection__setTrackActivityPresence_sendToDaemon___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 71) != v2)
  {
    *(v1 + 71) = v2;
    if (*(a1 + 41) == 1)
    {
      [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
      if (*(*(a1 + 32) + 104))
      {
        v4 = xpc_dictionary_create(0, 0, 0);
        v5 = [@"message-type" UTF8String];
        APSInsertIntsToXPCDictionary(v4, v5, v6, v7, v8, v9, v10, v11, 4);
        [*(a1 + 32) _addTrackActivityPresenceToXPCMessage:v4];
        v12 = *(a1 + 32);
        v13 = *(v12 + 104);
        v14 = *(v12 + 16);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __56__APSConnection__setTrackActivityPresence_sendToDaemon___block_invoke_2;
        handler[3] = &unk_1E7B22160;
        handler[4] = v12;
        xpc_connection_send_message_with_reply(v13, v4, v14, handler);
      }

      else
      {
        v4 = +[APSLog connection];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          *buf = 138412290;
          v19 = v15;
          _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ _connection is NULL in _setTrackActivityPresence!", buf, 0xCu);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __56__APSConnection__setTrackActivityPresence_sendToDaemon___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__APSConnection__setTrackActivityPresence_sendToDaemon___block_invoke_3;
  v6[3] = &unk_1E7B22340;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v4 _handleEvent:v5 withHandler:v6];
}

uint64_t __56__APSConnection__setTrackActivityPresence_sendToDaemon___block_invoke_3(uint64_t a1)
{
  v2 = APSGetTrackActivityPresence(*(a1 + 32), 0);
  v3 = *(a1 + 40);

  return [v3 _setTrackActivityPresence:v2 sendToDaemon:0];
}

- (BOOL)trackActivityPresence
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__APSConnection_trackActivityPresence__block_invoke;
  v5[3] = &unk_1E7B22318;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__APSConnection_trackActivityPresence__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 71);
  return result;
}

- (void)setMessageSize:(unint64_t)size
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v14 = 2048;
      sizeCopy2 = size;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v8, v9, "%@ setMessageSize: %lu", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v14 = 2048;
    sizeCopy2 = size;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__APSConnection_setMessageSize___block_invoke;
  v11[3] = &unk_1E7B22390;
  v11[4] = self;
  v11[5] = size;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v11];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setLargeMessageSize:(unint64_t)size
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v15 = 2048;
      sizeCopy2 = size;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v8, v9, "%@ setLargeMessageSize: %lu", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v15 = 2048;
    sizeCopy2 = size;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  ivarQueue = self->_ivarQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__APSConnection_setLargeMessageSize___block_invoke;
  v12[3] = &unk_1E7B22390;
  v12[4] = self;
  v12[5] = size;
  dispatch_async(ivarQueue, v12);
  v11 = *MEMORY[0x1E69E9840];
}

+ (__SecIdentity)copyIdentity
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__APSConnection_copyIdentity__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (copyIdentity_onceToken != -1)
  {
    dispatch_once(&copyIdentity_onceToken, block);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__APSConnection_copyIdentity__block_invoke_2;
  v4[3] = &unk_1E7B223B8;
  v4[4] = &v5;
  dispatch_sync(sIdentityQueue, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __29__APSConnection_copyIdentity__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("copyIdentityQueue", 0);
  v3 = sIdentityQueue;
  sIdentityQueue = v2;

  info = 0;
  mach_timebase_info(&info);
  LODWORD(v5) = info.denom;
  LODWORD(v4) = info.numer;
  *&copyIdentity_sTimeScale = v4 / v5 * 0.000000001;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _APSClientIdentityUpdatedNotificationFired, @"APSClientIdentityUpdatedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

CFTypeRef __29__APSConnection_copyIdentity__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = sIdentity;
  v3 = +[APSLog connection];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1B233B000, v3, OS_LOG_TYPE_DEFAULT, "Returning cached identity", buf, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = sIdentity;
    v5 = *(*(*(a1 + 32) + 8) + 24);
LABEL_5:
    v5 = CFRetain(v5);
    goto LABEL_6;
  }

  if (v4)
  {
    *buf = 0;
    _os_log_impl(&dword_1B233B000, v3, OS_LOG_TYPE_DEFAULT, "Copying identity...", buf, 2u);
  }

  result = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], @"com.apple.apsd");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ADC8], @"APSClientIdentity");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B010]);
  v8 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B328], *MEMORY[0x1E695E4D0]);
  v9 = +[APSMultiUserMode sharedInstance];
  v10 = [v9 isMultiUser];

  if (v10)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3A8], v8);
  }

  v11 = SecItemCopyMatching(Mutable, &result);
  if (v11 != -25300 && v11)
  {
    v16 = v11;
    NSLog(&cfstr_Secitemcopymat.isa, v11);
    v12 = +[APSLog connection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = v16;
      v13 = "SecItemCopyMatching() failed: %ld";
      v14 = v12;
      v15 = 12;
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!result)
  {
    NSLog(&cfstr_NoIdentityFoun.isa);
    v12 = +[APSLog connection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "No identity found!";
      v14 = v12;
      v15 = 2;
LABEL_18:
      _os_log_impl(&dword_1B233B000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

LABEL_20:
  CFRelease(Mutable);
  v5 = sIdentity;
  if (sIdentity != result)
  {
    if (sIdentity)
    {
      CFRelease(sIdentity);
    }

    *&copyIdentity_sCacheMachAge = *&copyIdentity_sTimeScale * mach_absolute_time();
    sIdentity = result;
    v17 = dispatch_time(0, 60000000000);
    dispatch_after(v17, sIdentityQueue, &__block_literal_global_131);
    *(*(*(a1 + 32) + 8) + 24) = sIdentity;
    v5 = *(*(*(a1 + 32) + 8) + 24);
    if (v5)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void __29__APSConnection_copyIdentity__block_invoke_129()
{
  if (-(*&copyIdentity_sCacheMachAge - mach_absolute_time() * *&copyIdentity_sTimeScale) > 30.0 && sIdentity != 0)
  {
    v1 = +[APSLog connection];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B233B000, v1, OS_LOG_TYPE_DEFAULT, "Flushing cached identity", v2, 2u);
    }

    CFRelease(sIdentity);
    sIdentity = 0;
  }
}

+ (void)_flushIdentityCache
{
  if (sIdentityQueue)
  {
    dispatch_async(sIdentityQueue, &__block_literal_global_133);
  }
}

void __36__APSConnection__flushIdentityCache__block_invoke()
{
  if (sIdentity)
  {
    v0 = +[APSLog shouldReduceLogging];
    v1 = +[APSLog connection];
    v2 = v1;
    if (v0)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
      {
        v7 = 0;
        v3 = &v7;
        v4 = v2;
        v5 = OS_LOG_TYPE_DEBUG;
LABEL_7:
        _os_log_impl(&dword_1B233B000, v4, v5, "Flushing cached identity", v3, 2u);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0;
      v3 = &v6;
      v4 = v2;
      v5 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }

    CFRelease(sIdentity);
    sIdentity = 0;
  }
}

- (void)forceClientIdentityProviderSwapWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__APSConnection_forceClientIdentityProviderSwapWithCompletion___block_invoke;
  v6[3] = &unk_1E7B221D8;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v6];
}

void __63__APSConnection_forceClientIdentityProviderSwapWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(v2, v3, v4, v5, v6, v7, v8, v9, 28);
    v10 = +[APSLog connection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B233B000, v10, OS_LOG_TYPE_DEFAULT, "Requesting to sign data with device push identity", buf, 2u);
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(v12 + 104);
    v14 = *(v12 + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __63__APSConnection_forceClientIdentityProviderSwapWithCompletion___block_invoke_134;
    handler[3] = &unk_1E7B22228;
    handler[4] = v12;
    v16 = v11;
    xpc_connection_send_message_with_reply(v13, v2, v14, handler);
  }
}

void __63__APSConnection_forceClientIdentityProviderSwapWithCompletion___block_invoke_134(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__APSConnection_forceClientIdentityProviderSwapWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7B223E0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _handleEvent:a2 withHandler:v4];
}

uint64_t __63__APSConnection_forceClientIdentityProviderSwapWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B233B000, v2, OS_LOG_TYPE_DEFAULT, "Received response to swap identity request", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)signDataWithDeviceIdentity:(id)identity withCompletion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__APSConnection_signDataWithDeviceIdentity_withCompletion___block_invoke;
  v10[3] = &unk_1E7B22408;
  v10[4] = self;
  v11 = identityCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identityCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v10];
}

void __59__APSConnection_signDataWithDeviceIdentity_withCompletion___block_invoke(id *a1)
{
  [a1[4] _connectIfNecessaryOnIvarQueue];
  if (*(a1[4] + 13))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(v2, v3, v4, v5, v6, v7, v8, v9, 26);
    v10 = [a1[5] data];

    if (v10)
    {
      v11 = [a1[5] data];
      APSInsertDatasToXPCDictionary(v2, "dataToSign", v12, v13, v14, v15, v16, v17, v11);
    }

    v18 = [a1[5] time];

    if (v18)
    {
      v19 = [a1[5] time];
      v20 = [v19 unsignedLongLongValue];
      APSInsertUnsignedLongLongsToXPCDictionary(v2, "serverTime", v21, v22, v23, v24, v25, v26, v20);
    }

    v27 = +[APSLog connection];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B233B000, v27, OS_LOG_TYPE_DEFAULT, "Requesting to sign data with device push identity", buf, 2u);
    }

    v28 = a1[4];
    v29 = *(v28 + 13);
    v30 = *(v28 + 2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __59__APSConnection_signDataWithDeviceIdentity_withCompletion___block_invoke_137;
    handler[3] = &unk_1E7B22228;
    handler[4] = v28;
    v32 = a1[6];
    xpc_connection_send_message_with_reply(v29, v2, v30, handler);
  }
}

void __59__APSConnection_signDataWithDeviceIdentity_withCompletion___block_invoke_137(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__APSConnection_signDataWithDeviceIdentity_withCompletion___block_invoke_2;
  v6[3] = &unk_1E7B22228;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _handleEvent:v5 withHandler:v6];
}

void __59__APSConnection_signDataWithDeviceIdentity_withCompletion___block_invoke_2(uint64_t a1)
{
  v5 = objc_alloc_init(APSSignDataWithIdentityResponse);
  v2 = APSGetXPCArrayFromDictionary(*(a1 + 32), "pushCerts");
  [(APSSignDataWithIdentityResponse *)v5 setCertificates:v2];

  v3 = APSGetXPCDataFromDictionary(*(a1 + 32), "nonce");
  [(APSSignDataWithIdentityResponse *)v5 setNonce:v3];

  v4 = APSGetXPCDataFromDictionary(*(a1 + 32), "sig");
  [(APSSignDataWithIdentityResponse *)v5 setSignature:v4];

  (*(*(a1 + 40) + 16))();
}

- (void)rollBAACertsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__APSConnection_rollBAACertsWithCompletion___block_invoke;
  v6[3] = &unk_1E7B221D8;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v6];
}

void __44__APSConnection_rollBAACertsWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(v2, v3, v4, v5, v6, v7, v8, v9, 27);
    v10 = +[APSLog connection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B233B000, v10, OS_LOG_TYPE_DEFAULT, "Requesting to roll BAA certs and push identity for all environments", buf, 2u);
    }

    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(v12 + 104);
    v14 = *(v12 + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__APSConnection_rollBAACertsWithCompletion___block_invoke_142;
    handler[3] = &unk_1E7B22228;
    handler[4] = v12;
    v16 = v11;
    xpc_connection_send_message_with_reply(v13, v2, v14, handler);
  }
}

void __44__APSConnection_rollBAACertsWithCompletion___block_invoke_142(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__APSConnection_rollBAACertsWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7B223E0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _handleEvent:a2 withHandler:v4];
}

- (void)rollTokensAndReconnect:(id)reconnect
{
  reconnectCopy = reconnect;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__APSConnection_rollTokensAndReconnect___block_invoke;
  v6[3] = &unk_1E7B221D8;
  v6[4] = self;
  v7 = reconnectCopy;
  v5 = reconnectCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v6];
}

void __40__APSConnection_rollTokensAndReconnect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(v2, v3, v4, v5, v6, v7, v8, v9, 30);
    v10 = +[APSLog connection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B233B000, v10, OS_LOG_TYPE_DEFAULT, "Requesting to roll tokens and force a reconnect", buf, 2u);
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 104);
    v13 = *(v11 + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__APSConnection_rollTokensAndReconnect___block_invoke_143;
    handler[3] = &unk_1E7B223E0;
    v15 = *(a1 + 40);
    xpc_connection_send_message_with_reply(v12, v2, v13, handler);
  }
}

- (BOOL)isConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__APSConnection_isConnected__block_invoke;
  v5[3] = &unk_1E7B22318;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__APSConnection_isConnected__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 70);
  return result;
}

- (void)_setEnableCriticalReliability:(BOOL)reliability sendToDaemon:(BOOL)daemon
{
  daemonCopy = daemon;
  reliabilityCopy = reliability;
  v26 = *MEMORY[0x1E69E9840];
  v7 = +[APSLog shouldReduceLogging];
  v8 = +[APSLog connection];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = @"NO";
      if (reliabilityCopy)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      *buf = 138412802;
      selfCopy2 = self;
      v23 = v11;
      v22 = 2112;
      if (daemonCopy)
      {
        v10 = @"YES";
      }

      v24 = 2112;
      v25 = v10;
      v12 = v9;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_16:
      _os_log_impl(&dword_1B233B000, v12, v13, "%@ setEnableCriticalReliability %@ sendToDaemon %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (reliabilityCopy)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    *buf = 138412802;
    selfCopy2 = self;
    v23 = v15;
    v22 = 2112;
    if (daemonCopy)
    {
      v14 = @"YES";
    }

    v24 = 2112;
    v25 = v14;
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_16;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__APSConnection__setEnableCriticalReliability_sendToDaemon___block_invoke;
  v17[3] = &unk_1E7B22368;
  v17[4] = self;
  v18 = reliabilityCopy;
  v19 = daemonCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v17];
  v16 = *MEMORY[0x1E69E9840];
}

void __60__APSConnection__setEnableCriticalReliability_sendToDaemon___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 68) != v2)
  {
    *(v1 + 68) = v2;
    if (*(a1 + 41) == 1)
    {
      [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
      if (*(*(a1 + 32) + 104))
      {
        v4 = xpc_dictionary_create(0, 0, 0);
        v5 = [@"message-type" UTF8String];
        APSInsertIntsToXPCDictionary(v4, v5, v6, v7, v8, v9, v10, v11, 2);
        [*(a1 + 32) _addEnableCriticalReliabilityToXPCMessage:v4];
        v12 = *(a1 + 32);
        v13 = *(v12 + 104);
        v14 = *(v12 + 16);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __60__APSConnection__setEnableCriticalReliability_sendToDaemon___block_invoke_2;
        handler[3] = &unk_1E7B22160;
        handler[4] = v12;
        xpc_connection_send_message_with_reply(v13, v4, v14, handler);
      }

      else
      {
        v4 = +[APSLog connection];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          *buf = 138412290;
          v19 = v15;
          _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ _connection is NULL in _sendEnableCriticalReliability!", buf, 0xCu);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __60__APSConnection__setEnableCriticalReliability_sendToDaemon___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__APSConnection__setEnableCriticalReliability_sendToDaemon___block_invoke_3;
  v6[3] = &unk_1E7B22340;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v4 _handleEvent:v5 withHandler:v6];
}

uint64_t __60__APSConnection__setEnableCriticalReliability_sendToDaemon___block_invoke_3(uint64_t a1)
{
  v2 = APSGetEnableCriticalReliability(*(a1 + 32), 0);
  v3 = *(a1 + 40);

  return [v3 _setEnableCriticalReliability:v2 sendToDaemon:0];
}

- (void)_setEnableStatusNotifications:(BOOL)notifications sendToDaemon:(BOOL)daemon
{
  daemonCopy = daemon;
  notificationsCopy = notifications;
  v26 = *MEMORY[0x1E69E9840];
  v7 = +[APSLog shouldReduceLogging];
  v8 = +[APSLog connection];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = @"NO";
      if (notificationsCopy)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      *buf = 138412802;
      selfCopy2 = self;
      v23 = v11;
      v22 = 2112;
      if (daemonCopy)
      {
        v10 = @"YES";
      }

      v24 = 2112;
      v25 = v10;
      v12 = v9;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_16:
      _os_log_impl(&dword_1B233B000, v12, v13, "%@ _setEnableStatusNotifications %@ sendToDaemon %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (notificationsCopy)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    *buf = 138412802;
    selfCopy2 = self;
    v23 = v15;
    v22 = 2112;
    if (daemonCopy)
    {
      v14 = @"YES";
    }

    v24 = 2112;
    v25 = v14;
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_16;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__APSConnection__setEnableStatusNotifications_sendToDaemon___block_invoke;
  v17[3] = &unk_1E7B22368;
  v17[4] = self;
  v18 = notificationsCopy;
  v19 = daemonCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v17];
  v16 = *MEMORY[0x1E69E9840];
}

void __60__APSConnection__setEnableStatusNotifications_sendToDaemon___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 69) != v2)
  {
    *(v1 + 69) = v2;
    if (*(a1 + 41) == 1)
    {
      [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
      if (*(*(a1 + 32) + 104))
      {
        v4 = xpc_dictionary_create(0, 0, 0);
        v5 = [@"message-type" UTF8String];
        APSInsertIntsToXPCDictionary(v4, v5, v6, v7, v8, v9, v10, v11, 3);
        [*(a1 + 32) _addEnableStatusNotificationsToXPCMessage:v4];
        v12 = *(a1 + 32);
        v13 = *(v12 + 104);
        v14 = *(v12 + 16);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __60__APSConnection__setEnableStatusNotifications_sendToDaemon___block_invoke_2;
        handler[3] = &unk_1E7B22160;
        handler[4] = v12;
        xpc_connection_send_message_with_reply(v13, v4, v14, handler);
      }

      else
      {
        v4 = +[APSLog connection];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          *buf = 138412290;
          v19 = v15;
          _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ _connection is NULL in _sendEnableStatusNotifications.", buf, 0xCu);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __60__APSConnection__setEnableStatusNotifications_sendToDaemon___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__APSConnection__setEnableStatusNotifications_sendToDaemon___block_invoke_3;
  v6[3] = &unk_1E7B22340;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v4 _handleEvent:v5 withHandler:v6];
}

uint64_t __60__APSConnection__setEnableStatusNotifications_sendToDaemon___block_invoke_3(uint64_t a1)
{
  v2 = APSGetEnableStatusNotifications(*(a1 + 32), 0);
  v3 = *(a1 + 40);

  return [v3 _setEnableStatusNotifications:v2 sendToDaemon:0];
}

- (void)_dispatch_sync_to_ivarQueue:(id)queue shutdownBlock:(id)block
{
  queueCopy = queue;
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__APSConnection__dispatch_sync_to_ivarQueue_shutdownBlock___block_invoke;
  block[3] = &unk_1E7B22430;
  v9 = queueCopy;
  v7 = queueCopy;
  dispatch_sync(ivarQueue, block);
}

- (void)_dispatch_async_to_ivarQueue:(id)queue shutdownBlock:(id)block
{
  queueCopy = queue;
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__APSConnection__dispatch_async_to_ivarQueue_shutdownBlock___block_invoke;
  block[3] = &unk_1E7B22430;
  v9 = queueCopy;
  v7 = queueCopy;
  dispatch_async(ivarQueue, block);
}

- (void)_deliverMessage:(id)message
{
  v41 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    identifier = [messageCopy identifier];
    topic = [messageCopy topic];
    *buf = 138413058;
    selfCopy9 = self;
    v35 = 2112;
    v36 = messageCopy;
    v37 = 2048;
    v38 = identifier;
    v39 = 2112;
    v40 = topic;
    v10 = v7;
    v11 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    identifier2 = [messageCopy identifier];
    topic = [messageCopy topic];
    *buf = 138413058;
    selfCopy9 = self;
    v35 = 2112;
    v36 = messageCopy;
    v37 = 2048;
    v38 = identifier2;
    v39 = 2112;
    v40 = topic;
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v10, v11, "%@ Delivering message from apsd: %@ %lu %@", buf, 0x2Au);

LABEL_7:
  v13 = +[APSLog PUSHTRACE];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    tracingUUID = [messageCopy tracingUUID];
    *buf = 138412546;
    selfCopy9 = self;
    v35 = 2112;
    v36 = tracingUUID;
    _os_log_impl(&dword_1B233B000, v13, OS_LOG_TYPE_DEFAULT, "%@ Delivering message from apsd. UUID: %@", buf, 0x16u);
  }

  topic2 = [messageCopy topic];
  userInfo = [messageCopy userInfo];
  if (!messageCopy)
  {
    v17 = +[APSLog shouldReduceLogging];
    v18 = +[APSLog connection];
    v19 = v18;
    if (v17)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_33;
      }

      *buf = 138412290;
      selfCopy9 = self;
      v20 = "%@ Received empty APS message from apsd";
      v21 = v19;
      v22 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 138412290;
      selfCopy9 = self;
      v20 = "%@ Received empty APS message from apsd";
      v21 = v19;
      v22 = OS_LOG_TYPE_DEFAULT;
    }

    v25 = 12;
LABEL_32:
    _os_log_impl(&dword_1B233B000, v21, v22, v20, buf, v25);
    goto LABEL_33;
  }

  if (![topic2 length])
  {
    v23 = +[APSLog shouldReduceLogging];
    v24 = +[APSLog connection];
    v19 = v24;
    if (v23)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        selfCopy9 = self;
        v35 = 2112;
        v36 = messageCopy;
        v20 = "%@ Received empty topic from apsd: %@";
LABEL_25:
        v21 = v19;
        v22 = OS_LOG_TYPE_DEBUG;
LABEL_31:
        v25 = 22;
        goto LABEL_32;
      }

LABEL_33:

      goto LABEL_34;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 138412546;
    selfCopy9 = self;
    v35 = 2112;
    v36 = messageCopy;
    v20 = "%@ Received empty topic from apsd: %@";
LABEL_30:
    v21 = v19;
    v22 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_31;
  }

  if (!userInfo)
  {
    v26 = +[APSLog shouldReduceLogging];
    v27 = +[APSLog connection];
    v19 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        selfCopy9 = self;
        v35 = 2112;
        v36 = messageCopy;
        v20 = "%@ Received empty userInfo from apsd: %@";
        goto LABEL_25;
      }

      goto LABEL_33;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 138412546;
    selfCopy9 = self;
    v35 = 2112;
    v36 = messageCopy;
    v20 = "%@ Received empty userInfo from apsd: %@";
    goto LABEL_30;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __33__APSConnection__deliverMessage___block_invoke;
  v29[3] = &unk_1E7B222C8;
  v29[4] = self;
  v30 = topic2;
  v31 = messageCopy;
  v32 = userInfo;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v29];

LABEL_34:
  v28 = *MEMORY[0x1E69E9840];
}

void __33__APSConnection__deliverMessage___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  if (([*(*(a1 + 32) + 192) containsObject:*(a1 + 40)] & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 192), "containsObject:", @"*") & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 208), "containsObject:", *(a1 + 40)) & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 208), "containsObject:", @"*") & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 216), "containsObject:", *(a1 + 40)) & 1) == 0 && !objc_msgSend(*(*(a1 + 32) + 216), "containsObject:", @"*"))
  {
    v12 = +[APSLog shouldReduceLogging];
    v13 = +[APSLog connection];
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 48);
        v17 = v15[24];
        v18 = v15[26];
        v19 = v15[27];
        *buf = 138413314;
        v34 = v15;
        v35 = 2112;
        v36 = v16;
        v37 = 2112;
        v38 = v17;
        v39 = 2112;
        v40 = v18;
        v41 = 2112;
        v42 = v19;
        v20 = v14;
        v21 = OS_LOG_TYPE_DEBUG;
LABEL_14:
        _os_log_impl(&dword_1B233B000, v20, v21, "%@ Received message from apsd: %@ but it didn't match the enabled topics: %@ or opportunistic topics: %@ or non-waking topics: %@", buf, 0x34u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 48);
      v24 = v22[24];
      v25 = v22[26];
      v26 = v22[27];
      *buf = 138413314;
      v34 = v22;
      v35 = 2112;
      v36 = v23;
      v37 = 2112;
      v38 = v24;
      v39 = 2112;
      v40 = v25;
      v41 = 2112;
      v42 = v26;
      v20 = v14;
      v21 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  dispatch_group_enter(v2);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __33__APSConnection__deliverMessage___block_invoke_2;
  v29[3] = &unk_1E7B22458;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v30 = v8;
  v31 = v7;
  v32 = v2;
  [v3 _asyncOnDelegateQueueWithBlock:v29];

LABEL_8:
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__APSConnection__deliverMessage___block_invoke_153;
  block[3] = &unk_1E7B220F0;
  block[4] = v9;
  v28 = *(a1 + 48);
  dispatch_group_notify(v2, v10, block);

  v11 = *MEMORY[0x1E69E9840];
}

void __33__APSConnection__deliverMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[APSLog connection];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) identifier];
    v7 = APSLoggableDescriptionForObjectOnTopic_NoLoad(*(a1 + 48), *(a1 + 56));
    v8 = *(a1 + 56);
    v18 = 138413314;
    v19 = v5;
    v20 = 2112;
    v21 = v3;
    v22 = 2048;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ making delegate (%@) calls to deliver message %lu %@ for topic %@", &v18, 0x34u);
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = +[APSLog connection];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_1B233B000, v9, OS_LOG_TYPE_DEFAULT, "%@ calling %@ connection:didReceiveMessageForTopic:", &v18, 0x16u);
    }

    [v3 connection:*(a1 + 32) didReceiveMessageForTopic:*(a1 + 56) userInfo:*(a1 + 48)];
    v11 = +[APSLog connection];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v18 = 138412546;
      v19 = v12;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_1B233B000, v11, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ connection:didReceiveMessageForTopic:", &v18, 0x16u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = +[APSLog connection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_1B233B000, v13, OS_LOG_TYPE_DEFAULT, "%@ calling %@ connection:didReceiveIncomingMessage:", &v18, 0x16u);
    }

    [v3 connection:*(a1 + 32) didReceiveIncomingMessage:*(a1 + 40)];
    v15 = +[APSLog connection];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_1B233B000, v15, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ connection:didReceiveIncomingMessage:", &v18, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 64));

  v17 = *MEMORY[0x1E69E9840];
}

void __33__APSConnection__deliverMessage___block_invoke_153(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog shouldReduceLogging];
  v3 = +[APSLog connection];
  v4 = v3;
  if (v2)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) guid];
    *buf = 138412546;
    v51 = v5;
    v52 = 2112;
    v53 = v6;
    v7 = v4;
    v8 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    v6 = [*(a1 + 40) guid];
    *buf = 138412546;
    v51 = v9;
    v52 = 2112;
    v53 = v6;
    v7 = v4;
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v7, v8, "%@ responding with an ack for message with guid %@", buf, 0x16u);

LABEL_7:
  v10 = +[APSLog PUSHTRACE];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) tracingUUID];
    *buf = 138412546;
    v51 = v11;
    v52 = 2112;
    v53 = v12;
    _os_log_impl(&dword_1B233B000, v10, OS_LOG_TYPE_DEFAULT, "%@ responding with an ack. UUID: %@", buf, 0x16u);
  }

  v13 = [*(a1 + 40) guid];

  if (v13)
  {
    [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
    if (*(*(a1 + 32) + 104))
    {
      v14 = xpc_dictionary_create(0, 0, 0);
      v15 = [@"message-type" UTF8String];
      APSInsertIntsToXPCDictionary(v14, v15, v16, v17, v18, v19, v20, v21, 22);
      v22 = [*(a1 + 40) guid];
      APSInsertNSStringsToXPCDictionary(v14, "guid", v23, v24, v25, v26, v27, v28, v22);

      if ([*(a1 + 40) isTracingEnabled])
      {
        v29 = [*(a1 + 40) tracingUUID];
        APSInsertDatasToXPCDictionary(v14, "tracingUUID", v30, v31, v32, v33, v34, v35, v29);

        v36 = [*(a1 + 40) topic];
        APSInsertNSStringsToXPCDictionary(v14, "topic", v37, v38, v39, v40, v41, v42, v36);
      }

      xpc_connection_send_message(*(*(a1 + 32) + 104), v14);
      goto LABEL_20;
    }

    v43 = +[APSLog shouldReduceLogging];
    v44 = +[APSLog connection];
    v14 = v44;
    if (v43)
    {
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v45 = *(a1 + 32);
        *buf = 138412290;
        v51 = v45;
        v46 = v14;
        v47 = OS_LOG_TYPE_DEBUG;
LABEL_19:
        _os_log_impl(&dword_1B233B000, v46, v47, "%@ _connection is NULL in _deliverMessage:.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a1 + 32);
      *buf = 138412290;
      v51 = v48;
      v46 = v14;
      v47 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_19;
    }

LABEL_20:
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (void)_deliverPublicTokenOnIvarQueue:(id)queue withCompletionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  blockCopy = block;
  v9 = +[APSLog shouldReduceLogging];
  v10 = +[APSLog connection];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v21 = 2112;
      v22 = queueCopy;
      v12 = v11;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v12, v13, "%@ Delivering publicToken from apsd: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v21 = 2112;
    v22 = queueCopy;
    v12 = v11;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  publicToken = self->_publicToken;
  if (publicToken == queueCopy || publicToken && [(NSData *)queueCopy isEqualToData:?])
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, queueCopy);
    }
  }

  else
  {
    objc_storeStrong(&self->_publicToken, queue);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__APSConnection__deliverPublicTokenOnIvarQueue_withCompletionBlock___block_invoke;
    v16[3] = &unk_1E7B224A8;
    v16[4] = self;
    v17 = queueCopy;
    v18 = blockCopy;
    [(APSConnection *)self _asyncOnDelegateQueueWithBlock:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __68__APSConnection__deliverPublicTokenOnIvarQueue_withCompletionBlock___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[APSLog connection];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ calling %@ didReceivePublicToken:", &v10, 0x16u);
  }

  [v3 connection:a1[4] didReceivePublicToken:a1[5]];
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, a1[5]);
  }

  v7 = +[APSLog connection];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1B233B000, v7, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ didReceivePublicToken:", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_deliverPublicToken:(id)token withCompletionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  blockCopy = block;
  v8 = +[APSLog shouldReduceLogging];
  v9 = +[APSLog connection];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v21 = 2112;
      v22 = tokenCopy;
      v11 = v10;
      v12 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v11, v12, "%@ Async Delivering publicToken from apsd: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v21 = 2112;
    v22 = tokenCopy;
    v11 = v10;
    v12 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__APSConnection__deliverPublicToken_withCompletionBlock___block_invoke;
  v16[3] = &unk_1E7B22408;
  v16[4] = self;
  v17 = tokenCopy;
  v18 = blockCopy;
  v13 = blockCopy;
  v14 = tokenCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v16];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_deliverConnectionStatusChange:(BOOL)change
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_isDeallocing && !self->_isShutdown)
  {
    changeCopy = change;
    v5 = +[APSLog shouldReduceLogging];
    v6 = +[APSLog connection];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = @"NO";
        if (changeCopy)
        {
          v8 = @"YES";
        }

        *buf = 138412546;
        selfCopy2 = self;
        v17 = 2112;
        v18 = v8;
        v9 = v7;
        v10 = OS_LOG_TYPE_DEBUG;
LABEL_12:
        _os_log_impl(&dword_1B233B000, v9, v10, "%@ Delivering connectionStatusChange from apsd: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (changeCopy)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      selfCopy2 = self;
      v17 = 2112;
      v18 = v11;
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_12;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__APSConnection__deliverConnectionStatusChange___block_invoke;
    v13[3] = &unk_1E7B224F8;
    v13[4] = self;
    v14 = changeCopy;
    [(APSConnection *)self _dispatch_async_to_ivarQueue:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __48__APSConnection__deliverConnectionStatusChange___block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  if (*(v3 + 70) != v4)
  {
    *(v3 + 70) = v4;
    v5 = *(result + 32);
    if (v5[69] == 1)
    {
      v8 = v1;
      v9 = v2;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48__APSConnection__deliverConnectionStatusChange___block_invoke_2;
      v6[3] = &unk_1E7B224D0;
      v6[4] = v5;
      v7 = *(result + 40);
      return [v5 _asyncOnDelegateQueueWithBlock:v6];
    }
  }

  return result;
}

void __48__APSConnection__deliverConnectionStatusChange___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[APSLog connection];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ seeing if delegate %@ responds to status changes", &v11, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = +[APSLog connection];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B233B000, v6, OS_LOG_TYPE_DEFAULT, "%@ calling %@ didChangeConnectedStatus:", &v11, 0x16u);
    }

    [v3 connection:*(a1 + 32) didChangeConnectedStatus:*(a1 + 40)];
    v8 = +[APSLog connection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B233B000, v8, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ didChangeConnectedStatus:", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_deliverConnectionStatusFromDealloc:(BOOL)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_isConnected == dealloc)
  {
    goto LABEL_14;
  }

  self->_isConnected = dealloc;
  if (!self->_enableStatusNotifications)
  {
    goto LABEL_14;
  }

  if (!self->_delegateQueue)
  {
    goto LABEL_14;
  }

  delegateReference = self->_delegateReference;
  if (!delegateReference)
  {
    goto LABEL_14;
  }

  object = [(CUTWeakReference *)delegateReference object];
  v7 = +[APSLog shouldReduceLogging];
  v8 = +[APSLog connection];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v19 = 2112;
      v20 = object;
      v10 = v9;
      v11 = OS_LOG_TYPE_DEBUG;
LABEL_10:
      _os_log_impl(&dword_1B233B000, v10, v11, "%@ seeing if delegate %@ responds to status changes", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v19 = 2112;
    v20 = object;
    v10 = v9;
    v11 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__APSConnection__deliverConnectionStatusFromDealloc___block_invoke;
    v14[3] = &unk_1E7B224F8;
    v15 = object;
    deallocCopy = dealloc;
    dispatch_async(delegateQueue, v14);
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
}

void __53__APSConnection__deliverConnectionStatusFromDealloc___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412546;
    v8 = 0;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1B233B000, v2, OS_LOG_TYPE_DEFAULT, "%@ calling %@ didChangeConnectedStatus:", &v7, 0x16u);
  }

  [*(a1 + 32) connection:0 didChangeConnectedStatus:*(a1 + 40)];
  v4 = +[APSLog connection];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = 0;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ didChangeConnectedStatus:", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_deliverOutgoingMessageResultWithID:(unint64_t)d error:(id)error sendRTT:(unint64_t)t ackTimestamp:(unint64_t)timestamp
{
  errorCopy = error;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__APSConnection__deliverOutgoingMessageResultWithID_error_sendRTT_ackTimestamp___block_invoke;
  v12[3] = &unk_1E7B22548;
  v12[4] = self;
  v13 = errorCopy;
  dCopy = d;
  tCopy = t;
  timestampCopy = timestamp;
  v11 = errorCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v12];
}

void __80__APSConnection__deliverOutgoingMessageResultWithID_error_sendRTT_ackTimestamp___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog shouldReduceLogging];
  v3 = +[APSLog connection];
  v4 = v3;
  if (v2)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    *buf = 138412802;
    v32 = v7;
    v33 = 2048;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    v8 = v4;
    v9 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 32);
    *buf = 138412802;
    v32 = v12;
    v33 = 2048;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v8 = v4;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v8, v9, "%@ delivering outgoing message result for id %lu, error = %@", buf, 0x20u);
LABEL_7:

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v14 = [*(*(a1 + 32) + 72) objectForKey:v13];
  [v14 setSendRTT:*(a1 + 56)];
  [v14 setAckTimestamp:*(a1 + 64)];
  if (!v14)
  {
    v16 = +[APSLog shouldReduceLogging];
    v17 = +[APSLog connection];
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 40);
        v19 = *(a1 + 48);
        v21 = *(a1 + 32);
        *buf = 138412802;
        v32 = v21;
        v33 = 2048;
        v34 = v19;
        v35 = 2112;
        v36 = v20;
        v22 = v18;
        v23 = OS_LOG_TYPE_DEBUG;
LABEL_14:
        _os_log_impl(&dword_1B233B000, v22, v23, "%@ Receiving result for sending unknown outgoing message %lu: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      v24 = *(a1 + 48);
      v26 = *(a1 + 32);
      *buf = 138412802;
      v32 = v26;
      v33 = 2048;
      v34 = v24;
      v35 = 2112;
      v36 = v25;
      v22 = v18;
      v23 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  [*(*(a1 + 32) + 72) removeObjectForKey:v13];
  v15 = *(a1 + 32);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __80__APSConnection__deliverOutgoingMessageResultWithID_error_sendRTT_ackTimestamp___block_invoke_160;
  v28[3] = &unk_1E7B22520;
  v28[4] = v15;
  v29 = v14;
  v30 = *(a1 + 40);
  [v15 _asyncOnDelegateQueueWithBlock:v28];

LABEL_16:
  v27 = *MEMORY[0x1E69E9840];
}

void __80__APSConnection__deliverOutgoingMessageResultWithID_error_sendRTT_ackTimestamp___block_invoke_160(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[APSLog connection];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v17 = 138413058;
    v18 = v5;
    v19 = 2112;
    v20 = v3;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ calling %@ for outgoing message %@ result %@", &v17, 0x2Au);
  }

  if ([*(a1 + 48) code])
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = +[APSLog connection];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v17 = 138412546;
        v18 = v9;
        v19 = 2112;
        v20 = v3;
        _os_log_impl(&dword_1B233B000, v8, OS_LOG_TYPE_DEFAULT, "%@ calling %@ didFailToSendOutgoingMessage:", &v17, 0x16u);
      }

      [v3 connection:*(a1 + 32) didFailToSendOutgoingMessage:*(a1 + 40) error:*(a1 + 48)];
      v10 = +[APSLog connection];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v11 = *(a1 + 32);
      v17 = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v3;
      v12 = "%@ returned from %@ didFailToSendOutgoingMessage:";
LABEL_14:
      _os_log_impl(&dword_1B233B000, v10, OS_LOG_TYPE_DEFAULT, v12, &v17, 0x16u);
LABEL_15:
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v13 = +[APSLog connection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_1B233B000, v13, OS_LOG_TYPE_DEFAULT, "%@ calling %@ didSendOutgoingMessage:", &v17, 0x16u);
    }

    [v3 connection:*(a1 + 32) didSendOutgoingMessage:*(a1 + 40)];
    v10 = +[APSLog connection];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = *(a1 + 32);
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    v20 = v3;
    v12 = "%@ returned from %@ didSendOutgoingMessage:";
    goto LABEL_14;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_deliverToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__APSConnection__deliverToken_forTopic_identifier___block_invoke;
  v14[3] = &unk_1E7B222C8;
  v14[4] = self;
  v15 = tokenCopy;
  v16 = topicCopy;
  v17 = identifierCopy;
  v11 = identifierCopy;
  v12 = topicCopy;
  v13 = tokenCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v14];
}

void __51__APSConnection__deliverToken_forTopic_identifier___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog shouldReduceLogging];
  v3 = +[APSLog connection];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) debugDescription];
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      *buf = 138413058;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      v9 = v4;
      v10 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v9, v10, "%@ Received token %@ forTopic %@ identifier %@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v6 = [*(a1 + 40) debugDescription];
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 138413058;
    v22 = v11;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    v9 = v4;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v14 = *(a1 + 40);
  if (v14 && *(a1 + 48))
  {
    v15 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__APSConnection__deliverToken_forTopic_identifier___block_invoke_165;
    v17[3] = &unk_1E7B22570;
    v17[4] = v15;
    v18 = v14;
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    [v15 _asyncOnDelegateQueueWithBlock:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __51__APSConnection__deliverToken_forTopic_identifier___block_invoke_165(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[APSLog connection];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      v8 = a1[7];
      v12 = 138413314;
      v13 = v5;
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ calling %@ for received token %@ for topic %@ identifier %@", &v12, 0x34u);
    }

    [v3 connection:a1[4] didReceiveToken:a1[5] forTopic:a1[6] identifier:a1[7]];
    v9 = +[APSLog connection];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_1B233B000, v9, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ didReceiveToken:forTopic:identifier", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_deliverToken:(id)token forInfo:(id)info
{
  tokenCopy = token;
  infoCopy = info;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__APSConnection__deliverToken_forInfo___block_invoke;
  v10[3] = &unk_1E7B222F0;
  v10[4] = self;
  v11 = tokenCopy;
  v12 = infoCopy;
  v8 = infoCopy;
  v9 = tokenCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v10];
}

void __39__APSConnection__deliverToken_forInfo___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog shouldReduceLogging];
  v3 = +[APSLog connection];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) debugDescription];
      v7 = *(a1 + 48);
      *buf = 138412802;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      v8 = v4;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v8, v9, "%@ Received extended app token %@ forInfo %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v6 = [*(a1 + 40) debugDescription];
    v11 = *(a1 + 48);
    *buf = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v11;
    v8 = v4;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  if (*(a1 + 40))
  {
    v12 = [*(a1 + 48) topic];

    if (v12)
    {
      v13 = *(a1 + 32);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __39__APSConnection__deliverToken_forInfo___block_invoke_168;
      v15[3] = &unk_1E7B22520;
      v15[4] = v13;
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      [v13 _asyncOnDelegateQueueWithBlock:v15];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __39__APSConnection__deliverToken_forInfo___block_invoke_168(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[APSLog connection];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      v11 = 138413058;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ calling %@ for received extended app token %@ for info %@", &v11, 0x2Au);
    }

    [v3 connection:a1[4] didReceiveToken:a1[5] forInfo:a1[6]];
    v8 = +[APSLog connection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B233B000, v8, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ didReceiveToken:forInfo", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_deliverURLToken:(id)token forInfo:(id)info
{
  tokenCopy = token;
  infoCopy = info;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__APSConnection__deliverURLToken_forInfo___block_invoke;
  v10[3] = &unk_1E7B222F0;
  v10[4] = self;
  v11 = tokenCopy;
  v12 = infoCopy;
  v8 = infoCopy;
  v9 = tokenCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v10];
}

void __42__APSConnection__deliverURLToken_forInfo___block_invoke(id *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog shouldReduceLogging];
  v3 = +[APSLog connection];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = a1[4];
      v6 = [a1[5] debugDescription];
      v7 = a1[6];
      *buf = 138412802;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      v8 = v4;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v8, v9, "%@ Received web token %@ for info %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v6 = [a1[5] debugDescription];
    v11 = a1[6];
    *buf = 138412802;
    v25 = v10;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v11;
    v8 = v4;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  if (a1[5])
  {
    v12 = [a1[6] topic];

    if (v12)
    {
      v13 = [a1[4] _removeURLTokenBlocksForInfo:a1[6]];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __42__APSConnection__deliverURLToken_forInfo___block_invoke_171;
      v19[3] = &unk_1E7B22570;
      v20 = v13;
      v14 = a1[4];
      v15 = a1[5];
      v16 = a1[4];
      v21 = v15;
      v22 = v16;
      v23 = a1[6];
      v17 = v13;
      [v14 _asyncOnDelegateQueueWithBlock:v19 requiresDelegate:0];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __42__APSConnection__deliverURLToken_forInfo___block_invoke_171(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 40);
        (*(*(*(&v17 + 1) + 8 * v8) + 16))(*(*(&v17 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v6);
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = +[APSLog connection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      *buf = 138413058;
      v22 = v11;
      v23 = 2112;
      v24 = v3;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_1B233B000, v10, OS_LOG_TYPE_DEFAULT, "%@ calling %@ for received web token %@ for info %@", buf, 0x2Au);
    }

    [v3 connection:*(a1 + 48) didReceiveURLToken:*(a1 + 40) forInfo:*(a1 + 56)];
    v14 = +[APSLog connection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      *buf = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_1B233B000, v14, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ didReceiveURLToken:forInfo", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_deliverURLTokenError:(id)error forInfo:(id)info
{
  errorCopy = error;
  infoCopy = info;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__APSConnection__deliverURLTokenError_forInfo___block_invoke;
  v10[3] = &unk_1E7B222F0;
  v10[4] = self;
  v11 = errorCopy;
  v12 = infoCopy;
  v8 = infoCopy;
  v9 = errorCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v10];
}

void __47__APSConnection__deliverURLTokenError_forInfo___block_invoke(id *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog shouldReduceLogging];
  v3 = +[APSLog connection];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      *buf = 138412802;
      v26 = v5;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      v8 = v4;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v8, v9, "%@ Received web token error %@ for info %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    *buf = 138412802;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v8 = v4;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  if (a1[5])
  {
    v13 = [a1[6] topic];

    if (v13)
    {
      v14 = [a1[4] _removeURLTokenBlocksForInfo:a1[6]];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __47__APSConnection__deliverURLTokenError_forInfo___block_invoke_174;
      v20[3] = &unk_1E7B22570;
      v21 = v14;
      v15 = a1[4];
      v16 = a1[5];
      v17 = a1[4];
      v22 = v16;
      v23 = v17;
      v24 = a1[6];
      v18 = v14;
      [v15 _asyncOnDelegateQueueWithBlock:v20 requiresDelegate:0];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __47__APSConnection__deliverURLTokenError_forInfo___block_invoke_174(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 40);
        (*(*(*(&v17 + 1) + 8 * v8) + 16))(*(*(&v17 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v6);
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = +[APSLog connection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      *buf = 138413058;
      v22 = v11;
      v23 = 2112;
      v24 = v3;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_1B233B000, v10, OS_LOG_TYPE_DEFAULT, "%@ calling %@ for received web token error %@ for info %@", buf, 0x2Au);
    }

    [v3 connection:*(a1 + 48) didReceiveURLTokenError:*(a1 + 40) forInfo:*(a1 + 56)];
    v14 = +[APSLog connection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      *buf = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_1B233B000, v14, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ didReceiveURLTokenError:forInfo", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __65__APSConnection__blockingXPCCallWithArgumentBlock_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[APSLog connection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1B233B000, v3, OS_LOG_TYPE_DEFAULT, "_makeXPCCallWithArgumentBlock messageHandler %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __65__APSConnection__blockingXPCCallWithArgumentBlock_resultHandler___block_invoke_180()
{
  v0 = +[APSLog connection];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B233B000, v0, OS_LOG_TYPE_DEFAULT, "_makeXPCCallWithArgumentBlock Connection interrupted while trying to make blocking XPC call", v1, 2u);
  }
}

void __65__APSConnection__blockingXPCCallWithArgumentBlock_resultHandler___block_invoke_183()
{
  v0 = +[APSLog connection];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B233B000, v0, OS_LOG_TYPE_DEFAULT, "_makeXPCCallWithArgumentBlock Connection invalidated while trying to make blocking XPC call", v1, 2u);
  }
}

- (BOOL)hasIdentity
{
  if (hasIdentity_onceToken != -1)
  {
    [APSConnection hasIdentity];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__APSConnection_hasIdentity__block_invoke_2;
  v5[3] = &unk_1E7B22318;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(hasIdentity_sQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__APSConnection_hasIdentity__block_invoke()
{
  hasIdentity_sQueue = dispatch_queue_create("hasIdentityQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __28__APSConnection_hasIdentity__block_invoke_2(uint64_t result)
{
  v1 = result;
  if (hasIdentity_sHasFoundIdentity)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = *(result + 32);
    v3 = objc_opt_class();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __28__APSConnection_hasIdentity__block_invoke_3;
    v5[3] = &unk_1E7B22160;
    v5[4] = *(v1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __28__APSConnection_hasIdentity__block_invoke_4;
    v4[3] = &unk_1E7B22598;
    v4[4] = *(v1 + 40);
    result = [v3 _blockingXPCCallWithArgumentBlock:v5 resultHandler:v4];
    if (*(*(*(v1 + 40) + 8) + 24) == 1)
    {
      hasIdentity_sHasFoundIdentity = 1;
    }
  }

  return result;
}

void __28__APSConnection_hasIdentity__block_invoke_3(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [@"message-type" UTF8String];
  APSInsertIntsToXPCDictionary(xdict, v3, v4, v5, v6, v7, v8, v9, 8);
  APSInsertNSStringsToXPCDictionary(xdict, "environmentName", v10, v11, v12, v13, v14, v15, *(*(a1 + 32) + 24));
}

BOOL __28__APSConnection_hasIdentity__block_invoke_4(uint64_t a1, void *a2)
{
  result = APSGetXPCBoolFromDictionary(a2, "hasIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (unint64_t)serverTimeInNanoSeconds
{
  if (serverTimeInNanoSeconds_onceToken != -1)
  {
    +[APSConnection serverTimeInNanoSeconds];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__APSConnection_serverTimeInNanoSeconds__block_invoke_2;
  block[3] = &unk_1E7B225E8;
  block[5] = &v7;
  block[6] = self;
  block[4] = &v11;
  dispatch_sync(serverTimeInNanoSeconds_sQueue, block);
  v3 = v12[3];
  if (!v3)
  {
    v4 = v8[3];
    if (v4 == 0.0)
    {
      v3 = 0;
    }

    else
    {
      v3 = (v4 * 1000000000.0);
      v12[3] = v3;
    }
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v3;
}

uint64_t __40__APSConnection_serverTimeInNanoSeconds__block_invoke()
{
  serverTimeInNanoSeconds_sQueue = dispatch_queue_create("requestServerTimeInNS", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __40__APSConnection_serverTimeInNanoSeconds__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__APSConnection_serverTimeInNanoSeconds__block_invoke_4;
  v5[3] = &unk_1E7B225C0;
  v6 = *(a1 + 32);
  return [v3 _blockingXPCCallWithArgumentBlock:&__block_literal_global_197 resultHandler:v5];
}

void __40__APSConnection_serverTimeInNanoSeconds__block_invoke_3(uint64_t a1, void *a2)
{
  xdict = a2;
  v2 = [@"message-type" UTF8String];
  APSInsertIntsToXPCDictionary(xdict, v2, v3, v4, v5, v6, v7, v8, 9);
}

double __40__APSConnection_serverTimeInNanoSeconds__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = APSGetXPCUnsignedLongLongFromDictionary(v3, "serverTimeNS");
  v4 = APSGetXPCUnsignedLongLongFromDictionary(v3, "serverTime");

  result = v4;
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

+ (id)geoRegion
{
  if (geoRegion_onceToken != -1)
  {
    +[APSConnection geoRegion];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__APSConnection_geoRegion__block_invoke_2;
  v5[3] = &unk_1E7B22610;
  v5[4] = &v6;
  v5[5] = self;
  dispatch_sync(geoRegion_sQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __26__APSConnection_geoRegion__block_invoke()
{
  geoRegion_sQueue = dispatch_queue_create("requestGeoRegion", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __26__APSConnection_geoRegion__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_opt_class();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__APSConnection_geoRegion__block_invoke_4;
  v5[3] = &unk_1E7B22598;
  v5[4] = *(a1 + 32);
  return [v3 _blockingXPCCallWithArgumentBlock:&__block_literal_global_203 resultHandler:v5];
}

void __26__APSConnection_geoRegion__block_invoke_3(uint64_t a1, void *a2)
{
  xdict = a2;
  v2 = [@"message-type" UTF8String];
  APSInsertIntsToXPCDictionary(xdict, v2, v3, v4, v5, v6, v7, v8, 10);
}

void __26__APSConnection_geoRegion__block_invoke_4(uint64_t a1, void *a2)
{
  v6 = APSGetXPCStringFromDictionary(a2, "geoRegion");
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)requestCourierConnection
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog connection];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v6, v7, "requestCourierConnection", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v8 = dispatch_queue_create("requestCourierConnection", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__APSConnection_requestCourierConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(v8, block);
}

void __41__APSConnection_requestCourierConnection__block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v2 = [@"message-type" UTF8String];
  APSInsertIntsToXPCDictionary(xdict, v2, v3, v4, v5, v6, v7, v8, 13);
}

void __41__APSConnection_requestCourierConnection__block_invoke_3()
{
  v0 = +[APSLog connection];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B233B000, v0, OS_LOG_TYPE_DEFAULT, "Success!", v1, 2u);
  }
}

+ (void)invalidateDeviceIdentity
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog connection];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v6, v7, "invalidateDeviceIdentity", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v8 = dispatch_queue_create("invalidateDeviceIdentity", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__APSConnection_invalidateDeviceIdentity__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(v8, block);
}

void __41__APSConnection_invalidateDeviceIdentity__block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  v2 = [@"message-type" UTF8String];
  APSInsertIntsToXPCDictionary(xdict, v2, v3, v4, v5, v6, v7, v8, 23);
}

void __41__APSConnection_invalidateDeviceIdentity__block_invoke_3()
{
  v0 = +[APSLog connection];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B233B000, v0, OS_LOG_TYPE_DEFAULT, "Success!", v1, 2u);
  }
}

+ (double)keepAliveIntervalForEnvironmentName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = nameCopy;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v8, v9, "keepAliveIntervalForEnvironmentName %@", &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = nameCopy;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__APSConnection_keepAliveIntervalForEnvironmentName___block_invoke;
  v15[3] = &unk_1E7B22160;
  v10 = nameCopy;
  v16 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__APSConnection_keepAliveIntervalForEnvironmentName___block_invoke_2;
  v14[3] = &unk_1E7B22598;
  v14[4] = &buf;
  [self _blockingXPCCallWithArgumentBlock:v15 resultHandler:v14];
  v11 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __53__APSConnection_keepAliveIntervalForEnvironmentName___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [@"message-type" UTF8String];
  APSInsertIntsToXPCDictionary(xdict, v3, v4, v5, v6, v7, v8, v9, 12);
  APSInsertNSStringsToXPCDictionary(xdict, "environmentName", v10, v11, v12, v13, v14, v15, *(a1 + 32));
}

+ (id)connectionsDebuggingStateOfStyle:(unint64_t)style
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__APSConnection_connectionsDebuggingStateOfStyle___block_invoke;
  v6[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v6[4] = style;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__APSConnection_connectionsDebuggingStateOfStyle___block_invoke_2;
  v5[3] = &unk_1E7B22598;
  v5[4] = &v7;
  [self _blockingXPCCallWithArgumentBlock:v6 resultHandler:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __50__APSConnection_connectionsDebuggingStateOfStyle___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [@"message-type" UTF8String];
  APSInsertIntsToXPCDictionary(xdict, v3, v4, v5, v6, v7, v8, v9, 5);
  APSInsertIntsToXPCDictionary(xdict, "style", v10, v11, v12, v13, v14, v15, *(a1 + 32));
}

uint64_t __50__APSConnection_connectionsDebuggingStateOfStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = APSGetXPCStringFromDictionary(a2, "connectionsDebuggingState");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_setTokenState
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__APSConnection__setTokenState__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __31__APSConnection__setTokenState__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_setTokenState_sTokenFailures <= 9)
  {
    v2 = +[APSLog shouldReduceLogging];
    v3 = +[APSLog connection];
    v4 = v3;
    if (v2)
    {
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

      *buf = 67109120;
      v19 = _setTokenState_sTokenFailures;
      v5 = v4;
      v6 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      *buf = 67109120;
      v19 = _setTokenState_sTokenFailures;
      v5 = v4;
      v6 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_1B233B000, v5, v6, "notifySafeToSendFilter - failures=%d", buf, 8u);
LABEL_8:

    v7 = _setTokenState_token;
    if (_setTokenState_token == -1)
    {
      v8 = notify_register_check("APSSafeToSendFilterNotification", &_setTokenState_token);
      if (v8)
      {
        goto LABEL_13;
      }

      v7 = _setTokenState_token;
    }

    v8 = notify_set_state(v7, 1uLL);
    if (!v8)
    {
      v8 = notify_post("APSSafeToSendFilterNotification");
      if (!v8)
      {
        goto LABEL_20;
      }
    }

LABEL_13:
    v9 = v8;
    v10 = +[APSLog shouldReduceLogging];
    v11 = +[APSLog connection];
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v19 = v9;
        v13 = v12;
        v14 = OS_LOG_TYPE_DEBUG;
LABEL_18:
        _os_log_impl(&dword_1B233B000, v13, v14, "setting token failed with status %d", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v19 = v9;
      v13 = v12;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_18;
    }

    notify_cancel(_setTokenState_token);
    _setTokenState_token = -1;
    ++_setTokenState_sTokenFailures;
    v15 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__APSConnection__setTokenState__block_invoke_220;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = *(a1 + 32);
    dispatch_after(v15, MEMORY[0x1E69E96A0], block);
  }

LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
}

+ (void)notifySafeToSendFilter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__APSConnection_notifySafeToSendFilter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (notifySafeToSendFilter_onceToken != -1)
  {
    dispatch_once(&notifySafeToSendFilter_onceToken, block);
  }
}

- (void)_sendOutgoingMessage:(id)message fake:(BOOL)fake
{
  fakeCopy = fake;
  v45 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dispatch_assert_queue_not_V2(self->_ivarQueue);
  v7 = _os_feature_enabled_impl();
  v8 = +[APSLog shouldReduceLogging];
  v9 = +[APSLog connection];
  v10 = v9;
  if (v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    identifier = [messageCopy identifier];
    topic = [messageCopy topic];
    userInfo = [messageCopy userInfo];
    topic2 = [messageCopy topic];
    v15 = APSLoggableDescriptionForObjectOnTopic_NoLoad(userInfo, topic2);
    v16 = v15;
    *buf = 138413826;
    v17 = @"NO";
    selfCopy2 = self;
    v33 = 2112;
    v35 = 2048;
    if (fakeCopy)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v34 = messageCopy;
    if (v7)
    {
      v17 = @"YES";
    }

    v36 = identifier;
    v37 = 2112;
    v38 = topic;
    v39 = 2112;
    v40 = v15;
    v41 = 2112;
    v42 = v18;
    v43 = 2112;
    v44 = v17;
    v19 = v10;
    v20 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    identifier2 = [messageCopy identifier];
    topic = [messageCopy topic];
    userInfo = [messageCopy userInfo];
    topic2 = [messageCopy topic];
    v22 = APSLoggableDescriptionForObjectOnTopic_NoLoad(userInfo, topic2);
    v16 = v22;
    *buf = 138413826;
    v23 = @"NO";
    selfCopy2 = self;
    v33 = 2112;
    v35 = 2048;
    if (fakeCopy)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v34 = messageCopy;
    if (v7)
    {
      v23 = @"YES";
    }

    v36 = identifier2;
    v37 = 2112;
    v38 = topic;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v24;
    v43 = 2112;
    v44 = v23;
    v19 = v10;
    v20 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v19, v20, "%@ _sendOutgoingMessage: %@ [id=%lu] %@ %@ fake: %@ syncToIvarQueue: %@", buf, 0x48u);

LABEL_17:
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __43__APSConnection__sendOutgoingMessage_fake___block_invoke;
  v28[3] = &unk_1E7B22680;
  v28[4] = self;
  v29 = messageCopy;
  v30 = fakeCopy;
  v25 = messageCopy;
  v26 = MEMORY[0x1B2746DE0](v28);
  if (v7)
  {
    [(APSConnection *)self _dispatch_sync_to_ivarQueue:v26 shutdownBlock:0];
  }

  else
  {
    [(APSConnection *)self _dispatch_async_to_ivarQueue:v26];
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __43__APSConnection__sendOutgoingMessage_fake___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (!*(a1 + 40))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Message is null"];
  }

  v2 = *(a1 + 32);
  if (!*(v2 + 104))
  {
    v27 = +[APSLog shouldReduceLogging];
    v28 = +[APSLog connection];
    v10 = v28;
    if (v27)
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      v29 = *(a1 + 32);
      *buf = 138412290;
      v37 = v29;
      v30 = v10;
      v31 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v32 = *(a1 + 32);
      *buf = 138412290;
      v37 = v32;
      v30 = v10;
      v31 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_1B233B000, v30, v31, "%@ APS _connection is NULL in _sendOutgoingMessage!", buf, 0xCu);
    goto LABEL_19;
  }

  v3 = *(a1 + 40);
  ++*(v2 + 80);
  [v3 setMessageID:?];
  if (*(a1 + 48) != 1 || ([*(a1 + 40) timestamp], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E695DF00] date];
    [v5 setTimestamp:v6];
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 72);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "messageID")}];
  [v8 setObject:v7 forKey:v9];

  v10 = xpc_dictionary_create(0, 0, 0);
  LODWORD(v8) = *(a1 + 48);
  v11 = [@"message-type" UTF8String];
  v18 = 6;
  if (v8)
  {
    v18 = 7;
  }

  APSInsertIntsToXPCDictionary(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  v19 = [*(a1 + 40) dictionaryRepresentation];
  v20 = APSCreateXPCObjectFromDictionary(v19);

  xpc_dictionary_set_value(v10, "message", v20);
  if (_os_feature_enabled_impl())
  {
    v21 = [*(a1 + 40) topic];
    v22 = [v21 isEqualToString:@"com.apple.private.alloy.facetime.multi"];

    if (v22)
    {
      [*(a1 + 40) identifier];
      kdebug_trace();
    }
  }

  v24 = *(a1 + 32);
  v23 = *(a1 + 40);
  v25 = *(v24 + 104);
  v26 = *(v24 + 16);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __43__APSConnection__sendOutgoingMessage_fake___block_invoke_2;
  handler[3] = &unk_1E7B22340;
  handler[4] = v24;
  v35 = v23;
  xpc_connection_send_message_with_reply(v25, v10, v26, handler);

LABEL_19:
  v33 = *MEMORY[0x1E69E9840];
}

void __43__APSConnection__sendOutgoingMessage_fake___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__APSConnection__sendOutgoingMessage_fake___block_invoke_3;
  v7[3] = &unk_1E7B22658;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v10 = v4;
  v6 = v3;
  [v5 _handleEvent:v6 withHandler:v7];
}

void __43__APSConnection__sendOutgoingMessage_fake___block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (APSGetXPCBoolFromDictionary(v4, "success"))
    {
      goto LABEL_9;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"APSD rejected message as invalid."];
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = @"no reply received!";
  }

  v6 = *(*(a1 + 40) + 72);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "messageID")}];
  [v6 removeObjectForKey:v7];

  v14 = APSError(1, @"Unable to send outgoing message to apsd: %@", v8, v9, v10, v11, v12, v13, v5);
  v15 = +[APSLog connection];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v14;
    _os_log_impl(&dword_1B233B000, v15, OS_LOG_TYPE_DEFAULT, "Error sending outgoing message! %@", buf, 0xCu);
  }

  v16 = *(a1 + 40);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __43__APSConnection__sendOutgoingMessage_fake___block_invoke_239;
  v19[3] = &unk_1E7B22520;
  v19[4] = v16;
  v20 = *(a1 + 48);
  v21 = v14;
  v17 = v14;
  [v16 _asyncOnDelegateQueueWithBlock:v19];

LABEL_9:
  v18 = *MEMORY[0x1E69E9840];
}

void __43__APSConnection__sendOutgoingMessage_fake___block_invoke_239(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[APSLog connection];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v13 = 138413058;
    v14 = v5;
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1B233B000, v4, OS_LOG_TYPE_DEFAULT, "%@ checking if %@ responds to message %@ failing to send %@", &v13, 0x2Au);
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = +[APSLog connection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_1B233B000, v8, OS_LOG_TYPE_DEFAULT, "%@ calling %@ didFailToSendOutgoingMessage:", &v13, 0x16u);
    }

    [v3 connection:a1[4] didFailToSendOutgoingMessage:a1[5] error:a1[6]];
    v10 = +[APSLog connection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_1B233B000, v10, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ didFailToSendOutgoingMessage:", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)cancelOutgoingMessage:(id)message
{
  v20 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v16 = 2112;
      v17 = messageCopy;
      v18 = 2048;
      identifier = [messageCopy identifier];
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v8, v9, "%@ cancelOutgoingMessage: %@ id=%lu", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy2 = self;
    v16 = 2112;
    v17 = messageCopy;
    v18 = 2048;
    identifier = [messageCopy identifier];
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__APSConnection_cancelOutgoingMessage___block_invoke;
  v12[3] = &unk_1E7B220F0;
  v12[4] = self;
  v13 = messageCopy;
  v10 = messageCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __39__APSConnection_cancelOutgoingMessage___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    message = xpc_dictionary_create(0, 0, 0);
    v2 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(message, v2, v3, v4, v5, v6, v7, v8, 11);
    v9 = [*(a1 + 40) messageID];
    APSInsertIntsToXPCDictionary(message, "messageID", v10, v11, v12, v13, v14, v15, v9);
    xpc_connection_send_message(*(*(a1 + 32) + 104), message);
    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v17 = +[APSLog connection];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 138412290;
      v22 = v18;
      _os_log_impl(&dword_1B233B000, v17, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in cancelOutgoingMessage!", buf, 0xCu);
    }

    v19 = *MEMORY[0x1E69E9840];
  }
}

- (void)requestTokenForTopic:(id)topic identifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  identifierCopy = identifier;
  v8 = +[APSLog shouldReduceLogging];
  v9 = +[APSLog connection];
  v10 = v9;
  if (v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412802;
    selfCopy2 = self;
    v20 = 2112;
    v21 = topicCopy;
    v22 = 2112;
    v23 = identifierCopy;
    v11 = v10;
    v12 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412802;
    selfCopy2 = self;
    v20 = 2112;
    v21 = topicCopy;
    v22 = 2112;
    v23 = identifierCopy;
    v11 = v10;
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v11, v12, "%@: Requesting per-app token for topic %@ and identifier %@", buf, 0x20u);
LABEL_7:

  if (topicCopy)
  {
    v13 = &stru_1F299CEB0;
    if (identifierCopy)
    {
      v13 = identifierCopy;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__APSConnection_requestTokenForTopic_identifier___block_invoke;
    v15[3] = &unk_1E7B222F0;
    v15[4] = self;
    identifierCopy = v13;
    v16 = identifierCopy;
    v17 = topicCopy;
    [(APSConnection *)self _dispatch_async_to_ivarQueue:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __49__APSConnection_requestTokenForTopic_identifier___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    message = xpc_dictionary_create(0, 0, 0);
    v2 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(message, v2, v3, v4, v5, v6, v7, v8, 14);
    v19 = *(a1 + 48);
    APSInsertNSStringsToXPCDictionary(message, "identifier", v9, v10, v11, v12, v13, v14, *(a1 + 40));
    xpc_connection_send_message(*(*(a1 + 32) + 104), message);
    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v16 = +[APSLog connection];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_1B233B000, v16, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in requestTokenForTopic!", buf, 0xCu);
    }

    v18 = *MEMORY[0x1E69E9840];
  }
}

- (void)requestTokenForInfo:(id)info
{
  v29 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy4 = self;
    v27 = 2112;
    v28 = infoCopy;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy4 = self;
    v27 = 2112;
    v28 = infoCopy;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v8, v9, "%@: Requesting extended app token for info %@", buf, 0x16u);
LABEL_7:

  topic = [infoCopy topic];

  if (topic)
  {
    identifier = [infoCopy identifier];

    if (!identifier)
    {
      [infoCopy setIdentifier:&stru_1F299CEB0];
    }

    expirationDate = [infoCopy expirationDate];
    if (!expirationDate)
    {
      goto LABEL_12;
    }

    v13 = expirationDate;
    expirationDate2 = [infoCopy expirationDate];
    date = [MEMORY[0x1E695DF00] date];
    v16 = [expirationDate2 compare:date];

    if (v16 != -1)
    {
LABEL_12:
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __37__APSConnection_requestTokenForInfo___block_invoke;
      v23[3] = &unk_1E7B220F0;
      v23[4] = self;
      v24 = infoCopy;
      [(APSConnection *)self _dispatch_async_to_ivarQueue:v23];

      goto LABEL_20;
    }

    v17 = +[APSLog shouldReduceLogging];
    v18 = +[APSLog connection];
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        selfCopy4 = self;
        v27 = 2112;
        v28 = infoCopy;
        v20 = v19;
        v21 = OS_LOG_TYPE_DEBUG;
LABEL_18:
        _os_log_impl(&dword_1B233B000, v20, v21, "%@: Token was requested for an expiration date that is in the past %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy4 = self;
      v27 = 2112;
      v28 = infoCopy;
      v20 = v19;
      v21 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_18;
    }
  }

LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
}

void __37__APSConnection_requestTokenForInfo___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    v2 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(xdict, v2, v3, v4, v5, v6, v7, v8, 15);
    v9 = [*(a1 + 40) dictionaryRepresentation];
    v10 = APSCreateXPCObjectFromDictionary(v9);

    xpc_dictionary_set_value(xdict, "info", v10);
    xpc_connection_send_message(*(*(a1 + 32) + 104), xdict);

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = +[APSLog connection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1B233B000, v12, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in requestTokenForInfo!", buf, 0xCu);
    }

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)invalidateTokenForTopic:(id)topic identifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  identifierCopy = identifier;
  v8 = +[APSLog shouldReduceLogging];
  v9 = +[APSLog connection];
  v10 = v9;
  if (v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412802;
    selfCopy2 = self;
    v21 = 2112;
    v22 = topicCopy;
    v23 = 2112;
    v24 = identifierCopy;
    v11 = v10;
    v12 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412802;
    selfCopy2 = self;
    v21 = 2112;
    v22 = topicCopy;
    v23 = 2112;
    v24 = identifierCopy;
    v11 = v10;
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v11, v12, "%@ invalidateTokenForTopic: %@ identifier %@", buf, 0x20u);
LABEL_7:

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__APSConnection_invalidateTokenForTopic_identifier___block_invoke;
  v16[3] = &unk_1E7B222F0;
  if (!identifierCopy)
  {
    identifierCopy = &stru_1F299CEB0;
  }

  v16[4] = self;
  v17 = identifierCopy;
  v18 = topicCopy;
  v13 = topicCopy;
  v14 = identifierCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __52__APSConnection_invalidateTokenForTopic_identifier___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    message = xpc_dictionary_create(0, 0, 0);
    v2 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(message, v2, v3, v4, v5, v6, v7, v8, 17);
    v19 = *(a1 + 48);
    APSInsertNSStringsToXPCDictionary(message, "identifier", v9, v10, v11, v12, v13, v14, *(a1 + 40));
    xpc_connection_send_message(*(*(a1 + 32) + 104), message);
    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v16 = +[APSLog connection];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_1B233B000, v16, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in invalidateTokenForTopic!", buf, 0xCu);
    }

    v18 = *MEMORY[0x1E69E9840];
  }
}

- (void)invalidateTokenForInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy2 = self;
    v17 = 2112;
    v18 = infoCopy;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy2 = self;
    v17 = 2112;
    v18 = infoCopy;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v8, v9, "%@ invalidateTokenForInfo: %@", buf, 0x16u);
LABEL_7:

  identifier = [infoCopy identifier];

  if (!identifier)
  {
    [infoCopy setIdentifier:&stru_1F299CEB0];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__APSConnection_invalidateTokenForInfo___block_invoke;
  v13[3] = &unk_1E7B220F0;
  v13[4] = self;
  v14 = infoCopy;
  v11 = infoCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __40__APSConnection_invalidateTokenForInfo___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    v2 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(xdict, v2, v3, v4, v5, v6, v7, v8, 18);
    v9 = [*(a1 + 40) dictionaryRepresentation];
    v10 = APSCreateXPCObjectFromDictionary(v9);

    xpc_dictionary_set_value(xdict, "info", v10);
    xpc_connection_send_message(*(*(a1 + 32) + 104), xdict);

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = +[APSLog connection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1B233B000, v12, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in invalidateTokenForInfo!", buf, 0xCu);
    }

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)calloutToDelegatesForURLTokenError:(id)error forInfo:(id)info completion:(id)completion
{
  errorCopy = error;
  infoCopy = info;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__APSConnection_calloutToDelegatesForURLTokenError_forInfo_completion___block_invoke;
  v14[3] = &unk_1E7B226A8;
  v15 = errorCopy;
  selfCopy = self;
  v17 = infoCopy;
  v18 = completionCopy;
  v11 = infoCopy;
  v12 = errorCopy;
  v13 = completionCopy;
  [(APSConnection *)self _asyncOnDelegateQueueWithBlock:v14 requiresDelegate:0];
}

void __71__APSConnection_calloutToDelegatesForURLTokenError_forInfo_completion___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[7];
  if (v4)
  {
    (*(v4 + 16))(v4, 0, a1[4]);
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = +[APSLog connection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v6 = a1[5];
      v8 = a1[6];
      v12 = 138413058;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1B233B000, v5, OS_LOG_TYPE_DEFAULT, "%@ calling %@ for received web token error %@ for info %@", &v12, 0x2Au);
    }

    [v3 connection:a1[5] didReceiveURLTokenError:a1[4] forInfo:a1[6]];
    v9 = +[APSLog connection];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[5];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_1B233B000, v9, OS_LOG_TYPE_DEFAULT, "%@ returned from %@ didReceiveURLTokenError:forInfo", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)requestURLTokenForInfo:(id)info completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  v8 = +[APSLog shouldReduceLogging];
  v9 = +[APSLog connection];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = MEMORY[0x1B2746DE0](completionCopy);
      *buf = 138412802;
      selfCopy2 = self;
      v42 = 2112;
      v43 = infoCopy;
      v44 = 2112;
      v45 = v11;
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_1B233B000, v12, v13, "%@: requestURLTokenForInfo %@ completion %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1B2746DE0](completionCopy);
    *buf = 138412802;
    selfCopy2 = self;
    v42 = 2112;
    v43 = infoCopy;
    v44 = 2112;
    v45 = v11;
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  topic = [infoCopy topic];
  if (!topic || (v15 = topic, [infoCopy vapidPublicKey], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
  {
    v22 = +[APSLog connection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [APSConnection requestURLTokenForInfo:completion:];
    }

    v29 = @"Missing topic and/or vapidPublicKey";
    goto LABEL_15;
  }

  expirationDate = [infoCopy expirationDate];
  if (expirationDate)
  {
    v18 = expirationDate;
    expirationDate2 = [infoCopy expirationDate];
    date = [MEMORY[0x1E695DF00] date];
    v21 = [expirationDate2 compare:date];

    if (v21 == -1)
    {
      v32 = +[APSLog connection];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [APSConnection requestURLTokenForInfo:completion:];
      }

      v29 = @"expirationDate is in the past";
LABEL_15:
      v30 = APSURLTokenError(100, v29, v23, v24, v25, v26, v27, v28, v33[0]);
      [(APSConnection *)self calloutToDelegatesForURLTokenError:v30 forInfo:infoCopy completion:completionCopy];

      goto LABEL_16;
    }
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __51__APSConnection_requestURLTokenForInfo_completion___block_invoke;
  v37[3] = &unk_1E7B226D0;
  v37[4] = self;
  v39 = completionCopy;
  v38 = infoCopy;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __51__APSConnection_requestURLTokenForInfo_completion___block_invoke_255;
  v33[3] = &unk_1E7B22408;
  v34 = v38;
  selfCopy3 = self;
  v36 = v39;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v37 shutdownBlock:v33];

LABEL_16:
  v31 = *MEMORY[0x1E69E9840];
}

void __51__APSConnection_requestURLTokenForInfo_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*v2 + 13))
  {
    [*v2 _insertURLTokenBlock:*(a1 + 48) forInfo:*(a1 + 40)];
    xdict = xpc_dictionary_create(0, 0, 0);
    v3 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(xdict, v3, v4, v5, v6, v7, v8, v9, 16);
    v10 = [*(a1 + 40) dictionaryRepresentation];
    v11 = APSCreateXPCObjectFromDictionary(v10);

    xpc_dictionary_set_value(xdict, "info", v11);
    xpc_connection_send_message(*(*(a1 + 32) + 104), xdict);
  }

  else
  {
    v12 = +[APSLog connection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __51__APSConnection_requestURLTokenForInfo_completion___block_invoke_cold_1(v2, a1);
    }

    v19 = APSURLTokenError(101, @"No connection to apsd", v13, v14, v15, v16, v17, v18, v20);
    [*(a1 + 32) calloutToDelegatesForURLTokenError:v19 forInfo:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void __51__APSConnection_requestURLTokenForInfo_completion___block_invoke_255(uint64_t a1)
{
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__APSConnection_requestURLTokenForInfo_completion___block_invoke_255_cold_1(a1);
  }

  v9 = APSURLTokenError(101, @"Shutting down, unable to reach apsd", v3, v4, v5, v6, v7, v8, v10);
  [*(a1 + 40) calloutToDelegatesForURLTokenError:v9 forInfo:*(a1 + 32) completion:*(a1 + 48)];
}

- (void)_insertURLTokenBlock:(id)block forInfo:(id)info
{
  blockCopy = block;
  infoCopy = info;
  pendingURLTokenBlocks = self->_pendingURLTokenBlocks;
  if (!pendingURLTokenBlocks)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_pendingURLTokenBlocks;
    self->_pendingURLTokenBlocks = v8;

    pendingURLTokenBlocks = self->_pendingURLTokenBlocks;
  }

  v10 = [(NSMutableDictionary *)pendingURLTokenBlocks objectForKeyedSubscript:infoCopy];

  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_pendingURLTokenBlocks objectForKeyedSubscript:infoCopy];
    v12 = MEMORY[0x1B2746DE0](blockCopy);
    [v11 addObject:v12];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E695DF70]);
    v11 = MEMORY[0x1B2746DE0](blockCopy);
    v12 = [v13 initWithObjects:{v11, 0}];
    [(NSMutableDictionary *)self->_pendingURLTokenBlocks setObject:v12 forKeyedSubscript:infoCopy];
  }
}

- (id)_removeURLTokenBlocksForInfo:(id)info
{
  infoCopy = info;
  v5 = [(NSMutableDictionary *)self->_pendingURLTokenBlocks objectForKeyedSubscript:infoCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_pendingURLTokenBlocks setObject:0 forKeyedSubscript:infoCopy];
    if (![(NSMutableDictionary *)self->_pendingURLTokenBlocks count])
    {
      pendingURLTokenBlocks = self->_pendingURLTokenBlocks;
      self->_pendingURLTokenBlocks = 0;
    }
  }

  return v5;
}

- (void)calloutToInvalidateCompletion:(id)completion withSuccess:(BOOL)success error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  if (completionCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__APSConnection_calloutToInvalidateCompletion_withSuccess_error___block_invoke;
    v10[3] = &unk_1E7B226F8;
    v12 = completionCopy;
    successCopy = success;
    v11 = errorCopy;
    [(APSConnection *)self _asyncOnDelegateQueueWithBlock:v10 requiresDelegate:0];
  }
}

- (void)invalidateURLTokenForInfo:(id)info completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  v8 = +[APSLog shouldReduceLogging];
  v9 = +[APSLog connection];
  v10 = v9;
  if (v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v11 = MEMORY[0x1B2746DE0](completionCopy);
    *buf = 138412802;
    selfCopy2 = self;
    v32 = 2112;
    v33 = infoCopy;
    v34 = 2112;
    v35 = v11;
    v12 = v10;
    v13 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = MEMORY[0x1B2746DE0](completionCopy);
    *buf = 138412802;
    selfCopy2 = self;
    v32 = 2112;
    v33 = infoCopy;
    v34 = 2112;
    v35 = v11;
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v12, v13, "%@ invalidateURLTokenForInfo: %@ completion %@", buf, 0x20u);

LABEL_7:
  topic = [infoCopy topic];

  if (topic)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke;
    v27[3] = &unk_1E7B22408;
    v27[4] = self;
    v28 = infoCopy;
    v29 = completionCopy;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_266;
    v24[3] = &unk_1E7B22408;
    v24[4] = self;
    v25 = v28;
    v26 = v29;
    [(APSConnection *)self _dispatch_async_to_ivarQueue:v27 shutdownBlock:v24];
  }

  else
  {
    v15 = +[APSLog connection];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [APSConnection requestURLTokenForInfo:completion:];
    }

    v22 = APSURLTokenError(100, @"Missing topic", v16, v17, v18, v19, v20, v21, v24[0]);
    [(APSConnection *)self calloutToInvalidateCompletion:completionCopy withSuccess:0 error:v22];
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke(id *a1)
{
  v2 = (a1 + 4);
  [a1[4] _connectIfNecessaryOnIvarQueue];
  if (*(*v2 + 104))
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(v3, v4, v5, v6, v7, v8, v9, v10, 19);
    v11 = [a1[5] topic];
    APSInsertNSStringsToXPCDictionary(v3, "topic", v12, v13, v14, v15, v16, v17, v11);

    v19 = a1[4];
    v18 = a1[5];
    v20 = *(v19 + 13);
    v21 = *(v19 + 2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_2;
    handler[3] = &unk_1E7B22720;
    handler[4] = v19;
    v33 = v18;
    v34 = a1[6];
    xpc_connection_send_message_with_reply(v20, v3, v21, handler);
  }

  else
  {
    v22 = +[APSLog connection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_cold_1(v2, a1);
    }

    v23 = a1[4];
    v24 = a1[6];
    v3 = APSURLTokenError(101, @"No connection to apsd", v25, v26, v27, v28, v29, v30, v31);
    [v23 calloutToInvalidateCompletion:v24 withSuccess:0 error:v3];
  }
}

void __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_3;
  v9[3] = &unk_1E7B22720;
  v9[4] = v4;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_262;
  v6[3] = &unk_1E7B22408;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [v4 _handleEvent:a2 withHandler:v9 errorHandler:v6];
}

uint64_t __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_3(uint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = result;
    v3 = +[APSLog shouldReduceLogging];
    v4 = +[APSLog connection];
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(v2 + 32);
        v7 = *(v2 + 40);
        v13 = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_DEBUG;
LABEL_7:
        _os_log_impl(&dword_1B233B000, v8, v9, "%@ invalidateURLTokenForInfo calling completion for %@", &v13, 0x16u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }

    result = [*(v2 + 32) calloutToInvalidateCompletion:*(v2 + 48) withSuccess:1 error:0];
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_262(uint64_t a1)
{
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_262_cold_1(a1);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v11 = APSURLTokenError(101, @"apsd connection interrupted", v5, v6, v7, v8, v9, v10, v12);
  [v3 calloutToInvalidateCompletion:v4 withSuccess:0 error:v11];
}

void __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_266(uint64_t a1)
{
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_266_cold_1(a1);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v11 = APSURLTokenError(101, @"Shutting down, unable to reach apsd", v5, v6, v7, v8, v9, v10, v12);
  [v3 calloutToInvalidateCompletion:v4 withSuccess:0 error:v11];
}

- (void)currentTokenForInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy2 = self;
    v17 = 2112;
    v18 = infoCopy;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy2 = self;
    v17 = 2112;
    v18 = infoCopy;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v8, v9, "%@: Current token for info %@", buf, 0x16u);
LABEL_7:

  topic = [infoCopy topic];

  if (topic)
  {
    identifier = [infoCopy identifier];

    if (!identifier)
    {
      [infoCopy setIdentifier:&stru_1F299CEB0];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__APSConnection_currentTokenForInfo___block_invoke;
    v13[3] = &unk_1E7B220F0;
    v13[4] = self;
    v14 = infoCopy;
    [(APSConnection *)self _dispatch_async_to_ivarQueue:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __37__APSConnection_currentTokenForInfo___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    v2 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(xdict, v2, v3, v4, v5, v6, v7, v8, 20);
    v9 = [*(a1 + 40) dictionaryRepresentation];
    v10 = APSCreateXPCObjectFromDictionary(v9);

    xpc_dictionary_set_value(xdict, "info", v10);
    xpc_connection_send_message(*(*(a1 + 32) + 104), xdict);

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = +[APSLog connection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1B233B000, v12, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in currentTokenForInfo!", buf, 0xCu);
    }

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)currentURLTokenForInfo:(id)info
{
  v18 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy2 = self;
    v16 = 2112;
    v17 = infoCopy;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy2 = self;
    v16 = 2112;
    v17 = infoCopy;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v8, v9, "%@: Current url token for info %@", buf, 0x16u);
LABEL_7:

  topic = [infoCopy topic];

  if (topic)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__APSConnection_currentURLTokenForInfo___block_invoke;
    v12[3] = &unk_1E7B220F0;
    v12[4] = self;
    v13 = infoCopy;
    [(APSConnection *)self _dispatch_async_to_ivarQueue:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __40__APSConnection_currentURLTokenForInfo___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    v2 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(xdict, v2, v3, v4, v5, v6, v7, v8, 21);
    v9 = [*(a1 + 40) dictionaryRepresentation];
    v10 = APSCreateXPCObjectFromDictionary(v9);

    xpc_dictionary_set_value(xdict, "info", v10);
    xpc_connection_send_message(*(*(a1 + 32) + 104), xdict);

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = +[APSLog connection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1B233B000, v12, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in currentTokenForInfo!", buf, 0xCu);
    }

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)requestKeepAlive
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __33__APSConnection_requestKeepAlive__block_invoke;
  v2[3] = &unk_1E7B220C8;
  v2[4] = self;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v2];
}

void __33__APSConnection_requestKeepAlive__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    message = xpc_dictionary_create(0, 0, 0);
    v2 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(message, v2, v3, v4, v5, v6, v7, v8, 51);
    xpc_connection_send_message(*(*(a1 + 32) + 104), message);
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = +[APSLog connection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1B233B000, v10, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in requestKeepAlive!", buf, 0xCu);
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (void)confirmReceiptForMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy isTracingEnabled])
  {
    tracingUUID = [messageCopy tracingUUID];
    if (tracingUUID)
    {
      v6 = tracingUUID;
      topic = [messageCopy topic];

      if (topic)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __42__APSConnection_confirmReceiptForMessage___block_invoke;
        v8[3] = &unk_1E7B220F0;
        v8[4] = self;
        v9 = messageCopy;
        [(APSConnection *)self _dispatch_async_to_ivarQueue:v8];
      }
    }
  }
}

void __42__APSConnection_confirmReceiptForMessage___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    message = xpc_dictionary_create(0, 0, 0);
    v2 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(message, v2, v3, v4, v5, v6, v7, v8, 24);
    v9 = [*(a1 + 40) tracingUUID];
    APSInsertDatasToXPCDictionary(message, "tracingUUID", v10, v11, v12, v13, v14, v15, v9);

    v16 = [*(a1 + 40) topic];
    APSInsertNSStringsToXPCDictionary(message, "topic", v17, v18, v19, v20, v21, v22, v16);

    xpc_connection_send_message(*(*(a1 + 32) + 104), message);
    v23 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v24 = +[APSLog connection];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      *buf = 138412290;
      v29 = v25;
      _os_log_impl(&dword_1B233B000, v24, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in confirmReceiptForMessage!", buf, 0xCu);
    }

    v26 = *MEMORY[0x1E69E9840];
  }
}

+ (id)_createXPCConnectionWithQueueName:(const char *)name
{
  v3 = dispatch_queue_create(name, 0);
  v4 = APSXPCCreateConnectionForServiceWithQueue(1, 0, "com.apple.apsd", v3, 0, 0);

  return v4;
}

- (void)subscribeToChannel:(id)channel forTopic:(id)topic
{
  v12 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  v6 = MEMORY[0x1E695DEC8];
  topicCopy = topic;
  channelCopy2 = channel;
  v9 = [v6 arrayWithObjects:&channelCopy count:1];

  [(APSConnection *)self subscribeToChannels:v9 forTopic:topicCopy, channelCopy, v12];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToChannels:(id)channels forTopic:(id)topic
{
  v52 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  topicCopy = topic;
  v33 = [channelsCopy mutableCopy];
  array = [MEMORY[0x1E695DF70] array];
  enabledTopics = [(APSConnection *)self enabledTopics];
  v36 = topicCopy;
  if ([enabledTopics containsObject:topicCopy])
  {
    goto LABEL_6;
  }

  opportunisticTopics = [(APSConnection *)self opportunisticTopics];
  if ([opportunisticTopics containsObject:topicCopy])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  nonWakingTopics = [(APSConnection *)self nonWakingTopics];
  if ([nonWakingTopics containsObject:topicCopy])
  {

    goto LABEL_5;
  }

  ignoredTopics = [(APSConnection *)self ignoredTopics];
  v32 = [ignoredTopics containsObject:topicCopy];

  if ((v32 & 1) == 0)
  {
    enabledTopics = +[APSLog connection];
    if (os_log_type_enabled(enabledTopics, OS_LOG_TYPE_FAULT))
    {
      [APSConnection subscribeToChannels:forTopic:];
    }

    goto LABEL_6;
  }

LABEL_7:
  array2 = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = channelsCopy;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    do
    {
      v15 = 0;
      do
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v43 + 1) + 8 * v15);
        v17 = objc_alloc(MEMORY[0x1E695DEF0]);
        channelID = [v16 channelID];
        v19 = [v17 initWithBase64EncodedString:channelID options:0];

        if (v19)
        {
          [v16 setChannelTopic:v36];
          v20 = +[APSLog shouldReduceLogging];
          v21 = +[APSLog connection];
          v22 = v21;
          if (v20)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v48 = v16;
              v23 = v22;
              v24 = OS_LOG_TYPE_DEBUG;
              goto LABEL_21;
            }
          }

          else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v48 = v16;
            v23 = v22;
            v24 = OS_LOG_TYPE_DEFAULT;
LABEL_21:
            _os_log_impl(&dword_1B233B000, v23, v24, "Sending subscription request %@ to daemon", buf, 0xCu);
          }

          [array2 addObject:v16];
          goto LABEL_23;
        }

        v25 = +[APSLog connection];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [(APSConnection *)v49 subscribeToChannels:v16 forTopic:&v50, v25];
        }

        v26 = objc_alloc_init(APSChannelSubscriptionFailure);
        channelID2 = [v16 channelID];
        [(APSChannelSubscriptionFailure *)v26 setChannelID:channelID2];

        [(APSChannelSubscriptionFailure *)v26 setFailureReason:0];
        [array addObject:v26];
        [v33 removeObject:v16];

LABEL_23:
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v13);
  }

  if ([array count])
  {
    delegate = [(APSConnection *)self delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __46__APSConnection_subscribeToChannels_forTopic___block_invoke;
      v41[3] = &unk_1E7B22748;
      v41[4] = self;
      v42 = array;
      [(APSConnection *)self _asyncOnDelegateQueueWithBlock:v41];
    }
  }

  if ([v33 count])
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __46__APSConnection_subscribeToChannels_forTopic___block_invoke_2;
    v37[3] = &unk_1E7B222C8;
    v37[4] = self;
    v38 = v11;
    v39 = array2;
    v40 = v36;
    [(APSConnection *)self _dispatch_async_to_ivarQueue:v37];
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __46__APSConnection_subscribeToChannels_forTopic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) channelSubscriptionsFailedWithFailures:*(a1 + 40)];
}

uint64_t __46__APSConnection_subscribeToChannels_forTopic___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  v2 = [*(a1 + 32) subscribedChannels];
  [v2 addObjectsFromArray:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v3 _onIvarQueue_subscribeToChannels:v4 onTopic:v5];
}

- (void)_onIvarQueue_subscribeToChannels:(id)channels onTopic:(id)topic
{
  v43 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  topicCopy = topic;
  array = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = channelsCopy;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
        [array addObject:dictionaryRepresentation];
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v11);
  }

  if (self->_connection)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    uTF8String = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(v15, uTF8String, v17, v18, v19, v20, v21, v22, 52);
    APSInsertNSArraysToXPCDictionary(v15, "channelDicts", v23, v24, v25, v26, v27, v28, array);
    APSInsertNSStringsToXPCDictionary(v15, "pushTopic", v29, v30, v31, v32, v33, v34, topicCopy);
    xpc_connection_send_message(self->_connection, v15);
  }

  else
  {
    v15 = +[APSLog connection];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1B233B000, v15, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in subscribeToChannel:forTopic:!", buf, 0xCu);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeFromChannel:(id)channel forTopic:(id)topic
{
  v12 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  v6 = MEMORY[0x1E695DEC8];
  topicCopy = topic;
  channelCopy2 = channel;
  v9 = [v6 arrayWithObjects:&channelCopy count:1];

  [(APSConnection *)self unsubscribeFromChannels:v9 forTopic:topicCopy, channelCopy, v12];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeFromChannels:(id)channels forTopic:(id)topic
{
  v36 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  topicCopy = topic;
  array = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = channelsCopy;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        [v13 setChannelTopic:topicCopy];
        v14 = +[APSLog shouldReduceLogging];
        v15 = +[APSLog connection];
        v16 = v15;
        if (v14)
        {
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_12;
          }

          *buf = 138412290;
          v34 = v13;
          v17 = v16;
          v18 = OS_LOG_TYPE_DEBUG;
        }

        else
        {
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          *buf = 138412290;
          v34 = v13;
          v17 = v16;
          v18 = OS_LOG_TYPE_DEFAULT;
        }

        _os_log_impl(&dword_1B233B000, v17, v18, "Sending unsubscribe request %@ to daemon", buf, 0xCu);
LABEL_12:

        dictionaryRepresentation = [v13 dictionaryRepresentation];
        [array addObject:dictionaryRepresentation];
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v10);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __50__APSConnection_unsubscribeFromChannels_forTopic___block_invoke;
  v25[3] = &unk_1E7B222C8;
  v25[4] = self;
  v26 = v8;
  v27 = array;
  v28 = topicCopy;
  v20 = topicCopy;
  v21 = array;
  v22 = v8;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v25];

  v23 = *MEMORY[0x1E69E9840];
}

void __50__APSConnection_unsubscribeFromChannels_forTopic___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  v2 = [*(a1 + 32) subscribedChannels];
  [v2 removeObjectsInArray:*(a1 + 40)];

  if (*(*(a1 + 32) + 104))
  {
    message = xpc_dictionary_create(0, 0, 0);
    v3 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(message, v3, v4, v5, v6, v7, v8, v9, 53);
    APSInsertNSDictionariesToXPCDictionary(message, "channelDicts", v10, v11, v12, v13, v14, v15, *(a1 + 48));
    APSInsertNSStringsToXPCDictionary(message, "pushTopic", v16, v17, v18, v19, v20, v21, *(a1 + 56));
    xpc_connection_send_message(*(*(a1 + 32) + 104), message);
    v22 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v23 = +[APSLog connection];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      *buf = 138412290;
      v28 = v24;
      _os_log_impl(&dword_1B233B000, v23, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in unsubscribeFromChannel:forTopic:!", buf, 0xCu);
    }

    v25 = *MEMORY[0x1E69E9840];
  }
}

- (void)getRegisteredChannelsForTopic:(id)topic withCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke;
    v18[3] = &unk_1E7B22798;
    v18[4] = self;
    v19 = completionCopy;
    v9 = MEMORY[0x1B2746DE0](v18);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_3;
    v15[3] = &unk_1E7B22408;
    v15[4] = self;
    v16 = topicCopy;
    v17 = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_282;
    v13[3] = &unk_1E7B221D8;
    v13[4] = self;
    v14 = v17;
    v10 = v17;
    [(APSConnection *)self _dispatch_async_to_ivarQueue:v15 shutdownBlock:v13];
  }

  else
  {
    v11 = +[APSLog connection];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1B233B000, v11, OS_LOG_TYPE_DEFAULT, "%@ APS getRegisteredChannelsForTopic:withCompletion: was given a nil block -- returning", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_2;
  v11[3] = &unk_1E7B22770;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 _asyncOnDelegateQueueWithBlock:v11 requiresDelegate:0];
}

void __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_3(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(v2, v3, v4, v5, v6, v7, v8, v9, 54);
    APSInsertNSStringsToXPCDictionary(v2, "pushTopic", v10, v11, v12, v13, v14, v15, *(a1 + 40));
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = *(v17 + 104);
    v19 = *(v17 + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_4;
    handler[3] = &unk_1E7B22720;
    handler[4] = v17;
    v32 = v16;
    v33 = *(a1 + 48);
    xpc_connection_send_message_with_reply(v18, v2, v19, handler);
  }

  else
  {
    v20 = +[APSLog connection];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      *buf = 138412290;
      v35 = v21;
      _os_log_impl(&dword_1B233B000, v20, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in subscribeToChannel:forTopic:!", buf, 0xCu);
    }

    v22 = *(a1 + 48);
    v2 = APSPubSubError(100, @"Failed connecting to apsd", v23, v24, v25, v26, v27, v28, v30);
    (*(v22 + 16))(v22, 0, v2);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_5;
  v12[3] = &unk_1E7B227C0;
  v5 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_275;
  v9[3] = &unk_1E7B22408;
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = *(a1 + 48);
  v8 = v5;
  [v4 _handleEvent:v8 withHandler:v12 errorHandler:v9];
}

void __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_5(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = APSGetXPCArrayFromDictionary(v2, "subscribedChannels");
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = objc_alloc(CUTWeakLinkClass());
          v12 = [v11 initWithDictionary:{v10, v18}];
          [v4 addObject:v12];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v7);
    }

    v13 = +[APSLog connection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      *buf = 138412802;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_1B233B000, v13, OS_LOG_TYPE_DEFAULT, "%@ push topic %@ got registered channels %@", buf, 0x20u);
    }

    v16 = [v4 mutableCopy];
    [*(a1 + 40) setSubscribedChannels:v16];

    (*(*(a1 + 56) + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_275(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *v14 = 138412546;
    *&v14[4] = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1B233B000, v2, OS_LOG_TYPE_DEFAULT, "%@ APS received an error in getRegisteredChannelsForTopic:withCompletion: %@", v14, 0x16u);
  }

  v5 = a1[6];
  v12 = APSPubSubError(100, @"XPC Error received", v6, v7, v8, v9, v10, v11, *v14);
  (*(v5 + 16))(v5, 0, v12);

  v13 = *MEMORY[0x1E69E9840];
}

void __62__APSConnection_getRegisteredChannelsForTopic_withCompletion___block_invoke_282(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *v13 = 138412290;
    *&v13[4] = v3;
    _os_log_impl(&dword_1B233B000, v2, OS_LOG_TYPE_DEFAULT, "%@ APS getRegisteredChannelsForTopic:withCompletion: shutting down -- returning", v13, 0xCu);
  }

  v4 = *(a1 + 40);
  v11 = APSPubSubError(100, @"Shutting down, unable to reach apsd", v5, v6, v7, v8, v9, v10, *v13);
  (*(v4 + 16))(v4, 0, v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getRegisteredChannelsForTopic:(id)topic completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__APSConnection_getRegisteredChannelsForTopic_completion___block_invoke;
    v10[3] = &unk_1E7B227E8;
    v11 = completionCopy;
    [(APSConnection *)self getRegisteredChannelsForTopic:topic withCompletion:v10];
    v8 = v11;
  }

  else
  {
    v8 = +[APSLog connection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1B233B000, v8, OS_LOG_TYPE_DEFAULT, "%@ APS getRegisteredChannelsForTopic:completion: was given a nil block -- returning", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __58__APSConnection_getRegisteredChannelsForTopic_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    a2 = 0;
  }

  return (*(v3 + 16))(v3, a2);
}

- (id)registeredChannelsForTopic:(id)topic error:(id *)error
{
  topicCopy = topic;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__APSConnection_registeredChannelsForTopic_error___block_invoke;
  v12[3] = &unk_1E7B22860;
  v12[4] = self;
  v7 = topicCopy;
  v13 = v7;
  v14 = &v16;
  v15 = &v22;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__APSConnection_registeredChannelsForTopic_error___block_invoke_284;
  v11[3] = &unk_1E7B22318;
  v11[4] = self;
  v11[5] = &v22;
  [(APSConnection *)self _dispatch_sync_to_ivarQueue:v12 shutdownBlock:v11];
  if (error)
  {
    v8 = v23[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v17[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __50__APSConnection_registeredChannelsForTopic_error___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _connectIfNecessaryOnIvarQueue];
  if (*(*(a1 + 32) + 104))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(v2, v3, v4, v5, v6, v7, v8, v9, 54);
    APSInsertNSStringsToXPCDictionary(v2, "pushTopic", v10, v11, v12, v13, v14, v15, *(a1 + 40));
    v16 = xpc_connection_send_message_with_reply_sync(*(*(a1 + 32) + 104), v2);
    v17 = *(a1 + 32);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __50__APSConnection_registeredChannelsForTopic_error___block_invoke_2;
    v39[3] = &unk_1E7B22810;
    v18 = v16;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v40 = v18;
    v41 = v19;
    v21 = v20;
    v22 = *(a1 + 48);
    v42 = v21;
    v43 = v22;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __50__APSConnection_registeredChannelsForTopic_error___block_invoke_283;
    v36[3] = &unk_1E7B22838;
    v36[4] = *(a1 + 32);
    v37 = v18;
    v38 = *(a1 + 56);
    v23 = v18;
    [v17 _handleEvent:v23 withHandler:v39 errorHandler:v36];
  }

  else
  {
    v24 = +[APSLog connection];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      *buf = 138412290;
      v45 = v25;
      _os_log_impl(&dword_1B233B000, v24, OS_LOG_TYPE_DEFAULT, "%@ APS _connection is NULL in subscribeToChannel:forTopic:!", buf, 0xCu);
    }

    v32 = APSPubSubError(100, @"Failed connecting to apsd", v26, v27, v28, v29, v30, v31, v35);
    v33 = *(*(a1 + 56) + 8);
    v2 = *(v33 + 40);
    *(v33 + 40) = v32;
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __50__APSConnection_registeredChannelsForTopic_error___block_invoke_2(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = APSGetXPCArrayFromDictionary(v2, "subscribedChannels");
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v11 = objc_alloc(CUTWeakLinkClass());
          v12 = [v11 initWithDictionary:{v10, v20}];
          [v4 addObject:v12];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v7);
    }

    v13 = +[APSLog connection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[5];
      v15 = a1[6];
      *buf = 138412802;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_1B233B000, v13, OS_LOG_TYPE_DEFAULT, "%@ push topic %@ got registered channels %@", buf, 0x20u);
    }

    v16 = [v4 copy];
    v17 = *(a1[7] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __50__APSConnection_registeredChannelsForTopic_error___block_invoke_283(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *v15 = 138412546;
    *&v15[4] = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1B233B000, v2, OS_LOG_TYPE_DEFAULT, "%@ APS received an error in getRegisteredChannelsForTopic:withCompletion: %@", v15, 0x16u);
  }

  v11 = APSPubSubError(100, @"XPC Error received", v5, v6, v7, v8, v9, v10, *v15);
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *MEMORY[0x1E69E9840];
}

void __50__APSConnection_registeredChannelsForTopic_error___block_invoke_284(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[APSLog connection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *v14 = 138412290;
    *&v14[4] = v3;
    _os_log_impl(&dword_1B233B000, v2, OS_LOG_TYPE_DEFAULT, "%@ APS getRegisteredChannelsForTopic:withCompletion: shutting down -- returning", v14, 0xCu);
  }

  v10 = APSPubSubError(100, @"Shutting down, unable to reach apsd", v4, v5, v6, v7, v8, v9, *v14);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_deliverFailedChannelSubscriptions:(id)subscriptions onTopic:(id)topic
{
  subscriptionsCopy = subscriptions;
  topicCopy = topic;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__APSConnection__deliverFailedChannelSubscriptions_onTopic___block_invoke;
  v10[3] = &unk_1E7B222F0;
  v11 = subscriptionsCopy;
  v12 = topicCopy;
  selfCopy = self;
  v8 = topicCopy;
  v9 = subscriptionsCopy;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v10];
}

void __60__APSConnection__deliverFailedChannelSubscriptions_onTopic___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v49 = [MEMORY[0x1E695DF70] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v47 = a1;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v62;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v62 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v61 + 1) + 8 * i);
        v8 = objc_alloc_init(APSChannelSubscriptionFailure);
        v9 = [v7 objectForKeyedSubscript:@"channelID"];
        [(APSChannelSubscriptionFailure *)v8 setChannelID:v9];

        v10 = [v7 objectForKeyedSubscript:@"reason"];
        -[APSChannelSubscriptionFailure setFailureReason:](v8, "setFailureReason:", [v10 integerValue]);
        [(APSChannelSubscriptionFailure *)v8 setPushTopic:*(v47 + 40)];
        [v49 addObject:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v4);
  }

  v11 = +[APSLog shouldReduceLogging];
  v12 = +[APSLog connection];
  v13 = v12;
  if (v11)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v15 = *(v47 + 40);
    v14 = *(v47 + 48);
    *buf = 138412802;
    v68 = v14;
    v69 = 2112;
    v70 = v49;
    v71 = 2112;
    v72 = v15;
    v16 = v13;
    v17 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v19 = *(v47 + 40);
    v18 = *(v47 + 48);
    *buf = 138412802;
    v68 = v18;
    v69 = 2112;
    v70 = v49;
    v71 = 2112;
    v72 = v19;
    v16 = v13;
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v16, v17, "%@ Received failed subscription requests %@ for topic %@", buf, 0x20u);
LABEL_14:

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v49;
  v45 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v45)
  {
    v44 = *v58;
    do
    {
      v20 = 0;
      do
      {
        if (*v58 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v20;
        v21 = *(*(&v57 + 1) + 8 * v20);
        v48 = [MEMORY[0x1E695DF70] array];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v50 = [*(v47 + 48) subscribedChannels];
        v22 = [v50 countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v54;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v54 != v24)
              {
                objc_enumerationMutation(v50);
              }

              v26 = *(*(&v53 + 1) + 8 * j);
              v27 = [v26 channelID];
              v28 = [v21 channelID];
              if (([v27 isEqualToString:v28] & 1) == 0)
              {

                continue;
              }

              v29 = [v26 channelTopic];
              v30 = [v21 pushTopic];
              v31 = [v29 isEqualToString:v30];

              if (!v31)
              {
                continue;
              }

              v32 = +[APSLog shouldReduceLogging];
              v33 = +[APSLog connection];
              v34 = v33;
              if (v32)
              {
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  v35 = *(v47 + 48);
                  *buf = 138412290;
                  v68 = v35;
                  v36 = v34;
                  v37 = OS_LOG_TYPE_DEBUG;
LABEL_32:
                  _os_log_impl(&dword_1B233B000, v36, v37, "%@ Removing in-memory subscription for failed channel", buf, 0xCu);
                }
              }

              else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v38 = *(v47 + 48);
                *buf = 138412290;
                v68 = v38;
                v36 = v34;
                v37 = OS_LOG_TYPE_DEFAULT;
                goto LABEL_32;
              }

              [v48 addObject:v26];
            }

            v23 = [v50 countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v23);
        }

        v39 = [*(v47 + 48) subscribedChannels];
        [v39 removeObjectsInArray:v48];

        v20 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v45);
  }

  v40 = *(v47 + 48);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __60__APSConnection__deliverFailedChannelSubscriptions_onTopic___block_invoke_291;
  v51[3] = &unk_1E7B22748;
  v51[4] = v40;
  v52 = obj;
  v41 = obj;
  [v40 _asyncOnDelegateQueueWithBlock:v51];

  v42 = *MEMORY[0x1E69E9840];
}

void __60__APSConnection__deliverFailedChannelSubscriptions_onTopic___block_invoke_291(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[APSLog shouldReduceLogging];
    v5 = +[APSLog connection];
    v6 = v5;
    if (v4)
    {
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

      v7 = *(a1 + 32);
      v19 = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v3;
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      v10 = *(a1 + 32);
      v19 = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_1B233B000, v8, v9, "%@ calling %@ for subscription failures", &v19, 0x16u);
LABEL_8:

    [v3 connection:*(a1 + 32) channelSubscriptionsFailedWithFailures:*(a1 + 40)];
    v11 = +[APSLog shouldReduceLogging];
    v12 = +[APSLog connection];
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 32);
        v19 = 138412546;
        v20 = v14;
        v21 = 2112;
        v22 = v3;
        v15 = v13;
        v16 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&dword_1B233B000, v15, v16, "%@ returned from %@ channelSubscriptionsFailedWithFailures:", &v19, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v19 = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v3;
      v15 = v13;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_13;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_resendPubSubSubscriptions
{
  v43 = *MEMORY[0x1E69E9840];
  subscribedChannels = [(APSConnection *)self subscribedChannels];
  v4 = [subscribedChannels count];

  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog connection];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_7:
      _os_log_impl(&dword_1B233B000, v8, v9, "%@: Re-sending all pubsub subscriptions for correctness", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_7;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  subscribedChannels2 = [(APSConnection *)self subscribedChannels];
  v12 = [subscribedChannels2 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(subscribedChannels2);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        channelTopic = [v16 channelTopic];
        v18 = [dictionary objectForKeyedSubscript:channelTopic];

        if (!v18)
        {
          array = [MEMORY[0x1E695DF70] array];
          channelTopic2 = [v16 channelTopic];
          [dictionary setObject:array forKeyedSubscript:channelTopic2];
        }

        channelTopic3 = [v16 channelTopic];
        v22 = [dictionary objectForKeyedSubscript:channelTopic3];
        [v22 addObject:v16];
      }

      v13 = [subscribedChannels2 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v13);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  allKeys = [dictionary allKeys];
  v24 = [allKeys countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(allKeys);
        }

        v28 = *(*(&v31 + 1) + 8 * j);
        v29 = [dictionary objectForKeyedSubscript:v28];
        [(APSConnection *)self _onIvarQueue_subscribeToChannels:v29 onTopic:v28];
      }

      v25 = [allKeys countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

LABEL_25:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)_onIvarQueue_setPushWakeTopics:(id)topics
{
  v24 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  v6 = +[APSLog shouldReduceLogging];
  v7 = +[APSLog connection];
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy3 = self;
    v22 = 2112;
    v23 = topicsCopy;
    v9 = v8;
    v10 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy3 = self;
    v22 = 2112;
    v23 = topicsCopy;
    v9 = v8;
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v9, v10, "%@: Setting PushWakeTopics: %@", buf, 0x16u);
LABEL_7:

  if (self->_pushWakeTopics != topicsCopy)
  {
    objc_storeStrong(&self->_pushWakeTopics, topics);
  }

  [(APSConnection *)self _connectIfNecessaryOnIvarQueue];
  if (self->_connection)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    uTF8String = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(v11, uTF8String, v13, v14, v15, v16, v17, v18, 40);
    [(APSConnection *)self _addPushWakeTopicsToXPCMessage:v11];
    xpc_connection_send_message(self->_connection, v11);
  }

  else
  {
    v11 = +[APSLog connection];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1B233B000, v11, OS_LOG_TYPE_DEFAULT, "%@ _connection is NULL in _setPushWakeTopics", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setUltraConstrainedTopics:(id)topics
{
  v4 = [topics copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__APSConnection_setUltraConstrainedTopics___block_invoke;
  v6[3] = &unk_1E7B220F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(APSConnection *)self _dispatch_async_to_ivarQueue:v6];
}

- (void)_onIvarQueue_setUltraConstrainedTopics:(id)topics
{
  v24 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  v6 = +[APSLog shouldReduceLogging];
  v7 = +[APSLog connection];
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy3 = self;
    v22 = 2112;
    v23 = topicsCopy;
    v9 = v8;
    v10 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    selfCopy3 = self;
    v22 = 2112;
    v23 = topicsCopy;
    v9 = v8;
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1B233B000, v9, v10, "%@: Setting UltraConstrainedTopics: %@", buf, 0x16u);
LABEL_7:

  if (self->_ultraConstrainedTopics != topicsCopy)
  {
    objc_storeStrong(&self->_ultraConstrainedTopics, topics);
  }

  [(APSConnection *)self _connectIfNecessaryOnIvarQueue];
  if (self->_connection)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    uTF8String = [@"message-type" UTF8String];
    APSInsertIntsToXPCDictionary(v11, uTF8String, v13, v14, v15, v16, v17, v18, 25);
    [(APSConnection *)self _addUltraConstrainedTopicsToXPCMessage:v11];
    xpc_connection_send_message(self->_connection, v11);
  }

  else
  {
    v11 = +[APSLog connection];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1B233B000, v11, OS_LOG_TYPE_DEFAULT, "%@ _connection is NULL in _setUltraConstrainedTopics", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_initWithEnvironmentName:namedDelegatePort:enablePushDuringSleep:personaUniqueString:queue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __121__APSConnection__onIvarQueue_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_sendToDaemon_completion___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_blockingXPCCallWithArgumentBlock:resultHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)requestURLTokenForInfo:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)requestURLTokenForInfo:completion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __51__APSConnection_requestURLTokenForInfo_completion___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1B233B000, v4, v5, "%@ APS _connection is NULL in requestURLTokenForInfo %@");
  v6 = *MEMORY[0x1E69E9840];
}

void __51__APSConnection_requestURLTokenForInfo_completion___block_invoke_255_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1B233B000, v4, v5, "%@ APS _connection is NULL in invalidateURLTokenForInfo %@");
  v6 = *MEMORY[0x1E69E9840];
}

void __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_262_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __54__APSConnection_invalidateURLTokenForInfo_completion___block_invoke_266_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToChannels:(void *)a3 forTopic:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 channelID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1B233B000, a4, OS_LOG_TYPE_ERROR, "ChannelID is not invalid.  Provided ID is not a base64 string. %@", a1, 0xCu);
}

@end