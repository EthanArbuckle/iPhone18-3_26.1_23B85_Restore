@interface ASDNotificationCenter
+ (id)defaultCenter;
+ (id)interface;
- (ASDNotificationCenter)init;
- (ASDNotificationCenterDialogObserver)dialogObserver;
- (void)addNotificationObserver:(id)observer forName:(id)name;
- (void)addProgressObserver:(id)observer;
- (void)deliverAlertPresentationRequest:(id)request resultHandler:(id)handler;
- (void)deliverAuthenticateRequest:(id)request withResultHandler:(id)handler;
- (void)deliverDialogRequest:(id)request withResultHandler:(id)handler;
- (void)deliverEngagementRequest:(id)request withResultHandler:(id)handler;
- (void)deliverNotifications:(id)notifications;
- (void)deliverProgress:(id)progress;
- (void)deliverViewPresentationRequest:(id)request resultHandler:(id)handler;
- (void)removeNotificationObserver:(id)observer forName:(id)name;
- (void)removeProgressObserver:(id)observer;
- (void)setDialogObserver:(id)observer;
@end

@implementation ASDNotificationCenter

+ (id)defaultCenter
{
  if (qword_1ED90D620 != -1)
  {
    dispatch_once(&qword_1ED90D620, &__block_literal_global_24);
  }

  v3 = _MergedGlobals_50;

  return v3;
}

- (ASDNotificationCenter)init
{
  v13.receiver = self;
  v13.super_class = ASDNotificationCenter;
  v2 = [(ASDNotificationCenter *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppStoreDaemon.ASDNotificationCenter", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_observerLock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeProgress = v2->_activeProgress;
    v2->_activeProgress = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    notificationObservers = v2->_notificationObservers;
    v2->_notificationObservers = v8;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    progressObservers = v2->_progressObservers;
    v2->_progressObservers = weakObjectsHashTable;
  }

  return v2;
}

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F303FB60];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_deliverNotifications_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_deliverProgress_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  [v2 setClasses:v13 forSelector:sel_deliverAuthenticateRequest_withResultHandler_ argumentIndex:1 ofReply:1];
  [v2 setClasses:v13 forSelector:sel_deliverDialogRequest_withResultHandler_ argumentIndex:1 ofReply:1];
  [v2 setClasses:v13 forSelector:sel_deliverEngagementRequest_withResultHandler_ argumentIndex:1 ofReply:1];

  return v2;
}

uint64_t __38__ASDNotificationCenter_defaultCenter__block_invoke()
{
  _MergedGlobals_50 = objc_alloc_init(ASDNotificationCenter);

  return MEMORY[0x1EEE66BB8]();
}

- (ASDNotificationCenterDialogObserver)dialogObserver
{
  os_unfair_lock_lock(&self->_observerLock);
  WeakRetained = objc_loadWeakRetained(&self->_dialogObserver);
  os_unfair_lock_unlock(&self->_observerLock);

  return WeakRetained;
}

- (void)setDialogObserver:(id)observer
{
  obj = observer;
  os_unfair_lock_lock(&self->_observerLock);
  objc_storeWeak(&self->_dialogObserver, obj);
  os_unfair_lock_unlock(&self->_observerLock);
  if (obj)
  {
    v4 = [[ASDSupportedDialogHandlers alloc] initWithDialogObserver:obj];
    v5 = +[ASDServiceBroker defaultBroker];
    [v5 setSupportedNotificationDelivery:v4];
  }

  else
  {
    v4 = +[ASDServiceBroker defaultBroker];
    [(ASDSupportedDialogHandlers *)v4 setSupportedNotificationDelivery:0];
  }
}

- (void)addNotificationObserver:(id)observer forName:(id)name
{
  observerCopy = observer;
  nameCopy = name;
  os_unfair_lock_lock(&self->_observerLock);
  weakObjectsHashTable = [(NSMutableDictionary *)self->_notificationObservers objectForKeyedSubscript:nameCopy];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_notificationObservers setObject:weakObjectsHashTable forKeyedSubscript:nameCopy];
  }

  [weakObjectsHashTable addObject:observerCopy];
  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)addProgressObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  [(NSHashTable *)self->_progressObservers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)removeNotificationObserver:(id)observer forName:(id)name
{
  nameCopy = name;
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  v8 = [(NSMutableDictionary *)self->_notificationObservers objectForKeyedSubscript:nameCopy];

  [v8 removeObject:observerCopy];
  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)removeProgressObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  [(NSHashTable *)self->_progressObservers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)deliverAlertPresentationRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ASDNotificationCenter_deliverAlertPresentationRequest_resultHandler___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(v8, block);
}

void __71__ASDNotificationCenter_deliverAlertPresentationRequest_resultHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) dialogObserver];
  if (objc_opt_respondsToSelector())
  {
    [v4 handleAlertPresentationRequest:*(a1 + 40) resultHandler:*(a1 + 48)];
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 1060, @"No dialog observer was available to handle the request");
    (*(v2 + 16))(v2, 0, v3);
  }
}

- (void)deliverAuthenticateRequest:(id)request withResultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ASDNotificationCenter_deliverAuthenticateRequest_withResultHandler___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(v8, block);
}

void __70__ASDNotificationCenter_deliverAuthenticateRequest_withResultHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) dialogObserver];
  if (objc_opt_respondsToSelector())
  {
    [v4 handleAuthenticateRequest:*(a1 + 40) resultHandler:*(a1 + 48)];
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 1060, @"No dialog observer was available to handle the request");
    (*(v2 + 16))(v2, 0, v3);
  }
}

- (void)deliverDialogRequest:(id)request withResultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ASDNotificationCenter_deliverDialogRequest_withResultHandler___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(v8, block);
}

void __64__ASDNotificationCenter_deliverDialogRequest_withResultHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) dialogObserver];
  if (objc_opt_respondsToSelector())
  {
    [v4 handleDialogRequest:*(a1 + 40) resultHandler:*(a1 + 48)];
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 1060, @"No dialog observer was available to handle the request");
    (*(v2 + 16))(v2, 0, v3);
  }
}

- (void)deliverEngagementRequest:(id)request withResultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__ASDNotificationCenter_deliverEngagementRequest_withResultHandler___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(v8, block);
}

void __68__ASDNotificationCenter_deliverEngagementRequest_withResultHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) dialogObserver];
  if (objc_opt_respondsToSelector())
  {
    [v4 handleEngagementRequest:*(a1 + 40) resultHandler:*(a1 + 48)];
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 1060, @"No dialog observer was available to handle the engagement request");
    (*(v2 + 16))(v2, 0, v3);
  }
}

- (void)deliverNotifications:(id)notifications
{
  v17 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = notificationsCopy;
    v6 = v14;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_INFO, "[%@]: Received notifications: %@", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__ASDNotificationCenter_deliverNotifications___block_invoke;
  v10[3] = &unk_1E7CDB868;
  v11 = notificationsCopy;
  selfCopy = self;
  v8 = notificationsCopy;
  dispatch_async(dispatchQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __46__ASDNotificationCenter_deliverNotifications___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v2 objectForKeyedSubscript:v9];
        v11 = v10;
        if (v10)
        {
          [v10 addObject:v8];
        }

        else
        {
          v12 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
          [v2 setObject:v12 forKeyedSubscript:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__ASDNotificationCenter_deliverNotifications___block_invoke_2;
  v14[3] = &unk_1E7CDD608;
  v14[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __46__ASDNotificationCenter_deliverNotifications___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = a2;
    os_unfair_lock_lock((v6 + 32));
    v8 = [*(v6 + 24) objectForKeyedSubscript:v7];

    v9 = [v8 copy];
    os_unfair_lock_unlock((v6 + 32));
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__ASDNotificationCenter_deliverNotifications___block_invoke_3;
  block[3] = &unk_1E7CDBA20;
  v15 = v9;
  v16 = v10;
  v17 = v5;
  v12 = v5;
  v13 = v9;
  dispatch_async(v11, block);
}

void __46__ASDNotificationCenter_deliverNotifications___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        [v7 notificationCenter:*(a1 + 40) receivedNotifications:{*(a1 + 48), v10}];
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)deliverProgress:(id)progress
{
  v16 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = progressCopy;
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_INFO, "[%@]: Received progress: %@", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__ASDNotificationCenter_deliverProgress___block_invoke;
  v10[3] = &unk_1E7CDB868;
  v10[4] = self;
  v11 = progressCopy;
  v8 = progressCopy;
  dispatch_async(dispatchQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __41__ASDNotificationCenter_deliverProgress___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!v1)
  {
    goto LABEL_22;
  }

  os_unfair_lock_lock((v1 + 32));
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v2;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  v6 = *v33;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v33 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v32 + 1) + 8 * i);
      v9 = [v8 bundleID];
      if (v9)
      {
        if ([v8 completedUnitCount])
        {
          v10 = [v8 completedUnitCount];
          v11 = v10 / [v8 totalUnitCount];
          v12 = v11;
          if ([*(v1 + 8) containsObject:v9])
          {
            if (v11 >= 1.0)
            {
              v13 = ASDLogHandleForCategory(13);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = objc_opt_class();
                *buf = 138543874;
                v37 = v14;
                v38 = 2114;
                v39 = v9;
                v40 = 2048;
                v41 = v11;
                v15 = v14;
                _os_log_impl(&dword_1B8220000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Completed progress reporting progress at: %.2f", buf, 0x20u);
              }

              if ([*(v1 + 8) containsObject:v9])
              {
                [*(v1 + 8) removeObject:v9];
              }
            }

            goto LABEL_19;
          }
        }

        else
        {
          v12 = 0.0;
          if ([*(v1 + 8) containsObject:v9])
          {
            goto LABEL_19;
          }
        }

        v16 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          v18 = v17;
          v19 = [v8 completedUnitCount];
          *buf = 138544130;
          v37 = v17;
          v38 = 2114;
          v39 = v9;
          v40 = 2048;
          v41 = v12;
          v42 = 2048;
          v43 = v19;
          _os_log_impl(&dword_1B8220000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@] Starting progress reporting at: %.2f complete: %lld", buf, 0x2Au);
        }

        [*(v1 + 8) addObject:v9];
      }

LABEL_19:
    }

    v5 = [v3 countByEnumeratingWithState:&v32 objects:v44 count:16];
  }

  while (v5);
LABEL_21:

  os_unfair_lock_unlock((v1 + 32));
  v2 = v26;
LABEL_22:

  v20 = *(a1 + 32);
  if (v20)
  {
    os_unfair_lock_lock((v20 + 32));
    v21 = [*(v20 + 40) copy];
    os_unfair_lock_unlock((v20 + 32));
    v22 = *(a1 + 32);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ASDNotificationCenter_deliverProgress___block_invoke_2;
  block[3] = &unk_1E7CDBA20;
  v29 = v21;
  v30 = v22;
  v31 = *(a1 + 40);
  v24 = v21;
  dispatch_async(v23, block);

  v25 = *MEMORY[0x1E69E9840];
}

void __41__ASDNotificationCenter_deliverProgress___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        [v7 notificationCenter:*(a1 + 40) receivedProgress:{*(a1 + 48), v10}];
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)deliverViewPresentationRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ASDNotificationCenter_deliverViewPresentationRequest_resultHandler___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(v8, block);
}

void __70__ASDNotificationCenter_deliverViewPresentationRequest_resultHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) dialogObserver];
  if (objc_opt_respondsToSelector())
  {
    [v4 handleViewPresentationRequest:*(a1 + 40) resultHandler:*(a1 + 48)];
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 1060, @"No dialog observer was available to handle the request");
    (*(v2 + 16))(v2, 0, v3);
  }
}

@end