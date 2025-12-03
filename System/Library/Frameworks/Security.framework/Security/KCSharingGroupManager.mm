@interface KCSharingGroupManager
+ (id)sharedInstance;
- (KCSharingGroupManager)initWithDaemonConnection:(id)connection;
- (void)acceptInviteForGroupID:(id)d completion:(id)completion;
- (void)accountChanged;
- (void)addSubscriber:(id)subscriber;
- (void)checkAvailabilityForHandle:(id)handle completion:(id)completion;
- (void)checkAvailabilityForHandles:(id)handles completion:(id)completion;
- (void)createGroupWithRequest:(id)request completion:(id)completion;
- (void)declineInviteForGroupID:(id)d completion:(id)completion;
- (void)deleteGroupWithRequest:(id)request completion:(id)completion;
- (void)fetchCurrentUserIdentifierWithReply:(id)reply;
- (void)getGroupByGroupID:(id)d completion:(id)completion;
- (void)getGroupsWithRequest:(id)request completion:(id)completion;
- (void)leaveGroupWithRequest:(id)request completion:(id)completion;
- (void)performMaintenanceWithCompletion:(id)completion;
- (void)provisionWithReply:(id)reply;
- (void)removeSubscriber:(id)subscriber;
- (void)resyncWithCompletion:(id)completion;
- (void)updateGroupWithRequest:(id)request completion:(id)completion;
- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)completion;
- (void)verifyGroupsInSyncWithCompletion:(id)completion;
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
    cachedCurrentUserIdentifier = [(KCSharingGroupManager *)self cachedCurrentUserIdentifier];
    v6 = 138543362;
    v7 = cachedCurrentUserIdentifier;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Received accountChanged notification, invalidating cached current user identifier: %{public}@", &v6, 0xCu);
  }

  [(KCSharingGroupManager *)self setCachedCurrentUserIdentifier:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)performMaintenanceWithCompletion:(id)completion
{
  completionCopy = completion;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection performMaintenanceWithCompletion:completionCopy];
}

- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)completion
{
  completionCopy = completion;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:completionCopy];
}

- (void)verifyGroupsInSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection verifyGroupsInSyncWithCompletion:completionCopy];
}

- (void)resyncWithCompletion:(id)completion
{
  completionCopy = completion;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection resyncWithCompletion:completionCopy];
}

- (void)fetchCurrentUserIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  cachedCurrentUserIdentifier = [(KCSharingGroupManager *)self cachedCurrentUserIdentifier];

  if (cachedCurrentUserIdentifier)
  {
    cachedCurrentUserIdentifier2 = [(KCSharingGroupManager *)self cachedCurrentUserIdentifier];
    replyCopy[2](replyCopy, cachedCurrentUserIdentifier2, 0);
  }

  else
  {
    daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__KCSharingGroupManager_fetchCurrentUserIdentifierWithReply___block_invoke;
    v8[3] = &unk_1E70D6988;
    v8[4] = self;
    v9 = replyCopy;
    [daemonConnection fetchCurrentUserIdentifierWithReply:v8];
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

- (void)provisionWithReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection provisionWithReply:replyCopy];
}

- (void)removeSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection removeConnectionListener:subscriberCopy];
}

- (void)addSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection addConnectionListener:subscriberCopy];
}

- (void)checkAvailabilityForHandles:(id)handles completion:(id)completion
{
  completionCopy = completion;
  handlesCopy = handles;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection checkAvailabilityForHandles:handlesCopy completion:completionCopy];
}

- (void)checkAvailabilityForHandle:(id)handle completion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  completionCopy = completion;
  v15[0] = handleCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__KCSharingGroupManager_checkAvailabilityForHandle_completion___block_invoke;
  v12[3] = &unk_1E70D6960;
  v13 = handleCopy;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = handleCopy;
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

- (void)declineInviteForGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection declineInviteForGroupID:dCopy completion:completionCopy];
}

- (void)acceptInviteForGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection acceptInviteForGroupID:dCopy completion:completionCopy];
}

- (void)deleteGroupWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection deleteGroupWithRequest:requestCopy completion:completionCopy];
}

- (void)leaveGroupWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection leaveGroupWithRequest:requestCopy completion:completionCopy];
}

- (void)updateGroupWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection updateGroupWithRequest:requestCopy completion:completionCopy];
}

- (void)createGroupWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection createGroupWithRequest:requestCopy completion:completionCopy];
}

- (void)getGroupsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection getGroupsWithRequest:requestCopy completion:completionCopy];
}

- (void)getGroupByGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  daemonConnection = [(KCSharingGroupManager *)self daemonConnection];
  [daemonConnection getGroupByGroupID:dCopy completion:completionCopy];
}

- (KCSharingGroupManager)initWithDaemonConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = KCSharingGroupManager;
  v6 = [(KCSharingGroupManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemonConnection, connection);
    cachedCurrentUserIdentifier = v7->_cachedCurrentUserIdentifier;
    v7->_cachedCurrentUserIdentifier = 0;

    [connectionCopy addConnectionListener:v7];
  }

  return v7;
}

@end