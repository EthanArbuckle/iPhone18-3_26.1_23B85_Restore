@interface FadeOutDismissalAnimator
- (_TtC22SubscribePageExtension24FadeOutDismissalAnimator)init;
- (void)animateTransition:(id)a3;
@end

@implementation FadeOutDismissalAnimator

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1005BC4A4(a3);
  swift_unknownObjectRelease();
}

- (_TtC22SubscribePageExtension24FadeOutDismissalAnimator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FadeOutDismissalAnimator *)&v3 init];
}

@end