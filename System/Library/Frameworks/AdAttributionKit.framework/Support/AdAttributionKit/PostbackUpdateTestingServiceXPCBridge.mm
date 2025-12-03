@interface PostbackUpdateTestingServiceXPCBridge
- (_TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge)init;
- (void)clearBiomeWithClearEvent:(id)event reply:(id)reply;
- (void)fetchReengagementTokensWithReply:(id)reply;
- (void)getSnoutStoriesWithReply:(id)reply;
- (void)submitConversionEventWithEventData:(id)data reply:(id)reply;
- (void)submitPurchaseEventWithEventData:(id)data reply:(id)reply;
- (void)triggerFetchWithReply:(id)reply;
- (void)updateConversionValue:(id)value reply:(id)reply;
@end

@implementation PostbackUpdateTestingServiceXPCBridge

- (void)triggerFetchWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  selfCopy = self;
  sub_1001702C4("Trigger Fetch", 13, 2, sub_10009DA9C, v10, self + v11, v8, &unk_1001BAB38, 0);

  sub_10009D7BC(v8);
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
  v18 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1001BAB28;
  *(v21 + 24) = v20;
  sub_1000438D8(v14, v16);

  sub_1001702C4("Postback Update Testing", 23, 2, sub_10009DA9C, v17, selfCopy + v18, v10, &unk_1001BAB30, v21);

  sub_10001BABC(v14, v16);
  sub_10009D7BC(v10);
}

- (void)getSnoutStoriesWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  selfCopy = self;
  sub_100170708("Get Snout Stories", 17, 2, sub_10009DA9C, v10, self + v11, v8, &unk_1001BAB18, 0);

  sub_10009D7BC(v8);
}

- (void)fetchReengagementTokensWithReply:(id)reply
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  selfCopy = self;
  sub_1001702C4("Fetch Reengagement Tokens", 25, 2, sub_10009DA9C, v10, self + v11, v8, &unk_1001BAB10, 0);

  sub_10009D7BC(v8);
}

- (void)submitConversionEventWithEventData:(id)data reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1001BAB00;
  *(v21 + 24) = v20;
  sub_1000438D8(v14, v16);

  sub_1001702C4("Submit Conversion Event", 23, 2, sub_10009DA9C, v17, selfCopy + v18, v10, &unk_1001BAB08, v21);

  sub_10001BABC(v14, v16);
  sub_10009D7BC(v10);
}

- (void)submitPurchaseEventWithEventData:(id)data reply:(id)reply
{
  v7 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1001BAAE8;
  *(v21 + 24) = v20;
  sub_1000438D8(v14, v16);

  sub_1001702C4("Submit Purchase Event", 21, 2, sub_10009DA9C, v17, selfCopy + v18, v10, &unk_1001BAAF0, v21);

  sub_10001BABC(v14, v16);
  sub_10009D7BC(v10);
}

- (void)clearBiomeWithClearEvent:(id)event reply:(id)reply
{
  v6 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = _Block_copy(reply);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1001BAAC8;
  *(v18 + 24) = v17;
  selfCopy = self;

  sub_1001702C4("Clear Biome", 11, 2, sub_1000849C4, v14, self + v15, v9, &unk_1001BAAD8, v18);

  sub_10009D7BC(v9);
}

- (_TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end