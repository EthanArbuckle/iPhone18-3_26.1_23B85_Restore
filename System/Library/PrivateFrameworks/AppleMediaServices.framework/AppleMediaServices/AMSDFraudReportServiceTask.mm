@interface AMSDFraudReportServiceTask
+ (id)determineAccountForAccount:(id)account;
+ (id)grandSlamTokenIdentifierForAuthenticationTokenType:(unint64_t)type;
+ (id)performSilentAuthAndFetchTokenForAccount:(id)account tokenIdentifier:(id)identifier;
+ (id)requestBodyParametersForRequest:(id)request odiAssessmentProvider:(id)provider;
- (AMSDFraudReportServiceTask)initWithAccount:(id)account bag:(id)bag;
- (AMSDFraudReportServiceTask)initWithAccount:(id)account bag:(id)bag initialAuthTokenProvider:(id)provider authTokenRefreshProvider:(id)refreshProvider odiAssessmentProvider:(id)assessmentProvider deviceIdentitySigningProvider:(id)signingProvider;
- (id)appendTokenIfNeededToRequest:(id)request forAccount:(id)account tokenIdentifier:(id)identifier;
- (id)fetchTokenForAccount:(id)account tokenIdentifier:(id)identifier;
- (id)handleExpiredAuthenticationTokenErrorWithResult:(id)result error:(id)error forRequest:(id)request account:(id)account tokenIdentifier:(id)identifier;
- (id)performReceiveFraudReportForServiceRequest:(id)request;
- (id)requestEncoderWithAccount:(id)account;
@end

@implementation AMSDFraudReportServiceTask

- (AMSDFraudReportServiceTask)initWithAccount:(id)account bag:(id)bag initialAuthTokenProvider:(id)provider authTokenRefreshProvider:(id)refreshProvider odiAssessmentProvider:(id)assessmentProvider deviceIdentitySigningProvider:(id)signingProvider
{
  accountCopy = account;
  bagCopy = bag;
  providerCopy = provider;
  refreshProviderCopy = refreshProvider;
  assessmentProviderCopy = assessmentProvider;
  signingProviderCopy = signingProvider;
  if (!bagCopy || !providerCopy || !refreshProviderCopy || !assessmentProviderCopy || (v21 = signingProviderCopy) == 0)
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
    objc_storeStrong(&v22->_account, account);
    objc_storeStrong(&v23->_bag, bag);
    v24 = objc_retainBlock(providerCopy);
    initialAuthTokenProvider = v23->_initialAuthTokenProvider;
    v23->_initialAuthTokenProvider = v24;

    v26 = objc_retainBlock(refreshProviderCopy);
    authTokenRefreshProvider = v23->_authTokenRefreshProvider;
    v23->_authTokenRefreshProvider = v26;

    v28 = objc_retainBlock(assessmentProviderCopy);
    odiAssessmentProvider = v23->_odiAssessmentProvider;
    v23->_odiAssessmentProvider = v28;

    v30 = objc_retainBlock(v21);
    deviceIdentitySigningProvider = v23->_deviceIdentitySigningProvider;
    v23->_deviceIdentitySigningProvider = v30;
  }

  return v23;
}

- (AMSDFraudReportServiceTask)initWithAccount:(id)account bag:(id)bag
{
  accountCopy = account;
  bagCopy = bag;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005BA6C;
  v10[3] = &unk_1002B0918;
  objc_copyWeak(&v11, &location);
  v8 = [(AMSDFraudReportServiceTask *)self initWithAccount:accountCopy bag:bagCopy initialAuthTokenProvider:&stru_1002B0890 authTokenRefreshProvider:&stru_1002B08B0 odiAssessmentProvider:&stru_1002B08F0 deviceIdentitySigningProvider:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v8;
}

- (id)performReceiveFraudReportForServiceRequest:(id)request
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005BBF4;
  v6[3] = &unk_1002B0A58;
  selfCopy = self;
  requestCopy = request;
  v3 = requestCopy;
  v4 = [(AMSDFraudReportServiceTask *)selfCopy performTaskWithPromiseBlock:v6];

  return v4;
}

- (id)handleExpiredAuthenticationTokenErrorWithResult:(id)result error:(id)error forRequest:(id)request account:(id)account tokenIdentifier:(id)identifier
{
  resultCopy = result;
  errorCopy = error;
  requestCopy = request;
  accountCopy = account;
  identifierCopy = identifier;
  if (resultCopy)
  {
    response = [resultCopy response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = response;
    }

    else
    {
      v18 = 0;
    }

    statusCode = [v18 statusCode];
    if (statusCode == 401)
    {
      goto LABEL_9;
    }

    v22 = [AMSPromise promiseWithResult:resultCopy];
LABEL_15:
    v30 = v22;
    goto LABEL_16;
  }

  if (!AMSErrorIsEqual() || ([errorCopy userInfo], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", AMSErrorUserInfoKeyStatusCode), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqual:", &off_1002C66F0), v20, v19, (v21 & 1) == 0))
  {
    v22 = [AMSPromise promiseWithError:errorCopy];
    goto LABEL_15;
  }

LABEL_9:
  v24 = AMSSetLogKeyIfNeeded();
  v25 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = objc_opt_class();
    v38 = 2114;
    v39 = v24;
    v27 = v37;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fraud report request failed, server reports authentication token as expired. Attempting silent auth.", buf, 0x16u);
  }

  v28 = (*(self->_authTokenRefreshProvider + 2))();
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10005CE54;
  v32[3] = &unk_1002B0A80;
  v32[4] = self;
  v33 = v24;
  v34 = errorCopy;
  v35 = requestCopy;
  v29 = v24;
  v30 = [v28 continueWithBlock:v32];

LABEL_16:

  return v30;
}

+ (id)determineAccountForAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v5 = AMSAccountMediaTypeProduction;
    v6 = +[ACAccountStore ams_sharedAccountStore];
    v7 = [v6 ams_iTunesAccountForAccount:accountCopy forMediaType:v5 createIfNeeded:1];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005D1F8;
    v11[3] = &unk_1002B0AA8;
    selfCopy = self;
    v12 = accountCopy;
    ams_fetchLocaliTunesAccount = [v7 continueWithBlock:v11];
  }

  else
  {
    v9 = +[ACAccountStore ams_sharedAccountStore];
    ams_fetchLocaliTunesAccount = [v9 ams_fetchLocaliTunesAccount];
  }

  return ams_fetchLocaliTunesAccount;
}

+ (id)grandSlamTokenIdentifierForAuthenticationTokenType:(unint64_t)type
{
  if (type == 1)
  {
    return @"com.apple.gs.tdmv2.auth";
  }

  if (type)
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

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v9 = AMSSetLogKeyIfNeeded();
        v13 = 138543874;
        selfCopy2 = self;
        v15 = 2114;
        v16 = v9;
        v17 = 2050;
        typeCopy2 = type;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown authentication token type (%{public}lu) passed, using non-JWT token identifier", &v13, 0x20u);
      }

      v7 = +[NSNotificationCenter defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedFraudReportConfig];
      [v7 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v12 = AMSSetLogKeyIfNeeded();
        v13 = 138543874;
        selfCopy2 = self;
        v15 = 2114;
        v16 = v12;
        v17 = 2050;
        typeCopy2 = type;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Unknown authentication token type (%{public}lu) passed, using non-JWT token identifier", &v13, 0x20u);
      }
    }
  }

  return @"com.apple.gs.tdm.auth";
}

- (id)appendTokenIfNeededToRequest:(id)request forAccount:(id)account tokenIdentifier:(id)identifier
{
  requestCopy = request;
  accountCopy = account;
  identifierCopy = identifier;
  v11 = AMSSetLogKeyIfNeeded();
  if (accountCopy && ![accountCopy ams_isLocalAccount])
  {
    v16 = [(AMSDFraudReportServiceTask *)self fetchTokenForAccount:accountCopy tokenIdentifier:identifierCopy];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005D7F0;
    v18[3] = &unk_1002B0AD0;
    v19 = requestCopy;
    v20 = identifierCopy;
    v15 = [v16 continueWithBlock:v18];
  }

  else
  {
    v12 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      selfCopy = self;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to look up token for no or local account", buf, 0x16u);
    }

    v15 = [AMSPromise promiseWithResult:requestCopy];
  }

  return v15;
}

- (id)fetchTokenForAccount:(id)account tokenIdentifier:(id)identifier
{
  accountCopy = account;
  identifierCopy = identifier;
  v8 = AMSSetLogKeyIfNeeded();
  v9 = (*(self->_initialAuthTokenProvider + 2))();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005D98C;
  v15[3] = &unk_1002B0A80;
  v15[4] = self;
  v16 = v8;
  v17 = identifierCopy;
  v18 = accountCopy;
  v10 = accountCopy;
  v11 = identifierCopy;
  v12 = v8;
  v13 = [v9 continueWithBlock:v15];

  return v13;
}

+ (id)performSilentAuthAndFetchTokenForAccount:(id)account tokenIdentifier:(id)identifier
{
  accountCopy = account;
  identifierCopy = identifier;
  v8 = AMSSetLogKeyIfNeeded();
  v9 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = identifierCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Token with identifier '%{public}@' not found. Attempting to perform silent auth.", buf, 0x20u);
  }

  v11 = objc_alloc_init(AMSAuthenticateOptions);
  [v11 setDebugReason:@"fraud score report"];
  [v11 setAuthenticationType:1];
  [v11 setCanMakeAccountActive:0];
  [v11 setServiceIdentifier:identifierCopy];
  v12 = [[AMSAuthenticateTask alloc] initWithAccount:accountCopy options:v11];
  performAuthentication = [v12 performAuthentication];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005DD2C;
  v19[3] = &unk_1002B0B48;
  v20 = accountCopy;
  v21 = identifierCopy;
  v22 = v11;
  v14 = v11;
  v15 = identifierCopy;
  v16 = accountCopy;
  v17 = [performAuthentication continueWithBlock:v19];

  return v17;
}

- (id)requestEncoderWithAccount:(id)account
{
  accountCopy = account;
  v5 = [AMSURLRequestEncoder alloc];
  v6 = [(AMSDFraudReportServiceTask *)self bag];
  v7 = [v5 initWithBag:v6];

  [v7 setDialogOptions:1];
  [v7 setRequestEncoding:3];
  [v7 setUrlKnownToBeTrusted:1];
  v8 = AMSLogKey();
  [v7 setLogUUID:v8];

  [v7 setAccount:accountCopy];

  return v7;
}

+ (id)requestBodyParametersForRequest:(id)request odiAssessmentProvider:(id)provider
{
  providerCopy = provider;
  requestCopy = request;
  v8 = AMSSetLogKeyIfNeeded();
  v31[0] = @"namespace";
  nameSpace = [requestCopy nameSpace];
  v32[0] = nameSpace;
  v31[1] = @"t1";
  blindedMessage = [requestCopy blindedMessage];
  v32[1] = blindedMessage;
  v31[2] = @"rs";
  v11 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [requestCopy reportedScore]);
  v32[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
  v13 = [v12 mutableCopy];

  keyID = [requestCopy keyID];

  [v13 setObject:keyID forKeyedSubscript:@"kid"];
  if (providerCopy)
  {
    v15 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Requesting ODI assessment.", buf, 0x16u);
    }

    v17 = objc_opt_new();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10005E448;
    v22[3] = &unk_1002B0B70;
    selfCopy2 = self;
    v23 = v8;
    v24 = v13;
    v18 = v17;
    v25 = v18;
    [providerCopy assessmentWithCompletion:v22];
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