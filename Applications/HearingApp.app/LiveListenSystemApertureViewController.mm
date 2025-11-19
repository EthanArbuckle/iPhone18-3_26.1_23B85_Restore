@interface LiveListenSystemApertureViewController
- (NSString)associatedAppBundleIdentifier;
- (_TtC10HearingApp38LiveListenSystemApertureViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setAssociatedAppBundleIdentifier:(id)a3;
- (void)setElementIdentifier:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation LiveListenSystemApertureViewController

- (void)setElementIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_elementIdentifier);
  *(self + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_elementIdentifier) = a3;
  v3 = a3;
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

  v6 = (self + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_associatedAppBundleIdentifier);
  *v6 = v4;
  v6[1] = v5;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10000232C();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1000044B8(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC10HearingApp38LiveListenSystemApertureViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100004938(v5, v7, a4);
}

@end