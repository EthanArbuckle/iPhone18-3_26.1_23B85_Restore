@interface KCSharingMessagingdConnection
+ (id)sharedInstance;
- (KCSharingMessagingdConnection)init;
- (KCSharingMessagingdConnection)initWithConnection:(id)a3 interface:(id)a4 queue:(id)a5;
- (void)cancelPendingInvitesForGroup:(id)a3 participantHandles:(id)a4 completion:(id)a5;
- (void)connectionWasInterrupted;
- (void)connectionWasInvalidated;
- (void)dealloc;
- (void)didAcceptInviteForGroupID:(id)a3 completion:(id)a4;
- (void)didDeclineInviteForGroupID:(id)a3 completion:(id)a4;
- (void)fetchReceivedInviteWithGroupID:(id)a3 completion:(id)a4;
- (void)fetchReceivedInvitesWithCompletion:(id)a3;
- (void)sendNewInvitesForGroup:(id)a3 completion:(id)a4;
@end

@implementation KCSharingMessagingdConnection

- (void)fetchReceivedInvitesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1887D2000, "ksmd/client/fetchReceivedInvitesWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  v6 = [(KCSharingMessagingdConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__KCSharingMessagingdConnection_fetchReceivedInvitesWithCompletion___block_invoke;
  v9[3] = &unk_1E70DECC0;
  v7 = v4;
  v10 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v9];
  [v8 fetchReceivedInvitesWithCompletion:v7];

  os_activity_scope_leave(&state);
}

uint64_t __68__KCSharingMessagingdConnection_fetchReceivedInvitesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchReceivedInviteWithGroupID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1887D2000, "ksmd/client/fetchReceivedInviteWithGroupID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  v9 = [(KCSharingMessagingdConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__KCSharingMessagingdConnection_fetchReceivedInviteWithGroupID_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = v7;
  v13 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v12];
  [v11 fetchReceivedInviteWithGroupID:v6 completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __75__KCSharingMessagingdConnection_fetchReceivedInviteWithGroupID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)didDeclineInviteForGroupID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1887D2000, "ksmd/client/didDeclineInviteForGroupID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  v9 = [(KCSharingMessagingdConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__KCSharingMessagingdConnection_didDeclineInviteForGroupID_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = v7;
  v13 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v12];
  [v11 didDeclineInviteForGroupID:v6 completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __71__KCSharingMessagingdConnection_didDeclineInviteForGroupID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)didAcceptInviteForGroupID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1887D2000, "ksmd/client/didAcceptInviteForGroupID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  v9 = [(KCSharingMessagingdConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__KCSharingMessagingdConnection_didAcceptInviteForGroupID_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = v7;
  v13 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v12];
  [v11 didAcceptInviteForGroupID:v6 completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __70__KCSharingMessagingdConnection_didAcceptInviteForGroupID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cancelPendingInvitesForGroup:(id)a3 participantHandles:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1887D2000, "ksmd/client/cancelPendingInvitesForGroup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v11, &state);
  v12 = [(KCSharingMessagingdConnection *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__KCSharingMessagingdConnection_cancelPendingInvitesForGroup_participantHandles_completion___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v13 = v10;
  v16 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v15];
  [v14 cancelPendingInvitesForGroup:v8 participantHandles:v9 completion:v13];

  os_activity_scope_leave(&state);
}

uint64_t __92__KCSharingMessagingdConnection_cancelPendingInvitesForGroup_participantHandles_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendNewInvitesForGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1887D2000, "ksmd/client/sendNewInvitesForGroup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  v9 = [(KCSharingMessagingdConnection *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__KCSharingMessagingdConnection_sendNewInvitesForGroup_completion___block_invoke;
  v12[3] = &unk_1E70DECC0;
  v10 = v7;
  v13 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v12];
  [v11 sendNewInvitesForGroup:v6 completion:v10];

  os_activity_scope_leave(&state);
}

uint64_t __67__KCSharingMessagingdConnection_sendNewInvitesForGroup_completion___block_invoke(uint64_t a1)
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
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = KCSharingMessagingdConnection;
  [(KCSharingMessagingdConnection *)&v3 dealloc];
}

- (void)connectionWasInvalidated
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = KCSharingLogObject(@"KCSharingMessagingdConnection", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(KCSharingMessagingdConnection *)self connection];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_INFO, "connection invalidated %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)connectionWasInterrupted
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = KCSharingLogObject(@"KCSharingMessagingdConnection", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(KCSharingMessagingdConnection *)self connection];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_INFO, "connection interrupted %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (KCSharingMessagingdConnection)initWithConnection:(id)a3 interface:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = KCSharingMessagingdConnection;
  v12 = [(KCSharingMessagingdConnection *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, a3);
    objc_initWeak(&location, v13);
    [v9 setRemoteObjectInterface:v10];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__KCSharingMessagingdConnection_initWithConnection_interface_queue___block_invoke;
    v17[3] = &unk_1E70E0AD0;
    objc_copyWeak(&v18, &location);
    [v9 setInterruptionHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__KCSharingMessagingdConnection_initWithConnection_interface_queue___block_invoke_2;
    v15[3] = &unk_1E70E0AD0;
    objc_copyWeak(&v16, &location);
    [v9 setInvalidationHandler:v15];
    [v9 _setQueue:v11];
    [v9 resume];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __68__KCSharingMessagingdConnection_initWithConnection_interface_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionWasInterrupted];
}

void __68__KCSharingMessagingdConnection_initWithConnection_interface_queue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionWasInvalidated];
}

- (KCSharingMessagingdConnection)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, -1);

  v5 = dispatch_queue_create("com.apple.KCSharingMessagingdConnection.xpcConnection", v4);
  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.keychainsharingmessagingd" options:0];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFAB43E0];
  KCSharingSetupMessagingdServerProtocol(v7);
  objc_claimAutoreleasedReturnValue();

  v8 = [(KCSharingMessagingdConnection *)self initWithConnection:v6 interface:v7 queue:v5];
  return v8;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4457 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4457, &__block_literal_global_4458);
  }

  v3 = sharedInstance_connection_4459;

  return v3;
}

uint64_t __47__KCSharingMessagingdConnection_sharedInstance__block_invoke()
{
  sharedInstance_connection_4459 = objc_alloc_init(KCSharingMessagingdConnection);

  return MEMORY[0x1EEE66BB8]();
}

@end