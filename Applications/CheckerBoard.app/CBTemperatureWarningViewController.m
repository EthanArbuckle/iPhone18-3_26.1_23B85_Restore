@interface CBTemperatureWarningViewController
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)setupFooterView;
- (void)setupHeaderView;
- (void)setupTableView;
- (void)setupView;
- (void)viewDidLoad;
@end

@implementation CBTemperatureWarningViewController

- (void)viewDidLoad
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Temperature Warning screen loaded", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CBTemperatureWarningViewController;
  [(CBTemperatureWarningViewController *)&v4 viewDidLoad];
  [(CBTemperatureWarningViewController *)self setupView];
}

- (void)setupView
{
  [(CBTemperatureWarningViewController *)self setupTableView];
  [(CBTemperatureWarningViewController *)self setupHeaderView];

  [(CBTemperatureWarningViewController *)self setupFooterView];
}

- (void)setupTableView
{
  v3 = [UITableView alloc];
  v4 = [(CBTemperatureWarningViewController *)self view];
  [v4 frame];
  v5 = [v3 initWithFrame:1 style:?];
  [(CBTemperatureWarningViewController *)self setTableView:v5];

  v6 = +[UIColor blackColor];
  v7 = [(CBTemperatureWarningViewController *)self tableView];
  [v7 setBackgroundColor:v6];

  v8 = [(CBTemperatureWarningViewController *)self tableView];
  [v8 setDelegate:self];

  v9 = [(CBTemperatureWarningViewController *)self tableView];
  [v9 setDataSource:self];

  v10 = [(CBTemperatureWarningViewController *)self tableView];
  [v10 setAutoresizingMask:18];

  v11 = [(CBTemperatureWarningViewController *)self tableView];
  [v11 setScrollEnabled:0];

  v12 = [(CBTemperatureWarningViewController *)self tableView];
  [v12 registerClass:objc_opt_class() forCellReuseIdentifier:@"cellIdentifier"];

  v14 = [(CBTemperatureWarningViewController *)self view];
  v13 = [(CBTemperatureWarningViewController *)self tableView];
  [v14 addSubview:v13];
}

- (void)setupHeaderView
{
  v11 = [[BFFPaneHeaderView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v3 = +[UIColor blackColor];
  [v11 setBackgroundColor:v3];

  v4 = +[UIColor blackColor];
  v5 = [v11 textLabel];
  [v5 setBackgroundColor:v4];

  v6 = +[UIColor whiteColor];
  v7 = [v11 textLabel];
  [v7 setTextColor:v6];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"TEMPERATURE" value:&stru_10007EAB0 table:0];
  v10 = [v11 textLabel];
  [v10 setText:v9];

  [(CBTemperatureWarningViewController *)self setSetupAssistantHeaderView:v11];
}

- (void)setupFooterView
{
  v3 = [UIView alloc];
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = [v3 initWithFrame:{0.0, 0.0, 0.0, dbl_100059550[(v5 & 0xFFFFFFFFFFFFFFFBLL) == 1]}];
  [(CBTemperatureWarningViewController *)self setContainerFooterView:v6];

  v7 = +[CBThermalManager sharedInstance];
  v8 = [v7 level];

  if (v8 < 0)
  {
    v9 = @"TemperatureCold";
  }

  else
  {
    v9 = @"TemperatureHot";
  }

  v10 = [UIImage imageNamed:v9];
  v11 = [[UIImageView alloc] initWithImage:v10];
  v12 = [(CBTemperatureWarningViewController *)self view];
  [v12 frame];
  v14 = v13 * 0.5;
  [v11 frame];
  [v11 setCenter:v14];

  v15 = [(CBTemperatureWarningViewController *)self containerFooterView];
  [v15 addSubview:v11];

  v16 = [UILabel alloc];
  [v11 frame];
  v18 = v17 * 0.5 + 0.0;
  v19 = [(CBTemperatureWarningViewController *)self view];
  [v19 frame];
  v21 = v20;
  v22 = [(CBTemperatureWarningViewController *)self containerFooterView];
  [v22 frame];
  v23 = [v16 initWithFrame:{0.0, v18, v21}];

  v24 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"THERMAL_ALERT_STRING"];
  v25 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Localized thermal device string (%@)", &v34, 0xCu);
  }

  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:v24 value:&stru_10007EAB0 table:0];
  [v23 setText:v27];

  v28 = +[UIDevice currentDevice];
  v29 = [v28 userInterfaceIdiom];

  v30 = 24.0;
  if ((v29 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v30 = 26.0;
  }

  v31 = [UIFont _lightSystemFontOfSize:v30];
  [v23 setFont:v31];

  [v23 setAdjustsFontSizeToFitWidth:1];
  v32 = +[UIColor whiteColor];
  [v23 setTextColor:v32];

  [v23 setTextAlignment:1];
  [v23 setNumberOfLines:2];
  [v23 setLineBreakMode:4];
  v33 = [(CBTemperatureWarningViewController *)self containerFooterView];
  [v33 addSubview:v23];
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    return UITableViewAutomaticDimension;
  }

  v6 = a3;
  v7 = [(CBTemperatureWarningViewController *)self setupAssistantHeaderView];
  [v6 frame];
  v9 = v8;

  [v7 sizeThatFits:{v9, 3.40282347e38}];
  v4 = v10 + 50.0;

  return v4;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    return UITableViewAutomaticDimension;
  }

  v5 = [(CBTemperatureWarningViewController *)self containerFooterView];
  [v5 frame];
  v4 = v6;

  return v4;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CBTemperatureWarningViewController *)self setupAssistantHeaderView:a3];
  }

  return v6;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CBTemperatureWarningViewController *)self containerFooterView:a3];
  }

  return v6;
}

@end