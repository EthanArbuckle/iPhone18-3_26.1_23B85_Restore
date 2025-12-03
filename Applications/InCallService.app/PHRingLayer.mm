@interface PHRingLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (_TtC13InCallService11PHRingLayer)initWithLayer:(id)layer;
- (id)actionForKey:(id)key;
- (void)drawInContext:(CGContext *)context;
- (void)setPercentage:(double)percentage;
@end

@implementation PHRingLayer

- (void)setPercentage:(double)percentage
{
  selfCopy = self;
  sub_1001A86A8(percentage);
}

- (_TtC13InCallService11PHRingLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_1001A87E0(v4);
}

+ (BOOL)needsDisplayForKey:(id)key
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v3 = sub_1001A8B48();

  return v3 & 1;
}

- (id)actionForKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1001A8C50(v4, v6);

  return v8;
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1001A8E00(contextCopy);
}

@end