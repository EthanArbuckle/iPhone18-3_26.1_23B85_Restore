@interface GameOverlayUIService
- (_TtC13GameOverlayUI20GameOverlayUIService)init;
- (uint64_t)closeDashboard;
- (void)checkDashboardOverlayVisibility:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)setUpAccessPointWithLocation:(id)a3 useCase:(id)a4 gameInternal:(id)a5 didReturnToForeground:(id)a6 newToGameCenter:(id)a7 sceneIdentifier:(id)a8;
- (void)showDashboardWithInitialState:(id)a3 canDismissWithGesture:(id)a4 sceneIdentifier:(id)a5;
- (void)showGameModeBannerWithBundleIdentifier:(id)a3 available:(id)a4 required:(id)a5 enabled:(id)a6 showText:(id)a7;
- (void)showGameModeBannerWithConfig:(id)a3;
- (void)showInGameBannerWithData:(id)a3 gameInternal:(id)a4 sceneIdentifier:(id)a5;
- (void)showPlayTogetherWithData:(id)a3 sceneIdentifier:(id)a4;
- (void)tearDownAccessPointWithSceneIdentifier:(id)a3;
- (void)updateAccessPointWithLocation:(id)a3 gameInternal:(id)a4 sceneIdentifier:(id)a5;
@end

@implementation GameOverlayUIService

- (void)checkDashboardOverlayVisibility:(id)a3
{
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = sub_100040248;
  v11[5] = v9;
  sub_100014BBC(0, 0, v7, &unk_1000EA4D8, v11);
}

- (void)setUpAccessPointWithLocation:(id)a3 useCase:(id)a4 gameInternal:(id)a5 didReturnToForeground:(id)a6 newToGameCenter:(id)a7 sceneIdentifier:(id)a8
{
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v28 = self;
  v21 = a8;
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v21)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  sub_10003BF30(v29, v14, v15, v17, v22, v24, v19, v20, v25, v27);

  sub_100030784(v22, v24);
}

- (void)tearDownAccessPointWithSceneIdentifier:(id)a3
{
  v5 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v18 = self;
  v11 = sub_10007C628(0, a3, v10);
  v13 = v12;

  if (v13)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v11;
    v15[5] = v13;
    sub_100014BBC(0, 0, v8, &unk_1000EA488, v15);
  }

  else
  {
    v16 = v18;
  }
}

- (void)updateAccessPointWithLocation:(id)a3 gameInternal:(id)a4 sceneIdentifier:(id)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a4;
  v12 = self;
  v13 = a5;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v13)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_100034ECC(v8, v10, v14, v16, v17, v19);

  sub_100030784(v14, v16);
}

- (void)showInGameBannerWithData:(id)a3 gameInternal:(id)a4 sceneIdentifier:(id)a5
{
  v8 = a3;
  v20 = self;
  v9 = a4;
  v10 = a5;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v9)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v10)
    {
LABEL_3:
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0xF000000000000000;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  sub_100036D58(v11, v13, v14, v16, v17, v19);

  sub_10003091C(v14, v16);
  sub_100030784(v11, v13);
}

- (void)showDashboardWithInitialState:(id)a3 canDismissWithGesture:(id)a4 sceneIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17 = self;
  v10 = a5;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v10)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_10003D8D4(v11, v13, v9, v14, v16);

  sub_100030784(v11, v13);
}

- (void)showPlayTogetherWithData:(id)a3 sceneIdentifier:(id)a4
{
  v6 = a3;
  v14 = self;
  v7 = a4;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v7)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_10003E018(v8, v10, v11, v13);

  sub_100030784(v8, v10);
}

- (void)showGameModeBannerWithBundleIdentifier:(id)a3 available:(id)a4 required:(id)a5 enabled:(id)a6 showText:(id)a7
{
  v9 = a3;
  v10 = a6;
  v12 = self;
  v11 = [objc_allocWithZone(GKGameModeBannerConfig) initWithBundleIdentifier:v9 enabled:objc_msgSend(v10 actionSymbols:{"BOOLValueSafe"), 0}];

  sub_10003EB8C(v11);
}

- (void)showGameModeBannerWithConfig:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003EB8C(v4);
}

- (uint64_t)closeDashboard
{
  v0 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100011F80(v8, qword_100135C88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "GameOverlayUIService: closeDashboard called", v11, 2u);
  }

  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.dashboardVisibility.getter();

  v12 = (*(v1 + 88))(v7, v0);
  v13 = enum case for ZoomCoordinator.DashboardVisibilityState.open(_:);
  result = (*(v1 + 8))(v7, v0);
  if (v12 == v13)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "GameOverlayUIService: setting dashboard visibility to closed", v17, 2u);
    }

    static ZoomCoordinator.shared.getter();
    (*(v1 + 104))(v5, enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:), v0);
    dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();
  }

  return result;
}

- (_TtC13GameOverlayUI20GameOverlayUIService)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(GameOverlayUIService *)&v5 init];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_10007CA7C(v8);

  swift_unknownObjectRelease();
}

@end