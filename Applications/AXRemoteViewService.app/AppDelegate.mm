@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
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
  v12 = [(AppDelegate *)self window];
  [v12 setBackgroundColor:v11];

  v13 = [(AppDelegate *)self window];
  [v13 setRootViewController:v7];

  v14 = [(AppDelegate *)self window];
  [v14 makeKeyAndVisible];

  return 1;
}

@end