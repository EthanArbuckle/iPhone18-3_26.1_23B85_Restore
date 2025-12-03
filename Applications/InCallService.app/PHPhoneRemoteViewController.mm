@interface PHPhoneRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (PHInCallBackgroundStyleProtocol)backgroundStyleDelegate;
- (PHPhoneRemoteViewControllerDelegate)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PHPhoneRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  viewControllerClassName = [self viewControllerClassName];
  serviceBundleIdentifier = [self serviceBundleIdentifier];
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = viewControllerClassName;
    v12 = 2112;
    v13 = serviceBundleIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting view controller with class name %@ and bundle identifier %@", &v10, 0x16u);
  }

  v8 = [self requestViewController:viewControllerClassName fromServiceWithBundleIdentifier:serviceBundleIdentifier connectionHandler:handlerCopy];

  return v8;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(PHPhoneRemoteViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(PHPhoneRemoteViewController *)self delegate];
    [delegate2 viewServiceDidTerminateWithError:errorCopy];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PHPhoneRemoteViewController;
  [(PHPhoneRemoteViewController *)&v5 viewDidAppear:appear];
  backgroundStyleDelegate = [(PHPhoneRemoteViewController *)self backgroundStyleDelegate];
  [backgroundStyleDelegate setBackgroundStyle:-[PHPhoneRemoteViewController backgroundStyle](self animatedWithDuration:{"backgroundStyle"), 0.5}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHPhoneRemoteViewController;
  [(PHPhoneRemoteViewController *)&v5 viewWillDisappear:disappear];
  backgroundStyleDelegate = [(PHPhoneRemoteViewController *)self backgroundStyleDelegate];
  [backgroundStyleDelegate setBackgroundStyle:4 animatedWithDuration:0.5];
}

- (PHPhoneRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PHInCallBackgroundStyleProtocol)backgroundStyleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundStyleDelegate);

  return WeakRetained;
}

@end