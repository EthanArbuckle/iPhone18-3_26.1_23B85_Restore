@interface PHRingLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (_TtC11MobilePhone11PHRingLayer)initWithLayer:(id)layer;
- (double)percentage;
- (id)actionForKey:(id)key;
- (void)drawInContext:(CGContext *)context;
- (void)setPercentage:(double)percentage;
@end

@implementation PHRingLayer

- (double)percentage
{
  v3 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_percentage;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setPercentage:(double)percentage
{
  v5 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_percentage;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = percentage;
  [(PHRingLayer *)self setNeedsDisplay];
}

- (_TtC11MobilePhone11PHRingLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return PHRingLayer.init(layer:)(v4);
}

+ (BOOL)needsDisplayForKey:(id)key
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
    keyCopy = key;

    if (v8)
    {

      return 1;
    }

    else
    {
      v11.receiver = swift_getObjCClassFromMetadata();
      v11.super_class = &OBJC_METACLASS____TtC11MobilePhone11PHRingLayer;
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
  v8 = PHRingLayer.action(forKey:)(v4, v6);

  return v8;
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  PHRingLayer.draw(in:)(contextCopy);
}

@end