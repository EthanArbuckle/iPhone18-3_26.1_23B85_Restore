@interface HostingScrollView.PlatformGroupContainer
- (BOOL)_accessibilityAllowOutOfBoundsHitTestAtPoint:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NSArray)_childGestureRecognizerContainers;
- (NSArray)preferredFocusEnvironments;
- (id)focusItemsInRect:(CGRect)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation HostingScrollView.PlatformGroupContainer

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized HostingScrollView.PlatformGroupContainer.didUpdateFocus(in:with:)(v6);
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  HostingScrollView.PlatformGroupContainer.preferredFocusEnvironments.getter();

  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusEnvironment);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)focusItemsInRect:(CGRect)a3
{
  type metadata accessor for [UIFocusItem]();
  v4 = self;
  static Update.ensure<A>(_:)();

  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (NSArray)_childGestureRecognizerContainers
{
  v2 = self;
  HostingScrollView.PlatformGroupContainer._childContainers.getter();

  type metadata accessor for _UIGestureRecognizerContainer();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  ObjectType = swift_getObjectType();
  v9 = a4;
  v10 = self;
  static Semantics.v6.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v12 = Strong;
    [Strong convertPoint:v10 fromCoordinateSpace:{x, y}];
    v13 = [v12 pointInside:v9 withEvent:?];

    return v13;
  }

  else
  {
    v16.receiver = v10;
    v16.super_class = ObjectType;
    v15 = [(HostingScrollView.PlatformGroupContainer *)&v16 pointInside:v9 withEvent:x, y];

    return v15;
  }
}

- (BOOL)_accessibilityAllowOutOfBoundsHitTestAtPoint:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = a4;
  v8 = v13.receiver;
  if ([(HostingScrollView.PlatformGroupContainer *)&v13 _accessibilityAllowOutOfBoundsHitTestAtPoint:v7 withEvent:x, y])
  {
    v9 = 1;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong accessibilityFrame];
      v14.x = x;
      v14.y = y;
      v9 = CGRectContainsPoint(v15, v14);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end