@interface _SCNUIApplicationObserver
+ (id)sharedInstance;
@end

@implementation _SCNUIApplicationObserver

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_SCNUIApplicationObserver sharedInstance];
  }

  return sharedInstance_sharedInstance;
}

@end