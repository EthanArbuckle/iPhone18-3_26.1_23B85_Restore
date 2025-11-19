@interface ATXLocationManager(Singleton)
+ (id)sharedInstance;
@end

@implementation ATXLocationManager(Singleton)

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[ATXLocationManager(Singleton) sharedInstance];
  }

  v1 = sharedInstance_instance_1;

  return v1;
}

@end