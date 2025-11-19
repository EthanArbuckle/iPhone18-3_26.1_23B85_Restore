@interface KCSharingGroupManager
+ (id)sharedInstance;
- (KCSharingGroupManager)initWithDaemonConnection:(id)a3;
- (void)acceptInviteForGroupID:(id)a3 completion:(id)a4;
- (void)accountChanged;
- (void)addSubscriber:(id)a3;
- (void)checkAvailabilityForHandle:(id)a3 completion:(id)a4;
- (void)checkAvailabilityForHandles:(id)a3 completion:(id)a4;
- (void)createGroupWithRequest:(id)a3 completion:(id)a4;
- (void)declineInviteForGroupID:(id)a3 completion:(id)a4;
- (void)deleteGroupWithRequest:(id)a3 completion:(id)a4;
- (void)fetchCurrentUserIdentifierWithReply:(id)a3;
- (void)getGroupByGroupID:(id)a3 completion:(id)a4;
- (void)getGroupsWithRequest:(id)a3 completion:(id)a4;
- (void)leaveGroupWithRequest:(id)a3 completion:(id)a4;
- (void)performMaintenanceWithCompletion:(id)a3;
- (void)provisionWithReply:(id)a3;
- (void)removeSubscriber:(id)a3;
- (void)resyncWithCompletion:(id)a3;
- (void)updateGroupWithRequest:(id)a3 completion:(id)a4;
- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)a3;
- (void)verifyGroupsInSyncWithCompletion:(id)a3;
@end

@implementation KCSharingGroupManager

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, &__block_literal_global_3965);
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __39__KCSharingGroupManager_sharedInstance__block_invoke()
{
  v0 = [KCSharingGroupManager alloc];
  v3 = +[KCSharingDaemonConnection sharedInstance];
  v1 = [(KCSharingGroupManager *)v0 initWithDaemonConnection:v3];
  v2 = sharedInstance_instance;
  sharedInstance_instance = v1;
}

- (void)accountChanged
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = KCSharingLogObject(@"KCSharingGroupManager", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(KCSharingGroupManager *)self cachedCurrentUserIdentifier];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Received accountChanged notification, invalidating cached current user identifier: %{public}@", &v6, 0xCu);
  }

  [(KCSharingGroupManager *)self setCachedCurrentUserIdentifier:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)performMaintenanceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupManager *)self daemonConnection];
  [v5 performMaintenanceWithCompletion:v4];
}

- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupManager *)self daemonConnection];
  [v5 verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:v4];
}

- (void)verifyGroupsInSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupManager *)self daemonConnection];
  [v5 verifyGroupsInSyncWithCompletion:v4];
}

- (void)resyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupManager *)self daemonConnection];
  [v5 resyncWithCompletion:v4];
}

- (void)fetchCurrentUserIdentifierWithReply:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupManager *)self cachedCurrentUserIdentifier];

  if (v5)
  {
    v6 = [(KCSharingGroupManager *)self cachedCurrentUserIdentifier];
    v4[2](v4, v6, 0);
  }

  else
  {
    v7 = [(KCSharingGroupManager *)self daemonConnection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__KCSharingGroupManager_fetchCurrentUserIdentifierWithReply___block_invoke;
    v8[3] = &unk_1E70D6988;
    v8[4] = self;
    v9 = v4;
    [v7 fetchCurrentUserIdentifierWithReply:v8];
  }
}

void __61__KCSharingGroupManager_fetchCurrentUserIdentifierWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = KCSharingLogObject(@"KCSharingGroupManager", 0);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_INFO, "Fetched current user identifier: %{public}@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_error_impl(&dword_1887D2000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch current user identifier: %{public}@", &v10, 0xCu);
  }

  [*(a1 + 32) setCachedCurrentUserIdentifier:v5];
  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)provisionWithReply:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupManager *)self daemonConnection];
  [v5 provisionWithReply:v4];
}

- (void)removeSubscriber:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupManager *)self daemonConnection];
  [v5 removeConnectionListener:v4];
}

- (void)addSubscriber:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupManager *)self daemonConnection];
  [v5 addConnectionListener:v4];
}

- (void)checkAvailabilityForHandles:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingGroupManager *)self daemonConnection];
  [v8 checkAvailabilityForHandles:v7 completion:v6];
}

- (void)checkAvailabilityForHandle:(id)a3 completion:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__KCSharingGroupManager_checkAvailabilityForHandle_completion___block_invoke;
  v12[3] = &unk_1E70D6960;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(KCSharingGroupManager *)self checkAvailabilityForHandles:v8 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __63__KCSharingGroupManager_checkAvailabilityForHandle_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  v6 = [a2 objectForKeyedSubscript:v5];
  [v6 BOOLValue];

  (*(*(a1 + 40) + 16))();
}

- (void)declineInviteForGroupID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingGroupManager *)self daemonConnection];
  [v8 declineInviteForGroupID:v7 completion:v6];
}

- (void)acceptInviteForGroupID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingGroupManager *)self daemonConnection];
  [v8 acceptInviteForGroupID:v7 completion:v6];
}

- (void)deleteGroupWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingGroupManager *)self daemonConnection];
  [v8 deleteGroupWithRequest:v7 completion:v6];
}

- (void)leaveGroupWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingGroupManager *)self daemonConnection];
  [v8 leaveGroupWithRequest:v7 completion:v6];
}

- (void)updateGroupWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingGroupManager *)self daemonConnection];
  [v8 updateGroupWithRequest:v7 completion:v6];
}

- (void)createGroupWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingGroupManager *)self daemonConnection];
  [v8 createGroupWithRequest:v7 completion:v6];
}

- (void)getGroupsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingGroupManager *)self daemonConnection];
  [v8 getGroupsWithRequest:v7 completion:v6];
}

- (void)getGroupByGroupID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KCSharingGroupManager *)self daemonConnection];
  [v8 getGroupByGroupID:v7 completion:v6];
}

- (KCSharingGroupManager)initWithDaemonConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = KCSharingGroupManager;
  v6 = [(KCSharingGroupManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemonConnection, a3);
    cachedCurrentUserIdentifier = v7->_cachedCurrentUserIdentifier;
    v7->_cachedCurrentUserIdentifier = 0;

    [v5 addConnectionListener:v7];
  }

  return v7;
}

@end