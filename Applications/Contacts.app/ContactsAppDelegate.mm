@interface ContactsAppDelegate
+ (OS_os_log)log;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (ContactsAppDelegate)init;
- (ContactsAppDelegate)initWithCapabilitiesManager:(id)manager mainBundle:(id)bundle schedulerProvider:(id)provider;
- (ContactsSceneDelegate)mainSceneDelegate;
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation ContactsAppDelegate

- (ContactsAppDelegate)init
{
  v3 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v4 = +[NSBundle mainBundle];
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v5 defaultSchedulerProvider];
  v7 = [(ContactsAppDelegate *)self initWithCapabilitiesManager:v3 mainBundle:v4 schedulerProvider:defaultSchedulerProvider];

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

- (ContactsAppDelegate)initWithCapabilitiesManager:(id)manager mainBundle:(id)bundle schedulerProvider:(id)provider
{
  managerCopy = manager;
  bundleCopy = bundle;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = ContactsAppDelegate;
  v12 = [(ContactsAppDelegate *)&v15 init];
  if (v12)
  {
    kdebug_trace();
    objc_storeStrong(&v12->_capabilitiesManager, manager);
    objc_storeStrong(&v12->_mainBundle, bundle);
    objc_storeStrong(&v12->_schedulerProvider, provider);
    kdebug_trace();
    v13 = v12;
  }

  return v12;
}

- (ContactsSceneDelegate)mainSceneDelegate
{
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];
  allObjects = [connectedScenes allObjects];
  firstObject = [allObjects firstObject];

  v6 = +[UIApplication sharedApplication];
  connectedScenes2 = [v6 connectedScenes];
  v8 = [connectedScenes2 _cn_firstObjectPassingTest:&stru_100020530];

  objc_opt_class();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = firstObject;
  }

  delegate = [v9 delegate];
  if (objc_opt_isKindOfClass())
  {
    v11 = delegate;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  kdebug_trace();
  v6 = UIApplicationLaunchOptionsSearchResultIdentifierKey;
  v7 = [optionsCopy objectForKeyedSubscript:UIApplicationLaunchOptionsSearchResultIdentifierKey];

  if (v7)
  {
    objc_opt_class();
    v8 = [optionsCopy objectForKeyedSubscript:v6];
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
      mainSceneDelegate = [objc_opt_class() log];
      if (os_log_type_enabled(mainSceneDelegate, OS_LOG_TYPE_ERROR))
      {
        sub_10000F324(v10, mainSceneDelegate);
      }
    }

    else
    {
      mainSceneDelegate = [(ContactsAppDelegate *)self mainSceneDelegate];
      [mainSceneDelegate showContactWithIdentifier:v10];
    }
  }

  kdebug_trace();

  return 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  kdebug_trace();
  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    statusBar = [applicationCopy statusBar];
    [statusBar setAlpha:0.0];
  }

  kdebug_trace();

  return 1;
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  testCopy = test;
  mainSceneDelegate = [(ContactsAppDelegate *)self mainSceneDelegate];
  v10 = [mainSceneDelegate runTest:testCopy options:optionsCopy];

  return v10;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v10.receiver = self;
  v10.super_class = ContactsAppDelegate;
  [(ContactsAppDelegate *)&v10 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  v6 = +[UIMenuSystem mainSystem];

  if (system == v6)
  {
    v8 = +[CNContactMenuBarManager sharedInstance];
    navigationViewController = [v8 navigationViewController];

    if (objc_opt_respondsToSelector())
    {
      [navigationViewController setUpMenuBarWithBuilder:builderCopy];
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
    navigationViewController = [objc_opt_class() log];
    if (os_log_type_enabled(navigationViewController, OS_LOG_TYPE_ERROR))
    {
      sub_10000F39C(navigationViewController);
    }
  }
}

@end