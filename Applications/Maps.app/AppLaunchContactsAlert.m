@interface AppLaunchContactsAlert
- (BOOL)_shouldDisplayAlert;
- (void)_alertDidFinishProcessing;
- (void)_contactsAuthorizationDismissed;
- (void)_presentAlertUI;
- (void)displayAlertIfNecessaryWithCompletionHandler:(id)a3;
@end

@implementation AppLaunchContactsAlert

- (void)_alertDidFinishProcessing
{
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    v5 = objc_retainBlock(completionBlock);
    v4 = self->_completionBlock;
    self->_completionBlock = 0;

    v5[2]();
  }
}

- (void)_contactsAuthorizationDismissed
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AppLaunchContactsAlert: alert dismissed", v4, 2u);
  }

  [(AppLaunchContactsAlert *)self _alertDidFinishProcessing];
}

- (void)_presentAlertUI
{
  objc_initWeak(&location, self);
  v2 = objc_alloc_init(CNContactStore);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10099D23C;
  v3[3] = &unk_101637948;
  objc_copyWeak(&v4, &location);
  [v2 requestAccessForEntityType:0 completionHandler:v3];
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
}

- (BOOL)_shouldDisplayAlert
{
  v2 = [CNContactStore authorizationStatusForEntityType:0];
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AppLaunchContactsAlert: status %ld", &v5, 0xCu);
  }

  return v2 == CNAuthorizationStatusNotDetermined;
}

- (void)displayAlertIfNecessaryWithCompletionHandler:(id)a3
{
  v4 = [a3 copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  v6 = [(AppLaunchContactsAlert *)self _shouldDisplayAlert];
  v7 = sub_100005610();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchContactsAlert: presenting alert", buf, 2u);
    }

    [(AppLaunchContactsAlert *)self _presentAlertUI];
  }

  else
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AppLaunchContactsAlert: no need to be displayed", v9, 2u);
    }

    [(AppLaunchContactsAlert *)self _alertDidFinishProcessing];
  }
}

@end