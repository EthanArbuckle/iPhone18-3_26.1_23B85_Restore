@interface HKSummarySharingEntryStore
+ (id)clientInterface;
+ (id)serverInterface;
- (HKSummarySharingEntryStore)initWithHealthStore:(id)a3;
- (HKSummarySharingEntryStoreDelegate)delegate;
- (NSArray)sharingEntries;
- (void)_notifyObservers;
- (void)acceptInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)beginObservingReachabilityStatusForIdentifiers:(id)a3 isInitialQuery:(BOOL)a4 completion:(id)a5;
- (void)clientRemote_reachabilityStatusDidUpdate:(id)a3 error:(id)a4;
- (void)clientRemote_sharingEntriesDidUpdate:(id)a3;
- (void)declineInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)fetchSharingEntriesWithCompletion:(id)a3;
- (void)inviteSharingDataWithIdentifier:(id)a3 firstName:(id)a4 lastName:(id)a5 sharingAuthorizations:(id)a6 userWheelchairMode:(int64_t)a7 completion:(id)a8;
- (void)leaveInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)revokeInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)unpauseInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)updateNotificationStatusWithUUID:(id)a3 notificationStatus:(int64_t)a4 completion:(id)a5;
- (void)updateSharingAuthorizationsForInvitationUUID:(id)a3 sharingAuthorizationsToAdd:(id)a4 sharingAuthorizationsToDelete:(id)a5 deleteOnCommit:(BOOL)a6 completion:(id)a7;
@end

@implementation HKSummarySharingEntryStore

- (HKSummarySharingEntryStore)initWithHealthStore:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = HKSummarySharingEntryStore;
  v6 = [(HKSummarySharingEntryStore *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = HKCreateSerialDispatchQueue(v7, @"resource");
    resourceQueue = v7->_resourceQueue;
    v7->_resourceQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchedEntriesByUUID = v7->_fetchedEntriesByUUID;
    v7->_fetchedEntriesByUUID = v10;

    v12 = [HKObserverSet alloc];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = HKLogSharing();
    v16 = [(HKObserverSet *)v12 initWithName:v14 loggingCategory:v15];
    observers = v7->_observers;
    v7->_observers = v16;

    v18 = [HKTaskServerProxyProvider alloc];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [MEMORY[0x1E696AFB0] UUID];
    v22 = [(HKTaskServerProxyProvider *)v18 initWithHealthStore:v5 taskIdentifier:v20 exportedObject:v7 taskUUID:v21];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v22;

    objc_initWeak(&location, v7);
    v24 = v7->_proxyProvider;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __50__HKSummarySharingEntryStore_initWithHealthStore___block_invoke;
    v26[3] = &unk_1E737F6C8;
    objc_copyWeak(&v27, &location);
    [(HKProxyProvider *)v24 setAutomaticProxyReconnectionHandler:v26];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __50__HKSummarySharingEntryStore_initWithHealthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchSharingEntriesWithCompletion:&__block_literal_global_65];
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AED58];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_clientRemote_sharingEntriesDidUpdate_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7A18];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_remote_fetchSharingEntriesWithCompletionHandler_ argumentIndex:0 ofReply:1];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_remote_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion_ argumentIndex:3 ofReply:0];
  [v2 setClasses:v8 forSelector:sel_remote_updateAuthorizationIdentifiersForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v8 forSelector:sel_remote_updateAuthorizationIdentifiersForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion_ argumentIndex:2 ofReply:0];

  return v2;
}

- (NSArray)sharingEntries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  resourceQueue = self->_resourceQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__HKSummarySharingEntryStore_sharingEntries__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(resourceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__HKSummarySharingEntryStore_sharingEntries__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)fetchSharingEntriesWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke;
  v9[3] = &unk_1E737F718;
  v9[4] = self;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2_96;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2;
  v4[3] = &unk_1E737F6F0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 remote_fetchSharingEntriesWithCompletionHandler:v4];
}

void __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogSharing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_93;
    v11[3] = &unk_1E7378AA8;
    v11[4] = v8;
    v12 = v5;
    v10 = *(a1 + 40);
    v13 = 0;
    v14 = v10;
    dispatch_async(v9, v11);
  }
}

uint64_t __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_93(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 24) removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = *(*(a1 + 32) + 24);
        v9 = [v7 UUID];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) _notifyObservers];
  result = (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 40) != 0, *(a1 + 48));
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2_96(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)beginObservingReachabilityStatusForIdentifiers:(id)a3 isInitialQuery:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__HKSummarySharingEntryStore_beginObservingReachabilityStatusForIdentifiers_isInitialQuery_completion___block_invoke;
  v15[3] = &unk_1E737F740;
  v16 = v8;
  v18 = a4;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__HKSummarySharingEntryStore_beginObservingReachabilityStatusForIdentifiers_isInitialQuery_completion___block_invoke_2;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

uint64_t __103__HKSummarySharingEntryStore_beginObservingReachabilityStatusForIdentifiers_isInitialQuery_completion___block_invoke(uint64_t a1, void *a2)
{
  [a2 remote_beginObservingReachabilityStatusForIdentifiers:*(a1 + 32) isInitialQuery:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)inviteSharingDataWithIdentifier:(id)a3 firstName:(id)a4 lastName:(id)a5 sharingAuthorizations:(id)a6 userWheelchairMode:(int64_t)a7 completion:(id)a8
{
  v45 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  proxyProvider = self->_proxyProvider;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __133__HKSummarySharingEntryStore_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke;
  v35[3] = &unk_1E73766A0;
  v35[4] = self;
  v36 = v19;
  v21 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v35];
  _HKInitializeLogging();
  v22 = HKLogSharing();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v38 = self;
    v39 = 2112;
    v40 = v15;
    v41 = 2112;
    v42 = v16;
    v43 = 2112;
    v44 = v17;
    _os_log_impl(&dword_19197B000, v22, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Inviting %@ (%@ %@)", buf, 0x2Au);
  }

  if ([v18 count])
  {
    v23 = self->_proxyProvider;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __133__HKSummarySharingEntryStore_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_111;
    v28[3] = &unk_1E737F768;
    v29 = v15;
    v30 = v16;
    v31 = v17;
    v32 = v18;
    v34 = a7;
    v33 = v21;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __133__HKSummarySharingEntryStore_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_2;
    v26[3] = &unk_1E7376960;
    v27 = v33;
    [(HKProxyProvider *)v23 fetchProxyWithHandler:v28 errorHandler:v26];

    v24 = v29;
  }

  else
  {
    v24 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"No sharing authorization to add."];
    (v21)[2](v21, 0, v24);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __133__HKSummarySharingEntryStore_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSharing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Invite sharing finished with success: %{public}@ error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

- (void)acceptInvitationWithUUID:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66__HKSummarySharingEntryStore_acceptInvitationWithUUID_completion___block_invoke;
  v21[3] = &unk_1E73766A0;
  v21[4] = self;
  v22 = v7;
  v9 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v21];
  _HKInitializeLogging();
  v10 = HKLogSharing();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 UUIDString];
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Accepting invitation %{public}@", buf, 0x16u);
  }

  v12 = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__HKSummarySharingEntryStore_acceptInvitationWithUUID_completion___block_invoke_112;
  v18[3] = &unk_1E737F718;
  v19 = v6;
  v20 = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__HKSummarySharingEntryStore_acceptInvitationWithUUID_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v20;
  v13 = v20;
  v14 = v6;
  [(HKProxyProvider *)v12 fetchProxyWithHandler:v18 errorHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __66__HKSummarySharingEntryStore_acceptInvitationWithUUID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSharing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Accept invitation finished with success: %{public}@ error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

- (void)declineInvitationWithUUID:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__HKSummarySharingEntryStore_declineInvitationWithUUID_completion___block_invoke;
  v21[3] = &unk_1E73766A0;
  v21[4] = self;
  v22 = v7;
  v9 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v21];
  _HKInitializeLogging();
  v10 = HKLogSharing();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 UUIDString];
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Declining invitation %{public}@", buf, 0x16u);
  }

  v12 = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__HKSummarySharingEntryStore_declineInvitationWithUUID_completion___block_invoke_113;
  v18[3] = &unk_1E737F718;
  v19 = v6;
  v20 = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__HKSummarySharingEntryStore_declineInvitationWithUUID_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v20;
  v13 = v20;
  v14 = v6;
  [(HKProxyProvider *)v12 fetchProxyWithHandler:v18 errorHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __67__HKSummarySharingEntryStore_declineInvitationWithUUID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSharing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Decline invitation finished with success: %{public}@ error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

- (void)revokeInvitationWithUUID:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66__HKSummarySharingEntryStore_revokeInvitationWithUUID_completion___block_invoke;
  v21[3] = &unk_1E73766A0;
  v21[4] = self;
  v22 = v7;
  v9 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v21];
  _HKInitializeLogging();
  v10 = HKLogSharing();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 UUIDString];
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Revoking invitation %{public}@", buf, 0x16u);
  }

  v12 = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__HKSummarySharingEntryStore_revokeInvitationWithUUID_completion___block_invoke_114;
  v18[3] = &unk_1E737F718;
  v19 = v6;
  v20 = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__HKSummarySharingEntryStore_revokeInvitationWithUUID_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v20;
  v13 = v20;
  v14 = v6;
  [(HKProxyProvider *)v12 fetchProxyWithHandler:v18 errorHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __66__HKSummarySharingEntryStore_revokeInvitationWithUUID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSharing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Revoke invitation finished with success: %{public}@ error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

- (void)leaveInvitationWithUUID:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__HKSummarySharingEntryStore_leaveInvitationWithUUID_completion___block_invoke;
  v21[3] = &unk_1E73766A0;
  v21[4] = self;
  v22 = v7;
  v9 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v21];
  _HKInitializeLogging();
  v10 = HKLogSharing();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 UUIDString];
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Leaving invitation %{public}@", buf, 0x16u);
  }

  v12 = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__HKSummarySharingEntryStore_leaveInvitationWithUUID_completion___block_invoke_115;
  v18[3] = &unk_1E737F718;
  v19 = v6;
  v20 = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__HKSummarySharingEntryStore_leaveInvitationWithUUID_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v20;
  v13 = v20;
  v14 = v6;
  [(HKProxyProvider *)v12 fetchProxyWithHandler:v18 errorHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __65__HKSummarySharingEntryStore_leaveInvitationWithUUID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSharing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Leave invitation finished with success: %{public}@ error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

- (void)unpauseInvitationWithUUID:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__HKSummarySharingEntryStore_unpauseInvitationWithUUID_completion___block_invoke;
  v21[3] = &unk_1E73766A0;
  v21[4] = self;
  v22 = v7;
  v9 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v21];
  _HKInitializeLogging();
  v10 = HKLogSharing();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 UUIDString];
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Unpause invitation %{public}@", buf, 0x16u);
  }

  v12 = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__HKSummarySharingEntryStore_unpauseInvitationWithUUID_completion___block_invoke_116;
  v18[3] = &unk_1E737F718;
  v19 = v6;
  v20 = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__HKSummarySharingEntryStore_unpauseInvitationWithUUID_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v20;
  v13 = v20;
  v14 = v6;
  [(HKProxyProvider *)v12 fetchProxyWithHandler:v18 errorHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __67__HKSummarySharingEntryStore_unpauseInvitationWithUUID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSharing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Unpause invitation finished with success: %{public}@ error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateSharingAuthorizationsForInvitationUUID:(id)a3 sharingAuthorizationsToAdd:(id)a4 sharingAuthorizationsToDelete:(id)a5 deleteOnCommit:(BOOL)a6 completion:(id)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  proxyProvider = self->_proxyProvider;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke;
  v34[3] = &unk_1E73766A0;
  v34[4] = self;
  v35 = v15;
  v17 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v34];
  _HKInitializeLogging();
  v18 = HKLogSharing();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v12 UUIDString];
    *buf = 138544131;
    v37 = self;
    v38 = 2114;
    v39 = v19;
    v40 = 2113;
    v41 = v13;
    v42 = 2113;
    v43 = v14;
    _os_log_impl(&dword_19197B000, v18, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating invitation sharing authorizations with UUID %{public}@. %{private}@ %{private}@", buf, 0x2Au);
  }

  v20 = self->_proxyProvider;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke_117;
  v28[3] = &unk_1E737F790;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v33 = a6;
  v32 = v17;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke_2;
  v26[3] = &unk_1E7376820;
  v26[4] = self;
  v27 = v32;
  v21 = v32;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  [(HKProxyProvider *)v20 fetchProxyWithHandler:v28 errorHandler:v26];

  v25 = *MEMORY[0x1E69E9840];
}

void __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSharing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Update sharing authorizations finished with success: %{public}@ error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

void __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateNotificationStatusWithUUID:(id)a3 notificationStatus:(int64_t)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  _HKInitializeLogging();
  v10 = HKLogSharing();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 UUIDString];
    *buf = 138543875;
    v23 = self;
    v24 = 2114;
    v25 = v11;
    v26 = 2049;
    v27 = a4;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating notification status with UUID %{public}@. %{private}ld", buf, 0x20u);
  }

  proxyProvider = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__HKSummarySharingEntryStore_updateNotificationStatusWithUUID_notificationStatus_completion___block_invoke;
  v18[3] = &unk_1E737F7B8;
  v19 = v8;
  v21 = a4;
  v20 = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__HKSummarySharingEntryStore_updateNotificationStatusWithUUID_notificationStatus_completion___block_invoke_2;
  v16[3] = &unk_1E7376820;
  v16[4] = self;
  v17 = v20;
  v13 = v20;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v18 errorHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __93__HKSummarySharingEntryStore_updateNotificationStatusWithUUID_notificationStatus_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __93__HKSummarySharingEntryStore_updateNotificationStatusWithUUID_notificationStatus_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)clientRemote_sharingEntriesDidUpdate:(id)a3
{
  v4 = a3;
  resourceQueue = self->_resourceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HKSummarySharingEntryStore_clientRemote_sharingEntriesDidUpdate___block_invoke;
  v7[3] = &unk_1E7378400;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(resourceQueue, v7);
}

uint64_t __67__HKSummarySharingEntryStore_clientRemote_sharingEntriesDidUpdate___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = *(*(a1 + 40) + 24);
        v9 = [v7 UUID];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _notifyObservers];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)clientRemote_reachabilityStatusDidUpdate:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__HKSummarySharingEntryStore_clientRemote_reachabilityStatusDidUpdate_error___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __77__HKSummarySharingEntryStore_clientRemote_reachabilityStatusDidUpdate_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 summarySharingEntryStore:*(a1 + 32) didUpdateReachabilityStatus:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_notifyObservers
{
  observers = self->_observers;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__HKSummarySharingEntryStore__notifyObservers__block_invoke;
  v3[3] = &unk_1E737F7E0;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

void __46__HKSummarySharingEntryStore__notifyObservers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 56) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__HKSummarySharingEntryStore__notifyObservers__block_invoke_2;
  block[3] = &unk_1E7376780;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (HKSummarySharingEntryStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Failed to fetch sharing entries with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Failed to update sharing authorizations with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __93__HKSummarySharingEntryStore_updateNotificationStatusWithUUID_notificationStatus_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Failed to update notification status with error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

@end