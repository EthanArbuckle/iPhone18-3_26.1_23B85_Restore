@interface BouncyToRectAnimation
- (_TtC18ASMessagesProvider21BouncyToRectAnimation)init;
- (void)animateTransition:(id)transition;
@end

@implementation BouncyToRectAnimation

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_B584C(0);
  sub_6AAAE8(transition);
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21BouncyToRectAnimation_shouldAnimateTabBar) != 1)
  {
    goto LABEL_5;
  }

  v5 = [transition viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    sub_2B49D4(v7, transition, 0);

LABEL_5:
    swift_unknownObjectRelease();
    v8 = selfCopy;
    goto LABEL_6;
  }

  swift_unknownObjectRelease();

  v8 = v6;
LABEL_6:
}

- (_TtC18ASMessagesProvider21BouncyToRectAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end