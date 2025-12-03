@interface EKLocalXPCConnectionFactory
- (EKLocalXPCConnectionFactory)init;
- (EKLocalXPCConnectionFactory)initWithTCCPermissionChecker:(id)checker;
- (id)tryNewConnectionWithExportedObject:(id)object interruptionHandler:(id)handler;
@end

@implementation EKLocalXPCConnectionFactory

- (EKLocalXPCConnectionFactory)initWithTCCPermissionChecker:(id)checker
{
  checkerCopy = checker;
  v9.receiver = self;
  v9.super_class = EKLocalXPCConnectionFactory;
  v6 = [(EKLocalXPCConnectionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tccPermissionChecker, checker);
  }

  return v7;
}

- (EKLocalXPCConnectionFactory)init
{
  v3 = objc_opt_new();
  v4 = [(EKLocalXPCConnectionFactory *)self initWithTCCPermissionChecker:v3];

  return v4;
}

- (id)tryNewConnectionWithExportedObject:(id)object interruptionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  v8 = [objc_alloc(MEMORY[0x1E69930A8]) initWithWrappedObject:objectCopy];
  v9 = [objc_alloc(MEMORY[0x1E6992370]) initWithRemoteObject:v8];
  v10 = [objc_alloc(MEMORY[0x1E6992400]) initWithXPCConnection:v9 tccPermissionChecker:self->_tccPermissionChecker];
  v11 = objc_alloc(MEMORY[0x1E6992370]);
  cadOperationProxy = [v10 cadOperationProxy];
  v13 = [v11 initWithRemoteObject:cadOperationProxy];

  objc_initWeak(&location, v9);
  objc_initWeak(&from, v10);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __86__EKLocalXPCConnectionFactory_tryNewConnectionWithExportedObject_interruptionHandler___block_invoke;
  v18 = &unk_1E77FD878;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  [v13 setInvalidationHandler:&v15];
  [v9 resume];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v13;
}

void __86__EKLocalXPCConnectionFactory_tryNewConnectionWithExportedObject_interruptionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 releaseProxy];
}

@end