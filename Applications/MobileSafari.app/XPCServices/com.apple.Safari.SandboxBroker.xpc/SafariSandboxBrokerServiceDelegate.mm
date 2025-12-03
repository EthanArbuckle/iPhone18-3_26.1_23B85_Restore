@interface SafariSandboxBrokerServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation SafariSandboxBrokerServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = WBSUISafariSandboxBrokerInterface();
  [connectionCopy setExportedInterface:v5];

  v6 = [WBSUISafariSandboxBroker alloc];
  processIdentifier = [connectionCopy processIdentifier];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v8 = [v6 initWithPID:processIdentifier auditToken:v10];
  [connectionCopy setExportedObject:v8];

  [connectionCopy resume];
  return 1;
}

@end