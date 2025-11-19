@interface CRLiOSAppDelegate
+ (_TtC8Freeform17CRLiOSAppDelegate)shared;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)applicationWillTerminate:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation CRLiOSAppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:v6];

  return v9;
}

- (void)applicationWillEnterForeground
{
  v2 = self;
  sub_100051E20();
}

+ (_TtC8Freeform17CRLiOSAppDelegate)shared
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v5 = swift_dynamicCastClassUnconditional();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)applicationDidEnterBackground
{
  v2 = self;
  sub_10077E21C();
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100788354();
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10077E9D0(a3);
  swift_unknownObjectRelease();
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v5 = a5;
  if (!a4)
  {
    v8 = 0;
    v10 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v5)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v11 = a3;
  v12 = self;
  v13 = sub_100B8A6DC(a3, v8, v10, v5);

  return v13 & 1;
}

@end