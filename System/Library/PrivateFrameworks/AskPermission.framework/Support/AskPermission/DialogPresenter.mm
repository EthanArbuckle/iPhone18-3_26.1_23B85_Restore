@interface DialogPresenter
+ (void)_presentDialogRequest:(id)a3 completion:(id)a4;
+ (void)presentDialogWithTitle:(id)a3 body:(id)a4 buttons:(id)a5 completion:(id)a6;
+ (void)presentRequest:(id)a3;
@end

@implementation DialogPresenter

+ (void)presentDialogWithTitle:(id)a3 body:(id)a4 buttons:(id)a5 completion:(id)a6
{
  v19 = a1;
  v21 = a3;
  v20 = a4;
  v9 = a5;
  v10 = a6;
  v11 = objc_alloc_init(NSMutableArray);
  if ([v9 count])
  {
    v12 = 0;
    do
    {
      v13 = [v9 objectAtIndexedSubscript:{v12, v19}];
      v14 = [AMSDialogAction actionWithTitle:v13];
      v15 = [NSNumber numberWithInt:v12];
      v16 = [v15 stringValue];
      [v14 setIdentifier:v16];

      [v11 addObject:v14];
      ++v12;
    }

    while ([v9 count] > v12);
  }

  v17 = [[AMSDialogRequest alloc] initWithTitle:v21 message:v20];
  [v17 setButtonActions:v11];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100012880;
  v22[3] = &unk_100055258;
  v23 = v10;
  v18 = v10;
  [v19 presentDialogRequest:v17 completion:v22];
}

+ (void)presentRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 localizations];
  v6 = [v5 title];

  v7 = [v4 localizations];
  v8 = [v7 body];

  v9 = [Localizations stringWithKey:@"ACTION_OK"];
  v19 = v9;
  v10 = [NSArray arrayWithObjects:&v19 count:1];
  v11 = +[APLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[APLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = v4;
    v13 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Presenting request. Request: %{public}@", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100012AF8;
  v14[3] = &unk_100055278;
  v14[4] = a1;
  [a1 presentDialogWithTitle:v6 body:v8 buttons:v10 completion:v14];
}

+ (void)_presentDialogRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = v6;
    v10 = v18;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Presenting dialog request. Request: %{public}@", buf, 0x16u);
  }

  v11 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v6];
  v12 = [v11 present];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100012E14;
  v14[3] = &unk_1000552A0;
  v15 = v7;
  v16 = a1;
  v13 = v7;
  [v12 addFinishBlock:v14];
}

@end