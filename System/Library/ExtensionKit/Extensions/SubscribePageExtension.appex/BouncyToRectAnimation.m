@interface BouncyToRectAnimation
- (_TtC22SubscribePageExtension21BouncyToRectAnimation)init;
- (void)animateTransition:(id)a3;
@end

@implementation BouncyToRectAnimation

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v9 = self;
  sub_100524128(0);
  sub_10002CBAC(a3);
  if (*(&v9->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21BouncyToRectAnimation_shouldAnimateTabBar) != 1)
  {
    goto LABEL_5;
  }

  v5 = [a3 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    sub_1004BC5EC(v7, a3, 0);

LABEL_5:
    swift_unknownObjectRelease();
    v8 = v9;
    goto LABEL_6;
  }

  swift_unknownObjectRelease();

  v8 = v6;
LABEL_6:
}

- (_TtC22SubscribePageExtension21BouncyToRectAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end