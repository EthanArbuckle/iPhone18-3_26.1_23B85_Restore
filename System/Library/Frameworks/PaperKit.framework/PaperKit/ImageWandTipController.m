@interface ImageWandTipController
- (BOOL)tipStatusIsAvailable;
- (BOOL)tipStatusIsInvalid;
- (BOOL)tipStatusIsPending;
- (PKImageWandTipControllerDelegate)delegate;
- (void)hideTipAnimated:(BOOL)a3 completion:(id)a4;
- (void)showTipWithPresentationViewController:(id)a3 sourceItem:(id)a4 passthroughViews:(id)a5 permittedArrowDirections:(unint64_t)a6 tintColor:(id)a7 animated:(BOOL)a8;
- (void)showTipWithPresentationViewController:(id)a3 sourceItem:(id)a4 sourceRect:(CGRect)a5 passthroughViews:(id)a6 permittedArrowDirections:(unint64_t)a7 tintColor:(id)a8 animated:(BOOL)a9;
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
  v2 = self;
  v3 = ImageWandTipController.tipStatusIsPending.getter(MEMORY[0x1E6982B70]);

  return v3 & 1;
}

- (BOOL)tipStatusIsAvailable
{
  v2 = self;
  v3 = ImageWandTipController.tipStatusIsPending.getter(MEMORY[0x1E6982B78]);

  return v3 & 1;
}

- (PKImageWandTipControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)showTipWithPresentationViewController:(id)a3 sourceItem:(id)a4 passthroughViews:(id)a5 permittedArrowDirections:(unint64_t)a6 tintColor:(id)a7 animated:(BOOL)a8
{
  if (a5)
  {
    type metadata accessor for UIView();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = a7;
  v16 = self;
  specialized ImageWandTipController.showTip(withPresentationViewController:sourceItem:passthroughViews:permittedArrowDirections:tintColor:animated:)(v14, a4, a6, a8);

  swift_unknownObjectRelease();
}

- (void)showTipWithPresentationViewController:(id)a3 sourceItem:(id)a4 sourceRect:(CGRect)a5 passthroughViews:(id)a6 permittedArrowDirections:(unint64_t)a7 tintColor:(id)a8 animated:(BOOL)a9
{
  v9 = a9;
  v12 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  if (a6)
  {
    type metadata accessor for UIView();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = a3;
  swift_unknownObjectRetain();
  v21 = a8;
  v22 = self;
  ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)(v20, a4, v12, a7, a8, v9, x, y, width, height);

  swift_unknownObjectRelease();
}

- (void)hideTipAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
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

  v8 = self;
  ImageWandTipController.hideTip(animated:completion:)(v4, v6, v7);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (void)userDidUseImageWand
{
  v2 = self;
  ImageWandTipController.userDidUseImageWand()();
}

@end