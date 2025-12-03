@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = [UINavigationController alloc];
  v6 = objc_opt_new();
  v7 = [v5 initWithRootViewController:v6];

  v8 = [UIWindow alloc];
  v9 = +[UIScreen mainScreen];
  [v9 bounds];
  v10 = [v8 initWithFrame:?];
  [(AppDelegate *)self setWindow:v10];

  v11 = +[UIColor blackColor];
  window = [(AppDelegate *)self window];
  [window setBackgroundColor:v11];

  window2 = [(AppDelegate *)self window];
  [window2 setRootViewController:v7];

  window3 = [(AppDelegate *)self window];
  [window3 makeKeyAndVisible];

  return 1;
}

@end