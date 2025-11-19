@interface ACDataclassOwnersManagerListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ACDataclassOwnersManagerListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:kACDAllAccountsAccessEntitlement];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    +[NSXPCListener enableTransactions];
    v7 = +[ACDDataclassOwnersManagerInterface XPCInterface];
    [v4 setExportedInterface:v7];

    v8 = objc_alloc_init(ACRemoteDataclassOwnersManager);
    [v4 setExportedObject:v8];

    [v4 resume];
  }

  return v6;
}

@end