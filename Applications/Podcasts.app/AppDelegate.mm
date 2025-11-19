@interface AppDelegate
+ (id)createWindowWithScene:(id)a3;
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (UIWindow)window;
- (_TtC8Podcasts19LibraryDataProvider)libraryDataProvider;
- (void)application:(id)a3 openStateRestorationActivity:(id)a4;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)handleDebugActivationFrom:(id)a3;
- (void)setCommandController:(id)a3;
- (void)willConnectScene;
@end

@implementation AppDelegate

- (_TtC8Podcasts19LibraryDataProvider)libraryDataProvider
{
  type metadata accessor for LibraryDataProvider(0);
  v3 = self;

  BaseObjectGraph.inject<A>(_:)();

  return v5;
}

+ (id)createWindowWithScene:(id)a3
{
  v4 = objc_allocWithZone(UIWindow);
  v5 = a3;
  v6 = [v4 initWithWindowScene:v5];
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
  v8 = self;
  v4 = [v3 sharedApplication];
  v5 = [v4 delegate];

  if (!v5)
  {
LABEL_5:

    return;
  }

  if ([v5 respondsToSelector:"window"])
  {
    v6 = [v5 window];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = sub_10001DB48();
      [v6 setRootViewController:v7];
    }

    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

- (UIWindow)window
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedApplication];
  v6 = [v5 delegate];

  if (v6)
  {
    if ([v6 respondsToSelector:"window"])
    {
      v7 = [v6 window];

      swift_unknownObjectRelease();
      v8 = v7;
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

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v11 = self;
  LOBYTE(self) = sub_10003BA44(v10);
  _Block_release(v8);

  return self & 1;
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100046AEC(v4);
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
  sub_1002CF7E0(a3, v8, v10, v5);
  v14 = v13;

  return v14 & 1;
}

- (void)setCommandController:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8Podcasts11AppDelegate_commandController);
  *(&self->super.super.isa + OBJC_IVAR____TtC8Podcasts11AppDelegate_commandController) = a3;
  v3 = a3;
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100303FC8();
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003042A4();
}

- (void)application:(id)a3 openStateRestorationActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100304634();
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_10002C074(&qword_100573110, type metadata accessor for OpenURLOptionsKey);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  v14 = sub_1003048D8(v10, v11);

  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

- (void)handleDebugActivationFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100303384(v4);
}

@end