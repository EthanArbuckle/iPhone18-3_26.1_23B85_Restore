@interface ACDataclassOwnersManagerListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ACDataclassOwnersManagerListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:kACDAllAccountsAccessEntitlement];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    +[NSXPCListener enableTransactions];
    v7 = +[ACDDataclassOwnersManagerInterface XPCInterface];
    [connectionCopy setExportedInterface:v7];

    v8 = objc_alloc_init(ACRemoteDataclassOwnersManager);
    [connectionCopy setExportedObject:v8];

    [connectionCopy resume];
  }

  return bOOLValue;
}

@end