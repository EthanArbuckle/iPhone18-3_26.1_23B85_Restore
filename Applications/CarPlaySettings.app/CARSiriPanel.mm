@interface CARSiriPanel
- (CARSettingsSwitchCellSpecifier)autoSendMessagesSpecifier;
- (CARSettingsSwitchCellSpecifier)showAppsBehindSiriSpecifier;
- (CARSiriPanel)initWithPanelController:(id)a3;
- (CRSSiriPreferences)siriPreferences;
- (id)cellSpecifier;
- (id)specifierSections;
- (void)invalidate;
- (void)preferences:(id)a3 autoSendInCarPlayEnabledChanged:(BOOL)a4;
- (void)preferences:(id)a3 autoSendInHeadphonesEnabledChanged:(BOOL)a4;
- (void)preferences:(id)a3 mainAutoSendEnabledChanged:(BOOL)a4;
- (void)preferences:(id)a3 showAppsBehindSiriInCarPlayEnabledChanged:(BOOL)a4;
- (void)setAutoSendMessagesSpecifierVisible:(BOOL)a3;
@end

@implementation CARSiriPanel

- (CARSiriPanel)initWithPanelController:(id)a3
{
  v7.receiver = self;
  v7.super_class = CARSiriPanel;
  v3 = [(CARSettingsPanel *)&v7 initWithPanelController:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CARSettingsPanel *)v3 panelController];
    [v5 addSiriPreferencesObserver:v4];
  }

  return v4;
}

- (id)specifierSections
{
  v3 = [NSMutableArray arrayWithCapacity:3];
  v4 = [CARSettingsCellSpecifierSection alloc];
  v5 = [CARDashboardSuggestionsSpecifier alloc];
  v6 = [(CARSiriPanel *)self traitCollection];
  v7 = [(CARDashboardSuggestionsSpecifier *)v5 initWithTraitCollection:v6];
  v33 = v7;
  v8 = [NSArray arrayWithObjects:&v33 count:1];
  v9 = [(CARSettingsCellSpecifierSection *)v4 initWithSpecifiers:v8];

  v10 = [(CARSettingsCellSpecifierSection *)v9 specifiers];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 setAccessibilityIdentifier:@"CPSettingsDashboardSuggestionsToggle"];

  [v3 addObject:v9];
  if (_os_feature_enabled_impl())
  {
    v12 = [CARSettingsCellSpecifierSection alloc];
    v13 = [(CARSiriPanel *)self siriPreferences];
    if ([v13 autoSendInCarPlayEnabled])
    {
      v14 = @"AUTO_SEND_MESSAGES_ENABLED_FOOTER";
    }

    else
    {
      v14 = @"AUTO_SEND_MESSAGES_DISABLED_FOOTER";
    }

    v15 = sub_10001C80C(v14);
    v16 = [(CARSiriPanel *)self autoSendMessagesSpecifier];
    v32 = v16;
    v17 = [NSArray arrayWithObjects:&v32 count:1];
    v18 = [(CARSettingsCellSpecifierSection *)v12 initWithFooter:v15 specifiers:v17];

    v19 = [(CARSiriPanel *)self autoSendMessagesSpecifier];
    v20 = [(CARSiriPanel *)self siriPreferences];
    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 autoSendInCarPlayEnabled]);
    [v19 setCellValue:v21];

    [v3 addObject:v18];
  }

  if (_os_feature_enabled_impl())
  {
    v22 = [CARSettingsCellSpecifierSection alloc];
    v23 = sub_10001C80C(@"SHOW_APPS_BEHIND_SIRI_FOOTER");
    v24 = [(CARSiriPanel *)self showAppsBehindSiriSpecifier];
    v31 = v24;
    v25 = [NSArray arrayWithObjects:&v31 count:1];
    v26 = [(CARSettingsCellSpecifierSection *)v22 initWithFooter:v23 specifiers:v25];

    v27 = [(CARSiriPanel *)self showAppsBehindSiriSpecifier];
    v28 = [(CARSiriPanel *)self siriPreferences];
    v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v28 showAppsBehindSiriInCarPlayEnabled]);
    [v27 setCellValue:v29];

    [v3 addObject:v26];
  }

  return v3;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [ISIcon alloc];
    if (self->_appleIntelligenceEnabled)
    {
      v5 = @"com.apple.graphic-icon.intelligence";
    }

    else
    {
      v5 = @"com.apple.application-icon.siri-intelligence";
    }

    v6 = [v4 initWithType:v5];
    v7 = [CARSettingsCellSpecifier alloc];
    if (self->_appleIntelligenceEnabled)
    {
      v8 = @"AI_AND_SIRI_TITLE";
    }

    else
    {
      v8 = @"SIRI_AND_SUGGESTIONS_TITLE";
    }

    v9 = sub_10001C80C(v8);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10001B33C;
    v17 = &unk_1000DAE40;
    objc_copyWeak(&v18, &location);
    v10 = [(CARSettingsCellSpecifier *)v7 initWithTitle:v9 image:0 icon:v6 accessoryType:1 actionBlock:&v14];
    v11 = self->_cellSpecifier;
    self->_cellSpecifier = v10;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsAIAndSiriCell", v14, v15, v16, v17];
  v12 = self->_cellSpecifier;

  return v12;
}

- (CRSSiriPreferences)siriPreferences
{
  v2 = [(CARSettingsPanel *)self panelController];
  v3 = [v2 siriPreferences];

  return v3;
}

- (CARSettingsSwitchCellSpecifier)autoSendMessagesSpecifier
{
  autoSendMessagesSpecifier = self->_autoSendMessagesSpecifier;
  if (!autoSendMessagesSpecifier)
  {
    v4 = [CARSettingsSwitchCellSpecifier alloc];
    v5 = sub_10001C80C(@"AUTO_SEND_MESSAGES_TITLE");
    v6 = [(CARSettingsSwitchCellSpecifier *)v4 initWithTitle:v5 image:0 icon:0];
    v7 = self->_autoSendMessagesSpecifier;
    self->_autoSendMessagesSpecifier = v6;

    objc_initWeak(&location, self);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10001B524;
    v13 = &unk_1000DAE40;
    objc_copyWeak(&v14, &location);
    [(CARSettingsCellSpecifier *)self->_autoSendMessagesSpecifier setActionBlock:&v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    autoSendMessagesSpecifier = self->_autoSendMessagesSpecifier;
  }

  [(CARSettingsCellSpecifier *)autoSendMessagesSpecifier setAccessibilityIdentifier:@"CPSettingsAutomaticallySendMessagesToggle", v10, v11, v12, v13];
  v8 = self->_autoSendMessagesSpecifier;

  return v8;
}

- (void)setAutoSendMessagesSpecifierVisible:(BOOL)a3
{
  if (self->_autoSendMessagesSpecifierVisible != a3)
  {
    block[5] = v3;
    block[6] = v4;
    self->_autoSendMessagesSpecifierVisible = a3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B6B4;
    block[3] = &unk_1000DAD70;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (CARSettingsSwitchCellSpecifier)showAppsBehindSiriSpecifier
{
  showAppsBehindSiriSpecifier = self->_showAppsBehindSiriSpecifier;
  if (!showAppsBehindSiriSpecifier)
  {
    v4 = [CARSettingsSwitchCellSpecifier alloc];
    v5 = sub_10001C80C(@"SHOW_APPS_BEHIND_SIRI_TITLE");
    v6 = [(CARSettingsSwitchCellSpecifier *)v4 initWithTitle:v5 image:0 icon:0];
    v7 = self->_showAppsBehindSiriSpecifier;
    self->_showAppsBehindSiriSpecifier = v6;

    [(CARSettingsCellSpecifier *)self->_showAppsBehindSiriSpecifier setActionBlock:&stru_1000DB418];
    showAppsBehindSiriSpecifier = self->_showAppsBehindSiriSpecifier;
  }

  [(CARSettingsCellSpecifier *)showAppsBehindSiriSpecifier setAccessibilityIdentifier:@"CPSettingsShowAppsBehindSiriToggle"];
  v8 = self->_showAppsBehindSiriSpecifier;

  return v8;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = CARSiriPanel;
  [(CARSettingsPanel *)&v4 invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)preferences:(id)a3 autoSendInCarPlayEnabledChanged:(BOOL)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B89C;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)preferences:(id)a3 mainAutoSendEnabledChanged:(BOOL)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B918;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)preferences:(id)a3 autoSendInHeadphonesEnabledChanged:(BOOL)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B994;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)preferences:(id)a3 showAppsBehindSiriInCarPlayEnabledChanged:(BOOL)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BA10;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end