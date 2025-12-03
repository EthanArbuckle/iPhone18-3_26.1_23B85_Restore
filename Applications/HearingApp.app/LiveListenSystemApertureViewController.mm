@interface LiveListenSystemApertureViewController
- (NSString)associatedAppBundleIdentifier;
- (_TtC10HearingApp38LiveListenSystemApertureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)setElementIdentifier:(id)identifier;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation LiveListenSystemApertureViewController

- (void)setElementIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_elementIdentifier);
  *(self + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_elementIdentifier) = identifier;
  identifierCopy = identifier;
}

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_associatedAppBundleIdentifier + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
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

  v6 = (self + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_associatedAppBundleIdentifier);
  *v6 = v4;
  v6[1] = v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000232C();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000044B8(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC10HearingApp38LiveListenSystemApertureViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100004938(v5, v7, bundle);
}

@end