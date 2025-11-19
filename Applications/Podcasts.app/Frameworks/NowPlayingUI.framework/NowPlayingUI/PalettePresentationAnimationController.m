@interface PalettePresentationAnimationController
- (_TtC12NowPlayingUI38PalettePresentationAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
@end

@implementation PalettePresentationAnimationController

- (_TtC12NowPlayingUI38PalettePresentationAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)interruptibleAnimatorForTransition:(id)a3
{
  v5 = *&self->_UISheetAnimationController_opaque[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_ascentDescentAnimator];
  swift_unknownObjectRetain();
  v6 = self;
  if (!v5)
  {
    sub_79B50(a3);
  }

  v9.receiver = v6;
  v9.super_class = type metadata accessor for PalettePresentationAnimationController();
  v7 = [(PalettePresentationAnimationController *)&v9 interruptibleAnimatorForTransition:a3];
  swift_unknownObjectRelease();

  return v7;
}

- (void)animationEnded:(BOOL)a3
{
  v4 = self;
  sub_7B2F4(a3);
}

@end