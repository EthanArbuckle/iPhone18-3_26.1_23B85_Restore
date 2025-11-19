@interface ContactsAppDelegate
+ (OS_os_log)log;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (ContactsAppDelegate)init;
- (ContactsAppDelegate)initWithCapabilitiesManager:(id)a3 mainBundle:(id)a4 schedulerProvider:(id)a5;
- (ContactsSceneDelegate)mainSceneDelegate;
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation ContactsAppDelegate

- (ContactsAppDelegate)init
{
  v3 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v4 = +[NSBundle mainBundle];
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  v6 = [v5 defaultSchedulerProvider];
  v7 = [(ContactsAppDelegate *)self initWithCapabilitiesManager:v3 mainBundle:v4 schedulerProvider:v6];

  return v7;
}

+ (OS_os_log)log
{
  if (qword_100029278 != -1)
  {
    sub_10000F310();
  }

  v3 = qword_100029280;

  return v3;
}

- (ContactsAppDelegate)initWithCapabilitiesManager:(id)a3 mainBundle:(id)a4 schedulerProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ContactsAppDelegate;
  v12 = [(ContactsAppDelegate *)&v15 init];
  if (v12)
  {
    kdebug_trace();
    objc_storeStrong(&v12->_capabilitiesManager, a3);
    objc_storeStrong(&v12->_mainBundle, a4);
    objc_storeStrong(&v12->_schedulerProvider, a5);
    kdebug_trace();
    v13 = v12;
  }

  return v12;
}

- (ContactsSceneDelegate)mainSceneDelegate
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 connectedScenes];
  v4 = [v3 allObjects];
  v5 = [v4 firstObject];

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 connectedScenes];
  v8 = [v7 _cn_firstObjectPassingTest:&stru_100020530];

  objc_opt_class();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  v10 = [v9 delegate];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v5 = a4;
  kdebug_trace();
  v6 = UIApplicationLaunchOptionsSearchResultIdentifierKey;
  v7 = [v5 objectForKeyedSubscript:UIApplicationLaunchOptionsSearchResultIdentifierKey];

  if (v7)
  {
    objc_opt_class();
    v8 = [v5 objectForKeyedSubscript:v6];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if ((*(CNIsStringEmpty + 16))(CNIsStringEmpty, v10))
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10000F324(v10, v11);
      }
    }

    else
    {
      v11 = [(ContactsAppDelegate *)self mainSceneDelegate];
      [v11 showContactWithIdentifier:v10];
    }
  }

  kdebug_trace();

  return 1;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = a3;
  kdebug_trace();
  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    v5 = [v4 statusBar];
    [v5 setAlpha:0.0];
  }

  kdebug_trace();

  return 1;
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ContactsAppDelegate *)self mainSceneDelegate];
  v10 = [v9 runTest:v8 options:v7];

  return v10;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ContactsAppDelegate;
  [(ContactsAppDelegate *)&v10 buildMenuWithBuilder:v4];
  v5 = [v4 system];
  v6 = +[UIMenuSystem mainSystem];

  if (v5 == v6)
  {
    v8 = +[CNContactMenuBarManager sharedInstance];
    v7 = [v8 navigationViewController];

    if (objc_opt_respondsToSelector())
    {
      [v7 setUpMenuBarWithBuilder:v4];
    }

    else
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000F3E0(v9);
      }
    }
  }

  else
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000F39C(v7);
    }
  }
}

@end