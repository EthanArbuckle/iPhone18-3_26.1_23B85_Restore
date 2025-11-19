@interface _MSExtensionGlobalState
+ (id)sharedInstance;
@end

@implementation _MSExtensionGlobalState

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_MSExtensionGlobalState sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

@end