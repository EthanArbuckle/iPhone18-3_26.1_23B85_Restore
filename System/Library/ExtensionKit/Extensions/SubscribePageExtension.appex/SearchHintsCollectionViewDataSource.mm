@interface SearchHintsCollectionViewDataSource
- (_TtC22SubscribePageExtension35SearchHintsCollectionViewDataSource)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
@end

@implementation SearchHintsCollectionViewDataSource

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = self;
  v5 = sub_100748DC4();

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  type metadata accessor for SearchHintCollectionViewCell();
  v9 = a3;
  sub_1007539D4();
  v10 = sub_100753064();

  isa = sub_100741704().super.isa;
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

  (*(v6 + 8))(v8, v5);

  return v12;
}

- (_TtC22SubscribePageExtension35SearchHintsCollectionViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end