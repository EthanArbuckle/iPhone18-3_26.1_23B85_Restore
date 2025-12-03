@interface AMSDClientCertificateTask
- (AMSDClientCertificateTask)initWithAccount:(id)account options:(id)options;
- (id)_baaOptionsWithOptions:(id)options error:(id *)error;
- (id)performClientCertChainRequest;
@end

@implementation AMSDClientCertificateTask

- (AMSDClientCertificateTask)initWithAccount:(id)account options:(id)options
{
  accountCopy = account;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = AMSDClientCertificateTask;
  v9 = [(AMSDClientCertificateTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

- (id)performClientCertChainRequest
{
  if (DeviceIdentityIsSupported())
  {
    objc_initWeak(&location, self);
    v3 = [AMSMutableLazyPromise alloc];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100047254;
    v7[3] = &unk_1002B0160;
    objc_copyWeak(&v8, &location);
    v4 = [v3 initWithBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = AMSError();
    v4 = [AMSPromise promiseWithError:v5];
  }

  return v4;
}

- (id)_baaOptionsWithOptions:(id)options error:(id *)error
{
  v6 = AMSSetLogKeyIfNeeded();
  v7 = objc_alloc_init(NSMutableDictionary);
  options = [(AMSDClientCertificateTask *)self options];
  v21 = 0;
  v9 = [AMSKeychain createAccessControlRefWithOptions:options error:&v21];
  v10 = v21;

  if (v9)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = +[AMSLogConfig sharedAttestationConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543874;
      v24 = v13;
      v25 = 2114;
      v26 = v6;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Create Cert Chain: ACL creation failed with error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v14 = +[AMSLogConfig sharedAttestationConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      *buf = 138543618;
      v24 = v16;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Create Cert Chain: ACL creation failed", buf, 0x16u);
    }

    AMSError();
    v10 = v11 = v10;
  }

LABEL_14:
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:kMAOptionsBAAIgnoreExistingKeychainItems];
  [v7 setObject:v9 forKeyedSubscript:kMAOptionsBAAAccessControls];

  [v7 setObject:&off_1002C66C0 forKeyedSubscript:kMAOptionsBAANetworkTimeoutInterval];
  v22[0] = kMAOptionsBAAOIDAccessControls;
  v22[1] = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
  v17 = [NSArray arrayWithObjects:v22 count:2];
  [v7 setObject:v17 forKeyedSubscript:kMAOptionsBAAOIDSToInclude];

  if (error)
  {
    v18 = v10;
    *error = v10;
  }

  v19 = [v7 copy];

  return v19;
}

@end