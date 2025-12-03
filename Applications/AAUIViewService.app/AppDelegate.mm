@interface AppDelegate
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
@end

@implementation AppDelegate

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  activityCopy = activity;
  v6 = objc_alloc_init(AAUIViewServiceURLHandler);
  v7 = [(AAUIViewServiceURLHandler *)v6 handleUniversalLinkInUserActivity:activityCopy];

  return v7;
}

@end