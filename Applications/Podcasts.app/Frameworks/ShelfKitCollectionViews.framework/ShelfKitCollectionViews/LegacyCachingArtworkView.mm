@interface LegacyCachingArtworkView
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC23ShelfKitCollectionViews24LegacyCachingArtworkView)initWithFrame:(CGRect)frame;
@end

@implementation LegacyCachingArtworkView

- (CGRect)frame
{
  sub_26E798(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  sub_26E798(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtC23ShelfKitCollectionViews24LegacyCachingArtworkView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end