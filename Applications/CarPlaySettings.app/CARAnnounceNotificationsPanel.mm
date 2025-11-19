@interface CARAnnounceNotificationsPanel
- (BOOL)_isAnnounceEnabled;
- (BOOL)_isAnnounceMuted;
- (CARAnnounceNotificationsPanel)initWithPanelController:(id)a3;
- (CARSettingsButtonCellSpecifier)muteAnnouncementsSpecifier;
- (CARSettingsSwitchCellSpecifier)announceEnabledSpecifier;
- (CRSSiriPreferences)siriPreferences;
- (id)_announceEnabledFooterText;
- (id)_muteAnnouncementsSpecifierTitleForMuted:(BOOL)a3 announceEnablementType:(int64_t)a4;
- (id)cellSpecifier;
- (id)specifierSections;
- (void)_updateAnnounceEnabled:(BOOL)a3;
- (void)_updateAnnounceMuted:(BOOL)a3;
- (void)announceCarPlaySettingUpdated:(int64_t)a3;
- (void)dealloc;
- (void)invalidate;
- (void)preferences:(id)a3 announceNotificationsInCarPlayTemporarilyDisabledChanged:(BOOL)a4;
- (void)preferences:(id)a3 carPlayAnnounceEnablementTypeChanged:(int64_t)a4;
- (void)setFocusActive:(BOOL)a3;
- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4;
@end

@implementation CARAnnounceNotificationsPanel

- (CARAnnounceNotificationsPanel)initWithPanelController:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CARAnnounceNotificationsPanel;
  v5 = [(CARSettingsPanel *)&v17 initWithPanelController:v4];
  if (v5)
  {
    v6 = sub_10001C784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10009082C();
    }

    v7 = [(CARSettingsPanel *)v5 panelController];
    [v7 addSiriPreferencesObserver:v5];

    v8 = [(CARSettingsPanel *)v5 panelController];
    [v8 addNotificationSettingsObserver:v5];

    v5->_siriCallbackInvocationCount = 0;
    v5->_userNotificationsCallbackInvocationCount = 0;
    v9 = sub_10001C784();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000908A0(&v5->_siriCallbackInvocationCount, &v5->_userNotificationsCallbackInvocationCount, v9);
    }

    v10 = [DNDStateService serviceForClientIdentifier:@"com.apple.carplay.settings"];
    dndStateService = v5->_dndStateService;
    v5->_dndStateService = v10;

    [(DNDStateService *)v5->_dndStateService addStateUpdateListener:v5 withCompletionHandler:&stru_1000DADF0];
    objc_initWeak(&location, v5);
    v12 = v5->_dndStateService;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004BB0;
    v14[3] = &unk_1000DAE18;
    objc_copyWeak(&v15, &location);
    [(DNDStateService *)v12 queryCurrentStateWithCompletionHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)invalidate
{
  v3 = sub_10001C784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v14 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] #DEBUG [LIFECYCLE] CARAnnounceNotificationsPanel Invalidate - Object %p being invalidated", buf, 0xCu);
  }

  v4 = sub_10001C784();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    siriCallbackInvocationCount = self->_siriCallbackInvocationCount;
    userNotificationsCallbackInvocationCount = self->_userNotificationsCallbackInvocationCount;
    *buf = 134349312;
    *v14 = siriCallbackInvocationCount;
    *&v14[8] = 2050;
    v15 = userNotificationsCallbackInvocationCount;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Settings] #DEBUG [LIFECYCLE] CARAnnounceNotificationsPanel Invalidate - Final counters: siri=%{public}ld, userNotifications=%{public}ld", buf, 0x16u);
  }

  v7 = sub_10001C784();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    pendingAnnounceEnablementChangeFromSiri = self->_pendingAnnounceEnablementChangeFromSiri;
    pendingAnnounceEnablementChangeFromUserNotifications = self->_pendingAnnounceEnablementChangeFromUserNotifications;
    *buf = 67240448;
    *v14 = pendingAnnounceEnablementChangeFromSiri;
    *&v14[4] = 1026;
    *&v14[6] = pendingAnnounceEnablementChangeFromUserNotifications;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Settings] #DEBUG [LIFECYCLE] CARAnnounceNotificationsPanel Invalidate - Final flags: pendingFromSiri=%{public}d, pendingFromUserNotifications=%{public}d", buf, 0xEu);
  }

  v10 = [(CARSettingsPanel *)self panelController];
  [v10 removeSiriPreferencesObserver:self];

  v11 = [(CARSettingsPanel *)self panelController];
  [v11 removeNotificationSettingsObserver:self];

  [(DNDStateService *)self->_dndStateService removeStateUpdateListener:self];
  v12.receiver = self;
  v12.super_class = CARAnnounceNotificationsPanel;
  [(CARSettingsPanel *)&v12 invalidate];
}

- (void)dealloc
{
  v3 = sub_10001C784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] #DEBUG [LIFECYCLE] CARAnnounceNotificationsPanel DEALLOC - Object %p being deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CARAnnounceNotificationsPanel;
  [(CARAnnounceNotificationsPanel *)&v4 dealloc];
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"ANNOUNCE_TITLE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.announce-notifications"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10000506C;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsAnnounceMessagesCell", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (id)specifierSections
{
  v3 = [NSMutableArray arrayWithCapacity:2];
  v4 = sub_10001C784();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CARAnnounceNotificationsPanel *)self _isAnnounceEnabled];
    v6 = [(CARAnnounceNotificationsPanel *)self _isAnnounceMuted];
    v7 = [(CARAnnounceNotificationsPanel *)self siriPreferences];
    [v7 carPlayAnnounceEnablementType];
    v8 = AFSiriCarPlayAnnounceEnablementTypeGetName();
    *buf = 67240706;
    v44 = v5;
    v45 = 1026;
    v46 = v6;
    v47 = 2114;
    v48 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Settings] Updating Announce Notifications Panel with announceEnabled: %{public, BOOL}d, announceMuted: %{public, BOOL}d, announceEnablementType: %{public}@", buf, 0x18u);
  }

  v9 = [NSNumber numberWithBool:[(CARAnnounceNotificationsPanel *)self _isAnnounceEnabled]];
  v10 = [(CARAnnounceNotificationsPanel *)self announceEnabledSpecifier];
  [v10 setCellValue:v9];

  v11 = [(CARAnnounceNotificationsPanel *)self announceEnabledSpecifier];
  [v11 setAccessibilityIdentifier:@"CPSettingsAnnounceMessagesToggle"];

  if (![(CARAnnounceNotificationsPanel *)self _isAnnounceEnabled])
  {
    v37 = [CARSettingsCellSpecifierSection alloc];
    v22 = [(CARAnnounceNotificationsPanel *)self _announceEnabledFooterText];
    v34 = [(CARAnnounceNotificationsPanel *)self announceEnabledSpecifier];
    v40 = v34;
    v35 = [NSArray arrayWithObjects:&v40 count:1];
    v36 = [(CARSettingsCellSpecifierSection *)v37 initWithFooter:v22 specifiers:v35];
    goto LABEL_9;
  }

  if (!self->_muteOptionsPanel)
  {
    v12 = [CARAnnounceNotificationsMuteOptionsPanel alloc];
    v13 = [(CARSettingsPanel *)self panelController];
    v14 = [(CARAnnounceNotificationsMuteOptionsPanel *)v12 initWithPanelController:v13];
    muteOptionsPanel = self->_muteOptionsPanel;
    self->_muteOptionsPanel = v14;
  }

  v16 = [CARSettingsCellSpecifierSection alloc];
  v17 = [(CARAnnounceNotificationsPanel *)self _announceEnabledFooterText];
  v18 = [(CARAnnounceNotificationsPanel *)self announceEnabledSpecifier];
  v42[0] = v18;
  v19 = [(CARAnnounceNotificationsPanel *)self muteOptionsPanel];
  v20 = [v19 cellSpecifier];
  v42[1] = v20;
  v21 = [NSArray arrayWithObjects:v42 count:2];
  v22 = [(CARSettingsCellSpecifierSection *)v16 initWithFooter:v17 specifiers:v21];

  [v3 addObject:v22];
  v23 = [(CARAnnounceNotificationsPanel *)self _isAnnounceMuted];
  v24 = [(CARAnnounceNotificationsPanel *)self siriPreferences];
  v25 = -[CARAnnounceNotificationsPanel _muteAnnouncementsSpecifierTitleForMuted:announceEnablementType:](self, "_muteAnnouncementsSpecifierTitleForMuted:announceEnablementType:", v23, [v24 carPlayAnnounceEnablementType]);
  v26 = [(CARAnnounceNotificationsPanel *)self muteAnnouncementsSpecifier];
  [v26 setTitle:v25];

  v27 = [NSNumber numberWithBool:[(CARAnnounceNotificationsPanel *)self _isAnnounceMuted]];
  v28 = [(CARAnnounceNotificationsPanel *)self muteAnnouncementsSpecifier];
  [v28 setCellValue:v27];

  v29 = [(CARAnnounceNotificationsPanel *)self muteAnnouncementsSpecifier];
  [v29 setAccessibilityIdentifier:@"CPSettingsAnnounceMessagesButton"];

  v30 = [(CARAnnounceNotificationsPanel *)self muteAnnouncementsSpecifier];
  v31 = [v30 title];
  v32 = [v31 length];

  if (v32)
  {
    v33 = [CARSettingsCellSpecifierSection alloc];
    v34 = [(CARAnnounceNotificationsPanel *)self muteAnnouncementsSpecifier];
    v41 = v34;
    v35 = [NSArray arrayWithObjects:&v41 count:1];
    v36 = [(CARSettingsCellSpecifierSection *)v33 initWithSpecifiers:v35];
LABEL_9:
    v38 = v36;
    [v3 addObject:v36];
  }

  return v3;
}

- (CRSSiriPreferences)siriPreferences
{
  v2 = [(CARSettingsPanel *)self panelController];
  v3 = [v2 siriPreferences];

  return v3;
}

- (CARSettingsSwitchCellSpecifier)announceEnabledSpecifier
{
  announceEnabledSpecifier = self->_announceEnabledSpecifier;
  if (!announceEnabledSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsSwitchCellSpecifier alloc];
    v5 = sub_10001C80C(@"ANNOUNCE_TITLE");
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000056AC;
    v9[3] = &unk_1000DAE68;
    objc_copyWeak(&v10, &location);
    v6 = [(CARSettingsSwitchCellSpecifier *)v4 initWithTitle:v5 image:0 icon:0 actionBlock:v9];
    v7 = self->_announceEnabledSpecifier;
    self->_announceEnabledSpecifier = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    announceEnabledSpecifier = self->_announceEnabledSpecifier;
  }

  return announceEnabledSpecifier;
}

- (CARSettingsButtonCellSpecifier)muteAnnouncementsSpecifier
{
  muteAnnouncementsSpecifier = self->_muteAnnouncementsSpecifier;
  if (!muteAnnouncementsSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [(CARAnnounceNotificationsPanel *)self _isAnnounceMuted];
    v5 = [(CARAnnounceNotificationsPanel *)self siriPreferences];
    v6 = -[CARAnnounceNotificationsPanel _muteAnnouncementsSpecifierTitleForMuted:announceEnablementType:](self, "_muteAnnouncementsSpecifierTitleForMuted:announceEnablementType:", v4, [v5 carPlayAnnounceEnablementType]);

    v7 = [CARSettingsButtonCellSpecifier alloc];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005878;
    v11[3] = &unk_1000DAE68;
    objc_copyWeak(&v12, &location);
    v8 = [(CARSettingsButtonCellSpecifier *)v7 initWithTitle:v6 image:0 icon:0 actionBlock:v11];
    v9 = self->_muteAnnouncementsSpecifier;
    self->_muteAnnouncementsSpecifier = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    muteAnnouncementsSpecifier = self->_muteAnnouncementsSpecifier;
  }

  return muteAnnouncementsSpecifier;
}

- (void)setFocusActive:(BOOL)a3
{
  if (self->_focusActive != a3)
  {
    block[5] = v3;
    block[6] = v4;
    self->_focusActive = a3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005964;
    block[3] = &unk_1000DAD70;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)announceCarPlaySettingUpdated:(int64_t)a3
{
  [(CARAnnounceNotificationsPanel *)self setUserNotificationsCallbackInvocationCount:[(CARAnnounceNotificationsPanel *)self userNotificationsCallbackInvocationCount]+ 1];
  v4 = sub_10001C784();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000909F0();
  }

  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100090A64();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005A60;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)preferences:(id)a3 carPlayAnnounceEnablementTypeChanged:(int64_t)a4
{
  [(CARAnnounceNotificationsPanel *)self setSiriCallbackInvocationCount:[(CARAnnounceNotificationsPanel *)self siriCallbackInvocationCount]+ 1];
  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100090CB4();
  }

  v6 = sub_10001C784();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100090D40();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D04;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)preferences:(id)a3 announceNotificationsInCarPlayTemporarilyDisabledChanged:(BOOL)a4
{
  v4 = a4;
  v6 = sub_10001C784();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] The new announceNotificationsInCarPlayTemporarilyDisabled value: %{public}d", buf, 8u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005F80;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4
{
  v5 = a4;
  v6 = sub_10001C784();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 state];
    v9[0] = 67240192;
    v9[1] = [v7 isActive];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] Setting a new Do Not Disturb state, isActive: %{public}d", v9, 8u);
  }

  v8 = [v5 state];
  -[CARAnnounceNotificationsPanel setFocusActive:](self, "setFocusActive:", [v8 isActive]);
}

- (BOOL)_isAnnounceEnabled
{
  v2 = [(CARSettingsPanel *)self panelController];
  v3 = [v2 notificationSystemSettings];
  v4 = [v3 announcementCarPlaySetting];

  return (v4 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (void)_updateAnnounceEnabled:(BOOL)a3
{
  [(CARAnnounceNotificationsPanel *)self siriCallbackInvocationCount];
  [(CARAnnounceNotificationsPanel *)self userNotificationsCallbackInvocationCount];
  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100090F90(a3, v5);
  }

  v6 = sub_10001C784();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10009100C();
  }

  [(CARAnnounceNotificationsPanel *)self setSiriCallbackInvocationCount:0];
  [(CARAnnounceNotificationsPanel *)self setUserNotificationsCallbackInvocationCount:0];
  v7 = sub_10001C784();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100091080();
  }

  if (a3)
  {
    v8 = 4;
    v9 = 3;
  }

  else
  {
    v10 = [(CARAnnounceNotificationsPanel *)self siriPreferences];
    [v10 clearAnnounceNotificationsInCarPlayTemporarilyDisabled];

    v9 = 1;
    v8 = 1;
  }

  v11 = sub_10001C784();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100091124();
  }

  v12 = +[UNNotificationSettingsCenter currentNotificationSettingsCenter];
  v13 = [v12 notificationSystemSettings];
  v14 = [v13 announcementCarPlaySetting];

  v15 = sub_10001C784();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 134349312;
    v34 = v14;
    v35 = 2050;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Settings] Current announcementCarPlaySetting:  %{public}li New announcementCarPlaySetting: %{public}li", &v33, 0x16u);
  }

  v16 = sub_10001C784();
  v17 = v16;
  if (v14 == v9)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100091270();
    }

    [(CARAnnounceNotificationsPanel *)self setPendingAnnounceEnablementChangeFromUserNotifications:0];
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 134349312;
      v34 = v14;
      v35 = 2050;
      v36 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Settings] Updating announcementCarPlaySetting from %{public}li to %{public}li", &v33, 0x16u);
    }

    v18 = sub_10001C784();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000911B0();
    }

    [(CARAnnounceNotificationsPanel *)self setPendingAnnounceEnablementChangeFromUserNotifications:1];
    v19 = [v12 notificationSystemSettings];
    v20 = [v19 mutableCopy];

    [v20 setAnnouncementCarPlaySetting:v9];
    v21 = [v12 notificationSystemSettings];
    v22 = [v21 announcementSetting];

    if (v22 != 2)
    {
      [v20 setAnnouncementSetting:2];
    }

    [v12 setNotificationSystemSettings:v20];
    v23 = sub_10001C784();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_1000911E4();
    }
  }

  v24 = [(CARAnnounceNotificationsPanel *)self siriPreferences];
  v25 = [v24 carPlayAnnounceEnablementType];

  v26 = sub_10001C784();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 134349312;
    v34 = v25;
    v35 = 2050;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[Settings] Current carPlayAnnounceEnablementType: %{public}li New carPlayAnnounceEnablementType %{public}li", &v33, 0x16u);
  }

  v27 = sub_10001C784();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v25 == v8)
  {
    if (v28)
    {
      LOWORD(v33) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Settings] #DEBUG updating carPlayAnnounceEnablementType to NO", &v33, 2u);
    }

    [(CARAnnounceNotificationsPanel *)self setPendingAnnounceEnablementChangeFromSiri:0];
  }

  else
  {
    if (v28)
    {
      v33 = 134349312;
      v34 = v25;
      v35 = 2050;
      v36 = v8;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Settings] Updating carPlayAnnounceEnablementType from %{public}li to %{public}li", &v33, 0x16u);
    }

    v29 = sub_10001C784();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_1000912A4();
    }

    [(CARAnnounceNotificationsPanel *)self setPendingAnnounceEnablementChangeFromSiri:1];
    v30 = [(CARAnnounceNotificationsPanel *)self siriPreferences];
    [v30 setCarPlayAnnounceEnablementType:v8];

    v31 = sub_10001C784();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_1000912D8();
    }
  }

  v32 = sub_10001C784();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_100091364();
  }
}

- (id)_announceEnabledFooterText
{
  if ([(CARAnnounceNotificationsPanel *)self _isAnnounceEnabled])
  {
    if ([(CARAnnounceNotificationsPanel *)self _isAnnounceMuted])
    {
      v3 = @"ANNOUNCE_SILENCED_FOOTER";
    }

    else if ([(CARAnnounceNotificationsPanel *)self isFocusActive])
    {
      v3 = @"ANNOUNCE_FOCUS_ACTIVE_FOOTER";
    }

    else
    {
      v3 = @"ANNOUNCE_ACTIVE_FOOTER";
    }
  }

  else
  {
    v3 = @"ANNOUNCE_DISABLED_FOOTER";
  }

  v4 = sub_10001C80C(v3);

  return v4;
}

- (BOOL)_isAnnounceMuted
{
  v3 = [(CARAnnounceNotificationsPanel *)self siriPreferences];
  v4 = [v3 carPlayAnnounceEnablementType];

  if ((v4 - 2) >= 3)
  {
    if (v4 >= 2)
    {
      v8 = sub_10001C784();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000913F0();
      }
    }

    return 0;
  }

  else
  {
    v5 = [(CARAnnounceNotificationsPanel *)self siriPreferences];
    v6 = [v5 announceNotificationsInCarPlayTemporarilyDisabled];

    return v6;
  }
}

- (void)_updateAnnounceMuted:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67240192;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Settings] AnnounceMuted state is updated, muted: %{public}d", v7, 8u);
  }

  v6 = [(CARAnnounceNotificationsPanel *)self siriPreferences];
  [v6 setAnnounceNotificationsInCarPlayTemporarilyDisabled:v3];

  [(CARSettingsTablePanel *)self reloadSpecifiers];
}

- (id)_muteAnnouncementsSpecifierTitleForMuted:(BOOL)a3 announceEnablementType:(int64_t)a4
{
  if (a4 < 2)
  {
    v5 = sub_10001C784();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100091458();
    }

    self = 0;
  }

  else
  {
    if ((a4 - 2) >= 2)
    {
      if (a4 != 4)
      {
        goto LABEL_14;
      }

      if (a3)
      {
        v4 = @"ANNOUNCE_BUTTON_ANNOUNCE_NEW_MESSAGES";
      }

      else
      {
        v4 = @"ANNOUNCE_BUTTON_SILENCE_ANNOUNCEMENTS";
      }
    }

    else if (a3)
    {
      v4 = @"ANNOUNCE_BUTTON_ANNOUNCE_FOR_DRIVE_ONLY";
    }

    else
    {
      v4 = @"ANNOUNCE_BUTTON_SILENCE_FOR_DRIVE_ONLY";
    }

    self = sub_10001C80C(v4);
  }

LABEL_14:

  return self;
}

@end