@interface NCNotificationsSettingsMailTopicDetailController
- (NCNotificationsSettingsMailTopicDetailControllerDelegate)delegate;
- (id)_alertSettingSpecifierForSectionInfo:(id)info;
- (id)_alertSettingsGroupSpecifierForSectionInfo:(id)info;
- (id)_badgesSettingSpecifierForSectionInfo:(id)info;
- (id)_soundSettingSpecifierForSectionInfo:(id)info;
- (id)allowNotifications:(id)notifications;
- (id)badges:(id)badges;
- (id)specifiers;
- (void)_updateAllowedStateForSectionInfo:(id)info animated:(BOOL)animated forSpecifiers:(id)specifiers;
- (void)reloadSpecifiers;
- (void)setAllowNotifications:(id)notifications specifier:(id)specifier;
- (void)setBadges:(id)badges specifier:(id)specifier;
- (void)viewWillDisappear:(BOOL)disappear;
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
  specifier = [(NCNotificationsSettingsMailTopicDetailController *)self specifier];
  v3 = [specifier propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NCNotificationsSettingsMailTopicDetailController;
  [(NCNotificationsSettingsMailTopicDetailController *)&v5 viewWillDisappear:disappear];
  delegate = [(NCNotificationsSettingsMailTopicDetailController *)self delegate];
  [delegate mailTopicDetailControllerWillDisappear:self];
}

- (id)_alertSettingsGroupSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = +[NSMutableArray array];
  v6 = [(NCNotificationsSettingsMailTopicDetailController *)self _alertSettingSpecifierForSectionInfo:infoCopy];
  v7 = [(NCNotificationsSettingsMailTopicDetailController *)self _soundSettingSpecifierForSectionInfo:infoCopy];
  v8 = [(NCNotificationsSettingsMailTopicDetailController *)self _badgesSettingSpecifierForSectionInfo:infoCopy];

  v9 = [PSSpecifier groupSpecifierWithID:@"ALERT_SETTINGS_GROUP_ID"];
  [v5 bs_safeAddObject:v9];
  [v5 bs_safeAddObject:v6];
  [v5 bs_safeAddObject:v7];
  [v5 bs_safeAddObject:v8];

  return v5;
}

- (id)_alertSettingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v6 = [v5 localizedStringForKey:@"ALERTS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setAllowNotifications:specifier:" get:"allowNotifications:" detail:0 cell:6 edit:0];

  [v7 setIdentifier:@"ALERTS_ID"];
  [v7 setProperty:infoCopy forKey:@"BBSECTION_INFO_KEY"];

  [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v7;
}

- (id)_soundSettingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  sectionID = [infoCopy sectionID];
  [TLAlert bb_toneLibraryAlertTypeForSectionID:sectionID];

  v6 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v7 = [v6 localizedStringForKey:@"SOUNDS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"detailTextForToneWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

  [v8 setIdentifier:@"SOUND_ID"];
  [v8 setProperty:infoCopy forKey:@"BBSECTION_INFO_KEY"];
  v9 = NSStringFromTLAlertType();
  [v8 setProperty:v9 forKey:@"alertType"];

  subsectionID = [infoCopy subsectionID];

  [v8 setProperty:subsectionID forKey:@"accountIdentifier"];

  return v8;
}

- (id)_badgesSettingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  if (([infoCopy suppressedSettings] & 0x2000) == 0 && (objc_msgSend(infoCopy, "pushSettings") & 1) != 0 && (objc_msgSend(infoCopy, "parentSection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "pushSettings"), v5, (v6 & 8) != 0))
  {
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v10 = [v9 localizedStringForKey:@"BADGES" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setBadges:specifier:" get:"badges:" detail:0 cell:6 edit:0];

    [v7 setIdentifier:@"BADGES"];
    [v7 setProperty:infoCopy forKey:@"BBSECTION_INFO_KEY"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)allowNotifications:(id)notifications
{
  v3 = [notifications propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowsNotifications]);

  return v4;
}

- (void)setAllowNotifications:(id)notifications specifier:(id)specifier
{
  specifierCopy = specifier;
  notificationsCopy = notifications;
  v12 = [specifierCopy propertyForKey:@"BBSECTION_INFO_KEY"];
  bOOLValue = [notificationsCopy BOOLValue];

  if (bOOLValue)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v12 setAuthorizationStatus:v9];
  [specifierCopy setProperty:v12 forKey:@"BBSECTION_INFO_KEY"];

  v10 = +[NCSettingsGatewayController sharedInstance];
  sectionID = [v12 sectionID];
  [v10 setSectionInfo:v12 forSectionID:sectionID];

  [(NCNotificationsSettingsMailTopicDetailController *)self _updateAllowedStateForSectionInfo:v12 animated:1];
}

- (id)badges:(id)badges
{
  v3 = [badges propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", ([v3 pushSettings] >> 3) & 1);

  return v4;
}

- (void)setBadges:(id)badges specifier:(id)specifier
{
  badgesCopy = badges;
  v11 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  pushSettings = [v11 pushSettings];
  bOOLValue = [badgesCopy BOOLValue];

  v8 = 8;
  if (!bOOLValue)
  {
    v8 = 0;
  }

  [v11 setPushSettings:v8 | pushSettings & 0xFFFFFFFFFFFFFFF7];
  v9 = +[NCSettingsGatewayController sharedInstance];
  sectionID = [v11 sectionID];
  [v9 setSectionInfo:v11 forSectionID:sectionID];
}

- (void)_updateAllowedStateForSectionInfo:(id)info animated:(BOOL)animated forSpecifiers:(id)specifiers
{
  animatedCopy = animated;
  specifiersCopy = specifiers;
  infoCopy = info;
  authorizationStatus = [infoCopy authorizationStatus];
  allowsNotifications = [infoCopy allowsNotifications];

  if (authorizationStatus)
  {
    v11 = self->_hiddenSoundSpecifier != 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = allowsNotifications ^ v11;
  v13 = specifiersCopy;
  if (!specifiersCopy)
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

    if (specifiersCopy)
    {
      currentSpecifiers = [v15 currentSpecifiers];
      [specifiersCopy setArray:currentSpecifiers];
    }

    else
    {
      context = [v15 context];
      [context setAnimated:animatedCopy];

      [(NCNotificationsSettingsMailTopicDetailController *)self performSpecifierUpdates:v15];
    }
  }
}

@end