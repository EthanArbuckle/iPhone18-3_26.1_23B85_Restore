@interface PlaylistEditingViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (_TtC5Music29PlaylistEditingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PlaylistEditingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006CCC9C();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1006CFE60(appearing);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1006D0184();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8 = *&size.width;
  v9 = *&size.height;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006DEEF8(v8, v9, 0);
  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for PlaylistEditingViewController(0);
  [(PlaylistEditingViewController *)&v11 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  swift_unknownObjectRelease();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  selfCopy = self;
  sub_1006D03A4(editingCopy, animated);
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (*(self + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController))
  {
    selfCopy = self;

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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_1006D0BA8(viewCopy, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1006D0EA8(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1006DAF60();

  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v10 = sub_1006D251C();
  [(objc_class *)v10 setEnabled:[(PlaylistEditingViewController *)selfCopy isEditing]];

  (*(v6 + 8))(v8, v5);
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1006D251C();
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  if (indexPathsForSelectedItems)
  {
    v14 = indexPathsForSelectedItems;
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

- (_TtC5Music29PlaylistEditingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  selfCopy = self;
  if (sub_1006D65D8())
  {

    v4 = 0;
  }

  else
  {
    v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges);

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  selfCopy = self;
  sub_1006DE91C();
}

@end