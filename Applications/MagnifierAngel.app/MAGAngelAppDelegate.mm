@interface MAGAngelAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (uint64_t)applicationWillTerminate:;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4;
- (void)checkForDeactivationReasonWithNotification:(id)a3;
@end

@implementation MAGAngelAppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10002904C(&qword_10004F930, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_100028064();

  return v8 & 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_100028758(v9);

  return v12;
}

- (void)checkForDeactivationReasonWithNotification:(id)a3
{
  v3 = self;
  if ((static MAGAXUtilities.isVoiceOverRunning.getter() & 1) == 0)
  {
    sub_1000227C0();
  }
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100028AC0(a4, &unk_10004A680, &unk_100039770);
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100028AC0(a4, &unk_10004A540, &unk_100039548);
}

- (uint64_t)applicationWillTerminate:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100034404(0xD00000000000001CLL, 0x800000010003E640, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_100029000(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

@end