@interface NIServerConnection
+ (BOOL)_internalBuildShouldDenyConnection;
+ (id)createOneShotConnectionAndResume:(BOOL)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForConnection;
- (NIServerConnection)initWithSessionID:(id)a3 queue:(id)a4 exportedObject:(id)a5 options:(unint64_t)a6;
- (id)remoteObjectProxy;
- (id)synchronousRemoteObjectProxy;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NIServerConnection

- (id)remoteObjectProxy
{
  connection = self->_connection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__NIServerConnection_remoteObjectProxy__block_invoke;
  v5[3] = &unk_1E7F141D8;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

- (NIServerConnection)initWithSessionID:(id)a3 queue:(id)a4 exportedObject:(id)a5 options:(unint64_t)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12)
  {
    [NIServerConnection initWithSessionID:a2 queue:self exportedObject:? options:?];
  }

  v34.receiver = self;
  v34.super_class = NIServerConnection;
  v15 = [(NIServerConnection *)&v34 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionID, a3);
    objc_storeStrong(&v16->_queue, a4);
    v16->_options = a6;
    v17 = os_log_create("com.apple.NearbyInteraction", "NIServerConnection");
    log = v16->_log;
    v16->_log = v17;

    if (+[NIServerConnection _internalBuildShouldDenyConnection])
    {
      if (+[NIPlatformInfo isInternalBuild])
      {
        v19 = v16->_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = MEMORY[0x1E696AE30];
          v21 = v19;
          v22 = [v20 processInfo];
          v23 = [v22 processName];
          *buf = 138412290;
          v36 = v23;
          _os_log_impl(&dword_1BAC42000, v21, OS_LOG_TYPE_DEFAULT, "Deny connection: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v24 = objc_alloc(MEMORY[0x1E696B0B8]);
      if (a6)
      {
        v25 = @"com.apple.nearbyd.xpc.nearbyinteraction.observer";
      }

      else
      {
        v25 = @"com.apple.nearbyd.xpc.nearbyinteraction";
      }

      v26 = [v24 initWithMachServiceName:v25 options:4096];
      connection = v16->_connection;
      v16->_connection = v26;

      v28 = v16->_connection;
      v29 = UWBMakeSessionDelegateXPCInterface();
      [(NSXPCConnection *)v28 setExportedInterface:v29];

      if (v14)
      {
        [(NSXPCConnection *)v16->_connection setExportedObject:v14];
      }

      v30 = v16->_connection;
      v31 = UWBMakeSessionServerXPCInterface();
      [(NSXPCConnection *)v30 setRemoteObjectInterface:v31];

      [(NSXPCConnection *)v16->_connection _setQueue:v13];
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)dealloc
{
  [(NIServerConnection *)self invalidate];
  v3.receiver = self;
  v3.super_class = NIServerConnection;
  [(NIServerConnection *)&v3 dealloc];
}

void __39__NIServerConnection_remoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v4 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__NIServerConnection_remoteObjectProxy__block_invoke_cold_1(v3, v4);
    }
  }
}

- (id)synchronousRemoteObjectProxy
{
  connection = self->_connection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__NIServerConnection_synchronousRemoteObjectProxy__block_invoke;
  v5[3] = &unk_1E7F141D8;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __50__NIServerConnection_synchronousRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v4 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__NIServerConnection_synchronousRemoteObjectProxy__block_invoke_cold_1(v3, v4);
    }
  }
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForConnection
{
  result = self->_connection;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

+ (id)createOneShotConnectionAndResume:(BOOL)a3
{
  v3 = a3;
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v5 = dispatch_queue_create("com.apple.NearbyInteraction", v4);
  v6 = [NIServerConnection alloc];
  v7 = objc_opt_new();
  v8 = [(NIServerConnection *)v6 initWithSessionID:v7 queue:v5 exportedObject:0 options:0];

  if (v3)
  {
    [(NIServerConnection *)v8 resume];
  }

  return v8;
}

+ (BOOL)_internalBuildShouldDenyConnection
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@".GlobalPreferences"];
    v3 = [v2 objectForKey:@"com.apple.NearbyInteraction.ConnectionAllowList"];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = [MEMORY[0x1E696AE30] processInfo];
      v5 = [v4 processName];
      v6 = [v3 containsObject:v5] ^ 1;
    }

    else
    {
      v4 = [v2 objectForKey:@"com.apple.NearbyInteraction.ConnectionDenyList"];
      if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        LOBYTE(v6) = 0;
        goto LABEL_11;
      }

      v5 = [MEMORY[0x1E696AE30] processInfo];
      v7 = [v5 processName];
      LOBYTE(v6) = [v4 containsObject:v7];
    }

LABEL_11:
    return v6;
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (void)initWithSessionID:(uint64_t)a1 queue:(uint64_t)a2 exportedObject:options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NIServerConnection.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"sessionID"}];
}

void __39__NIServerConnection_remoteObjectProxy__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1BAC42000, a2, OS_LOG_TYPE_ERROR, "Remote object error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __50__NIServerConnection_synchronousRemoteObjectProxy__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1BAC42000, a2, OS_LOG_TYPE_ERROR, "Synchronous remote object error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end