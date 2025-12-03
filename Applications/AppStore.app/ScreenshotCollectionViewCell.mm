@interface ScreenshotCollectionViewCell
- (_TtC8AppStore28ScreenshotCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ScreenshotCollectionViewCell

- (_TtC8AppStore28ScreenshotCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_artworkDisplaySize;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10038525C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10038536C();
}

@end