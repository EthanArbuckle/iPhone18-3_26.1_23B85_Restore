@interface PlaylistEditingViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (_TtC5Music29PlaylistEditingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PlaylistEditingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1006CCC9C();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1006CFE60(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1006D0184();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = *&a3.width;
  v9 = *&a3.height;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1006DEEF8(v8, v9, 0);
  v11.receiver = v10;
  v11.super_class = type metadata accessor for PlaylistEditingViewController(0);
  [(PlaylistEditingViewController *)&v11 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  swift_unknownObjectRelease();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1006D03A4(v5, a4);
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (*(self + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController))
  {
    v4 = self;

    v5 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

    v6 = *(v5 + 16);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  v16 = sub_1006D0BA8(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1006D0EA8(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
  sub_1006DAF60();

  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = sub_1006D251C();
  [(objc_class *)v10 setEnabled:[(PlaylistEditingViewController *)v9 isEditing]];

  (*(v6 + 8))(v8, v5);
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1006D251C();
  v13 = [v10 indexPathsForSelectedItems];
  if (v13)
  {
    v14 = v13;
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v15 + 16);

    v17 = v16 != 0;
  }

  else
  {
    v17 = 0;
  }

  [(objc_class *)v12 setEnabled:v17];

  (*(v7 + 8))(v9, v6);
}

- (_TtC5Music29PlaylistEditingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = self;
  if (sub_1006D65D8())
  {

    v4 = 0;
  }

  else
  {
    v5 = *(&v3->super.super.super.isa + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges);

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v3 = self;
  sub_1006DE91C();
}

@end