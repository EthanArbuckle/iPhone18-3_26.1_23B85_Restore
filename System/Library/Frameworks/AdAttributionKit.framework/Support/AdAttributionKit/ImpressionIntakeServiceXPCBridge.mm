@interface ImpressionIntakeServiceXPCBridge
- (_TtC20AttributionKitDaemon32ImpressionIntakeServiceXPCBridge)init;
- (void)processReengagementWithAdvertisedItemID:(unint64_t)a3 intakeRequestData:(id)a4 reengagementURL:(id)a5 reply:(id)a6;
- (void)recordImpressionWithAdvertisedItemID:(unint64_t)a3 intakeRequestData:(id)a4 reply:(id)a5;
@end

@implementation ImpressionIntakeServiceXPCBridge

- (void)recordImpressionWithAdvertisedItemID:(unint64_t)a3 intakeRequestData:(id)a4 reply:(id)a5
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = _Block_copy(a5);
  v14 = a4;
  v15 = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  v20 = OBJC_IVAR____TtC20AttributionKitDaemon32ImpressionIntakeServiceXPCBridge_service;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = v16;
  v22[4] = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1001BA4B0;
  *(v23 + 24) = v22;
  sub_1000438D8(v16, v18);

  sub_10016FE7C("Record Impression", 17, 2, sub_1000849C4, v19, v15 + v20, v12, &unk_1001BA4C0, v23);

  sub_10001BABC(v16, v18);
  sub_10000DAF8(v12, &qword_100239EE0, &qword_1001B3640);
}

- (void)processReengagementWithAdvertisedItemID:(unint64_t)a3 intakeRequestData:(id)a4 reengagementURL:(id)a5 reply:(id)a6
{
  v36 = a3;
  v10 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v33 - v12;
  v14 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  v20 = _Block_copy(a6);
  v21 = a4;
  v22 = self;
  v23 = a5;
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v23)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = type metadata accessor for URL();
    (*(*(v27 - 8) + 56))(v19, 0, 1, v27);
  }

  else
  {
    v28 = type metadata accessor for URL();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  }

  v34 = OBJC_IVAR____TtC20AttributionKitDaemon32ImpressionIntakeServiceXPCBridge_service;
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  sub_10001B8EC(v19, v17);
  v30 = v13;
  v31 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v32 = swift_allocObject();
  v32[2] = v36;
  v32[3] = v24;
  v32[4] = v26;
  sub_100054734(v17, v32 + v31);
  _Block_copy(v20);
  sub_1000438D8(v24, v26);
  sub_1000F2F0C("Process Reengagement", 20, 2, v22 + v34, v30, &unk_1001BA4A0, v32, v22, v20);
  _Block_release(v20);

  _Block_release(v20);
  sub_10001BABC(v24, v26);
  sub_10000DAF8(v30, &qword_100239EE0, &qword_1001B3640);
  sub_10000DAF8(v19, &qword_10023C230, &qword_1001B4FB0);
}

- (_TtC20AttributionKitDaemon32ImpressionIntakeServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end