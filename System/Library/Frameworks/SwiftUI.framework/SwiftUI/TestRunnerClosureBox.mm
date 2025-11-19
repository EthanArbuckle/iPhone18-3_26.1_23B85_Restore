@interface TestRunnerClosureBox
- (BOOL)testRunner:(id)a3 shouldManagePPTLifetimeEvent:(int64_t)a4 forParamaters:(id)a5;
- (_TtC7SwiftUIP33_8B2331944A0E360DD7B213C98BB0C64C20TestRunnerClosureBox)init;
@end

@implementation TestRunnerClosureBox

- (BOOL)testRunner:(id)a3 shouldManagePPTLifetimeEvent:(int64_t)a4 forParamaters:(id)a5
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUIP33_8B2331944A0E360DD7B213C98BB0C64C20TestRunnerClosureBox_eventHandler);
  v7 = self;
  v6(a4);

  return 0;
}

- (_TtC7SwiftUIP33_8B2331944A0E360DD7B213C98BB0C64C20TestRunnerClosureBox)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end