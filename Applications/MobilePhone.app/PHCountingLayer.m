@interface PHCountingLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (_TtC11MobilePhone15PHCountingLayer)init;
- (_TtC11MobilePhone15PHCountingLayer)initWithCoder:(id)a3;
- (_TtC11MobilePhone15PHCountingLayer)initWithLayer:(id)a3;
- (id)actionForKey:(id)a3;
- (int64_t)value;
- (void)setValue:(int64_t)a3;
@end

@implementation PHCountingLayer

- (int64_t)value
{
  v3 = OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setValue:(int64_t)a3
{
  v4 = self;
  PHCountingLayer.value.setter(a3);
}

+ (BOOL)needsDisplayForKey:(id)a3
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
    v9 = a3;

    if (v8)
    {

      return 1;
    }

    else
    {
      v11.receiver = swift_getObjCClassFromMetadata();
      v11.super_class = &OBJC_METACLASS____TtC11MobilePhone15PHCountingLayer;
      v10 = objc_msgSendSuper2(&v11, "needsDisplayForKey:", v9);

      return v10;
    }
  }
}

- (id)actionForKey:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
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

- (_TtC11MobilePhone15PHCountingLayer)initWithLayer:(id)a3
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

- (_TtC11MobilePhone15PHCountingLayer)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobilePhone15PHCountingLayer_value) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PHCountingLayer();
  v4 = a3;
  v5 = [(PHCountingLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end