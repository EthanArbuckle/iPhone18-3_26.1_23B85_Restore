@interface EKRemoteXPCConnectionFactory
+ (BOOL)_tryRegisterNewConnection;
+ (id)sharedInstance;
+ (void)_unregisterConnection;
- (id)tryNewConnectionWithExportedObject:(id)a3 interruptionHandler:(id)a4;
@end

@implementation EKRemoteXPCConnectionFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[EKRemoteXPCConnectionFactory sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

+ (BOOL)_tryRegisterNewConnection
{
  os_unfair_lock_lock(&sNumberOfOpenConnectionsLock);
  v2 = sNumberOfOpenConnections;
  if (sNumberOfOpenConnections <= 9)
  {
    ++sNumberOfOpenConnections;
  }

  v3 = v2 < 0xA;
  os_unfair_lock_unlock(&sNumberOfOpenConnectionsLock);
  return v3;
}

uint64_t __46__EKRemoteXPCConnectionFactory_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_unregisterConnection
{
  os_unfair_lock_lock(&sNumberOfOpenConnectionsLock);
  --sNumberOfOpenConnections;

  os_unfair_lock_unlock(&sNumberOfOpenConnectionsLock);
}

- (id)tryNewConnectionWithExportedObject:(id)a3 interruptionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([objc_opt_class() _tryRegisterNewConnection])
  {
    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.calaccessd" options:0];
    v9 = GetSharedXPCInterfaceForCADInterface();
    [v8 setRemoteObjectInterface:v9];

    v10 = GetSharedXPCInterfaceForCADClientInterface();
    [v8 setExportedInterface:v10];

    [v8 setExportedObject:v6];
    [v8 setInterruptionHandler:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__EKRemoteXPCConnectionFactory_tryNewConnectionWithExportedObject_interruptionHandler___block_invoke;
    v12[3] = &unk_1E77FD418;
    v12[4] = self;
    [v8 setInvalidationHandler:v12];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __87__EKRemoteXPCConnectionFactory_tryNewConnectionWithExportedObject_interruptionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v2 _unregisterConnection];
}

@end