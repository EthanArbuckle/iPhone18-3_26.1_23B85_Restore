@interface PLBatteryUIGraphViewTableCell
- (PLBatteryUIGraphViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PLBatteryUIGraphViewTableCell

- (PLBatteryUIGraphViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = PLBatteryUIGraphViewTableCell;
  v4 = [(PLBatteryUIGraphViewTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"PLBatteryUIGraphViewControllerKey"];
  controller = self->_controller;
  if (controller != v4)
  {
    obj = v4;
    if (controller)
    {
      v6 = [(PLBUIChartViewController *)controller view];
      [v6 removeFromSuperview];
    }

    objc_storeStrong(&self->_controller, obj);
    v7 = [(PLBatteryUIGraphViewTableCell *)self contentView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(PLBUIChartViewController *)self->_controller view];
    [v16 setFrame:{v9, v11, v13, v15}];

    v17 = [(PLBUIChartViewController *)self->_controller view];
    [v17 setAutoresizingMask:18];

    v18 = [(PLBUIChartViewController *)self->_controller view];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:1];

    v19 = [(PLBatteryUIGraphViewTableCell *)self contentView];
    v20 = [(PLBUIChartViewController *)self->_controller view];
    [v19 addSubview:v20];
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