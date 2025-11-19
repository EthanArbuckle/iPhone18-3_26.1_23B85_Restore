@interface ScreenshotCollectionViewCell
- (_TtC18ASMessagesProvider28ScreenshotCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ScreenshotCollectionViewCell

- (_TtC18ASMessagesProvider28ScreenshotCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_artworkDisplaySize;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_318C90();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_318DA0();
}

@end