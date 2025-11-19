@interface UIKitGestureRecognizer
- (_TtC7SwiftUI22UIKitGestureRecognizer)initWithCoder:(id)a3;
- (_TtC7SwiftUI22UIKitGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_scrollingChangedWithEvent:(id)a3;
- (void)_transformChangedWithEvent:(id)a3;
- (void)reset;
@end

@implementation UIKitGestureRecognizer

- (_TtC7SwiftUI22UIKitGestureRecognizer)initWithCoder:(id)a3
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
  v2 = self;
  UIKitGestureRecognizer.reset()();
}

- (_TtC7SwiftUI22UIKitGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_transformChangedWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  UIKitGestureRecognizer._transformChanged(with:)(v4);
}

- (void)_scrollingChangedWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  UIKitGestureRecognizer._scrollingChanged(with:)(v4);
}

@end