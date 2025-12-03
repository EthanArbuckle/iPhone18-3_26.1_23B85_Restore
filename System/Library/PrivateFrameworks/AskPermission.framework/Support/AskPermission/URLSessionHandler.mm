@interface URLSessionHandler
+ (URLSessionHandler)sharedHandler;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
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

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v9 = +[APLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = requestCopy;
    v11 = v13;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling dialog request: %{public}@", &v12, 0x16u);
  }

  [DialogPresenter presentDialogRequest:requestCopy completion:completionCopy];
}

@end