@interface TimerAlertView
- (_TtC10ClockAngel14TimerAlertView)initWithCoder:(id)a3;
- (_TtC10ClockAngel14TimerAlertView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation TimerAlertView

- (void)layoutSubviews
{
  v2 = self;
  sub_100099418();
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1000997F4();
}

- (_TtC10ClockAngel14TimerAlertView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_titleLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC10ClockAngel14TimerAlertView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end