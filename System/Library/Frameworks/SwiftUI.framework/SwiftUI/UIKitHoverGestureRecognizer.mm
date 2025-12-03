@interface UIKitHoverGestureRecognizer
- (_TtC7SwiftUI27UIKitHoverGestureRecognizer)init;
- (_TtC7SwiftUI27UIKitHoverGestureRecognizer)initWithCoder:(id)coder;
- (_TtC7SwiftUI27UIKitHoverGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
@end

@implementation UIKitHoverGestureRecognizer

- (_TtC7SwiftUI27UIKitHoverGestureRecognizer)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(UIKitHoverGestureRecognizer *)&v5 initWithTarget:0 action:0];
}

- (_TtC7SwiftUI27UIKitHoverGestureRecognizer)initWithCoder:(id)coder
{
  swift_weakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)reset
{
  if (swift_weakLoadStrong())
  {
    lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer();
    selfCopy = self;
    dispatch thunk of EventBindingBridge.reset(eventSource:resetForwardedEventDispatchers:)();
  }
}

- (_TtC7SwiftUI27UIKitHoverGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end