@interface UIKitResponderGestureRecognizer
- (BOOL)_canBeCancelledByGestureRecognizer:(id)a3;
- (BOOL)_isGestureType:(int64_t)a3;
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3;
- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)a3;
- (NSString)name;
- (_TtC7SwiftUI31UIKitResponderGestureRecognizer)init;
- (_TtC7SwiftUI31UIKitResponderGestureRecognizer)initWithCoder:(id)a3;
- (unint64_t)numberOfTapsRequired;
- (void)setName:(id)a3;
@end

@implementation UIKitResponderGestureRecognizer

- (NSString)name
{
  v2 = self;
  v3 = UIKitResponderGestureRecognizer.name.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x18D00C850](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setName:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = self;
    a3 = MEMORY[0x18D00C850](v6, v8);
  }

  else
  {
    v10 = self;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  [(UIKitResponderGestureRecognizer *)&v11 setName:a3];
}

- (_TtC7SwiftUI31UIKitResponderGestureRecognizer)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super._gestureFlags + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder) = 0;
  v4 = swift_weakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_isDeterminingDynamicFailureRequirement) = 0;
  *(v4 + 8) = 0;
  swift_weakAssign();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(UIKitGestureRecognizer *)&v6 init];
}

- (_TtC7SwiftUI31UIKitResponderGestureRecognizer)initWithCoder:(id)a3
{
  *(&self->super.super._gestureFlags + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder) = 0;
  swift_weakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_isDeterminingDynamicFailureRequirement) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isKindOfClass:(Class)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = self;
  LOBYTE(ObjCClassMetadata) = UIKitResponderGestureRecognizer.isKind(of:)(ObjCClassMetadata);

  return ObjCClassMetadata & 1;
}

- (BOOL)_isGestureType:(int64_t)a3
{
  result = 0;
  if (!a3)
  {
    if (swift_weakLoadStrong())
    {
      v5 = self;
      AnyGestureResponder.requiredTapCount.getter();
      v7 = v6;

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

- (unint64_t)numberOfTapsRequired
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = self;
    v5 = AnyGestureResponder.requiredTapCount.getter();
    v7 = v6;

    if (v7)
    {
      return 0;
    }

    else
    {
      result = v5;
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }
    }
  }

  return result;
}

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = UIKitResponderGestureRecognizer.canPrevent(_:)(v4);

  return self & 1;
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = UIKitResponderGestureRecognizer.canBePrevented(by:)(v4);

  return self & 1;
}

- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = UIKitResponderGestureRecognizer.shouldRequireFailure(of:)(v4);

  return self & 1;
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = UIKitResponderGestureRecognizer.shouldBeRequiredToFail(by:)(v4);

  return self & 1;
}

- (BOOL)_canBeCancelledByGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = UIKitResponderGestureRecognizer._canBeCancelled(by:)(v4);

  return self & 1;
}

@end