@interface CARAnnounceNotificationsMuteOptionsPanel
- (CARAnnounceNotificationsMuteOptionsPanel)initWithPanelController:(id)a3;
- (CRSSiriPreferences)siriPreferences;
- (id)_modeForSiriPreferences:(id)a3;
- (id)cellSpecifier;
- (id)specifierSections;
- (int64_t)_userNotificationSettingForAnnounceType:(int64_t)a3;
- (void)_updateCurrentMode;
- (void)_updateSettingsForMode:(id)a3;
- (void)preferences:(id)a3 carPlayAnnounceEnablementTypeChanged:(int64_t)a4;
@end

@implementation CARAnnounceNotificationsMuteOptionsPanel

- (CARAnnounceNotificationsMuteOptionsPanel)initWithPanelController:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CARAnnounceNotificationsMuteOptionsPanel;
  v5 = [(CARSettingsPanel *)&v28 initWithPanelController:v4];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = [(CARSettingsPanel *)v5 panelController];
    [v6 addSiriPreferencesObserver:v5];

    v7 = +[CARMuteOptionsMode allModes];
    modes = v5->_modes;
    v5->_modes = v7;

    v9 = [CARSettingsGroupCellSpecifier alloc];
    v10 = [(NSArray *)v5->_modes valueForKey:@"fullTitle"];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10001E070;
    v25 = &unk_1000DB000;
    objc_copyWeak(&v26, &location);
    v11 = [(CARSettingsGroupCellSpecifier *)v9 initWithTitles:v10 actionBlock:&v22];
    groupSpecifier = v5->_groupSpecifier;
    v5->_groupSpecifier = v11;

    for (i = 0; ; ++i)
    {
      v14 = [(CARSettingsGroupCellSpecifier *)v5->_groupSpecifier groupSpecifiers:v22];
      v15 = [v14 count];

      if (i >= v15)
      {
        break;
      }

      v16 = [(CARSettingsGroupCellSpecifier *)v5->_groupSpecifier groupSpecifiers];
      v17 = [v16 objectAtIndexedSubscript:i];

      v18 = [(CARAnnounceNotificationsMuteOptionsPanel *)v5 modes];
      v19 = [v18 objectAtIndexedSubscript:i];
      v20 = [v19 accessibilityIdentifier];
      [v17 setAccessibilityIdentifier:v20];
    }

    [(CARAnnounceNotificationsMuteOptionsPanel *)v5 _updateCurrentMode];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"ANNOUNCE_OPTIONS_TITLE");
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10001E25C;
    v13 = &unk_1000DAE40;
    objc_copyWeak(&v14, &location);
    v6 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:0 accessoryType:1 actionBlock:&v10];
    v7 = self->_cellSpecifier;
    self->_cellSpecifier = v6;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsAnnounceMessagesAnnounceOptions", v10, v11, v12, v13];
  v8 = self->_cellSpecifier;

  return v8;
}

- (id)specifierSections
{
  v3 = [(CARAnnounceNotificationsMuteOptionsPanel *)self modes];
  v4 = [(CARAnnounceNotificationsMuteOptionsPanel *)self groupSpecifier];
  v5 = [v3 objectAtIndexedSubscript:{objc_msgSend(v4, "selectedIndex")}];

  v6 = [CARSettingsCellSpecifierSection alloc];
  v7 = sub_10001C80C(@"CARPLAY_START_HEADER");
  v8 = [v5 footer];
  v9 = [(CARAnnounceNotificationsMuteOptionsPanel *)self groupSpecifier];
  v10 = [v9 groupSpecifiers];
  v11 = [(CARSettingsCellSpecifierSection *)v6 initWithTitle:v7 footer:v8 specifiers:v10];
  v14 = v11;
  v12 = [NSArray arrayWithObjects:&v14 count:1];

  return v12;
}

- (CRSSiriPreferences)siriPreferences
{
  v2 = [(CARSettingsPanel *)self panelController];
  v3 = [v2 siriPreferences];

  return v3;
}

- (void)preferences:(id)a3 carPlayAnnounceEnablementTypeChanged:(int64_t)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E4D4;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateCurrentMode
{
  v3 = [(CARAnnounceNotificationsMuteOptionsPanel *)self siriPreferences];
  v7 = [(CARAnnounceNotificationsMuteOptionsPanel *)self _modeForSiriPreferences:v3];

  if (v7)
  {
    v4 = [(CARAnnounceNotificationsMuteOptionsPanel *)self modes];
    v5 = [v4 indexOfObject:v7];
    v6 = [(CARAnnounceNotificationsMuteOptionsPanel *)self groupSpecifier];
    [v6 setSelectedIndex:v5];
  }
}

- (void)_updateSettingsForMode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = [v4 announceType];
    v6 = [(CARAnnounceNotificationsMuteOptionsPanel *)self siriPreferences];
    v7 = [v6 carPlayAnnounceEnablementType];

    v4 = v12;
    if (v7 != v5)
    {
      v8 = [(CARAnnounceNotificationsMuteOptionsPanel *)self siriPreferences];
      [v8 setCarPlayAnnounceEnablementType:v5];

      v9 = +[UNNotificationSettingsCenter currentNotificationSettingsCenter];
      v10 = [v9 notificationSystemSettings];
      v11 = [v10 mutableCopy];

      [v11 setAnnouncementCarPlaySetting:{-[CARAnnounceNotificationsMuteOptionsPanel _userNotificationSettingForAnnounceType:](self, "_userNotificationSettingForAnnounceType:", v5)}];
      [v9 setNotificationSystemSettings:v11];

      v4 = v12;
    }
  }
}

- (id)_modeForSiriPreferences:(id)a3
{
  v4 = [a3 carPlayAnnounceEnablementType];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CARAnnounceNotificationsMuteOptionsPanel *)self modes];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 announceType] == v4)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (int64_t)_userNotificationSettingForAnnounceType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1000A1C18[a3];
  }
}

@end