@interface DefaultSubjectMonitorRegistry
- (_TtC13AppProtection29DefaultSubjectMonitorRegistry)init;
- (id)addMonitor:(id)monitor;
- (id)addMonitor:(id)monitor subjectMask:(unint64_t)mask;
- (id)addMonitor:(id)monitor subjectMask:(unint64_t)mask subscriptionOptions:(unint64_t)options;
@end

@implementation DefaultSubjectMonitorRegistry

- (id)addMonitor:(id)monitor subjectMask:(unint64_t)mask
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_185AC6148(monitor, mask, 0);
  swift_unknownObjectRelease();

  return v8;
}

- (id)addMonitor:(id)monitor
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_185AC6148(monitor, -1, 0);
  swift_unknownObjectRelease();

  return v6;
}

- (id)addMonitor:(id)monitor subjectMask:(unint64_t)mask subscriptionOptions:(unint64_t)options
{
  optionsCopy = options;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_185AC6148(monitor, mask, optionsCopy);
  swift_unknownObjectRelease();

  return v10;
}

- (_TtC13AppProtection29DefaultSubjectMonitorRegistry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end