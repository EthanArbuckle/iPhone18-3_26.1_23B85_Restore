@interface NCSpokenNotificationsDetailListController
- (NCSpokenNotificationsDetailListController)init;
- (NCSpokenNotificationsDetailListControllerDelegate)delegate;
- (id)_specifiersForAnnounceDestinations;
- (id)_updatesForSpecifiers:(id)a3 withGlobalAnnouncesState:(int64_t)a4 animated:(BOOL)a5;
- (id)globalAnnounceHeadphonesSetting:(id)a3;
- (id)globalAnnounceHearingAidsSetting:(id)a3;
- (id)globalAnnounceSetting:(id)a3;
- (id)specifiers;
- (id)spokenRepliesWithoutConfirmation:(id)a3;
- (void)_presentEnableSiriWhenLockedPrompt;
- (void)_presentPasscodeView;
- (void)_setGlobalAnnounceSetting:(int64_t)a3;
- (void)didAcceptEnteredPIN;
- (void)didCancelEnteringPIN;
- (void)setGlobalAnnounceHeadphonesSetting:(id)a3 specifier:(id)a4;
- (void)setGlobalAnnounceHearingAidsSetting:(id)a3 specifier:(id)a4;
- (void)setGlobalAnnounceSetting:(id)a3 specifier:(id)a4;
- (void)setSpokenRepliesWithoutConfirmation:(id)a3 specifier:(id)a4;
- (void)settingsGatewayDidUpdateGlobalSettings:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation NCSpokenNotificationsDetailListController

- (NCSpokenNotificationsDetailListController)init
{
  v7.receiver = self;
  v7.super_class = NCSpokenNotificationsDetailListController;
  v2 = [(NCSpokenNotificationsDetailListController *)&v7 init];
  if (v2)
  {
    v3 = +[NCSettingsGatewayController sharedInstance];
    [v3 addObserver:v2];

    v4 = objc_alloc_init(LAPasscodeVerificationService);
    passcodeService = v2->_passcodeService;
    v2->_passcodeService = v4;
  }

  return v2;
}

- (NCSpokenNotificationsDetailListControllerDelegate)delegate
{
  v2 = [(NCSpokenNotificationsDetailListController *)self specifier];
  v3 = [v2 propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NCSpokenNotificationsDetailListController;
  [(NCSpokenNotificationsDetailListController *)&v5 viewDidAppear:a3];
  v4 = [(NCSpokenNotificationsDetailListController *)self specifier];
  [BulletinBoardController emitNavigationEventForSpecifier:v4 viewController:self];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v6 = [v5 localizedStringForKey:@"SPOKEN_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [(NCSpokenNotificationsDetailListController *)self setTitle:v6];

    v7 = objc_alloc_init(NSMutableArray);
    v8 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_NOTIFICATIONS_SWITCH_GROUP_ID"];
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v10 = [v9 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v8 setProperty:v10 forKey:PSFooterTextGroupKey];

    [v7 addObject:v8];
    v11 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v12 = [v11 localizedStringForKey:@"SPOKEN_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setGlobalAnnounceSetting:specifier:" get:"globalAnnounceSetting:" detail:0 cell:6 edit:0];
    spokenNotificationsSwitchSpecifier = self->_spokenNotificationsSwitchSpecifier;
    self->_spokenNotificationsSwitchSpecifier = v13;

    [(PSSpecifier *)self->_spokenNotificationsSwitchSpecifier setIdentifier:@"SPOKEN_NOTIFICATIONS_ID"];
    [v7 addObject:self->_spokenNotificationsSwitchSpecifier];
    v15 = +[NCSettingsGatewayController sharedInstance];
    v16 = [v15 effectiveGlobalAnnounceSetting];

    v17 = [(NCSpokenNotificationsDetailListController *)self _updatesForSpecifiers:v7 withGlobalAnnouncesState:v16 animated:0];
    v18 = [v17 currentSpecifiers];
    [v7 setArray:v18];

    v19 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v7;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setGlobalAnnounceSetting:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(NCSpokenNotificationsDetailListController *)self _setGlobalAnnounceSetting:v5];
}

- (void)_setGlobalAnnounceSetting:(int64_t)a3
{
  v5 = +[AssistantUtilities assistantEnabled];
  if (a3 == 2 && (v5 & 1) == 0)
  {

    [(NCSpokenNotificationsDetailListController *)self _presentEnableSiriPromptForState:0];
    return;
  }

  if (a3 != 2)
  {
    v6 = +[NCSettingsGatewayController sharedInstance];
    [v6 setEffectiveGlobalAnnounceSetting:a3];

    if (a3 != 1 || !_os_feature_enabled_impl())
    {
      goto LABEL_16;
    }

    v7 = +[AFPreferences sharedPreferences];
    [v7 setAnnounceNotificationsOnBuiltInSpeakerEnabled:0];
LABEL_15:

LABEL_16:
    v14 = [(NCSpokenNotificationsDetailListController *)self _updatesForSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] withGlobalAnnouncesState:a3 animated:1];
    [(NCSpokenNotificationsDetailListController *)self performSpecifierUpdates:v14];
    v13 = [(NCSpokenNotificationsDetailListController *)self delegate];
    [v13 spokenNotificationsDetailListController:self didChangeGlobalSpokenNotificationSetting:a3];

    return;
  }

  v8 = +[AFPreferences sharedPreferences];
  v9 = [v8 disableAssistantWhilePasscodeLocked];

  if (!v9)
  {
    v11 = +[NCSettingsGatewayController sharedInstance];
    [v11 setEffectiveGlobalAnnounceSetting:2];

    v12 = +[AFPreferences sharedPreferences];
    [v12 clearSpokenNotificationTemporarilyDisabledStatus];

    v7 = +[AFPreferences sharedPreferences];
    [v7 clearAnnounceNotificationsInCarPlayTemporarilyDisabled];
    goto LABEL_15;
  }

  [(NCSpokenNotificationsDetailListController *)self _presentEnableSiriWhenLockedPrompt];
}

- (id)globalAnnounceSetting:(id)a3
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  v4 = [v3 effectiveGlobalAnnounceSetting];

  if (v4 == &dword_0 + 2)
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

- (void)_presentEnableSiriWhenLockedPrompt
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v4 = [v3 localizedStringForKey:@"ALLOW_SIRI_WHEN_LOCKED" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v6 = [v5 localizedStringForKey:@"ALLOW_SIRI_WHEN_LOCKED_EXPLANATION" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v9 = [v8 localizedStringForKey:@"ALLOW" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1DA68;
  v15[3] = &unk_4D8C0;
  v15[4] = self;
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v15];

  [v7 addAction:v10];
  v11 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v12 = [v11 localizedStringForKey:@"NOT_NOW" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1DA70;
  v14[3] = &unk_4D8C0;
  v14[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v14];

  [v7 addAction:v13];
  [(NCSpokenNotificationsDetailListController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_presentPasscodeView
{
  v3 = objc_alloc_init(LAPasscodeVerificationServiceOptions);
  v4 = [(PSSpecifier *)self->_spokenNotificationsSwitchSpecifier name];
  [v3 setTitle:v4];

  objc_initWeak(&location, self);
  passcodeService = self->_passcodeService;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1DB9C;
  v6[3] = &unk_4D8E8;
  objc_copyWeak(&v7, &location);
  [(LAPasscodeVerificationService *)passcodeService startInParentVC:self options:v3 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (id)globalAnnounceHeadphonesSetting:(id)a3
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  v4 = [v3 effectiveGlobalAnnounceHeadphonesSetting];

  if (v4 == &dword_0 + 2)
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

- (void)setGlobalAnnounceHeadphonesSetting:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = +[NCSettingsGatewayController sharedInstance];
  [v5 setEffectiveGlobalAnnounceHeadphonesSetting:v4];
}

- (id)globalAnnounceHearingAidsSetting:(id)a3
{
  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 announceNotificationsOnHearingAidsEnabled];

  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 announceNotificationsOnHearingAidsSupported];

  if ((v4 & v6) != 0)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  return v7;
}

- (void)setGlobalAnnounceHearingAidsSetting:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AFPreferences sharedPreferences];
  v5 = [v4 BOOLValue];

  [v6 setAnnounceNotificationsOnHearingAidsEnabled:v5];
}

- (void)didAcceptEnteredPIN
{
  v3 = +[AFPreferences sharedPreferences];
  [v3 setDisableAssistantWhilePasscodeLocked:0];

  v4 = +[AFPreferences sharedPreferences];
  [v4 synchronize];

  [(NCSpokenNotificationsDetailListController *)self _setGlobalAnnounceSetting:2];
}

- (void)didCancelEnteringPIN
{
  v2 = [(PSSpecifier *)self->_spokenNotificationsSwitchSpecifier propertyForKey:PSControlKey];
  [v2 setOn:0 animated:1];
}

- (void)setSpokenRepliesWithoutConfirmation:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AFPreferences sharedPreferences];
  v5 = [v4 BOOLValue];

  [v6 setSpokenNotificationSkipTriggerlessReplyConfirmation:v5];
}

- (id)spokenRepliesWithoutConfirmation:(id)a3
{
  v3 = +[AFPreferences sharedPreferences];
  if ([v3 spokenNotificationSkipTriggerlessReplyConfirmation])
  {
    v4 = &__kCFBooleanTrue;
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  v5 = v4;

  return v4;
}

- (id)_updatesForSpecifiers:(id)a3 withGlobalAnnouncesState:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [PSSpecifierUpdates updatesWithSpecifiers:v8];
  v10 = v9;
  if (a4 == 2)
  {
    v48 = v5;
    v47 = v9;
    v11 = objc_alloc_init(NSMutableArray);
    v49 = self;
    v12 = [(NCSpokenNotificationsDetailListController *)self _specifiersForAnnounceDestinations];
    if ([v12 count])
    {
      [v11 addObjectsFromArray:v12];
    }

    v13 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_REPLIES_WITHOUT_CONFIRMATION_GROUP_ID"];
    v14 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v15 = [v14 localizedStringForKey:@"SPOKEN_REPLIES_WITHOUT_CONFIRMATION_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v45 = PSFooterTextGroupKey;
    [v13 setProperty:v15 forKey:?];

    v16 = v13;
    [v11 bs_safeAddObject:v13];
    v17 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v18 = [v17 localizedStringForKey:@"SPOKEN_REPLIES_WITHOUT_CONFIRMATION" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:v49 set:"setSpokenRepliesWithoutConfirmation:specifier:" get:"spokenRepliesWithoutConfirmation:" detail:0 cell:6 edit:0];

    [v19 setIdentifier:@"SPOKEN_REPLIES_WITHOUT_CONFIRMATION_ID"];
    [v11 addObject:v19];
    v20 = [v8 specifierForID:@"SPOKEN_NOTIFICATIONS_APP_LIST_GROUP_ID"];
    v5 = v5;
    if (!v20)
    {
      v42 = v19;
      v43 = v16;
      v44 = v8;
      v21 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v22 = [v21 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_APP_LIST_GROUP" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v23 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_NOTIFICATIONS_APP_LIST_GROUP_ID" name:v22];

      v24 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v25 = [v24 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_APP_LIST_SUBTEXT" value:&stru_4E3F0 table:@"NotificationsSettings"];
      [v23 setProperty:v25 forKey:v45];

      v26 = v11;
      v46 = v23;
      [v11 addObject:v23];
      v27 = +[NCSettingsGatewayController sharedInstance];
      v28 = [v27 activeSectionInfo];

      v41 = v28;
      v40 = [v28 bs_filter:&stru_4D908];
      v29 = [v40 sortedArrayUsingComparator:&stru_4D928];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v30 = [v29 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v51;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v51 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v50 + 1) + 8 * i);
            v35 = BBSettingsDisplayNameForBBSection(v34);
            v36 = [NCSpokenNotificationsAppDetailController spokenNotificationsSpecifierNamed:v35 sectionInfo:v34 showIcon:1 class:objc_opt_class()];

            [v36 setProperty:v49 forKey:kNotificationsSettingsDetailControllerDelegate];
            [v26 bs_safeAddObject:v36];
          }

          v31 = [v29 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v31);
      }

      v5 = v48;
      v8 = v44;
      v11 = v26;
      v19 = v42;
      v16 = v43;
      v20 = v46;
    }

    v10 = v47;
    [v47 insertContiguousSpecifiers:v11 atIndex:{objc_msgSend(v8, "count")}];
  }

  else
  {
    v37 = [v8 indexOfSpecifierWithID:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATIONS_GROUP_ID"];
    if (v37 != 0x7FFFFFFFFFFFFFFFLL || (v37 = [v8 indexOfSpecifierWithID:@"SPOKEN_REPLIES_WITHOUT_CONFIRMATION_GROUP_ID"], v37 != 0x7FFFFFFFFFFFFFFFLL))
    {
      [v10 removeSpecifiersInRange:{v37, objc_msgSend(v8, "count") - v37}];
    }
  }

  v38 = [v10 context];
  [v38 setAnimated:v5];

  return v10;
}

- (id)_specifiersForAnnounceDestinations
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[NCSettingsGatewayController sharedInstance];
  v5 = [v4 effectiveGlobalAnnounceHeadphonesSetting];

  v6 = +[NCSettingsGatewayController sharedInstance];
  v7 = [v6 effectiveGlobalAnnounceCarPlaySetting];

  v8 = +[AFPreferences sharedPreferences];
  if ([v8 announceNotificationsOnHearingAidsSupported])
  {
    v9 = _os_feature_enabled_impl();
  }

  else
  {
    v9 = 0;
  }

  if (v5 != -1 || v7 + 1 != 0 || v9 != 0)
  {
    v12 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v13 = [v12 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATIONS_GROUP" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v14 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATIONS_GROUP_ID" name:v13];

    [v3 addObject:v14];
    if (v5 != -1)
    {
      v15 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v16 = [v15 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATION_HEADPHONES" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"setGlobalAnnounceHeadphonesSetting:specifier:" get:"globalAnnounceHeadphonesSetting:" detail:0 cell:6 edit:0];

      [v17 setIdentifier:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATION_HEADPHONES"];
      [v3 addObject:v17];
      v18 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v19 = [v18 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATION_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
      [v14 setProperty:v19 forKey:PSFooterTextGroupKey];
    }

    if (v7 != -1)
    {
      v20 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v21 = [v20 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATION_CARPLAY" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v22 = [NCSpokenCarPlayNotificationsDetailController spokenCarPlayNotificationSpecifierNamed:v21];

      [v22 setIdentifier:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATION_CARPLAY"];
      [v22 setProperty:self forKey:kNotificationsSettingsDetailControllerDelegate];
      [v3 addObject:v22];
    }

    if (v9)
    {
      v23 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v24 = [v23 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATION_HEARING_AIDS" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"setGlobalAnnounceHearingAidsSetting:specifier:" get:"globalAnnounceHearingAidsSetting:" detail:0 cell:6 edit:0];

      [v25 setIdentifier:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATION_HEARING_AIDS"];
      [v3 addObject:v25];
    }
  }

  return v3;
}

- (void)settingsGatewayDidUpdateGlobalSettings:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E984;
  block[3] = &unk_4D388;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end