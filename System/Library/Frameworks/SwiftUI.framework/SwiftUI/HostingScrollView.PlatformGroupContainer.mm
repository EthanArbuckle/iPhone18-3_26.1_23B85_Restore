@interface HostingScrollView.PlatformGroupContainer
- (BOOL)_accessibilityAllowOutOfBoundsHitTestAtPoint:(CGPoint)point withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NSArray)_childGestureRecognizerContainers;
- (NSArray)preferredFocusEnvironments;
- (id)focusItemsInRect:(CGRect)rect;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation HostingScrollView.PlatformGroupContainer

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  specialized HostingScrollView.PlatformGroupContainer.didUpdateFocus(in:with:)(contextCopy);
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  HostingScrollView.PlatformGroupContainer.preferredFocusEnvironments.getter();

  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusEnvironment);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)focusItemsInRect:(CGRect)rect
{
  type metadata accessor for [UIFocusItem]();
  selfCopy = self;
  static Update.ensure<A>(_:)();

  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (NSArray)_childGestureRecognizerContainers
{
  selfCopy = self;
  HostingScrollView.PlatformGroupContainer._childContainers.getter();

  type metadata accessor for _UIGestureRecognizerContainer();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  ObjectType = swift_getObjectType();
  eventCopy = event;
  selfCopy = self;
  static Semantics.v6.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v12 = Strong;
    [Strong convertPoint:selfCopy fromCoordinateSpace:{x, y}];
    v13 = [v12 pointInside:eventCopy withEvent:?];

    return v13;
  }

  else
  {
    v16.receiver = selfCopy;
    v16.super_class = ObjectType;
    v15 = [(HostingScrollView.PlatformGroupContainer *)&v16 pointInside:eventCopy withEvent:x, y];

    return v15;
  }
}

- (BOOL)_accessibilityAllowOutOfBoundsHitTestAtPoint:(CGPoint)point withEvent:(id)event
{
  y = point.y;
  x = point.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  eventCopy = event;
  v8 = v13.receiver;
  if ([(HostingScrollView.PlatformGroupContainer *)&v13 _accessibilityAllowOutOfBoundsHitTestAtPoint:eventCopy withEvent:x, y])
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