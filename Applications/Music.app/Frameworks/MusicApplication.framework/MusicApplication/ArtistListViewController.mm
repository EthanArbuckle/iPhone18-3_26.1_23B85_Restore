@interface ArtistListViewController
- (_TtC16MusicApplication24ArtistListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ArtistListViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_11EBE8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_12130C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ArtistListViewController(0);
  v4 = v5.receiver;
  [(ArtistListViewController *)&v5 viewWillDisappear:v3];
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_121570(a3);
}

- (void)music_viewInheritedLayoutInsetsDidChange
{
  v2 = self;
  sub_1217D0();
}

- (_TtC16MusicApplication24ArtistListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_125D28();

  (*(v8 + 8))(v10, v7);
}

@end