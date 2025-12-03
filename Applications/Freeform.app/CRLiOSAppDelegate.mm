@interface CRLiOSAppDelegate
+ (_TtC8Freeform17CRLiOSAppDelegate)shared;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)applicationWillTerminate:(id)terminate;
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation CRLiOSAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:role];

  return v9;
}

- (void)applicationWillEnterForeground
{
  selfCopy = self;
  sub_100051E20();
}

+ (_TtC8Freeform17CRLiOSAppDelegate)shared
{
  sharedApplication = [objc_opt_self() sharedApplication];
  delegate = [sharedApplication delegate];

  if (delegate)
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
  selfCopy = self;
  sub_10077E21C();
}

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  sub_100788354();
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10077E9D0(builder);
  swift_unknownObjectRelease();
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  if (!test)
  {
    v8 = 0;
    v10 = 0;
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  applicationCopy = application;
  selfCopy = self;
  v13 = sub_100B8A6DC(application, v8, v10, optionsCopy);

  return v13 & 1;
}

@end