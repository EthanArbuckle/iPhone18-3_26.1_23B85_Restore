@interface FullScreenThirdPartyMediaCollectionViewCell
- (_TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell)initWithCoder:(id)coder;
- (_TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation FullScreenThirdPartyMediaCollectionViewCell

- (_TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_assetView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_thirdPartyMediaAsset) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FullScreenThirdPartyMediaCollectionViewCell();
  return [(FullScreenAssetCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_assetView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal43FullScreenThirdPartyMediaCollectionViewCell_thirdPartyMediaAsset) = 0;
  type metadata accessor for FullScreenThirdPartyMediaCollectionViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

@end