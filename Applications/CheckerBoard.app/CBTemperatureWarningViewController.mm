@interface CBTemperatureWarningViewController
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
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
  view = [(CBTemperatureWarningViewController *)self view];
  [view frame];
  v5 = [v3 initWithFrame:1 style:?];
  [(CBTemperatureWarningViewController *)self setTableView:v5];

  v6 = +[UIColor blackColor];
  tableView = [(CBTemperatureWarningViewController *)self tableView];
  [tableView setBackgroundColor:v6];

  tableView2 = [(CBTemperatureWarningViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(CBTemperatureWarningViewController *)self tableView];
  [tableView3 setDataSource:self];

  tableView4 = [(CBTemperatureWarningViewController *)self tableView];
  [tableView4 setAutoresizingMask:18];

  tableView5 = [(CBTemperatureWarningViewController *)self tableView];
  [tableView5 setScrollEnabled:0];

  tableView6 = [(CBTemperatureWarningViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"cellIdentifier"];

  view2 = [(CBTemperatureWarningViewController *)self view];
  tableView7 = [(CBTemperatureWarningViewController *)self tableView];
  [view2 addSubview:tableView7];
}

- (void)setupHeaderView
{
  v11 = [[BFFPaneHeaderView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v3 = +[UIColor blackColor];
  [v11 setBackgroundColor:v3];

  v4 = +[UIColor blackColor];
  textLabel = [v11 textLabel];
  [textLabel setBackgroundColor:v4];

  v6 = +[UIColor whiteColor];
  textLabel2 = [v11 textLabel];
  [textLabel2 setTextColor:v6];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"TEMPERATURE" value:&stru_10007EAB0 table:0];
  textLabel3 = [v11 textLabel];
  [textLabel3 setText:v9];

  [(CBTemperatureWarningViewController *)self setSetupAssistantHeaderView:v11];
}

- (void)setupFooterView
{
  v3 = [UIView alloc];
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  v6 = [v3 initWithFrame:{0.0, 0.0, 0.0, dbl_100059550[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1]}];
  [(CBTemperatureWarningViewController *)self setContainerFooterView:v6];

  v7 = +[CBThermalManager sharedInstance];
  level = [v7 level];

  if (level < 0)
  {
    v9 = @"TemperatureCold";
  }

  else
  {
    v9 = @"TemperatureHot";
  }

  v10 = [UIImage imageNamed:v9];
  v11 = [[UIImageView alloc] initWithImage:v10];
  view = [(CBTemperatureWarningViewController *)self view];
  [view frame];
  v14 = v13 * 0.5;
  [v11 frame];
  [v11 setCenter:v14];

  containerFooterView = [(CBTemperatureWarningViewController *)self containerFooterView];
  [containerFooterView addSubview:v11];

  v16 = [UILabel alloc];
  [v11 frame];
  v18 = v17 * 0.5 + 0.0;
  view2 = [(CBTemperatureWarningViewController *)self view];
  [view2 frame];
  v21 = v20;
  containerFooterView2 = [(CBTemperatureWarningViewController *)self containerFooterView];
  [containerFooterView2 frame];
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
  userInterfaceIdiom2 = [v28 userInterfaceIdiom];

  v30 = 24.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  containerFooterView3 = [(CBTemperatureWarningViewController *)self containerFooterView];
  [containerFooterView3 addSubview:v23];
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (section)
  {
    return UITableViewAutomaticDimension;
  }

  viewCopy = view;
  setupAssistantHeaderView = [(CBTemperatureWarningViewController *)self setupAssistantHeaderView];
  [viewCopy frame];
  v9 = v8;

  [setupAssistantHeaderView sizeThatFits:{v9, 3.40282347e38}];
  v4 = v10 + 50.0;

  return v4;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  if (section)
  {
    return UITableViewAutomaticDimension;
  }

  containerFooterView = [(CBTemperatureWarningViewController *)self containerFooterView];
  [containerFooterView frame];
  v4 = v6;

  return v4;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CBTemperatureWarningViewController *)self setupAssistantHeaderView:view];
  }

  return v6;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CBTemperatureWarningViewController *)self containerFooterView:view];
  }

  return v6;
}

@end