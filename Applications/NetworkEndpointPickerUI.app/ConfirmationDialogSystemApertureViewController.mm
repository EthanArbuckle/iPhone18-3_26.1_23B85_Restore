@interface ConfirmationDialogSystemApertureViewController
- (NSString)associatedAppBundleIdentifier;
- (SBUISystemApertureAccessoryView)trailingView;
- (_TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setAssociatedAppBundleIdentifier:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ConfirmationDialogSystemApertureViewController

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_associatedAppBundleIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_associatedAppBundleIdentifier);
    v3 = *(self + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_associatedAppBundleIdentifier + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAssociatedAppBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_associatedAppBundleIdentifier);
  v7 = *(self + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_associatedAppBundleIdentifier + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  v2 = [objc_allocWithZone(type metadata accessor for ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView()) initWithImage:0];

  return v2;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100003548();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_100003FEC(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000044B8(v5, v7, a4);
}

@end