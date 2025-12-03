@interface LocalApproveRequestTask
- (LocalApproveRequestTask)initWithItemIdentifier:(id)identifier;
- (id)_parseResult:(id)result;
- (id)_serverRequestWithUser:(id)user requestIdentifier:(id)identifier error:(id *)error;
- (id)perform;
@end

@implementation LocalApproveRequestTask

- (LocalApproveRequestTask)initWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = LocalApproveRequestTask;
  v6 = [(LocalApproveRequestTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemIdentifier, identifier);
  }

  return v7;
}

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014E68;
  v4[3] = &unk_100054C08;
  v4[4] = self;
  v2 = [(LocalApproveRequestTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

- (id)_serverRequestWithUser:(id)user requestIdentifier:(id)identifier error:(id *)error
{
  userCopy = user;
  identifierCopy = identifier;
  v9 = +[AMSBag sharedBag];
  updateRequestURL = [v9 updateRequestURL];

  v38[0] = @"requestId";
  v38[1] = @"approvalStatus";
  v39[0] = identifierCopy;
  v39[1] = &off_100057FF8;
  v11 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
  v12 = objc_alloc_init(URLRequestEncoder);
  v13 = [(URLRequestEncoder *)v12 requestWithMethod:4 bagURL:updateRequestURL parameters:v11];
  v35 = 0;
  v14 = [v13 resultWithTimeout:&v35 error:60.0];
  v15 = v35;
  if (v14)
  {
    v32 = identifierCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v16 = v14;
      dSID = [userCopy DSID];
      [v16 ap_setNullableValue:dSID forHTTPHeaderField:@"X-IC-DSID"];

      password = [userCopy password];
      [v16 ap_setNullableValue:password forHTTPHeaderField:@"X-IC-Password"];

      username = [userCopy username];
      [v16 ap_setNullableValue:username forHTTPHeaderField:@"X-IC-Username"];

      v20 = +[APLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[APLogConfig sharedConfig];
      }

      v31 = userCopy;
      oSLogObject = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        *buf = 138543362;
        v37 = v22;
        v23 = v22;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Encoded request successfully", buf, 0xCu);
      }

      v24 = +[URLSession sharedSession];
      v25 = [v24 dataTaskPromiseWithRequest:v16];

      v34 = v15;
      v26 = [v25 resultWithTimeout:&v34 error:60.0];
      v27 = v34;

      userCopy = v31;
    }

    else
    {
      v27 = APError();
      v26 = 0;
      v16 = v15;
    }

    v15 = v27;
    identifierCopy = v32;
  }

  else
  {
    v26 = 0;
  }

  if (error)
  {
    v28 = v15;
    *error = v15;
  }

  return v26;
}

- (id)_parseResult:(id)result
{
  object = [result object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = object;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v18 = APError();
    goto LABEL_40;
  }

  v5 = [v4 objectForKeyedSubscript:@"status"];
  if (objc_opt_respondsToSelector())
  {
    integerValue = [v5 integerValue];
    v7 = +[APLogConfig sharedDaemonConfig];
    v8 = v7;
    if (!integerValue)
    {
      if (!v7)
      {
        v8 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = objc_opt_class();
        v20 = v26;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Success status code", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_39;
    }

    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = objc_opt_class();
      v27 = 2050;
      v28 = integerValue;
      v10 = v26;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Error status code. Status code: %{public}ld", buf, 0x16u);
    }

    v11 = [v4 objectForKeyedSubscript:@"errorNumber"];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v18 = APError();
LABEL_38:

      goto LABEL_39;
    }

    integerValue2 = [v11 integerValue];
    if (integerValue2 == 3711)
    {
      v13 = +[APLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v13 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v22 = objc_opt_class();
      *buf = 138543362;
      v26 = v22;
      v16 = v22;
      v17 = "%{public}@: Previously declined error code";
    }

    else if (integerValue2 == 3710)
    {
      v13 = +[APLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v13 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v21 = objc_opt_class();
      *buf = 138543362;
      v26 = v21;
      v16 = v21;
      v17 = "%{public}@: Previously approved error code";
    }

    else
    {
      if (integerValue2 != 3709)
      {
        v23 = [NSString stringWithFormat:@"Server response contains error. Error code: %ld", integerValue2];
        v18 = APError();

        goto LABEL_38;
      }

      v13 = +[APLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v13 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v15 = objc_opt_class();
      *buf = 138543362;
      v26 = v15;
      v16 = v15;
      v17 = "%{public}@: Request expired error code";
    }

    _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);

LABEL_36:
    v18 = 0;
    goto LABEL_38;
  }

  v18 = APError();
LABEL_39:

LABEL_40:

  return v18;
}

@end