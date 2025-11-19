@interface PalettePresentationAnimationController
- (_TtC5Music38PalettePresentationAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
@end

@implementation PalettePresentationAnimationController

- (_TtC5Music38PalettePresentationAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)interruptibleAnimatorForTransition:(id)a3
{
  v5 = self->_UISheetAnimationController_opaque[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_isPrepared];
  swift_unknownObjectRetain();
  v6 = self;
  if ((v5 & 1) == 0)
  {
    sub_10054492C(a3);
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
  sub_10054622C(a3);
}

@end