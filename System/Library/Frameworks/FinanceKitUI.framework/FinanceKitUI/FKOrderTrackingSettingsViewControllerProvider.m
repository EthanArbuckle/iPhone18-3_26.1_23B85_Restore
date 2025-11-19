@interface FKOrderTrackingSettingsViewControllerProvider
+ (id)makeViewController;
- (FKOrderTrackingSettingsViewControllerProvider)init;
@end

@implementation FKOrderTrackingSettingsViewControllerProvider

+ (id)makeViewController
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for OrderTrackingSettingsView.Model();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23869894C();
  sub_23869ACEC(&qword_27DF137B0, type metadata accessor for OrderTrackingSettingsView.Model);
  sub_23875C7A0();
  swift_getKeyPath();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF137B8, &qword_23877DE88));
  v6 = sub_23875D080();

  return v6;
}

- (FKOrderTrackingSettingsViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = FKOrderTrackingSettingsViewControllerProvider;
  v3 = [(FKOrderTrackingSettingsViewControllerProvider *)&v5 init];

  return v3;
}

@end