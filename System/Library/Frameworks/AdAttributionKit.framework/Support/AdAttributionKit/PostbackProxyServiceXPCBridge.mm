@interface PostbackProxyServiceXPCBridge
- (_TtC20AttributionKitDaemon29PostbackProxyServiceXPCBridge)init;
- (void)updateConversionValue:(id)a3 reply:(id)a4;
@end

@implementation PostbackProxyServiceXPCBridge

- (void)updateConversionValue:(id)a3 reply:(id)a4
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
  v18 = OBJC_IVAR____TtC20AttributionKitDaemon29PostbackProxyServiceXPCBridge_service;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1001C2760;
  *(v21 + 24) = v20;
  sub_1000438D8(v14, v16);

  sub_1001713B8("Protected Update Postback", 25, 2, sub_1000849C4, v17, v13 + v18, v10, &unk_1001C2770, v21);

  sub_10001BABC(v14, v16);
  sub_10009D7BC(v10);
}

- (_TtC20AttributionKitDaemon29PostbackProxyServiceXPCBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end