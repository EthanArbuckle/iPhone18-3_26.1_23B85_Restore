@interface SearchHintsCollectionViewDataSource
- (_TtC8AppStore35SearchHintsCollectionViewDataSource)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
@end

@implementation SearchHintsCollectionViewDataSource

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = dispatch thunk of SearchHintsPresenter.resultCount.getter();

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for SearchHintCollectionViewCell();
  viewCopy = view;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v10 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

  (*(v6 + 8))(v8, v5);

  return v12;
}

- (_TtC8AppStore35SearchHintsCollectionViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end