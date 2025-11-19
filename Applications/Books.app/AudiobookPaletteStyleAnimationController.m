@interface AudiobookPaletteStyleAnimationController
+ (id)paletteStyleOpenAnimatorWithInteraction:(id)a3 traits:(id)a4 forceFullSlide:(BOOL)a5;
- (_TtC5Books40AudiobookPaletteStyleAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
@end

@implementation AudiobookPaletteStyleAnimationController

+ (id)paletteStyleOpenAnimatorWithInteraction:(id)a3 traits:(id)a4 forceFullSlide:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _s5Books40AudiobookPaletteStyleAnimationControllerC07paletteD12OpenAnimator11interaction6traits14forceFullSlideSo08_UISheeteF0CAA0C23PresentationInteractionCSg_So17UITraitCollectionCSgSbtFZ_0(a3, a4, a5);

  return v10;
}

- (_TtC5Books40AudiobookPaletteStyleAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)interruptibleAnimatorForTransition:(id)a3
{
  v5 = self->_UISheetAnimationController_opaque[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_isPrepared];
  swift_unknownObjectRetain();
  v6 = self;
  if ((v5 & 1) == 0)
  {
    sub_10025A040(a3);
  }

  v9.receiver = v6;
  v9.super_class = type metadata accessor for AudiobookPaletteStyleAnimationController();
  v7 = [(AudiobookPaletteStyleAnimationController *)&v9 interruptibleAnimatorForTransition:a3];
  swift_unknownObjectRelease();

  return v7;
}

- (void)animationEnded:(BOOL)a3
{
  v4 = self;
  AudiobookPaletteStyleAnimationController.animationEnded(_:)(a3);
}

@end