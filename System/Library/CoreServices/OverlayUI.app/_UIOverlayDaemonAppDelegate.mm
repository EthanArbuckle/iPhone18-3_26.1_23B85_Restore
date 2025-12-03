@interface _UIOverlayDaemonAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation _UIOverlayDaemonAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v4 = UIOLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[_UIOverlayDaemonAppDelegate application:didFinishLaunchingWithOptions:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s", &v6, 0xCu);
  }

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  optionsCopy = options;
  _specification = [optionsCopy _specification];
  overlayAppSceneConfigurationName = [_specification overlayAppSceneConfigurationName];

  if (!overlayAppSceneConfigurationName)
  {
    overlayAppSceneConfigurationName = UIOOverlayScenePersistenceIdentifier;
    _fbsScene = [optionsCopy _fbsScene];
    identifier = [_fbsScene identifier];

    if ([identifier containsString:@"Subterranean"])
    {
      v10 = UIOSubterraneanScenePersistenceIdentifier;

      overlayAppSceneConfigurationName = v10;
    }
  }

  v11 = [[UISceneConfiguration alloc] initWithName:overlayAppSceneConfigurationName sessionRole:UIWindowSceneSessionRoleApplication];

  return v11;
}

@end