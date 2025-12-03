@interface FlowViewDataProvider
- (void)logForAppTerminate;
- (void)updateSessionMapWithIdentifier:(id)identifier data:(id)data;
@end

@implementation FlowViewDataProvider

- (void)updateSessionMapWithIdentifier:(id)identifier data:(id)data
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  dataCopy = data;

  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_10000742C(v5, v7, v9, v11);
  sub_100008408(v9, v11);
}

- (void)logForAppTerminate
{

  sub_100007C58();
}

@end