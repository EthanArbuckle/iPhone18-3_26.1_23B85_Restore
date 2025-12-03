@interface UIKitGestureRecognizer
- (_TtC7SwiftUI22UIKitGestureRecognizer)initWithCoder:(id)coder;
- (_TtC7SwiftUI22UIKitGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_scrollingChangedWithEvent:(id)event;
- (void)_transformChangedWithEvent:(id)event;
- (void)reset;
@end

@implementation UIKitGestureRecognizer

- (_TtC7SwiftUI22UIKitGestureRecognizer)initWithCoder:(id)coder
{
  swift_weakInit();
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_initialScale) = 0x3FF0000000000000;
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_initialAngle) = 0;
  v4 = self + OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_scrollConverter;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_gestureCategory) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)reset
{
  selfCopy = self;
  UIKitGestureRecognizer.reset()();
}

- (_TtC7SwiftUI22UIKitGestureRecognizer)initWithTarget:(id)target action:(SEL)action
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

- (void)_transformChangedWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  UIKitGestureRecognizer._transformChanged(with:)(eventCopy);
}

- (void)_scrollingChangedWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  UIKitGestureRecognizer._scrollingChanged(with:)(eventCopy);
}

@end