@interface TokenHandoffServiceXPCBridge
- (_TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge)init;
- (void)handoffPODTokenWithAdvertisedItemID:(unint64_t)d tokenData:(id)data reply:(id)reply;
- (void)handoffTokenWithAdvertisedItemID:(unint64_t)d tokenData:(id)data requestData:(id)requestData reply:(id)reply;
- (void)handoffUTMetricsWithAdvertisedItemID:(unint64_t)d eventsData:(id)data reply:(id)reply;
- (void)isEligibleForPurchaseProcessingWithAppItemID:(unint64_t)d reply:(id)reply;
- (void)processInAppPurchaseWithAppItemID:(unint64_t)d inAppPurchaseData:(id)data reply:(id)reply;
- (void)reportPurchaseIntakeFailureWithAppItemID:(unint64_t)d error:(id)error reply:(id)reply;
@end

@implementation TokenHandoffServiceXPCBridge

- (void)handoffTokenWithAdvertisedItemID:(unint64_t)d tokenData:(id)data requestData:(id)requestData reply:(id)reply
{
  v11 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v30 - v13;
  v15 = _Block_copy(reply);
  dataCopy = data;
  requestDataCopy = requestData;
  selfCopy = self;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = swift_allocObject();
  *(v25 + 16) = v15;
  v26 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = d;
  v28[3] = v19;
  v28[4] = v21;
  v28[5] = v22;
  v28[6] = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = &unk_1001BFB58;
  *(v29 + 24) = v28;
  sub_1000438D8(v19, v21);
  sub_1000438D8(v22, v24);

  sub_100170B38("Handoff Token", 13, 2, sub_10009DA9C, v25, selfCopy + v26, v14, &unk_1001BFB60, v29);

  sub_10001BABC(v22, v24);
  sub_10001BABC(v19, v21);
  sub_10009D7BC(v14);
}

- (void)handoffUTMetricsWithAdvertisedItemID:(unint64_t)d eventsData:(id)data reply:(id)reply
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  v20 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = d;
  v22[3] = v16;
  v22[4] = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1001BFB40;
  *(v23 + 24) = v22;
  sub_1000438D8(v16, v18);

  sub_100170B38("Handoff UT Metrics", 18, 2, sub_10009DA9C, v19, selfCopy + v20, v12, &unk_1001BFB48, v23);

  sub_10001BABC(v16, v18);
  sub_10009D7BC(v12);
}

- (void)handoffPODTokenWithAdvertisedItemID:(unint64_t)d tokenData:(id)data reply:(id)reply
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  v20 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = d;
  v22[3] = v16;
  v22[4] = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1001BFB28;
  *(v23 + 24) = v22;
  sub_1000438D8(v16, v18);

  sub_100170B38("Handoff Token", 13, 2, sub_10009DA9C, v19, selfCopy + v20, v12, &unk_1001BFB30, v23);

  sub_10001BABC(v16, v18);
  sub_10009D7BC(v12);
}

- (void)isEligibleForPurchaseProcessingWithAppItemID:(unint64_t)d reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = d;
  selfCopy = self;
  sub_100170F78("Is Eligible For Purchase Processing", 35, 2, sub_10009DA9C, v12, self + v13, v10, &unk_1001BFB18, v15);

  sub_10009D7BC(v10);
}

- (void)processInAppPurchaseWithAppItemID:(unint64_t)d inAppPurchaseData:(id)data reply:(id)reply
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  v20 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = d;
  v22[3] = v16;
  v22[4] = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1001BFB00;
  *(v23 + 24) = v22;
  sub_1000438D8(v16, v18);

  sub_100170B38("Process In-App Purchase", 23, 2, sub_10009DA9C, v19, selfCopy + v20, v12, &unk_1001BFB08, v23);

  sub_10001BABC(v16, v18);
  sub_10009D7BC(v12);
}

- (void)reportPurchaseIntakeFailureWithAppItemID:(unint64_t)d error:(id)error reply:(id)reply
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = d;
  *(v17 + 24) = error;
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1001BFAE0;
  *(v18 + 24) = v17;
  errorCopy = error;
  selfCopy = self;

  sub_100170B38("Report Purchase Intake Failure", 30, 2, sub_1000849C4, v14, self + v15, v12, &unk_1001BFAF0, v18);

  sub_10009D7BC(v12);
}

- (_TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end