@interface PurchasesCollectionViewDataSource
- (_TtC8AppStore33PurchasesCollectionViewDataSource)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
@end

@implementation PurchasesCollectionViewDataSource

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  selfCopy = self;
  v4 = PurchasesContentPresenter.sectionCount.getter();

  return v4;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_100265174(section);

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100264C30(v9, viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC8AppStore33PurchasesCollectionViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end