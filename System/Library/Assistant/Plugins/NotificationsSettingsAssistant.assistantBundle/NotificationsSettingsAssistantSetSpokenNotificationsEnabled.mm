@interface NotificationsSettingsAssistantSetSpokenNotificationsEnabled
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation NotificationsSettingsAssistantSetSpokenNotificationsEnabled

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10A0;
  v37 = sub_10B0;
  v38 = 0;
  v8 = objc_alloc_init(BBSettingsGateway);
  if ([(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self value])
  {
    v9 = &dword_0 + 3;
  }

  else
  {
    v9 = &dword_0 + 1;
  }

  if ([(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self value])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self timeToReEnable];

  if (v11)
  {
    v12 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self appBundleId];

    +[AFPreferences sharedPreferences];
    if (v12)
      v13 = {;
      v14 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self appBundleId];
      v15 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self timeToReEnable];
      [v13 setSpokenNotificationTemporarilyDisabledForApp:v14 until:v15];
    }

    else
      v13 = {;
      v14 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self timeToReEnable];
      [v13 setSpokenNotificationTemporarilyDisabledUntil:v14];
    }

    v22 = objc_alloc_init(SACommandSucceeded);
    v23 = v34[5];
    v34[5] = v22;

    v18 = [v34[5] dictionary];
    v6[2](v6, v18);
  }

  else
  {
    v16 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self appBundleId];

    if (v16)
    {
      v17 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self appBundleId];
      v18 = [v8 sectionInfoForSectionID:v17];

      if (v18)
      {
        v19 = [v18 sectionID];
        if ([v18 announceSetting] == v9)
        {
          v20 = [SACommandFailed alloc];
          v21 = [v20 initWithErrorCode:SASettingValueUnchangedErrorCode];
        }

        else
        {
          [v18 setAnnounceSetting:v9];
          [v8 setSectionInfo:v18 forSectionID:v19];
          v21 = objc_alloc_init(SACommandSucceeded);
        }

        v25 = v34[5];
        v34[5] = v21;
      }

      else
      {
        v24 = objc_alloc_init(SACommandFailed);
        v19 = v34[5];
        v34[5] = v24;
      }

      v26 = [v34[5] dictionary];
      v6[2](v6, v26);
    }

    else
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10B8;
      v27[3] = &unk_4110;
      v31 = &v33;
      v32 = v10;
      v28 = v8;
      v29 = self;
      v30 = v6;
      [v28 getEffectiveGlobalSpokenNotificationSettingWithCompletion:v27];

      v18 = v28;
    }
  }

  _Block_object_dispose(&v33, 8);
}

@end