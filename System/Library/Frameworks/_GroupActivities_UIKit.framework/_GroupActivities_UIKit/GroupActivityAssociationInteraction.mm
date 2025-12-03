@interface GroupActivityAssociationInteraction
- (_TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction)init;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)didMoveToView:(id)view;
@end

@implementation GroupActivityAssociationInteraction

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  GroupActivityAssociationInteraction.didMove(to:)(view);
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  selfCopy = self;
  specialized GroupActivityAssociationInteraction._didMove(from:to:)(window);
}

- (_TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end