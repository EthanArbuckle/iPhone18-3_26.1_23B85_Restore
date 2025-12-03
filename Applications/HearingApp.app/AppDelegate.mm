@interface AppDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  configuration = [session configuration];
  v6 = objc_opt_self();
  [configuration setDelegateClass:v6];

  return configuration;
}

@end