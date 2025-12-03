@interface ServiceXPCBridge
- (_TtC20AttributionKitDaemon16ServiceXPCBridge)init;
- (void)endViewWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s reply:(id)reply;
- (void)handleHeartbeatWithReply:(id)reply;
- (void)preflightImpressionWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s adNetworkID:(id)iD reply:(id)reply;
- (void)processTapWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s eventMessage:(id)message reengagementURL:(id)l reply:(id)reply;
- (void)reportDeveloperBillingEvent:(id)event reply:(id)reply;
- (void)startViewWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s reply:(id)reply;
- (void)updateConversionValue:(id)value reply:(id)reply;
@end

@implementation ServiceXPCBridge

- (void)handleHeartbeatWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  selfCopy = self;
  sub_1001717F8("Heartbeat", 9, 2, sub_10009DA9C, v10, self + v11, v8, &unk_1001C33D0, 0);

  sub_10000DAF8(v8, &qword_100239EE0, &qword_1001B3640);
}

- (void)updateConversionValue:(id)value reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = _Block_copy(reply);
  valueCopy = value;
  selfCopy = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1001C33C0;
  *(v21 + 24) = v20;
  sub_1000438D8(v14, v16);

  sub_1001717F8("Update Postback", 15, 2, sub_10009DA9C, v17, selfCopy + v18, v10, &unk_1001C33C8, v21);

  sub_10001BABC(v14, v16);
  sub_10000DAF8(v10, &qword_100239EE0, &qword_1001B3640);
}

- (void)preflightImpressionWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s adNetworkID:(id)iD reply:(id)reply
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  v13 = _Block_copy(reply);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  v21 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = d;
  v23[3] = v14;
  v23[4] = v16;
  v23[5] = v17;
  v23[6] = v19;
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_1001C33A8;
  *(v24 + 24) = v23;
  selfCopy = self;

  sub_1001717F8("Preflight Impression", 20, 2, sub_10009DA9C, v20, self + v21, v12, &unk_1001C33B0, v24);

  sub_10000DAF8(v12, &qword_100239EE0, &qword_1001B3640);
}

- (void)startViewWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s reply:(id)reply
{
  v8 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = _Block_copy(reply);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = d;
  v19[3] = v13;
  v19[4] = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1001C3390;
  *(v20 + 24) = v19;
  selfCopy = self;

  sub_1001717F8("Start View", 10, 2, sub_10009DA9C, v16, self + v17, v11, &unk_1001C3398, v20);

  sub_10000DAF8(v11, &qword_100239EE0, &qword_1001B3640);
}

- (void)endViewWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s reply:(id)reply
{
  v8 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = _Block_copy(reply);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = d;
  v19[3] = v13;
  v19[4] = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1001C3378;
  *(v20 + 24) = v19;
  selfCopy = self;

  sub_1001717F8("End View", 8, 2, sub_10009DA9C, v16, self + v17, v11, &unk_1001C3380, v20);

  sub_10000DAF8(v11, &qword_100239EE0, &qword_1001B3640);
}

- (void)processTapWithAdvertisedItemID:(unint64_t)d compactJWS:(id)s eventMessage:(id)message reengagementURL:(id)l reply:(id)reply
{
  dCopy = d;
  messageCopy = message;
  selfCopy = self;
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  v13 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  v17 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v20 = _Block_copy(reply);
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
  }

  else
  {
    v25 = type metadata accessor for URL();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  v27 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  sub_10001B8EC(v19, v17);
  v29 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v30 = swift_allocObject();
  v31 = messageCopy;
  v30[2] = dCopy;
  v30[3] = v21;
  v30[4] = v23;
  v30[5] = v31;
  sub_100054734(v17, v30 + v29);
  v32 = swift_allocObject();
  *(v32 + 16) = &unk_1001C3360;
  *(v32 + 24) = v30;
  v33 = v31;
  v34 = selfCopy;
  v35 = selfCopy;

  sub_1001717F8("Process Tap", 11, 2, sub_10009DA9C, v26, v34 + v27, v12, &unk_1001C3368, v32);

  sub_10000DAF8(v12, &qword_100239EE0, &qword_1001B3640);
  sub_10000DAF8(v19, &qword_10023C230, &qword_1001B4FB0);
}

- (void)reportDeveloperBillingEvent:(id)event reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = _Block_copy(reply);
  eventCopy = event;
  selfCopy = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1001C3338;
  *(v21 + 24) = v20;
  sub_1000438D8(v14, v16);

  sub_1001717F8("Report Developer Billing Event", 30, 2, sub_1000849C4, v17, selfCopy + v18, v10, &unk_1001C3348, v21);

  sub_10001BABC(v14, v16);
  sub_10000DAF8(v10, &qword_100239EE0, &qword_1001B3640);
}

- (_TtC20AttributionKitDaemon16ServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end