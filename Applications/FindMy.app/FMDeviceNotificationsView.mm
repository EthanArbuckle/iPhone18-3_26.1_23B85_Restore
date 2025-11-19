@interface FMDeviceNotificationsView
- (void)notifyWhenDetachedRowTap;
- (void)notifyWhenLeftBehindRowTap;
- (void)setupSubviews;
@end

@implementation FMDeviceNotificationsView

- (void)setupSubviews
{
  v2 = self;
  sub_100241554();
}

- (void)notifyWhenDetachedRowTap
{
  v2 = self;
  sub_100242E20();
}

- (void)notifyWhenLeftBehindRowTap
{
  v2 = self;
  sub_100242E88();
}

@end