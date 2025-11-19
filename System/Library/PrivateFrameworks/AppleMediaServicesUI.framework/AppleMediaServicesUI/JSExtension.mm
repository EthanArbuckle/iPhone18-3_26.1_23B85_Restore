@interface JSExtension
- (id)request:(id)a3 :(id)a4 :(id)a5;
- (id)requestSync:(id)a3 :(id)a4 :(id)a5;
- (void)requestAsyncEvent:(id)a3 :(id)a4 :(id)a5;
@end

@implementation JSExtension

- (id)request:(id)a3 :(id)a4 :(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v7 = a5;
  v8 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10010F9D4();
  v10 = v9;

  sub_100002C00(v12);

  return v10;
}

- (id)requestSync:(id)a3 :(id)a4 :(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v7 = a5;
  v8 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001108F4();
  v10 = v9;

  sub_100002C00(v13);
  if (v10)
  {
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  return v11.super.isa;
}

- (void)requestAsyncEvent:(id)a3 :(id)a4 :(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100110F70();

  sub_100002C00(v7);
}

@end