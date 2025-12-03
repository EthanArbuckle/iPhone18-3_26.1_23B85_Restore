@interface FailureViewController
- (FailureViewController)init;
- (FailureViewControllerDelegate)delegate;
- (void)_didTapInfoButton:(id)button;
- (void)_didTapShutdownButton:(id)button;
- (void)viewDidLoad;
@end

@implementation FailureViewController

- (FailureViewController)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"FAIL_SCREEN_TITLE" value:&stru_100028E90 table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"FAIL_SCREEN_DESCRIPTION" value:&stru_100028E90 table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"RESTART_BUTTON" value:&stru_100028E90 table:0];

  v17.receiver = self;
  v17.super_class = FailureViewController;
  v9 = [(FailureViewController *)&v17 initWithTitle:v4 detailText:v6 symbolName:@"exclamationmark.triangle"];
  if (v9)
  {
    v10 = +[OBBoldTrayButton boldButton];
    [v10 setTitle:v8 forState:0];
    [v10 addTarget:v9 action:"_didTapShutdownButton:" forControlEvents:0x2000];
    buttonTray = [(FailureViewController *)v9 buttonTray];
    [buttonTray addButton:v10];

    v12 = [UIBarButtonItem alloc];
    v13 = [UIImage systemImageNamed:@"info.circle"];
    v14 = [v12 initWithTitle:0 image:v13 target:v9 action:"_didTapInfoButton:" menu:0];

    navigationItem = [(FailureViewController *)v9 navigationItem];
    [navigationItem setRightBarButtonItem:v14];
  }

  return v9;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = FailureViewController;
  [(FailureViewController *)&v2 viewDidLoad];
}

- (void)_didTapInfoButton:(id)button
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[FailureViewController _didTapInfoButton:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Info button pushed on failure view of device.", &v7, 0xCu);
  }

  v5 = objc_alloc_init(DetailsViewController);
  navigationController = [(FailureViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (void)_didTapShutdownButton:(id)button
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[FailureViewController _didTapShutdownButton:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Reboot button pushed on failure view of device.", &v7, 0xCu);
  }

  delegate = [(FailureViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(FailureViewController *)self delegate];
    [delegate2 failureViewControllerDidReboot:self];
  }
}

- (FailureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end