@interface TimerAlertView
- (_TtC10ClockAngel14TimerAlertView)initWithCoder:(id)coder;
- (_TtC10ClockAngel14TimerAlertView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation TimerAlertView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100099418();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1000997F4();
}

- (_TtC10ClockAngel14TimerAlertView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_titleLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC10ClockAngel14TimerAlertView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end