@interface URLSessionHandler
+ (URLSessionHandler)sharedHandler;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
@end

@implementation URLSessionHandler

+ (URLSessionHandler)sharedHandler
{
  if (qword_100063D50 != -1)
  {
    sub_100029190();
  }

  v3 = qword_100063D58;

  return v3;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a6;
  v9 = +[APLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[APLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v7;
    v11 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling dialog request: %{public}@", &v12, 0x16u);
  }

  [DialogPresenter presentDialogRequest:v7 completion:v8];
}

@end