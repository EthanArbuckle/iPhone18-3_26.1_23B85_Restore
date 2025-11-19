@interface MapsHostingContaineeViewController
- (BOOL)_canShowWhileLocked;
- (_TtC4Maps34MapsHostingContaineeViewController)initWithCoder:(id)a3;
- (_TtC4Maps34MapsHostingContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)heightForLayout:(unint64_t)a3;
- (void)applyAlphaToContent:(double)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation MapsHostingContaineeViewController

- (BOOL)_canShowWhileLocked
{
  v3 = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.super.super.super.super.isa) + 0x90);
  v8 = self;
  v7();

  LOBYTE(self) = v6[*(v4 + 36)];
  sub_1001DE2F0(v6);
  return self;
}

- (void)viewDidLoad
{
  v2 = self;
  MapsHostingContaineeViewController.viewDidLoad()();
}

- (double)heightForLayout:(unint64_t)a3
{
  v4 = self;
  MapsHostingContaineeViewController.height(for:)(a3);
  v6 = v5;

  return v6;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((swift_isaMask & self->super.super.super.super.super.isa) + 0x90);
  v9 = self;
  v8();
  LODWORD(self) = v7[*(v5 + 28)];
  sub_1001DE2F0(v7);
  if (self != 1)
  {
    goto LABEL_4;
  }

  v10 = [(ContaineeViewController *)v9 cardPresentationController];
  if (v10)
  {
    v11 = v10;
    [(CardPresentationController *)v10 updateHeightForCurrentLayoutAnimated:1];

LABEL_4:
    MapsHostingContaineeViewController.updatePopoverWindowDimensionsIfNeeded()();

    return;
  }

  __break(1u);
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = self;
  MapsHostingContaineeViewController.updatePopoverWindowDimensionsIfNeeded()();
}

- (void)applyAlphaToContent:(double)a3
{
  v4 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v4);
  v5 = self;
  UIViewController.traitOverrides.getter();
  sub_1001DED68();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
}

- (_TtC4Maps34MapsHostingContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController) = 0;
    v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_currentHeaderSize);
    *v6 = 0;
    v6[1] = 0;
    v7 = a4;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController) = 0;
    v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_currentHeaderSize);
    *v9 = 0;
    v9[1] = 0;
    v10 = a4;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for MapsHostingContaineeViewController();
  v11 = [(MapsHostingContaineeViewController *)&v13 initWithNibName:v8 bundle:a4];

  return v11;
}

- (_TtC4Maps34MapsHostingContaineeViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_hostingController) = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34MapsHostingContaineeViewController_currentHeaderSize);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MapsHostingContaineeViewController();
  v5 = a3;
  v6 = [(MapsHostingContaineeViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end