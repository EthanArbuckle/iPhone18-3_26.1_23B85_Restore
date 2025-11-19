@interface BuddyAppStateManager
+ (id)currentAppStates;
+ (void)persist:(id)a3 to:(id)a4;
- (_TtC5Setup20BuddyAppStateManager)init;
@end

@implementation BuddyAppStateManager

+ (id)currentAppStates
{
  sub_10001544C();
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (void)persist:(id)a3 to:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v6 persistImmediately:1];
}

- (_TtC5Setup20BuddyAppStateManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BuddyAppStateManager();
  return [(BuddyAppStateManager *)&v3 init];
}

@end