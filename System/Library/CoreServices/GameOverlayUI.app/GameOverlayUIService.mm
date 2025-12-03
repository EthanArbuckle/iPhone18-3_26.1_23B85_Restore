@interface GameOverlayUIService
- (_TtC13GameOverlayUI20GameOverlayUIService)init;
- (uint64_t)closeDashboard;
- (void)checkDashboardOverlayVisibility:(id)visibility;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)setUpAccessPointWithLocation:(id)location useCase:(id)case gameInternal:(id)internal didReturnToForeground:(id)foreground newToGameCenter:(id)center sceneIdentifier:(id)identifier;
- (void)showDashboardWithInitialState:(id)state canDismissWithGesture:(id)gesture sceneIdentifier:(id)identifier;
- (void)showGameModeBannerWithBundleIdentifier:(id)identifier available:(id)available required:(id)required enabled:(id)enabled showText:(id)text;
- (void)showGameModeBannerWithConfig:(id)config;
- (void)showInGameBannerWithData:(id)data gameInternal:(id)internal sceneIdentifier:(id)identifier;
- (void)showPlayTogetherWithData:(id)data sceneIdentifier:(id)identifier;
- (void)tearDownAccessPointWithSceneIdentifier:(id)identifier;
- (void)updateAccessPointWithLocation:(id)location gameInternal:(id)internal sceneIdentifier:(id)identifier;
@end

@implementation GameOverlayUIService

- (void)checkDashboardOverlayVisibility:(id)visibility
{
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = _Block_copy(visibility);
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

- (void)setUpAccessPointWithLocation:(id)location useCase:(id)case gameInternal:(id)internal didReturnToForeground:(id)foreground newToGameCenter:(id)center sceneIdentifier:(id)identifier
{
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  internalCopy = internal;
  foregroundCopy = foreground;
  centerCopy = center;
  selfCopy = self;
  identifierCopy = identifier;
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (identifierCopy)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  sub_10003BF30(v29, v14, v15, v17, v22, v24, foregroundCopy, centerCopy, v25, v27);

  sub_100030784(v22, v24);
}

- (void)tearDownAccessPointWithSceneIdentifier:(id)identifier
{
  v5 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  selfCopy = self;
  v11 = sub_10007C628(0, identifier, v10);
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
    v16 = selfCopy;
  }
}

- (void)updateAccessPointWithLocation:(id)location gameInternal:(id)internal sceneIdentifier:(id)identifier
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  internalCopy = internal;
  selfCopy = self;
  identifierCopy = identifier;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (identifierCopy)
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

- (void)showInGameBannerWithData:(id)data gameInternal:(id)internal sceneIdentifier:(id)identifier
{
  dataCopy = data;
  selfCopy = self;
  internalCopy = internal;
  identifierCopy = identifier;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (internalCopy)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (identifierCopy)
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
    if (identifierCopy)
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

- (void)showDashboardWithInitialState:(id)state canDismissWithGesture:(id)gesture sceneIdentifier:(id)identifier
{
  stateCopy = state;
  gestureCopy = gesture;
  selfCopy = self;
  identifierCopy = identifier;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (identifierCopy)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_10003D8D4(v11, v13, gestureCopy, v14, v16);

  sub_100030784(v11, v13);
}

- (void)showPlayTogetherWithData:(id)data sceneIdentifier:(id)identifier
{
  dataCopy = data;
  selfCopy = self;
  identifierCopy = identifier;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (identifierCopy)
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

- (void)showGameModeBannerWithBundleIdentifier:(id)identifier available:(id)available required:(id)required enabled:(id)enabled showText:(id)text
{
  identifierCopy = identifier;
  enabledCopy = enabled;
  selfCopy = self;
  v11 = [objc_allocWithZone(GKGameModeBannerConfig) initWithBundleIdentifier:identifierCopy enabled:objc_msgSend(enabledCopy actionSymbols:{"BOOLValueSafe"), 0}];

  sub_10003EB8C(v11);
}

- (void)showGameModeBannerWithConfig:(id)config
{
  configCopy = config;
  selfCopy = self;
  sub_10003EB8C(configCopy);
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

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10007CA7C(connectionCopy);

  swift_unknownObjectRelease();
}

@end