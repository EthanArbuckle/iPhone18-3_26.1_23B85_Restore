@interface ApplicationSupportServiceDelegate
+ (ApplicationSupportServiceDelegate)shared;
+ (id)_initializationContextWithDefaultSceneToken:(id)a3;
+ (id)_newApplicationInitializationContext;
- (id)service:(id)a3 initializeClient:(id)a4;
- (void)requestPasscodeUnlockUIForClient:(id)a3 withCompletion:(id)a4;
- (void)setupDelegate;
@end

@implementation ApplicationSupportServiceDelegate

+ (ApplicationSupportServiceDelegate)shared
{
  if (qword_100032110 != -1)
  {
    sub_100012718();
  }

  v3 = qword_100032118;

  return v3;
}

- (void)setupDelegate
{
  v3 = +[UISApplicationSupportService sharedInstance];
  [v3 setDelegate:self];

  v4 = +[UISApplicationSupportService sharedInstance];
  [v4 start];
}

+ (id)_newApplicationInitializationContext
{
  v3 = [FBSceneWorkspace sceneIdentityTokenForIdentifier:@"dre-main-view" workspaceIdentifier:@"com.apple.Device-Recovery-Assistant"];
  v4 = [a1 _initializationContextWithDefaultSceneToken:v3];

  return v4;
}

+ (id)_initializationContextWithDefaultSceneToken:(id)a3
{
  v3 = a3;
  v4 = [[UISMutableDeviceContext alloc] initWithDeviceInfoValues:&__NSDictionary0__struct];
  v5 = +[BSPlatform sharedInstance];
  v6 = [v5 deviceClass];
  v7 = [NSNumber numberWithInt:v6];
  [v4 setDeviceInfoValue:v7 forKey:UISDeviceContextDeviceClassKey];

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 homeButtonType]);
  [v4 setDeviceInfoValue:v8 forKey:UISDeviceContextHomeButtonTypeKey];

  v10 = v6 == -1 || (v6 & 0xFFFFFFFE) == 2;
  v11 = [[UISMutableApplicationInitializationContext alloc] initWithMainDisplayContext:0 launchDisplayContext:0 deviceContext:v4 persistedSceneIdentifiers:0 supportAppSceneRequests:v10];
  [v11 setDefaultSceneToken:v3];

  return v11;
}

- (id)service:(id)a3 initializeClient:(id)a4
{
  v4 = [UISMutableDisplayContext alloc];
  v5 = +[FBDisplayManager sharedInstance];
  v6 = [v5 mainConfiguration];
  v7 = [v4 initWithDisplayConfiguration:v6];

  v8 = [[UISMutableDeviceContext alloc] initWithDeviceInfoValues:&__NSDictionary0__struct];
  v9 = [[UISMutableApplicationInitializationContext alloc] initWithMainDisplayContext:v7 launchDisplayContext:v7 deviceContext:v8 persistedSceneIdentifiers:0 supportAppSceneRequests:1];

  return v9;
}

- (void)requestPasscodeUnlockUIForClient:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

@end