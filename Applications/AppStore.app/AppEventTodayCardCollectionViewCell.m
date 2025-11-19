@interface AppEventTodayCardCollectionViewCell
- (void)applySizeCategoryUpdates;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppEventTodayCardCollectionViewCell

- (void)applySizeCategoryUpdates
{
  v2 = self;
  sub_10046C4F0();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(StoryCardCollectionViewCell *)&v3 layoutSubviews];
  sub_10046C904();
  sub_10046CBD0();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10046D7A0();
}

@end