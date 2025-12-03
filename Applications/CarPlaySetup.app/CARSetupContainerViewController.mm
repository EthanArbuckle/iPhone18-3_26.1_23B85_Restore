@interface CARSetupContainerViewController
- (void)_setupPromptPresenter;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
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

  view = [(CARSetupContainerViewController *)self view];
  v5 = +[UIColor clearColor];
  [view setBackgroundColor:v5];
}

- (void)_setupPromptPresenter
{
  v3 = [[CARSetupPromptPresenter alloc] initWithPresentingViewController:self];
  [(CARSetupContainerViewController *)self setPromptPresenter:v3];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = CARSetupLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    userInfo = [contextCopy userInfo];
    v11 = 138412546;
    v12 = contextCopy;
    v13 = 2112;
    v14 = userInfo;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Configure with context %@ userinfo %@", &v11, 0x16u);
  }

  _remoteViewControllerProxy = [(CARSetupContainerViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertItems:0];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  [(CARSetupContainerViewController *)self _setupPromptPresenter];
  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v5 = completionCopy;
  }
}

@end