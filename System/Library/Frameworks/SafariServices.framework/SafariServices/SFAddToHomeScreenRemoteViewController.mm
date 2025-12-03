@interface SFAddToHomeScreenRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (SFAddToHomeScreenRemoteViewControllerDelegate)delegate;
- (void)serviceViewControllerDidFinishWithResult:(BOOL)result;
@end

@implementation SFAddToHomeScreenRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"SFAddToHomeScreenServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:handlerCopy];

  return v4;
}

- (void)serviceViewControllerDidFinishWithResult:(BOOL)result
{
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self didFinishWithResult:resultCopy];
}

- (SFAddToHomeScreenRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end