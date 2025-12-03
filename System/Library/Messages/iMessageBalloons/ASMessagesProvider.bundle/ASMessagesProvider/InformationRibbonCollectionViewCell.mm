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
  sub_45292C();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(InformationRibbonCollectionViewCell *)&v6 traitCollectionDidChange:change];
  v5 = &v4[OBJC_IVAR____TtC18ASMessagesProvider35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v5 = 0;
  v5[8] = 1;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_45EC94();

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  v10 = sub_769210();
  isa = sub_757550().super.isa;
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

  (*(v6 + 8))(v8, v5);

  return v12;
}

@end