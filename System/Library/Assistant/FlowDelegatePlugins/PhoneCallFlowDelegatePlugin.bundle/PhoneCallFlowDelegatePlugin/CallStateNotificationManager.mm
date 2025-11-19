@interface CallStateNotificationManager
- (void)callStateChanged:(id)a3;
@end

@implementation CallStateNotificationManager

- (void)callStateChanged:(id)a3
{
  v3 = a3;

  CallStateNotificationManager.callStateChanged(_:)(v3);
}

@end