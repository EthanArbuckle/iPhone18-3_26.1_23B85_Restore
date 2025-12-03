@interface AMSUNUserNotificationStrategy
+ (BOOL)_badgeBundleId:(id)id increment:(BOOL)increment error:(id *)error;
+ (id)_activeNotificationsWithCenterBundleId:(id)id;
+ (id)_centerForBundleId:(id)id;
+ (id)_postNotification:(id)notification bag:(id)bag centerBundleId:(id)id;
+ (id)_removeNotification:(id)notification centerBundleId:(id)id;
+ (id)_removeNotificationWithIdentifier:(id)identifier centerBundleId:(id)id logKey:(id)key scheduledOnly:(BOOL)only;
@end

@implementation AMSUNUserNotificationStrategy

+ (id)_activeNotificationsWithCenterBundleId:(id)id
{
  v32 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [self _centerForBundleId:idCopy];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__72;
  v29 = __Block_byref_object_dispose__72;
  v30 = 0;
  v7 = dispatch_semaphore_create(0);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__AMSUNUserNotificationStrategy__activeNotificationsWithCenterBundleId___block_invoke;
  v22[3] = &unk_1E73BCDE0;
  v24 = &v25;
  v8 = v7;
  v23 = v8;
  [v6 getDeliveredNotificationsWithCompletionHandler:v22];
  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v8, v9);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v26[5];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v31 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [AMSUserNotification alloc];
        v16 = [(AMSUserNotification *)v15 initWithUNNotification:v14, v18];
        [v5 addObject:v16];
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v31 count:16];
    }

    while (v11);
  }

  _Block_object_dispose(&v25, 8);

  return v5;
}

void __72__AMSUNUserNotificationStrategy__activeNotificationsWithCenterBundleId___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)_badgeBundleId:(id)id increment:(BOOL)increment error:(id *)error
{
  incrementCopy = increment;
  idCopy = id;
  v9 = [self _centerForBundleId:idCopy];
  badgeNumber = [v9 badgeNumber];
  longLongValue = [badgeNumber longLongValue];

  if (incrementCopy)
  {
    v12 = longLongValue + 1;
  }

  else
  {
    v12 = longLongValue - 1;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v14 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__AMSUNUserNotificationStrategy__badgeBundleId_increment_error___block_invoke;
  v19[3] = &unk_1E73BCE08;
  v21 = &v23;
  errorCopy = error;
  v15 = v14;
  v20 = v15;
  [v9 setBadgeNumber:v13 withCompletionHandler:v19];
  v16 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v15, v16);
  v17 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v17;
}

intptr_t __64__AMSUNUserNotificationStrategy__badgeBundleId_increment_error___block_invoke(uint64_t a1, id a2)
{
  v3 = *(*(a1 + 40) + 8);
  if (a2)
  {
    *(v3 + 24) = 0;
    if (*(a1 + 48))
    {
      v5 = a2;
      **(a1 + 48) = a2;
    }
  }

  else
  {
    *(v3 + 24) = 1;
  }

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

+ (id)_postNotification:(id)notification bag:(id)bag centerBundleId:(id)id
{
  v44 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  bagCopy = bag;
  idCopy = id;
  v11 = objc_alloc_init(AMSMutableBinaryPromise);
  logKey = [notificationCopy logKey];
  v13 = AMSSetLogKey(logKey);

  v14 = [self _centerForBundleId:idCopy];

  if (!v14)
  {
    v15 = AMSError(0, @"Unknown Center", @"Unable to locate notification center for posting", 0);
    [(AMSMutableBinaryPromise *)v11 finishWithError:v15];
  }

  v16 = +[AMSLogConfig sharedConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v11;
    v19 = objc_opt_class();
    v31 = v19;
    logKey2 = [notificationCopy logKey];
    identifier = [notificationCopy identifier];
    *buf = 138543874;
    v39 = v19;
    v11 = v18;
    v40 = 2114;
    v41 = logKey2;
    v42 = 2114;
    v43 = identifier;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting notification: %{public}@", buf, 0x20u);
  }

  createUNNotificationContent = [notificationCopy createUNNotificationContent];
  v23 = [notificationCopy createUNNotificationRequestFromContent:createUNNotificationContent];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __70__AMSUNUserNotificationStrategy__postNotification_bag_centerBundleId___block_invoke;
  v32[3] = &unk_1E73BCE30;
  v33 = notificationCopy;
  v34 = v14;
  selfCopy = self;
  v24 = v11;
  v35 = v24;
  v36 = bagCopy;
  v25 = bagCopy;
  v26 = v14;
  v27 = notificationCopy;
  [AMSUserNotification handleServiceExtensionNotificationRequest:v23 bag:v25 withContentHandler:v32];
  v28 = v36;
  v29 = v24;

  return v24;
}

void __70__AMSUNUserNotificationStrategy__postNotification_bag_centerBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 logKey];
  v6 = AMSSetLogKey(v5);

  v7 = [*(a1 + 32) createUNNotificationRequestFromContent:v4];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__AMSUNUserNotificationStrategy__postNotification_bag_centerBundleId___block_invoke_2;
  v11[3] = &unk_1E73BB580;
  v14 = *(a1 + 64);
  v8 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  [v8 addNotificationRequest:v7 withCompletionHandler:v11];
  v9 = [AMSMetrics internalInstanceUsingBag:*(a1 + 56)];
  v10 = [v9 flush];
}

void __70__AMSUNUserNotificationStrategy__postNotification_bag_centerBundleId___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 logKey];
      v11 = [*(a1 + 32) identifier];
      v18 = 138544130;
      v19 = v7;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to post notification: %{public}@. Error: %{public}@", &v18, 0x2Au);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v5 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = *(a1 + 32);
      v15 = v13;
      v16 = [v14 logKey];
      v17 = [*(a1 + 32) identifier];
      v18 = 138543874;
      v19 = v13;
      v20 = 2114;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully posted notification: %{public}@", &v18, 0x20u);
    }

    [*(a1 + 40) finishWithSuccess];
  }
}

+ (id)_removeNotificationWithIdentifier:(id)identifier centerBundleId:(id)id logKey:(id)key scheduledOnly:(BOOL)only
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  keyCopy = key;
  idCopy = id;
  v13 = +[AMSLogConfig sharedConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v24 = objc_opt_class();
    v25 = 2114;
    v26 = keyCopy;
    v27 = 2114;
    v28 = identifierCopy;
    v15 = v24;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing notification: %{public}@", buf, 0x20u);
  }

  v16 = [self _centerForBundleId:idCopy];

  if (!only)
  {
    v22 = identifierCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v16 removeDeliveredNotificationsWithIdentifiers:v17];
  }

  v21 = identifierCopy;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  [v16 removePendingNotificationRequestsWithIdentifiers:v18];

  v19 = +[AMSBinaryPromise promiseWithSuccess];

  return v19;
}

+ (id)_removeNotification:(id)notification centerBundleId:(id)id
{
  v4 = AMSError(11, @"Remove Not Implemented", 0, 0);
  v5 = [AMSBinaryPromise promiseWithError:v4];

  return v5;
}

+ (id)_centerForBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    v4 = +[AMSProcessInfo currentProcess];
    bundleIdentifier = [v4 bundleIdentifier];
    v6 = [idCopy isEqualToString:bundleIdentifier];

    if (v6)
    {
      currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
    }

    else
    {
      currentNotificationCenter = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:idCopy];
    }

    v8 = currentNotificationCenter;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end