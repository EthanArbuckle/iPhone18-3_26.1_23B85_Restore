@interface AppDelegate
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)buildMenuWithBuilder:(id)builder;
- (void)handleDebugActivationFrom:(id)from;
- (void)mediaTokenAccountDidChange;
- (void)setWindow:(id)window;
- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100005E5C(&qword_100985B30, 255, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_1000036A0();

  return v8 & 1;
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  if (!window)
  {
    return 30;
  }

  windowCopy = window;
  traitCollection = [windowCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100009828();
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStore11AppDelegate_window) = window;
  windowCopy = window;
}

- (void)applicationWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_10044290C();
}

- (void)applicationDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100442B6C();
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_100005E5C(&qword_100985B20, 255, type metadata accessor for OpenURLOptionsKey);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  v14 = sub_100442D30(v10, v11);

  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  v8 = _Block_copy(handler);
  applicationCopy = application;
  activityCopy = activity;
  selfCopy = self;
  LOBYTE(self) = sub_100443298(activityCopy);
  _Block_release(v8);

  return self & 1;
}

- (void)application:(id)application performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  applicationCopy = application;
  itemCopy = item;
  selfCopy = self;
  sub_1004435D0(itemCopy, sub_1004428F4, v9);
}

- (void)mediaTokenAccountDidChange
{
  selfCopy = self;
  sub_10043F370();
}

- (void)handleDebugActivationFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  if ([fromCopy state] == 3)
  {
    sub_10043F4D8();
  }
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v7 = type metadata accessor for BootstrapPhase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1004428B4;
  *(v13 + 24) = v12;
  (*(v8 + 104))(v10, enum case for BootstrapPhase.presentingContent(_:), v7);
  selfCopy = self;

  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  (*(v8 + 8))(v10, v7);
}

- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification
{
  v5 = type metadata accessor for BootstrapPhase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = self;
  (*(v6 + 104))(v8, enum case for BootstrapPhase.presentingContent(_:), v5);
  selfCopy = self;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  (*(v6 + 8))(v8, v5);
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1004422E0(builder);
  swift_unknownObjectRelease();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_100442460(action, v10);

  sub_10002B894(v10, &unk_1009711D0);
  return v8 & 1;
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
  sub_10069BF60(application, v8, v10, optionsCopy);
  v14 = v13;

  return v14 & 1;
}

@end