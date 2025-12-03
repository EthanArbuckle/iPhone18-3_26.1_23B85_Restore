@interface NotificationsSettingsAssistantGetSpokenNotificationsEnabled
- (void)performWithCompletion:(id)completion;
@end

@implementation NotificationsSettingsAssistantGetSpokenNotificationsEnabled

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(SASettingGetBoolResponse);
  v6 = objc_alloc_init(SASettingBooleanEntity);
  [v5 setSetting:v6];
  v7 = objc_alloc_init(BBSettingsGateway);
  appBundleId = [(NotificationsSettingsAssistantGetSpokenNotificationsEnabled *)self appBundleId];

  if (appBundleId)
  {
    appBundleId2 = [(NotificationsSettingsAssistantGetSpokenNotificationsEnabled *)self appBundleId];
    v10 = [v7 effectiveSectionInfoForSectionID:appBundleId2];

    if (v10)
    {
      announceSetting = [v10 announceSetting];
      if (announceSetting > 3)
      {
LABEL_8:
        dictionary = [v5 dictionary];
        completionCopy[2](completionCopy, dictionary);

        goto LABEL_9;
      }

      v12 = 0xCu >> (announceSetting & 0xF);
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
  v17 = completionCopy;
  v16 = v5;
  [v7 getEffectiveGlobalSpokenNotificationSettingWithCompletion:v14];

LABEL_9:
}

@end