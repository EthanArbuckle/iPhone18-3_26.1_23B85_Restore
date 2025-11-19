@interface ScreenshotCollectionViewCell
- (_TtC22SubscribePageExtension28ScreenshotCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ScreenshotCollectionViewCell

- (_TtC22SubscribePageExtension28ScreenshotCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_artworkDisplaySize;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1003CBD04();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1003CBE14();
}

@end