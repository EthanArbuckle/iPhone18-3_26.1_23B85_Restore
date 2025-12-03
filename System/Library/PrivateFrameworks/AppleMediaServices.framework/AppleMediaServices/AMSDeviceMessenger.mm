@interface AMSDeviceMessenger
- (AMSDeviceMessenger)init;
- (id)_getProxyObject;
- (id)_identifierFromDialogRequest:(id)request;
- (id)clearDialog:(id)dialog;
- (id)dialogsWithFilter:(id)filter;
- (id)sendDialog:(id)dialog account:(id)account;
- (void)_sendDelegateUpdateForMessage:(id)message;
- (void)addUpdateHandlerForType:(int64_t)type filter:(id)filter handler:(id)handler;
- (void)deviceMessengerDidClearMessage:(id)message;
- (void)deviceMessengerDidReceiveMessage:(id)message;
- (void)deviceMessengerDidReceiveReply:(id)reply;
- (void)deviceMessengerDidUpdateDevices;
@end

@implementation AMSDeviceMessenger

- (AMSDeviceMessenger)init
{
  v14.receiver = self;
  v14.super_class = AMSDeviceMessenger;
  v2 = [(AMSDeviceMessenger *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(AMSDaemonConnection);
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = dispatch_queue_create("com.apple.AMSDeviceMessenger", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    updateHandlers = v2->_updateHandlers;
    v2->_updateHandlers = v7;

    objc_initWeak(&location, v2);
    v9 = v2->_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __26__AMSDeviceMessenger_init__block_invoke;
    v11[3] = &unk_1E73B4418;
    objc_copyWeak(&v12, &location);
    [(AMSDaemonConnection *)v9 addInterruptionHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__AMSDeviceMessenger_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)addUpdateHandlerForType:(int64_t)type filter:(id)filter handler:(id)handler
{
  filterCopy = filter;
  handlerCopy = handler;
  if (!filterCopy)
  {
    filterCopy = objc_alloc_init(AMSDeviceMessengerFilter);
  }

  [(AMSDeviceMessengerFilter *)filterCopy setMessageType:type];
  queue = [(AMSDeviceMessenger *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AMSDeviceMessenger_addUpdateHandlerForType_filter_handler___block_invoke;
  block[3] = &unk_1E73B4378;
  selfCopy = self;
  v16 = handlerCopy;
  v14 = filterCopy;
  v11 = handlerCopy;
  v12 = filterCopy;
  dispatch_sync(queue, block);
}

void __61__AMSDeviceMessenger_addUpdateHandlerForType_filter_handler___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(AMSDeviceUpdateHandlerInfo);
  [(AMSDeviceUpdateHandlerInfo *)v4 setFilter:*(a1 + 32)];
  v2 = [*(a1 + 48) copy];
  [(AMSDeviceUpdateHandlerInfo *)v4 setBlock:v2];

  v3 = [*(a1 + 40) updateHandlers];
  [v3 addObject:v4];
}

- (id)dialogsWithFilter:(id)filter
{
  filterCopy = filter;
  if (!filterCopy)
  {
    filterCopy = objc_alloc_init(AMSDeviceMessengerFilter);
  }

  [(AMSDeviceMessengerFilter *)filterCopy setMessageType:1];
  v5 = objc_alloc_init(AMSMutablePromise);
  _getProxyObject = [(AMSDeviceMessenger *)self _getProxyObject];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__AMSDeviceMessenger_dialogsWithFilter___block_invoke;
  v12[3] = &unk_1E73B6CD0;
  v7 = v5;
  v13 = v7;
  selfCopy = self;
  v15 = filterCopy;
  v8 = filterCopy;
  [_getProxyObject addFinishBlock:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

void __40__AMSDeviceMessenger_dialogsWithFilter___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__AMSDeviceMessenger_dialogsWithFilter___block_invoke_2;
    v8[3] = &unk_1E73B6CA8;
    v7 = *(a1 + 32);
    v6 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = *(a1 + 48);
    [a2 getMessagesWithPurpose:50 completion:v8];
  }
}

void __40__AMSDeviceMessenger_dialogsWithFilter___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v33 = v10;
      v34 = 2114;
      v35 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to receive dialogs", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v8 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v33 = v13;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Received dialogs", buf, 0x16u);
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v5;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = [v21 object];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v24 = [v21 object];
            if ([*(a1 + 48) matchesMessage:v21])
            {
              [v15 addObject:v24];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    [*(a1 + 40) finishWithResult:v15];
    v6 = v25;
    v5 = v26;
  }
}

- (id)clearDialog:(id)dialog
{
  v33 = *MEMORY[0x1E69E9840];
  dialogCopy = dialog;
  logKey = [dialogCopy logKey];
  v6 = AMSSetLogKey(logKey);

  v7 = [(AMSDeviceMessenger *)self _identifierFromDialogRequest:dialogCopy];
  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    *buf = 138543874;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    v31 = 2114;
    v32 = v7;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Clearing dialog with identifier: %{public}@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_alloc_init(AMSMutableBinaryPromise);
    _getProxyObject = [(AMSDeviceMessenger *)self _getProxyObject];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __34__AMSDeviceMessenger_clearDialog___block_invoke;
    v22[3] = &unk_1E73B6CF8;
    v14 = v12;
    v23 = v14;
    v24 = v7;
    v25 = dialogCopy;
    selfCopy = self;
    [_getProxyObject addFinishBlock:v22];

    v15 = v14;
    v16 = v15;
  }

  else
  {
    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      logKey2 = [dialogCopy logKey];
      *buf = 138543618;
      v28 = v19;
      v29 = 2114;
      v30 = logKey2;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid dialog for clear", buf, 0x16u);
    }

    v15 = AMSError(2, @"AMSDeviceMessenger Error", @"Invalid bridge dialog for clear", 0);
    v16 = [AMSBinaryPromise promiseWithError:v15];
  }

  return v16;
}

void __34__AMSDeviceMessenger_clearDialog___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else
  {
    v6 = [AMSXDMessage alloc];
    v7 = *(a1 + 40);
    v8 = +[AMSXDDevice allPairedDevices];
    v9 = [(AMSXDMessage *)v6 initWithIdentifier:v7 destination:v8 purpose:1 object:*(a1 + 48)];

    v10 = [*(a1 + 48) logKey];
    [(AMSXDMessage *)v9 setLogKey:v10];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__AMSDeviceMessenger_clearDialog___block_invoke_2;
    v12[3] = &unk_1E73B3538;
    v12[4] = *(a1 + 56);
    v13 = v9;
    v14 = *(a1 + 32);
    v11 = v9;
    [v5 sendMessage:v11 completion:v12];
  }
}

void __34__AMSDeviceMessenger_clearDialog___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = [*(a1 + 40) logKey];
      *v16 = 138543618;
      *&v16[4] = v9;
      *&v16[12] = 2114;
      *&v16[14] = v10;
      v11 = "%{public}@: [%{public}@] Clear bridge dialog message sent!";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 22;
LABEL_10:
      _os_log_impl(&dword_192869000, v12, v13, v11, v16, v14);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v10 = [*(a1 + 40) logKey];
      *v16 = 138543874;
      *&v16[4] = v15;
      *&v16[12] = 2114;
      *&v16[14] = v10;
      *&v16[22] = 2114;
      v17 = v5;
      v11 = "%{public}@: [%{public}@] Clear bridge dialog message NOT sent! Error: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
      goto LABEL_10;
    }
  }

  [*(a1 + 48) finishWithSuccess:v5 == 0 error:{v5, *v16, *&v16[16], v17}];
}

- (id)sendDialog:(id)dialog account:(id)account
{
  v37 = *MEMORY[0x1E69E9840];
  dialogCopy = dialog;
  accountCopy = account;
  logKey = [dialogCopy logKey];
  v9 = AMSSetLogKey(logKey);

  v10 = [(AMSDeviceMessenger *)self _identifierFromDialogRequest:dialogCopy];
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543874;
    v32 = v13;
    v33 = 2114;
    v34 = v14;
    v35 = 2114;
    v36 = v10;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending dialog with identifier: %{public}@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_alloc_init(AMSMutableBinaryPromise);
    _getProxyObject = [(AMSDeviceMessenger *)self _getProxyObject];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __41__AMSDeviceMessenger_sendDialog_account___block_invoke;
    v25[3] = &unk_1E73B6D20;
    v17 = v15;
    v26 = v17;
    v27 = accountCopy;
    v28 = dialogCopy;
    v29 = v10;
    selfCopy = self;
    [_getProxyObject addFinishBlock:v25];

    v18 = v17;
    v19 = v18;
  }

  else
  {
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      logKey2 = [dialogCopy logKey];
      *buf = 138543618;
      v32 = v22;
      v33 = 2114;
      v34 = logKey2;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid dialog for send", buf, 0x16u);
    }

    v18 = AMSError(2, @"AMSDeviceMessenger Error", @"Invalid bridge dialog for send", 0);
    v19 = [AMSBinaryPromise promiseWithError:v18];
  }

  return v19;
}

void __41__AMSDeviceMessenger_sendDialog_account___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else
  {
    v6 = [*(a1 + 40) ams_DSID];
    if (v6)
    {
      v7 = [*(a1 + 48) userInfo];
      v8 = [v7 mutableCopy];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v11 = v10;

      [v11 setObject:v6 forKeyedSubscript:@"DSID"];
      [*(a1 + 48) setUserInfo:v11];
    }

    v12 = [AMSXDMessage alloc];
    v13 = *(a1 + 56);
    v14 = +[AMSXDDevice allPairedDevices];
    v15 = [(AMSXDMessage *)v12 initWithIdentifier:v13 destination:v14 purpose:50 object:*(a1 + 48)];

    v16 = [*(a1 + 48) logKey];
    [(AMSXDMessage *)v15 setLogKey:v16];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __41__AMSDeviceMessenger_sendDialog_account___block_invoke_2;
    v18[3] = &unk_1E73B3538;
    v18[4] = *(a1 + 64);
    v19 = v15;
    v20 = *(a1 + 32);
    v17 = v15;
    [v5 sendMessage:v17 completion:v18];
  }
}

void __41__AMSDeviceMessenger_sendDialog_account___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = [*(a1 + 40) logKey];
      *v16 = 138543618;
      *&v16[4] = v9;
      *&v16[12] = 2114;
      *&v16[14] = v10;
      v11 = "%{public}@: [%{public}@] Bridge dialog message sent!";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 22;
LABEL_10:
      _os_log_impl(&dword_192869000, v12, v13, v11, v16, v14);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v10 = [*(a1 + 40) logKey];
      *v16 = 138543874;
      *&v16[4] = v15;
      *&v16[12] = 2114;
      *&v16[14] = v10;
      *&v16[22] = 2114;
      v17 = v5;
      v11 = "%{public}@: [%{public}@] Bridge dialog message NOT sent! Error: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
      goto LABEL_10;
    }
  }

  [*(a1 + 48) finishWithSuccess:v5 == 0 error:{v5, *v16, *&v16[16], v17}];
}

- (void)deviceMessengerDidClearMessage:(id)message
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    logKey = [messageCopy logKey];
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = logKey;
    v13 = 2114;
    v14 = messageCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Daemon received clear for: %{public}@", &v9, 0x20u);
  }

  [(AMSDeviceMessenger *)self _sendDelegateUpdateForMessage:messageCopy];
}

- (void)deviceMessengerDidReceiveMessage:(id)message
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    logKey = [messageCopy logKey];
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = logKey;
    v13 = 2114;
    v14 = messageCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Daemon received message: %{public}@", &v9, 0x20u);
  }

  [(AMSDeviceMessenger *)self _sendDelegateUpdateForMessage:messageCopy];
}

- (void)deviceMessengerDidReceiveReply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    logKey = [replyCopy logKey];
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = logKey;
    v13 = 2114;
    v14 = replyCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Daemon received reply: %{public}@", &v9, 0x20u);
  }

  [(AMSDeviceMessenger *)self _sendDelegateUpdateForMessage:replyCopy];
}

- (void)deviceMessengerDidUpdateDevices
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Daemon did update devices", &v5, 0xCu);
  }

  [(AMSDeviceMessenger *)self _sendDelegateUpdateForMessage:0];
}

- (id)_getProxyObject
{
  if (self->_proxyObject)
  {
    v2 = [AMSPromise promiseWithResult:?];
  }

  else
  {
    v2 = [(AMSDaemonConnection *)self->_connection deviceMessengerProxyWithDelegate:self];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__AMSDeviceMessenger__getProxyObject__block_invoke;
    v5[3] = &unk_1E73B4ED8;
    objc_copyWeak(&v6, &location);
    [v2 addSuccessBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__AMSDeviceMessenger__getProxyObject__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[1];
  WeakRetained[1] = v3;
}

- (id)_identifierFromDialogRequest:(id)request
{
  requestCopy = request;
  identifier = [requestCopy identifier];
  v5 = [identifier length];

  if (v5)
  {
    identifier2 = [requestCopy identifier];
  }

  else
  {
    title = [requestCopy title];
    v8 = title;
    if (title)
    {
      v9 = title;
    }

    else
    {
      v9 = &stru_1F071BA78;
    }

    v10 = v9;

    message = [requestCopy message];
    v12 = message;
    if (message)
    {
      v13 = message;
    }

    else
    {
      v13 = &stru_1F071BA78;
    }

    v14 = v13;

    identifier2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v10, v14];
  }

  return identifier2;
}

- (void)_sendDelegateUpdateForMessage:(id)message
{
  v13 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: Sending update to delegate", buf, 0xCu);
  }

  queue = [(AMSDeviceMessenger *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__AMSDeviceMessenger__sendDelegateUpdateForMessage___block_invoke;
  v9[3] = &unk_1E73B3DE0;
  v9[4] = self;
  v10 = messageCopy;
  v8 = messageCopy;
  dispatch_sync(queue, v9);
}

void __52__AMSDeviceMessenger__sendDelegateUpdateForMessage___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) updateHandlers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (!*(a1 + 40) || ([*(*(&v11 + 1) + 8 * v6) filter], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "matchesMessage:", *(a1 + 40)), v8, v9))
        {
          v10 = [v7 block];
          v10[2]();
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

@end