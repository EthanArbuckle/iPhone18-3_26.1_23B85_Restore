@interface FMAppDelegate
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
- (void)buildMenuWithBuilder:(id)builder;
- (void)onMenuAction:(id)action;
- (void)setWindow:(id)window;
- (void)validateCommand:(id)command;
@end

@implementation FMAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000A4B0(&qword_1006AF350, type metadata accessor for LaunchOptionsKey);
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  sub_100004E30(applicationCopy, optionsCopy);

  return 1;
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  v8 = _Block_copy(handler);
  applicationCopy = application;
  activityCopy = activity;
  selfCopy = self;
  LOBYTE(self) = sub_1000C27E8(activityCopy);
  _Block_release(v8);

  return self & 1;
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
  v13 = sub_10012277C(application, v8, v10, optionsCopy);

  return v13 & 1;
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC6FindMy13FMAppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC6FindMy13FMAppDelegate_window) = window;
  windowCopy = window;
}

- (void)applicationWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1003E1C00();
}

- (void)applicationDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1003E1DC4();
}

- (void)applicationWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1003E2500();
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  LOBYTE(self) = sub_1003E281C(v10);

  (*(v8 + 8))(v10, v7);
  return self & 1;
}

- (void)applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1003E0ED8(activeCopy);
}

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  sub_1003E2A50();
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10048B9C8(builder);
  swift_unknownObjectRelease();
}

- (void)onMenuAction:(id)action
{
  v4 = qword_1006AEC80;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  sub_100110FE0();
  sub_10047121C(action);

  swift_unknownObjectRelease();
}

- (void)validateCommand:(id)command
{
  v3 = qword_1006AEC80;
  commandCopy = command;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_100110FE0();
  sub_100470874(commandCopy);
}

@end