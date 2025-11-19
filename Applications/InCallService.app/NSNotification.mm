@interface NSNotification
+ (id)PHAlertInvoked;
@end

@implementation NSNotification

+ (id)PHAlertInvoked
{
  static NSNotification.PHAlertInvoked.getter();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end