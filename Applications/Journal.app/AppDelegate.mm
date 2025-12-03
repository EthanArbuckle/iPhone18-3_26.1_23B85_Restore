@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)applicationDidReceiveMemoryWarning:;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)applicationWillTerminate:(id)terminate;
- (void)broadcastManualLockNotification;
- (void)buildMenuWithBuilder:(id)builder;
- (void)processAppBackgrounding;
- (void)processAppForegrounding;
- (void)processAppTermination;
- (void)processAppUnlock;
- (void)processManualLock;
- (void)protectedDataWillBecomeUnavailable:(id)unavailable;
- (void)resetIdentifierClicked;
- (void)showMacNotificationsSettings:(id)settings;
- (void)showMacSettings:(id)settings;
- (void)showNewWindow:(id)window;
- (void)validateCommand:(id)command;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1004B6488(&qword_100AD1B20, type metadata accessor for LaunchOptionsKey);
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  sub_100004484(applicationCopy, optionsCopy);

  return 1;
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  if (window && (v4 = window, v5 = [v4 traitCollection], v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v4, !v6))
  {
    return 2;
  }

  else
  {
    return 30;
  }
}

- (void)broadcastManualLockNotification
{
  defaultCenter = [objc_opt_self() defaultCenter];
  v3 = defaultCenter;
  if (qword_100ACF9F0 != -1)
  {
    swift_once();
    defaultCenter = v3;
  }

  [defaultCenter postNotificationName:qword_100B2F490 object:0];
}

- (void)processAppBackgrounding
{
  selfCopy = self;
  sub_1004AD324();
}

- (void)processAppTermination
{
  v2 = (self + OBJC_IVAR____TtC7Journal11AppDelegate_shouldEndSessionMutex);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  sub_1004ACCD8(&v2[1], selfCopy);
  os_unfair_lock_unlock(v2);
}

- (void)processAppUnlock
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal11AppDelegate_isAppLocked) = 0;
  selfCopy = self;
  sub_1004AD524();
}

- (void)processAppForegrounding
{
  selfCopy = self;
  sub_1004AD524();
}

- (void)processManualLock
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal11AppDelegate_isAppLocked) = 1;
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal11AppDelegate_hasProcessedLatestAppUnlock) = 0;
  selfCopy = self;
  sub_1004AD324();
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1004B6488(&qword_100AD1B20, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_1004B5A10();

  return v8 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:role];

  return v9;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12[2] = URL.absoluteString.getter();
  v12[3] = v9;
  v12[0] = 0x3A73746E656D6F6DLL;
  v12[1] = 0xEA00000000002F2FLL;
  sub_1001A90C8();
  sub_1000F2BEC();
  v10 = BidirectionalCollection<>.starts<A>(with:)();
  (*(v6 + 8))(v8, v5);

  return v10 & 1;
}

- (void)protectedDataWillBecomeUnavailable:(id)unavailable
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1003E9628(0, 0, v5, &unk_100958450, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)applicationWillTerminate:(id)terminate
{
  selfCopy = self;
  sub_1001D64B0();
  sub_1004AC808();
  AppSessionManager.appSessionDidTerminate()();
}

- (void)showNewWindow:(id)window
{
  v4 = type metadata accessor for UISceneSessionActivationRequest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (window)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sharedApplication = [objc_opt_self() sharedApplication];
  v9 = UIWindowSceneSessionRoleApplication;
  UISceneSessionActivationRequest.init(role:userActivity:options:)();
  UIApplication.activateSceneSession(for:errorHandler:)();

  (*(v5 + 8))(v7, v4);
  sub_100004F84(v10, &qword_100AD13D0);
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1004AF7BC(builder);
  swift_unknownObjectRelease();
}

- (void)showMacSettings:(id)settings
{
  v4 = type metadata accessor for UISceneSessionActivationRequest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (settings)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sharedApplication = [objc_opt_self() sharedApplication];
  type metadata accessor for MacSettingsSceneDelegate();
  sub_100454A18();
  UIApplication.activateSceneSession(for:errorHandler:)();

  (*(v5 + 8))(v7, v4);
  sub_100004F84(v9, &qword_100AD13D0);
}

- (void)showMacNotificationsSettings:(id)settings
{
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v7);
  v9 = v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (settings)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_storeEnumTagMultiPayload();
  sub_1008B4384(v6);
  sub_1008B4EFC(v6, 0, 0, 0);
  sub_100004F84(v6, &unk_100AD6DD0);
  sub_100439B24(v9, type metadata accessor for OpenSensitiveURLAction.Destination);
  sub_100004F84(v10, &qword_100AD13D0);
}

- (void)validateCommand:(id)command
{
  ObjectType = swift_getObjectType();
  commandCopy = command;
  selfCopy = self;
  [commandCopy action];
  if (static Selector.== infix(_:_:)())
  {
    [commandCopy setAttributes:(sub_100811FCC() & 1) == 0];
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = ObjectType;
    [(AppDelegate *)&v8 validateCommand:commandCopy];
  }
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

  v8 = sub_1004B44A0(action, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)resetIdentifierClicked
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004B54EC();
  if (v2)
  {
    v3 = v2;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v4 = String._bridgeToObjectiveC()();

    v5 = String._bridgeToObjectiveC()();

    v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v7 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1004ACC80;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10016B4D8;
    aBlock[3] = &unk_100A6F450;
    v8 = _Block_copy(aBlock);

    v9 = objc_opt_self();
    v10 = [v9 actionWithTitle:v7 style:0 handler:v8];
    _Block_release(v8);

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v9 actionWithTitle:v11 style:1 handler:0];

    [v6 addAction:v10];
    [v6 addAction:v12];
    [v3 presentViewController:v6 animated:1 completion:0];
  }
}

- (id)applicationDidReceiveMemoryWarning:
{
  if (qword_100ACFE20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100AE5A40);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received applicationDidReceiveMemoryWarning", v3, 2u);
  }

  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  sub_1004AAF1C();

  return sub_1007CEFE8();
}

@end