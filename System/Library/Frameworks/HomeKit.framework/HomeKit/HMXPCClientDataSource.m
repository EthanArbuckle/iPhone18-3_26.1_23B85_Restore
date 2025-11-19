@interface HMXPCClientDataSource
- (HMDarwinNotificationProvider)darwinNotificationProvider;
- (id)createXPCClientConnectionProxyWithUserInfo:(id)a3 refreshHandler:(id)a4;
- (id)createXPCConnectionWithMachServiceName:(id)a3;
@end

@implementation HMXPCClientDataSource

- (id)createXPCConnectionWithMachServiceName:(id)a3
{
  v3 = a3;
  v4 = [HMXPCConnection alloc];
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v3 options:0];

  v6 = [(HMXPCConnection *)v4 initWithXPCConnection:v5];

  return v6;
}

- (id)createXPCClientConnectionProxyWithUserInfo:(id)a3 refreshHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMXPCClientConnectionProxy alloc] initWithUserInfo:v6 refreshHandler:v5];

  return v7;
}

- (HMDarwinNotificationProvider)darwinNotificationProvider
{
  v2 = objc_alloc_init(HMDarwinNotificationProvider);

  return v2;
}

@end