@interface CARSetupContainerViewController
- (void)_setupPromptPresenter;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation CARSetupContainerViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CARSetupContainerViewController;
  [(CARSetupContainerViewController *)&v6 viewDidLoad];
  v3 = CARSetupLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000802C(v3);
  }

  v4 = [(CARSetupContainerViewController *)self view];
  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];
}

- (void)_setupPromptPresenter
{
  v3 = [[CARSetupPromptPresenter alloc] initWithPresentingViewController:self];
  [(CARSetupContainerViewController *)self setPromptPresenter:v3];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CARSetupLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 userInfo];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Configure with context %@ userinfo %@", &v11, 0x16u);
  }

  v10 = [(CARSetupContainerViewController *)self _remoteViewControllerProxy];
  [v10 setAllowsAlertItems:0];
  if (v7)
  {
    v7[2](v7);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(CARSetupContainerViewController *)self _setupPromptPresenter];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

@end