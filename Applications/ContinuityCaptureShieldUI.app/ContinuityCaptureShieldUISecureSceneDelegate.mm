@interface ContinuityCaptureShieldUISecureSceneDelegate
- (id)createWindowForScene:(id)scene;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation ContinuityCaptureShieldUISecureSceneDelegate

- (id)createWindowForScene:(id)scene
{
  sceneCopy = scene;
  v4 = [[ContinuityCaptureShieldUISecureWindow alloc] initWithWindowScene:sceneCopy];

  return v4;
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = sub_100006DC0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ContinuityCaptureShieldUISecureSceneDelegate sceneWillEnterForeground:]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = foregroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> Called %@", &v6, 0x20u);
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = sub_100006DC0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ContinuityCaptureShieldUISecureSceneDelegate sceneDidEnterBackground:]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = backgroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> Called %@", &v6, 0x20u);
  }
}

@end