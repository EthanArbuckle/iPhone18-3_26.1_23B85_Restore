@interface ReflowTextView.WeakBackpointer
- (void)stepAnimation;
@end

@implementation ReflowTextView.WeakBackpointer

- (void)stepAnimation
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    ReflowTextView.stepAnimation()();
  }
}

@end