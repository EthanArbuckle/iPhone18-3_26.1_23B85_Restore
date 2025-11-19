@interface AppDelegate
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation AppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = [a4 configuration];
  v6 = objc_opt_self();
  [v5 setDelegateClass:v6];

  return v5;
}

@end