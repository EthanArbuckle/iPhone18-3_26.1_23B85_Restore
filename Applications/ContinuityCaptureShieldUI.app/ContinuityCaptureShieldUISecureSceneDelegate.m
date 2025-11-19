@interface ContinuityCaptureShieldUISecureSceneDelegate
- (id)createWindowForScene:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation ContinuityCaptureShieldUISecureSceneDelegate

- (id)createWindowForScene:(id)a3
{
  v3 = a3;
  v4 = [[ContinuityCaptureShieldUISecureWindow alloc] initWithWindowScene:v3];

  return v4;
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = sub_100006DC0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ContinuityCaptureShieldUISecureSceneDelegate sceneWillEnterForeground:]";
    v8 = 2048;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> Called %@", &v6, 0x20u);
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = sub_100006DC0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ContinuityCaptureShieldUISecureSceneDelegate sceneDidEnterBackground:]";
    v8 = 2048;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> Called %@", &v6, 0x20u);
  }
}

@end