@interface StewieStateMonitorAgent
- (_TtC8SOSBuddy23StewieStateMonitorAgent)init;
- (void)stateChanged:(id)changed;
@end

@implementation StewieStateMonitorAgent

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1001117D0(changedCopy);
}

- (_TtC8SOSBuddy23StewieStateMonitorAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end