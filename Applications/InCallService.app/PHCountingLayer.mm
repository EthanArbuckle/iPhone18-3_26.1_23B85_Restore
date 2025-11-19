@interface PHCountingLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (_TtC13InCallService15PHCountingLayer)initWithLayer:(id)a3;
- (id)actionForKey:(id)a3;
- (void)setValue:(int64_t)a3;
@end

@implementation PHCountingLayer

- (void)setValue:(int64_t)a3
{
  v4 = self;
  sub_10017A54C(a3);
}

+ (BOOL)needsDisplayForKey:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v3 = sub_10017A65C();

  return v3 & 1;
}

- (id)actionForKey:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_10017A760(v4, v6);

  return v8;
}

- (_TtC13InCallService15PHCountingLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_10017A978(v4);
}

@end