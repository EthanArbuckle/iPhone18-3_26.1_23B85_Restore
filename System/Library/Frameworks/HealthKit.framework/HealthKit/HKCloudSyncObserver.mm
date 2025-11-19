@interface HKCloudSyncObserver
+ (id)clientInterface;
- (HKCloudSyncObserver)initWithHealthStore:(id)a3 delegate:(id)a4;
- (HKCloudSyncObserverDelegate)delegate;
- (HKCloudSyncObserverStatus)status;
- (id)exportedInterface;
- (id)progress;
- (id)remoteInterface;
- (void)_clientQueue_didCompleteSyncWithStatus:(int64_t)a3 error:(id)a4;
- (void)_handleAutomaticProxyReconnection;
- (void)clientRemote_didFailToPopulateStatusWithError:(id)a3;
- (void)clientRemote_didUpdateObserverWithSyncStatus:(id)a3;
- (void)clientRemote_syncDidStart;
- (void)clientRemote_syncRequestDidComplete:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)clientRemote_syncRequestDidStart:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setProgress:(id)a3;
- (void)setStatus:(id)a3;
- (void)startObservingSyncRequestsMatchingFilter:(unint64_t)a3;
- (void)startObservingSyncStatus;
- (void)startSyncIfRestoreNotCompleted;
- (void)stopObservingSyncRequests;
@end

@implementation HKCloudSyncObserver

- (HKCloudSyncObserver)initWithHealthStore:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HKCloudSyncObserver;
  v8 = [(HKCloudSyncObserver *)&v17 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeWeak(&v8->_delegate, v7);
    v11 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v6 taskIdentifier:@"HKCloudSyncObserverServerIdentifier" exportedObject:v8 taskUUID:v8->_identifier];
    proxyProvider = v8->_proxyProvider;
    v8->_proxyProvider = v11;

    [(HKProxyProvider *)v8->_proxyProvider setShouldRetryOnInterruption:0];
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_filter = 0;
    *&v8->_isObservingSyncRequests = 0;
    objc_initWeak(&location, v8);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__HKCloudSyncObserver_initWithHealthStore_delegate___block_invoke;
    v14[3] = &unk_1E7379140;
    objc_copyWeak(&v15, &location);
    [(HKProxyProvider *)v8->_proxyProvider setAutomaticProxyReconnectionHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __52__HKCloudSyncObserver_initWithHealthStore_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

- (void)_handleAutomaticProxyReconnection
{
  os_unfair_lock_lock(&self->_lock);
  isObservingSyncRequests = self->_isObservingSyncRequests;
  filter = self->_filter;
  isObservingSyncStatus = self->_isObservingSyncStatus;
  os_unfair_lock_unlock(&self->_lock);
  if (isObservingSyncRequests)
  {
    [(HKCloudSyncObserver *)self startObservingSyncRequestsMatchingFilter:filter];
  }

  if (isObservingSyncStatus)
  {

    [(HKCloudSyncObserver *)self startObservingSyncStatus];
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HKCloudSyncObserverDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HKCloudSyncObserverStatus)status
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_status;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStatus:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  status = self->_status;
  self->_status = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)startObservingSyncStatus
{
  os_unfair_lock_lock(&self->_lock);
  self->_isObservingSyncStatus = 1;
  os_unfair_lock_unlock(&self->_lock);
  proxyProvider = self->_proxyProvider;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__HKCloudSyncObserver_startObservingSyncStatus__block_invoke;
  v5[3] = &unk_1E737B840;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__HKCloudSyncObserver_startObservingSyncStatus__block_invoke_172;
  v4[3] = &unk_1E7376898;
  v4[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v5 errorHandler:v4];
}

uint64_t __47__HKCloudSyncObserver_startObservingSyncStatus__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__HKCloudSyncObserver_startObservingSyncStatus__block_invoke_2;
  v3[3] = &unk_1E7376780;
  v3[4] = *(a1 + 32);
  return [a2 remote_startObservingSyncStatusWithCompletion:v3];
}

void __47__HKCloudSyncObserver_startObservingSyncStatus__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Started observing sync status", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __47__HKCloudSyncObserver_startObservingSyncStatus__block_invoke_172(uint64_t a1)
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __47__HKCloudSyncObserver_startObservingSyncStatus__block_invoke_172_cold_1(a1);
  }
}

- (void)clientRemote_didUpdateObserverWithSyncStatus:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_status, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__HKCloudSyncObserver_clientRemote_didUpdateObserverWithSyncStatus___block_invoke;
  block[3] = &unk_1E7376640;
  v11 = WeakRetained;
  v12 = self;
  v13 = v5;
  v8 = v5;
  v9 = WeakRetained;
  dispatch_sync(v7, block);
}

- (void)clientRemote_didFailToPopulateStatusWithError:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__HKCloudSyncObserver_clientRemote_didFailToPopulateStatusWithError___block_invoke;
  block[3] = &unk_1E7376640;
  v10 = WeakRetained;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = WeakRetained;
  dispatch_sync(v6, block);
}

uint64_t __69__HKCloudSyncObserver_clientRemote_didFailToPopulateStatusWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 cloudSyncObserver:v5 didFailToPopulateStatusWithError:v6];
  }

  return result;
}

- (id)progress
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_progress;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setProgress:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  progress = self->_progress;
  self->_progress = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)startSyncIfRestoreNotCompleted
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__HKCloudSyncObserver_startSyncIfRestoreNotCompleted__block_invoke;
  aBlock[3] = &unk_1E737B868;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  proxyProvider = self->_proxyProvider;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__HKCloudSyncObserver_startSyncIfRestoreNotCompleted__block_invoke_3;
  v8[3] = &unk_1E737B890;
  v8[4] = self;
  v9 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__HKCloudSyncObserver_startSyncIfRestoreNotCompleted__block_invoke_4;
  v6[3] = &unk_1E7376820;
  v6[4] = self;
  v7 = v9;
  v5 = v9;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v8 errorHandler:v6];
}

void __53__HKCloudSyncObserver_startSyncIfRestoreNotCompleted__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__HKCloudSyncObserver_startSyncIfRestoreNotCompleted__block_invoke_2;
  block[3] = &unk_1E73767D0;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = a2;
  block[4] = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __53__HKCloudSyncObserver_startSyncIfRestoreNotCompleted__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AFB0];
  v5 = a2;
  v7 = [v4 UUID];
  v6 = [v5 remote_startSyncIfRestoreNotCompletedWithUUID:v7 completion:*(a1 + 40)];

  [v3 setProgress:v6];
}

void __53__HKCloudSyncObserver_startSyncIfRestoreNotCompleted__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __53__HKCloudSyncObserver_startSyncIfRestoreNotCompleted__block_invoke_4_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_clientQueue_didCompleteSyncWithStatus:(int64_t)a3 error:(id)a4
{
  v8 = a4;
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  dispatch_assert_queue_V2(v6);

  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);
  if (a3 == 2)
  {
    [WeakRetained cloudSyncObserverSyncCompleted:self];
  }

  else if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    [WeakRetained cloudSyncObserver:self syncFailedWithError:v8];
  }
}

- (void)clientRemote_syncDidStart
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_19197B000, a2, a3, "%{public}@: Called sync observer client, but progress is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startObservingSyncRequestsMatchingFilter:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_filter = a3;
  self->_isObservingSyncRequests = 1;
  os_unfair_lock_unlock(&self->_lock);
  proxyProvider = self->_proxyProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__HKCloudSyncObserver_startObservingSyncRequestsMatchingFilter___block_invoke;
  v7[3] = &__block_descriptor_40_e46_v16__0___HKCloudSyncObserverServerInterface__8l;
  v7[4] = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__HKCloudSyncObserver_startObservingSyncRequestsMatchingFilter___block_invoke_2;
  v6[3] = &unk_1E7376898;
  v6[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v7 errorHandler:v6];
}

void __64__HKCloudSyncObserver_startObservingSyncRequestsMatchingFilter___block_invoke_2(uint64_t a1)
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __64__HKCloudSyncObserver_startObservingSyncRequestsMatchingFilter___block_invoke_2_cold_1(a1);
  }
}

- (void)stopObservingSyncRequests
{
  os_unfair_lock_lock(&self->_lock);
  self->_filter = 0;
  self->_isObservingSyncRequests = 0;
  os_unfair_lock_unlock(&self->_lock);
  proxyProvider = self->_proxyProvider;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__HKCloudSyncObserver_stopObservingSyncRequests__block_invoke_2;
  v4[3] = &unk_1E7376898;
  v4[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:&__block_literal_global_30 errorHandler:v4];
}

void __48__HKCloudSyncObserver_stopObservingSyncRequests__block_invoke_2(uint64_t a1)
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __48__HKCloudSyncObserver_stopObservingSyncRequests__block_invoke_2_cold_1(a1);
  }
}

- (void)clientRemote_syncRequestDidStart:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__HKCloudSyncObserver_clientRemote_syncRequestDidStart___block_invoke;
  v8[3] = &unk_1E737B8F8;
  v9 = v4;
  v10 = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__HKCloudSyncObserver_clientRemote_syncRequestDidStart___block_invoke_4;
  v7[3] = &unk_1E7376898;
  v7[4] = self;
  v6 = v4;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v8 errorHandler:v7];
}

void __56__HKCloudSyncObserver_clientRemote_syncRequestDidStart___block_invoke(int8x16_t *a1, void *a2)
{
  v3 = a1[2].i64[0];
  v4 = a2;
  v5 = [v3 identifier];
  v6 = [v4 remote_retrieveProgressForIdentifier:v5 completion:&__block_literal_global_179];

  os_unfair_lock_lock((a1[2].i64[1] + 48));
  WeakRetained = objc_loadWeakRetained((a1[2].i64[1] + 40));
  os_unfair_lock_unlock((a1[2].i64[1] + 48));
  v8 = [*(a1[2].i64[1] + 16) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HKCloudSyncObserver_clientRemote_syncRequestDidStart___block_invoke_3;
  block[3] = &unk_1E737B738;
  v14 = WeakRetained;
  v12 = a1[2];
  v9 = v12.i64[0];
  v15 = vextq_s8(v12, v12, 8uLL);
  v16 = v6;
  v10 = v6;
  v11 = WeakRetained;
  dispatch_async(v8, block);
}

uint64_t __56__HKCloudSyncObserver_clientRemote_syncRequestDidStart___block_invoke_3(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 cloudSyncObserver:v5 syncStartedForRequest:v6 withProgress:v7];
  }

  return result;
}

void __56__HKCloudSyncObserver_clientRemote_syncRequestDidStart___block_invoke_4(uint64_t a1)
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __56__HKCloudSyncObserver_clientRemote_syncRequestDidStart___block_invoke_4_cold_1(a1);
  }
}

- (void)clientRemote_syncRequestDidComplete:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);
  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__HKCloudSyncObserver_clientRemote_syncRequestDidComplete_success_error___block_invoke;
  block[3] = &unk_1E737B920;
  v20 = a4;
  v16 = WeakRetained;
  v17 = self;
  v18 = v8;
  v19 = v9;
  v12 = v9;
  v13 = v8;
  v14 = WeakRetained;
  dispatch_sync(v11, block);
}

uint64_t __73__HKCloudSyncObserver_clientRemote_syncRequestDidComplete_success_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);

      return [v5 cloudSyncObserver:v6 syncCompletedForRequest:v7];
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);

      return [v8 cloudSyncObserver:v9 syncFailedForRequest:v10 error:v11];
    }
  }

  return result;
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06A0850];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_clientRemote_didUpdateObserverWithSyncStatus_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 clientInterface];
}

- (id)remoteInterface
{
  v2 = objc_opt_class();

  return [v2 serverInterface];
}

void __47__HKCloudSyncObserver_startObservingSyncStatus__block_invoke_172_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2(&dword_19197B000, v1, v2, "%{public}@: Failed to call remote method startObservingSyncStatusWithCompletion:", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __53__HKCloudSyncObserver_startSyncIfRestoreNotCompleted__block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2(&dword_19197B000, v1, v2, "%{public}@: Failed to call remote method startSyncIfRestoreNotCompletedWithUUID:completion", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __64__HKCloudSyncObserver_startObservingSyncRequestsMatchingFilter___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2(&dword_19197B000, v1, v2, "%{public}@: Failed to call remote method startObservingSyncRequestsWithFilter:", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __48__HKCloudSyncObserver_stopObservingSyncRequests__block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2(&dword_19197B000, v1, v2, "%{public}@: Failed to call remote method stopObservingSyncRequests", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __56__HKCloudSyncObserver_clientRemote_syncRequestDidStart___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2(&dword_19197B000, v1, v2, "%{public}@: Failed to call remote method retrieveProgressForIdentifier::completion:", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end