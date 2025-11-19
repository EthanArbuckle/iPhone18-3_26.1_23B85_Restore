@interface CHFitnessAppDelegate
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (id)application:(id)a3 handlerForIntent:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation CHFitnessAppDelegate

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = sub_10045D82C(v7, v9, v10);

  return self & 1;
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100540F4C(a3);
  swift_unknownObjectRelease();
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10054180C(v9);

  return v12;
}

- (id)application:(id)a3 handlerForIntent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100541270(v7, v17);

  v9 = v18;
  if (v18)
  {
    v10 = sub_1000066AC(v17, v18);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    sub_100005A40(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end