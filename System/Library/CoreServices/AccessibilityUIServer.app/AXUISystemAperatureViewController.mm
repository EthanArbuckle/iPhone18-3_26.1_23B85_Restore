@interface AXUISystemAperatureViewController
- (NSString)associatedAppBundleIdentifier;
- (_TtC21AccessibilityUIServer33AXUISystemAperatureViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setAssociatedAppBundleIdentifier:(id)a3;
- (void)setElementIdentifier:(id)a3;
- (void)setLeadingView:(id)a3;
- (void)setMinimalView:(id)a3;
- (void)setTrailingView:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AXUISystemAperatureViewController

- (void)setElementIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_elementIdentifier);
  *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_elementIdentifier) = a3;
  v3 = a3;
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

  v6 = (self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_associatedAppBundleIdentifier);
  v7 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_associatedAppBundleIdentifier + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setLeadingView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_leadingView);
  *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_leadingView) = a3;
  v3 = a3;
}

- (void)setTrailingView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_trailingView);
  *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_trailingView) = a3;
  v3 = a3;
}

- (void)setMinimalView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_minimalView);
  *(self + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_minimalView) = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000045D0();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for AXUISystemAperatureViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(AXUISystemAperatureViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
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

  [a4 animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (_TtC21AccessibilityUIServer33AXUISystemAperatureViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100005288(v5, v7, a4);
}

@end