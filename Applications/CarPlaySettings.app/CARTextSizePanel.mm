@interface CARTextSizePanel
- (CARSettingsCellSpecifier)textSizeSpecifier;
- (CARTextSizePanel)initWithPanelController:(id)controller textSizeSpecifier:(id)specifier;
- (id)cellSpecifier;
- (id)cellSpecifiers;
- (void)_updateSelectedIndex;
- (void)dealloc;
- (void)invalidate;
- (void)viewDidLoad;
@end

@implementation CARTextSizePanel

- (CARTextSizePanel)initWithPanelController:(id)controller textSizeSpecifier:(id)specifier
{
  controllerCopy = controller;
  obj = specifier;
  v44.receiver = self;
  v44.super_class = CARTextSizePanel;
  v7 = [(CARSettingsPanel *)&v44 initWithPanelController:controllerCopy];
  if (v7)
  {
    objc_initWeak(&location, v7);
    v8 = sub_10001C80C(@"TEXT_SIZE_DEFAULT");
    v48[0] = v8;
    v9 = sub_10001C80C(@"TEXT_SIZE_110");
    v48[1] = v9;
    v10 = sub_10001C80C(@"TEXT_SIZE_120");
    v48[2] = v10;
    v11 = sub_10001C80C(@"TEXT_SIZE_135");
    v48[3] = v11;
    v39 = [NSArray arrayWithObjects:v48 count:4];

    v12 = sub_10001C80C(@"TEXT_SIZE_SUBTITLE");
    v47[0] = v12;
    v13 = sub_10001C80C(@"TEXT_SIZE_SUBTITLE");
    v47[1] = v13;
    v14 = sub_10001C80C(@"TEXT_SIZE_SUBTITLE");
    v47[2] = v14;
    v15 = sub_10001C80C(@"TEXT_SIZE_SUBTITLE");
    v47[3] = v15;
    v16 = [NSArray arrayWithObjects:v47 count:4];

    v17 = [UIFont systemFontOfSize:16.0];
    v46[0] = v17;
    v18 = [UIFont systemFontOfSize:18.0];
    v46[1] = v18;
    v19 = [UIFont systemFontOfSize:20.0];
    v46[2] = v19;
    v20 = [UIFont systemFontOfSize:22.0];
    v46[3] = v20;
    v21 = [NSArray arrayWithObjects:v46 count:4];

    v22 = [UIFont systemFontOfSize:12.0];
    v45[0] = v22;
    v23 = [UIFont systemFontOfSize:14.0];
    v45[1] = v23;
    v24 = [UIFont systemFontOfSize:16.0];
    v45[2] = v24;
    v25 = [UIFont systemFontOfSize:18.0];
    v45[3] = v25;
    v26 = [NSArray arrayWithObjects:v45 count:4];

    objc_storeWeak(&v7->_textSizeSpecifier, obj);
    v27 = [CARSettingsGroupCellSpecifier alloc];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10000C610;
    v41[3] = &unk_1000DB000;
    objc_copyWeak(&v42, &location);
    v28 = [(CARSettingsGroupCellSpecifier *)v27 initWithTitles:v39 subtitles:v16 actionBlock:v41];
    groupSpecifier = v7->_groupSpecifier;
    v7->_groupSpecifier = v28;

    for (i = 0; ; ++i)
    {
      groupSpecifiers = [(CARSettingsGroupCellSpecifier *)v7->_groupSpecifier groupSpecifiers];
      v32 = i < [groupSpecifiers count];

      if (!v32)
      {
        break;
      }

      groupSpecifiers2 = [(CARSettingsGroupCellSpecifier *)v7->_groupSpecifier groupSpecifiers];
      v34 = [groupSpecifiers2 objectAtIndexedSubscript:i];

      v35 = [v21 objectAtIndexedSubscript:i];
      [v34 setOverrideTitleFont:v35];

      v36 = [v26 objectAtIndexedSubscript:i];
      [v34 setOverrideSubtitleFont:v36];
    }

    [(CARTextSizePanel *)v7 _updateSelectedIndex];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, sub_10000C718, @"AppleCarPlayPreferredContentSizeCategoryChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_destroyWeak(&v42);

    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = CARTextSizePanel;
  [(CARSettingsPanel *)&v4 invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"AppleCarPlayPreferredContentSizeCategoryChangedNotification", 0);
}

- (void)dealloc
{
  [(CARTextSizePanel *)self invalidate];
  v3.receiver = self;
  v3.super_class = CARTextSizePanel;
  [(CARTextSizePanel *)&v3 dealloc];
}

- (id)cellSpecifier
{
  if (!self->_cellSpecifier)
  {
    objc_initWeak(&location, self);
    v3 = [CARSettingsCellSpecifier alloc];
    v4 = sub_10001C80C(@"TEXT_SIZE_TITLE");
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10000C948;
    v15 = &unk_1000DAE40;
    objc_copyWeak(&v16, &location);
    v5 = [(CARSettingsCellSpecifier *)v3 initWithTitle:v4 image:0 icon:0 accessoryType:1 actionBlock:&v12];
    cellSpecifier = self->_cellSpecifier;
    self->_cellSpecifier = v5;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v7 = [(CARTextSizePanel *)self groupSpecifier:v12];
  selectedTitle = [v7 selectedTitle];
  textSizeSpecifier = [(CARTextSizePanel *)self textSizeSpecifier];
  [textSizeSpecifier setDetail:selectedTitle];

  v10 = self->_cellSpecifier;

  return v10;
}

- (id)cellSpecifiers
{
  groupSpecifier = [(CARTextSizePanel *)self groupSpecifier];
  groupSpecifiers = [groupSpecifier groupSpecifiers];

  return groupSpecifiers;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CARTextSizePanel;
  [(CARSettingsTablePanel *)&v2 viewDidLoad];
}

- (void)_updateSelectedIndex
{
  v3 = +[CARPrototypePref contentSize];
  value = [v3 value];

  if ([value isEqualToString:UIContentSizeCategoryLarge])
  {
    v4 = 0;
    v5 = 1;
  }

  else if ([value isEqualToString:UIContentSizeCategoryExtraLarge])
  {
    v4 = 1;
    v5 = 2;
  }

  else if ([value isEqualToString:UIContentSizeCategoryExtraExtraLarge])
  {
    v4 = 2;
    v5 = 3;
  }

  else
  {
    v6 = [value isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge];
    if (v6)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    if (v6)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }
  }

  groupSpecifier = [(CARTextSizePanel *)self groupSpecifier];
  [groupSpecifier setSelectedIndex:v4];

  groupSpecifier2 = [(CARTextSizePanel *)self groupSpecifier];
  selectedTitle = [groupSpecifier2 selectedTitle];
  textSizeSpecifier = [(CARTextSizePanel *)self textSizeSpecifier];
  [textSizeSpecifier setDetail:selectedTitle];

  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  if ([vehicle textSizePreference] != v5)
  {
    [vehicle setTextSizePreference:v5];
    panelController2 = [(CARSettingsPanel *)self panelController];
    [panelController2 saveVehicle:vehicle];
  }
}

- (CARSettingsCellSpecifier)textSizeSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_textSizeSpecifier);

  return WeakRetained;
}

@end