@interface SleepMeasurementsConfigurationProvider
- (_TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider)init;
- (void)sleepStore:(id)store sleepEventRecordDidChange:(id)change;
- (void)sleepStore:(id)store sleepFocusConfigurationDidUpdate:(id)update;
@end

@implementation SleepMeasurementsConfigurationProvider

- (_TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sleepStore:(id)store sleepEventRecordDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_29E10FE80(storeCopy, changeCopy);
}

- (void)sleepStore:(id)store sleepFocusConfigurationDidUpdate:(id)update
{
  storeCopy = store;
  updateCopy = update;
  selfCopy = self;
  sub_29E110914(storeCopy);
}

@end