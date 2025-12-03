@interface ArtistListViewController
- (_TtC16MusicApplication24ArtistListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ArtistListViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_11EBE8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_12130C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ArtistListViewController(0);
  v4 = v5.receiver;
  [(ArtistListViewController *)&v5 viewWillDisappear:disappearCopy];
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_121570(change);
}

- (void)music_viewInheritedLayoutInsetsDidChange
{
  selfCopy = self;
  sub_1217D0();
}

- (_TtC16MusicApplication24ArtistListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  sub_125D28();

  (*(v8 + 8))(v10, v7);
}

@end