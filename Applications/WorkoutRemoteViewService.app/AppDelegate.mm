@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, application);
  v18 = 0;
  objc_storeStrong(&v18, options);
  v10 = [UIWindow alloc];
  v12 = +[UIScreen mainScreen];
  [(UIScreen *)v12 bounds];
  v11 = [v10 initWithFrame:{v4, v5, v6, v7}];
  [(AppDelegate *)selfCopy setWindow:?];
  _objc_release(v11);
  _objc_release(v12);
  v14 = +[UIColor blackColor];
  window = [(AppDelegate *)selfCopy window];
  [(UIWindow *)window setBackgroundColor:v14];
  _objc_release(window);
  _objc_release(v14);
  v16 = objc_opt_new();
  window2 = [(AppDelegate *)selfCopy window];
  [(UIWindow *)window2 setRootViewController:v16];
  _objc_release(window2);
  _objc_release(v16);
  window3 = [(AppDelegate *)selfCopy window];
  [(UIWindow *)window3 makeKeyAndVisible];
  _objc_release(window3);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end