@interface PHRingLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (_TtC11MobilePhone11PHRingLayer)initWithLayer:(id)a3;
- (double)percentage;
- (id)actionForKey:(id)a3;
- (void)drawInContext:(CGContext *)a3;
- (void)setPercentage:(double)a3;
@end

@implementation PHRingLayer

- (double)percentage
{
  v3 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_percentage;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setPercentage:(double)a3
{
  v5 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_percentage;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
  [(PHRingLayer *)self setNeedsDisplay];
}

- (_TtC11MobilePhone11PHRingLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return PHRingLayer.init(layer:)(v4);
}

+ (BOOL)needsDisplayForKey:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  swift_getObjCClassMetadata();
  if (v4 == 0x61746E6563726570 && v6 == 0xEA00000000006567)
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
      v11.super_class = &OBJC_METACLASS____TtC11MobilePhone11PHRingLayer;
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
  v8 = PHRingLayer.action(forKey:)(v4, v6);

  return v8;
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  PHRingLayer.draw(in:)(v4);
}

@end