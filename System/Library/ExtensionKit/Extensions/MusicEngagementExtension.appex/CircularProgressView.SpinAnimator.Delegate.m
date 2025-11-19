@interface CircularProgressView.SpinAnimator.Delegate
- (_TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate)init;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation CircularProgressView.SpinAnimator.Delegate

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop);
  if (v4)
  {
    v6 = a3;
    v7 = self;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v4);
    v4(v6);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4);
  }
}

- (_TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end