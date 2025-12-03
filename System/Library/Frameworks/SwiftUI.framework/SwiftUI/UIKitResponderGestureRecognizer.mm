@interface UIKitResponderGestureRecognizer
- (BOOL)_canBeCancelledByGestureRecognizer:(id)recognizer;
- (BOOL)_isGestureType:(int64_t)type;
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)recognizer;
- (NSString)name;
- (_TtC7SwiftUI31UIKitResponderGestureRecognizer)init;
- (_TtC7SwiftUI31UIKitResponderGestureRecognizer)initWithCoder:(id)coder;
- (unint64_t)numberOfTapsRequired;
- (void)setName:(id)name;
@end

@implementation UIKitResponderGestureRecognizer

- (NSString)name
{
  selfCopy = self;
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

- (void)setName:(id)name
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    selfCopy = self;
    name = MEMORY[0x18D00C850](v6, v8);
  }

  else
  {
    selfCopy2 = self;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  [(UIKitResponderGestureRecognizer *)&v11 setName:name];
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

- (_TtC7SwiftUI31UIKitResponderGestureRecognizer)initWithCoder:(id)coder
{
  *(&self->super.super._gestureFlags + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder) = 0;
  swift_weakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_isDeterminingDynamicFailureRequirement) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isKindOfClass:(Class)class
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  selfCopy = self;
  LOBYTE(ObjCClassMetadata) = UIKitResponderGestureRecognizer.isKind(of:)(ObjCClassMetadata);

  return ObjCClassMetadata & 1;
}

- (BOOL)_isGestureType:(int64_t)type
{
  result = 0;
  if (!type)
  {
    if (swift_weakLoadStrong())
    {
      selfCopy = self;
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
    selfCopy = self;
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

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = UIKitResponderGestureRecognizer.canPrevent(_:)(recognizerCopy);

  return self & 1;
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = UIKitResponderGestureRecognizer.canBePrevented(by:)(recognizerCopy);

  return self & 1;
}

- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = UIKitResponderGestureRecognizer.shouldRequireFailure(of:)(recognizerCopy);

  return self & 1;
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = UIKitResponderGestureRecognizer.shouldBeRequiredToFail(by:)(recognizerCopy);

  return self & 1;
}

- (BOOL)_canBeCancelledByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = UIKitResponderGestureRecognizer._canBeCancelled(by:)(recognizerCopy);

  return self & 1;
}

@end