@interface AFInstanceContextHost
- (AFInstanceContextHost)init;
- (BOOL)isCurrent;
- (id)createXPCConnectionForMachService:(const char *)service targetQueue:(id)queue flags:(unint64_t)flags;
- (id)createXPCConnectionWithMachServiceName:(id)name options:(unint64_t)options;
- (id)createXPCListenerForMachService:(const char *)service targetQueue:(id)queue flags:(unint64_t)flags;
- (id)createXPCListenerWithMachServiceName:(id)name;
- (id)description;
@end

@implementation AFInstanceContextHost

- (AFInstanceContextHost)init
{
  v6.receiver = self;
  v6.super_class = AFInstanceContextHost;
  v2 = [(AFInstanceContextHost *)&v6 init];
  if (v2)
  {
    v3 = [[AFInstanceInfo alloc] initWithInstanceUUID:0 applicationType:1 applicationUUID:0];
    info = v2->_info;
    v2->_info = v3;
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = AFInstanceContextHost;
  v4 = [(AFInstanceContextHost *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ (default)", v4];

  return v5;
}

- (BOOL)isCurrent
{
  v2 = +[AFInstanceContext currentContext];
  isDefault = [v2 isDefault];

  return isDefault;
}

- (id)createXPCListenerForMachService:(const char *)service targetQueue:(id)queue flags:(unint64_t)flags
{
  mach_service = xpc_connection_create_mach_service(service, queue, flags | 1);

  return mach_service;
}

- (id)createXPCConnectionForMachService:(const char *)service targetQueue:(id)queue flags:(unint64_t)flags
{
  mach_service = xpc_connection_create_mach_service(service, queue, flags);

  return mach_service;
}

- (id)createXPCListenerWithMachServiceName:(id)name
{
  v3 = MEMORY[0x1E696B0D8];
  nameCopy = name;
  v5 = [[v3 alloc] initWithMachServiceName:nameCopy];

  return v5;
}

- (id)createXPCConnectionWithMachServiceName:(id)name options:(unint64_t)options
{
  v5 = MEMORY[0x1E696B0B8];
  nameCopy = name;
  v7 = [[v5 alloc] initWithMachServiceName:nameCopy options:options];

  return v7;
}

@end