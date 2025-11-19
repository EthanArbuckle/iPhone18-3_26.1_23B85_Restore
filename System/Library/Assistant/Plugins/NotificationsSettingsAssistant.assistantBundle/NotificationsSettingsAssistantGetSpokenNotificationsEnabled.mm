@interface NotificationsSettingsAssistantGetSpokenNotificationsEnabled
- (void)performWithCompletion:(id)a3;
@end

@implementation NotificationsSettingsAssistantGetSpokenNotificationsEnabled

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SASettingGetBoolResponse);
  v6 = objc_alloc_init(SASettingBooleanEntity);
  [v5 setSetting:v6];
  v7 = objc_alloc_init(BBSettingsGateway);
  v8 = [(NotificationsSettingsAssistantGetSpokenNotificationsEnabled *)self appBundleId];

  if (v8)
  {
    v9 = [(NotificationsSettingsAssistantGetSpokenNotificationsEnabled *)self appBundleId];
    v10 = [v7 effectiveSectionInfoForSectionID:v9];

    if (v10)
    {
      v11 = [v10 announceSetting];
      if (v11 > 3)
      {
LABEL_8:
        v13 = [v5 dictionary];
        v4[2](v4, v13);

        goto LABEL_9;
      }

      v12 = 0xCu >> (v11 & 0xF);
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    [v6 setValue:v12 & 1];
    goto LABEL_8;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_C90;
  v14[3] = &unk_40E8;
  v15 = v6;
  v17 = v4;
  v16 = v5;
  [v7 getEffectiveGlobalSpokenNotificationSettingWithCompletion:v14];

LABEL_9:
}

@end