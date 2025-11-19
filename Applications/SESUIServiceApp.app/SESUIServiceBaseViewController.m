@interface SESUIServiceBaseViewController
- (SESUIServiceBaseViewController)init;
- (void)dismiss;
- (void)present;
- (void)setDismissHandler:(id)a3;
@end

@implementation SESUIServiceBaseViewController

- (SESUIServiceBaseViewController)init
{
  v3.receiver = self;
  v3.super_class = SESUIServiceBaseViewController;
  result = [(SESUIServiceBaseViewController *)&v3 init];
  if (result)
  {
    result->_dismissed = 0;
  }

  return result;
}

- (void)setDismissHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  dismissHandler = self->_dismissHandler;
  self->_dismissHandler = v4;

  _objc_release_x1();
}

- (void)dismiss
{
  if (!self->_dismissed)
  {
    objc_initWeak(&location, self);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100001FA0;
    v3[3] = &unk_100018888;
    objc_copyWeak(&v4, &location);
    [(SESUIServiceBaseViewController *)self dismissViewControllerAnimated:1 completion:v3];
    self->_dismissed = 1;
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

- (void)present
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Subclass needs to override", v3, 2u);
  }
}

@end