@interface PalettePresentationAnimationController
- (_TtC5Music38PalettePresentationAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
@end

@implementation PalettePresentationAnimationController

- (_TtC5Music38PalettePresentationAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)interruptibleAnimatorForTransition:(id)transition
{
  v5 = self->_UISheetAnimationController_opaque[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_isPrepared];
  swift_unknownObjectRetain();
  selfCopy = self;
  if ((v5 & 1) == 0)
  {
    sub_10054492C(transition);
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
  sub_10054622C(ended);
}

@end