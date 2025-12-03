@interface RetrievingDialog
- (RetrievingDialog)init;
- (RetrievingDialogDelegate)delegate;
- (void)_dismiss;
- (void)_display;
- (void)_displayIfRequired;
- (void)_schedule;
- (void)_timeoutMinPeriod;
- (void)abort;
- (void)dealloc;
- (void)dismissDialog:(id)dialog;
- (void)schedule;
- (void)setRetrievingNotification:(__CFUserNotification *)notification;
@end

@implementation RetrievingDialog

- (RetrievingDialog)init
{
  v3.receiver = self;
  v3.super_class = RetrievingDialog;
  result = [(RetrievingDialog *)&v3 init];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

- (void)_dismiss
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  retrievingNotification = [(RetrievingDialog *)self retrievingNotification];
  if (retrievingNotification)
  {
    CFUserNotificationCancel(retrievingNotification);
    [(RetrievingDialog *)self setRetrievingNotification:0];
  }

  [(RetrievingDialog *)self setState:5];
}

- (void)setRetrievingNotification:(__CFUserNotification *)notification
{
  retrievingNotification = self->_retrievingNotification;
  if (retrievingNotification != notification)
  {
    if (notification)
    {
      CFRetain(notification);
      retrievingNotification = self->_retrievingNotification;
    }

    self->_retrievingNotification = notification;
    if (retrievingNotification)
    {

      CFRelease(retrievingNotification);
    }
  }
}

- (void)abort
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000889C;
  block[3] = &unk_100028718;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_timeoutMinPeriod
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  state = [(RetrievingDialog *)self state];
  if (state <= 2)
  {
    if (state >= 2)
    {
      if (state == 2)
      {

        [(RetrievingDialog *)self setState:4];
      }

      return;
    }

    goto LABEL_9;
  }

  if (state != 3)
  {
    if (state != 4)
    {
      return;
    }

LABEL_9:
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"RetrievingDialog.m" lineNumber:151 description:{@"Invalid state when retrieving dialog min display timeout happened: %s", -[RetrievingDialog stateName](self, "stateName")}];

    return;
  }

  [(RetrievingDialog *)self _dismiss];
}

- (void)_display
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(RetrievingDialog *)self setState:2];
  v16[0] = kCFUserNotificationAlertHeaderKey;
  v3 = CKLocalizedString();
  v17[0] = v3;
  v16[1] = kCFUserNotificationDefaultButtonTitleKey;
  v4 = CKLocalizedString();
  v17[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v6 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v5 bundleIdentifier:0];

  v7 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v6);
  [(RetrievingDialog *)self setRetrievingNotification:v7];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008CF8;
  v13[3] = &unk_100028820;
  objc_copyWeak(&v14, &location);
  [CKUserNotificationUtilities showUserNotification:v7 withCompletionBlock:v13];
  CFRelease(v7);
  v8 = +[CKBehaviorOptions sharedOptions];
  [v8 shareAcceptorRetrievingDialogMinPeriod];
  v10 = v9;

  v11 = dispatch_time(0, (v10 * 1000000000.0));
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008E34;
  v12[3] = &unk_100028718;
  v12[4] = self;
  dispatch_after(v11, &_dispatch_main_q, v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)dismissDialog:(id)dialog
{
  [(RetrievingDialog *)self _dismiss];
  delegate = [(RetrievingDialog *)self delegate];
  [delegate retrievingDialogCancelled];
}

- (void)_displayIfRequired
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  state = [(RetrievingDialog *)self state];
  if (state > 1)
  {
    if ((state - 2) >= 3)
    {
      if (state == 5)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v5 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          selfCopy2 = self;
          v6 = "Not displaying the retrieving dialog: %p as it got aborted";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, buf, 0xCu);
          return;
        }
      }

      return;
    }

LABEL_14:
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"RetrievingDialog.m" lineNumber:239 description:{@"Invalid state when considering displaying retrieving dialog: %s", -[RetrievingDialog stateName](self, "stateName")}];

    return;
  }

  if (!state)
  {
    goto LABEL_14;
  }

  if (state != 1)
  {
    return;
  }

  delegate = [(RetrievingDialog *)self delegate];
  retrievingDialogShouldDisplay = [delegate retrievingDialogShouldDisplay];

  if (retrievingDialogShouldDisplay)
  {

    [(RetrievingDialog *)self _display];
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy2 = self;
      v6 = "Not displaying the retrieving dialog: %p as the delegate didn't want it";
      goto LABEL_21;
    }
  }
}

- (void)_schedule
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = +[CKBehaviorOptions sharedOptions];
  [v4 shareAcceptorRetrievingDialogDelay];
  v6 = v5;

  if ([(RetrievingDialog *)self state])
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"RetrievingDialog.m" lineNumber:248 description:{@"Unexpected state in retrieving dialog schedule: %s", -[RetrievingDialog stateName](self, "stateName")}];
  }

  [(RetrievingDialog *)self setState:1];
  objc_initWeak(&location, self);
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009270;
  block[3] = &unk_100028848;
  objc_copyWeak(&v10, &location);
  dispatch_after(v7, &_dispatch_main_q, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)schedule
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100009350;
  v2[3] = &unk_100028848;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  state = self->_state;
  if ((state - 2) <= 2)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"RetrievingDialog.m" lineNumber:270 description:{@"Retrieving dialog currently displayed and then abandoned. Current state: %s", (&off_100028868)[state]}];
  }

  retrievingNotification = self->_retrievingNotification;
  if (retrievingNotification)
  {
    CFRelease(retrievingNotification);
    self->_retrievingNotification = 0;
  }

  v7.receiver = self;
  v7.super_class = RetrievingDialog;
  [(RetrievingDialog *)&v7 dealloc];
}

- (RetrievingDialogDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end