@interface BouncyToRectAnimation
- (_TtC8AppStore21BouncyToRectAnimation)init;
- (void)animateTransition:(id)transition;
@end

@implementation BouncyToRectAnimation

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1005F3D78(0);
  sub_100475CD4(transition);
  if (*(&selfCopy->super.super.isa + OBJC_IVAR____TtC8AppStore21BouncyToRectAnimation_shouldAnimateTabBar) != 1)
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
    sub_100481F04(v7, transition, 0);

LABEL_5:
    swift_unknownObjectRelease();
    v8 = selfCopy;
    goto LABEL_6;
  }

  swift_unknownObjectRelease();

  v8 = v6;
LABEL_6:
}

- (_TtC8AppStore21BouncyToRectAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end