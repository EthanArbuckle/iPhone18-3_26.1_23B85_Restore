@interface FadeInPresentationAnimator
- (_TtC22SubscribePageExtension26FadeInPresentationAnimator)init;
- (void)animateTransition:(id)transition;
@end

@implementation FadeInPresentationAnimator

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10049F824(transition);
  swift_unknownObjectRelease();
}

- (_TtC22SubscribePageExtension26FadeInPresentationAnimator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FadeInPresentationAnimator *)&v3 init];
}

@end