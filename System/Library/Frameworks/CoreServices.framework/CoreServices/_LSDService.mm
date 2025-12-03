@interface _LSDService
+ (Class)clientClass;
+ (id)XPCConnectionToService;
+ (id)XPCInterface;
+ (id)XPCProxyWithErrorHandler:(uint64_t)handler;
+ (id)synchronousXPCProxyWithErrorHandler:(uint64_t)handler;
+ (unsigned)connectionType;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_LSDService)initWithXPCListener:(id)listener;
- (id)clientForConnection:(id)connection;
- (void)clientBorn:(id)born forNewConnection:(id)connection;
- (void)connectionWasInvalidated:(id)invalidated;
@end

@implementation _LSDService

+ (id)XPCConnectionToService
{
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    v3 = +[_LSDServiceDomain defaultServiceDomain];
    v4 = _LSDServiceGetXPCConnection(self, v3);
  }

  else
  {
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[(_LSDService *)v5];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)XPCProxyWithErrorHandler:(uint64_t)handler
{
  v3 = objc_opt_self();
  v4 = +[_LSDServiceDomain defaultServiceDomain];
  v5 = _LSDServiceGetXPCProxyForServiceClass(v3, v4, 0, a2);

  return v5;
}

+ (id)synchronousXPCProxyWithErrorHandler:(uint64_t)handler
{
  v3 = objc_opt_self();
  v4 = +[_LSDServiceDomain defaultServiceDomain];
  v5 = _LSDServiceGetXPCProxyForServiceClass(v3, v4, 1, a2);

  return v5;
}

- (_LSDService)initWithXPCListener:(id)listener
{
  v9.receiver = self;
  v9.super_class = _LSDService;
  v4 = [(_LSDService *)&v9 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_listener, listener);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clientMap = v5->_clientMap;
    v5->_clientMap = strongToStrongObjectsMapTable;
  }

  return v5;
}

- (void)clientBorn:(id)born forNewConnection:(id)connection
{
  os_unfair_lock_lock(&self->_clientMapMutex);
  [(NSMapTable *)self->_clientMap setObject:born forKey:connection];

  os_unfair_lock_unlock(&self->_clientMapMutex);
}

- (void)connectionWasInvalidated:(id)invalidated
{
  os_unfair_lock_lock(&self->_clientMapMutex);
  [(NSMapTable *)self->_clientMap removeObjectForKey:invalidated];

  os_unfair_lock_unlock(&self->_clientMapMutex);
}

- (id)clientForConnection:(id)connection
{
  os_unfair_lock_lock(&self->_clientMapMutex);
  v5 = [(NSMapTable *)self->_clientMap objectForKey:connection];
  os_unfair_lock_unlock(&self->_clientMapMutex);

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  clientClass = [objc_opt_class() clientClass];
  xPCInterface = [objc_opt_class() XPCInterface];
  if (clientClass && ((v8 = [(objc_class *)clientClass isSubclassOfClass:objc_opt_class()], xPCInterface) ? (v9 = v8) : (v9 = 0), v9 == 1))
  {
    dispatchQueue = [objc_opt_class() dispatchQueue];
    v11 = [[clientClass alloc] initWithXPCConnection:connection];
    v12 = v11 != 0;
    if (v11)
    {
      [connection setExportedInterface:xPCInterface];
      [connection setExportedObject:v11];
      [connection setDelegate:self];
      if (dispatchQueue)
      {
        [connection _setQueue:dispatchQueue];
      }

      objc_initWeak(&location, connection);
      objc_initWeak(&from, self);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __50___LSDService_listener_shouldAcceptNewConnection___block_invoke;
      v17 = &unk_1E6A1C9A8;
      objc_copyWeak(&v18, &from);
      objc_copyWeak(&v19, &location);
      [connection setInvalidationHandler:&v14];
      [(_LSDService *)self clientBorn:v11 forNewConnection:connection, v14, v15, v16, v17];
      [connection resume];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (unsigned)connectionType
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unimplemented method %s", "+[_LSDService(SubclassesShouldOverride) connectionType]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

+ (Class)clientClass
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unimplemented method %s", "+[_LSDService(SubclassesShouldOverride) clientClass]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

+ (id)XPCInterface
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unimplemented method %s", "+[_LSDService(SubclassesShouldOverride) XPCInterface]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)connection:(uint64_t)a1 handleInvocation:(uint64_t)a2 isReply:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_18162D000, log, OS_LOG_TYPE_FAULT, "client was unexpectedly nil for connection %@ for %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end