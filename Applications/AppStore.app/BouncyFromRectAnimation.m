@interface BouncyFromRectAnimation
- (_TtC8AppStore23BouncyFromRectAnimation)init;
- (void)animateTransition:(id)a3;
@end

@implementation BouncyFromRectAnimation

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10017AEAC(a3);
  if (*(&v5->super.super.isa + OBJC_IVAR____TtC8AppStore23BouncyFromRectAnimation_shouldAnimateTabBar) == 1)
  {
    sub_10017ACF4(a3);
  }

  swift_unknownObjectRelease();
}

- (_TtC8AppStore23BouncyFromRectAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end