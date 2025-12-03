@interface APViewSubjectMonitorSubscription
- (_TtC13AppProtection32APViewSubjectMonitorSubscription)init;
- (void)invalidate;
@end

@implementation APViewSubjectMonitorSubscription

- (void)invalidate
{
  v2 = *(*(&self->super.isa + OBJC_IVAR____TtC13AppProtection32APViewSubjectMonitorSubscription_registry) + OBJC_IVAR___APViewSubjectMonitorRegistry_state);
  selfCopy = self;

  os_unfair_lock_lock((v2 + 28));
  sub_185AE7A24((v2 + 16));
  os_unfair_lock_unlock((v2 + 28));
}

- (_TtC13AppProtection32APViewSubjectMonitorSubscription)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end