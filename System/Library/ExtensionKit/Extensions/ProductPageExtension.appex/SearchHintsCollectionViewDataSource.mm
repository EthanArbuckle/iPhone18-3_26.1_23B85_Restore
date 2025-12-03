@interface SearchHintsCollectionViewDataSource
- (_TtC20ProductPageExtension35SearchHintsCollectionViewDataSource)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
@end

@implementation SearchHintsCollectionViewDataSource

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = sub_10076595C();

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  type metadata accessor for SearchHintCollectionViewCell();
  viewCopy = view;
  sub_1007708FC();
  v10 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

  (*(v6 + 8))(v8, v5);

  return v12;
}

- (_TtC20ProductPageExtension35SearchHintsCollectionViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end