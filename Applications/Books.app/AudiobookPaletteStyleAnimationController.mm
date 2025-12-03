@interface AudiobookPaletteStyleAnimationController
+ (id)paletteStyleOpenAnimatorWithInteraction:(id)interaction traits:(id)traits forceFullSlide:(BOOL)slide;
- (_TtC5Books40AudiobookPaletteStyleAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
@end

@implementation AudiobookPaletteStyleAnimationController

+ (id)paletteStyleOpenAnimatorWithInteraction:(id)interaction traits:(id)traits forceFullSlide:(BOOL)slide
{
  interactionCopy = interaction;
  traitsCopy = traits;
  v10 = _s5Books40AudiobookPaletteStyleAnimationControllerC07paletteD12OpenAnimator11interaction6traits14forceFullSlideSo08_UISheeteF0CAA0C23PresentationInteractionCSg_So17UITraitCollectionCSgSbtFZ_0(interaction, traits, slide);

  return v10;
}

- (_TtC5Books40AudiobookPaletteStyleAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)interruptibleAnimatorForTransition:(id)transition
{
  v5 = self->_UISheetAnimationController_opaque[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_isPrepared];
  swift_unknownObjectRetain();
  selfCopy = self;
  if ((v5 & 1) == 0)
  {
    sub_10025A040(transition);
  }

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for AudiobookPaletteStyleAnimationController();
  v7 = [(AudiobookPaletteStyleAnimationController *)&v9 interruptibleAnimatorForTransition:transition];
  swift_unknownObjectRelease();

  return v7;
}

- (void)animationEnded:(BOOL)ended
{
  selfCopy = self;
  AudiobookPaletteStyleAnimationController.animationEnded(_:)(ended);
}

@end