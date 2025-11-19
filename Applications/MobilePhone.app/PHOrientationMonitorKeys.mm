@interface PHOrientationMonitorKeys
+ (NSString)notificationDeviceKey;
+ (NSString)notificationEvent;
+ (NSString)notificationInterfaceKey;
+ (NSString)notificationValidKey;
- (PHOrientationMonitorKeys)init;
@end

@implementation PHOrientationMonitorKeys

+ (NSString)notificationEvent
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)notificationValidKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)notificationDeviceKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)notificationInterfaceKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (PHOrientationMonitorKeys)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OrientationMonitorKeys();
  return [(PHOrientationMonitorKeys *)&v3 init];
}

@end