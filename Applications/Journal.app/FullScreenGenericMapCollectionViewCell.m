@interface FullScreenGenericMapCollectionViewCell
- (_TtC7Journal38FullScreenGenericMapCollectionViewCell)initWithCoder:(id)a3;
- (void)updateConstraints;
@end

@implementation FullScreenGenericMapCollectionViewCell

- (_TtC7Journal38FullScreenGenericMapCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapView;
  type metadata accessor for GenericMapAssetView();
  *(&self->super.super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapAsset) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateConstraints
{
  v2 = self;
  sub_10072F4E8();
}

@end