@interface NetworkObserver
- (void)networkReachabilityDidChange;
@end

@implementation NetworkObserver

- (void)networkReachabilityDidChange
{
  swift_beginAccess();
  sub_1F958(self->delegateScheduler, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v3 = swift_allocObject();
  v3[2] = self;
  v3[3] = sub_3921A0;
  v3[4] = 0;
  swift_retain_n();
  sub_3EC234();

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

@end