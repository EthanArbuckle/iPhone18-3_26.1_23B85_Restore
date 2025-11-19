@interface LNProcessInstanceRegistryClient
+ (LNProcessInstanceRegistryClient)sharedInstance;
- (LNProcessInstanceRegistryClient)init;
- (id)makeXPCConnection;
- (id)registerWithError:(id *)a3;
@end

@implementation LNProcessInstanceRegistryClient

- (id)registerWithError:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (geteuid() == 248)
  {
    v5 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v6 = "Attempting to register during setup, linkd is not running";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
LABEL_10:
      _os_log_impl(&dword_18F0E9000, v7, v8, v6, &buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v9 = *MEMORY[0x1E69ACB70];
  if (([MEMORY[0x1E69ACEF8] currentProcessHasMachLookup:*MEMORY[0x1E69ACB70]] & 1) == 0)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNProcessInstanceRegistryClientErrorDomain" code:1 userInfo:0];
    v5 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      v6 = "Missing the com.apple.linkd.autoShortcut mach-lookup entitlement, will NOT register the process";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v10 = [(LNProcessInstanceRegistryClient *)self makeXPCConnection];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v10;

  [(NSXPCConnection *)self->_xpcConnection activate];
  v12 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_18F0E9000, v12, OS_LOG_TYPE_DEFAULT, "Activated connection to %@ (ApplicationService)", &buf, 0xCu);
  }

  v13 = +[LNAppConnectionListener sharedListener];
  v5 = [v13 listenerEndpoint];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = [(LNProcessInstanceRegistryClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__LNProcessInstanceRegistryClient_registerWithError___block_invoke;
  v19[3] = &unk_1E72B7230;
  v19[4] = &buf;
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__LNProcessInstanceRegistryClient_registerWithError___block_invoke_24;
  v18[3] = &unk_1E72B7258;
  v18[6] = &v20;
  v18[4] = self;
  v18[5] = &buf;
  [v15 registerListenerEndpointWithXPCListenerEndpoint:v5 reply:v18];

  *a3 = *(*(&buf + 1) + 40);
  v16 = v21[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&buf, 8);
LABEL_12:

  return v16;
}

void __53__LNProcessInstanceRegistryClient_registerWithError___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_18F0E9000, v4, OS_LOG_TYPE_ERROR, "Unable to get synchronousRemoteObjectProxy, error: %{public}@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __53__LNProcessInstanceRegistryClient_registerWithError___block_invoke_24(void *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v8 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_18F0E9000, v8, OS_LOG_TYPE_DEFAULT, "Registered process with identifier %{public}@", &v9, 0xCu);
  }

  *(a1[4] + 16) = 0;
}

- (id)makeXPCConnection
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x1E696B0B8]);
  v4 = [v3 initWithMachServiceName:*MEMORY[0x1E69ACB70] options:0];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.appintents.process-instance-registry-client.retry-%ld", self->_retryCount];
  v6 = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v8 = dispatch_queue_create(v6, v7);

  [v4 _setQueue:v8];
  v9 = LNDaemonApplicationXPCInterface();
  [v4 setRemoteObjectInterface:v9];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__LNProcessInstanceRegistryClient_makeXPCConnection__block_invoke;
  v13[3] = &unk_1E72B7208;
  objc_copyWeak(&v14, &location);
  [v4 setInterruptionHandler:v13];
  [v4 setInvalidationHandler:&__block_literal_global_19];
  v10 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18F0E9000, v10, OS_LOG_TYPE_DEFAULT, "Created a new Process Instance Registry XPC connection (inactive)", buf, 2u);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v4;
}

void __52__LNProcessInstanceRegistryClient_makeXPCConnection__block_invoke(uint64_t a1)
{
  v2 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18F0E9000, v2, OS_LOG_TYPE_DEFAULT, "Process Instance Registry XPC connection has been interrupted", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained[2] < 2)
  {
    v4 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__LNProcessInstanceRegistryClient_makeXPCConnection__block_invoke_16;
    block[3] = &unk_1E72B7600;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }

  else
  {
    v4 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18F0E9000, v4, OS_LOG_TYPE_ERROR, "Will NOT re-try to establish the connection", buf, 2u);
    }
  }
}

void __52__LNProcessInstanceRegistryClient_makeXPCConnection__block_invoke_17()
{
  v0 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_18F0E9000, v0, OS_LOG_TYPE_DEFAULT, "Process Instance Registry XPC connection has been invalidated", v1, 2u);
  }
}

void __52__LNProcessInstanceRegistryClient_makeXPCConnection__block_invoke_16(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) makeXPCConnection];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = *(a1 + 32);
  v9 = 0;
  v6 = [v5 registerWithError:&v9];
  v7 = v9;
  if (v7)
  {
    v8 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_18F0E9000, v8, OS_LOG_TYPE_ERROR, "Unable to re-register with Process Instance Registry, error: %{public}@", buf, 0xCu);
    }

    ++*(*(a1 + 32) + 16);
  }
}

- (LNProcessInstanceRegistryClient)init
{
  v6.receiver = self;
  v6.super_class = LNProcessInstanceRegistryClient;
  v2 = [(LNProcessInstanceRegistryClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_retryCount = 0;
    v4 = v2;
  }

  return v3;
}

+ (LNProcessInstanceRegistryClient)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_80);
  }

  v3 = sharedInstance_value;

  return v3;
}

uint64_t __49__LNProcessInstanceRegistryClient_sharedInstance__block_invoke()
{
  sharedInstance_value = objc_alloc_init(LNProcessInstanceRegistryClient);

  return MEMORY[0x1EEE66BB8]();
}

@end