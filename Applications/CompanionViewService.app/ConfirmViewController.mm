@interface ConfirmViewController
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
@end

@implementation ConfirmViewController

- (void)proxCardFlowWillPresent
{
  viewServiceHost = [(BaseViewController *)self viewServiceHost];
  [viewServiceHost setStatusBarHidden:1 withDuration:0.3];
}

- (void)proxCardFlowDidDismiss
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    confirmed = self->_confirmed;
    *buf = 67109120;
    v12 = confirmed;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Confirm prox card flow dismissed: %{BOOL}d", buf, 8u);
  }

  if (!self->_confirmed && !self->_cancelled)
  {
    viewServicePresenter = [(BaseViewController *)self viewServicePresenter];
    v5 = CPSErrorDomain;
    v9 = NSDebugDescriptionErrorKey;
    v10 = @"User dismissed prox card without authenticating.";
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:v5 code:104 userInfo:v6];
    [viewServicePresenter deactivateWithError:v7];
  }

  viewServiceHost = [(BaseViewController *)self viewServiceHost];
  [viewServiceHost invalidate];
}

@end