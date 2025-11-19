@interface SetupCoordinator
- (_TtC22HomeCaptiveViewService16SetupCoordinator)init;
- (void)handleDismissal;
- (void)handleWebNavigationWithCompletionHandler:(id)a3;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
@end

@implementation SetupCoordinator

- (_TtC22HomeCaptiveViewService16SetupCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)proxCardFlowDidDismiss
{
  v2 = self;
  sub_10000737C();
}

- (void)handleWebNavigationWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1000081C8(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)handleDismissal
{
  v2 = self;
  sub_100007588();
}

- (void)proxCardFlowWillPresent
{
  if (qword_100015470 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003CC8(v0, qword_100015720);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100008EF4(0xD000000000000019, 0x800000010000AC80, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_1000040E4(v3);
  }
}

@end