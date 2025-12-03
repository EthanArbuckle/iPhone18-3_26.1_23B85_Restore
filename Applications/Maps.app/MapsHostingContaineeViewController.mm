@interface MapsHostingContaineeViewController
- (BOOL)_canShowWhileLocked;
- (_TtC4Maps34MapsHostingContaineeViewController)initWithCoder:(id)coder;
- (_TtC4Maps34MapsHostingContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)heightForLayout:(unint64_t)layout;
- (void)applyAlphaToContent:(double)content;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation MapsHostingContaineeViewController

- (BOOL)_canShowWhileLocked
{
  v3 = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.super.super.super.super.isa) + 0x90);
  selfCopy = self;
  v7();

  LOBYTE(self) = v6[*(v4 + 36)];
  sub_1001DE2F0(v6);
  return self;
}

- (void)viewDidLoad
{
  selfCopy = self;
  MapsHostingContaineeViewController.viewDidLoad()();
}

- (double)heightForLayout:(unint64_t)layout
{
  selfCopy = self;
  MapsHostingContaineeViewController.height(for:)(layout);
  v6 = v5;

  return v6;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4 = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((swift_isaMask & self->super.super.super.super.super.isa) + 0x90);
  selfCopy = self;
  v8();
  LODWORD(self) = v7[*(v5 + 28)];
  sub_1001DE2F0(v7);
  if (self != 1)
  {
    goto LABEL_4;
  }

  cardPresentationController = [(ContaineeViewController *)selfCopy cardPresentationController];
  if (cardPresentationController)
  {
    v11 = cardPresentationController;
    [(CardPresentationController *)cardPresentationController updateHeightForCurrentLayoutAnimated:1];

LABEL_4:
    MapsHostingContaineeViewController.updatePopoverWindowDimensionsIfNeeded()();

    return;
  }

  __break(1u);
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  selfCopy = self;
  MapsHostingContaineeViewController.updatePopoverWindowDimensionsIfNeeded()();
}

- (void)applyAlphaToContent:(double)content
{
  v4 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v4);
  selfCopy = self;
  UIViewController.traitOverrides.getter();
  sub_1001DED68();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
}

- (_TtC4Maps34MapsHostingContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController) = 0;
    v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_currentHeaderSize);
    *v6 = 0;
    v6[1] = 0;
    bundleCopy = bundle;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController) = 0;
    v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_currentHeaderSize);
    *v9 = 0;
    v9[1] = 0;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for MapsHostingContaineeViewController();
  v11 = [(MapsHostingContaineeViewController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (_TtC4Maps34MapsHostingContaineeViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController) = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_currentHeaderSize);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MapsHostingContaineeViewController();
  coderCopy = coder;
  v6 = [(MapsHostingContaineeViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end