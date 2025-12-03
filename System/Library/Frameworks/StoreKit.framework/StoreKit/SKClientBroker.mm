@interface SKClientBroker
+ (id)defaultBroker;
- (BOOL)hasTransactionListener;
- (SKClientBroker)init;
- (id)_unfinishedTransactionsNotificationName;
- (void)_cancelNotifyTokenIfValid:(int)valid;
- (void)_handleUnfinishedTransactionsNotification;
- (void)askToShowMessageWithReplyBlock:(id)block;
- (void)dealloc;
- (void)downloadAdded:(id)added;
- (void)downloadRemoved:(id)removed;
- (void)downloadStatusChanged:(id)changed;
- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler;
- (void)handleDialogRequest:(id)request resultHandler:(id)handler;
- (void)handleEngagementRequest:(id)request resultHandler:(id)handler;
- (void)hasAnyMessageListenersWithReply:(id)reply;
- (void)pendingMessages:(id)messages;
- (void)receivedStatuses:(id)statuses;
- (void)receivedTransactions:(id)transactions;
- (void)registerClient:(id)client withIdentifier:(id)identifier;
- (void)registerMessageListener:(id)listener;
- (void)registerSubscriptionStatusListener:(id)listener;
- (void)registerTransactionListener:(id)listener;
- (void)removedEntitlementsForProductIdentifiers:(id)identifiers;
- (void)removedTransactions:(id)transactions;
- (void)unregisterClientWithIdentifier:(id)identifier;
- (void)unregisterMessageListener:(id)listener;
- (void)unregisterSubscriptionStatusListener:(id)listener;
- (void)unregisterTransactionListener:(id)listener;
- (void)updatedTransactions:(id)transactions;
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

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    subscriptionStatusListeners = v2->_subscriptionStatusListeners;
    v2->_subscriptionStatusListeners = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    transactionListeners = v2->_transactionListeners;
    v2->_transactionListeners = weakObjectsHashTable2;

    weakObjectsHashTable3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    messageListeners = v2->_messageListeners;
    v2->_messageListeners = weakObjectsHashTable3;

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
  selfCopy = self;
  v3 = self->_transactionListeners;
  objc_sync_enter(v3);
  LOBYTE(selfCopy) = [(NSHashTable *)selfCopy->_transactionListeners count]!= 0;
  objc_sync_exit(v3);

  return selfCopy;
}

- (void)registerClient:(id)client withIdentifier:(id)identifier
{
  clientCopy = client;
  identifierCopy = identifier;
  v8 = self->_clients;
  objc_sync_enter(v8);
  [(NSMapTable *)self->_clients setObject:clientCopy forKey:identifierCopy];
  if (!notify_is_valid_token(self->_unfinishedTransactionsToken))
  {
    _unfinishedTransactionsNotificationName = [(SKClientBroker *)self _unfinishedTransactionsNotificationName];
    v10 = _unfinishedTransactionsNotificationName;
    if (_unfinishedTransactionsNotificationName)
    {
      uTF8String = [_unfinishedTransactionsNotificationName UTF8String];
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __48__SKClientBroker_registerClient_withIdentifier___block_invoke;
      handler[3] = &unk_1E7B27888;
      handler[4] = self;
      notify_register_dispatch(uTF8String, &self->_unfinishedTransactionsToken, v12, handler);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKClientBroker registerClient:? withIdentifier:?];
    }
  }

  objc_sync_exit(v8);
}

- (void)unregisterClientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = self->_clients;
  objc_sync_enter(v4);
  [(NSMapTable *)self->_clients removeObjectForKey:identifierCopy];
  if (![(NSMapTable *)self->_clients count]&& notify_is_valid_token(self->_unfinishedTransactionsToken))
  {
    notify_cancel(self->_unfinishedTransactionsToken);
    self->_unfinishedTransactionsToken = -1;
  }

  objc_sync_exit(v4);
}

- (void)registerSubscriptionStatusListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_subscriptionStatusListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_subscriptionStatusListeners addObject:listenerCopy];
  objc_sync_exit(v4);
}

- (void)unregisterSubscriptionStatusListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_subscriptionStatusListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_subscriptionStatusListeners removeObject:listenerCopy];
  objc_sync_exit(v4);
}

- (void)registerTransactionListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_transactionListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_transactionListeners addObject:listenerCopy];
  objc_sync_exit(v4);
}

- (void)unregisterTransactionListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_transactionListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_transactionListeners removeObject:listenerCopy];
  objc_sync_exit(v4);
}

- (void)registerMessageListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_messageListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_messageListeners addObject:listenerCopy];
  objc_sync_exit(v4);
}

- (void)unregisterMessageListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_messageListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_messageListeners removeObject:listenerCopy];
  objc_sync_exit(v4);
}

- (void)pendingMessages:(id)messages
{
  v15 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = self->_messageListeners;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSHashTable *)self->_messageListeners objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v9++) pendingMessages:messagesCopy];
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)askToShowMessageWithReplyBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 askToShowMessageWithReplyBlock:blockCopy];

          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  blockCopy[2](blockCopy, 0, 1);
LABEL_11:
  objc_sync_exit(v5);
}

- (void)hasAnyMessageListenersWithReply:(id)reply
{
  replyCopy = reply;
  v4 = self->_messageListeners;
  objc_sync_enter(v4);
  v5 = [(NSHashTable *)self->_messageListeners count]!= 0;
  objc_sync_exit(v4);

  replyCopy[2](replyCopy, v5);
}

- (void)removedEntitlementsForProductIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 removedEntitlementsForProductIdentifiers:identifiersCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)updatedTransactions:(id)transactions
{
  v37 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v36 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 updatedTransactions:transactionsCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = transactionsCopy;
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
          [array addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }

  if ([array count])
  {
    v17 = self->_transactionListeners;
    objc_sync_enter(v17);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    objectEnumerator2 = [(NSHashTable *)self->_transactionListeners objectEnumerator];
    v19 = [objectEnumerator2 countByEnumeratingWithState:&v22 objects:v34 count:16];
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
            objc_enumerationMutation(objectEnumerator2);
          }

          [*(*(&v22 + 1) + 8 * v21++) receivedTransactions:array];
        }

        while (v19 != v21);
        v19 = [objectEnumerator2 countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v19);
    }

    objc_sync_exit(v17);
  }
}

- (void)removedTransactions:(id)transactions
{
  v16 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 removedTransactions:transactionsCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)downloadAdded:(id)added
{
  v16 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 downloadAdded:addedCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)downloadStatusChanged:(id)changed
{
  v16 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 downloadStatusChanged:changedCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)downloadRemoved:(id)removed
{
  v16 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clients objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 downloadRemoved:removedCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)receivedStatuses:(id)statuses
{
  v15 = *MEMORY[0x1E69E9840];
  statusesCopy = statuses;
  v5 = self->_subscriptionStatusListeners;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSHashTable *)self->_subscriptionStatusListeners objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v9++) receivedStatuses:statusesCopy];
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)receivedTransactions:(id)transactions
{
  v15 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  v5 = self->_transactionListeners;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSHashTable *)self->_transactionListeners objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v9++) receivedTransactions:transactionsCopy];
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clients objectEnumerator];
  v9 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleAuthenticateRequest:requestCopy resultHandler:handlerCopy];
          goto LABEL_11;
        }
      }

      v10 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)handleDialogRequest:(id)request resultHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clients objectEnumerator];
  v9 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleDialogRequest:requestCopy resultHandler:handlerCopy];
          goto LABEL_11;
        }
      }

      v10 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)handleEngagementRequest:(id)request resultHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  objectEnumerator = [(NSMapTable *)self->_clients objectEnumerator];
  v9 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleEngagementRequest:requestCopy resultHandler:handlerCopy];
          goto LABEL_11;
        }
      }

      v10 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    v4 = SKDistributedNotificationUnfinishedTransactionsForBundleID(bundleIdentifier);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_cancelNotifyTokenIfValid:(int)valid
{
  if (notify_is_valid_token(valid))
  {

    notify_cancel(valid);
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