@interface Client
- (_TtC13MediaRemoteUI6Client)init;
- (int64_t)hash;
- (void)connectForBannerPresentation:(id)a3 reason:(id)a4 reply:(id)a5;
- (void)revokeAllBannersWithReply:(id)a3;
- (void)revokeBannerWithIdentifier:(id)a3 withReply:(id)a4;
@end

@implementation Client

- (void)connectForBannerPresentation:(id)a3 reason:(id)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a3;
  v12 = self;
  sub_100020FB0(v11, v8, v10, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)revokeAllBannersWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_100031E64(0x757165722044524DLL, 0xEB00000000747365, sub_100021DF0, v5);
}

- (void)revokeBannerWithIdentifier:(id)a3 withReply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_10001EE08(v6, v8, sub_100021DAC, v9);
}

- (int64_t)hash
{
  v2 = self;
  v3 = UUID.hashValue.getter();

  return v3;
}

- (_TtC13MediaRemoteUI6Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end