@interface CalculateScrubberController
- (_TtC8PaperKit27CalculateScrubberController)init;
- (id)activeScrubberView;
- (void)hideScrubber;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)sendValueChanged;
- (void)showScrubberFor:(id)a3 frame:(CGRect)a4 compact:(BOOL)a5;
@end

@implementation CalculateScrubberController

- (void)showScrubberFor:(id)a3 frame:(CGRect)a4 compact:(BOOL)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = self;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CalculateScrubberController.showScrubber(for:frame:compact:)(v15, v17, a5);
}

- (void)hideScrubber
{
  v2 = self;
  CalculateScrubberController.hideScrubber()();
}

- (id)activeScrubberView
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8PaperKit27CalculateScrubberController_viewController);
  if (v3)
  {
    v3 = [v3 view];
    v2 = vars8;
  }

  return v3;
}

- (void)sendValueChanged
{
  v2 = self;
  CalculateScrubberController.sendValueChanged()();
}

- (_TtC8PaperKit27CalculateScrubberController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v5 scrubberControllerDidDismiss_];
    }

    swift_unknownObjectRelease();
  }
}

@end