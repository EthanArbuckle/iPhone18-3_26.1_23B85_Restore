@interface PushRegisterTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation PushRegisterTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (*(&self->super._finished + 1))
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1002DBBC8;
    v25 = &unk_100521CA8;
    selfCopy = self;
    v27 = handlerCopy;
    v6 = &v22;
    v7 = objc_alloc_init(AMSURLRequestEncoder);
    amsBag = [*(&self->_environment + 2) amsBag];
    [v7 setBag:amsBag];

    [v7 setAccount:*(&self->super._finished + 1)];
    [v7 setRequestEncoding:2];
    v9 = +[NSMutableDictionary dictionary];
    [v9 setObject:*(&self->_token + 2) forKeyedSubscript:@"environment"];
    [v9 setObject:*(&self->_account + 2) forKeyedSubscript:@"token"];
    v10 = +[AMSDevice deviceName];
    v11 = [v10 dataUsingEncoding:4 allowLossyConversion:1];
    [v9 setObject:v11 forKeyedSubscript:@"device-name-data"];

    v12 = +[AMSDevice serialNumber];
    [v9 setObject:v12 forKeyedSubscript:@"serial-number"];

    v13 = +[AMSDevice deviceGUID];
    [v9 setObject:v13 forKeyedSubscript:@"guid"];

    v14 = [*(&self->_environment + 2) URLForKey:@"push-notifications/register-success"];
    if (v14)
    {
      v15 = [v7 requestWithMethod:4 URL:v14 parameters:v9];
      [v15 resultWithCompletion:v6];
    }

    else
    {
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = *(&self->_bag + 2);
        *buf = 138412290;
        v29 = v21;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%@] Could not find URL for registering push token", buf, 0xCu);
      }

      v19 = [NSError alloc];
      v15 = [v19 initWithDomain:AMSErrorDomain code:204 userInfo:0];
      v24(v6, 0, v15);
    }
  }

  else
  {
    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = *(&self->_bag + 2);
      *buf = 138412290;
      v29 = v20;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%@] Skipping push register since there is no account.", buf, 0xCu);
    }

    objc_opt_self();
    v17 = ASDErrorWithDescription();
    (v5)[2](v5, v17);
  }
}

@end