@interface PurchasesCollectionViewDataSource
- (_TtC22SubscribePageExtension33PurchasesCollectionViewDataSource)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
@end

@implementation PurchasesCollectionViewDataSource

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  selfCopy = self;
  v4 = sub_10074B674();

  return v4;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1003C986C(section);

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1003C9600(v9, viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC22SubscribePageExtension33PurchasesCollectionViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end