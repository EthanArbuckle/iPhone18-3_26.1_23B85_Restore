@interface CalendarUtil
+ (void)showErrorForPresenter:(id)a3 withError:(id)a4 callback:(id)a5;
@end

@implementation CalendarUtil

+ (void)showErrorForPresenter:(id)a3 withError:(id)a4 callback:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CALENDAR_GENERIC_ERROR_MESSAGE" value:&stru_14AB8 table:@"calendarSettings"];
  v12 = [UIAlertController alertControllerWithTitle:0 message:v11 preferredStyle:1];

  v13 = [v8 userInfo];

  if (v13)
  {
    v14 = [v8 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"errorTitle"];

    if (v15)
    {
      v16 = [v8 userInfo];
      v17 = [v16 objectForKeyedSubscript:@"errorTitle"];
      [v12 setTitle:v17];
    }

    v18 = [v8 userInfo];
    v19 = [v18 objectForKeyedSubscript:@"errorDescription"];

    if (v19)
    {
      v20 = [v8 userInfo];
      v21 = [v20 objectForKeyedSubscript:@"errorDescription"];
      [v12 setMessage:v21];
    }
  }

  v22 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"OK" value:&stru_14AB8 table:@"calendarSettings"];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_9400;
  v31[3] = &unk_148C0;
  v32 = v9;
  v24 = v9;
  v25 = [UIAlertAction actionWithTitle:v23 style:1 handler:v31];

  [v12 addAction:v25];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9418;
  block[3] = &unk_148E8;
  v29 = v7;
  v30 = v12;
  v26 = v12;
  v27 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

@end