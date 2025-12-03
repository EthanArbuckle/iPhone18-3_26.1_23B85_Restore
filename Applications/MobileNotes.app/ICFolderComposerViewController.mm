@interface ICFolderComposerViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (ICFolderComposerViewController)initWithAccount:(id)account folderTitle:(id)title smartFolderQuery:(id)query showFilters:(BOOL)filters completion:(id)completion;
- (ICFolderComposerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)doneActionWithSender:(id)sender;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)viewDidLoad;
@end

@implementation ICFolderComposerViewController

- (ICFolderComposerViewController)initWithAccount:(id)account folderTitle:(id)title smartFolderQuery:(id)query showFilters:(BOOL)filters completion:(id)completion
{
  v11 = _Block_copy(completion);
  if (title)
  {
    title = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  accountCopy = account;
  queryCopy = query;
  return sub_100333540(accountCopy, title, v13, query, filters, sub_100335564, v14);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100334018();
}

- (void)doneActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1003351AC();
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v10 = sub_10017EB60();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  (*(v6 + 8))(v8, v5);
  return v12[15] & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1003352B0();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1003353FC(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (ICFolderComposerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  selfCopy = self;
  v3 = sub_10017E644();
  if (v3)
  {
    v4 = v3;
    [v3 endEditing:0];
  }
}

@end