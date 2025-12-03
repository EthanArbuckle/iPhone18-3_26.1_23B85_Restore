@interface SafariSheetModifier.SafariPresenter.Coordinator
- (_TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator)initWithNibName:(id)name bundle:(id)bundle;
- (void)didMoveToParentViewController:(id)controller;
- (void)presentationControllerDidDismiss:(void *)dismiss;
@end

@implementation SafariSheetModifier.SafariPresenter.Coordinator

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100132344(controller);
}

- (void)presentationControllerDidDismiss:(void *)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1003BF134();
}

- (_TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_1003BF1B4();
}

@end