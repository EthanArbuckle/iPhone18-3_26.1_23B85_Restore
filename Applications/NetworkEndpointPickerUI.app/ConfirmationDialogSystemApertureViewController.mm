@interface ConfirmationDialogSystemApertureViewController
- (NSString)associatedAppBundleIdentifier;
- (SBUISystemApertureAccessoryView)trailingView;
- (_TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)setAssociatedAppBundleIdentifier:(id)identifier
{
  if (identifier)
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
  selfCopy = self;
  sub_100003548();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100003FEC(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000044B8(v5, v7, bundle);
}

@end