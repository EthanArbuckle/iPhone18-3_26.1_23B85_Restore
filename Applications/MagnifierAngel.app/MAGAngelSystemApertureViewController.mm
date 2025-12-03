@interface MAGAngelSystemApertureViewController
- (NSString)associatedAppBundleIdentifier;
- (_TtC14MagnifierAngel36MAGAngelSystemApertureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)setElementIdentifier:(id)identifier;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MAGAngelSystemApertureViewController

- (void)setElementIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_elementIdentifier);
  *(self + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_elementIdentifier) = identifier;
  identifierCopy = identifier;
}

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_associatedAppBundleIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_associatedAppBundleIdentifier);
    v3 = *(self + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_associatedAppBundleIdentifier + 8);

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

  v6 = (self + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_associatedAppBundleIdentifier);
  v7 = *(self + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_associatedAppBundleIdentifier + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100029898();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10002AF04(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC14MagnifierAngel36MAGAngelSystemApertureViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10002B378(v5, v7, bundle);
}

@end