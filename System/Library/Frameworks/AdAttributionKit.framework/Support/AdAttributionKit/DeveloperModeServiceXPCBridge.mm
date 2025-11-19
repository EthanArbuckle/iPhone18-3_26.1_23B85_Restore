@interface DeveloperModeServiceXPCBridge
- (_TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge)init;
- (void)clearDevelopmentPostbacksWithReply:(id)a3;
- (void)createDevelopmentPostbacksWithConfigurationData:(id)a3 reply:(id)a4;
- (void)getDeveloperModeEnabledWithReply:(id)a3;
- (void)retrieveDeveloperPostbackURLForBundleID:(id)a3 reply:(id)a4;
- (void)setDeveloperModeEnabled:(BOOL)a3 reply:(id)a4;
- (void)transmitDevelopmentPostbacksWithReply:(id)a3;
@end

@implementation DeveloperModeServiceXPCBridge

- (void)getDeveloperModeEnabledWithReply:(id)a3
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = self;
  sub_100171C3C("Get Developer Mode Enabled", 26, 2, sub_10017E17C, v10, self + v11, v8, &unk_1001C3EB0, 0);

  sub_10000DAF8(v8, &qword_100239EE0, &qword_1001B3640);
}

- (void)setDeveloperModeEnabled:(BOOL)a3 reply:(id)a4
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1001C3EA0;
  *(v16 + 24) = v15;
  v17 = self;

  sub_100172084("Set Developer Mode Enabled", 26, 2, sub_10017E17C, v12, self + v13, v10, &unk_1001C3EA8, v16);

  sub_10000DAF8(v10, &qword_100239EE0, &qword_1001B3640);
}

- (void)retrieveDeveloperPostbackURLForBundleID:(id)a3 reply:(id)a4
{
  v6 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  v10 = _Block_copy(a4);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  v18 = self;
  sub_1001724CC("Retrieve Developer Postback URL", 31, 2, sub_10017E17C, v14, self + v15, v9, &unk_1001C3E60, v17);

  sub_10000DAF8(v9, &qword_100239EE0, &qword_1001B3640);
}

- (void)createDevelopmentPostbacksWithConfigurationData:(id)a3 reply:(id)a4
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = _Block_copy(a4);
  v12 = a3;
  v13 = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1001C3E40;
  *(v21 + 24) = v20;
  sub_1000438D8(v14, v16);

  sub_100172084("Create Development Postbacks", 28, 2, sub_10017E17C, v17, v13 + v18, v10, &unk_1001C3E50, v21);

  sub_10001BABC(v14, v16);
  sub_10000DAF8(v10, &qword_100239EE0, &qword_1001B3640);
}

- (void)transmitDevelopmentPostbacksWithReply:(id)a3
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = self;
  sub_100172084("Transmit Development Postbacks", 30, 2, sub_10017E17C, v10, self + v11, v8, &unk_1001C3E30, 0);

  sub_10000DAF8(v8, &qword_100239EE0, &qword_1001B3640);
}

- (void)clearDevelopmentPostbacksWithReply:(id)a3
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = self;
  sub_100172084("Clear Development Postbacks", 27, 2, sub_10017ABDC, v10, self + v11, v8, &unk_1001C3DC8, 0);

  sub_10000DAF8(v8, &qword_100239EE0, &qword_1001B3640);
}

- (_TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end