@interface NSFileManager(LaunchServicesAdditions)
+ (id)_LS_frameworkFileManager;
@end

@implementation NSFileManager(LaunchServicesAdditions)

+ (id)_LS_frameworkFileManager
{
  if (_LS_frameworkFileManager_onceToken != -1)
  {
    +[NSFileManager(LaunchServicesAdditions) _LS_frameworkFileManager];
  }

  v1 = _LS_frameworkFileManager_manager;

  return v1;
}

@end