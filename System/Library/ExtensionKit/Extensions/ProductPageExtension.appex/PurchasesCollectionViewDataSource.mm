@interface PurchasesCollectionViewDataSource
- (_TtC20ProductPageExtension33PurchasesCollectionViewDataSource)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
@end

@implementation PurchasesCollectionViewDataSource

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  selfCopy = self;
  v4 = sub_10076827C();

  return v4;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1001FCC44(section);

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1001FC9B0(v9, viewCopy);

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