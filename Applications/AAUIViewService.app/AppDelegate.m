@interface AppDelegate
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v5 = a4;
  v6 = objc_alloc_init(AAUIViewServiceURLHandler);
  v7 = [(AAUIViewServiceURLHandler *)v6 handleUniversalLinkInUserActivity:v5];

  return v7;
}

@end