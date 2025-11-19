@interface SKClientBroker
+ (id)defaultBroker;
- (BOOL)hasTransactionListener;
- (SKClientBroker)init;
- (id)_unfinishedTransactionsNotificationName;
- (void)_cancelNotifyTokenIfValid:(int)a3;
- (void)_handleUnfinishedTransactionsNotification;
- (void)askToShowMessageWithReplyBlock:(id)a3;
- (void)dealloc;
- (void)downloadAdded:(id)a3;
- (void)downloadRemoved:(id)a3;
- (void)downloadStatusChanged:(id)a3;
- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4;
- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4;
- (void)hasAnyMessageListenersWithReply:(id)a3;
- (void)pendingMessages:(id)a3;
- (void)receivedStatuses:(id)a3;
- (void)receivedTransactions:(id)a3;
- (void)registerClient:(id)a3 withIdentifier:(id)a4;
- (void)registerMessageListener:(id)a3;
- (void)registerSubscriptionStatusListener:(id)a3;
- (void)registerTransactionListener:(id)a3;
- (void)removedEntitlementsForProductIdentifiers:(id)a3;
- (void)removedTransactions:(id)a3;
- (void)unregisterClientWithIdentifier:(id)a3;
- (void)unregisterMessageListener:(id)a3;
- (void)unregisterSubscriptionStatusListener:(id)a3;
- (void)unregisterTransactionListener:(id)a3;
- (void)updatedTransactions:(id)a3;
@end

@implementation SKClientBroker

- (SKClientBroker)init
{
  v12.receiver = self;
  v12.super_class = SKClientBroker;
  v2 = [(SKClientBroker *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0x10000 valueOptions:5];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    subscriptionStatusListeners = v2->_subscriptionStatusListeners;
    v2->_subscriptionStatusListeners = v5;

    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    transactionListeners = v2->_transactionListeners;
    v2->_transactionListeners = v7;

    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    messageListeners = v2->_messageListeners;
    v2->_messageListeners = v9;

    *&v2->_unfinishedTransactionsToken = -1;
  }

  return v2;
}

- (void)dealloc
{
  [(SKClientBroker *)self _cancelNotifyTokenIfValid:self->_unfinishedTransactionsToken];
  v3.receiver = self;
  v3.super_class = SKClientBroker;
  [(SKClientBroker *)&v3 dealloc];
}

+ (id)defaultBroker
{
  if (defaultBroker_onceToken != -1)
  {
    +[SKClientBroker defaultBroker];
  }

  v3 = defaultBroker_sharedClient;

  return v3;
}

uint64_t __31__SKClientBroker_defaultBroker__block_invoke()
{
  defaultBroker_sharedClient = objc_alloc_init(SKClientBroker);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)hasTransactionListener
{
  v2 = self;
  v3 = self->_transactionListeners;
  objc_sync_enter(v3);
  LOBYTE(v2) = [(NSHashTable *)v2->_transactionListeners count]!= 0;
  objc_sync_exit(v3);

  return v2;
}

- (void)registerClient:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_clients;
  objc_sync_enter(v8);
  [(NSMapTable *)self->_clients setObject:v6 forKey:v7];
  if (!notify_is_valid_token(self->_unfinishedTransactionsToken))
  {
    v9 = [(SKClientBroker *)self _unfinishedTransactionsNotificationName];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 UTF8String];
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __48__SKClientBroker_registerClient_withIdentifier___block_invoke;
      handler[3] = &unk_1E7B27888;
      handler[4] = self;
      notify_register_dispatch(v11, &self->_unfinishedTransactionsToken, v12, handler);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKClientBroker registerClient:? withIdentifier:?];
    }
  }

  objc_sync_exit(v8);
}

- (void)unregisterClientWithIdentifier:(id)a3
{
  v5 = a3;
  v4 = self->_clients;
  objc_sync_enter(v4);
  [(NSMapTable *)self->_clients removeObjectForKey:v5];
  if (![(NSMapTable *)self->_clients count]&& notify_is_valid_token(self->_unfinishedTransactionsToken))
  {
    notify_cancel(self->_unfinishedTransactionsToken);
    self->_unfinishedTransactionsToken = -1;
  }

  objc_sync_exit(v4);
}

- (void)registerSubscriptionStatusListener:(id)a3
{
  v5 = a3;
  v4 = self->_subscriptionStatusListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_subscriptionStatusListeners addObject:v5];
  objc_sync_exit(v4);
}

- (void)unregisterSubscriptionStatusListener:(id)a3
{
  v5 = a3;
  v4 = self->_subscriptionStatusListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_subscriptionStatusListeners removeObject:v5];
  objc_sync_exit(v4);
}

- (void)registerTransactionListener:(id)a3
{
  v5 = a3;
  v4 = self->_transactionListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_transactionListeners addObject:v5];
  objc_sync_exit(v4);
}

- (void)unregisterTransactionListener:(id)a3
{
  v5 = a3;
  v4 = self->_transactionListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_transactionListeners removeObject:v5];
  objc_sync_exit(v4);
}

- (void)registerMessageListener:(id)a3
{
  v5 = a3;
  v4 = self->_messageListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_messageListeners addObject:v5];
  objc_sync_exit(v4);
}

- (void)unregisterMessageListener:(id)a3
{
  v5 = a3;
  v4 = self->_messageListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_messageListeners removeObject:v5];
  objc_sync_exit(v4);
}

- (void)pendingMessages:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_messageListeners;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSHashTable *)self->_messageListeners objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) pendingMessages:v4];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)askToShowMessageWithReplyBlock:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 askToShowMessageWithReplyBlock:v4];

          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v4[2](v4, 0, 1);
LABEL_11:
  objc_sync_exit(v5);
}

- (void)hasAnyMessageListenersWithReply:(id)a3
{
  v6 = a3;
  v4 = self->_messageListeners;
  objc_sync_enter(v4);
  v5 = [(NSHashTable *)self->_messageListeners count]!= 0;
  objc_sync_exit(v4);

  v6[2](v6, v5);
}

- (void)removedEntitlementsForProductIdentifiers:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 removedEntitlementsForProductIdentifiers:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)updatedTransactions:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 updatedTransactions:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v13)
  {
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v26 + 1) + 8 * v15) objectForKeyedSubscript:SKServerKeyTransactionReceipt];
        if ([v16 length])
        {
          [v11 addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }

  if ([v11 count])
  {
    v17 = self->_transactionListeners;
    objc_sync_enter(v17);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = [(NSHashTable *)self->_transactionListeners objectEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v19)
    {
      v20 = *v23;
      do
      {
        v21 = 0;
        do
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v22 + 1) + 8 * v21++) receivedTransactions:v11];
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v19);
    }

    objc_sync_exit(v17);
  }
}

- (void)removedTransactions:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 removedTransactions:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)downloadAdded:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 downloadAdded:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)downloadStatusChanged:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 downloadStatusChanged:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)downloadRemoved:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 downloadRemoved:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)receivedStatuses:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_subscriptionStatusListeners;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSHashTable *)self->_subscriptionStatusListeners objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) receivedStatuses:v4];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)receivedTransactions:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_transactionListeners;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSHashTable *)self->_transactionListeners objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) receivedTransactions:v4];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMapTable *)self->_clients objectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleAuthenticateRequest:v6 resultHandler:v7];
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMapTable *)self->_clients objectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleDialogRequest:v6 resultHandler:v7];
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMapTable *)self->_clients objectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleEngagementRequest:v6 resultHandler:v7];
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)_unfinishedTransactionsNotificationName
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = SKDistributedNotificationUnfinishedTransactionsForBundleID(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_cancelNotifyTokenIfValid:(int)a3
{
  if (notify_is_valid_token(a3))
  {

    notify_cancel(a3);
  }
}

- (void)_handleUnfinishedTransactionsNotification
{
  v3 = +[SKServiceBroker defaultBroker];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SKClientBroker__handleUnfinishedTransactionsNotification__block_invoke;
  v6[3] = &unk_1E7B278B0;
  v6[4] = self;
  v4 = [v3 storeKitServiceWithErrorHandler:v6];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__SKClientBroker__handleUnfinishedTransactionsNotification__block_invoke_30;
  v5[3] = &unk_1E7B278D8;
  v5[4] = self;
  [v4 checkServerQueueForClientIfNecessary:0 forceCheck:1 reply:v5];
}

void __59__SKClientBroker__handleUnfinishedTransactionsNotification__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __59__SKClientBroker__handleUnfinishedTransactionsNotification__block_invoke_cold_1();
  }
}

void __59__SKClientBroker__handleUnfinishedTransactionsNotification__block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __59__SKClientBroker__handleUnfinishedTransactionsNotification__block_invoke_30_cold_1();
    }
  }

  else if ([v5 count])
  {
    v7 = *(*(a1 + 32) + 8);
    objc_sync_enter(v7);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [*(*(a1 + 32) + 8) objectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v12 updatedTransactions:v5];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v7);
  }
}

- (void)registerClient:(uint64_t)a1 withIdentifier:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%{public}@ Not registering for unfinished transaction notifications because no bundle ID was available", &v1, 0xCu);
}

void __59__SKClientBroker__handleUnfinishedTransactionsNotification__block_invoke_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%{public}@: Error in remote proxy getting unfinished transactions: %{public}@", v0, 0x16u);
}

void __59__SKClientBroker__handleUnfinishedTransactionsNotification__block_invoke_30_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%{public}@: Error getting unfinished transactions: %{public}@", v0, 0x16u);
}

@end