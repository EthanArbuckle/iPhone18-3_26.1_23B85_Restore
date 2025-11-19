@interface APExtensionSubjectMonitorSubscription
- (_TtC13AppProtection37APExtensionSubjectMonitorSubscription)init;
- (void)invalidate;
@end

@implementation APExtensionSubjectMonitorSubscription

- (void)invalidate
{
  v2 = *(*(&self->super.isa + OBJC_IVAR____TtC13AppProtection37APExtensionSubjectMonitorSubscription_registry) + OBJC_IVAR___APExtensionSubjectMonitorRegistry_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 28));
  sub_185B0B274((v2 + 16));
  os_unfair_lock_unlock((v2 + 28));
}

- (_TtC13AppProtection37APExtensionSubjectMonitorSubscription)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end