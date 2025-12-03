@interface AppDelegate
+ (uint64_t)main;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000CD38(&qword_100021CA0, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_10000C034();

  return v8 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_10000C1F8(sessionCopy);

  return v12;
}

+ (uint64_t)main
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v0, v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v36 - v8;
  static Logger.angel.getter();
  v10._countAndFlagsBits = 0x29286E69616DLL;
  v11._object = 0x8000000100017DC0;
  v11._countAndFlagsBits = 0xD000000000000062;
  v10._object = 0xE600000000000000;
  Logger.debugMarker(_:file:line:function:)(0, v11, 46, v10);
  v39 = *(v1 + 8);
  v39(v9, v0);
  type metadata accessor for AngelServer();
  v12 = static AngelServer.sharedInstance.getter();
  AngelServer.startUp()();

  v13 = type metadata accessor for LiveActivityDisplayingVendor();
  v14 = swift_allocObject();
  v41[3] = v13;
  v41[4] = sub_10000CD38(&unk_100021D40, type metadata accessor for LiveActivityDisplayingVendor);
  v41[0] = v14;
  v15 = static AngelServer.sharedInstance.getter();
  AngelServer.provideLiveActivityVendor(_:)();

  v16 = objc_opt_self();
  static RunningBoardServiceSpecification.serviceDomain.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 activateManualDomain:v17];

  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  type metadata accessor for Application();
  v24 = swift_getObjCClassFromMetadata();
  v25 = NSStringFromClass(v24);
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  static Logger.angel.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v37 = v0;
    v29 = v28;
    v30 = swift_slowAlloc();
    v38 = v18;
    v31 = v30;
    v40 = v30;
    *v29 = 136446210;
    v32 = sub_100007624(v21, v23, &v40);

    *(v29 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "appDelegateClassString: %{public}s", v29, 0xCu);
    sub_1000043B8(v31);

    v39(v6, v37);
    v18 = v38;
  }

  else
  {

    v39(v6, v0);
  }

  v33 = static CommandLine.argc.getter();
  v34 = static CommandLine.unsafeArgv.getter();
  UIApplicationMain(v33, v34, v25, v20);

  if (v18)
  {
    [v18 invalidate];
    swift_unknownObjectRelease();
  }

  return sub_1000043B8(v41);
}

@end