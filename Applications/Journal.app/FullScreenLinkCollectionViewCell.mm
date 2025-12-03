@interface FullScreenLinkCollectionViewCell
- (_TtC7Journal32FullScreenLinkCollectionViewCell)initWithCoder:(id)coder;
- (_TtC7Journal32FullScreenLinkCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation FullScreenLinkCollectionViewCell

- (_TtC7Journal32FullScreenLinkCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_linkView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_asset) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FullScreenLinkCollectionViewCell();
  return [(FullScreenAssetCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal32FullScreenLinkCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_linkView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_asset) = 0;
  type metadata accessor for FullScreenLinkCollectionViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

@end