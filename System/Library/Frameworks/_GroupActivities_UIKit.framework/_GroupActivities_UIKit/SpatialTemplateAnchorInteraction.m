@interface SpatialTemplateAnchorInteraction
- (_TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction)init;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)didMoveToView:(id)a3;
@end

@implementation SpatialTemplateAnchorInteraction

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  SpatialTemplateAnchorInteraction.didMove(to:)(a3);
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  specialized SpatialTemplateAnchorInteraction._didMove(from:to:)(a3);
}

- (_TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end