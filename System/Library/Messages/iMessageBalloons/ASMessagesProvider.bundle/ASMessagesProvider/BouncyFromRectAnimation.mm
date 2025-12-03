@interface BouncyFromRectAnimation
- (_TtC18ASMessagesProvider23BouncyFromRectAnimation)init;
- (void)animateTransition:(id)transition;
@end

@implementation BouncyFromRectAnimation

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AAE48(transition);
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23BouncyFromRectAnimation_shouldAnimateTabBar) == 1)
  {
    sub_1AAC90(transition);
  }

  swift_unknownObjectRelease();
}

- (_TtC18ASMessagesProvider23BouncyFromRectAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end