@interface FullScreenUnknownAssetCollectionViewCell
- (_TtC7Journal40FullScreenUnknownAssetCollectionViewCell)initWithCoder:(id)a3;
- (_TtC7Journal40FullScreenUnknownAssetCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation FullScreenUnknownAssetCollectionViewCell

- (_TtC7Journal40FullScreenUnknownAssetCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAsset) = 0;
  v8 = OBJC_IVAR____TtC7Journal40FullScreenUnknownAssetCollectionViewCell_unknownAssetView;
  type metadata accessor for UnknownAssetView();
  *(&self->super.super.super.super.super.super.isa + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for FullScreenUnknownAssetCollectionViewCell();
  v9 = [(FullScreenAssetCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  sub_100302214();

  return v9;
}

- (_TtC7Journal40FullScreenUnknownAssetCollectionViewCell)initWithCoder:(id)a3
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