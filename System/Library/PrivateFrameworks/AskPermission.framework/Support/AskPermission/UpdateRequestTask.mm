@interface UpdateRequestTask
- (UpdateRequestTask)initWithRequestIdentifier:(id)identifier action:(int64_t)action;
- (id)_parseResult:(id)result;
- (id)_serverRequestWithUser:(id)user error:(id *)error;
- (id)perform;
- (void)_enqueueMetricsWithKeychainError:(id)error usedBiometrics:(BOOL)biometrics request:(id)request error:(id)a6;
- (void)_storeBiometricsToken:(id)token;
@end

@implementation UpdateRequestTask

- (UpdateRequestTask)initWithRequestIdentifier:(id)identifier action:(int64_t)action
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = UpdateRequestTask;
  v8 = [(UpdateRequestTask *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestIdentifier, identifier);
    v9->_action = action;
  }

  return v9;
}

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100027434;
  v4[3] = &unk_100054C08;
  v4[4] = self;
  v2 = [(UpdateRequestTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

- (void)_enqueueMetricsWithKeychainError:(id)error usedBiometrics:(BOOL)biometrics request:(id)request error:(id)a6
{
  biometricsCopy = biometrics;
  errorCopy = error;
  requestCopy = request;
  v53 = a6;
  v11 = +[AMSBag sharedBag];
  v12 = [AMSMetrics internalInstanceUsingBag:v11];

  v51 = errorCopy;
  v52 = v12;
  if (!biometricsCopy && (!errorCopy || [errorCopy code] == 6))
  {
    v13 = 0;
LABEL_17:
    v23 = objc_alloc_init(APRemoteApprovalPasswordEntryMetricsEvent);
    [v23 setEventType:@"dialog"];
    v24 = [Localizations stringWithKey:@"AUTHENTICATION_PROMPT_BODY_REMOTE"];
    v25 = v24;
    v26 = &stru_100057158;
    if (v24)
    {
      v26 = v24;
    }

    v27 = v26;

    [v23 setProperty:v27 forBodyKey:@"message"];
    v28 = [v53 ams_recursiveHasDomain:AKAppleIDAuthenticationErrorDomain code:-7003];
    v29 = @"ok";
    if (v28)
    {
      v29 = @"cancel";
      v30 = @"Cancel";
    }

    else
    {
      v30 = @"Ok";
    }

    v31 = v13;
    v32 = v29;
    [v23 setProperty:v32 forBodyKey:@"actionType"];
    if ([(UpdateRequestTask *)self action])
    {
      v33 = @"ConfirmFamilySharingPurchase.PasswordAuth.Decline";
    }

    else
    {
      v33 = @"ConfirmFamilySharingPurchase.PasswordAuth.Approve";
    }

    [v23 setProperty:v33 forBodyKey:{@"dialogId", v51}];
    [v23 setProperty:v30 forBodyKey:@"targetId"];
    v60[0] = @"targetId";
    v60[1] = @"actionType";
    v61[0] = v30;
    v61[1] = v32;
    v60[2] = @"result";
    v34 = @"success";
    if (v53)
    {
      v34 = @"failure";
    }

    v61[2] = v34;
    v35 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:3];
    v62 = v35;
    v36 = [NSArray arrayWithObjects:&v62 count:1];

    [v23 setProperty:v36 forBodyKey:@"userActions"];
    v13 = v23;
    goto LABEL_28;
  }

  v14 = objc_alloc_init(APRemoteApprovalBiometricsMetricsEvent);
  [v14 setEventType:@"dialog"];
  if ([(UpdateRequestTask *)self action])
  {
    v15 = @"ConfirmFamilySharingPurchase.BioAuth.Decline";
  }

  else
  {
    v15 = @"ConfirmFamilySharingPurchase.BioAuth.Approve";
  }

  v16 = v14;
  [v14 setProperty:v15 forBodyKey:{@"dialogId", errorCopy}];
  v17 = objc_alloc_init(NSMutableArray);
  if (errorCopy)
  {
    v63[0] = @"result";
    v63[1] = @"actionType";
    v64[0] = @"failure";
    v64[1] = @"authenticate";
    v64[2] = @"Biometric";
    v63[2] = @"targetId";
    v63[3] = @"reason";
    ams_message = [errorCopy ams_message];
    v19 = ams_message;
    v20 = @"(null)";
    if (ams_message)
    {
      v20 = ams_message;
    }

    v64[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:4];
    [v17 addObject:v21];
  }

  if (biometricsCopy)
  {
    [v17 addObject:&off_1000580C8];
  }

  if ([v17 count])
  {
    v22 = [v17 copy];
    [v16 setProperty:v22 forBodyKey:@"userActions"];
  }

  v13 = v16;
  if (!biometricsCopy)
  {
    goto LABEL_17;
  }

LABEL_28:
  if (requestCopy)
  {
    v37 = +[ApproverStore sharedStore];
    uniqueIdentifier = [requestCopy uniqueIdentifier];
    v39 = [v37 approvalRequestWithRequestIdentifier:uniqueIdentifier];

    v40 = v51;
    if (v39)
    {
      if ([v39 lineOfBusiness] == 1)
      {
        v41 = +[ACAccountStore ams_sharedAccountStore];
        v42 = [v41 ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];

        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1000280CC;
        v55[3] = &unk_100054D20;
        v43 = v52;
        v56 = v52;
        v57 = v13;
        [v42 addFinishBlock:v55];

LABEL_47:
        goto LABEL_48;
      }

      v47 = +[APLogConfig sharedFrameworkConfig];
      if (!v47)
      {
        v47 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v47 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
LABEL_46:

        v43 = v52;
        [v52 enqueueEvent:v13];
        goto LABEL_47;
      }

      *buf = 138543362;
      v59 = objc_opt_class();
      v49 = v59;
      v50 = "%{public}@: LOB is not App Store. Enqueueing standard metrics.";
    }

    else
    {
      v47 = +[APLogConfig sharedFrameworkConfig];
      if (!v47)
      {
        v47 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v47 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      *buf = 138543362;
      v59 = objc_opt_class();
      v49 = v59;
      v50 = "%{public}@: Error - Unable to load stored Request object. Enqueueing standard metrics.";
    }

    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, v50, buf, 0xCu);

    goto LABEL_46;
  }

  v44 = +[APLogConfig sharedFrameworkConfig];
  v40 = v51;
  if (!v44)
  {
    v44 = +[APLogConfig sharedConfig];
  }

  oSLogObject2 = [v44 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v59 = objc_opt_class();
    v46 = v59;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Error - No request object supplied. Enqueueing standard metrics.", buf, 0xCu);
  }

  v43 = v52;
  [v52 enqueueEvent:v13];
LABEL_48:
}

- (id)_serverRequestWithUser:(id)user error:(id *)error
{
  userCopy = user;
  v7 = +[AMSBag sharedBag];
  updateRequestURL = [v7 updateRequestURL];

  v38[0] = @"requestId";
  requestIdentifier = [(UpdateRequestTask *)self requestIdentifier];
  v38[1] = @"approvalStatus";
  v39[0] = requestIdentifier;
  action = [(UpdateRequestTask *)self action];
  v11 = &off_100058058;
  if (!action)
  {
    v11 = &off_100058040;
  }

  v39[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

  v13 = objc_alloc_init(URLRequestEncoder);
  v14 = [(URLRequestEncoder *)v13 requestWithMethod:4 bagURL:updateRequestURL parameters:v12];
  v35 = 0;
  v15 = [v14 resultWithTimeout:&v35 error:60.0];
  v16 = v35;
  if (v15)
  {
    v33 = updateRequestURL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v15;
      biometricsToken = [userCopy biometricsToken];
      [v17 ap_setNullableValue:biometricsToken forHTTPHeaderField:@"X-IC-TouchToken"];

      dSID = [userCopy DSID];
      [v17 ap_setNullableValue:dSID forHTTPHeaderField:@"X-IC-DSID"];

      password = [userCopy password];
      [v17 ap_setNullableValue:password forHTTPHeaderField:@"X-IC-Password"];

      username = [userCopy username];
      [v17 ap_setNullableValue:username forHTTPHeaderField:@"X-IC-Username"];

      v22 = +[APLogConfig sharedDaemonConfig];
      if (!v22)
      {
        v22 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v22 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        *buf = 138543362;
        v37 = v24;
        v25 = v24;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Encoded request successfully", buf, 0xCu);
      }

      v26 = +[URLSession sharedSession];
      v27 = [v26 dataTaskPromiseWithRequest:v17];

      v34 = v16;
      v28 = [v27 resultWithTimeout:&v34 error:60.0];
      v29 = v34;

      error = v32;
    }

    else
    {
      v29 = APError();
      v28 = 0;
      v17 = v16;
    }

    v16 = v29;
    updateRequestURL = v33;
    if (error)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v28 = 0;
    if (error)
    {
LABEL_14:
      v30 = v16;
      *error = v16;
    }
  }

  return v28;
}

- (id)_parseResult:(id)result
{
  object = [result object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v19 = APError();
    goto LABEL_43;
  }

  v6 = [v5 objectForKeyedSubscript:@"status"];
  if (objc_opt_respondsToSelector())
  {
    integerValue = [v6 integerValue];
    v8 = +[APLogConfig sharedDaemonConfig];
    v9 = v8;
    if (!integerValue)
    {
      if (!v8)
      {
        v9 = +[APLogConfig sharedConfig];
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = objc_opt_class();
        v21 = v29;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Success status code", buf, 0xCu);
      }

      v22 = [v5 objectForKeyedSubscript:@"touchToken"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      [(UpdateRequestTask *)self _storeBiometricsToken:v23];
      v19 = 0;
      goto LABEL_42;
    }

    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = objc_opt_class();
      v30 = 2050;
      v31 = integerValue;
      v11 = v29;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Error status code. Status code: %{public}ld", buf, 0x16u);
    }

    v12 = [v5 objectForKeyedSubscript:@"errorNumber"];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v19 = APError();
LABEL_41:

      goto LABEL_42;
    }

    integerValue2 = [v12 integerValue];
    if (integerValue2 == 3711)
    {
      v14 = +[APLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v14 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v25 = objc_opt_class();
      *buf = 138543362;
      v29 = v25;
      v17 = v25;
      v18 = "%{public}@: Previously declined error code";
    }

    else if (integerValue2 == 3710)
    {
      v14 = +[APLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v14 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v24 = objc_opt_class();
      *buf = 138543362;
      v29 = v24;
      v17 = v24;
      v18 = "%{public}@: Previously approved error code";
    }

    else
    {
      if (integerValue2 != 3709)
      {
        v26 = [NSString stringWithFormat:@"Server response contains error. Error code: %ld", integerValue2];
        v19 = APError();

        goto LABEL_41;
      }

      v14 = +[APLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v14 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v16 = objc_opt_class();
      *buf = 138543362;
      v29 = v16;
      v17 = v16;
      v18 = "%{public}@: Request expired error code";
    }

    _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);

LABEL_39:
    v19 = 0;
    goto LABEL_41;
  }

  v19 = APError();
LABEL_42:

LABEL_43:

  return v19;
}

- (void)_storeBiometricsToken:(id)token
{
  tokenCopy = token;
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (tokenCopy)
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Biometrics token available", &v10, 0xCu);
    }

    [BiometricsHandler storeToken:tokenCopy];
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v9 = v11;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Biometrics token not available", &v10, 0xCu);
    }
  }
}

@end