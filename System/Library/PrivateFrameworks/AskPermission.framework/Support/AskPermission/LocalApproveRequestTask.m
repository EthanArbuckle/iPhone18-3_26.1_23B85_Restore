@interface LocalApproveRequestTask
- (LocalApproveRequestTask)initWithItemIdentifier:(id)a3;
- (id)_parseResult:(id)a3;
- (id)_serverRequestWithUser:(id)a3 requestIdentifier:(id)a4 error:(id *)a5;
- (id)perform;
@end

@implementation LocalApproveRequestTask

- (LocalApproveRequestTask)initWithItemIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LocalApproveRequestTask;
  v6 = [(LocalApproveRequestTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemIdentifier, a3);
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

- (id)_serverRequestWithUser:(id)a3 requestIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[AMSBag sharedBag];
  v10 = [v9 updateRequestURL];

  v38[0] = @"requestId";
  v38[1] = @"approvalStatus";
  v39[0] = v8;
  v39[1] = &off_100057FF8;
  v11 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
  v12 = objc_alloc_init(URLRequestEncoder);
  v13 = [(URLRequestEncoder *)v12 requestWithMethod:4 bagURL:v10 parameters:v11];
  v35 = 0;
  v14 = [v13 resultWithTimeout:&v35 error:60.0];
  v15 = v35;
  if (v14)
  {
    v32 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = self;
      v16 = v14;
      v17 = [v7 DSID];
      [v16 ap_setNullableValue:v17 forHTTPHeaderField:@"X-IC-DSID"];

      v18 = [v7 password];
      [v16 ap_setNullableValue:v18 forHTTPHeaderField:@"X-IC-Password"];

      v19 = [v7 username];
      [v16 ap_setNullableValue:v19 forHTTPHeaderField:@"X-IC-Username"];

      v20 = +[APLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[APLogConfig sharedConfig];
      }

      v31 = v7;
      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        *buf = 138543362;
        v37 = v22;
        v23 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Encoded request successfully", buf, 0xCu);
      }

      v24 = +[URLSession sharedSession];
      v25 = [v24 dataTaskPromiseWithRequest:v16];

      v34 = v15;
      v26 = [v25 resultWithTimeout:&v34 error:60.0];
      v27 = v34;

      v7 = v31;
    }

    else
    {
      v27 = APError();
      v26 = 0;
      v16 = v15;
    }

    v15 = v27;
    v8 = v32;
  }

  else
  {
    v26 = 0;
  }

  if (a5)
  {
    v28 = v15;
    *a5 = v15;
  }

  return v26;
}

- (id)_parseResult:(id)a3
{
  v3 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
    v6 = [v5 integerValue];
    v7 = +[APLogConfig sharedDaemonConfig];
    v8 = v7;
    if (!v6)
    {
      if (!v7)
      {
        v8 = +[APLogConfig sharedConfig];
      }

      v19 = [v8 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = objc_opt_class();
        v20 = v26;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Success status code", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_39;
    }

    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = objc_opt_class();
      v27 = 2050;
      v28 = v6;
      v10 = v26;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error status code. Status code: %{public}ld", buf, 0x16u);
    }

    v11 = [v4 objectForKeyedSubscript:@"errorNumber"];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v18 = APError();
LABEL_38:

      goto LABEL_39;
    }

    v12 = [v11 integerValue];
    if (v12 == 3711)
    {
      v13 = +[APLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[APLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v22 = objc_opt_class();
      *buf = 138543362;
      v26 = v22;
      v16 = v22;
      v17 = "%{public}@: Previously declined error code";
    }

    else if (v12 == 3710)
    {
      v13 = +[APLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[APLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
      if (v12 != 3709)
      {
        v23 = [NSString stringWithFormat:@"Server response contains error. Error code: %ld", v12];
        v18 = APError();

        goto LABEL_38;
      }

      v13 = +[APLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[APLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v15 = objc_opt_class();
      *buf = 138543362;
      v26 = v15;
      v16 = v15;
      v17 = "%{public}@: Request expired error code";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);

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