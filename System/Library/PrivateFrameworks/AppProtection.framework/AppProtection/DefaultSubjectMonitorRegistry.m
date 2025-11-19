@interface DefaultSubjectMonitorRegistry
- (_TtC13AppProtection29DefaultSubjectMonitorRegistry)init;
- (id)addMonitor:(id)a3;
- (id)addMonitor:(id)a3 subjectMask:(unint64_t)a4;
- (id)addMonitor:(id)a3 subjectMask:(unint64_t)a4 subscriptionOptions:(unint64_t)a5;
@end

@implementation DefaultSubjectMonitorRegistry

- (id)addMonitor:(id)a3 subjectMask:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_185AC6148(a3, a4, 0);
  swift_unknownObjectRelease();

  return v8;
}

- (id)addMonitor:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_185AC6148(a3, -1, 0);
  swift_unknownObjectRelease();

  return v6;
}

- (id)addMonitor:(id)a3 subjectMask:(unint64_t)a4 subscriptionOptions:(unint64_t)a5
{
  v5 = a5;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_185AC6148(a3, a4, v5);
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