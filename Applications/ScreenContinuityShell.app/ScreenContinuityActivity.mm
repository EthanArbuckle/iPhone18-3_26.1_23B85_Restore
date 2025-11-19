@interface ScreenContinuityActivity
- (_TtC21ScreenContinuityShell24ScreenContinuityActivity)init;
@end

@implementation ScreenContinuityActivity

- (_TtC21ScreenContinuityShell24ScreenContinuityActivity)init
{
  *(&self->super.isa + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_activity) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScreenContinuityActivity();
  return [(ScreenContinuityActivity *)&v3 init];
}

@end