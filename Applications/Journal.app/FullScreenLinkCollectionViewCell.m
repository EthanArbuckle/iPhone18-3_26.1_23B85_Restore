@interface FullScreenLinkCollectionViewCell
- (_TtC7Journal32FullScreenLinkCollectionViewCell)initWithCoder:(id)a3;
- (_TtC7Journal32FullScreenLinkCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation FullScreenLinkCollectionViewCell

- (_TtC7Journal32FullScreenLinkCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_linkView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_asset) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FullScreenLinkCollectionViewCell();
  return [(FullScreenAssetCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal32FullScreenLinkCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_linkView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_asset) = 0;
  type metadata accessor for FullScreenLinkCollectionViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

@end