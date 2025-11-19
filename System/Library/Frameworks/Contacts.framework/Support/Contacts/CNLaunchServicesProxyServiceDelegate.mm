@interface CNLaunchServicesProxyServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CNLaunchServicesProxyServiceDelegate)init;
- (CNLaunchServicesProxyServiceDelegate)initWithLaunchServices:(id)a3;
- (void)applicationForBundleIdentifier:(id)a3 withReply:(id)a4;
- (void)applicationsAvailableForDefaultAppCategory:(id)a3 withReply:(id)a4;
- (void)applicationsAvailableForHandlingURLScheme:(id)a3 withReply:(id)a4;
- (void)applicationsForUserActivityType:(id)a3 withReply:(id)a4;
- (void)defaultApplicationForDefaultAppCategory:(id)a3 withReply:(id)a4;
- (void)openSensitiveURLInBackground:(id)a3 withOptions:(id)a4 withReply:(id)a5;
- (void)openUserActivityData:(id)a3 inApplication:(id)a4 withReply:(id)a5;
@end

@implementation CNLaunchServicesProxyServiceDelegate

- (CNLaunchServicesProxyServiceDelegate)init
{
  v3 = objc_alloc_init(CNLaunchServices);
  v4 = [(CNLaunchServicesProxyServiceDelegate *)self initWithLaunchServices:v3];

  return v4;
}

- (CNLaunchServicesProxyServiceDelegate)initWithLaunchServices:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNLaunchServicesProxyServiceDelegate;
  v6 = [(CNLaunchServicesProxyServiceDelegate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_launchServices, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[CNEnvironment currentEnvironment];
  v7 = [v6 entitlementVerifier];
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v11 = 0;
  v8 = [v7 auditToken:v12 hasBooleanEntitlement:CNEntitlementNameContactsUIFrameworkSPI error:&v11];

  if (v8)
  {
    v9 = +[CNLaunchServicesRemoteAdapter launchServicesAdapterInterface];
    [v5 setExportedInterface:v9];
    [v5 setExportedObject:self];
    [v5 resume];
  }

  return v8;
}

- (void)applicationsForUserActivityType:(id)a3 withReply:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  v9 = [v10 applicationsForUserActivityType:v8];

  (*(a4 + 2))(v7, v9, 0);
}

- (void)applicationsAvailableForHandlingURLScheme:(id)a3 withReply:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  v9 = [v10 applicationsAvailableForHandlingURLScheme:v8];

  (*(a4 + 2))(v7, v9, 0);
}

- (void)applicationsAvailableForDefaultAppCategory:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = [a3 integerValue];
  v9 = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  v8 = [v9 applicationsAvailableForDefaultAppCategory:v7];
  v6[2](v6, v8, 0);
}

- (void)defaultApplicationForDefaultAppCategory:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = [a3 integerValue];
  v8 = CNNilToNull;
  v9 = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  v10 = [v9 defaultApplicationForDefaultAppCategory:v7];
  v11 = (*(v8 + 16))(v8, v10);

  v6[2](v6, v11, 0);
}

- (void)applicationForBundleIdentifier:(id)a3 withReply:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  v9 = [v10 applicationForBundleIdentifier:v8];

  (*(a4 + 2))(v7, v9, 0);
}

- (void)openUserActivityData:(id)a3 inApplication:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  [v11 openUserActivityData:v10 inApplication:v9 completionHandler:v8];
}

- (void)openSensitiveURLInBackground:(id)a3 withOptions:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  [v11 openSensitiveURLInBackground:v10 withOptions:v9 completionHandler:v8];
}

@end