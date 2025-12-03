@interface SpatialTemplateAnchorInteraction
- (_TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction)init;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)didMoveToView:(id)view;
@end

@implementation SpatialTemplateAnchorInteraction

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  SpatialTemplateAnchorInteraction.didMove(to:)(view);
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  selfCopy = self;
  specialized SpatialTemplateAnchorInteraction._didMove(from:to:)(window);
}

- (_TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end