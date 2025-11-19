@interface StoreAuthenticationViewController
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
@end

@implementation StoreAuthenticationViewController

- (void)proxCardFlowWillPresent
{
  v2 = [(BaseViewController *)self viewServiceHost];
  [v2 setStatusBarHidden:1 withDuration:0.3];
}

- (void)proxCardFlowDidDismiss
{
  v3 = sub_100002E64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    finished = self->_finished;
    cancelled = self->_cancelled;
    *buf = 67109376;
    v14 = finished;
    v15 = 1024;
    v16 = cancelled;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Store authentication prox card flow dismissed. {finished=%{BOOL}d, cancelled=%{BOOL}d", buf, 0xEu);
  }

  if (!self->_finished && !self->_cancelled)
  {
    v6 = [(BaseViewController *)self viewServicePresenter];
    v7 = CPSErrorDomain;
    v11 = NSDebugDescriptionErrorKey;
    v12 = @"User dismissed prox card without authenticating.";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [NSError errorWithDomain:v7 code:104 userInfo:v8];
    [v6 deactivateWithError:v9];
  }

  v10 = [(BaseViewController *)self viewServiceHost];
  [v10 invalidate];
}

@end