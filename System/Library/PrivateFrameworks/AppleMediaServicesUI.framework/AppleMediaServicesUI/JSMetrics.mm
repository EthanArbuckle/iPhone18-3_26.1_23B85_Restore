@interface JSMetrics
- (id)enqueue:(id)enqueue :(id)a4 :(id)a5;
- (id)enqueueBatch:(id)batch :(id)a4;
- (id)flush;
@end

@implementation JSMetrics

- (id)enqueueBatch:(id)batch :(id)a4
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10005B634(v5, v6);
  v9 = v8;

  return v9;
}

- (id)enqueue:(id)enqueue :(id)a4 :(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v12 = sub_100126BF0(v6, v8, v9, v10);

  return v12;
}

- (id)flush
{
  selfCopy = self;
  v3 = sub_100127ED4();

  return v3;
}

@end