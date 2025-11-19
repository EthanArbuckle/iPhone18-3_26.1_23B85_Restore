@interface CoverSheetBackgroundViewController
- (_TtC13MediaRemoteUI34CoverSheetBackgroundViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)artworkView:(id)a3 didChangeArtworkImage:(id)a4;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)backlight:(id)a3 performingEvent:(id)a4;
- (void)loadView;
- (void)setArtwork:(id)a3;
- (void)setArtworkVisible:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CoverSheetBackgroundViewController

- (void)setArtwork:(id)a3
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork) = a3;
  v4 = a3;
  v5 = self;
  sub_10000D03C(v6);
}

- (void)loadView
{
  v2 = self;
  sub_10000E058();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10000E1E4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10000E3B8(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10000EAE8(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_10000EC48(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000F328(a3);
}

- (_TtC13MediaRemoteUI34CoverSheetBackgroundViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)artworkView:(id)a3 didChangeArtworkImage:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_100012178(a4);
  swift_unknownObjectRelease();
}

- (void)setArtworkVisible:(BOOL)a3
{
  v7 = self;
  v4 = [(CoverSheetBackgroundViewController *)v7 view];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  type metadata accessor for CoverSheetBackgroundView();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  *(v6 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible) = a3;
  sub_100006D48();
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  sub_1000122D4(a4);
  swift_unknownObjectRelease();
}

- (void)backlight:(id)a3 performingEvent:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1000125BC(v6);
  swift_unknownObjectRelease();
}

@end