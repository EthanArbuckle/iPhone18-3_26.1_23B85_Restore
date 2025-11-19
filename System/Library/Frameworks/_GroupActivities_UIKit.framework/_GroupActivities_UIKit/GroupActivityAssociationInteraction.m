@interface GroupActivityAssociationInteraction
- (_TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction)init;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)didMoveToView:(id)a3;
@end

@implementation GroupActivityAssociationInteraction

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  GroupActivityAssociationInteraction.didMove(to:)(a3);
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  specialized GroupActivityAssociationInteraction._didMove(from:to:)(a3);
}

- (_TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end