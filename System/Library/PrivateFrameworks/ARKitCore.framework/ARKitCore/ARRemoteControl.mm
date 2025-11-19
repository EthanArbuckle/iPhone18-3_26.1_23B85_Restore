@interface ARRemoteControl
- (ARRemoteControl)initWithEndpoint:(id)a3;
- (ARRemoteControlDelegate)delegate;
- (void)dealloc;
- (void)interruptionHandler;
- (void)invalidate;
- (void)invalidationHandler;
@end

@implementation ARRemoteControl

- (ARRemoteControl)initWithEndpoint:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ARRemoteControl;
  v5 = [(ARRemoteControl *)&v24 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696B0B8]);
    v7 = v6;
    if (v4)
    {
      v8 = [v6 initWithListenerEndpoint:v4];
      connection = v5->_connection;
      v5->_connection = v8;
    }

    else
    {
      connection = [objc_opt_class() serviceName];
      v10 = [v7 initWithMachServiceName:connection options:0];
      v11 = v5->_connection;
      v5->_connection = v10;
    }

    v12 = [ARWeakReference weakReferenceWithObject:v5];
    exportedObjectWeakReference = v5->_exportedObjectWeakReference;
    v5->_exportedObjectWeakReference = v12;

    [(NSXPCConnection *)v5->_connection setExportedObject:v5->_exportedObjectWeakReference];
    v14 = [objc_opt_class() controlProxyInterface];
    [(NSXPCConnection *)v5->_connection setExportedInterface:v14];

    v15 = [objc_opt_class() controlInterface];
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v15];

    objc_initWeak(&location, v5);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __36__ARRemoteControl_initWithEndpoint___block_invoke;
    v21[3] = &unk_1E817BD88;
    objc_copyWeak(&v22, &location);
    [(NSXPCConnection *)v5->_connection setInterruptionHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __36__ARRemoteControl_initWithEndpoint___block_invoke_2;
    v19[3] = &unk_1E817BD88;
    objc_copyWeak(&v20, &location);
    [(NSXPCConnection *)v5->_connection setInvalidationHandler:v19];
    [(NSXPCConnection *)v5->_connection resume];
    v16 = [(NSXPCConnection *)v5->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_119];
    control = v5->_control;
    v5->_control = v16;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __36__ARRemoteControl_initWithEndpoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler];
}

void __36__ARRemoteControl_initWithEndpoint___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler];
}

void __36__ARRemoteControl_initWithEndpoint___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ARShouldUseLogTypeError_onceToken_51 != -1)
  {
    __36__ARRemoteControl_initWithEndpoint___block_invoke_3_cold_1();
  }

  v3 = ARShouldUseLogTypeError_internalOSVersion_51;
  v4 = _ARLogGeneral_45();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v2 description];
      v10 = 138412290;
      v11 = v6;
      v7 = "ARRemoteControl: Remote object proxy failed with error: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [v2 description];
    v10 = 138412290;
    v11 = v6;
    v7 = "Error: ARRemoteControl: Remote object proxy failed with error: %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)dealloc
{
  [(ARRemoteControl *)self invalidate];
  v3.receiver = self;
  v3.super_class = ARRemoteControl;
  [(ARRemoteControl *)&v3 dealloc];
}

void __30__ARRemoteControl_syncControl__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ARShouldUseLogTypeError_onceToken_51 != -1)
  {
    __36__ARRemoteControl_initWithEndpoint___block_invoke_3_cold_1();
  }

  v3 = ARShouldUseLogTypeError_internalOSVersion_51;
  v4 = _ARLogGeneral_45();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v2;
      v6 = "ARRemoteControl: Sync remote object proxy failed with error: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v7, v8, v6, &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v2;
    v6 = "Error: ARRemoteControl: Sync remote object proxy failed with error: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  control = self->_control;
  self->_control = 0;
}

- (void)interruptionHandler
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral_45();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Control interrupted", &v7, 0x16u);
  }

  v6 = [(ARRemoteControl *)self delegate];
  [v6 connectionInterrupted];
}

- (void)invalidationHandler
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral_45();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138543618;
    v7 = v5;
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Control invalidated", &v6, 0x16u);
  }
}

- (ARRemoteControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end