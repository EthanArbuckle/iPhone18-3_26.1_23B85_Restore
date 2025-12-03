@interface LockScreenContainerView
- (_TtC15SleepLockScreen23LockScreenContainerView)initWithFrame:(CGRect)frame;
- (void)didPan:(id)pan;
- (void)layoutSubviews;
@end

@implementation LockScreenContainerView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100002B98();
}

- (void)didPan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  sub_100003554(panCopy);
}

- (_TtC15SleepLockScreen23LockScreenContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end