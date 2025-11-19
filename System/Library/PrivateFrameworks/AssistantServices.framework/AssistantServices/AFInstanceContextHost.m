@interface AFInstanceContextHost
- (AFInstanceContextHost)init;
- (BOOL)isCurrent;
- (id)createXPCConnectionForMachService:(const char *)a3 targetQueue:(id)a4 flags:(unint64_t)a5;
- (id)createXPCConnectionWithMachServiceName:(id)a3 options:(unint64_t)a4;
- (id)createXPCListenerForMachService:(const char *)a3 targetQueue:(id)a4 flags:(unint64_t)a5;
- (id)createXPCListenerWithMachServiceName:(id)a3;
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
  v3 = [v2 isDefault];

  return v3;
}

- (id)createXPCListenerForMachService:(const char *)a3 targetQueue:(id)a4 flags:(unint64_t)a5
{
  mach_service = xpc_connection_create_mach_service(a3, a4, a5 | 1);

  return mach_service;
}

- (id)createXPCConnectionForMachService:(const char *)a3 targetQueue:(id)a4 flags:(unint64_t)a5
{
  mach_service = xpc_connection_create_mach_service(a3, a4, a5);

  return mach_service;
}

- (id)createXPCListenerWithMachServiceName:(id)a3
{
  v3 = MEMORY[0x1E696B0D8];
  v4 = a3;
  v5 = [[v3 alloc] initWithMachServiceName:v4];

  return v5;
}

- (id)createXPCConnectionWithMachServiceName:(id)a3 options:(unint64_t)a4
{
  v5 = MEMORY[0x1E696B0B8];
  v6 = a3;
  v7 = [[v5 alloc] initWithMachServiceName:v6 options:a4];

  return v7;
}

@end