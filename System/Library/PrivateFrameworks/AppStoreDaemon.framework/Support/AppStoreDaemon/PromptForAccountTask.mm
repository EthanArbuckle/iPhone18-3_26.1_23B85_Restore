@interface PromptForAccountTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation PromptForAccountTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_opt_new();
  [v5 setDebugReason:@"Prompt For Account"];
  v6 = ASDLocalizedString();
  [v5 setPromptTitle:v6];

  if (*(&self->super._finished + 1))
  {
    v7 = ASDLocalizedString();
    v8 = [NSString stringWithFormat:v7, *(&self->super._finished + 1)];
    [v5 setReason:v8];
  }

  v9 = ASDLocalizedString();
  [v5 setDefaultButtonString:v9];

  v11 = [objc_getProperty(self v10];
  [v5 setLogKey:v11];

  notificationClient = [*(&self->_logKey + 2) notificationClient];

  v13 = ASDLogHandleForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (notificationClient)
  {
    if (v14)
    {
      Property = objc_getProperty(self, v15, 66, 1);
      notificationClient2 = [*(&self->_logKey + 2) notificationClient];
      *buf = 138412546;
      v23 = Property;
      v24 = 2114;
      v25 = notificationClient2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Sending authentication request to client %{public}@", buf, 0x16u);
    }

    v18 = [[AMSAuthenticateRequest alloc] initWithDSID:0 altDSID:0 username:*(&self->super._finished + 1) options:v5];
    notificationClient3 = [*(&self->_logKey + 2) notificationClient];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1002C0738;
    v20[3] = &unk_10051E040;
    v20[4] = self;
    v21 = handlerCopy;
    sub_100311954(CallerRequestPresenter, v18, notificationClient3, v20);
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v23 = objc_getProperty(self, v15, 66, 1);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] No client available to handle authentication request", buf, 0xCu);
    }

    v18 = ASDErrorWithDescription();
    (*(handlerCopy + 2))(handlerCopy, v18);
  }
}

@end