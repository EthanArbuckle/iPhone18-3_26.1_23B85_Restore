@interface _LSDService
+ (Class)clientClass;
+ (id)XPCConnectionToService;
+ (id)XPCInterface;
+ (id)XPCProxyWithErrorHandler:(uint64_t)a1;
+ (id)synchronousXPCProxyWithErrorHandler:(uint64_t)a1;
+ (unsigned)connectionType;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_LSDService)initWithXPCListener:(id)a3;
- (id)clientForConnection:(id)a3;
- (void)clientBorn:(id)a3 forNewConnection:(id)a4;
- (void)connectionWasInvalidated:(id)a3;
@end

@implementation _LSDService

+ (id)XPCConnectionToService
{
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    v3 = +[_LSDServiceDomain defaultServiceDomain];
    v4 = _LSDServiceGetXPCConnection(a1, v3);
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

+ (id)XPCProxyWithErrorHandler:(uint64_t)a1
{
  v3 = objc_opt_self();
  v4 = +[_LSDServiceDomain defaultServiceDomain];
  v5 = _LSDServiceGetXPCProxyForServiceClass(v3, v4, 0, a2);

  return v5;
}

+ (id)synchronousXPCProxyWithErrorHandler:(uint64_t)a1
{
  v3 = objc_opt_self();
  v4 = +[_LSDServiceDomain defaultServiceDomain];
  v5 = _LSDServiceGetXPCProxyForServiceClass(v3, v4, 1, a2);

  return v5;
}

- (_LSDService)initWithXPCListener:(id)a3
{
  v9.receiver = self;
  v9.super_class = _LSDService;
  v4 = [(_LSDService *)&v9 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_listener, a3);
    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    clientMap = v5->_clientMap;
    v5->_clientMap = v6;
  }

  return v5;
}

- (void)clientBorn:(id)a3 forNewConnection:(id)a4
{
  os_unfair_lock_lock(&self->_clientMapMutex);
  [(NSMapTable *)self->_clientMap setObject:a3 forKey:a4];

  os_unfair_lock_unlock(&self->_clientMapMutex);
}

- (void)connectionWasInvalidated:(id)a3
{
  os_unfair_lock_lock(&self->_clientMapMutex);
  [(NSMapTable *)self->_clientMap removeObjectForKey:a3];

  os_unfair_lock_unlock(&self->_clientMapMutex);
}

- (id)clientForConnection:(id)a3
{
  os_unfair_lock_lock(&self->_clientMapMutex);
  v5 = [(NSMapTable *)self->_clientMap objectForKey:a3];
  os_unfair_lock_unlock(&self->_clientMapMutex);

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = [objc_opt_class() clientClass];
  v7 = [objc_opt_class() XPCInterface];
  if (v6 && ((v8 = [(objc_class *)v6 isSubclassOfClass:objc_opt_class()], v7) ? (v9 = v8) : (v9 = 0), v9 == 1))
  {
    v10 = [objc_opt_class() dispatchQueue];
    v11 = [[v6 alloc] initWithXPCConnection:a4];
    v12 = v11 != 0;
    if (v11)
    {
      [a4 setExportedInterface:v7];
      [a4 setExportedObject:v11];
      [a4 setDelegate:self];
      if (v10)
      {
        [a4 _setQueue:v10];
      }

      objc_initWeak(&location, a4);
      objc_initWeak(&from, self);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __50___LSDService_listener_shouldAcceptNewConnection___block_invoke;
      v17 = &unk_1E6A1C9A8;
      objc_copyWeak(&v18, &from);
      objc_copyWeak(&v19, &location);
      [a4 setInvalidationHandler:&v14];
      [(_LSDService *)self clientBorn:v11 forNewConnection:a4, v14, v15, v16, v17];
      [a4 resume];
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