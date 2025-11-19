@interface PHRingLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (_TtC13InCallService11PHRingLayer)initWithLayer:(id)a3;
- (id)actionForKey:(id)a3;
- (void)drawInContext:(CGContext *)a3;
- (void)setPercentage:(double)a3;
@end

@implementation PHRingLayer

- (void)setPercentage:(double)a3
{
  v4 = self;
  sub_1001A86A8(a3);
}

- (_TtC13InCallService11PHRingLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_1001A87E0(v4);
}

+ (BOOL)needsDisplayForKey:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v3 = sub_1001A8B48();

  return v3 & 1;
}

- (id)actionForKey:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_1001A8C50(v4, v6);

  return v8;
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  sub_1001A8E00(v4);
}

@end