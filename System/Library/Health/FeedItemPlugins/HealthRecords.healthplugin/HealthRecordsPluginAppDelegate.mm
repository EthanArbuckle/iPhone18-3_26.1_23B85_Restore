@interface HealthRecordsPluginAppDelegate
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (_TtC13HealthRecords30HealthRecordsPluginAppDelegate)init;
@end

@implementation HealthRecordsPluginAppDelegate

- (_TtC13HealthRecords30HealthRecordsPluginAppDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13HealthRecords30HealthRecordsPluginAppDelegate____lazy_storage___notificationCenterDelegate) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for HealthRecordsPluginAppDelegate();
  return [(HealthRecordsPluginAppDelegate *)&v3 init];
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  if (!test)
  {
    v8 = 0;
    v10 = 0;
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = sub_29D5B3E5C();
  v10 = v9;
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = sub_29D5B3D3C();
  }

LABEL_4:
  applicationCopy = application;
  selfCopy = self;
  v13 = sub_29D57487C(application, v8, v10, optionsCopy);

  return v13 & 1;
}

@end