@interface AMSDFraudReportServiceTask
+ (id)determineAccountForAccount:(id)a3;
+ (id)grandSlamTokenIdentifierForAuthenticationTokenType:(unint64_t)a3;
+ (id)performSilentAuthAndFetchTokenForAccount:(id)a3 tokenIdentifier:(id)a4;
+ (id)requestBodyParametersForRequest:(id)a3 odiAssessmentProvider:(id)a4;
- (AMSDFraudReportServiceTask)initWithAccount:(id)a3 bag:(id)a4;
- (AMSDFraudReportServiceTask)initWithAccount:(id)a3 bag:(id)a4 initialAuthTokenProvider:(id)a5 authTokenRefreshProvider:(id)a6 odiAssessmentProvider:(id)a7 deviceIdentitySigningProvider:(id)a8;
- (id)appendTokenIfNeededToRequest:(id)a3 forAccount:(id)a4 tokenIdentifier:(id)a5;
- (id)fetchTokenForAccount:(id)a3 tokenIdentifier:(id)a4;
- (id)handleExpiredAuthenticationTokenErrorWithResult:(id)a3 error:(id)a4 forRequest:(id)a5 account:(id)a6 tokenIdentifier:(id)a7;
- (id)performReceiveFraudReportForServiceRequest:(id)a3;
- (id)requestEncoderWithAccount:(id)a3;
@end

@implementation AMSDFraudReportServiceTask

- (AMSDFraudReportServiceTask)initWithAccount:(id)a3 bag:(id)a4 initialAuthTokenProvider:(id)a5 authTokenRefreshProvider:(id)a6 odiAssessmentProvider:(id)a7 deviceIdentitySigningProvider:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (!v16 || !v17 || !v18 || !v19 || (v21 = v20) == 0)
  {
    v33 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"bag userInfo:authenticationTokenRefreshProvider, odiAssessmentProvider and deviceIdentitySigningProvider must all be non-nil", 0];
    objc_exception_throw(v33);
  }

  v34.receiver = self;
  v34.super_class = AMSDFraudReportServiceTask;
  v22 = [(AMSDFraudReportServiceTask *)&v34 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_account, a3);
    objc_storeStrong(&v23->_bag, a4);
    v24 = objc_retainBlock(v17);
    initialAuthTokenProvider = v23->_initialAuthTokenProvider;
    v23->_initialAuthTokenProvider = v24;

    v26 = objc_retainBlock(v18);
    authTokenRefreshProvider = v23->_authTokenRefreshProvider;
    v23->_authTokenRefreshProvider = v26;

    v28 = objc_retainBlock(v19);
    odiAssessmentProvider = v23->_odiAssessmentProvider;
    v23->_odiAssessmentProvider = v28;

    v30 = objc_retainBlock(v21);
    deviceIdentitySigningProvider = v23->_deviceIdentitySigningProvider;
    v23->_deviceIdentitySigningProvider = v30;
  }

  return v23;
}

- (AMSDFraudReportServiceTask)initWithAccount:(id)a3 bag:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005BA6C;
  v10[3] = &unk_1002B0918;
  objc_copyWeak(&v11, &location);
  v8 = [(AMSDFraudReportServiceTask *)self initWithAccount:v6 bag:v7 initialAuthTokenProvider:&stru_1002B0890 authTokenRefreshProvider:&stru_1002B08B0 odiAssessmentProvider:&stru_1002B08F0 deviceIdentitySigningProvider:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v8;
}

- (id)performReceiveFraudReportForServiceRequest:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005BBF4;
  v6[3] = &unk_1002B0A58;
  v7 = self;
  v8 = a3;
  v3 = v8;
  v4 = [(AMSDFraudReportServiceTask *)v7 performTaskWithPromiseBlock:v6];

  return v4;
}

- (id)handleExpiredAuthenticationTokenErrorWithResult:(id)a3 error:(id)a4 forRequest:(id)a5 account:(id)a6 tokenIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v17 = [v12 response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v23 = [v18 statusCode];
    if (v23 == 401)
    {
      goto LABEL_9;
    }

    v22 = [AMSPromise promiseWithResult:v12];
LABEL_15:
    v30 = v22;
    goto LABEL_16;
  }

  if (!AMSErrorIsEqual() || ([v13 userInfo], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", AMSErrorUserInfoKeyStatusCode), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqual:", &off_1002C66F0), v20, v19, (v21 & 1) == 0))
  {
    v22 = [AMSPromise promiseWithError:v13];
    goto LABEL_15;
  }

LABEL_9:
  v24 = AMSSetLogKeyIfNeeded();
  v25 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  v26 = [v25 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = objc_opt_class();
    v38 = 2114;
    v39 = v24;
    v27 = v37;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fraud report request failed, server reports authentication token as expired. Attempting silent auth.", buf, 0x16u);
  }

  v28 = (*(self->_authTokenRefreshProvider + 2))();
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10005CE54;
  v32[3] = &unk_1002B0A80;
  v32[4] = self;
  v33 = v24;
  v34 = v13;
  v35 = v14;
  v29 = v24;
  v30 = [v28 continueWithBlock:v32];

LABEL_16:

  return v30;
}

+ (id)determineAccountForAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = AMSAccountMediaTypeProduction;
    v6 = +[ACAccountStore ams_sharedAccountStore];
    v7 = [v6 ams_iTunesAccountForAccount:v4 forMediaType:v5 createIfNeeded:1];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005D1F8;
    v11[3] = &unk_1002B0AA8;
    v13 = a1;
    v12 = v4;
    v8 = [v7 continueWithBlock:v11];
  }

  else
  {
    v9 = +[ACAccountStore ams_sharedAccountStore];
    v8 = [v9 ams_fetchLocaliTunesAccount];
  }

  return v8;
}

+ (id)grandSlamTokenIdentifierForAuthenticationTokenType:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"com.apple.gs.tdmv2.auth";
  }

  if (a3)
  {
    v5 = +[AMSUnitTests isRunningUnitTests];
    v6 = +[AMSLogConfig sharedFraudReportConfig];
    v7 = v6;
    if (v5)
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = AMSSetLogKeyIfNeeded();
        v13 = 138543874;
        v14 = a1;
        v15 = 2114;
        v16 = v9;
        v17 = 2050;
        v18 = a3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown authentication token type (%{public}lu) passed, using non-JWT token identifier", &v13, 0x20u);
      }

      v7 = +[NSNotificationCenter defaultCenter];
      v10 = +[AMSLogConfig sharedFraudReportConfig];
      [v7 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v10 userInfo:0];
    }

    else
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v7 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v12 = AMSSetLogKeyIfNeeded();
        v13 = 138543874;
        v14 = a1;
        v15 = 2114;
        v16 = v12;
        v17 = 2050;
        v18 = a3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Unknown authentication token type (%{public}lu) passed, using non-JWT token identifier", &v13, 0x20u);
      }
    }
  }

  return @"com.apple.gs.tdm.auth";
}

- (id)appendTokenIfNeededToRequest:(id)a3 forAccount:(id)a4 tokenIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AMSSetLogKeyIfNeeded();
  if (v9 && ![v9 ams_isLocalAccount])
  {
    v16 = [(AMSDFraudReportServiceTask *)self fetchTokenForAccount:v9 tokenIdentifier:v10];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005D7F0;
    v18[3] = &unk_1002B0AD0;
    v19 = v8;
    v20 = v10;
    v15 = [v16 continueWithBlock:v18];
  }

  else
  {
    v12 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to look up token for no or local account", buf, 0x16u);
    }

    v15 = [AMSPromise promiseWithResult:v8];
  }

  return v15;
}

- (id)fetchTokenForAccount:(id)a3 tokenIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AMSSetLogKeyIfNeeded();
  v9 = (*(self->_initialAuthTokenProvider + 2))();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005D98C;
  v15[3] = &unk_1002B0A80;
  v15[4] = self;
  v16 = v8;
  v17 = v7;
  v18 = v6;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = [v9 continueWithBlock:v15];

  return v13;
}

+ (id)performSilentAuthAndFetchTokenForAccount:(id)a3 tokenIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AMSSetLogKeyIfNeeded();
  v9 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v24 = a1;
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Token with identifier '%{public}@' not found. Attempting to perform silent auth.", buf, 0x20u);
  }

  v11 = objc_alloc_init(AMSAuthenticateOptions);
  [v11 setDebugReason:@"fraud score report"];
  [v11 setAuthenticationType:1];
  [v11 setCanMakeAccountActive:0];
  [v11 setServiceIdentifier:v7];
  v12 = [[AMSAuthenticateTask alloc] initWithAccount:v6 options:v11];
  v13 = [v12 performAuthentication];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005DD2C;
  v19[3] = &unk_1002B0B48;
  v20 = v6;
  v21 = v7;
  v22 = v11;
  v14 = v11;
  v15 = v7;
  v16 = v6;
  v17 = [v13 continueWithBlock:v19];

  return v17;
}

- (id)requestEncoderWithAccount:(id)a3
{
  v4 = a3;
  v5 = [AMSURLRequestEncoder alloc];
  v6 = [(AMSDFraudReportServiceTask *)self bag];
  v7 = [v5 initWithBag:v6];

  [v7 setDialogOptions:1];
  [v7 setRequestEncoding:3];
  [v7 setUrlKnownToBeTrusted:1];
  v8 = AMSLogKey();
  [v7 setLogUUID:v8];

  [v7 setAccount:v4];

  return v7;
}

+ (id)requestBodyParametersForRequest:(id)a3 odiAssessmentProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = AMSSetLogKeyIfNeeded();
  v31[0] = @"namespace";
  v9 = [v7 nameSpace];
  v32[0] = v9;
  v31[1] = @"t1";
  v10 = [v7 blindedMessage];
  v32[1] = v10;
  v31[2] = @"rs";
  v11 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v7 reportedScore]);
  v32[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
  v13 = [v12 mutableCopy];

  v14 = [v7 keyID];

  [v13 setObject:v14 forKeyedSubscript:@"kid"];
  if (v6)
  {
    v15 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = a1;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Requesting ODI assessment.", buf, 0x16u);
    }

    v17 = objc_opt_new();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10005E448;
    v22[3] = &unk_1002B0B70;
    v26 = a1;
    v23 = v8;
    v24 = v13;
    v18 = v17;
    v25 = v18;
    [v6 assessmentWithCompletion:v22];
    v19 = v25;
    v20 = v18;
  }

  else
  {
    v20 = [AMSPromise promiseWithResult:v13];
  }

  return v20;
}

@end