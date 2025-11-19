@interface APSystemAppOutlet.SystemAppOutletSubjectMonitor
- (_TtCE13AppProtectionCSo17APSystemAppOutlet29SystemAppOutletSubjectMonitor)init;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
@end

@implementation APSystemAppOutlet.SystemAppOutletSubjectMonitor

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  type metadata accessor for APSubject(0);
  v5 = sub_185B67F6C();
  swift_unknownObjectRetain();
  v6 = self;
  sub_185AEC728(v5, v7);
  swift_unknownObjectRelease();
}

- (_TtCE13AppProtectionCSo17APSystemAppOutlet29SystemAppOutletSubjectMonitor)init
{
  *(&self->super.isa + OBJC_IVAR____TtCE13AppProtectionCSo17APSystemAppOutlet29SystemAppOutletSubjectMonitor_subscription) = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = _s29SystemAppOutletSubjectMonitorCMa();
  return [(APSystemAppOutlet.SystemAppOutletSubjectMonitor *)&v4 init];
}

@end