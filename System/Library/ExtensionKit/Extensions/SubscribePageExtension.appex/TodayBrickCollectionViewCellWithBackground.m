@interface TodayBrickCollectionViewCellWithBackground
- (void)layoutSubviews;
@end

@implementation TodayBrickCollectionViewCellWithBackground

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground();
  v2 = v4.receiver;
  [(BaseTodayBrickCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView] bounds];
  [v3 setFrame:?];
}

@end