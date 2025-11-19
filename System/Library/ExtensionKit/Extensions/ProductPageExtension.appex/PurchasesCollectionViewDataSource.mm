@interface PurchasesCollectionViewDataSource
- (_TtC20ProductPageExtension33PurchasesCollectionViewDataSource)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
@end

@implementation PurchasesCollectionViewDataSource

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = self;
  v4 = sub_10076827C();

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1001FCC44(a4);

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v10 = a3;
  v11 = self;
  v12 = sub_1001FC9B0(v9, v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC20ProductPageExtension33PurchasesCollectionViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end