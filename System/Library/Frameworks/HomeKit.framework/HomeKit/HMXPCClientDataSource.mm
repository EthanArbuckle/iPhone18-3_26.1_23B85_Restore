@interface HMXPCClientDataSource
- (HMDarwinNotificationProvider)darwinNotificationProvider;
- (id)createXPCClientConnectionProxyWithUserInfo:(id)info refreshHandler:(id)handler;
- (id)createXPCConnectionWithMachServiceName:(id)name;
@end

@implementation HMXPCClientDataSource

- (id)createXPCConnectionWithMachServiceName:(id)name
{
  nameCopy = name;
  v4 = [HMXPCConnection alloc];
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:0];

  v6 = [(HMXPCConnection *)v4 initWithXPCConnection:v5];

  return v6;
}

- (id)createXPCClientConnectionProxyWithUserInfo:(id)info refreshHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  v7 = [[HMXPCClientConnectionProxy alloc] initWithUserInfo:infoCopy refreshHandler:handlerCopy];

  return v7;
}

- (HMDarwinNotificationProvider)darwinNotificationProvider
{
  v2 = objc_alloc_init(HMDarwinNotificationProvider);

  return v2;
}

@end