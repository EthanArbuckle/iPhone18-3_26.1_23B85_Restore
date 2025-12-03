@interface RestoreInAppTransactionsTask
- (BOOL)_isAccountError:(id)error;
- (RestoreInAppTransactionsTask)initWithClient:(id)client;
- (void)_authenticateAndRunRequestWithCompletionHandler:(id)handler;
- (void)_processResult:(id)result error:(id)error;
- (void)_runRequestWithAccount:(id)account completionHandler:(id)handler;
- (void)main;
@end

@implementation RestoreInAppTransactionsTask

- (RestoreInAppTransactionsTask)initWithClient:(id)client
{
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = RestoreInAppTransactionsTask;
  v6 = [(Task *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 50), client);
    v8 = +[NSUUID lib_shortLogKey];
    v9 = *(v7 + 74);
    *(v7 + 74) = v8;
  }

  return v7;
}

- (void)main
{
  if (qword_1003D4330 != -1)
  {
    sub_1002CDA8C();
  }

  v3 = qword_1003D4300;
  if (os_log_type_enabled(qword_1003D4300, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    logKey = [(RestoreInAppTransactionsTask *)self logKey];
    *buf = 138543362;
    v12 = logKey;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Restoring completed purchases", buf, 0xCu);
  }

  client = [(RestoreInAppTransactionsTask *)self client];
  objc_clientType = [client objc_clientType];

  if (objc_clientType == 3)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004C5B0;
    v10[3] = &unk_100382000;
    v10[4] = self;
    [(RestoreInAppTransactionsTask *)self _runRequestWithAccount:0 completionHandler:v10];
  }

  else
  {
    client2 = [(RestoreInAppTransactionsTask *)self client];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004C5C0;
    v9[3] = &unk_10037F890;
    v9[4] = self;
    [_TtC9storekitd19objc_AccountManager accountWithClient:client2 completionHandler:v9];
  }
}

- (BOOL)_isAccountError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:AMSErrorDomain])
  {

LABEL_6:
    LOBYTE(v9) = 0;
    goto LABEL_7;
  }

  code = [errorCopy code];

  if (code != 305)
  {
    goto LABEL_6;
  }

  userInfo = [errorCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:AMSErrorUserInfoKeyServerErrorCode];
  integerValue = [v7 integerValue];

  if ((integerValue - 2002) >= 0x36)
  {
    goto LABEL_6;
  }

  v9 = 0x20000100000001uLL >> (integerValue + 46);
LABEL_7:

  return v9 & 1;
}

- (void)_processResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (errorCopy)
  {
    if (qword_1003D4330 != -1)
    {
      sub_1002CDA8C();
    }

    v8 = qword_1003D4300;
    if (os_log_type_enabled(qword_1003D4300, OS_LOG_TYPE_ERROR))
    {
      sub_1002CDAA0(v8, self);
    }

    [(AsyncTask *)self completeWithError:errorCopy];
  }

  else
  {
    object = [resultCopy object];
    if (object)
    {
      client = [(RestoreInAppTransactionsTask *)self client];
      receiptInstallURL = [(RestoreInAppTransactionsTask *)self receiptInstallURL];
      logKey = [(RestoreInAppTransactionsTask *)self logKey];
      v13 = sub_100027E30(object, client, receiptInstallURL, 1, logKey, 0, 0);
      v14 = *(&self->_receiptInstallURL + 2);
      *(&self->_receiptInstallURL + 2) = v13;
    }

    [(AsyncTask *)self completeWithSuccess];
  }
}

- (void)_runRequestWithAccount:(id)account completionHandler:(id)handler
{
  handlerCopy = handler;
  accountCopy = account;
  client = [(RestoreInAppTransactionsTask *)self client];
  v9 = [client bag];

  client2 = [(RestoreInAppTransactionsTask *)self client];
  urlSession = [client2 urlSession];

  v12 = [[AMSURLRequestEncoder alloc] initWithBag:v9];
  [v12 setAccount:accountCopy];

  client3 = [(RestoreInAppTransactionsTask *)self client];
  processInfo = [client3 processInfo];
  [v12 setClientInfo:processInfo];

  logKey = [(RestoreInAppTransactionsTask *)self logKey];
  [v12 setLogUUID:logKey];

  client4 = [(RestoreInAppTransactionsTask *)self client];
  receiptInstallURL = [(RestoreInAppTransactionsTask *)self receiptInstallURL];
  v18 = [client4 queryWith:1 customReceiptURL:receiptInstallURL];
  v19 = [v18 mutableCopy];

  applicationUsername = [(RestoreInAppTransactionsTask *)self applicationUsername];
  [v19 setObject:applicationUsername forKeyedSubscript:@"applicationUsername"];

  v21 = +[_TtC9storekitd6BagKey restoreTransactionsURL];
  v22 = [v9 URLForKey:v21];
  v23 = [v12 requestWithMethod:4 bagURL:v22 parameters:v19];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10004CBDC;
  v26[3] = &unk_100382050;
  selfCopy = self;
  v29 = handlerCopy;
  v27 = urlSession;
  v24 = urlSession;
  v25 = handlerCopy;
  [v23 resultWithCompletion:v26];
}

- (void)_authenticateAndRunRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dialogContext = [(RestoreInAppTransactionsTask *)self dialogContext];

  if (dialogContext)
  {
    if (qword_1003D4330 != -1)
    {
      sub_1002CDA8C();
    }

    v6 = qword_1003D4300;
    if (os_log_type_enabled(qword_1003D4300, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      logKey = [(RestoreInAppTransactionsTask *)self logKey];
      *buf = 138543362;
      v19 = logKey;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending authentication request", buf, 0xCu);
    }

    client = [(RestoreInAppTransactionsTask *)self client];
    dialogContext2 = [(RestoreInAppTransactionsTask *)self dialogContext];
    logKey2 = [(RestoreInAppTransactionsTask *)self logKey];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10004CFD0;
    v16[3] = &unk_100380E38;
    v16[4] = self;
    v17 = handlerCopy;
    [_TtC9storekitd19objc_AccountManager authenticateWithClient:client reason:@"Restore In App" dialogContext:dialogContext2 logKey:logKey2 completionHandler:v16];
  }

  else
  {
    if (qword_1003D4330 != -1)
    {
      sub_1002CDA8C();
    }

    v12 = qword_1003D4300;
    if (os_log_type_enabled(qword_1003D4300, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      logKey3 = [(RestoreInAppTransactionsTask *)self logKey];
      *buf = 138543362;
      v19 = logKey3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] No client available to handle authentication request", buf, 0xCu);
    }

    v15 = ASDErrorWithDescription();
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

@end