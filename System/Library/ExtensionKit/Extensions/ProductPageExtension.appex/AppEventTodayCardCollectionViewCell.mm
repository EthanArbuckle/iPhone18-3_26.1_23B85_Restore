@interface AppEventTodayCardCollectionViewCell
- (void)applySizeCategoryUpdates;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppEventTodayCardCollectionViewCell

- (void)applySizeCategoryUpdates
{
  selfCopy = self;
  sub_100059400();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(StoryCardCollectionViewCell *)&v3 layoutSubviews];
  sub_1000598A4();
  sub_100059B70();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10005A678();
}

@end