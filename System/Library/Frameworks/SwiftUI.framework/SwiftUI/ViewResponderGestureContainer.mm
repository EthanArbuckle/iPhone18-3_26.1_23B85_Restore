@interface ViewResponderGestureContainer
- (NSArray)_childGestureRecognizerContainers;
- (NSArray)gestureRecognizers;
- (NSString)description;
- (UIResponder)nextResponder;
- (UIView)_proxyView;
- (UIWindow)_eventReceivingWindow;
- (_TtC7SwiftUI29ViewResponderGestureContainer)init;
- (_UIGestureRecognizerContainer)_actingParentGestureRecognizerContainer;
- (_UIGestureRecognizerContainer)_parentGestureRecognizerContainer;
- (void)dealloc;
- (void)set_actingParentGestureRecognizerContainer:(id)a3;
@end

@implementation ViewResponderGestureContainer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ViewResponderGestureContainer *)&v3 dealloc];
}

- (NSString)description
{
  v2 = self;
  v3 = ViewResponderGestureContainer.description.getter();
  v5 = v4;

  v6 = MEMORY[0x18D00C850](v3, v5);

  return v6;
}

- (UIResponder)nextResponder
{
  v2 = self;
  Platform = ViewResponderGestureContainer._nextPlatformResponder.getter();

  return Platform;
}

- (NSArray)gestureRecognizers
{
  v2 = self;
  ViewResponderGestureContainer.gestureRecognizers.getter();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_UIGestureRecognizerContainer)_parentGestureRecognizerContainer
{
  if (swift_weakLoadStrong())
  {
    v3 = self;
    v4 = ViewResponder.parentGestureContainer.getter();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)_childGestureRecognizerContainers
{
  v2 = self;
  ViewResponderGestureContainer._childContainers.getter();

  type metadata accessor for _UIGestureRecognizerContainer();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_UIGestureRecognizerContainer)_actingParentGestureRecognizerContainer
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)set_actingParentGestureRecognizerContainer:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer__actingParentContainer) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (UIWindow)_eventReceivingWindow
{
  v2 = self;
  v3 = ViewResponderGestureContainer._eventReceivingWindow.getter();

  return v3;
}

- (UIView)_proxyView
{
  v2 = self;
  v3 = ViewResponderGestureContainer._proxyView.getter();

  return v3;
}

- (_TtC7SwiftUI29ViewResponderGestureContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end