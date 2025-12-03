@interface PLAnalyticsServiceMaintenance
- (PLAnalyticsServiceMaintenance)init;
- (void)performMaintenanceWithCompletion:(id)completion;
@end

@implementation PLAnalyticsServiceMaintenance

- (PLAnalyticsServiceMaintenance)init
{
  sub_2948();
  *(&self->super.isa + OBJC_IVAR___PLAnalyticsServiceMaintenance_pluginScheduler) = sub_2938();
  v4.receiver = self;
  v4.super_class = type metadata accessor for AnalyticsServiceMaintenance();
  return [(PLAnalyticsServiceMaintenance *)&v4 init];
}

- (void)performMaintenanceWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_28E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_14DC(v7, v6);
  sub_28A0(v7);
}

@end