@interface PHCountingLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (_TtC13InCallService15PHCountingLayer)initWithLayer:(id)layer;
- (id)actionForKey:(id)key;
- (void)setValue:(int64_t)value;
@end

@implementation PHCountingLayer

- (void)setValue:(int64_t)value
{
  selfCopy = self;
  sub_10017A54C(value);
}

+ (BOOL)needsDisplayForKey:(id)key
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v3 = sub_10017A65C();

  return v3 & 1;
}

- (id)actionForKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_10017A760(v4, v6);

  return v8;
}

- (_TtC13InCallService15PHCountingLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_10017A978(v4);
}

@end