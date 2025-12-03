@interface FBADataClientStub
- (_TtC18Feedback_Assistant17FBADataClientStub)init;
- (void)dataForURL:(id)l successWithResponse:(id)response error:(id)error;
- (void)dataForURLRequest:(id)request success:(id)success error:(id)error;
- (void)dataForURLRequest:(id)request successWithResponse:(id)response error:(id)error;
- (void)didLogInWithLoginUserInfo:(id)info completion:(id)completion;
- (void)didLogOutWithCompletion:(id)completion;
- (void)jsonForURL:(id)l success:(id)success error:(id)error;
- (void)jsonForURLRequest:(id)request success:(id)success error:(id)error;
@end

@implementation FBADataClientStub

- (void)didLogOutWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v3[2]();

  _Block_release(v3);
}

- (void)didLogInWithLoginUserInfo:(id)info completion:(id)completion
{
  v4 = _Block_copy(completion);
  v4[2]();

  _Block_release(v4);
}

- (void)dataForURLRequest:(id)request success:(id)success error:(id)error
{
  v8 = type metadata accessor for URLRequest();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  _Block_copy(success);
  _Block_copy(error);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *(&self->super.isa + OBJC_IVAR____TtC18Feedback_Assistant17FBADataClientStub_Log);
  selfCopy = self;
  static os_log_type_t.info.getter();
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C29F0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100047484();
  *(v12 + 32) = 0xD000000000000018;
  *(v12 + 40) = 0x80000001000CE270;
  os_log(_:dso:log:type:_:)();

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

- (void)dataForURLRequest:(id)request successWithResponse:(id)response error:(id)error
{
  v8 = type metadata accessor for URLRequest();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  _Block_copy(response);
  _Block_copy(error);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *(&self->super.isa + OBJC_IVAR____TtC18Feedback_Assistant17FBADataClientStub_Log);
  selfCopy = self;
  static os_log_type_t.info.getter();
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C29F0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100047484();
  *(v12 + 32) = 0xD000000000000024;
  *(v12 + 40) = 0x80000001000CE210;
  os_log(_:dso:log:type:_:)();

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

- (void)jsonForURLRequest:(id)request success:(id)success error:(id)error
{
  v8 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for URLRequest();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(success);
  v18 = _Block_copy(error);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  selfCopy = self;
  URLRequest.url.getter();
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v11, 1, v22) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100082ADC(v11, sub_1000855A8, v19, sub_1000855A0, v20);

    (*(v13 + 8))(v16, v12);
    (*(v23 + 8))(v11, v22);
  }
}

- (void)dataForURL:(id)l successWithResponse:(id)response error:(id)error
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v9, v5);
}

- (void)jsonForURL:(id)l success:(id)success error:(id)error
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(success);
  v14 = _Block_copy(error);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  selfCopy = self;
  sub_100082ADC(v12, sub_1000853F4, v15, sub_1000855A0, v16);

  (*(v9 + 8))(v12, v8);
}

- (_TtC18Feedback_Assistant17FBADataClientStub)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end