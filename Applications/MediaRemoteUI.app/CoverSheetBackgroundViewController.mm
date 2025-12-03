@interface CoverSheetBackgroundViewController
- (_TtC13MediaRemoteUI34CoverSheetBackgroundViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)artworkView:(id)view didChangeArtworkImage:(id)image;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)backlight:(id)backlight performingEvent:(id)event;
- (void)loadView;
- (void)setArtwork:(id)artwork;
- (void)setArtworkVisible:(BOOL)visible;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CoverSheetBackgroundViewController

- (void)setArtwork:(id)artwork
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI34CoverSheetBackgroundViewController_artwork) = artwork;
  artworkCopy = artwork;
  selfCopy = self;
  sub_10000D03C(v6);
}

- (void)loadView
{
  selfCopy = self;
  sub_10000E058();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000E1E4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000E3B8(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10000EAE8(disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000EC48(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10000F328(change);
}

- (_TtC13MediaRemoteUI34CoverSheetBackgroundViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)artworkView:(id)view didChangeArtworkImage:(id)image
{
  swift_unknownObjectRetain();
  imageCopy = image;
  selfCopy = self;
  sub_100012178(image);
  swift_unknownObjectRelease();
}

- (void)setArtworkVisible:(BOOL)visible
{
  selfCopy = self;
  view = [(CoverSheetBackgroundViewController *)selfCopy view];
  if (!view)
  {
    goto LABEL_7;
  }

  v5 = view;
  type metadata accessor for CoverSheetBackgroundView();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  *(v6 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_artworkVisible) = visible;
  sub_100006D48();
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  swift_unknownObjectRetain();
  eventCopy = event;
  selfCopy = self;
  sub_1000122D4(state);
  swift_unknownObjectRelease();
}

- (void)backlight:(id)backlight performingEvent:(id)event
{
  swift_unknownObjectRetain();
  eventCopy = event;
  selfCopy = self;
  sub_1000125BC(eventCopy);
  swift_unknownObjectRelease();
}

@end