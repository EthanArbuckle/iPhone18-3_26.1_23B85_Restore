@interface SecuritydXPCClient
+ (void)configureSecuritydXPCProtocol:(id)protocol;
- (id)initTargetingSession:(int)session;
- (id)protocolWithSync:(BOOL)sync errorHandler:(id)handler;
- (void)dealloc;
@end

@implementation SecuritydXPCClient

- (id)protocolWithSync:(BOOL)sync errorHandler:(id)handler
{
  syncCopy = sync;
  handlerCopy = handler;
  connection = [(SecuritydXPCClient *)self connection];
  v8 = connection;
  if (syncCopy)
  {
    [connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    [connection remoteObjectProxyWithErrorHandler:handlerCopy];
  }
  v9 = ;

  return v9;
}

- (void)dealloc
{
  connection = [(SecuritydXPCClient *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = SecuritydXPCClient;
  [(SecuritydXPCClient *)&v4 dealloc];
}

- (id)initTargetingSession:(int)session
{
  v23 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = SecuritydXPCClient;
  v4 = [(SecuritydXPCClient *)&v20 init];
  if (!v4)
  {
LABEL_13:
    v12 = v4;
    goto LABEL_14;
  }

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFABB398];
  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.securityd.general" options:0];
  [(SecuritydXPCClient *)v4 setConnection:v6];

  connection = [(SecuritydXPCClient *)v4 connection];

  if (connection)
  {
    connection2 = [(SecuritydXPCClient *)v4 connection];
    [connection2 setRemoteObjectInterface:v5];

    connection3 = [(SecuritydXPCClient *)v4 connection];
    remoteObjectInterface = [connection3 remoteObjectInterface];
    [SecuritydXPCClient configureSecuritydXPCProtocol:remoteObjectInterface];

    if (!session)
    {
      v11 = secLogObjForScope("SecuritydXPCClient");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "Possibly targeting foreground session", buf, 2u);
      }

      if (xpc_user_sessions_enabled())
      {
        foreground_uid = xpc_user_sessions_get_foreground_uid();
        v14 = secLogObjForScope("SecuritydXPCClient");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v22 = foreground_uid;
          _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "Targeting foreground session for uid %d", buf, 8u);
        }

        connection4 = [(SecuritydXPCClient *)v4 connection];
        _xpcConnection = [connection4 _xpcConnection];
        xpc_connection_set_target_user_session_uid();
      }
    }

    connection5 = [(SecuritydXPCClient *)v4 connection];
    [connection5 resume];

    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (void)configureSecuritydXPCProtocol:(id)protocol
{
  v22[2] = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFAB1CC0];
  [protocolCopy setInterface:v4 forSelector:sel_SecItemAddAndNotifyOnSync_syncCallback_complete_ argumentIndex:1 ofReply:0];
  v5 = +[SecXPCHelper safeErrorClasses];
  v6 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v8 = [v6 setWithArray:v7];

  v9 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v11 = [v9 setWithArray:v10];

  v12 = MEMORY[0x1E695DFD8];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v14 = [v12 setWithArray:v13];

  v15 = MEMORY[0x1E695DFD8];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v17 = [v15 setWithArray:v16];

  [v4 setClasses:v5 forSelector:sel_callCallback_error_ argumentIndex:1 ofReply:0];
  [protocolCopy setClasses:v5 forSelector:sel_SecItemAddAndNotifyOnSync_syncCallback_complete_ argumentIndex:2 ofReply:1];
  [protocolCopy setClasses:v5 forSelector:sel_secItemSetCurrentItemAcrossAllDevices_newCurrentItemHash_accessGroup_identifier_viewHint_oldCurrentItemReference_oldCurrentItemHash_complete_ argumentIndex:0 ofReply:1];
  [protocolCopy setClasses:v5 forSelector:sel_secItemUnsetCurrentItemsAcrossAllDevices_identifiers_viewHint_complete_ argumentIndex:0 ofReply:1];
  [protocolCopy setClasses:v5 forSelector:sel_secItemFetchCurrentItemAcrossAllDevices_identifier_viewHint_fetchCloudValue_complete_ argumentIndex:2 ofReply:1];
  [protocolCopy setClasses:v5 forSelector:sel_secItemDigest_accessGroup_complete_ argumentIndex:1 ofReply:1];
  [protocolCopy setClasses:v5 forSelector:sel_secKeychainDeleteMultiuser_complete_ argumentIndex:1 ofReply:1];
  [protocolCopy setClasses:v8 forSelector:sel_secItemFetchCurrentItemOutOfBand_forceFetch_complete_ argumentIndex:0 ofReply:0];
  [protocolCopy setClasses:v11 forSelector:sel_secItemFetchCurrentItemOutOfBand_forceFetch_complete_ argumentIndex:0 ofReply:1];
  [protocolCopy setClasses:v5 forSelector:sel_secItemFetchCurrentItemOutOfBand_forceFetch_complete_ argumentIndex:1 ofReply:1];
  [protocolCopy setClasses:v14 forSelector:sel_secItemFetchPCSIdentityByKeyOutOfBand_forceFetch_complete_ argumentIndex:0 ofReply:0];
  [protocolCopy setClasses:v17 forSelector:sel_secItemFetchPCSIdentityByKeyOutOfBand_forceFetch_complete_ argumentIndex:0 ofReply:1];
  [protocolCopy setClasses:v5 forSelector:sel_secItemFetchPCSIdentityByKeyOutOfBand_forceFetch_complete_ argumentIndex:1 ofReply:1];
  [protocolCopy setClasses:v5 forSelector:sel_secKeychainCopyDatabasePath_ argumentIndex:1 ofReply:1];

  v18 = *MEMORY[0x1E69E9840];
}

@end