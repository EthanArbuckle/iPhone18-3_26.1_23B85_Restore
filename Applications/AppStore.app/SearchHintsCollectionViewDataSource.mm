@interface SearchHintsCollectionViewDataSource
- (_TtC8AppStore35SearchHintsCollectionViewDataSource)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
@end

@implementation SearchHintsCollectionViewDataSource

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = self;
  v5 = dispatch thunk of SearchHintsPresenter.resultCount.getter();

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for SearchHintCollectionViewCell();
  v9 = a3;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v10 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

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