@interface WebAuthenticationViewController
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (void)_viewControllerDismissed:(id)dismissed;
- (void)viewDidLoad;
@end

@implementation WebAuthenticationViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WebAuthenticationViewController;
  [(WebAuthenticationViewController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_viewControllerDismissed:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:0];
}

- (void)_viewControllerDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  v5 = sub_100003D08();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = dismissedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "View controller dismissed: %@", &v8, 0xCu);
  }

  viewControllerDismissedHandler = self->_viewControllerDismissedHandler;
  if (viewControllerDismissedHandler)
  {
    viewControllerDismissedHandler[2]();
    v7 = self->_viewControllerDismissedHandler;
    self->_viewControllerDismissedHandler = 0;
  }
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  view = [(WebAuthenticationViewController *)self view];
  window = [view window];

  return window;
}

@end