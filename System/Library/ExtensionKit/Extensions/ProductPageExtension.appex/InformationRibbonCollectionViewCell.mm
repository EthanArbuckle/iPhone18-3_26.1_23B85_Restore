@interface InformationRibbonCollectionViewCell
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation InformationRibbonCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10032E6B0();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(InformationRibbonCollectionViewCell *)&v6 traitCollectionDidChange:change];
  v5 = &v4[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v5 = 0;
  v5[8] = 1;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_1003318E8();

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  v10 = sub_10076FF6C();
  isa = sub_10075E02C().super.isa;
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

  (*(v6 + 8))(v8, v5);

  return v12;
}

@end