@interface COSPasscodeInputViewController
- (BOOL)controllerAllowsNavigatingBackTo;
- (BOOL)isComplex;
- (id)detailText;
- (id)titleText;
- (void)viewDidLoad;
@end

@implementation COSPasscodeInputViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = COSPasscodeInputViewController;
  [(COSPasscodeInputViewController *)&v9 viewDidLoad];
  headerView = [(COSPasscodeInputViewController *)self headerView];
  titleText = [(COSPasscodeInputViewController *)self titleText];
  [headerView setTitle:titleText];

  headerView2 = [(COSPasscodeInputViewController *)self headerView];
  detailText = [(COSPasscodeInputViewController *)self detailText];
  [headerView2 setDetailText:detailText];

  navigationItem = [(COSPasscodeInputViewController *)self navigationItem];
  [navigationItem setTitle:&stru_10026E598];
  v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:101 target:self action:"back:"];
  [navigationItem setBackBarButtonItem:v8];
}

- (BOOL)controllerAllowsNavigatingBackTo
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPasscodeInputViewController controllerAllowsNavigatingBackTo]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (id)titleText
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPasscodeInputViewController titleText]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (id)detailText
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPasscodeInputViewController detailText]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (BOOL)isComplex
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPasscodeInputViewController isComplex]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

@end