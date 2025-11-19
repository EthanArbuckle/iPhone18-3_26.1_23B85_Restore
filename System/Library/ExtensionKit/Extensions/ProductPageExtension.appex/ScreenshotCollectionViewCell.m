@interface ScreenshotCollectionViewCell
- (_TtC20ProductPageExtension28ScreenshotCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ScreenshotCollectionViewCell

- (_TtC20ProductPageExtension28ScreenshotCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_artworkDisplaySize;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100369F58();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10036A068();
}

@end