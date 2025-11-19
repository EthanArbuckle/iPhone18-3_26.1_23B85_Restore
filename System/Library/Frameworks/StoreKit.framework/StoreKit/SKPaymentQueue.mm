@interface SKPaymentQueue
+ (BOOL)canMakePayments;
+ (SKPaymentQueue)defaultQueue;
- (BOOL)shouldContinueTransaction:(id)a3 inNewStorefront:(id)a4;
- (NSArray)transactionObservers;
- (NSArray)transactions;
- (SKPaymentQueue)initWithPaymentQueueClient:(id)a3;
- (SKStorefront)storefront;
- (id)_initSKPaymentQueue;
- (id)delegate;
- (void)_applicationDidBecomeActiveNotification:(id)a3;
- (void)_applicationWillEnterForegroundNotification:(id)a3;
- (void)_checkForMessages;
- (void)_checkServerQueueForced:(BOOL)a3;
- (void)_logEventWithPrimaryError:(id)a3 mappedError:(id)a4 inAppPurchaseID:(id)a5 userAction:(int64_t)a6;
- (void)_notifyObserversAboutChanges:(id)a3 sendUpdatedDownloads:(BOOL)a4;
- (void)_notifyObserversAboutRemovals:(id)a3;
- (void)_processTransactionDict:(id)a3 forTransaction:(id)a4 error:(id)a5;
- (void)_removeLocalTransaction:(id)a3;
- (void)_removeNilTransactionObservers;
- (void)_updatedTransactions:(id)a3 restored:(BOOL)a4;
- (void)addPayment:(SKPayment *)payment;
- (void)addTransactionObserver:(id)observer;
- (void)askToShowMessageWithReplyBlock:(id)a3;
- (void)cancelDownloads:(NSArray *)downloads;
- (void)clearTransactions;
- (void)dealloc;
- (void)downloadAdded:(id)a3;
- (void)downloadRemoved:(id)a3;
- (void)downloadStatusChanged:(id)a3;
- (void)finishTransaction:(SKPaymentTransaction *)transaction;
- (void)forceSandboxForBundleIdentifier:(id)a3 untilDate:(id)a4;
- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4;
- (void)listenForPurchaseIntents;
- (void)notifyObserversForNewStorefront:(id)a3;
- (void)notifyPurchaseIntentObserversForProducts:(id)a3;
- (void)pauseDownloads:(NSArray *)downloads;
- (void)presentCodeRedemptionSheet;
- (void)removeTransactionObserver:(id)observer;
- (void)removeTransactionWithID:(unint64_t)a3;
- (void)removedEntitlementsForProductIdentifiers:(id)a3;
- (void)removedTransactions:(id)a3;
- (void)restoreCompletedTransactionsWithApplicationUsername:(NSString *)username;
- (void)resumeDownloads:(NSArray *)downloads;
- (void)showPriceConsentIfNeeded;
- (void)startDownloads:(NSArray *)downloads;
- (void)stopListeningForPurchaseIntents;
@end

@implementation SKPaymentQueue

- (id)_initSKPaymentQueue
{
  v8.receiver = self;
  v8.super_class = SKPaymentQueue;
  v2 = [(SKPaymentQueue *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKPaymentQueueInternal);
    internal = v2->_internal;
    v2->_internal = v3;

    v5 = +[SKClientBroker defaultBroker];
    [v5 registerClient:v2 withIdentifier:*(v2->_internal + 2)];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v2 selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
    [v6 addObserver:v2 selector:sel__applicationDidBecomeActiveNotification_ name:*MEMORY[0x1E69DDAB0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[SKClientBroker defaultBroker];
  [v3 unregisterClientWithIdentifier:*(self->_internal + 2)];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDAB0] object:0];

  v5.receiver = self;
  v5.super_class = SKPaymentQueue;
  [(SKPaymentQueue *)&v5 dealloc];
}

+ (SKPaymentQueue)defaultQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SKPaymentQueue_defaultQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultQueue_sSharedInstanceOnce != -1)
  {
    dispatch_once(&defaultQueue_sSharedInstanceOnce, block);
  }

  v2 = defaultQueue_sSharedQueue;

  return v2;
}

uint64_t __30__SKPaymentQueue_defaultQueue__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultQueue_sSharedQueue;
  defaultQueue_sSharedQueue = v1;

  v3 = *(defaultQueue_sSharedQueue + 8);
  v4 = +[SKClientBroker defaultBroker];
  [v4 unregisterClientWithIdentifier:v3[2]];

  objc_storeStrong(v3 + 2, @"DefaultQueue");
  v5 = +[SKClientBroker defaultBroker];
  [v5 registerClient:defaultQueue_sSharedQueue withIdentifier:0x1F29BDAE0];

  return +[SKPaymentQueue listenForStorefrontChanges];
}

+ (BOOL)canMakePayments
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 applicationHasMIDBasedSINF] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v6 = [v5 effectiveBoolValueForSetting:*MEMORY[0x1E69ADEC8]];

  v7 = [MEMORY[0x1E69DC668] isRunningInStoreDemoMode];
  v8 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v9 = [v8 isOnDeviceAppInstallationAllowed];

  if (v6 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  v11 = v10 & (v7 ^ 1) & v9;
  if ((v11 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (v7)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v17 = 138544386;
    v18 = a1;
    if (v4)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v19 = 2114;
    v20 = v13;
    if (v6 == 2)
    {
      v15 = @"NO";
    }

    else
    {
      v15 = @"YES";
    }

    v21 = 2114;
    v22 = v14;
    if (v9)
    {
      v12 = @"YES";
    }

    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Payments not allowed. demoMode: %{public}@ appAllowed: %{public}@ iapAllowed: %{public}@ appInstallAllowed: %{public}@", &v17, 0x34u);
  }

  return v11;
}

- (void)addPayment:(SKPayment *)payment
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = payment;
  v5 = v4;
  if (v4)
  {
    v6 = [(SKPayment *)v4 productIdentifier];
    v7 = [v6 length];

    if (v7)
    {
      if ([(SKPayment *)v5 quantity]<= 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid quantity: %ld", -[SKPayment quantity](v5, "quantity")}];
      }

      else
      {
        v8 = _os_activity_create(&dword_1B23EF000, "StoreKit/Purchase_SK1", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __29__SKPaymentQueue_addPayment___block_invoke;
        block[3] = &unk_1E7B28640;
        v13 = v5;
        v14 = self;
        os_activity_apply(v8, block);
      }
    }

    else
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
      v11 = [(SKPayment *)v5 productIdentifier];
      [v9 raise:v10 format:{@"Invalid product identifier: %@", v11}];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot add nil payment to SKPaymentQueue", buf, 0xCu);
  }
}

void __29__SKPaymentQueue_addPayment___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [[SKPaymentTransaction alloc] initWithPayment:*(a1 + 32)];
  v3 = *(*(*(a1 + 40) + 8) + 48);
  objc_sync_enter(v3);
  v4 = *(*(*(a1 + 40) + 8) + 48);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __29__SKPaymentQueue_addPayment___block_invoke_2;
  v26[3] = &unk_1E7B288E8;
  v5 = v2;
  v27 = v5;
  v6 = [v4 indexOfObjectPassingTest:v26];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
    [*(*(*(a1 + 40) + 8) + 48) addObject:v5];
    v7 = 1;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) productIdentifier];
      *buf = 138543618;
      v29 = v10;
      v30 = 2114;
      v31 = v11;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Payment added for transaction already in the SKPaymentQueue: %{public}@", buf, 0x16u);
    }

    v12 = [*(*(*(a1 + 40) + 8) + 48) objectAtIndexedSubscript:v6];
    v13 = [v12 transactionState];
    if (v13 == 2 || v13 == 4)
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        v18 = [v12 transactionState];
        v19 = [*(a1 + 32) productIdentifier];
        *buf = 138543874;
        v29 = v17;
        v30 = 2048;
        v31 = v18;
        v32 = 2114;
        v33 = v19;
        _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Reprocessing transaction with state %ld: %{public}@", buf, 0x20u);
      }

      [*(*(*(a1 + 40) + 8) + 40) removeObjectAtIndex:v6];
      [*(*(*(a1 + 40) + 8) + 48) removeObjectAtIndex:v6];
      [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
      [*(*(*(a1 + 40) + 8) + 48) addObject:v5];
      v7 = 1;
    }

    else
    {
      v20 = v12;

      v7 = 0;
      v5 = v20;
    }
  }

  objc_sync_exit(v3);
  v21 = *(a1 + 40);
  v22 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
  [v21 _notifyObserversAboutChanges:v22 sendUpdatedDownloads:0];

  if (v7)
  {
    v23 = *(a1 + 40);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __29__SKPaymentQueue_addPayment___block_invoke_28;
    v24[3] = &unk_1E7B28910;
    v24[4] = v23;
    v25 = v5;
    [v23 processTransaction:v25 completionHandler:v24];
  }
}

BOOL __29__SKPaymentQueue_addPayment___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) payment];
  v8 = [v7 productIdentifier];
  v9 = [v6 payment];
  v10 = [v9 productIdentifier];
  if ([v8 isEqual:v10])
  {
    v11 = [*(a1 + 32) payment];
    v12 = [v11 quantity];
    v13 = [v6 payment];
    v14 = v12 == [v13 quantity];
  }

  else
  {
    v14 = 0;
  }

  *a4 = v14;
  return v14;
}

void __29__SKPaymentQueue_addPayment___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __29__SKPaymentQueue_addPayment___block_invoke_28_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Payment completed", &v8, 0xCu);
  }

  [*(a1 + 32) _processTransactionDict:v5 forTransaction:*(a1 + 40) error:v6];
}

- (NSArray)transactionObservers
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(self->_internal + 8);
  objc_sync_enter(v3);
  v4 = *(self->_internal + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SKPaymentQueue_transactionObservers__block_invoke;
  v7[3] = &unk_1E7B28938;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  objc_sync_exit(v3);

  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __38__SKPaymentQueue_transactionObservers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)addTransactionObserver:(id)observer
{
  v4 = observer;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot add nil observer"];
  }

  v5 = [[SKWeakReference alloc] initWithObject:v4];
  v6 = *(self->_internal + 8);
  objc_sync_enter(v6);
  v7 = *(self->_internal + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__SKPaymentQueue_addTransactionObserver___block_invoke;
  v9[3] = &unk_1E7B288E8;
  v8 = v4;
  v10 = v8;
  if ([v7 indexOfObjectPassingTest:v9] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(self->_internal + 8) addObject:v5];
    if ([*(self->_internal + 8) count] == 1)
    {
      [(SKPaymentQueue *)self _checkServerQueueForced:0];
      [(SKPaymentQueue *)self _checkForMessages];
      [(SKPaymentQueue *)self listenForPurchaseIntents];
    }
  }

  objc_sync_exit(v6);
}

BOOL __41__SKPaymentQueue_addTransactionObserver___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 object];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *a4 = 1;
  }

  return v6 == v7;
}

- (void)cancelDownloads:(NSArray *)downloads
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = downloads;
  v5 = +[SKServiceBroker defaultBroker];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __34__SKPaymentQueue_cancelDownloads___block_invoke;
  v21[3] = &unk_1E7B278B0;
  v21[4] = self;
  v6 = [v5 storeKitServiceWithErrorHandler:v21];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (![v12 state] || objc_msgSend(v12, "state") == 1 || objc_msgSend(v12, "state") == 2)
        {
          v13 = *(self->_internal + 4);
          v14 = [v12 _downloadID];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = [v12 _downloadID];
            [v6 cancelDownloadWithID:v16];
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }
}

void __34__SKPaymentQueue_cancelDownloads___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __34__SKPaymentQueue_cancelDownloads___block_invoke_cold_1();
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(self->_internal + 10);

  return WeakRetained;
}

- (void)finishTransaction:(SKPaymentTransaction *)transaction
{
  v4 = transaction;
  if ([(SKPaymentTransaction *)v4 transactionState])
  {
    v5 = _os_activity_create(&dword_1B23EF000, "StoreKit/FinishTransaction_SK1", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__SKPaymentQueue_finishTransaction___block_invoke;
    v6[3] = &unk_1E7B28640;
    v7 = v4;
    v8 = self;
    os_activity_apply(v5, v6);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot finish a purchasing transaction"];
  }
}

void __36__SKPaymentQueue_finishTransaction___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) transactionState] == 2 && (objc_msgSend(*v2, "transactionIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __36__SKPaymentQueue_finishTransaction___block_invoke_cold_1(a1, v2, v4, v5, v6, v7, v8, v9);
    }

    [*(a1 + 40) _checkServerQueueForced:1];
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__SKPaymentQueue_finishTransaction___block_invoke_41;
    v12[3] = &unk_1E7B28640;
    v12[4] = v11;
    v13 = v10;
    [v11 finishTransaction:v13 completionHandler:v12];
  }
}

- (void)pauseDownloads:(NSArray *)downloads
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = downloads;
  v5 = +[SKServiceBroker defaultBroker];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __33__SKPaymentQueue_pauseDownloads___block_invoke;
  v21[3] = &unk_1E7B278B0;
  v21[4] = self;
  v6 = [v5 storeKitServiceWithErrorHandler:v21];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (![v12 state] || objc_msgSend(v12, "state") == 1)
        {
          v13 = *(self->_internal + 4);
          v14 = [v12 _downloadID];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = [v12 _downloadID];
            [v6 pauseDownloadWithID:v16];
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }
}

void __33__SKPaymentQueue_pauseDownloads___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __33__SKPaymentQueue_pauseDownloads___block_invoke_cold_1();
  }
}

- (void)removeTransactionObserver:(id)observer
{
  v4 = observer;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot remove nil observer"];
  }

  v5 = *(self->_internal + 8);
  objc_sync_enter(v5);
  v6 = *(self->_internal + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SKPaymentQueue_removeTransactionObserver___block_invoke;
  v9[3] = &unk_1E7B288E8;
  v7 = v4;
  v10 = v7;
  v8 = [v6 indexOfObjectPassingTest:v9];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(self->_internal + 8) removeObjectAtIndex:v8];
    if (![*(self->_internal + 8) count])
    {
      [(SKPaymentQueue *)self stopListeningForPurchaseIntents];
    }
  }

  objc_sync_exit(v5);
}

BOOL __44__SKPaymentQueue_removeTransactionObserver___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 object];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *a4 = 1;
  }

  return v6 == v7;
}

- (void)restoreCompletedTransactionsWithApplicationUsername:(NSString *)username
{
  v4 = username;
  v5 = self->_internal;
  objc_sync_enter(v5);
  v6 = _os_activity_create(&dword_1B23EF000, "StoreKit/Restore_SK1", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke;
  v8[3] = &unk_1E7B28640;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  os_activity_apply(v6, v8);

  objc_sync_exit(v5);
}

void __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 9) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring restore transactions request because transactions are already being restored", buf, 0xCu);
    }
  }

  else
  {
    *(v2 + 9) = 1;
    v4 = +[SKServiceBroker defaultBroker];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_45;
    v10[3] = &unk_1E7B278B0;
    v10[4] = *(a1 + 32);
    v5 = [v4 storeKitServiceWithErrorHandler:v10];

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) paymentQueueClient];
    v8 = [v7 plist];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_3;
    v9[3] = &unk_1E7B278D8;
    v9[4] = *(a1 + 32);
    [v5 restoreCompletedTransactionsForUsername:v6 client:v8 reply:v9];
  }
}

void __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_45_cold_1();
  }

  v4 = _SKErrorFromNSError(v3);
  [*(a1 + 32) _logEventWithPrimaryError:v3 mappedError:v4 inAppPurchaseID:0 userAction:1];
  v5 = *(*(*(a1 + 32) + 8) + 64);
  objc_sync_enter(v5);
  v6 = *(a1 + 32);
  v7 = *(*(v6 + 8) + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_46;
  v10[3] = &unk_1E7B28988;
  v10[4] = v6;
  v8 = v4;
  v11 = v8;
  [v7 enumerateObjectsUsingBlock:v10];

  objc_sync_exit(v5);
  v9 = *(*(a1 + 32) + 8);
  objc_sync_enter(v9);
  *(*(*(a1 + 32) + 8) + 9) = 0;
  objc_sync_exit(v9);
}

void __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(*(*(a1 + 32) + 8) + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_2;
    block[3] = &unk_1E7B28960;
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    dispatch_async(v4, block);
  }
}

void __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) _updatedTransactions:v5 restored:1];
  v7 = *(*(*(a1 + 32) + 8) + 64);
  objc_sync_enter(v7);
  if (v6)
  {
    v8 = _SKErrorFromNSError(v6);
    [*(a1 + 32) _logEventWithPrimaryError:v6 mappedError:v8 inAppPurchaseID:0 userAction:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(*(a1 + 32) + 8) + 64);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_4;
  v13[3] = &unk_1E7B28988;
  v10 = v8;
  v11 = *(a1 + 32);
  v14 = v10;
  v15 = v11;
  [v9 enumerateObjectsUsingBlock:v13];

  objc_sync_exit(v7);
  v12 = *(*(a1 + 32) + 8);
  objc_sync_enter(v12);
  *(*(*(a1 + 32) + 8) + 9) = 0;
  objc_sync_exit(v12);
}

void __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_4(int8x16_t *a1, void *a2)
{
  v3 = [a2 object];
  if (a1[2].i64[0])
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = *(*(a1[2].i64[1] + 8) + 72);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_5;
      block[3] = &unk_1E7B28960;
      v5 = &v14;
      v14 = v3;
      v10 = a1[2];
      v6 = v10.i64[0];
      v15 = vextq_s8(v10, v10, 8uLL);
      dispatch_async(v4, block);

LABEL_6:
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = *(*(a1[2].i64[1] + 8) + 72);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_6;
    v11[3] = &unk_1E7B28640;
    v5 = v12;
    v8 = v3;
    v9 = a1[2].i64[1];
    v12[0] = v8;
    v12[1] = v9;
    dispatch_async(v7, v11);
    goto LABEL_6;
  }
}

- (void)resumeDownloads:(NSArray *)downloads
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = downloads;
  v5 = +[SKServiceBroker defaultBroker];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __34__SKPaymentQueue_resumeDownloads___block_invoke;
  v21[3] = &unk_1E7B278B0;
  v21[4] = self;
  v6 = [v5 storeKitServiceWithErrorHandler:v21];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 state] == 2)
        {
          v13 = *(self->_internal + 4);
          v14 = [v12 _downloadID];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = [v12 _downloadID];
            [v6 resumeDownloadWithID:v16];
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }
}

void __34__SKPaymentQueue_resumeDownloads___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __34__SKPaymentQueue_resumeDownloads___block_invoke_cold_1();
  }
}

- (void)showPriceConsentIfNeeded
{
  v3 = +[SKServiceBroker defaultBroker];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SKPaymentQueue_showPriceConsentIfNeeded__block_invoke;
  v5[3] = &unk_1E7B278B0;
  v5[4] = self;
  v4 = [v3 storeKitServiceWithErrorHandler:v5];

  [v4 displayMessageWithType:&unk_1F29D51F8];
}

void __42__SKPaymentQueue_showPriceConsentIfNeeded__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __42__SKPaymentQueue_showPriceConsentIfNeeded__block_invoke_cold_1();
  }
}

- (void)presentCodeRedemptionSheet
{
  v3 = +[SKServiceBroker defaultBroker];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SKPaymentQueue_presentCodeRedemptionSheet__block_invoke;
  v5[3] = &unk_1E7B278B0;
  v5[4] = self;
  v4 = [v3 storeKitServiceWithErrorHandler:v5];

  *(self->_internal + 8) = 1;
  [v4 presentCodeRedemptionSheet];
}

void __44__SKPaymentQueue_presentCodeRedemptionSheet__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __44__SKPaymentQueue_presentCodeRedemptionSheet__block_invoke_cold_1();
  }
}

- (void)startDownloads:(NSArray *)downloads
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = downloads;
  v5 = +[SKServiceBroker defaultBroker];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __33__SKPaymentQueue_startDownloads___block_invoke;
  v26[3] = &unk_1E7B278B0;
  v26[4] = self;
  v6 = [v5 storeKitServiceWithErrorHandler:v26];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 138543874;
    v20 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [v12 state];
        if (v13 > 5 || ((1 << v13) & 0x31) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v12 state];
            *buf = v20;
            v28 = self;
            v29 = 2114;
            v30 = v12;
            v31 = 2048;
            v32 = v18;
            _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring download %{public}@ in state %ld.", buf, 0x20u);
          }
        }

        else
        {
          v15 = *(self->_internal + 4);
          v16 = [v12 _downloadID];
          [v15 setObject:v12 forKeyedSubscript:v16];

          v17 = [v12 _downloadID];
          [v6 addDownloadWithID:v17];
        }

        ++v11;
      }

      while (v9 != v11);
      v19 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v33 count:16];
      v9 = v19;
    }

    while (v19);
  }
}

void __33__SKPaymentQueue_startDownloads___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __33__SKPaymentQueue_startDownloads___block_invoke_cold_1();
  }
}

- (SKStorefront)storefront
{
  v3 = +[SKPaymentQueue defaultQueue];

  if (v3 == self)
  {
    v4 = *(self->_internal + 8);
    objc_sync_enter(v4);
    v5 = *(self->_internal + 7);
    objc_sync_exit(v4);
  }

  else
  {
    v4 = +[SKPaymentQueue defaultQueue];
    v5 = [v4 storefront];
  }

  return v5;
}

- (NSArray)transactions
{
  v3 = *(self->_internal + 6);
  objc_sync_enter(v3);
  v4 = [*(self->_internal + 6) copy];
  objc_sync_exit(v3);

  return v4;
}

- (SKPaymentQueue)initWithPaymentQueueClient:(id)a3
{
  v4 = a3;
  v5 = [(SKPaymentQueue *)self _initSKPaymentQueue];
  if (v5)
  {
    v6 = [v4 copy];
    internal = v5->_internal;
    v8 = internal[3];
    internal[3] = v6;
  }

  return v5;
}

- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SKPaymentQueue *)self paymentQueueClient];
  v8 = [v7 delegate];

  if (objc_opt_respondsToSelector())
  {
    [v8 handleEngagementRequest:v10 resultHandler:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:5 userInfo:0];
    v6[2](v6, 0, v9);
  }
}

- (void)askToShowMessageWithReplyBlock:(id)a3
{
  v8 = a3;
  v4 = [(SKPaymentQueue *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SKPaymentQueue *)self delegate];
    v7 = [v6 paymentQueueShouldShowPriceConsent:self];
  }

  else
  {
    v7 = 1;
  }

  v8[2](v8, v5 & 1, v7);
}

- (void)removedTransactions:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(MEMORY[0x1E696AD50]);
  obj = *(self->_internal + 6);
  objc_sync_enter(obj);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = 0;
        v10 = *(*(&v21 + 1) + 8 * v8);
        while ([*(self->_internal + 6) count] > v9)
        {
          v11 = [*(self->_internal + 6) objectAtIndexedSubscript:v9];
          v12 = [v11 UUID];
          v13 = [v12 isEqualToString:v10];

          if (v13)
          {
            [v18 addObject:v11];
            [v17 addIndex:v9];

            break;
          }

          ++v9;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  if ([v17 count])
  {
    [*(self->_internal + 6) removeObjectsAtIndexes:v17];
  }

  objc_sync_exit(obj);

  if ([v18 count])
  {
    obja = *(self->_internal + 8);
    objc_sync_enter(obja);
    v14 = *(self->_internal + 8);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __38__SKPaymentQueue_removedTransactions___block_invoke;
    v19[3] = &unk_1E7B28988;
    v19[4] = self;
    v20 = v18;
    [v14 enumerateObjectsUsingBlock:v19];

    objc_sync_exit(obja);
  }
}

void __38__SKPaymentQueue_removedTransactions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(*(*(a1 + 32) + 8) + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__SKPaymentQueue_removedTransactions___block_invoke_2;
    block[3] = &unk_1E7B28960;
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    dispatch_async(v4, block);
  }
}

void __38__SKPaymentQueue_removedTransactions___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) copy];
  [v1 paymentQueue:v2 removedTransactions:v3];
}

- (void)downloadAdded:(id)a3
{
  v4 = a3;
  v5 = *(self->_internal + 4);
  v6 = [v4 objectForKeyedSubscript:0x1F29BDD20];
  v7 = [v5 objectForKeyedSubscript:v6];

  [v7 _setDownloadState:0];
  v8 = *(self->_internal + 8);
  objc_sync_enter(v8);
  v9 = *(self->_internal + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__SKPaymentQueue_downloadAdded___block_invoke;
  v11[3] = &unk_1E7B28988;
  v11[4] = self;
  v10 = v7;
  v12 = v10;
  [v9 enumerateObjectsUsingBlock:v11];

  objc_sync_exit(v8);
}

void __32__SKPaymentQueue_downloadAdded___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(*(*(a1 + 32) + 8) + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__SKPaymentQueue_downloadAdded___block_invoke_2;
    block[3] = &unk_1E7B28960;
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    dispatch_async(v4, block);
  }
}

void __32__SKPaymentQueue_downloadAdded___block_invoke_2(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = a1[6];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 paymentQueue:v2 updatedDownloads:v3];
}

- (void)downloadStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:0x1F29BDD20];
  v6 = [v4 objectForKeyedSubscript:0x1F29BDD60];
  if (v5)
  {
    v7 = [*(self->_internal + 4) objectForKeyedSubscript:v5];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 _setContentURL:0];
        [v7 _setError:0];
        [v7 _setTimeRemaining:SKDownloadTimeRemainingUnknown];
        v8 = [v6 objectForKeyedSubscript:0x1F29BDCC0];
        v9 = [v8 integerValue];

        if (v9 != 4)
        {
          v10 = [v6 objectForKeyedSubscript:@"isFailed"];
          v11 = [v10 BOOLValue];

          if (!v11)
          {
            v22 = [v6 objectForKeyedSubscript:@"isCancelled"];
            v23 = [v22 BOOLValue];

            if (v23)
            {
              [v7 _setDownloadState:5];
              LODWORD(v24) = 1.0;
              [v7 _setProgress:v24];
LABEL_20:
              v26 = *(self->_internal + 8);
              objc_sync_enter(v26);
              v27 = *(self->_internal + 8);
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v39[2] = __40__SKPaymentQueue_downloadStatusChanged___block_invoke;
              v39[3] = &unk_1E7B28988;
              v39[4] = self;
              v7 = v7;
              v40 = v7;
              [v27 enumerateObjectsUsingBlock:v39];

              objc_sync_exit(v26);
              goto LABEL_21;
            }

            if (v9 == 2 || ([v6 objectForKeyedSubscript:@"isPaused"], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "BOOLValue"), v28, v29))
            {
              [v7 _setDownloadState:2];
              v13 = [v6 objectForKeyedSubscript:0x1F29BDD40];
              [v13 doubleValue];
              *&v30 = v30;
              [v7 _setProgress:v30];
            }

            else
            {
              v31 = [v6 objectForKeyedSubscript:0x1F29BDD40];
              [v31 doubleValue];
              v33 = v32;

              if (v9 == 3 || (v34 = 1.0 - v33, 1.0 - v33 < 0.0001))
              {
                v35 = [v6 objectForKeyedSubscript:{0x1F29BDDA0, v34}];
                if ([v35 length])
                {
                  v36 = [MEMORY[0x1E695DFF8] fileURLWithPath:v35 isDirectory:1];
                  [v7 _setContentURL:v36];
                }

                [v7 _setDownloadState:3];
              }

              else
              {
                [v7 _setDownloadState:{1, v34}];
              }

              [v7 _setError:0];
              *&v37 = v33;
              [v7 _setProgress:v37];
              v13 = [v6 objectForKeyedSubscript:0x1F29BDD80];
              [v13 doubleValue];
              [v7 _setTimeRemaining:?];
            }

LABEL_19:

            goto LABEL_20;
          }
        }

        [v7 _setDownloadState:4];
        LODWORD(v12) = 1.0;
        [v7 _setProgress:v12];
        v13 = [v6 objectForKeyedSubscript:0x1F29BDBA0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v13;
            v14 = [v17 objectForKeyedSubscript:@"domain"];
            v18 = [v17 objectForKeyedSubscript:@"code"];
            v38 = [v18 integerValue];

            v19 = [v17 objectForKeyedSubscript:@"userInfo"];

            v20 = [MEMORY[0x1E696ABC0] errorWithDomain:v14 code:v38 userInfo:v19];
            v21 = _SKErrorFromNSError(v20);

            [v7 _setError:v21];
          }

          else
          {
            v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:0 userInfo:0];
            [v7 _setError:v14];
          }

          goto LABEL_18;
        }

        v14 = v13;
        v15 = [v14 domain];
        if ([v15 isEqualToString:*MEMORY[0x1E696A250]])
        {
          v16 = [v14 code];

          if (v16 == 3072)
          {
            [v7 _setDownloadState:5];
LABEL_18:

            goto LABEL_19;
          }
        }

        else
        {
        }

        v25 = _SKErrorFromNSError(v14);

        [v7 _setError:v25];
        v14 = v25;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_21:
}

void __40__SKPaymentQueue_downloadStatusChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(*(*(a1 + 32) + 8) + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__SKPaymentQueue_downloadStatusChanged___block_invoke_2;
    block[3] = &unk_1E7B28960;
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    dispatch_async(v4, block);
  }
}

void __40__SKPaymentQueue_downloadStatusChanged___block_invoke_2(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = a1[6];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 paymentQueue:v2 updatedDownloads:v3];
}

- (void)downloadRemoved:(id)a3
{
  v4 = a3;
  v5 = *(self->_internal + 4);
  v6 = [v4 objectForKeyedSubscript:0x1F29BDD20];
  v7 = [v5 objectForKeyedSubscript:v6];

  if ([v7 state] != 3 && objc_msgSend(v7, "state") != 4 && objc_msgSend(v7, "state") != 5)
  {
    [v7 _setDownloadState:5];
    v8 = *(self->_internal + 8);
    objc_sync_enter(v8);
    v9 = *(self->_internal + 8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __34__SKPaymentQueue_downloadRemoved___block_invoke;
    v10[3] = &unk_1E7B28988;
    v10[4] = self;
    v11 = v7;
    [v9 enumerateObjectsUsingBlock:v10];

    objc_sync_exit(v8);
  }
}

void __34__SKPaymentQueue_downloadRemoved___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(*(*(a1 + 32) + 8) + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__SKPaymentQueue_downloadRemoved___block_invoke_2;
    block[3] = &unk_1E7B28960;
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    dispatch_async(v4, block);
  }
}

void __34__SKPaymentQueue_downloadRemoved___block_invoke_2(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = a1[6];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 paymentQueue:v2 updatedDownloads:v3];
}

- (void)removedEntitlementsForProductIdentifiers:(id)a3
{
  v4 = a3;
  v5 = *(self->_internal + 8);
  objc_sync_enter(v5);
  v6 = *(self->_internal + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__SKPaymentQueue_removedEntitlementsForProductIdentifiers___block_invoke;
  v8[3] = &unk_1E7B28988;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v6 enumerateObjectsUsingBlock:v8];

  objc_sync_exit(v5);
}

void __59__SKPaymentQueue_removedEntitlementsForProductIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentQueue:*(a1 + 32) didRevokeEntitlementsForProductIdentifiers:*(a1 + 40)];
  }
}

- (void)_applicationWillEnterForegroundNotification:(id)a3
{
  [(SKPaymentQueue *)self _checkServerQueueForced:0];
  if ([*(self->_internal + 8) count])
  {

    [(SKPaymentQueue *)self _checkForMessages];
  }
}

- (void)_applicationDidBecomeActiveNotification:(id)a3
{
  if (*(self->_internal + 8) == 1)
  {
    [(SKPaymentQueue *)self _checkServerQueueForced:1];
    *(self->_internal + 8) = 0;
  }
}

- (void)clearTransactions
{
  obj = *(self->_internal + 6);
  objc_sync_enter(obj);
  [*(self->_internal + 5) removeAllObjects];
  [*(self->_internal + 6) removeAllObjects];
  objc_sync_exit(obj);
}

- (void)removeTransactionWithID:(unint64_t)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [v3 stringValue];

  obj = *(self->_internal + 6);
  objc_sync_enter(obj);
  v5 = [*(self->_internal + 5) mutableCopy];
  v6 = [*(self->_internal + 6) mutableCopy];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = *(self->_internal + 5);
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 transactionIdentifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 removeObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = *(self->_internal + 6);
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = *v29;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v28 + 1) + 8 * j);
        v19 = [v18 transactionIdentifier];
        v20 = [v19 isEqualToString:v4];

        if (v20)
        {
          [v6 removeObject:v18];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v15);
  }

  internal = self->_internal;
  p_internal = &self->_internal;
  v22 = internal[5];
  internal[5] = v5;
  v23 = v5;

  v24 = *(*p_internal + 6);
  *(*p_internal + 6) = v6;

  objc_sync_exit(obj);
}

- (void)_checkForMessages
{
  v3 = +[SKServiceBroker defaultBroker];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SKPaymentQueue__checkForMessages__block_invoke;
  v5[3] = &unk_1E7B278B0;
  v5[4] = self;
  v4 = [v3 storeKitServiceWithErrorHandler:v5];

  [v4 checkForMessages];
}

void __35__SKPaymentQueue__checkForMessages__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __35__SKPaymentQueue__checkForMessages__block_invoke_cold_1();
  }
}

- (void)_checkServerQueueForced:(BOOL)a3
{
  if ([*(self->_internal + 8) count])
  {
    v5 = _os_activity_create(&dword_1B23EF000, "StoreKit/QueueCheck", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__SKPaymentQueue__checkServerQueueForced___block_invoke;
    v6[3] = &unk_1E7B27F08;
    v6[4] = self;
    v7 = a3;
    os_activity_apply(v5, v6);
  }
}

void __42__SKPaymentQueue__checkServerQueueForced___block_invoke(uint64_t a1)
{
  v2 = +[SKServiceBroker defaultBroker];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SKPaymentQueue__checkServerQueueForced___block_invoke_2;
  v8[3] = &unk_1E7B278B0;
  v8[4] = *(a1 + 32);
  v3 = [v2 storeKitServiceWithErrorHandler:v8];

  v4 = [*(a1 + 32) paymentQueueClient];
  v5 = [v4 plist];
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SKPaymentQueue__checkServerQueueForced___block_invoke_86;
  v7[3] = &unk_1E7B278D8;
  v7[4] = *(a1 + 32);
  [v3 checkServerQueueForClientIfNecessary:v5 forceCheck:v6 reply:v7];
}

void __42__SKPaymentQueue__checkServerQueueForced___block_invoke_2()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __42__SKPaymentQueue__checkServerQueueForced___block_invoke_2_cold_1();
  }
}

- (void)_notifyObserversAboutChanges:(id)a3 sendUpdatedDownloads:(BOOL)a4
{
  v24 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v22 = a3;
  [(SKPaymentQueue *)self _removeNilTransactionObservers];
  v17 = *(self->_internal + 8);
  objc_sync_enter(v17);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = self;
  obj = *(self->_internal + 8);
  v5 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v5)
  {
    v23 = *v40;
    v18 = v26;
    v19 = v35;
    do
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v39 + 1) + 8 * i) object];
        if (objc_opt_respondsToSelector())
        {
          v9 = *(v21->_internal + 9);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          v35[0] = __68__SKPaymentQueue__notifyObserversAboutChanges_sendUpdatedDownloads___block_invoke;
          v35[1] = &unk_1E7B28960;
          v36 = v8;
          v37 = v21;
          v38 = v22;
          dispatch_async(v9, block);
        }

        if (v24 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v11 = v22;
          v12 = [v11 countByEnumeratingWithState:&v30 objects:v43 count:16];
          if (v12)
          {
            v13 = *v31;
            do
            {
              v14 = 0;
              do
              {
                if (*v31 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = [*(*(&v30 + 1) + 8 * v14) downloads];
                if (v15)
                {
                  [v10 addObjectsFromArray:v15];
                }

                ++v14;
              }

              while (v12 != v14);
              v12 = [v11 countByEnumeratingWithState:&v30 objects:v43 count:16];
            }

            while (v12);
          }

          if ([v10 count])
          {
            v16 = *(v21->_internal + 9);
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v26[0] = __68__SKPaymentQueue__notifyObserversAboutChanges_sendUpdatedDownloads___block_invoke_2;
            v26[1] = &unk_1E7B28960;
            v27 = v8;
            v28 = v21;
            v29 = v10;
            dispatch_async(v16, v25);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v17);
}

- (void)_notifyObserversAboutRemovals:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a3;
  [(SKPaymentQueue *)self _removeNilTransactionObservers];
  obj = *(self->_internal + 8);
  objc_sync_enter(obj);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(self->_internal + 8);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v16 + 1) + 8 * v7) object];
        if (objc_opt_respondsToSelector())
        {
          v9 = *(self->_internal + 9);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __48__SKPaymentQueue__notifyObserversAboutRemovals___block_invoke;
          block[3] = &unk_1E7B28960;
          v13 = v8;
          v14 = self;
          v15 = v11;
          dispatch_async(v9, block);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  objc_sync_exit(obj);
}

- (void)_processTransactionDict:(id)a3 forTransaction:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10)
  {
    if (v8)
    {
      [v9 mergeWithServerTransaction:v8];
      goto LABEL_13;
    }

    [v9 _setTransactionState:2];
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:0 userInfo:0];
    [v9 _setError:v14];
    v15 = [v9 payment];
    v16 = [v15 productIdentifier];
    v17 = self;
    v18 = v14;
    v19 = 0;
LABEL_12:
    [(SKPaymentQueue *)v17 _logEventWithPrimaryError:v18 mappedError:v19 inAppPurchaseID:v16 userAction:3];

    goto LABEL_13;
  }

  v12 = [v10 domain];
  if (![v12 isEqualToString:@"ASDErrorDomain"])
  {

    goto LABEL_10;
  }

  v13 = [v11 code];

  if (v13 != 1052)
  {
LABEL_10:
    [v9 _setTransactionState:2];
    v14 = _SKErrorFromNSError(v11);
    [v9 _setError:v14];
    v15 = [v9 payment];
    v16 = [v15 productIdentifier];
    v17 = self;
    v18 = v11;
    v19 = v14;
    goto LABEL_12;
  }

  if (v8)
  {
    [v9 mergeWithServerTransaction:v8];
  }

  [v9 _setTransactionState:4];
LABEL_13:
  v20 = *(self->_internal + 8);
  objc_sync_enter(v20);
  v21 = *(self->_internal + 8);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __63__SKPaymentQueue__processTransactionDict_forTransaction_error___block_invoke;
  v23[3] = &unk_1E7B28988;
  v23[4] = self;
  v22 = v9;
  v24 = v22;
  [v21 enumerateObjectsUsingBlock:v23];

  objc_sync_exit(v20);
}

void __63__SKPaymentQueue__processTransactionDict_forTransaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(*(*(a1 + 32) + 8) + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__SKPaymentQueue__processTransactionDict_forTransaction_error___block_invoke_2;
    block[3] = &unk_1E7B28960;
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    dispatch_async(v4, block);
  }
}

void __63__SKPaymentQueue__processTransactionDict_forTransaction_error___block_invoke_2(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = a1[6];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 paymentQueue:v2 updatedTransactions:v3];
}

- (void)_removeLocalTransaction:(id)a3
{
  v7 = a3;
  v4 = *(self->_internal + 6);
  objc_sync_enter(v4);
  v5 = [*(self->_internal + 5) indexOfObject:v7];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
    [*(self->_internal + 5) removeObjectAtIndex:v5];
    [*(self->_internal + 6) removeObject:v7];
    [(SKPaymentQueue *)self _notifyObserversAboutRemovals:v6];
  }

  objc_sync_exit(v4);
}

- (void)_removeNilTransactionObservers
{
  obj = *(self->_internal + 8);
  objc_sync_enter(obj);
  v3 = objc_opt_new();
  for (i = 0; ; ++i)
  {
    v5 = [*(self->_internal + 8) count];
    v6 = *(self->_internal + 8);
    if (i >= v5)
    {
      break;
    }

    v7 = [v6 objectAtIndexedSubscript:i];
    v8 = [v7 object];

    if (!v8)
    {
      [v3 addIndex:i];
    }
  }

  [v6 removeObjectsAtIndexes:v3];

  objc_sync_exit(obj);
}

- (void)_updatedTransactions:(id)a3 restored:(BOOL)a4
{
  v40 = a4;
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = *(self->_internal + 6);
  objc_sync_enter(v35);
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = *(self->_internal + 5);
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v9)
  {
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v50 + 1) + 8 * i);
        v13 = [v12 UUID];

        if (v13)
        {
          v14 = [v12 UUID];
          [v7 setObject:v12 forKeyedSubscript:v14];
        }

        v15 = [v12 transactionIdentifier];

        if (v15)
        {
          v16 = [v12 transactionIdentifier];
          [v6 setObject:v12 forKeyedSubscript:v16];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v9);
  }

  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  obj = v5;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v17)
  {
    v18 = *v47;
    v37 = v44;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v46 + 1) + 8 * j);
        v21 = [[SKPaymentTransaction alloc] initWithServerTransaction:v20];
        v22 = v21;
        if (v40)
        {
          v23 = [(SKPaymentTransaction *)v21 originalTransaction];
          if (v23)
          {
            v24 = [(SKPaymentTransaction *)v22 transactionState]== SKPaymentTransactionStatePurchased;

            if (v24)
            {
              [(SKPaymentTransaction *)v22 _setTransactionState:3];
            }
          }
        }

        v25 = [(SKPaymentTransaction *)v22 UUID:v35];

        if (!v25 || (-[SKPaymentTransaction UUID](v22, "UUID"), v26 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:v26], v27 = objc_claimAutoreleasedReturnValue(), v26, !v27))
        {
          v28 = [(SKPaymentTransaction *)v22 transactionIdentifier];

          if (!v28 || (-[SKPaymentTransaction transactionIdentifier](v22, "transactionIdentifier"), v29 = objc_claimAutoreleasedReturnValue(), [v6 objectForKeyedSubscript:v29], v27 = objc_claimAutoreleasedReturnValue(), v29, !v27))
          {
            v30 = *(self->_internal + 6);
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v44[0] = __48__SKPaymentQueue__updatedTransactions_restored___block_invoke;
            v44[1] = &unk_1E7B288E8;
            v45 = v22;
            v31 = [v30 indexOfObjectPassingTest:v43];
            if (v31 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v27 = 0;
            }

            else
            {
              v27 = [*(self->_internal + 6) objectAtIndexedSubscript:v31];
            }
          }
        }

        v32 = [(SKPaymentTransaction *)v22 transactionState];
        if (v32 == [(SKPaymentTransaction *)v27 transactionState]|| [(SKPaymentTransaction *)v27 transactionState]== SKPaymentTransactionStatePurchasing || [(SKPaymentTransaction *)v27 transactionState]== SKPaymentTransactionStateDeferred)
        {
          if (v27)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v55 = v27;
              _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Updating existing transaction %{public}@", buf, 0xCu);
            }

            if ([(SKPaymentTransaction *)v27 mergeWithTransaction:v22])
            {
              [v38 addObject:v27];
            }

            goto LABEL_44;
          }
        }

        else
        {
        }

        v33 = [v20 objectForKeyedSubscript:0x1F29BDBE0];
        if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [*(self->_internal + 2) isEqualToString:v33])
        {
          [*(self->_internal + 5) addObject:v22];
          [*(self->_internal + 6) addObject:v22];
          [v38 addObject:v22];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v55 = v22;
            _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "New transaction added to queue %{public}@", buf, 0xCu);
          }
        }

        v27 = 0;
LABEL_44:
      }

      v17 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v17);
  }

  objc_sync_exit(v35);
  if ([v38 count])
  {
    v36 = *(self->_internal + 8);
    objc_sync_enter(v36);
    v34 = *(self->_internal + 8);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __48__SKPaymentQueue__updatedTransactions_restored___block_invoke_94;
    v41[3] = &unk_1E7B28988;
    v41[4] = self;
    v42 = v38;
    [v34 enumerateObjectsUsingBlock:v41];

    objc_sync_exit(v36);
  }
}

uint64_t __48__SKPaymentQueue__updatedTransactions_restored___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 canMergeWithTransaction:*(a1 + 32)];
  *a4 = result;
  return result;
}

void __48__SKPaymentQueue__updatedTransactions_restored___block_invoke_94(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(*(*(a1 + 32) + 8) + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SKPaymentQueue__updatedTransactions_restored___block_invoke_2;
    block[3] = &unk_1E7B28960;
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    dispatch_async(v4, block);
  }
}

void __48__SKPaymentQueue__updatedTransactions_restored___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) copy];
  [v1 paymentQueue:v2 updatedTransactions:v3];
}

- (void)_logEventWithPrimaryError:(id)a3 mappedError:(id)a4 inAppPurchaseID:(id)a5 userAction:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(SKOneErrorEvent);
  [(SKBaseErrorEvent *)v12 setInAppPurchaseID:v9];

  [(SKBaseErrorEvent *)v12 setUserAction:a6];
  [(SKBaseErrorEvent *)v12 setPrimaryError:v11];

  [(SKBaseErrorEvent *)v12 setMappedError:v10];
  [SKAnalyticsManager sendEvent:v12];
}

- (void)notifyObserversForNewStorefront:(id)a3
{
  v5 = a3;
  v6 = *(self->_internal + 8);
  objc_sync_enter(v6);
  v7 = *(self->_internal + 7);
  if (!v7 || ([v5 identifier], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, (v10 & 1) == 0))
  {
    objc_storeStrong(self->_internal + 7, a3);
    v11 = *(self->_internal + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__SKPaymentQueue_Package__notifyObserversForNewStorefront___block_invoke;
    v12[3] = &unk_1E7B289B0;
    v12[4] = self;
    [v11 enumerateObjectsUsingBlock:v12];
  }

  objc_sync_exit(v6);
}

void __59__SKPaymentQueue_Package__notifyObserversForNewStorefront___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentQueueDidChangeStorefront:*(a1 + 32)];
  }
}

- (void)notifyPurchaseIntentObserversForProducts:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SKPaymentQueue *)self _removeNilTransactionObservers];
  v13 = *(self->_internal + 8);
  objc_sync_enter(v13);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v17 = [SKPayment paymentFromPurchaseIntentWithProduct:v6, v13];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v7 = *(self->_internal + 8);
        v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v8)
        {
          v9 = *v24;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v24 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = [*(*(&v23 + 1) + 8 * j) object];
              if (objc_opt_respondsToSelector())
              {
                v12 = *(self->_internal + 9);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __68__SKPaymentQueue_Package__notifyPurchaseIntentObserversForProducts___block_invoke;
                block[3] = &unk_1E7B27BF8;
                v19 = v11;
                v20 = self;
                v21 = v17;
                v22 = v6;
                dispatch_async(v12, block);
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v8);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v13);
}

void __68__SKPaymentQueue_Package__notifyPurchaseIntentObserversForProducts___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) paymentQueue:*(a1 + 40) shouldAddStorePayment:*(a1 + 48) forProduct:*(a1 + 56)];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) productIdentifier];
    v4 = v3;
    v5 = @"NO";
    if (v2)
    {
      v5 = @"YES";
    }

    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[SKPaymentQueue]: Sent purchase intent: %{public}@ to delegate, response was %{public}@", &v6, 0x16u);
  }

  if (v2)
  {
    [*(a1 + 40) addPayment:*(a1 + 48)];
  }
}

- (BOOL)shouldContinueTransaction:(id)a3 inNewStorefront:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(self->_internal + 10);
  objc_sync_enter(WeakRetained);
  v9 = objc_loadWeakRetained(self->_internal + 10);
  objc_sync_exit(WeakRetained);

  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [v9 paymentQueue:self shouldContinueTransaction:v6 inStorefront:v7];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)listenForPurchaseIntents
{
  v2 = self;
  sub_1B2484C5C();
}

- (void)stopListeningForPurchaseIntents
{
  v2 = self;
  sub_1B24854F8();
}

- (void)forceSandboxForBundleIdentifier:(id)a3 untilDate:(id)a4
{
  v5 = sub_1B256D36C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B256D9BC();
  sub_1B256D33C();
  v9 = self;
  SKPaymentQueue.forceSandbox(forBundleIdentifier:until:)();

  (*(v6 + 8))(v8, v5);
}

void __29__SKPaymentQueue_addPayment___block_invoke_28_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Payment completed with error: %{public}@", v1, v2, v3, v4, v5);
}

void __34__SKPaymentQueue_cancelDownloads___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while cancelling downloads %{public}@", v1, v2, v3, v4, v5);
}

void __33__SKPaymentQueue_pauseDownloads___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while pausing downloads: %{public}@", v1, v2, v3, v4, v5);
}

void __70__SKPaymentQueue_restoreCompletedTransactionsWithApplicationUsername___block_invoke_45_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while restoring transactions: %{public}@", v1, v2, v3, v4, v5);
}

void __34__SKPaymentQueue_resumeDownloads___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while resuming downloads: %{public}@", v1, v2, v3, v4, v5);
}

void __42__SKPaymentQueue_showPriceConsentIfNeeded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while showing price consent: %{public}@", v1, v2, v3, v4, v5);
}

void __44__SKPaymentQueue_presentCodeRedemptionSheet__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while presenting code redemption sheet: %{public}@", v1, v2, v3, v4, v5);
}

void __33__SKPaymentQueue_startDownloads___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while starting downloads: %{public}@", v1, v2, v3, v4, v5);
}

void __35__SKPaymentQueue__checkForMessages__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while checking for messages: %{public}@", v1, v2, v3, v4, v5);
}

void __42__SKPaymentQueue__checkServerQueueForced___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B23EF000, MEMORY[0x1E69E9C10], v0, "%{public}@: Error in remote proxy while checking server queue: %{public}@", v1, v2, v3, v4, v5);
}

@end