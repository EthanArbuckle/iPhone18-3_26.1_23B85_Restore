@interface JSServerDataCache
- (id)offerRankingItemsForServices:(id)services :(id)a4 :(id)a5;
@end

@implementation JSServerDataCache

- (id)offerRankingItemsForServices:(id)services :(id)a4 :(id)a5
{
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a5)
  {
    a5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  v12 = sub_10013A3AC(v7, v8, v10, a5);

  return v12;
}

@end