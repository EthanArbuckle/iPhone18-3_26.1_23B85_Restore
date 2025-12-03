@interface CHFitnessAppDelegate
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)application:(id)application handlerForIntent:(id)intent;
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation CHFitnessAppDelegate

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  LOBYTE(self) = sub_10045D82C(v7, v9, v10);

  return self & 1;
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100540F4C(builder);
  swift_unknownObjectRelease();
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_10054180C(sessionCopy);

  return v12;
}

- (id)application:(id)application handlerForIntent:(id)intent
{
  applicationCopy = application;
  intentCopy = intent;
  selfCopy = self;
  sub_100541270(intentCopy, v17);

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