@interface CARSettingsAppDelegate
+ (CARSettingsAppDelegate)sharedDelegate;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
@end

@implementation CARSettingsAppDelegate

+ (CARSettingsAppDelegate)sharedDelegate
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  return delegate;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = objc_alloc_init(CARCarManager);
  carManager = self->_carManager;
  self->_carManager = v5;

  v7 = objc_alloc_init(CARSignpostManager);
  signpostManager = self->_signpostManager;
  self->_signpostManager = v7;

  v9 = sub_10001C784();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10009169C(v9);
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 removeObjectForKey:@"CARLastPanelKey"];

  v11 = +[UNUserNotificationCenter currentNotificationCenter];
  [v11 setDelegate:self];

  v12 = [NSSet alloc];
  v13 = [UNNotificationCategory categoryWithIdentifier:@"CarPlaySettings" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:2];
  v18 = v13;
  v14 = [NSArray arrayWithObjects:&v18 count:1];
  v15 = [v12 initWithArray:v14];

  v16 = +[UNUserNotificationCenter currentNotificationCenter];
  [v16 setNotificationCategories:v15];

  +[CARSignpostManager emitLaunched];
  return 1;
}

@end