@interface QuickNoteAlertManager
+ (id)sharedInstance;
- (void)_cleanupRemoteAlertHandle:(id)a3;
- (void)activateRemoteAlert;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation QuickNoteAlertManager

+ (id)sharedInstance
{
  if (qword_1000997C8[0] != -1)
  {
    sub_100069DFC();
  }

  v3 = qword_1000997C0;

  return v3;
}

- (void)activateRemoteAlert
{
  if (!self->_remoteAlertHandle)
  {
    v8 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SystemPaperViewService" viewControllerClassName:@"ViewController"];
    v4 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v5 = [SBSRemoteAlertHandle newHandleWithDefinition:v8 configurationContext:v4];
    v6 = objc_alloc_init(SBSRemoteAlertActivationContext);
    [v5 registerObserver:self];
    [v5 activateWithContext:v6];
    remoteAlertHandle = self->_remoteAlertHandle;
    self->_remoteAlertHandle = v5;
  }
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100069E10(v3);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100069E54(v5);
  }

  [(QuickNoteAlertManager *)self _cleanupRemoteAlertHandle:v4];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 domain];
  if ([v8 isEqualToString:SBSRemoteAlertHandleInvalidationErrorDomain])
  {
    if (![v6 code] || objc_msgSend(v6, "code") == 5)
    {

      goto LABEL_11;
    }

    v9 = [v6 code] == 4;
  }

  else
  {
    v9 = 0;
  }

  if (!v6 || v9)
  {
LABEL_11:
    v10 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100069F10(v6, v10);
    }

    goto LABEL_13;
  }

  v10 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100069E98(v6, v10);
  }

LABEL_13:

  [(QuickNoteAlertManager *)self _cleanupRemoteAlertHandle:v7];
}

- (void)_cleanupRemoteAlertHandle:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000275C;
  v5[3] = &unk_100092338;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

@end