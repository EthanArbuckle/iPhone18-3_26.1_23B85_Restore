@interface APExtensionSubjectMonitorRegistry
- (APExtensionSubjectMonitorRegistry)init;
- (APExtensionSubjectMonitorRegistry)initWithExtensionSubject:(id)a3;
- (id)addMonitor:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
@end

@implementation APExtensionSubjectMonitorRegistry

- (APExtensionSubjectMonitorRegistry)initWithExtensionSubject:(id)a3
{
  v3 = a3;
  v4 = sub_185B0AEA8(v3);

  return v4;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___APExtensionSubjectMonitorRegistry_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 28));
  v4 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 28));

  if ((v4 & 1) == 0)
  {
    [(APExtensionSubjectMonitorRegistry *)v3 invalidate];
  }

  v5.receiver = v3;
  v5.super_class = APExtensionSubjectMonitorRegistry;
  [(APExtensionSubjectMonitorRegistry *)&v5 dealloc];
}

- (id)addMonitor:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___APExtensionSubjectMonitorRegistry_state);
  swift_unknownObjectRetain();
  v5 = self;

  os_unfair_lock_lock((v4 + 28));
  sub_185B0B258((v4 + 16), &v8);
  os_unfair_lock_unlock((v4 + 28));
  v6 = v8;
  swift_unknownObjectRelease();

  return v6;
}

- (void)resume
{
  v2 = self;
  sub_185B0956C();
}

- (void)invalidate
{
  v2 = self;
  sub_185B09868();
}

- (APExtensionSubjectMonitorRegistry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end