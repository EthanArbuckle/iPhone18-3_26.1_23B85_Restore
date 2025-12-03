@interface PLBatteryUIGraphViewTableCell
- (PLBatteryUIGraphViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PLBatteryUIGraphViewTableCell

- (PLBatteryUIGraphViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = PLBatteryUIGraphViewTableCell;
  v4 = [(PLBatteryUIGraphViewTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PLBatteryUIGraphViewTableCell *)v4 setSelectionStyle:0];
    [(PLBatteryUIGraphViewTableCell *)v5 setSeparatorStyle:0];
    controller = v5->_controller;
    v5->_controller = 0;

    v7 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "CCGraph: initWithStyle:reuseIdentifier:", v9, 2u);
    }
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"PLBatteryUIGraphViewControllerKey"];
  controller = self->_controller;
  if (controller != v4)
  {
    obj = v4;
    if (controller)
    {
      view = [(PLBUIChartViewController *)controller view];
      [view removeFromSuperview];
    }

    objc_storeStrong(&self->_controller, obj);
    contentView = [(PLBatteryUIGraphViewTableCell *)self contentView];
    [contentView bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view2 = [(PLBUIChartViewController *)self->_controller view];
    [view2 setFrame:{v9, v11, v13, v15}];

    view3 = [(PLBUIChartViewController *)self->_controller view];
    [view3 setAutoresizingMask:18];

    view4 = [(PLBUIChartViewController *)self->_controller view];
    [view4 setTranslatesAutoresizingMaskIntoConstraints:1];

    contentView2 = [(PLBatteryUIGraphViewTableCell *)self contentView];
    view5 = [(PLBUIChartViewController *)self->_controller view];
    [contentView2 addSubview:view5];
  }

  _objc_release_x1();
}

- (void)layoutSubviews
{
  [(PLBatteryUIGraphViewTableCell *)self setSeparatorStyle:0];
  v3.receiver = self;
  v3.super_class = PLBatteryUIGraphViewTableCell;
  [(PLBatteryUIGraphViewTableCell *)&v3 layoutSubviews];
}

@end