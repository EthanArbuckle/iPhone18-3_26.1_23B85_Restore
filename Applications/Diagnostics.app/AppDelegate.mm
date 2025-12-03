@interface AppDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)sceneDidDisconnect:;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)applicationWillTerminate:;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setWindow:(id)window;
@end

@implementation AppDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11Diagnostics11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11Diagnostics11AppDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000F82D4(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_10003E110(0, &qword_100201298);
  sub_1000AC8BC(&qword_1002012A0, &qword_100201298);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_1000F9680(v6);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1000F994C();
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1000F9B80();
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017EC00;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10003DFBC();
  *(v4 + 32) = 0xD000000000000027;
  *(v4 + 40) = 0x8000000100191D20;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:role];

  type metadata accessor for AppDelegate();
  [v7 setDelegateClass:swift_getObjCClassFromMetadata()];

  return v7;
}

- (id)sceneDidDisconnect:
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10003DFBC();
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x8000000100191D50;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  result = sub_1000660CC();
  if (result)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    result = UIApp;
    if (UIApp)
    {

      return [result terminateWithSuccess];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

- (void)applicationWillTerminate:
{
  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A4F8;
  v2 = sub_10003E110(0, &qword_1001FD6F0);
  *(v0 + 56) = v2;
  v3 = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v27 = v1;
  v4 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (qword_1001FC740 != -1)
  {
    swift_once();
  }

  sub_10009E188();
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication setIdleTimerDisabled:0];

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v6 = qword_10020A368;
  v7 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_isVoiceControlEnabled);
  *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_isVoiceControlEnabled) = 1;
  if ((v7 & 1) == 0)
  {
    SBSSpringBoardServerPort();
    SBSetVoiceControlEnabled();
  }

  v8 = *&v6[OBJC_IVAR____TtC11Diagnostics10Assertions_preventProxCardsQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000FADCC;
  *(v10 + 24) = v9;
  v32 = sub_10003DAA4;
  v33 = v10;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100060C48;
  v31 = &unk_1001C5E38;
  v11 = _Block_copy(&aBlock);
  v12 = v6;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_23;
  }

  v13 = *&v12[OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000FADD4;
  *(v15 + 24) = v14;
  v32 = sub_10003E41C;
  v33 = v15;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100060C48;
  v31 = &unk_1001C5EB0;
  v16 = _Block_copy(&aBlock);
  v17 = v12;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_23:
    __break(1u);
    return;
  }

  sub_10004FE88();
  v19 = sub_100050814();
  [v19 setDiscoverableMode:*&v17[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

  if (v17[OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState] != 2)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10017EC00;
    *(v20 + 56) = v2;
    *(v20 + 64) = v3;
    *(v20 + 32) = v27;
    v21 = v27;
    v22 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    SBSSetReachabilityEnabled();
  }

  if (v17[OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting] != 2)
  {
    _AXSClassicInvertColorsSetEnabled();
  }

  v23 = v17[OBJC_IVAR____TtC11Diagnostics10Assertions_voiceOverCaptionsUserSetting];
  if (v23 != 2)
  {
    sharedInstance = [objc_opt_self() sharedInstance];
    [sharedInstance setEnableVoiceOverCaptions:v23 & 1];
  }

  if ((v17[OBJC_IVAR____TtC11Diagnostics10Assertions_motionCuesUserSetting + 4] & 1) == 0)
  {
    _AXSSetMotionCuesModeAndShowBanner();
  }

  if (v17[OBJC_IVAR____TtC11Diagnostics10Assertions_assistiveTouchUserSetting] != 2)
  {
    _AXSAssistiveTouchSetEnabled();
  }

  sub_1000F9F38();
  v25 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
  v17[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v17[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
  v26 = sub_100050814();
  [v26 setNearbySharingEnabled:(v17[v25] & 1) == 0];
}

@end