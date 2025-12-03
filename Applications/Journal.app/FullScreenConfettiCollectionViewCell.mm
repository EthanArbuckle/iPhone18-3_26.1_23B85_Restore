@interface FullScreenConfettiCollectionViewCell
- (_TtC7Journal36FullScreenConfettiCollectionViewCell)initWithCoder:(id)coder;
@end

@implementation FullScreenConfettiCollectionViewCell

- (_TtC7Journal36FullScreenConfettiCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7Journal36FullScreenConfettiCollectionViewCell_confettiAsset;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal36FullScreenConfettiCollectionViewCell_confettiAsset) = 0;
  v5 = OBJC_IVAR____TtC7Journal36FullScreenConfettiCollectionViewCell_confettiView;
  type metadata accessor for ConfettiAssetGridView();
  *(&self->super.super.super.super.super.super.isa + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  type metadata accessor for FullScreenConfettiCollectionViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

@end