@interface CalendarUtil
+ (void)showErrorForPresenter:(id)presenter withError:(id)error callback:(id)callback;
@end

@implementation CalendarUtil

+ (void)showErrorForPresenter:(id)presenter withError:(id)error callback:(id)callback
{
  presenterCopy = presenter;
  errorCopy = error;
  callbackCopy = callback;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CALENDAR_GENERIC_ERROR_MESSAGE" value:&stru_14AB8 table:@"calendarSettings"];
  v12 = [UIAlertController alertControllerWithTitle:0 message:v11 preferredStyle:1];

  userInfo = [errorCopy userInfo];

  if (userInfo)
  {
    userInfo2 = [errorCopy userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:@"errorTitle"];

    if (v15)
    {
      userInfo3 = [errorCopy userInfo];
      v17 = [userInfo3 objectForKeyedSubscript:@"errorTitle"];
      [v12 setTitle:v17];
    }

    userInfo4 = [errorCopy userInfo];
    v19 = [userInfo4 objectForKeyedSubscript:@"errorDescription"];

    if (v19)
    {
      userInfo5 = [errorCopy userInfo];
      v21 = [userInfo5 objectForKeyedSubscript:@"errorDescription"];
      [v12 setMessage:v21];
    }
  }

  v22 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"OK" value:&stru_14AB8 table:@"calendarSettings"];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_9400;
  v31[3] = &unk_148C0;
  v32 = callbackCopy;
  v24 = callbackCopy;
  v25 = [UIAlertAction actionWithTitle:v23 style:1 handler:v31];

  [v12 addAction:v25];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9418;
  block[3] = &unk_148E8;
  v29 = presenterCopy;
  v30 = v12;
  v26 = v12;
  v27 = presenterCopy;
  dispatch_async(&_dispatch_main_q, block);
}

@end