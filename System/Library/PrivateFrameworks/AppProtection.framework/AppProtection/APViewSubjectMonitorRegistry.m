@interface APViewSubjectMonitorRegistry
- (APViewSubjectMonitorRegistry)init;
- (APViewSubjectMonitorRegistry)initWithViewSubject:(id)a3;
- (id)addMonitor:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
@end

@implementation APViewSubjectMonitorRegistry

- (APViewSubjectMonitorRegistry)initWithViewSubject:(id)a3
{
  v3 = a3;
  v4 = sub_185AE7348(v3);

  return v4;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___APViewSubjectMonitorRegistry_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 28));
  v4 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 28));

  if ((v4 & 1) == 0)
  {
    [(APViewSubjectMonitorRegistry *)v3 invalidate];
  }

  v5.receiver = v3;
  v5.super_class = APViewSubjectMonitorRegistry;
  [(APViewSubjectMonitorRegistry *)&v5 dealloc];
}

- (id)addMonitor:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___APViewSubjectMonitorRegistry_state);
  swift_unknownObjectRetain();
  v5 = self;

  os_unfair_lock_lock((v4 + 28));
  sub_185AE7A08((v4 + 16), &v8);
  os_unfair_lock_unlock((v4 + 28));
  v6 = v8;
  swift_unknownObjectRelease();

  return v6;
}

- (void)resume
{
  v2 = self;
  sub_185AE5A24();
}

- (void)invalidate
{
  v2 = self;
  sub_185AE5D20();
}

- (APViewSubjectMonitorRegistry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end