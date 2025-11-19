@interface LockScreenContainerView
- (_TtC15SleepLockScreen23LockScreenContainerView)initWithFrame:(CGRect)a3;
- (void)didPan:(id)a3;
- (void)layoutSubviews;
@end

@implementation LockScreenContainerView

- (void)layoutSubviews
{
  v2 = self;
  sub_100002B98();
}

- (void)didPan:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100003554(v4);
}

- (_TtC15SleepLockScreen23LockScreenContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end