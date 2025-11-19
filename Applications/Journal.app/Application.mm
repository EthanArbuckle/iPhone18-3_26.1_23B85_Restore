@interface Application
- (BOOL)runTest:(id)a3 options:(id)a4;
- (_TtC7Journal11Application)init;
- (id)_extendLaunchTest;
- (void)testRunner:(id)a3 didFailRunningParameters:(id)a4 withError:(id)a5;
- (void)testRunner:didFinishRunningParameters:;
@end

@implementation Application

- (_TtC7Journal11Application)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Application();
  return [(Application *)&v3 init];
}

- (id)_extendLaunchTest
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = self;
  LOBYTE(v5) = sub_1008A791C(v5, v7);

  return v5 & 1;
}

- (void)testRunner:(id)a3 didFailRunningParameters:(id)a4 withError:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v8 = self;
  sub_1008A7FF8();

  swift_unknownObjectRelease();
}

- (void)testRunner:didFinishRunningParameters:
{
  if (qword_100AD0170 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100B2FEF0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Finished running test", v2, 2u);
  }
}

@end