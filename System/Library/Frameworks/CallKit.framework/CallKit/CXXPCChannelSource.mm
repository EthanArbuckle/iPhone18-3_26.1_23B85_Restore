@interface CXXPCChannelSource
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isConnected;
- (BOOL)isPermittedToUseBluetoothAccessories;
- (BOOL)isPermittedToUsePrivateAPI;
- (BOOL)isPermittedToUsePublicAPI;
- (CXXPCChannelSource)initWithClient:(id)client;
- (id)bundleIdentifier;
- (id)bundleURL;
- (id)localizedName;
- (id)vendorProtocolDelegate;
- (int)processIdentifier;
@end

@implementation CXXPCChannelSource

- (CXXPCChannelSource)initWithClient:(id)client
{
  clientCopy = client;
  identifier = [clientCopy identifier];
  v9.receiver = self;
  v9.super_class = CXXPCChannelSource;
  v7 = [(CXAbstractProviderSource *)&v9 initWithIdentifier:identifier];

  if (v7)
  {
    objc_storeStrong(&v7->_client, client);
  }

  return v7;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  client = [(CXXPCChannelSource *)self client];
  if (client)
  {
    v6 = client;
    [client auditToken];
    client = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (id)bundleIdentifier
{
  client = [(CXXPCChannelSource *)self client];
  bundleIdentifier = [client bundleIdentifier];

  return bundleIdentifier;
}

- (id)bundleURL
{
  client = [(CXXPCChannelSource *)self client];
  bundleURL = [client bundleURL];

  return bundleURL;
}

- (BOOL)isConnected
{
  client = [(CXXPCChannelSource *)self client];
  isConnected = [client isConnected];

  return isConnected;
}

- (id)localizedName
{
  client = [(CXXPCChannelSource *)self client];
  localizedName = [client localizedName];

  return localizedName;
}

- (BOOL)isPermittedToUsePrivateAPI
{
  client = [(CXXPCChannelSource *)self client];
  isPermittedToUsePrivateAPI = [client isPermittedToUsePrivateAPI];

  return isPermittedToUsePrivateAPI;
}

- (BOOL)isPermittedToUsePublicAPI
{
  client = [(CXXPCChannelSource *)self client];
  isPermittedToUsePublicAPI = [client isPermittedToUsePublicAPI];

  return isPermittedToUsePublicAPI;
}

- (BOOL)isPermittedToUseBluetoothAccessories
{
  client = [(CXXPCChannelSource *)self client];
  isPermittedToUseBluetoothAccessories = [client isPermittedToUseBluetoothAccessories];

  return isPermittedToUseBluetoothAccessories;
}

- (int)processIdentifier
{
  client = [(CXXPCChannelSource *)self client];
  processIdentifier = [client processIdentifier];

  return processIdentifier;
}

- (id)vendorProtocolDelegate
{
  client = [(CXXPCChannelSource *)self client];
  connection = [client connection];
  remoteTarget = [connection remoteTarget];

  return remoteTarget;
}

@end