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
    v3 = [NSMapTable mapTableWithKeyOptions:0x10000 valueOptions:5];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    subscriptionStatusListeners = v2->_subscriptionStatusListeners;
    v2->_subscriptionStatusListeners = v5;

    v7 = +[NSHashTable weakObjectsHashTable];
    transactionListeners = v2->_transactionListeners;
    v2->_transactionListeners = v7;

    v9 = +[NSHashTable weakObjectsHashTable];
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
  if (qword_100012510 != -1)
  {
    sub_100004494();
  }

  v3 = qword_100012508;

  return v3;
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
      v12 = &_dispatch_main_q;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100001774;
      handler[3] = &unk_10000C548;
      handler[4] = self;
      notify_register_dispatch(v11, &self->_unfinishedTransactionsToken, &_dispatch_main_q, handler);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000044A8(self);
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

        [*(*(&v10 + 1) + 8 * v9) pendingMessages:v4];
        v9 = v9 + 1;
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

        v9 = v9 + 1;
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

        v9 = v9 + 1;
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

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = +[NSMutableArray array];
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

        v16 = [*(*(&v26 + 1) + 8 * v15) objectForKeyedSubscript:off_1000123D0];
        if ([v16 length])
        {
          [v11 addObject:v16];
        }

        v15 = v15 + 1;
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

          [*(*(&v22 + 1) + 8 * v21) receivedTransactions:v11];
          v21 = v21 + 1;
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

        v9 = v9 + 1;
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

        v9 = v9 + 1;
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

        v9 = v9 + 1;
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

        v9 = v9 + 1;
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

        [*(*(&v10 + 1) + 8 * v9) receivedStatuses:v4];
        v9 = v9 + 1;
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

        [*(*(&v10 + 1) + 8 * v9) receivedTransactions:v4];
        v9 = v9 + 1;
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
      for (i = 0; i != v10; i = i + 1)
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
      for (i = 0; i != v10; i = i + 1)
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
      for (i = 0; i != v10; i = i + 1)
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
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = sub_1000013D8(v3);
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
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000030FC;
  v6[3] = &unk_10000C570;
  v6[4] = self;
  v4 = [v3 storeKitServiceWithErrorHandler:v6];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003144;
  v5[3] = &unk_10000C598;
  v5[4] = self;
  [v4 checkServerQueueForClientIfNecessary:0 forceCheck:1 reply:v5];
}

@end