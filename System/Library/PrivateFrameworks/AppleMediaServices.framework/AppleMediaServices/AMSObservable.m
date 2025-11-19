@interface AMSObservable
- (AMSObservable)initWithNotification:(id)a3 object:(id)a4;
- (AMSObservable)initWithObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5;
- (AMSObservable)initWithObserver:(id)a3 behavior:(unint64_t)a4;
- (AMSObservable)initWithObservers:(id)a3 behavior:(unint64_t)a4;
- (BOOL)_isComplete;
- (BOOL)cancel;
- (BOOL)isCancelled;
- (BOOL)isComplete;
- (BOOL)sendCompletion;
- (BOOL)sendFailure:(id)a3;
- (BOOL)sendResult:(id)a3;
- (id)subscribeWithResultBlock:(id)a3;
- (void)subscribe:(id)a3;
- (void)unsubscribe:(id)a3;
- (void)unsubscribeAll;
@end

@implementation AMSObservable

- (AMSObservable)initWithObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[_AMSKeyValueObservable alloc] initWithObject:v9 keyPath:v8 options:a5];

  return &v10->super;
}

- (AMSObservable)initWithNotification:(id)a3 object:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_AMSNotificationObservable alloc] initWithNotification:v7 object:v6];

  return &v8->super;
}

- (AMSObservable)initWithObserver:(id)a3 behavior:(unint64_t)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [(AMSObservable *)self initWithObservers:v8 behavior:a4];
  }

  else
  {
    v9 = [(AMSObservable *)self initWithObservers:0 behavior:a4];
  }

  return v9;
}

- (AMSObservable)initWithObservers:(id)a3 behavior:(unint64_t)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = AMSObservable;
  v7 = [(AMSObservable *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_behavior = a4;
    v9 = AMSGenerateLogCorrelationKey();
    logKey = v8->_logKey;
    v8->_logKey = v9;

    if (v6)
    {
      v11 = [v6 mutableCopy];
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
  v3 = [(AMSObservable *)self stateLock];
  [v3 lock];

  if ([(AMSObservable *)self _isComplete])
  {
    v4 = [(AMSObservable *)self failureError];
    v5 = [v4 ams_isUserCancelledError];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(AMSObservable *)self stateLock];
  [v6 unlock];

  return v5;
}

- (BOOL)isComplete
{
  v3 = [(AMSObservable *)self stateLock];
  [v3 lock];

  LOBYTE(v3) = [(AMSObservable *)self _isComplete];
  v4 = [(AMSObservable *)self stateLock];
  [v4 unlock];

  return v3;
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
  v3 = [(AMSObservable *)self stateLock];
  [v3 lock];

  v4 = [(AMSObservable *)self stateLock];
  v5 = [v4 condition];

  if (v5 == 1)
  {
    v16 = +[AMSLogConfig sharedConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = v18;
      v20 = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v28 = v18;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Someone is attempting to send a completion from a completed AMSObservable.", buf, 0x16u);
    }

    v9 = [(AMSObservable *)self stateLock];
    [v9 unlock];
  }

  else
  {
    v6 = [(AMSObservable *)self observers];
    v7 = [v6 copy];

    v8 = [(AMSObservable *)self stateLock];
    [v8 unlockWithCondition:1];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          v15 = [(AMSObservable *)self sendMessageQueue];
          [v14 _sendCompletionUsingQueue:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }
  }

  return v5 != 1;
}

- (BOOL)sendFailure:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSObservable *)self stateLock];
  [v5 lock];

  v6 = [(AMSObservable *)self stateLock];
  v7 = [v6 condition];

  if (v7 == 1)
  {
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v30 = v20;
      v31 = 2114;
      v32 = v22;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Someone is attempting to send a failure from a completed AMSObservable.", buf, 0x16u);
    }

    v11 = [(AMSObservable *)self stateLock];
    [v11 unlock];
  }

  else
  {
    [(AMSObservable *)self setFailureError:v4];
    v8 = [(AMSObservable *)self observers];
    v9 = [v8 copy];

    v10 = [(AMSObservable *)self stateLock];
    [v10 unlockWithCondition:1];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * v15);
          v17 = [(AMSObservable *)self sendMessageQueue];
          [v16 _sendFailure:v4 usingQueue:v17];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }
  }

  return v7 != 1;
}

- (BOOL)sendResult:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSObservable *)self stateLock];
  [v5 lock];

  v6 = [(AMSObservable *)self stateLock];
  v7 = [v6 condition];

  if (v7 == 1)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v65 = v10;
      v66 = 2114;
      v67 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Someone is attempting to send a result from a completed AMSObservable.", buf, 0x16u);
    }

    v13 = [(AMSObservable *)self stateLock];
    [v13 unlock];
    v14 = 0;
    goto LABEL_37;
  }

  v15 = [(AMSObservable *)self queuedResults];
  [v15 addObject:v4];

  v16 = [(AMSObservable *)self queuedResults];
  v13 = [v16 copy];

  v17 = [(AMSObservable *)self observers];
  v18 = [v17 copy];

  v53 = v18;
  if ([v18 count])
  {
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v21 = v13;
    v22 = objc_opt_class();
    v23 = v22;
    v24 = [(AMSObservable *)self logKey];
    *buf = 138543618;
    v65 = v22;
    v13 = v21;
    v66 = 2114;
    v67 = v24;
    v25 = "%{public}@: [%{public}@] There's at least one observer. Sending the result.";
    goto LABEL_12;
  }

  v26 = [(AMSObservable *)self behavior];
  v27 = +[AMSLogConfig sharedConfig];
  v19 = v27;
  if (v26)
  {
    if (!v27)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v28 = [v19 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = v13;
      v30 = objc_opt_class();
      v31 = v30;
      v32 = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v65 = v30;
      v13 = v29;
      v66 = 2114;
      v67 = v32;
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] The are no observers. Queuing the result.", buf, 0x16u);
    }

    goto LABEL_20;
  }

  if (!v27)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v47 = v13;
    v48 = objc_opt_class();
    v23 = v48;
    v24 = [(AMSObservable *)self logKey];
    *buf = 138543618;
    v65 = v48;
    v13 = v47;
    v66 = 2114;
    v67 = v24;
    v25 = "%{public}@: [%{public}@] The are no observers.";
LABEL_12:
    _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEBUG, v25, buf, 0x16u);
  }

LABEL_13:

  v19 = [(AMSObservable *)self queuedResults];
  [v19 removeAllObjects];
LABEL_20:

  v33 = [(AMSObservable *)self stateLock];
  [v33 unlock];

  v34 = [v53 count];
  v14 = v34 != 0;
  if (v34)
  {
    v49 = v13;
    v50 = v4;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v13;
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
                v45 = [(AMSObservable *)self sendMessageQueue];
                [v44 _sendResult:v38 usingQueue:v45];
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

    v13 = v49;
    v4 = v50;
    v14 = 1;
  }

LABEL_37:
  return v14;
}

- (void)subscribe:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSObservable *)self stateLock];
  [v5 lock];

  v6 = [(AMSObservable *)self stateLock];
  v7 = [v6 condition];

  if (v7 == 1)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(AMSObservable *)self logKey];
    *buf = 138543618;
    v55 = v10;
    v56 = 2114;
    v57 = v12;
    v13 = "%{public}@: [%{public}@] Someone is attempting to add an observer to a completed AMSObservable.";
LABEL_11:
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEBUG, v13, buf, 0x16u);

LABEL_12:
    v17 = [(AMSObservable *)self stateLock];
    [v17 unlock];
    goto LABEL_35;
  }

  v14 = [(AMSObservable *)self observers];
  v15 = [v14 containsObject:v4];

  if (v15)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v16 = objc_opt_class();
    v11 = v16;
    v12 = [(AMSObservable *)self logKey];
    *buf = 138543618;
    v55 = v16;
    v56 = 2114;
    v57 = v12;
    v13 = "%{public}@: [%{public}@] Someone is attempting to add an observer to a AMSObservable it's already observing.";
    goto LABEL_11;
  }

  v18 = [(AMSObservable *)self observers];
  [v18 addObject:v4];

  v19 = [(AMSObservable *)self queuedResults];
  v20 = [v19 copy];

  v21 = [(AMSObservable *)self queuedResults];
  [v21 removeAllObjects];

  v39 = v4;
  if ([v20 count])
  {
    v22 = +[AMSLogConfig sharedConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = v24;
      v26 = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v55 = v24;
      v56 = 2114;
      v57 = v26;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] There are pending results. Sending them now that we have an observer.", buf, 0x16u);
    }

    v27 = [(AMSObservable *)self observers];
    v42 = [v27 copy];
  }

  else
  {
    v42 = 0;
  }

  v28 = [(AMSObservable *)self stateLock];
  [v28 unlock];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = v20;
  v43 = [v17 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v43)
  {
    obj = v17;
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
              v38 = [(AMSObservable *)self sendMessageQueue];
              [v36 _sendResult:v37 usingQueue:v38];
            }

            v33 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v33);
        }
      }

      v17 = obj;
      v43 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v43);
  }

  v4 = v39;
LABEL_35:
}

- (id)subscribeWithResultBlock:(id)a3
{
  v4 = a3;
  v5 = [[AMSObserver alloc] initWithResultBlock:v4];

  [(AMSObservable *)self subscribe:v5];

  return v5;
}

- (void)unsubscribe:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSObservable *)self stateLock];
  [v5 lock];

  v6 = [(AMSObservable *)self stateLock];
  v7 = [v6 condition];

  if (v7 == 1)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(AMSObservable *)self logKey];
    v18 = 138543618;
    v19 = v10;
    v20 = 2114;
    v21 = v12;
    v13 = "%{public}@: [%{public}@] Someone is attempting to remove an observer from a completed observable.";
LABEL_12:
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEBUG, v13, &v18, 0x16u);

LABEL_13:
    goto LABEL_14;
  }

  v14 = [(AMSObservable *)self observers];
  v15 = [v14 containsObject:v4];

  if ((v15 & 1) == 0)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v16 = objc_opt_class();
    v11 = v16;
    v12 = [(AMSObservable *)self logKey];
    v18 = 138543618;
    v19 = v16;
    v20 = 2114;
    v21 = v12;
    v13 = "%{public}@: [%{public}@] Someone is attempting to remove an observer from an observable it isn't subscribed to.";
    goto LABEL_12;
  }

  v8 = [(AMSObservable *)self observers];
  [v8 removeObject:v4];
LABEL_14:

  v17 = [(AMSObservable *)self stateLock];
  [v17 unlock];
}

- (void)unsubscribeAll
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(AMSObservable *)self stateLock];
  [v3 lock];

  v4 = [(AMSObservable *)self stateLock];
  v5 = [v4 condition];

  if (v5 == 1)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [(AMSObservable *)self logKey];
      *buf = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Someone is attempting to remove all observers from a completed observable.", buf, 0x16u);
    }

    v11 = [(AMSObservable *)self stateLock];
    [v11 unlock];
  }

  else
  {
    v12 = [(AMSObservable *)self observers];
    [v12 removeAllObjects];

    v13 = [(AMSObservable *)self stateLock];
    [v13 unlock];
  }
}

- (BOOL)_isComplete
{
  v2 = [(AMSObservable *)self stateLock];
  v3 = [v2 condition] == 1;

  return v3;
}

@end