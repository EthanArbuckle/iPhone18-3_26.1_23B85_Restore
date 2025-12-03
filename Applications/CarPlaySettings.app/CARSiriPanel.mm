@interface CARSiriPanel
- (CARSettingsSwitchCellSpecifier)autoSendMessagesSpecifier;
- (CARSettingsSwitchCellSpecifier)showAppsBehindSiriSpecifier;
- (CARSiriPanel)initWithPanelController:(id)controller;
- (CRSSiriPreferences)siriPreferences;
- (id)cellSpecifier;
- (id)specifierSections;
- (void)invalidate;
- (void)preferences:(id)preferences autoSendInCarPlayEnabledChanged:(BOOL)changed;
- (void)preferences:(id)preferences autoSendInHeadphonesEnabledChanged:(BOOL)changed;
- (void)preferences:(id)preferences mainAutoSendEnabledChanged:(BOOL)changed;
- (void)preferences:(id)preferences showAppsBehindSiriInCarPlayEnabledChanged:(BOOL)changed;
- (void)setAutoSendMessagesSpecifierVisible:(BOOL)visible;
@end

@implementation CARSiriPanel

- (CARSiriPanel)initWithPanelController:(id)controller
{
  v7.receiver = self;
  v7.super_class = CARSiriPanel;
  v3 = [(CARSettingsPanel *)&v7 initWithPanelController:controller];
  v4 = v3;
  if (v3)
  {
    panelController = [(CARSettingsPanel *)v3 panelController];
    [panelController addSiriPreferencesObserver:v4];
  }

  return v4;
}

- (id)specifierSections
{
  v3 = [NSMutableArray arrayWithCapacity:3];
  v4 = [CARSettingsCellSpecifierSection alloc];
  v5 = [CARDashboardSuggestionsSpecifier alloc];
  traitCollection = [(CARSiriPanel *)self traitCollection];
  v7 = [(CARDashboardSuggestionsSpecifier *)v5 initWithTraitCollection:traitCollection];
  v33 = v7;
  v8 = [NSArray arrayWithObjects:&v33 count:1];
  v9 = [(CARSettingsCellSpecifierSection *)v4 initWithSpecifiers:v8];

  specifiers = [(CARSettingsCellSpecifierSection *)v9 specifiers];
  v11 = [specifiers objectAtIndexedSubscript:0];
  [v11 setAccessibilityIdentifier:@"CPSettingsDashboardSuggestionsToggle"];

  [v3 addObject:v9];
  if (_os_feature_enabled_impl())
  {
    v12 = [CARSettingsCellSpecifierSection alloc];
    siriPreferences = [(CARSiriPanel *)self siriPreferences];
    if ([siriPreferences autoSendInCarPlayEnabled])
    {
      v14 = @"AUTO_SEND_MESSAGES_ENABLED_FOOTER";
    }

    else
    {
      v14 = @"AUTO_SEND_MESSAGES_DISABLED_FOOTER";
    }

    v15 = sub_10001C80C(v14);
    autoSendMessagesSpecifier = [(CARSiriPanel *)self autoSendMessagesSpecifier];
    v32 = autoSendMessagesSpecifier;
    v17 = [NSArray arrayWithObjects:&v32 count:1];
    v18 = [(CARSettingsCellSpecifierSection *)v12 initWithFooter:v15 specifiers:v17];

    autoSendMessagesSpecifier2 = [(CARSiriPanel *)self autoSendMessagesSpecifier];
    siriPreferences2 = [(CARSiriPanel *)self siriPreferences];
    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [siriPreferences2 autoSendInCarPlayEnabled]);
    [autoSendMessagesSpecifier2 setCellValue:v21];

    [v3 addObject:v18];
  }

  if (_os_feature_enabled_impl())
  {
    v22 = [CARSettingsCellSpecifierSection alloc];
    v23 = sub_10001C80C(@"SHOW_APPS_BEHIND_SIRI_FOOTER");
    showAppsBehindSiriSpecifier = [(CARSiriPanel *)self showAppsBehindSiriSpecifier];
    v31 = showAppsBehindSiriSpecifier;
    v25 = [NSArray arrayWithObjects:&v31 count:1];
    v26 = [(CARSettingsCellSpecifierSection *)v22 initWithFooter:v23 specifiers:v25];

    showAppsBehindSiriSpecifier2 = [(CARSiriPanel *)self showAppsBehindSiriSpecifier];
    siriPreferences3 = [(CARSiriPanel *)self siriPreferences];
    v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [siriPreferences3 showAppsBehindSiriInCarPlayEnabled]);
    [showAppsBehindSiriSpecifier2 setCellValue:v29];

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
  panelController = [(CARSettingsPanel *)self panelController];
  siriPreferences = [panelController siriPreferences];

  return siriPreferences;
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

- (void)setAutoSendMessagesSpecifierVisible:(BOOL)visible
{
  if (self->_autoSendMessagesSpecifierVisible != visible)
  {
    block[5] = v3;
    block[6] = v4;
    self->_autoSendMessagesSpecifierVisible = visible;
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

- (void)preferences:(id)preferences autoSendInCarPlayEnabledChanged:(BOOL)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B89C;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)preferences:(id)preferences mainAutoSendEnabledChanged:(BOOL)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B918;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)preferences:(id)preferences autoSendInHeadphonesEnabledChanged:(BOOL)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B994;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)preferences:(id)preferences showAppsBehindSiriInCarPlayEnabledChanged:(BOOL)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BA10;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end