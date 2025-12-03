@interface FullScreenUnknownAssetCollectionViewCell
- (_TtC7Journal40FullScreenUnknownAssetCollectionViewCell)initWithCoder:(id)coder;
- (_TtC7Journal40FullScreenUnknownAssetCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation FullScreenUnknownAssetCollectionViewCell

- (_TtC7Journal40FullScreenUnknownAssetCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAsset) = 0;
  v8 = OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAssetView;
  type metadata accessor for UnknownAssetView();
  *(&self->super.super.super.super.super.super.isa + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for FullScreenUnknownAssetCollectionViewCell();
  height = [(FullScreenAssetCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  sub_100302214();

  return height;
}

- (_TtC7Journal40FullScreenUnknownAssetCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAsset) = 0;
  v4 = OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAssetView;
  type metadata accessor for UnknownAssetView();
  *(&self->super.super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end