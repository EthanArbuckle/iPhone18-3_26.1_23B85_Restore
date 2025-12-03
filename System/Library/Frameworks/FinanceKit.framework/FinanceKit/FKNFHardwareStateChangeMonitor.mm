@interface FKNFHardwareStateChangeMonitor
- (_TtC10FinanceKit30FKNFHardwareStateChangeMonitor)init;
- (void)hardwareStateDidChange;
@end

@implementation FKNFHardwareStateChangeMonitor

- (void)hardwareStateDidChange
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10FinanceKit30FKNFHardwareStateChangeMonitor_implementation);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 28));
  if (*(v2 + 24) < 0)
  {
    os_unfair_lock_unlock((v2 + 28));
  }

  else
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0x80;
    os_unfair_lock_unlock((v2 + 28));
    if (v3)
    {
      swift_continuation_throwingResume();
    }
  }
}

- (_TtC10FinanceKit30FKNFHardwareStateChangeMonitor)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10FinanceKit30FKNFHardwareStateChangeMonitor_implementation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99EE40);
  v5 = swift_allocObject();
  *(v5 + 28) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(FKNFHardwareStateChangeMonitor *)&v7 init];
}

@end