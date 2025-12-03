@interface AMSObservable
- (AMSObservable)initWithNotification:(id)notification object:(id)object;
- (AMSObservable)initWithObject:(id)object keyPath:(id)path options:(unint64_t)options;
- (AMSObservable)initWithObserver:(id)observer behavior:(unint64_t)behavior;
- (AMSObservable)initWithObservers:(id)observers behavior:(unint64_t)behavior;
- (BOOL)_isComplete;
- (BOOL)cancel;
- (BOOL)isCancelled;
- (BOOL)isComplete;
- (BOOL)sendCompletion;
- (BOOL)sendFailure:(id)failure;
- (BOOL)sendResult:(id)result;
- (id)subscribeWithResultBlock:(id)block;
- (void)subscribe:(id)subscribe;
- (void)unsubscribe:(id)unsubscribe;
- (void)unsubscribeAll;
@end

@implementation AMSObservable

- (AMSObservable)initWithObject:(id)object keyPath:(id)path options:(unint64_t)options
{
  pathCopy = path;
  objectCopy = object;
  v10 = [[_AMSKeyValueObservable alloc] initWithObject:objectCopy keyPath:pathCopy options:options];

  return &v10->super;
}

- (AMSObservable)initWithNotification:(id)notification object:(id)object
{
  objectCopy = object;
  notificationCopy = notification;
  v8 = [[_AMSNotificationObservable alloc] initWithNotification:notificationCopy object:objectCopy];

  return &v8->super;
}

- (AMSObservable)initWithObserver:(id)observer behavior:(unint64_t)behavior
{
  v11[1] = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v7 = observerCopy;
  if (observerCopy)
  {
    v11[0] = observerCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [(AMSObservable *)self initWithObservers:v8 behavior:behavior];
  }

  else
  {
    v9 = [(AMSObservable *)self initWithObservers:0 behavior:behavior];
  }

  return v9;
}

- (AMSObservable)initWithObservers:(id)observers behavior:(unint64_t)behavior
{
  observersCopy = observers;
  v20.receiver = self;
  v20.super_class = AMSObservable;
  v7 = [(AMSObservable *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_behavior = behavior;
    v9 = AMSGenerateLogCorrelationKey();
    logKey = v8->_logKey;
    v8->_logKey = v9;

    if (observersCopy)
    {
      v11 = [observersCopy mutableCopy];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    observers = v8->_observers;
    v8->_observers = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    queuedResults = v8->_queuedResults;
    v8->_queuedResults = v13;

    v15 = dispatch_queue_create("coma.apple.AppleMediaServices.AMSObservable.sendMessage", MEMORY[0x1E69E96A8]);
    sendMessageQueue = v8->_sendMessageQueue;
    v8->_sendMessageQueue = v15;

    v17 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    stateLock = v8->_stateLock;
    v8->_stateLock = v17;
  }

  return v8;
}

- (BOOL)isCancelled
{
  stateLock = [(AMSObservable *)self stateLock];
  [stateLock lock];

  if ([(AMSObservable *)self _isComplete])
  {
    failureError = [(AMSObservable *)self failureError];
    ams_isUserCancelledError = [failureError ams_isUserCancelledError];
  }

  else
  {
    ams_isUserCancelledError = 0;
  }

  stateLock2 = [(AMSObservable *)self stateLock];
  [stateLock2 unlock];

  return ams_isUserCancelledError;
}

- (BOOL)isComplete
{
  stateLock = [(AMSObservable *)self stateLock];
  [stateLock lock];

  LOBYTE(stateLock) = [(AMSObservable *)self _isComplete];
  stateLock2 = [(AMSObservable *)self stateLock];
  [stateLock2 unlock];

  return stateLock;
}

- (BOOL)cancel
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  LOBYTE(self) = [(AMSObservable *)self sendFailure:v3];

  return self;
}

- (BOOL)sendCompletion
{
  v31 = *MEMORY[0x1E69E9840];
  stateLock = [(AMSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(AMSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v16 = +[AMSLogConfig sharedConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = v18;
      logKey = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v28 = v18;
      v29 = 2114;
      v30 = logKey;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Someone is attempting to send a completion from a completed AMSObservable.", buf, 0x16u);
    }

    stateLock3 = [(AMSObservable *)self stateLock];
    [stateLock3 unlock];
  }

  else
  {
    observers = [(AMSObservable *)self observers];
    v7 = [observers copy];

    stateLock4 = [(AMSObservable *)self stateLock];
    [stateLock4 unlockWithCondition:1];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    stateLock3 = v7;
    v10 = [stateLock3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(stateLock3);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          sendMessageQueue = [(AMSObservable *)self sendMessageQueue];
          [v14 _sendCompletionUsingQueue:sendMessageQueue];

          ++v13;
        }

        while (v11 != v13);
        v11 = [stateLock3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }
  }

  return condition != 1;
}

- (BOOL)sendFailure:(id)failure
{
  v33 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  stateLock = [(AMSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(AMSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = v20;
      logKey = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v30 = v20;
      v31 = 2114;
      v32 = logKey;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Someone is attempting to send a failure from a completed AMSObservable.", buf, 0x16u);
    }

    stateLock3 = [(AMSObservable *)self stateLock];
    [stateLock3 unlock];
  }

  else
  {
    [(AMSObservable *)self setFailureError:failureCopy];
    observers = [(AMSObservable *)self observers];
    v9 = [observers copy];

    stateLock4 = [(AMSObservable *)self stateLock];
    [stateLock4 unlockWithCondition:1];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    stateLock3 = v9;
    v12 = [stateLock3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        v15 = 0;
        do
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(stateLock3);
          }

          v16 = *(*(&v24 + 1) + 8 * v15);
          sendMessageQueue = [(AMSObservable *)self sendMessageQueue];
          [v16 _sendFailure:failureCopy usingQueue:sendMessageQueue];

          ++v15;
        }

        while (v13 != v15);
        v13 = [stateLock3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }
  }

  return condition != 1;
}

- (BOOL)sendResult:(id)result
{
  v68 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  stateLock = [(AMSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(AMSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = v10;
      logKey = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v65 = v10;
      v66 = 2114;
      v67 = logKey;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Someone is attempting to send a result from a completed AMSObservable.", buf, 0x16u);
    }

    stateLock3 = [(AMSObservable *)self stateLock];
    [stateLock3 unlock];
    v14 = 0;
    goto LABEL_37;
  }

  queuedResults = [(AMSObservable *)self queuedResults];
  [queuedResults addObject:resultCopy];

  queuedResults2 = [(AMSObservable *)self queuedResults];
  stateLock3 = [queuedResults2 copy];

  observers = [(AMSObservable *)self observers];
  v18 = [observers copy];

  v53 = v18;
  if ([v18 count])
  {
    queuedResults3 = +[AMSLogConfig sharedConfig];
    if (!queuedResults3)
    {
      queuedResults3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [queuedResults3 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v21 = stateLock3;
    v22 = objc_opt_class();
    v23 = v22;
    logKey2 = [(AMSObservable *)self logKey];
    *buf = 138543618;
    v65 = v22;
    stateLock3 = v21;
    v66 = 2114;
    v67 = logKey2;
    v25 = "%{public}@: [%{public}@] There's at least one observer. Sending the result.";
    goto LABEL_12;
  }

  behavior = [(AMSObservable *)self behavior];
  v27 = +[AMSLogConfig sharedConfig];
  queuedResults3 = v27;
  if (behavior)
  {
    if (!v27)
    {
      queuedResults3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [queuedResults3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v29 = stateLock3;
      v30 = objc_opt_class();
      v31 = v30;
      logKey3 = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v65 = v30;
      stateLock3 = v29;
      v66 = 2114;
      v67 = logKey3;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] The are no observers. Queuing the result.", buf, 0x16u);
    }

    goto LABEL_20;
  }

  if (!v27)
  {
    queuedResults3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [queuedResults3 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v47 = stateLock3;
    v48 = objc_opt_class();
    v23 = v48;
    logKey2 = [(AMSObservable *)self logKey];
    *buf = 138543618;
    v65 = v48;
    stateLock3 = v47;
    v66 = 2114;
    v67 = logKey2;
    v25 = "%{public}@: [%{public}@] The are no observers.";
LABEL_12:
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, v25, buf, 0x16u);
  }

LABEL_13:

  queuedResults3 = [(AMSObservable *)self queuedResults];
  [queuedResults3 removeAllObjects];
LABEL_20:

  stateLock4 = [(AMSObservable *)self stateLock];
  [stateLock4 unlock];

  v34 = [v53 count];
  v14 = v34 != 0;
  if (v34)
  {
    v49 = stateLock3;
    v50 = resultCopy;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = stateLock3;
    v35 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v35)
    {
      v36 = v35;
      v52 = *v59;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v59 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v58 + 1) + 8 * i);
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v39 = v53;
          v40 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v55;
            do
            {
              for (j = 0; j != v41; ++j)
              {
                if (*v55 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v54 + 1) + 8 * j);
                sendMessageQueue = [(AMSObservable *)self sendMessageQueue];
                [v44 _sendResult:v38 usingQueue:sendMessageQueue];
              }

              v41 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
            }

            while (v41);
          }
        }

        v36 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v36);
    }

    stateLock3 = v49;
    resultCopy = v50;
    v14 = 1;
  }

LABEL_37:
  return v14;
}

- (void)subscribe:(id)subscribe
{
  v58 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  stateLock = [(AMSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(AMSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v10 = objc_opt_class();
    v11 = v10;
    logKey = [(AMSObservable *)self logKey];
    *buf = 138543618;
    v55 = v10;
    v56 = 2114;
    v57 = logKey;
    v13 = "%{public}@: [%{public}@] Someone is attempting to add an observer to a completed AMSObservable.";
LABEL_11:
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, v13, buf, 0x16u);

LABEL_12:
    stateLock3 = [(AMSObservable *)self stateLock];
    [stateLock3 unlock];
    goto LABEL_35;
  }

  observers = [(AMSObservable *)self observers];
  v15 = [observers containsObject:subscribeCopy];

  if (v15)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v16 = objc_opt_class();
    v11 = v16;
    logKey = [(AMSObservable *)self logKey];
    *buf = 138543618;
    v55 = v16;
    v56 = 2114;
    v57 = logKey;
    v13 = "%{public}@: [%{public}@] Someone is attempting to add an observer to a AMSObservable it's already observing.";
    goto LABEL_11;
  }

  observers2 = [(AMSObservable *)self observers];
  [observers2 addObject:subscribeCopy];

  queuedResults = [(AMSObservable *)self queuedResults];
  v20 = [queuedResults copy];

  queuedResults2 = [(AMSObservable *)self queuedResults];
  [queuedResults2 removeAllObjects];

  v39 = subscribeCopy;
  if ([v20 count])
  {
    v22 = +[AMSLogConfig sharedConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = v24;
      logKey2 = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v55 = v24;
      v56 = 2114;
      v57 = logKey2;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] There are pending results. Sending them now that we have an observer.", buf, 0x16u);
    }

    observers3 = [(AMSObservable *)self observers];
    v42 = [observers3 copy];
  }

  else
  {
    v42 = 0;
  }

  stateLock4 = [(AMSObservable *)self stateLock];
  [stateLock4 unlock];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  stateLock3 = v20;
  v43 = [stateLock3 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v43)
  {
    obj = stateLock3;
    v41 = *v49;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v49 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v48 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = v42;
        v32 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v45;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v45 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v44 + 1) + 8 * j);
              v37 = [v30 copy];
              sendMessageQueue = [(AMSObservable *)self sendMessageQueue];
              [v36 _sendResult:v37 usingQueue:sendMessageQueue];
            }

            v33 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v33);
        }
      }

      stateLock3 = obj;
      v43 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v43);
  }

  subscribeCopy = v39;
LABEL_35:
}

- (id)subscribeWithResultBlock:(id)block
{
  blockCopy = block;
  v5 = [[AMSObserver alloc] initWithResultBlock:blockCopy];

  [(AMSObservable *)self subscribe:v5];

  return v5;
}

- (void)unsubscribe:(id)unsubscribe
{
  v22 = *MEMORY[0x1E69E9840];
  unsubscribeCopy = unsubscribe;
  stateLock = [(AMSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(AMSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    observers2 = +[AMSLogConfig sharedConfig];
    if (!observers2)
    {
      observers2 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [observers2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v10 = objc_opt_class();
    v11 = v10;
    logKey = [(AMSObservable *)self logKey];
    v18 = 138543618;
    v19 = v10;
    v20 = 2114;
    v21 = logKey;
    v13 = "%{public}@: [%{public}@] Someone is attempting to remove an observer from a completed observable.";
LABEL_12:
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, v13, &v18, 0x16u);

LABEL_13:
    goto LABEL_14;
  }

  observers = [(AMSObservable *)self observers];
  v15 = [observers containsObject:unsubscribeCopy];

  if ((v15 & 1) == 0)
  {
    observers2 = +[AMSLogConfig sharedConfig];
    if (!observers2)
    {
      observers2 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [observers2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v16 = objc_opt_class();
    v11 = v16;
    logKey = [(AMSObservable *)self logKey];
    v18 = 138543618;
    v19 = v16;
    v20 = 2114;
    v21 = logKey;
    v13 = "%{public}@: [%{public}@] Someone is attempting to remove an observer from an observable it isn't subscribed to.";
    goto LABEL_12;
  }

  observers2 = [(AMSObservable *)self observers];
  [observers2 removeObject:unsubscribeCopy];
LABEL_14:

  stateLock3 = [(AMSObservable *)self stateLock];
  [stateLock3 unlock];
}

- (void)unsubscribeAll
{
  v18 = *MEMORY[0x1E69E9840];
  stateLock = [(AMSObservable *)self stateLock];
  [stateLock lock];

  stateLock2 = [(AMSObservable *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = v8;
      logKey = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = logKey;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Someone is attempting to remove all observers from a completed observable.", buf, 0x16u);
    }

    stateLock3 = [(AMSObservable *)self stateLock];
    [stateLock3 unlock];
  }

  else
  {
    observers = [(AMSObservable *)self observers];
    [observers removeAllObjects];

    stateLock4 = [(AMSObservable *)self stateLock];
    [stateLock4 unlock];
  }
}

- (BOOL)_isComplete
{
  stateLock = [(AMSObservable *)self stateLock];
  v3 = [stateLock condition] == 1;

  return v3;
}

@end