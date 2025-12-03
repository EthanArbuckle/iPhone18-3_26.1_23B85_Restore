@interface CallStateNotificationManager
- (void)callStateChanged:(id)changed;
@end

@implementation CallStateNotificationManager

- (void)callStateChanged:(id)changed
{
  changedCopy = changed;

  CallStateNotificationManager.callStateChanged(_:)(changedCopy);
}

@end