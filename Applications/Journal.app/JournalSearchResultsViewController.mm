@interface JournalSearchResultsViewController
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)controller:(id)a3 didChangeContentWithSnapshot:(id)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)spotlightIndexUpdated:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation JournalSearchResultsViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JournalSearchResultsViewController();
  v2 = v5.receiver;
  [(JournalEntryCollectionViewController *)&v5 viewDidLoad];
  v3 = [objc_opt_self() defaultCenter];
  sub_1000065A8(0, &unk_100AE9310);
  updated = static NSCoreDataCoreSpotlightDelegate.indexDidUpdateNotification.getter();
  [v3 addObserver:v2 selector:"spotlightIndexUpdated:" name:updated object:0];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for JournalFeatureFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JournalSearchResultsViewController();
  v11.receiver = self;
  v11.super_class = v9;
  v10 = self;
  [(JournalEntryCollectionViewController *)&v11 viewIsAppearing:v3];
  (*(v6 + 104))(v8, enum case for JournalFeatureFlags.search(_:), v5);
  LOBYTE(v3) = JournalFeatureFlags.isEnabled.getter();
  (*(v6 + 8))(v8, v5);
  if ((v3 & 1) == 0)
  {
    sub_1006D49B8();
  }
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for JournalFeatureFlags.search(_:), v4, v6);
  v9 = self;
  v10 = JournalFeatureFlags.isEnabled.getter();
  (*(v5 + 8))(v8, v4);
  v11 = 0;
  if (v10)
  {
    v11 = *(&v9->super.super.super.super.isa + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  }

  return v11;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 64);
    v8 = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10055B108();
}

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_1005602C8(v10);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1005606E8(v10);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_100561990();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)spotlightIndexUpdated:(id)a3
{
  v4 = qword_100ACFE28;
  v5 = a3;
  v7 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_spotlightDelegate);
  if (v6 && ![v6 isIndexingEnabled])
  {
    sub_10055AEAC();
  }
}

- (void)controller:(id)a3 didChangeContentWithSnapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1006D508C(v6, v7);
}

@end