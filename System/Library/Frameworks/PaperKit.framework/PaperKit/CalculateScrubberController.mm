@interface CalculateScrubberController
- (_TtC8PaperKit27CalculateScrubberController)init;
- (id)activeScrubberView;
- (void)hideScrubber;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)sendValueChanged;
- (void)showScrubberFor:(id)for frame:(CGRect)frame compact:(BOOL)compact;
@end

@implementation CalculateScrubberController

- (void)showScrubberFor:(id)for frame:(CGRect)frame compact:(BOOL)compact
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  selfCopy = self;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CalculateScrubberController.showScrubber(for:frame:compact:)(v15, v17, compact);
}

- (void)hideScrubber
{
  selfCopy = self;
  CalculateScrubberController.hideScrubber()();
}

- (id)activeScrubberView
{
  view = *(&self->super.isa + OBJC_IVAR____TtC8PaperKit27CalculateScrubberController_viewController);
  if (view)
  {
    view = [view view];
    v2 = vars8;
  }

  return view;
}

- (void)sendValueChanged
{
  selfCopy = self;
  CalculateScrubberController.sendValueChanged()();
}

- (_TtC8PaperKit27CalculateScrubberController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
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