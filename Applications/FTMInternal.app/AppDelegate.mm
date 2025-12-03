@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC11FTMInternal11AppDelegate)init;
- (uint64_t)applicationDidEnterBackground:;
- (void)applicationDidBecomeActive:;
- (void)applicationWillTerminate:(id)terminate;
- (void)setWindow:(id)window;
@end

@implementation AppDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11FTMInternal11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11FTMInternal11AppDelegate_window) = window;
  windowCopy = window;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10021FE34(&qword_100377E20, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_10021F79C();

  return v8 & 1;
}

- (void)applicationWillTerminate:(id)terminate
{
  v4 = qword_100374FA8;
  terminateCopy = terminate;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  sharedInstance = [objc_opt_self() sharedInstance];
  if (sharedInstance)
  {
    v7 = sharedInstance;
    v8 = String._bridgeToObjectiveC()();
    [v7 removeAWDConfigForAppid:v8];

    terminateCopy = v7;
    selfCopy = v8;
  }
}

- (_TtC11FTMInternal11AppDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11FTMInternal11AppDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11FTMInternal11AppDelegate_abmManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

- (uint64_t)applicationDidEnterBackground:
{
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  sharedInstance = [objc_opt_self() sharedInstance];
  if (sharedInstance)
  {
    v1 = sharedInstance;
    v2 = String._bridgeToObjectiveC()();
    [v1 removeAWDConfigForAppid:v2];

    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v3 = qword_100382508;
    sub_100211D70(0);

    v4 = qword_100382508;
    v5 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v6 = *&v4[v5];
    *&v4[v5] = _swiftEmptyArrayStorage;
    v7 = v4;

    sub_10020D3C0(0);

    v8 = qword_100382508;
    v9 = *&v8[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsGraphArray];
    *&v8[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsGraphArray] = _swiftEmptyArrayStorage;
  }

  else
  {
    static os_log_type_t.default.getter();

    return os_log(_:dso:log:type:_:)();
  }
}

- (void)applicationDidBecomeActive:
{
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  sharedInstance = [objc_opt_self() sharedInstance];
  if (sharedInstance)
  {
    v11 = sharedInstance;
    mainBundle = [objc_opt_self() mainBundle];
    if (qword_100375018 != -1)
    {
      swift_once();
    }

    v2 = qword_100382500;
    v3 = *(qword_100382500 + 176);
    v4 = *(qword_100382500 + 184);

    v5 = String._bridgeToObjectiveC()();

    v6 = String._bridgeToObjectiveC()();
    v7 = [mainBundle pathForResource:v5 ofType:v6];

    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
      v9 = [v11 addAWDConfigForAppId:v8 andProtofFilePath:v7];

      if (!v9)
      {
LABEL_18:

        return;
      }

      [v11 listen];
      v10 = String._bridgeToObjectiveC()();
      [v11 querySpecificMetric:v10 triggerRef:9999 triggerType:0 triggerID:*(v2 + 192) profileID:0 metricID:0];

      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
    }

    else
    {
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
    }

    os_log(_:dso:log:type:_:)();
    goto LABEL_18;
  }

  static os_log_type_t.default.getter();

  os_log(_:dso:log:type:_:)();
}

@end