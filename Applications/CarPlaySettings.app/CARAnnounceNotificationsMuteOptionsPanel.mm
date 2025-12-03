@interface CARAnnounceNotificationsMuteOptionsPanel
- (CARAnnounceNotificationsMuteOptionsPanel)initWithPanelController:(id)controller;
- (CRSSiriPreferences)siriPreferences;
- (id)_modeForSiriPreferences:(id)preferences;
- (id)cellSpecifier;
- (id)specifierSections;
- (int64_t)_userNotificationSettingForAnnounceType:(int64_t)type;
- (void)_updateCurrentMode;
- (void)_updateSettingsForMode:(id)mode;
- (void)preferences:(id)preferences carPlayAnnounceEnablementTypeChanged:(int64_t)changed;
@end

@implementation CARAnnounceNotificationsMuteOptionsPanel

- (CARAnnounceNotificationsMuteOptionsPanel)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v28.receiver = self;
  v28.super_class = CARAnnounceNotificationsMuteOptionsPanel;
  v5 = [(CARSettingsPanel *)&v28 initWithPanelController:controllerCopy];
  if (v5)
  {
    objc_initWeak(&location, v5);
    panelController = [(CARSettingsPanel *)v5 panelController];
    [panelController addSiriPreferencesObserver:v5];

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

      groupSpecifiers = [(CARSettingsGroupCellSpecifier *)v5->_groupSpecifier groupSpecifiers];
      v17 = [groupSpecifiers objectAtIndexedSubscript:i];

      modes = [(CARAnnounceNotificationsMuteOptionsPanel *)v5 modes];
      v19 = [modes objectAtIndexedSubscript:i];
      accessibilityIdentifier = [v19 accessibilityIdentifier];
      [v17 setAccessibilityIdentifier:accessibilityIdentifier];
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
  modes = [(CARAnnounceNotificationsMuteOptionsPanel *)self modes];
  groupSpecifier = [(CARAnnounceNotificationsMuteOptionsPanel *)self groupSpecifier];
  v5 = [modes objectAtIndexedSubscript:{objc_msgSend(groupSpecifier, "selectedIndex")}];

  v6 = [CARSettingsCellSpecifierSection alloc];
  v7 = sub_10001C80C(@"CARPLAY_START_HEADER");
  footer = [v5 footer];
  groupSpecifier2 = [(CARAnnounceNotificationsMuteOptionsPanel *)self groupSpecifier];
  groupSpecifiers = [groupSpecifier2 groupSpecifiers];
  v11 = [(CARSettingsCellSpecifierSection *)v6 initWithTitle:v7 footer:footer specifiers:groupSpecifiers];
  v14 = v11;
  v12 = [NSArray arrayWithObjects:&v14 count:1];

  return v12;
}

- (CRSSiriPreferences)siriPreferences
{
  panelController = [(CARSettingsPanel *)self panelController];
  siriPreferences = [panelController siriPreferences];

  return siriPreferences;
}

- (void)preferences:(id)preferences carPlayAnnounceEnablementTypeChanged:(int64_t)changed
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
  siriPreferences = [(CARAnnounceNotificationsMuteOptionsPanel *)self siriPreferences];
  v7 = [(CARAnnounceNotificationsMuteOptionsPanel *)self _modeForSiriPreferences:siriPreferences];

  if (v7)
  {
    modes = [(CARAnnounceNotificationsMuteOptionsPanel *)self modes];
    v5 = [modes indexOfObject:v7];
    groupSpecifier = [(CARAnnounceNotificationsMuteOptionsPanel *)self groupSpecifier];
    [groupSpecifier setSelectedIndex:v5];
  }
}

- (void)_updateSettingsForMode:(id)mode
{
  modeCopy = mode;
  if (modeCopy)
  {
    v12 = modeCopy;
    announceType = [modeCopy announceType];
    siriPreferences = [(CARAnnounceNotificationsMuteOptionsPanel *)self siriPreferences];
    carPlayAnnounceEnablementType = [siriPreferences carPlayAnnounceEnablementType];

    modeCopy = v12;
    if (carPlayAnnounceEnablementType != announceType)
    {
      siriPreferences2 = [(CARAnnounceNotificationsMuteOptionsPanel *)self siriPreferences];
      [siriPreferences2 setCarPlayAnnounceEnablementType:announceType];

      v9 = +[UNNotificationSettingsCenter currentNotificationSettingsCenter];
      notificationSystemSettings = [v9 notificationSystemSettings];
      v11 = [notificationSystemSettings mutableCopy];

      [v11 setAnnouncementCarPlaySetting:{-[CARAnnounceNotificationsMuteOptionsPanel _userNotificationSettingForAnnounceType:](self, "_userNotificationSettingForAnnounceType:", announceType)}];
      [v9 setNotificationSystemSettings:v11];

      modeCopy = v12;
    }
  }
}

- (id)_modeForSiriPreferences:(id)preferences
{
  carPlayAnnounceEnablementType = [preferences carPlayAnnounceEnablementType];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  modes = [(CARAnnounceNotificationsMuteOptionsPanel *)self modes];
  v6 = [modes countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(modes);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 announceType] == carPlayAnnounceEnablementType)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [modes countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (int64_t)_userNotificationSettingForAnnounceType:(int64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return qword_1000A1C18[type];
  }
}

@end