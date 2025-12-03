@interface AppEventTodayCardCollectionViewCell
- (void)applySizeCategoryUpdates;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppEventTodayCardCollectionViewCell

- (void)applySizeCategoryUpdates
{
  selfCopy = self;
  sub_5E1B8();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(StoryCardCollectionViewCell *)&v3 layoutSubviews];
  sub_5E65C();
  sub_5E928();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_5F430();
}

@end