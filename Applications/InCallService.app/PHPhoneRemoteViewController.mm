@interface PHPhoneRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (PHInCallBackgroundStyleProtocol)backgroundStyleDelegate;
- (PHPhoneRemoteViewControllerDelegate)delegate;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PHPhoneRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 viewControllerClassName];
  v6 = [a1 serviceBundleIdentifier];
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting view controller with class name %@ and bundle identifier %@", &v10, 0x16u);
  }

  v8 = [a1 requestViewController:v5 fromServiceWithBundleIdentifier:v6 connectionHandler:v4];

  return v8;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v6 = a3;
  v4 = [(PHPhoneRemoteViewController *)self delegate];

  if (v4)
  {
    v5 = [(PHPhoneRemoteViewController *)self delegate];
    [v5 viewServiceDidTerminateWithError:v6];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHPhoneRemoteViewController;
  [(PHPhoneRemoteViewController *)&v5 viewDidAppear:a3];
  v4 = [(PHPhoneRemoteViewController *)self backgroundStyleDelegate];
  [v4 setBackgroundStyle:-[PHPhoneRemoteViewController backgroundStyle](self animatedWithDuration:{"backgroundStyle"), 0.5}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHPhoneRemoteViewController;
  [(PHPhoneRemoteViewController *)&v5 viewWillDisappear:a3];
  v4 = [(PHPhoneRemoteViewController *)self backgroundStyleDelegate];
  [v4 setBackgroundStyle:4 animatedWithDuration:0.5];
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