@interface PalettePresentationAnimationController
- (_TtC12NowPlayingUI38PalettePresentationAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
@end

@implementation PalettePresentationAnimationController

- (_TtC12NowPlayingUI38PalettePresentationAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)interruptibleAnimatorForTransition:(id)transition
{
  v5 = *&self->_UISheetAnimationController_opaque[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_ascentDescentAnimator];
  swift_unknownObjectRetain();
  selfCopy = self;
  if (!v5)
  {
    sub_79B50(transition);
  }

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for PalettePresentationAnimationController();
  v7 = [(PalettePresentationAnimationController *)&v9 interruptibleAnimatorForTransition:transition];
  swift_unknownObjectRelease();

  return v7;
}

- (void)animationEnded:(BOOL)ended
{
  selfCopy = self;
  sub_7B2F4(ended);
}

@end