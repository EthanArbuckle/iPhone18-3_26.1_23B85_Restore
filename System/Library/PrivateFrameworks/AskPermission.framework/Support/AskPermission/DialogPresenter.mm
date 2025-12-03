@interface DialogPresenter
+ (void)_presentDialogRequest:(id)request completion:(id)completion;
+ (void)presentDialogWithTitle:(id)title body:(id)body buttons:(id)buttons completion:(id)completion;
+ (void)presentRequest:(id)request;
@end

@implementation DialogPresenter

+ (void)presentDialogWithTitle:(id)title body:(id)body buttons:(id)buttons completion:(id)completion
{
  selfCopy = self;
  titleCopy = title;
  bodyCopy = body;
  buttonsCopy = buttons;
  completionCopy = completion;
  v11 = objc_alloc_init(NSMutableArray);
  if ([buttonsCopy count])
  {
    v12 = 0;
    do
    {
      v13 = [buttonsCopy objectAtIndexedSubscript:{v12, selfCopy}];
      v14 = [AMSDialogAction actionWithTitle:v13];
      v15 = [NSNumber numberWithInt:v12];
      stringValue = [v15 stringValue];
      [v14 setIdentifier:stringValue];

      [v11 addObject:v14];
      ++v12;
    }

    while ([buttonsCopy count] > v12);
  }

  v17 = [[AMSDialogRequest alloc] initWithTitle:titleCopy message:bodyCopy];
  [v17 setButtonActions:v11];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100012880;
  v22[3] = &unk_100055258;
  v23 = completionCopy;
  v18 = completionCopy;
  [selfCopy presentDialogRequest:v17 completion:v22];
}

+ (void)presentRequest:(id)request
{
  requestCopy = request;
  localizations = [requestCopy localizations];
  title = [localizations title];

  localizations2 = [requestCopy localizations];
  body = [localizations2 body];

  v9 = [Localizations stringWithKey:@"ACTION_OK"];
  v19 = v9;
  v10 = [NSArray arrayWithObjects:&v19 count:1];
  v11 = +[APLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = requestCopy;
    v13 = v16;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Presenting request. Request: %{public}@", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100012AF8;
  v14[3] = &unk_100055278;
  v14[4] = self;
  [self presentDialogWithTitle:title body:body buttons:v10 completion:v14];
}

+ (void)_presentDialogRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = requestCopy;
    v10 = v18;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Presenting dialog request. Request: %{public}@", buf, 0x16u);
  }

  v11 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];
  present = [v11 present];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100012E14;
  v14[3] = &unk_1000552A0;
  v15 = completionCopy;
  selfCopy = self;
  v13 = completionCopy;
  [present addFinishBlock:v14];
}

@end