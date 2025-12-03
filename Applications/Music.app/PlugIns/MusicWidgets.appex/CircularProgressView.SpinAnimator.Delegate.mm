@interface CircularProgressView.SpinAnimator.Delegate
- (_TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate)init;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation CircularProgressView.SpinAnimator.Delegate

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop);
  if (v4)
  {
    stopCopy = stop;
    selfCopy = self;
    sub_1000E672C(v4);
    v4(stopCopy);

    sub_1000F3E14(v4);
  }
}

- (_TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end