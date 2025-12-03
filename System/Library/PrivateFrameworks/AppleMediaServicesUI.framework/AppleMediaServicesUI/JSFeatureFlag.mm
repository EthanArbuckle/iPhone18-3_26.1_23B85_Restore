@interface JSFeatureFlag
- (BOOL)isEnabled:(id)enabled;
- (id)isEnabledBatch:(id)batch;
@end

@implementation JSFeatureFlag

- (BOOL)isEnabled:(id)enabled
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v5 = sub_10011AC3C();

  return v5 & 1;
}

- (id)isEnabledBatch:(id)batch
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10011ACE0(v4);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end