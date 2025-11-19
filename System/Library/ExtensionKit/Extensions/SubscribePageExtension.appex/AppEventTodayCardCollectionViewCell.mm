@interface AppEventTodayCardCollectionViewCell
- (void)applySizeCategoryUpdates;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppEventTodayCardCollectionViewCell

- (void)applySizeCategoryUpdates
{
  v2 = self;
  sub_1004D1E80();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(StoryCardCollectionViewCell *)&v3 layoutSubviews];
  sub_1004D2294();
  sub_1004D2560();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1004D3068();
}

@end