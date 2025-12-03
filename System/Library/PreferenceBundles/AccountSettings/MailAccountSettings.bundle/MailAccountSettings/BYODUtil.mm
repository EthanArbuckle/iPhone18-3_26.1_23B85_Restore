@interface BYODUtil
+ (void)showErrorForPresenter:(id)presenter withError:(id)error callback:(id)callback;
@end

@implementation BYODUtil

+ (void)showErrorForPresenter:(id)presenter withError:(id)error callback:(id)callback
{
  presenterCopy = presenter;
  errorCopy = error;
  callbackCopy = callback;
  if (presenterCopy)
  {
    if (errorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = +[NSAssertionHandler currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"BYODUtil.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

    if (errorCopy)
    {
      goto LABEL_3;
    }
  }

  v32 = +[NSAssertionHandler currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"BYODUtil.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"error"}];

LABEL_3:
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"BYOD_GENERIC_ERROR_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v14 = [UIAlertController alertControllerWithTitle:0 message:v13 preferredStyle:1];

  userInfo = [errorCopy userInfo];

  if (userInfo)
  {
    userInfo2 = [errorCopy userInfo];
    v17 = [userInfo2 objectForKeyedSubscript:@"errorTitle"];

    if (v17)
    {
      userInfo3 = [errorCopy userInfo];
      v19 = [userInfo3 objectForKeyedSubscript:@"errorTitle"];
      [v14 setTitle:v19];
    }

    userInfo4 = [errorCopy userInfo];
    v21 = [userInfo4 objectForKeyedSubscript:@"errorDescription"];

    if (v21)
    {
      userInfo5 = [errorCopy userInfo];
      v23 = [userInfo5 objectForKeyedSubscript:@"errorDescription"];
      [v14 setMessage:v23];
    }
  }

  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_69048;
  v36[3] = &unk_B8CF8;
  v26 = callbackCopy;
  v37 = v26;
  v27 = [UIAlertAction actionWithTitle:v25 style:1 handler:v36];

  [v14 addAction:v27];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_69060;
  v33[3] = &unk_B9060;
  v28 = presenterCopy;
  v34 = v28;
  v29 = v14;
  v35 = v29;
  v30 = +[EFScheduler mainThreadScheduler];
  [v30 performBlock:v33];
}

@end