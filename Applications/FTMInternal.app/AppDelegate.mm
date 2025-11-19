@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (_TtC11FTMInternal11AppDelegate)init;
- (uint64_t)applicationDidEnterBackground:;
- (void)applicationDidBecomeActive:;
- (void)applicationWillTerminate:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation AppDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11FTMInternal11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11FTMInternal11AppDelegate_window) = a3;
  v3 = a3;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10021FE34(&qword_100377E20, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_10021F79C();

  return v8 & 1;
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = qword_100374FA8;
  v5 = a3;
  v9 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    [v7 removeAWDConfigForAppid:v8];

    v5 = v7;
    v9 = v8;
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
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
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
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v11 = v0;
    v1 = [objc_opt_self() mainBundle];
    if (qword_100375018 != -1)
    {
      swift_once();
    }

    v2 = qword_100382500;
    v3 = *(qword_100382500 + 176);
    v4 = *(qword_100382500 + 184);

    v5 = String._bridgeToObjectiveC()();

    v6 = String._bridgeToObjectiveC()();
    v7 = [v1 pathForResource:v5 ofType:v6];

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