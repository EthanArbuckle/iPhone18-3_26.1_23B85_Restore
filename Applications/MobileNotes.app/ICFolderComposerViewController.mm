@interface ICFolderComposerViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (ICFolderComposerViewController)initWithAccount:(id)a3 folderTitle:(id)a4 smartFolderQuery:(id)a5 showFilters:(BOOL)a6 completion:(id)a7;
- (ICFolderComposerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)doneActionWithSender:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICFolderComposerViewController

- (ICFolderComposerViewController)initWithAccount:(id)a3 folderTitle:(id)a4 smartFolderQuery:(id)a5 showFilters:(BOOL)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = a3;
  v16 = a5;
  return sub_100333540(v15, a4, v13, a5, a6, sub_100335564, v14);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100334018();
}

- (void)doneActionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003351AC();
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = sub_10017EB60();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  (*(v6 + 8))(v8, v5);
  return v12[15] & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1003352B0();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_1003353FC(v13);

  (*(v9 + 8))(v11, v8);
}

- (ICFolderComposerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5 = self;
  v3 = sub_10017E644();
  if (v3)
  {
    v4 = v3;
    [v3 endEditing:0];
  }
}

@end