@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v10 = [UIWindow alloc];
  v12 = +[UIScreen mainScreen];
  [(UIScreen *)v12 bounds];
  v11 = [v10 initWithFrame:{v4, v5, v6, v7}];
  [(AppDelegate *)v20 setWindow:?];
  _objc_release(v11);
  _objc_release(v12);
  v14 = +[UIColor blackColor];
  v13 = [(AppDelegate *)v20 window];
  [(UIWindow *)v13 setBackgroundColor:v14];
  _objc_release(v13);
  _objc_release(v14);
  v16 = objc_opt_new();
  v15 = [(AppDelegate *)v20 window];
  [(UIWindow *)v15 setRootViewController:v16];
  _objc_release(v15);
  _objc_release(v16);
  v17 = [(AppDelegate *)v20 window];
  [(UIWindow *)v17 makeKeyAndVisible];
  _objc_release(v17);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end