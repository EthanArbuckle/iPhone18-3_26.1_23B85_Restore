@interface CARDebugSettingsCollectionPanel
- (CARDebugSettingsCollectionPanel)initWithPanelController:(id)a3;
- (NSArray)colors;
- (UIEdgeInsets)sectionInset;
- (double)minimumInteritemSpacing;
- (double)minimumLineSpacing;
- (id)cellSpecifier;
- (id)cellSpecifiers;
- (unint64_t)numberOfColumns;
- (unint64_t)numberOfRows;
- (void)_refreshConfig;
- (void)invalidate;
@end

@implementation CARDebugSettingsCollectionPanel

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100028320;
    v8[3] = &unk_1000DAE40;
    objc_copyWeak(&v9, &location);
    v5 = [(CARSettingsCellSpecifier *)v4 initWithTitle:@"Debug Collection Panel" image:0 icon:0 accessoryType:1 actionBlock:v8];
    v6 = self->_cellSpecifier;
    self->_cellSpecifier = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  return cellSpecifier;
}

- (CARDebugSettingsCollectionPanel)initWithPanelController:(id)a3
{
  v8.receiver = self;
  v8.super_class = CARDebugSettingsCollectionPanel;
  v3 = [(CARSettingsPanel *)&v8 initWithPanelController:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    config = v3->_config;
    v3->_config = v4;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_100028414, @"com.apple.CarPlaySettings.DebugCollectionPanel.refreshConfig", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = CARDebugSettingsCollectionPanel;
  [(CARSettingsPanel *)&v4 invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.CarPlaySettings.DebugCollectionPanel.refreshConfig", 0);
}

- (void)_refreshConfig
{
  v3 = objc_opt_new();
  [(CARDebugSettingsCollectionPanel *)self setConfig:v3];

  [(CARSettingsCollectionPanel *)self reloadSpecifiers];
}

- (id)cellSpecifiers
{
  v3 = objc_opt_new();
  v4 = [(CARDebugSettingsCollectionPanel *)self config];
  v5 = [v4 cells];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [CARDebugCollectionView alloc];
      v8 = [(CARDebugSettingsCollectionPanel *)self config];
      v9 = [(CARDebugSettingsCollectionPanel *)self colors];
      v10 = [(CARDebugSettingsCollectionPanel *)self colors];
      v11 = [v9 objectAtIndexedSubscript:{v6 % objc_msgSend(v10, "count")}];
      v12 = [(CARDebugCollectionView *)v7 initWithConfig:v8 color:v11];

      v13 = [CARSettingsCellViewSpecifier alloc];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000286A0;
      v19[3] = &unk_1000DAE90;
      v20 = v12;
      v14 = v12;
      v15 = [(CARSettingsCellViewSpecifier *)v13 initWithView:v14 actionBlock:v19];
      [v3 addObject:v15];

      ++v6;
      v16 = [(CARDebugSettingsCollectionPanel *)self config];
      v17 = [v16 cells];
    }

    while (v17 > v6);
  }

  return v3;
}

- (unint64_t)numberOfColumns
{
  v2 = [(CARDebugSettingsCollectionPanel *)self config];
  v3 = [v2 columns];

  return v3;
}

- (unint64_t)numberOfRows
{
  v2 = [(CARDebugSettingsCollectionPanel *)self config];
  v3 = [v2 rows];

  return v3;
}

- (UIEdgeInsets)sectionInset
{
  v8.receiver = self;
  v8.super_class = CARDebugSettingsCollectionPanel;
  [(CARSettingsCollectionPanel *)&v8 sectionInset];
  v3 = [(CARDebugSettingsCollectionPanel *)self config];
  [v3 sectionInset];

  UIEdgeInsetsAdd();
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (double)minimumLineSpacing
{
  v2 = [(CARDebugSettingsCollectionPanel *)self config];
  [v2 minimumLineSpacing];
  v4 = v3;

  return v4;
}

- (double)minimumInteritemSpacing
{
  v2 = [(CARDebugSettingsCollectionPanel *)self config];
  [v2 minimumInteritemSpacing];
  v4 = v3;

  return v4;
}

- (NSArray)colors
{
  colors = self->_colors;
  if (!colors)
  {
    v4 = +[UIColor systemRedColor];
    v5 = +[UIColor systemOrangeColor];
    v14[1] = v5;
    v6 = +[UIColor systemYellowColor];
    v14[2] = v6;
    v7 = +[UIColor systemGreenColor];
    v14[3] = v7;
    v8 = +[UIColor systemBlueColor];
    v14[4] = v8;
    v9 = +[UIColor systemIndigoColor];
    v14[5] = v9;
    v10 = +[UIColor systemPurpleColor];
    v14[6] = v10;
    v11 = [NSArray arrayWithObjects:v14 count:7];
    v12 = self->_colors;
    self->_colors = v11;

    colors = self->_colors;
  }

  return colors;
}

@end