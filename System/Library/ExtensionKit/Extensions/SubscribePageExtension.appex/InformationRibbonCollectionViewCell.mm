@interface InformationRibbonCollectionViewCell
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation InformationRibbonCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_10025BF04();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(InformationRibbonCollectionViewCell *)&v6 traitCollectionDidChange:a3];
  v5 = &v4[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v5 = 0;
  v5[8] = 1;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_10025F164();

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v9 = a3;
  v10 = sub_100753064();
  isa = sub_100741704().super.isa;
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

  (*(v6 + 8))(v8, v5);

  return v12;
}

@end