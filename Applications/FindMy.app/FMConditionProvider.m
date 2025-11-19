@interface FMConditionProvider
- (void)accountChangedNotificationReceivedWithNotification:(id)a3;
- (void)airplaneModeChanged;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)checkNetworkState;
- (void)refreshRestrictions;
@end

@implementation FMConditionProvider

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10005D1D4(v4);
}

- (void)accountChangedNotificationReceivedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10041F654(v4);
}

- (void)airplaneModeChanged
{
  v2 = self;
  sub_100420080();
}

- (void)checkNetworkState
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_networkMonitor);
  v4 = self;
  v3 = [v2 isNetworkUp];
  *(&v4->super.isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp) = v3;
  sub_10041DAF8();
}

- (void)refreshRestrictions
{
  v2 = self;
  sub_100422020();
}

@end