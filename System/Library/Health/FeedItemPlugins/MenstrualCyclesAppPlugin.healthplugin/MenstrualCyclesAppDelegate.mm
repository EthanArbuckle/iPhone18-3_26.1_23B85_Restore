@interface MenstrualCyclesAppDelegate
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4;
@end

@implementation MenstrualCyclesAppDelegate

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

  v8 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v10 = v9;
  if (v5)
  {
LABEL_3:
    v5 = sub_29E2C3214();
  }

LABEL_4:
  v11 = a3;
  v12 = self;
  v13 = sub_29DF00CCC(a3, v8, v10, v5);

  return v13 & 1;
}

- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29DFC30B8(a4);
}

@end