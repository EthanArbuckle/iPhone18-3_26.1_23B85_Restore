@interface BouncyFromRectAnimation
- (_TtC20ProductPageExtension23BouncyFromRectAnimation)init;
- (void)animateTransition:(id)transition;
@end

@implementation BouncyFromRectAnimation

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1005E2824(transition);
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC20ProductPageExtension23BouncyFromRectAnimation_shouldAnimateTabBar) == 1)
  {
    sub_1005E266C(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC20ProductPageExtension23BouncyFromRectAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end