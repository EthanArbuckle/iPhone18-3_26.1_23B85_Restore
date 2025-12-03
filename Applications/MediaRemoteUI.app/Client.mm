@interface Client
- (_TtC13MediaRemoteUI6Client)init;
- (int64_t)hash;
- (void)connectForBannerPresentation:(id)presentation reason:(id)reason reply:(id)reply;
- (void)revokeAllBannersWithReply:(id)reply;
- (void)revokeBannerWithIdentifier:(id)identifier withReply:(id)reply;
@end

@implementation Client

- (void)connectForBannerPresentation:(id)presentation reason:(id)reason reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  presentationCopy = presentation;
  selfCopy = self;
  sub_100020FB0(presentationCopy, v8, v10, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)revokeAllBannersWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_100031E64(0x757165722044524DLL, 0xEB00000000747365, sub_100021DF0, v5);
}

- (void)revokeBannerWithIdentifier:(id)identifier withReply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_10001EE08(v6, v8, sub_100021DAC, v9);
}

- (int64_t)hash
{
  selfCopy = self;
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