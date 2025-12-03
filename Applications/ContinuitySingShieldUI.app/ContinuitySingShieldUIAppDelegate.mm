@interface ContinuitySingShieldUIAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation ContinuitySingShieldUIAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = sub_100005368();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v10 = 136315650;
    v11 = "[ContinuitySingShieldUIAppDelegate application:didFinishLaunchingWithOptions:]";
    v12 = 2048;
    selfCopy2 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> add ui state tracker %@", &v10, 0x20u);
  }

  v7 = sub_100005368();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = +[ContinuityCaptureShieldUIBackgroundPauseManager sharedInstance];
    v10 = 136315650;
    v11 = "[ContinuitySingShieldUIAppDelegate application:didFinishLaunchingWithOptions:]";
    v12 = 2048;
    selfCopy2 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: <%p> add background pause event manager %@", &v10, 0x20u);
  }

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = [UISceneConfiguration alloc];
  role = [sessionCopy role];
  v8 = [v6 initWithName:0 sessionRole:role];

  role2 = [sessionCopy role];
  v10 = [role2 isEqualToString:UIWindowSceneSessionRoleApplication];

  if (v10)
  {
    v11 = off_100018250;
  }

  else
  {
    role3 = [sessionCopy role];
    v13 = [role3 isEqualToString:_UIWindowSceneSessionTypeCoverSheet];

    if (!v13)
    {
      goto LABEL_6;
    }

    v11 = &off_100018258;
  }

  v14 = *v11;
  [v8 setDelegateClass:objc_opt_class()];
LABEL_6:

  return v8;
}

@end