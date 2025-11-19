@interface SafariSheetModifier.SafariPresenter.Coordinator
- (_TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)presentationControllerDidDismiss:(void *)a3;
@end

@implementation SafariSheetModifier.SafariPresenter.Coordinator

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100132344(a3);
}

- (void)presentationControllerDidDismiss:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_1003BF134();
}

- (_TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1003BF1B4();
}

@end