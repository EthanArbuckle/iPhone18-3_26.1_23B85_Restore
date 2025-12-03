@interface AXUISystemAperatureViewController
- (NSString)associatedAppBundleIdentifier;
- (_TtC21AccessibilityUIServer33AXUISystemAperatureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)setElementIdentifier:(id)identifier;
- (void)setLeadingView:(id)view;
- (void)setMinimalView:(id)view;
- (void)setTrailingView:(id)view;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AXUISystemAperatureViewController

- (void)setElementIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_elementIdentifier);
  *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_elementIdentifier) = identifier;
  identifierCopy = identifier;
}

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_associatedAppBundleIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_associatedAppBundleIdentifier);
    v3 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_associatedAppBundleIdentifier + 8);

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

  v6 = (self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_associatedAppBundleIdentifier);
  v7 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_associatedAppBundleIdentifier + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setLeadingView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_leadingView);
  *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_leadingView) = view;
  viewCopy = view;
}

- (void)setTrailingView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_trailingView);
  *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_trailingView) = view;
  viewCopy = view;
}

- (void)setMinimalView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_minimalView);
  *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_minimalView) = view;
  viewCopy = view;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000045D0();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for AXUISystemAperatureViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(AXUISystemAperatureViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_100005E58;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000050F0;
  v11[3] = &unk_100010A60;
  v9 = _Block_copy(v11);
  v10 = v7;

  [coordinator animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (_TtC21AccessibilityUIServer33AXUISystemAperatureViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100005288(v5, v7, bundle);
}

@end