@interface FMConditionProvider
- (void)accountChangedNotificationReceivedWithNotification:(id)notification;
- (void)airplaneModeChanged;
- (void)centralManagerDidUpdateState:(id)state;
- (void)checkNetworkState;
- (void)refreshRestrictions;
@end

@implementation FMConditionProvider

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_10005D1D4(stateCopy);
}

- (void)accountChangedNotificationReceivedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10041F654(notificationCopy);
}

- (void)airplaneModeChanged
{
  selfCopy = self;
  sub_100420080();
}

- (void)checkNetworkState
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_networkMonitor);
  selfCopy = self;
  isNetworkUp = [v2 isNetworkUp];
  *(&selfCopy->super.isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp) = isNetworkUp;
  sub_10041DAF8();
}

- (void)refreshRestrictions
{
  selfCopy = self;
  sub_100422020();
}

@end