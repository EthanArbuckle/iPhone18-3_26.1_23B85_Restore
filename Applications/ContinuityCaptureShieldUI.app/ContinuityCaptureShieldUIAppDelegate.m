@interface ContinuityCaptureShieldUIAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation ContinuityCaptureShieldUIAppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = sub_100006DC0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v10 = 136315650;
    v11 = "[ContinuityCaptureShieldUIAppDelegate application:didFinishLaunchingWithOptions:]";
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> add ui state tracker %@", &v10, 0x20u);
  }

  v7 = sub_100006DC0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = +[ContinuityCaptureShieldUIBackgroundPauseManager sharedInstance];
    v10 = 136315650;
    v11 = "[ContinuityCaptureShieldUIAppDelegate application:didFinishLaunchingWithOptions:]";
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: <%p> add background pause event manager %@", &v10, 0x20u);
  }

  return 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [UISceneConfiguration alloc];
  v7 = [v5 role];
  v8 = [v6 initWithName:0 sessionRole:v7];

  v9 = [v5 role];
  v10 = [v9 isEqualToString:UIWindowSceneSessionRoleApplication];

  if (v10)
  {
    v11 = off_100018238;
  }

  else
  {
    v12 = [v5 role];
    v13 = [v12 isEqualToString:_UIWindowSceneSessionTypeCoverSheet];

    if (!v13)
    {
      goto LABEL_6;
    }

    v11 = &off_100018240;
  }

  v14 = *v11;
  [v8 setDelegateClass:objc_opt_class()];
LABEL_6:

  return v8;
}

@end