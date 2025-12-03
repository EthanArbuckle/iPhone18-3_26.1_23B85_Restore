@interface AppDelegate
+ (id)createWindowWithScene:(id)scene;
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (UIWindow)window;
- (_TtC8Podcasts19LibraryDataProvider)libraryDataProvider;
- (void)application:(id)application openStateRestorationActivity:(id)activity;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillTerminate:(id)terminate;
- (void)handleDebugActivationFrom:(id)from;
- (void)setCommandController:(id)controller;
- (void)willConnectScene;
@end

@implementation AppDelegate

- (_TtC8Podcasts19LibraryDataProvider)libraryDataProvider
{
  type metadata accessor for LibraryDataProvider(0);
  selfCopy = self;

  BaseObjectGraph.inject<A>(_:)();

  return v5;
}

+ (id)createWindowWithScene:(id)scene
{
  v4 = objc_allocWithZone(UIWindow);
  sceneCopy = scene;
  v6 = [v4 initWithWindowScene:sceneCopy];
  v7 = objc_allocWithZone(UIColor);
  v8 = v6;
  v9 = [v7 initWithWhite:0.0 alpha:0.2];
  [v8 setBackgroundColor:v9];

  type metadata accessor for Theme();
  v10 = static Theme.appTintColor.getter();
  [v8 setTintColor:v10];

  return v8;
}

- (void)willConnectScene
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedApplication = [v3 sharedApplication];
  delegate = [sharedApplication delegate];

  if (!delegate)
  {
LABEL_5:

    return;
  }

  if ([delegate respondsToSelector:"window"])
  {
    window = [delegate window];
    swift_unknownObjectRelease();
    if (window)
    {
      v7 = sub_10001DB48();
      [window setRootViewController:v7];
    }

    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

- (UIWindow)window
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedApplication = [v3 sharedApplication];
  delegate = [sharedApplication delegate];

  if (delegate)
  {
    if ([delegate respondsToSelector:"window"])
    {
      window = [delegate window];

      swift_unknownObjectRelease();
      v8 = window;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  v8 = _Block_copy(handler);
  applicationCopy = application;
  activityCopy = activity;
  selfCopy = self;
  LOBYTE(self) = sub_10003BA44(activityCopy);
  _Block_release(v8);

  return self & 1;
}

- (void)applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100046AEC(activeCopy);
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
  sub_1002CF7E0(application, v8, v10, optionsCopy);
  v14 = v13;

  return v14 & 1;
}

- (void)setCommandController:(id)controller
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8Podcasts11AppDelegate_commandController);
  *(&self->super.super.isa + OBJC_IVAR____TtC8Podcasts11AppDelegate_commandController) = controller;
  controllerCopy = controller;
}

- (void)applicationDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100303FC8();
}

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  sub_1003042A4();
}

- (void)application:(id)application openStateRestorationActivity:(id)activity
{
  applicationCopy = application;
  activityCopy = activity;
  selfCopy = self;
  sub_100304634();
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_10002C074(&qword_100573110, type metadata accessor for OpenURLOptionsKey);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  v14 = sub_1003048D8(v10, v11);

  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

- (void)handleDebugActivationFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_100303384(fromCopy);
}

@end