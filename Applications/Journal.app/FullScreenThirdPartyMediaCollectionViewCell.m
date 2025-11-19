@interface FullScreenThirdPartyMediaCollectionViewCell
- (_TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell)initWithCoder:(id)a3;
- (_TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation FullScreenThirdPartyMediaCollectionViewCell

- (_TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_assetView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_thirdPartyMediaAsset) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FullScreenThirdPartyMediaCollectionViewCell();
  return [(FullScreenAssetCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_assetView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_thirdPartyMediaAsset) = 0;
  type metadata accessor for FullScreenThirdPartyMediaCollectionViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

@end