@interface ImageWandTipController
- (BOOL)tipStatusIsAvailable;
- (BOOL)tipStatusIsInvalid;
- (BOOL)tipStatusIsPending;
- (PKImageWandTipControllerDelegate)delegate;
- (void)hideTipAnimated:(BOOL)animated completion:(id)completion;
- (void)showTipWithPresentationViewController:(id)controller sourceItem:(id)item passthroughViews:(id)views permittedArrowDirections:(unint64_t)directions tintColor:(id)color animated:(BOOL)animated;
- (void)showTipWithPresentationViewController:(id)controller sourceItem:(id)item sourceRect:(CGRect)rect passthroughViews:(id)views permittedArrowDirections:(unint64_t)directions tintColor:(id)color animated:(BOOL)animated;
- (void)userDidUseImageWand;
@end

@implementation ImageWandTipController

- (BOOL)tipStatusIsInvalid
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC8PaperKit22ImageWandTipController_lastTipStatus;
  swift_beginAccess();
  outlined init with copy of Tips.Status?(self + v6, v5);
  v7 = type metadata accessor for Tips.Status();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s6TipKit4TipsO6StatusOSgMd);
    return 0;
  }

  else
  {
    v9 = (*(v8 + 88))(v5, v7) == *MEMORY[0x1E6982B68];
    (*(v8 + 8))(v5, v7);
  }

  return v9;
}

- (BOOL)tipStatusIsPending
{
  selfCopy = self;
  v3 = ImageWandTipController.tipStatusIsPending.getter(MEMORY[0x1E6982B70]);

  return v3 & 1;
}

- (BOOL)tipStatusIsAvailable
{
  selfCopy = self;
  v3 = ImageWandTipController.tipStatusIsPending.getter(MEMORY[0x1E6982B78]);

  return v3 & 1;
}

- (PKImageWandTipControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)showTipWithPresentationViewController:(id)controller sourceItem:(id)item passthroughViews:(id)views permittedArrowDirections:(unint64_t)directions tintColor:(id)color animated:(BOOL)animated
{
  if (views)
  {
    type metadata accessor for UIView();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  controllerCopy = controller;
  swift_unknownObjectRetain();
  colorCopy = color;
  selfCopy = self;
  specialized ImageWandTipController.showTip(withPresentationViewController:sourceItem:passthroughViews:permittedArrowDirections:tintColor:animated:)(controllerCopy, item, directions, animated);

  swift_unknownObjectRelease();
}

- (void)showTipWithPresentationViewController:(id)controller sourceItem:(id)item sourceRect:(CGRect)rect passthroughViews:(id)views permittedArrowDirections:(unint64_t)directions tintColor:(id)color animated:(BOOL)animated
{
  animatedCopy = animated;
  viewsCopy = views;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (views)
  {
    type metadata accessor for UIView();
    viewsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  controllerCopy = controller;
  swift_unknownObjectRetain();
  colorCopy = color;
  selfCopy = self;
  ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)(controllerCopy, item, viewsCopy, directions, color, animatedCopy, x, y, width, height);

  swift_unknownObjectRelease();
}

- (void)hideTipAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = _sIeyB_Ieg_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  ImageWandTipController.hideTip(animated:completion:)(animatedCopy, v6, v7);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (void)userDidUseImageWand
{
  selfCopy = self;
  ImageWandTipController.userDidUseImageWand()();
}

@end