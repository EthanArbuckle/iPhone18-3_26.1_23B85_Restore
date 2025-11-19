@interface NCNotificationsSettingsMailTopicDetailController
- (NCNotificationsSettingsMailTopicDetailControllerDelegate)delegate;
- (id)_alertSettingSpecifierForSectionInfo:(id)a3;
- (id)_alertSettingsGroupSpecifierForSectionInfo:(id)a3;
- (id)_badgesSettingSpecifierForSectionInfo:(id)a3;
- (id)_soundSettingSpecifierForSectionInfo:(id)a3;
- (id)allowNotifications:(id)a3;
- (id)badges:(id)a3;
- (id)specifiers;
- (void)_updateAllowedStateForSectionInfo:(id)a3 animated:(BOOL)a4 forSpecifiers:(id)a5;
- (void)reloadSpecifiers;
- (void)setAllowNotifications:(id)a3 specifier:(id)a4;
- (void)setBadges:(id)a3 specifier:(id)a4;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation NCNotificationsSettingsMailTopicDetailController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"BBSECTION_INFO_KEY"];
    v6 = +[NSMutableArray array];
    v7 = [(NCNotificationsSettingsMailTopicDetailController *)self _alertSettingsGroupSpecifierForSectionInfo:v5];
    [v6 addObjectsFromArray:v7];

    [(NCNotificationsSettingsMailTopicDetailController *)self _updateAllowedStateForSectionInfo:v5 animated:0 forSpecifiers:v6];
    v8 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)reloadSpecifiers
{
  hiddenSoundSpecifier = self->_hiddenSoundSpecifier;
  self->_hiddenSoundSpecifier = 0;

  v4.receiver = self;
  v4.super_class = NCNotificationsSettingsMailTopicDetailController;
  [(NCNotificationsSettingsMailTopicDetailController *)&v4 reloadSpecifiers];
}

- (NCNotificationsSettingsMailTopicDetailControllerDelegate)delegate
{
  v2 = [(NCNotificationsSettingsMailTopicDetailController *)self specifier];
  v3 = [v2 propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NCNotificationsSettingsMailTopicDetailController;
  [(NCNotificationsSettingsMailTopicDetailController *)&v5 viewWillDisappear:a3];
  v4 = [(NCNotificationsSettingsMailTopicDetailController *)self delegate];
  [v4 mailTopicDetailControllerWillDisappear:self];
}

- (id)_alertSettingsGroupSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(NCNotificationsSettingsMailTopicDetailController *)self _alertSettingSpecifierForSectionInfo:v4];
  v7 = [(NCNotificationsSettingsMailTopicDetailController *)self _soundSettingSpecifierForSectionInfo:v4];
  v8 = [(NCNotificationsSettingsMailTopicDetailController *)self _badgesSettingSpecifierForSectionInfo:v4];

  v9 = [PSSpecifier groupSpecifierWithID:@"ALERT_SETTINGS_GROUP_ID"];
  [v5 bs_safeAddObject:v9];
  [v5 bs_safeAddObject:v6];
  [v5 bs_safeAddObject:v7];
  [v5 bs_safeAddObject:v8];

  return v5;
}

- (id)_alertSettingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v6 = [v5 localizedStringForKey:@"ALERTS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setAllowNotifications:specifier:" get:"allowNotifications:" detail:0 cell:6 edit:0];

  [v7 setIdentifier:@"ALERTS_ID"];
  [v7 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];

  [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v7;
}

- (id)_soundSettingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 sectionID];
  [TLAlert bb_toneLibraryAlertTypeForSectionID:v5];

  v6 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v7 = [v6 localizedStringForKey:@"SOUNDS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"detailTextForToneWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

  [v8 setIdentifier:@"SOUND_ID"];
  [v8 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
  v9 = NSStringFromTLAlertType();
  [v8 setProperty:v9 forKey:@"alertType"];

  v10 = [v4 subsectionID];

  [v8 setProperty:v10 forKey:@"accountIdentifier"];

  return v8;
}

- (id)_badgesSettingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  if (([v4 suppressedSettings] & 0x2000) == 0 && (objc_msgSend(v4, "pushSettings") & 1) != 0 && (objc_msgSend(v4, "parentSection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "pushSettings"), v5, (v6 & 8) != 0))
  {
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v10 = [v9 localizedStringForKey:@"BADGES" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setBadges:specifier:" get:"badges:" detail:0 cell:6 edit:0];

    [v7 setIdentifier:@"BADGES"];
    [v7 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)allowNotifications:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowsNotifications]);

  return v4;
}

- (void)setAllowNotifications:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [v6 propertyForKey:@"BBSECTION_INFO_KEY"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v12 setAuthorizationStatus:v9];
  [v6 setProperty:v12 forKey:@"BBSECTION_INFO_KEY"];

  v10 = +[NCSettingsGatewayController sharedInstance];
  v11 = [v12 sectionID];
  [v10 setSectionInfo:v12 forSectionID:v11];

  [(NCNotificationsSettingsMailTopicDetailController *)self _updateAllowedStateForSectionInfo:v12 animated:1];
}

- (id)badges:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", ([v3 pushSettings] >> 3) & 1);

  return v4;
}

- (void)setBadges:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v11 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  v6 = [v11 pushSettings];
  v7 = [v5 BOOLValue];

  v8 = 8;
  if (!v7)
  {
    v8 = 0;
  }

  [v11 setPushSettings:v8 | v6 & 0xFFFFFFFFFFFFFFF7];
  v9 = +[NCSettingsGatewayController sharedInstance];
  v10 = [v11 sectionID];
  [v9 setSectionInfo:v11 forSectionID:v10];
}

- (void)_updateAllowedStateForSectionInfo:(id)a3 animated:(BOOL)a4 forSpecifiers:(id)a5
{
  v5 = a4;
  v22 = a5;
  v8 = a3;
  v9 = [v8 authorizationStatus];
  v10 = [v8 allowsNotifications];

  if (v9)
  {
    v11 = self->_hiddenSoundSpecifier != 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v10 ^ v11;
  v13 = v22;
  if (!v22)
  {
    v13 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  }

  v14 = v13;
  if ((v12 & 1) == 0)
  {
    v15 = [PSSpecifierUpdates updatesWithSpecifiers:v14];
    if (v11)
    {
      hiddenSoundSpecifier = self->_hiddenSoundSpecifier;
      if (hiddenSoundSpecifier)
      {
        [v15 insertSpecifier:self->_hiddenSoundSpecifier atIndex:{objc_msgSend(v14, "indexOfSpecifierWithID:", @"ALERTS_ID"}];
        hiddenSoundSpecifier = self->_hiddenSoundSpecifier;
      }

      self->_hiddenSoundSpecifier = 0;
    }

    else
    {
      v17 = [v14 indexOfSpecifierWithID:@"SOUND_ID"];
      v18 = [v14 objectAtIndex:v17];
      v19 = self->_hiddenSoundSpecifier;
      self->_hiddenSoundSpecifier = v18;

      [v15 removeSpecifierAtIndex:v17];
    }

    if (v22)
    {
      v20 = [v15 currentSpecifiers];
      [v22 setArray:v20];
    }

    else
    {
      v21 = [v15 context];
      [v21 setAnimated:v5];

      [(NCNotificationsSettingsMailTopicDetailController *)self performSpecifierUpdates:v15];
    }
  }
}

@end