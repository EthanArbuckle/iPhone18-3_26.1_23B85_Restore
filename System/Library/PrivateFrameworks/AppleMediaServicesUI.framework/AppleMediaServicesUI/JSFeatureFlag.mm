@interface JSFeatureFlag
- (BOOL)isEnabled:(id)a3;
- (id)isEnabledBatch:(id)a3;
@end

@implementation JSFeatureFlag

- (BOOL)isEnabled:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  v5 = sub_10011AC3C();

  return v5 & 1;
}

- (id)isEnabledBatch:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10011ACE0(v4);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end