@interface MenstrualCyclesAppDelegate
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification;
@end

@implementation MenstrualCyclesAppDelegate

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

  v8 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v10 = v9;
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = sub_29E2C3214();
  }

LABEL_4:
  applicationCopy = application;
  selfCopy = self;
  v13 = sub_29DF00CCC(application, v8, v10, optionsCopy);

  return v13 & 1;
}

- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification
{
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_29DFC30B8(notification);
}

@end