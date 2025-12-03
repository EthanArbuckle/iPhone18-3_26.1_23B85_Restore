@interface PHCountingLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (_TtC11MobilePhone15PHCountingLayer)init;
- (_TtC11MobilePhone15PHCountingLayer)initWithCoder:(id)coder;
- (_TtC11MobilePhone15PHCountingLayer)initWithLayer:(id)layer;
- (id)actionForKey:(id)key;
- (int64_t)value;
- (void)setValue:(int64_t)value;
@end

@implementation PHCountingLayer

- (int64_t)value
{
  v3 = OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setValue:(int64_t)value
{
  selfCopy = self;
  PHCountingLayer.value.setter(value);
}

+ (BOOL)needsDisplayForKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  swift_getObjCClassMetadata();
  if (v4 == 0x65756C6176 && v6 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    keyCopy = key;

    if (v8)
    {

      return 1;
    }

    else
    {
      v11.receiver = swift_getObjCClassFromMetadata();
      v11.super_class = &OBJC_METACLASS____TtC11MobilePhone15PHCountingLayer;
      v10 = objc_msgSendSuper2(&v11, "needsDisplayForKey:", keyCopy);

      return v10;
    }
  }
}

- (id)actionForKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = PHCountingLayer.action(forKey:)(v4, v6);

  return v8;
}

- (_TtC11MobilePhone15PHCountingLayer)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PHCountingLayer();
  return [(PHCountingLayer *)&v3 init];
}

- (_TtC11MobilePhone15PHCountingLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value) = 0;
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  v7.receiver = self;
  v7.super_class = type metadata accessor for PHCountingLayer();
  v5 = [(PHCountingLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

- (_TtC11MobilePhone15PHCountingLayer)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PHCountingLayer();
  coderCopy = coder;
  v5 = [(PHCountingLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end