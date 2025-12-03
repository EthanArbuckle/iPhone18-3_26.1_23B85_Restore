@interface FadeOutDismissalAnimator
- (_TtC22SubscribePageExtension24FadeOutDismissalAnimator)init;
- (void)animateTransition:(id)transition;
@end

@implementation FadeOutDismissalAnimator

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1005BC4A4(transition);
  swift_unknownObjectRelease();
}

- (_TtC22SubscribePageExtension24FadeOutDismissalAnimator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FadeOutDismissalAnimator *)&v3 init];
}

@end