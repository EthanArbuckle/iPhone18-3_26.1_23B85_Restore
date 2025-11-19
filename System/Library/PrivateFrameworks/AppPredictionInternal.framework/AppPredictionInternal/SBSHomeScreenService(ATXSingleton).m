@interface SBSHomeScreenService(ATXSingleton)
+ (id)atx_sharedInstance;
@end

@implementation SBSHomeScreenService(ATXSingleton)

+ (id)atx_sharedInstance
{
  if (atx_sharedInstance_onceToken != -1)
  {
    +[SBSHomeScreenService(ATXSingleton) atx_sharedInstance];
  }

  v1 = atx_sharedInstance_service;

  return v1;
}

@end