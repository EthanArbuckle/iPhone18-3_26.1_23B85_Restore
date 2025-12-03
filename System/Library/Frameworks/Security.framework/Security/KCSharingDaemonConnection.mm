@interface KCSharingDaemonConnection
+ (id)sharedInstance;
+ (id)sharedInvitationNotifier;
- (KCSharingDaemonConnection)initWithConnection:(id)connection queue:(id)queue type:(int64_t)type;
- (KCSharingDaemonConnection)initWithType:(int64_t)type;
- (void)acceptInviteForGroupID:(id)d completion:(id)completion;
- (void)accountChanged;
- (void)addConnectionListener:(id)listener;
- (void)checkAvailabilityForHandles:(id)handles completion:(id)completion;
- (void)connectionWasInterrupted;
- (void)connectionWasInvalidated;
- (void)createGroupWithRequest:(id)request completion:(id)completion;
- (void)dealloc;
- (void)declineInviteForGroupID:(id)d completion:(id)completion;
- (void)deleteGroupWithRequest:(id)request completion:(id)completion;
- (void)fetchCurrentUserIdentifierWithReply:(id)reply;
- (void)fetchRemoteChangesWithReply:(id)reply;
- (void)getGroupByGroupID:(id)d completion:(id)completion;
- (void)getGroupsWithRequest:(id)request completion:(id)completion;
- (void)groupInvitationWasCancelled;
- (void)groupsUpdated;
- (void)leaveGroupWithRequest:(id)request completion:(id)completion;
- (void)performMaintenanceWithCompletion:(id)completion;
- (void)provisionWithReply:(id)reply;
- (void)receivedGroupInvitation:(id)invitation;
- (void)removeConnectionListener:(id)listener;
- (void)resyncWithCompletion:(id)completion;
- (void)saveLocalChangesWithReply:(id)reply;
- (void)updateGroupWithRequest:(id)request completion:(id)completion;
- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)completion;
- (void)verifyGroupsInSyncWithCompletion:(id)completion;
@end

@implementation KCSharingDaemonConnection

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_1767);
  }

  v3 = sharedInstance_connection;

  return v3;
}

uint64_t __43__KCSharingDaemonConnection_sharedInstance__block_invoke()
{
  sharedInstance_connection = [[KCSharingDaemonConnection alloc] initWithType:0];

  return MEMORY[0x1EEE66BB8]();
}

- (void)accountChanged
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1887D2000, "ksd/client/accountChanged", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v3, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  _queue = [connection _queue];
  dispatch_assert_queue_V2(_queue);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  connectionListeners = [(KCSharingDaemonConnection *)self connectionListeners];
  v7 = [connectionListeners countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(connectionListeners);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accountChanged];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [connectionListeners countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)groupsUpdated
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1887D2000, "ksd/client/groupsUpdated", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v3, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  _queue = [connection _queue];
  dispatch_assert_queue_V2(_queue);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  connectionListeners = [(KCSharingDaemonConnection *)self connectionListeners];
  v7 = [connectionListeners countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(connectionListeners);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 groupsUpdated];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [connectionListeners countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)performMaintenanceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1887D2000, "ksd/client/performMaintenanceWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__KCSharingDaemonConnection_performMaintenanceWithCompletion___block_invoke;
  v9[3] = &unk_1E70DECC0;
  v7 = completionCopy;
  v10 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v8 performMaintenanceWithCompletion:v7];

  os_activity_scope_leave(&state);
}

uint64_t __62__KCSharingDaemonConnection_performMaintenanceWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1887D2000, "ksd/client/verifyGroupsInSyncAndResyncMissingGroupsWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__KCSharingDaemonConnection_verifyGroupsInSyncAndResyncMissingGroupsWithCompletion___block_invoke;
  v9[3] = &unk_1E70DECC0;
  v7 = completionCopy;
  v10 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v8 verifyGroupsInSyncAndResyncMissingGroupsWithCompletion:v7];

  os_activity_scope_leave(&state);
}

uint64_t __84__KCSharingDaemonConnection_verifyGroupsInSyncAndResyncMissingGroupsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)verifyGroupsInSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1887D2000, "ksd/client/verifyGroupsInSyncWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__KCSharingDaemonConnection_verifyGroupsInSyncWithCompletion___block_invoke;
  v9[3] = &unk_1E70DECC0;
  v7 = completionCopy;
  v10 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v8 verifyGroupsInSyncWithCompletion:v7];

  os_activity_scope_leave(&state);
}

uint64_t __62__KCSharingDaemonConnection_verifyGroupsInSyncWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)resyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1887D2000, "ksd/client/resyncWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__KCSharingDaemonConnection_resyncWithCompletion___block_invoke;
  v9[3] = &unk_1E70DECC0;
  v7 = completionCopy;
  v10 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v8 resyncWithCompletion:v7];

  os_activity_scope_leave(&state);
}

uint64_t __50__KCSharingDaemonConnection_resyncWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)groupInvitationWasCancelled
{
  v3 = _os_activity_create(&dword_1887D2000, "ksd/client/groupInvitationWasCancelled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v3, &v6);
  connection = [(KCSharingDaemonConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy groupInvitationWasCancelled];

  os_activity_scope_leave(&v6);
}

- (void)receivedGroupInvitation:(id)invitation
{
  invitationCopy = invitation;
  v5 = _os_activity_create(&dword_1887D2000, "ksd/client/receivedGroupInvitation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v8.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &v8);
  connection = [(KCSharingDaemonConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy receivedGroupInvitation:invitationCopy];

  os_activity_scope_leave(&v8);
}

- (void)fetchCurrentUserIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  v5 = _os_activity_create(&dword_1887D2000, "ksd/client/fetchCurrentUserIdentifierWithReply", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__KCSharingDaemonConnection_fetchCurrentUserIdentifierWithReply___block_invoke;
  v9[3] = &unk_1E70DECC0;
  v7 = replyCopy;
  v10 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v8 fetchCurrentUserIdentifierWithReply:v7];

  os_activity_scope_leave(&state);
}

uint64_t __65__KCSharingDaemonConnection_fetchCurrentUserIdentifierWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __40__KCSharingDaemonConnection_wipe_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)checkAvailabilityForHandles:(id)handles completion:(id)completion
{
  handlesCopy = handles;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1887D2000, "ksd/client/checkAvailabilityForHandles", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__KCSharingDaemonConnection_checkAvailabilityForHandles_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = completionCopy;
  v13 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];
  [v11 checkAvailabilityForHandles:handlesCopy completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __68__KCSharingDaemonConnection_checkAvailabilityForHandles_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)declineInviteForGroupID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1887D2000, "ksd/client/declineInviteForGroupID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__KCSharingDaemonConnection_declineInviteForGroupID_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = completionCopy;
  v13 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];
  [v11 declineInviteForGroupID:dCopy completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __64__KCSharingDaemonConnection_declineInviteForGroupID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)acceptInviteForGroupID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1887D2000, "ksd/client/acceptInviteForGroupID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__KCSharingDaemonConnection_acceptInviteForGroupID_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = completionCopy;
  v13 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];
  [v11 acceptInviteForGroupID:dCopy completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __63__KCSharingDaemonConnection_acceptInviteForGroupID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)deleteGroupWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1887D2000, "ksd/client/deleteGroupWithRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__KCSharingDaemonConnection_deleteGroupWithRequest_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = completionCopy;
  v13 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];
  [v11 deleteGroupWithRequest:requestCopy completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __63__KCSharingDaemonConnection_deleteGroupWithRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)leaveGroupWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1887D2000, "ksd/client/leaveGroupWithRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__KCSharingDaemonConnection_leaveGroupWithRequest_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = completionCopy;
  v13 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];
  [v11 leaveGroupWithRequest:requestCopy completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __62__KCSharingDaemonConnection_leaveGroupWithRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateGroupWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1887D2000, "ksd/client/updateGroupWithRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__KCSharingDaemonConnection_updateGroupWithRequest_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = completionCopy;
  v13 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];
  [v11 updateGroupWithRequest:requestCopy completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __63__KCSharingDaemonConnection_updateGroupWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)createGroupWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1887D2000, "ksd/client/createGroupWithRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__KCSharingDaemonConnection_createGroupWithRequest_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = completionCopy;
  v13 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];
  [v11 createGroupWithRequest:requestCopy completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __63__KCSharingDaemonConnection_createGroupWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getGroupsWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1887D2000, "ksd/client/getGroupsWithRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__KCSharingDaemonConnection_getGroupsWithRequest_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = completionCopy;
  v13 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];
  [v11 getGroupsWithRequest:requestCopy completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __61__KCSharingDaemonConnection_getGroupsWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getGroupByGroupID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1887D2000, "ksd/client/getGroupByGroupID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__KCSharingDaemonConnection_getGroupByGroupID_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = completionCopy;
  v13 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];
  [v11 getGroupByGroupID:dCopy completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __58__KCSharingDaemonConnection_getGroupByGroupID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)saveLocalChangesWithReply:(id)reply
{
  replyCopy = reply;
  v5 = _os_activity_create(&dword_1887D2000, "ksd/client/saveLocalChangesWithReply", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__KCSharingDaemonConnection_saveLocalChangesWithReply___block_invoke;
  v9[3] = &unk_1E70DECC0;
  v7 = replyCopy;
  v10 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v8 saveLocalChangesWithReply:v7];

  os_activity_scope_leave(&state);
}

uint64_t __55__KCSharingDaemonConnection_saveLocalChangesWithReply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchRemoteChangesWithReply:(id)reply
{
  replyCopy = reply;
  v5 = _os_activity_create(&dword_1887D2000, "ksd/client/fetchRemoteChangesWithReply", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__KCSharingDaemonConnection_fetchRemoteChangesWithReply___block_invoke;
  v9[3] = &unk_1E70DECC0;
  v7 = replyCopy;
  v10 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v8 fetchRemoteChangesWithReply:v7];

  os_activity_scope_leave(&state);
}

uint64_t __57__KCSharingDaemonConnection_fetchRemoteChangesWithReply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __60__KCSharingDaemonConnection_setChangeTrackingEnabled_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provisionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = _os_activity_create(&dword_1887D2000, "ksd/client/provisionWithReply", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  connection = [(KCSharingDaemonConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__KCSharingDaemonConnection_provisionWithReply___block_invoke;
  v9[3] = &unk_1E70DECC0;
  v7 = replyCopy;
  v10 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v9];
  [v8 provisionWithReply:v7];

  os_activity_scope_leave(&state);
}

uint64_t __48__KCSharingDaemonConnection_provisionWithReply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  connection = [(KCSharingDaemonConnection *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = KCSharingDaemonConnection;
  [(KCSharingDaemonConnection *)&v4 dealloc];
}

- (void)connectionWasInvalidated
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = KCSharingLogObject(@"KCSharingDaemonConnection", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    connection = [(KCSharingDaemonConnection *)self connection];
    v6 = 138412290;
    v7 = connection;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_INFO, "connection invalidated %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)connectionWasInterrupted
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = KCSharingLogObject(@"KCSharingDaemonConnection", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    connection = [(KCSharingDaemonConnection *)self connection];
    v6 = 138412290;
    v7 = connection;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_INFO, "connection interrupted %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeConnectionListener:(id)listener
{
  listenerCopy = listener;
  connection = [(KCSharingDaemonConnection *)self connection];
  _queue = [connection _queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__KCSharingDaemonConnection_removeConnectionListener___block_invoke;
  v8[3] = &unk_1E70D6A98;
  v8[4] = self;
  v9 = listenerCopy;
  v7 = listenerCopy;
  dispatch_async(_queue, v8);
}

void __54__KCSharingDaemonConnection_removeConnectionListener___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionListeners];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addConnectionListener:(id)listener
{
  listenerCopy = listener;
  connection = [(KCSharingDaemonConnection *)self connection];
  _queue = [connection _queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__KCSharingDaemonConnection_addConnectionListener___block_invoke;
  v8[3] = &unk_1E70D6A98;
  v8[4] = self;
  v9 = listenerCopy;
  v7 = listenerCopy;
  dispatch_async(_queue, v8);
}

void __51__KCSharingDaemonConnection_addConnectionListener___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionListeners];
  [v2 addObject:*(a1 + 40)];
}

- (KCSharingDaemonConnection)initWithConnection:(id)connection queue:(id)queue type:(int64_t)type
{
  connectionCopy = connection;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = KCSharingDaemonConnection;
  v11 = [(KCSharingDaemonConnection *)&v22 init];
  if (v11)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    connectionListeners = v11->_connectionListeners;
    v11->_connectionListeners = weakObjectsHashTable;

    objc_storeStrong(&v11->_connection, connection);
    v11->_type = type;
    objc_initWeak(&location, v11);
    if (type == 1)
    {
      v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFAB18D0];
      KCSharingSetupInvitationNotificationProtocol(v14);
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      if (type)
      {
        v14 = 0;
        goto LABEL_8;
      }

      v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFAB1820];
      KCSharingSetupServerProtocol(v14);
      objc_claimAutoreleasedReturnValue();
    }

LABEL_8:
    [connectionCopy setRemoteObjectInterface:v14];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__KCSharingDaemonConnection_initWithConnection_queue_type___block_invoke;
    v19[3] = &unk_1E70E0AD0;
    objc_copyWeak(&v20, &location);
    [connectionCopy setInterruptionHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__KCSharingDaemonConnection_initWithConnection_queue_type___block_invoke_2;
    v17[3] = &unk_1E70E0AD0;
    objc_copyWeak(&v18, &location);
    [connectionCopy setInvalidationHandler:v17];
    v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFAB1478];
    [connectionCopy setExportedInterface:v15];

    [connectionCopy setExportedObject:v11];
    [connectionCopy _setQueue:queueCopy];
    [connectionCopy resume];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }

  return v11;
}

void __59__KCSharingDaemonConnection_initWithConnection_queue_type___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionWasInterrupted];
}

void __59__KCSharingDaemonConnection_initWithConnection_queue_type___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionWasInvalidated];
}

- (KCSharingDaemonConnection)initWithType:(int64_t)type
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_DEFAULT, -1);

  v7 = dispatch_queue_create("com.apple.KCSharingDaemonConnection.xpcConnection", v6);
  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.security.kcsharing" options:0];
  v9 = [(KCSharingDaemonConnection *)self initWithConnection:v8 queue:v7 type:type];

  return v9;
}

+ (id)sharedInvitationNotifier
{
  if (sharedInvitationNotifier_onceToken != -1)
  {
    dispatch_once(&sharedInvitationNotifier_onceToken, &__block_literal_global_125);
  }

  v3 = sharedInvitationNotifier_connection;

  return v3;
}

uint64_t __53__KCSharingDaemonConnection_sharedInvitationNotifier__block_invoke()
{
  sharedInvitationNotifier_connection = [[KCSharingDaemonConnection alloc] initWithType:1];

  return MEMORY[0x1EEE66BB8]();
}

@end