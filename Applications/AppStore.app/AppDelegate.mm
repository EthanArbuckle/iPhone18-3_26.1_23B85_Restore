@interface AppDelegate
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4;
- (void)application:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)handleDebugActivationFrom:(id)a3;
- (void)mediaTokenAccountDidChange;
- (void)setWindow:(id)a3;
- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100005E5C(&qword_100985B30, 255, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_1000036A0();

  return v8 & 1;
}

- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4
{
  if (!a4)
  {
    return 30;
  }

  v4 = a4;
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100009828();
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore11AppDelegate_window) = a3;
  v3 = a3;
}

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10044290C();
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100442B6C();
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_100005E5C(&qword_100985B20, 255, type metadata accessor for OpenURLOptionsKey);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  v14 = sub_100442D30(v10, v11);

  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v11 = self;
  LOBYTE(self) = sub_100443298(v10);
  _Block_release(v8);

  return self & 1;
}

- (void)application:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1004435D0(v11, sub_1004428F4, v9);
}

- (void)mediaTokenAccountDidChange
{
  v2 = self;
  sub_10043F370();
}

- (void)handleDebugActivationFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == 3)
  {
    sub_10043F4D8();
  }
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v7 = type metadata accessor for BootstrapPhase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a5);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1004428B4;
  *(v13 + 24) = v12;
  (*(v8 + 104))(v10, enum case for BootstrapPhase.presentingContent(_:), v7);
  v14 = self;

  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  (*(v8 + 8))(v10, v7);
}

- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4
{
  v5 = type metadata accessor for BootstrapPhase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = self;
  (*(v6 + 104))(v8, enum case for BootstrapPhase.presentingContent(_:), v5);
  v9 = self;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  (*(v6 + 8))(v8, v5);
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1004422E0(a3);
  swift_unknownObjectRelease();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_100442460(a3, v10);

  sub_10002B894(v10, &unk_1009711D0);
  return v8 & 1;
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
  sub_10069BF60(a3, v8, v10, v5);
  v14 = v13;

  return v14 & 1;
}

@end