@interface DoneViewController
- (DoneViewController)initWithIssuesFound:(BOOL)a3;
- (DoneViewControllerDelegate)delegate;
- (void)_didTapInfoButton:(id)a3;
- (void)_didTapRestartButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation DoneViewController

- (DoneViewController)initWithIssuesFound:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v3)
  {
    v7 = @"DONE_SCREEN_TITLE";
  }

  else
  {
    v7 = @"DONE_SCREEN_TITLE_NO_ISSUES";
  }

  if (v3)
  {
    v8 = @"DONE_SCREEN_DESCRIPTION";
  }

  else
  {
    v8 = @"DONE_SCREEN_DESCRIPTION_NO_ISSUES";
  }

  v9 = [v5 localizedStringForKey:v7 value:&stru_100028E90 table:0];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:v8 value:&stru_100028E90 table:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"RESTART_BUTTON" value:&stru_100028E90 table:0];

  v22.receiver = self;
  v22.super_class = DoneViewController;
  v14 = [(DoneViewController *)&v22 initWithTitle:v9 detailText:v11 symbolName:@"checkmark.circle"];
  if (v14)
  {
    v15 = +[OBBoldTrayButton boldButton];
    [v15 setTitle:v13 forState:0];
    [v15 addTarget:v14 action:"_didTapRestartButton:" forControlEvents:0x2000];
    v16 = [(DoneViewController *)v14 buttonTray];
    [v16 addButton:v15];

    if (!v3)
    {
      v17 = [UIBarButtonItem alloc];
      v18 = [UIImage systemImageNamed:@"info.circle"];
      v19 = [v17 initWithTitle:0 image:v18 target:v14 action:"_didTapInfoButton:" menu:0];

      v20 = [(DoneViewController *)v14 navigationItem];
      [v20 setRightBarButtonItem:v19];
    }
  }

  return v14;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = DoneViewController;
  [(DoneViewController *)&v2 viewDidLoad];
}

- (void)_didTapInfoButton:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[DoneViewController _didTapInfoButton:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Info button pushed on done view of device.", &v7, 0xCu);
  }

  v5 = objc_alloc_init(DetailsViewController);
  v6 = [(DoneViewController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (void)_didTapRestartButton:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[DoneViewController _didTapRestartButton:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Reboot button pushed on done view of device.", &v7, 0xCu);
  }

  v5 = [(DoneViewController *)self delegate];

  if (v5)
  {
    v6 = [(DoneViewController *)self delegate];
    [v6 doneViewControllerDidReboot:self];
  }
}

- (DoneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end