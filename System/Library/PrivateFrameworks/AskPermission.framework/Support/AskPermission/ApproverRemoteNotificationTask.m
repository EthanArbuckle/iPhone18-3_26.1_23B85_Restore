@interface ApproverRemoteNotificationTask
- (ApproverRemoteNotificationTask)initWithPayload:(id)a3;
- (NSString)metricsID;
- (NSString)requestIdentifier;
- (id)_approvalRequestFromResult:(id)a3 withError:(id *)a4;
- (id)_approvalRequestWithError:(id *)a3;
- (id)_requestFromResult:(id)a3 withError:(id *)a4;
- (id)_requestWithError:(id *)a3;
- (id)_serverRequestWithError:(id *)a3;
- (id)perform;
- (int64_t)requestStatus;
- (void)_presentRequest:(id)a3;
@end

@implementation ApproverRemoteNotificationTask

- (ApproverRemoteNotificationTask)initWithPayload:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ApproverRemoteNotificationTask;
  v6 = [(ApproverRemoteNotificationTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, a3);
    v8 = [AMSBag bagForProfile:@"AskPermission" profileVersion:@"1"];
    bag = v7->_bag;
    v7->_bag = v8;
  }

  return v7;
}

- (int64_t)requestStatus
{
  v2 = [(ApproverRemoteNotificationTask *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"9"];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -2;
  }

  return v4;
}

- (NSString)requestIdentifier
{
  v2 = [(ApproverRemoteNotificationTask *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"8"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)metricsID
{
  v2 = [(ApproverRemoteNotificationTask *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"purchaseAuthorizationId"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000028DC;
  v4[3] = &unk_100054C08;
  v4[4] = self;
  v2 = [(ApproverRemoteNotificationTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

- (id)_approvalRequestWithError:(id *)a3
{
  v21 = 0;
  v5 = [(ApproverRemoteNotificationTask *)self _serverRequestWithError:&v21];
  v6 = v21;
  v7 = v6;
  if (v5)
  {
    v8 = +[APLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v23 = v10;
      v24 = 2114;
      v25 = v5;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result: %{public}@", buf, 0x16u);
    }

    v20 = v7;
    v12 = [(ApproverRemoteNotificationTask *)self _approvalRequestFromResult:v5 withError:&v20];
    v13 = v20;

    if (v12)
    {
      v14 = +[APLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[APLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        *buf = 138543618;
        v23 = v16;
        v24 = 2114;
        v25 = v12;
        v17 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Decoded server result. Request: %{public}@", buf, 0x16u);
      }
    }

    if (a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
    v13 = v6;
    if (a3)
    {
LABEL_13:
      v18 = v13;
      *a3 = v13;
    }
  }

  return v12;
}

- (id)_requestWithError:(id *)a3
{
  v21 = 0;
  v5 = [(ApproverRemoteNotificationTask *)self _serverRequestWithError:&v21];
  v6 = v21;
  v7 = v6;
  if (v5)
  {
    v8 = +[APLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v23 = v10;
      v24 = 2114;
      v25 = v5;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result: %{public}@", buf, 0x16u);
    }

    v20 = v7;
    v12 = [(ApproverRemoteNotificationTask *)self _requestFromResult:v5 withError:&v20];
    v13 = v20;

    if (v12)
    {
      v14 = +[APLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[APLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        *buf = 138543618;
        v23 = v16;
        v24 = 2114;
        v25 = v12;
        v17 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Decoded server result. Request: %{public}@", buf, 0x16u);
      }
    }

    if (a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
    v13 = v6;
    if (a3)
    {
LABEL_13:
      v18 = v13;
      *a3 = v13;
    }
  }

  return v12;
}

- (id)_serverRequestWithError:(id *)a3
{
  v5 = +[AMSBag sharedBag];
  v6 = [v5 retrieveRequestURL];

  v33 = @"requestId";
  v7 = [(ApproverRemoteNotificationTask *)self requestIdentifier];
  v34 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];

  v9 = objc_alloc_init(URLRequestEncoder);
  v10 = [(URLRequestEncoder *)v9 requestWithMethod:4 bagURL:v6 parameters:v8];
  v30 = 0;
  v11 = [v10 resultWithTimeout:&v30 error:60.0];
  v12 = v30;
  if (v11)
  {
    v28 = v6;
    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543362;
      v32 = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Encoded request successfully", buf, 0xCu);
    }

    v17 = +[URLSession sharedSession];
    v18 = [v17 dataTaskPromiseWithRequest:v11];

    v29 = v12;
    v19 = [v18 resultWithTimeout:&v29 error:60.0];
    v20 = v29;

    if (v19)
    {
      v21 = +[APLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[APLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543362;
        v32 = v23;
        v24 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result", buf, 0xCu);
      }
    }

    v12 = v20;
    a3 = v27;
    v6 = v28;
    if (v27)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (a3)
    {
LABEL_13:
      v25 = v12;
      *a3 = v12;
    }
  }

  return v19;
}

- (id)_approvalRequestFromResult:(id)a3 withError:(id *)a4
{
  v6 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [[ApprovalRequest alloc] initWithCloudPushDictionary:v7];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = APError();
    }

    v10 = [(ApproverRemoteNotificationTask *)self metricsID];
    [(ApprovalRequest *)v8 setMetricsID:v10];

    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = APError();
  v8 = 0;
  if (a4)
  {
LABEL_11:
    v11 = v9;
    *a4 = v9;
  }

LABEL_12:

  return v8;
}

- (id)_requestFromResult:(id)a3 withError:(id *)a4
{
  v6 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v74 = a4;
    v8 = [v7 objectForKeyedSubscript:@"requestInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v12 = [v9 objectForKeyedSubscript:@"salables"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v13 objectForKeyedSubscript:@"lockupData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 objectForKeyedSubscript:@"parentSalables"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v17 firstObject];
    objc_opt_class();
    v71 = v17;
    if (objc_opt_isKindOfClass())
    {
      v83 = v18;
    }

    else
    {
      v83 = 0;
    }

    v19 = [v9 objectForKeyedSubscript:@"approveButton"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v9 objectForKeyedSubscript:@"requestString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v82 = v21;
    }

    else
    {
      v82 = 0;
    }

    v22 = [v9 objectForKeyedSubscript:@"declineButton"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v13 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v75 = v15;
    if (v25)
    {
      v70 = v25;
    }

    else
    {
      v26 = v20;
      v27 = [v83 objectForKeyedSubscript:@"bundleIdentifier"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = @"Unknown";
      if (v28)
      {
        v29 = v28;
      }

      v70 = v29;

      v20 = v26;
      v15 = v75;
    }

    v30 = [v9 objectForKeyedSubscript:@"adamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = v30;
    }

    else
    {
      v81 = 0;
    }

    v31 = [v15 objectForKeyedSubscript:@"offerName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = v31;
    }

    else
    {
      v69 = 0;
    }

    v32 = [v83 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v76 = v32;
    }

    else
    {
      v76 = 0;
    }

    v33 = [v9 objectForKeyedSubscript:@"previewURL"];
    objc_opt_class();
    v84 = v23;
    if (objc_opt_isKindOfClass())
    {
      v80 = v33;
    }

    else
    {
      v80 = 0;
    }

    v77 = self;

    v34 = [v9 objectForKeyedSubscript:@"productType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = v20;

    v37 = [v13 objectForKeyedSubscript:@"productTypeName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = [v13 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = v39;
    }

    else
    {
      v79 = 0;
    }

    v40 = [v9 objectForKeyedSubscript:@"requesterFirstName"];
    objc_opt_class();
    v72 = v13;
    v73 = v7;
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v42 = +[NSDate date];
    v66 = [(ApproverRemoteNotificationTask *)v77 requestIdentifier];
    v43 = [v81 stringValue];
    v65 = [NSURL URLWithString:v80];
    v78 = [NSURL URLWithString:v79];
    v44 = v38;
    if ([v35 isEqualToString:@"A"])
    {
      v45 = v36;
      v46 = v84;
      if (v76)
      {
        v47 = [NSURL URLWithString:?];

        v78 = v47;
      }
    }

    else
    {
      v45 = v36;
      v46 = v84;
    }

    if (v45)
    {
      if (v46)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v45 = [Localizations stringWithKey:@"ACTION_APPROVE"];
      if (v46)
      {
        goto LABEL_72;
      }
    }

    v46 = [Localizations stringWithKey:@"ACTION_DECLINE"];
LABEL_72:
    v48 = [Localizations stringWithKey:@"NOTIFICATION_TITLE_APPROVER"];
    if (v48)
    {
      v49 = [NSString stringWithValidatedFormat:v48 validFormatSpecifiers:@"%@" error:0, v41];
    }

    else
    {
      v49 = 0;
    }

    v67 = v41;

    v68 = v45;
    v85 = v46;
    v62 = v49;
    v50 = [[RequestLocalizations alloc] initWithApprove:v45 body:v82 decline:v46 title:v49];
    v63 = v9;
    v61 = v35;
    if (v82 && v43)
    {
      v60 = v9;
      v51 = v78;
      v53 = v65;
      v52 = v66;
      v59 = v35;
      v55 = v69;
      v54 = v70;
      LOBYTE(v58) = 0;
      v64 = [[Request alloc] initWithDate:v42 requestIdentifier:v66 uniqueIdentifier:@"N/A" itemBundleIdentifier:v70 itemIdentifier:v43 localizations:v50 mocked:v58 offerName:v69 previewURL:v65 productType:v59 productTypeName:v44 productURL:v78 requestInfo:v60 status:-1, v61];
      v10 = 0;
    }

    else
    {
      v10 = APError();
      v64 = 0;
      v55 = v69;
      v54 = v70;
      v53 = v65;
      v52 = v66;
      v51 = v78;
    }

    v7 = v73;
    a4 = v74;
    v11 = v64;
    if (!v74)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v10 = APError();
  v11 = 0;
  if (a4)
  {
LABEL_82:
    v56 = v10;
    *a4 = v10;
  }

LABEL_83:

  return v11;
}

- (void)_presentRequest:(id)a3
{
  v3 = a3;
  v4 = +[LocalNotificationHandler sharedHandler];
  [v4 presentNotificationWithRequest:v3 silently:0];
}

@end