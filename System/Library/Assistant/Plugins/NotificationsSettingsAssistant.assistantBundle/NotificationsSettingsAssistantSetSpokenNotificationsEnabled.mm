@interface NotificationsSettingsAssistantSetSpokenNotificationsEnabled
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation NotificationsSettingsAssistantSetSpokenNotificationsEnabled

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  helperCopy = helper;
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

  timeToReEnable = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self timeToReEnable];

  if (timeToReEnable)
  {
    appBundleId = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self appBundleId];

    +[AFPreferences sharedPreferences];
    if (appBundleId)
      v13 = {;
      appBundleId2 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self appBundleId];
      timeToReEnable2 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self timeToReEnable];
      [v13 setSpokenNotificationTemporarilyDisabledForApp:appBundleId2 until:timeToReEnable2];
    }

    else
      v13 = {;
      appBundleId2 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self timeToReEnable];
      [v13 setSpokenNotificationTemporarilyDisabledUntil:appBundleId2];
    }

    v22 = objc_alloc_init(SACommandSucceeded);
    v23 = v34[5];
    v34[5] = v22;

    dictionary = [v34[5] dictionary];
    completionCopy[2](completionCopy, dictionary);
  }

  else
  {
    appBundleId3 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self appBundleId];

    if (appBundleId3)
    {
      appBundleId4 = [(NotificationsSettingsAssistantSetSpokenNotificationsEnabled *)self appBundleId];
      dictionary = [v8 sectionInfoForSectionID:appBundleId4];

      if (dictionary)
      {
        sectionID = [dictionary sectionID];
        if ([dictionary announceSetting] == v9)
        {
          v20 = [SACommandFailed alloc];
          v21 = [v20 initWithErrorCode:SASettingValueUnchangedErrorCode];
        }

        else
        {
          [dictionary setAnnounceSetting:v9];
          [v8 setSectionInfo:dictionary forSectionID:sectionID];
          v21 = objc_alloc_init(SACommandSucceeded);
        }

        v25 = v34[5];
        v34[5] = v21;
      }

      else
      {
        v24 = objc_alloc_init(SACommandFailed);
        sectionID = v34[5];
        v34[5] = v24;
      }

      dictionary2 = [v34[5] dictionary];
      completionCopy[2](completionCopy, dictionary2);
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
      selfCopy = self;
      v30 = completionCopy;
      [v28 getEffectiveGlobalSpokenNotificationSettingWithCompletion:v27];

      dictionary = v28;
    }
  }

  _Block_object_dispose(&v33, 8);
}

@end