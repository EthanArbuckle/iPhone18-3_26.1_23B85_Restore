@interface FadeInPresentationAnimator
- (_TtC22SubscribePageExtension26FadeInPresentationAnimator)init;
- (void)animateTransition:(id)a3;
@end

@implementation FadeInPresentationAnimator

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10049F824(a3);
  swift_unknownObjectRelease();
}

- (_TtC22SubscribePageExtension26FadeInPresentationAnimator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FadeInPresentationAnimator *)&v3 init];
}

@end