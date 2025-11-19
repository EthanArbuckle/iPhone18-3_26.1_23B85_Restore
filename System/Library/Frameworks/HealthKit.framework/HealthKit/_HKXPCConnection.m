@interface _HKXPCConnection
- (_HKXPCConnection)initWithListenerEndpoint:(id)a3;
- (_HKXPCConnection)initWithMachServiceName:(id)a3 options:(unint64_t)a4;
- (_HKXPCConnection)initWithServiceName:(id)a3;
- (_HKXPCConnection)initWithUnderlyingConnection:(id)a3;
- (_HKXPCExportable)exportedObject;
- (id)_loggingPrefix;
- (void)dealloc;
- (void)resume;
- (void)resumeWithExportedInterface:(id)a3 remoteInterface:(id)a4;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
- (void)unitTest_interrupt;
@end

@implementation _HKXPCConnection

- (_HKXPCConnection)initWithServiceName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:v4];
  if (v5)
  {
    self = [(_HKXPCConnection *)self initWithUnderlyingConnection:v5];
    v6 = self;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(_HKXPCConnection *)v4 initWithServiceName:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (_HKXPCConnection)initWithMachServiceName:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v6 options:a4];
  if (v7)
  {
    self = [(_HKXPCConnection *)self initWithUnderlyingConnection:v7];
    v8 = self;
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(_HKXPCConnection *)v6 initWithServiceName:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (_HKXPCConnection)initWithListenerEndpoint:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(_HKXPCConnection *)a2 initWithListenerEndpoint:?];
  }

  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v5];
  v7 = [(_HKXPCConnection *)self initWithUnderlyingConnection:v6];

  return v7;
}

- (_HKXPCConnection)initWithUnderlyingConnection:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(_HKXPCConnection *)a2 initWithUnderlyingConnection:?];
  }

  v10.receiver = self;
  v10.super_class = _HKXPCConnection;
  v7 = [(_HKXPCConnection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_underlyingConnection, a3);
    [(_HKXPCConnection *)v8 setInterruptionHandler:0];
    [(_HKXPCConnection *)v8 setInvalidationHandler:0];
  }

  return v8;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_underlyingConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_underlyingConnection invalidate];
  v3.receiver = self;
  v3.super_class = _HKXPCConnection;
  [(_HKXPCConnection *)&v3 dealloc];
}

- (void)resume
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v3 = [WeakRetained exportedInterface];
  v4 = objc_loadWeakRetained(&self->_exportedObject);
  v5 = [v4 remoteInterface];
  [(_HKXPCConnection *)self resumeWithExportedInterface:v3 remoteInterface:v5];
}

- (void)resumeWithExportedInterface:(id)a3 remoteInterface:(id)a4
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  if (!WeakRetained)
  {
    [_HKXPCConnection resumeWithExportedInterface:a2 remoteInterface:self];
  }

  v10 = objc_loadWeakRetained(&self->_exportedObject);
  if (v10)
  {
    v11 = [(_HKXPCConnection *)self _loggingPrefix];
    v12 = [(NSXPCConnection *)self->_underlyingConnection serviceName];
    v13 = v12;
    v14 = @"<anonymous>";
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    objc_initWeak(&location, self);
    underlyingConnection = self->_underlyingConnection;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __64___HKXPCConnection_resumeWithExportedInterface_remoteInterface___block_invoke;
    v27[3] = &unk_1E7384340;
    v17 = v11;
    v28 = v17;
    v18 = v15;
    v29 = v18;
    objc_copyWeak(&v30, &location);
    [(NSXPCConnection *)underlyingConnection setInterruptionHandler:v27];
    v19 = self->_underlyingConnection;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __64___HKXPCConnection_resumeWithExportedInterface_remoteInterface___block_invoke_26;
    v23[3] = &unk_1E7384340;
    v20 = v17;
    v24 = v20;
    v21 = v18;
    v25 = v21;
    objc_copyWeak(&v26, &location);
    [(NSXPCConnection *)v19 setInvalidationHandler:v23];
    [(NSXPCConnection *)self->_underlyingConnection setExportedInterface:v7];
    [(NSXPCConnection *)self->_underlyingConnection setRemoteObjectInterface:v8];
    v22 = objc_alloc_init(_HKXPCExportedObjectProxy);
    [(_HKXPCExportedObjectProxy *)v22 setWeakExportedObject:v10];
    [(NSXPCConnection *)self->_underlyingConnection setExportedObject:v22];
    if (objc_opt_respondsToSelector())
    {
      [v10 connectionConfigured];
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v30);

    objc_destroyWeak(&location);
  }

  [(NSXPCConnection *)self->_underlyingConnection resume];
}

- (void)unitTest_interrupt
{
  v2 = _Block_copy(self->_interruptionHandler);
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)setInterruptionHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43___HKXPCConnection_setInterruptionHandler___block_invoke;
    v7[3] = &unk_1E73782E8;
    objc_copyWeak(&v8, &location);
    v4 = _Block_copy(v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  v5 = _Block_copy(v4);
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v5;
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43___HKXPCConnection_setInvalidationHandler___block_invoke;
    v7[3] = &unk_1E73782E8;
    objc_copyWeak(&v8, &location);
    v4 = _Block_copy(v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  v5 = _Block_copy(v4);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v5;
}

- (id)_loggingPrefix
{
  debugIdentifier = self->_debugIdentifier;
  if (debugIdentifier)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%p: ", debugIdentifier, self];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%p: ", self, v5];
  }
  v3 = ;

  return v3;
}

- (_HKXPCExportable)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

- (void)initWithServiceName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Could not establish connection with %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithListenerEndpoint:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKXPCConnection.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"endpoint != nil"}];
}

- (void)initWithUnderlyingConnection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKXPCConnection.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"connection != nil"}];
}

- (void)resumeWithExportedInterface:(uint64_t)a1 remoteInterface:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKXPCConnection.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"_exportedObject != nil"}];
}

@end