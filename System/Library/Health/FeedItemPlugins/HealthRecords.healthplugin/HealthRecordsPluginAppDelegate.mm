@interface HealthRecordsPluginAppDelegate
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
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

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v5 = a5;
  if (!a4)
  {
    v8 = 0;
    v10 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = sub_29D5B3E5C();
  v10 = v9;
  if (v5)
  {
LABEL_3:
    v5 = sub_29D5B3D3C();
  }

LABEL_4:
  v11 = a3;
  v12 = self;
  v13 = sub_29D57487C(a3, v8, v10, v5);

  return v13 & 1;
}

@end