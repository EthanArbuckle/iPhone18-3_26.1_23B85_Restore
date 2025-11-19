@interface RestoreInAppTransactionsTask
- (BOOL)_isAccountError:(id)a3;
- (RestoreInAppTransactionsTask)initWithClient:(id)a3;
- (void)_authenticateAndRunRequestWithCompletionHandler:(id)a3;
- (void)_processResult:(id)a3 error:(id)a4;
- (void)_runRequestWithAccount:(id)a3 completionHandler:(id)a4;
- (void)main;
@end

@implementation RestoreInAppTransactionsTask

- (RestoreInAppTransactionsTask)initWithClient:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RestoreInAppTransactionsTask;
  v6 = [(Task *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 50), a3);
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
    v5 = [(RestoreInAppTransactionsTask *)self logKey];
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Restoring completed purchases", buf, 0xCu);
  }

  v6 = [(RestoreInAppTransactionsTask *)self client];
  v7 = [v6 objc_clientType];

  if (v7 == 3)
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
    v8 = [(RestoreInAppTransactionsTask *)self client];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004C5C0;
    v9[3] = &unk_10037F890;
    v9[4] = self;
    [_TtC9storekitd19objc_AccountManager accountWithClient:v8 completionHandler:v9];
  }
}

- (BOOL)_isAccountError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if (![v4 isEqualToString:AMSErrorDomain])
  {

LABEL_6:
    LOBYTE(v9) = 0;
    goto LABEL_7;
  }

  v5 = [v3 code];

  if (v5 != 305)
  {
    goto LABEL_6;
  }

  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:AMSErrorUserInfoKeyServerErrorCode];
  v8 = [v7 integerValue];

  if ((v8 - 2002) >= 0x36)
  {
    goto LABEL_6;
  }

  v9 = 0x20000100000001uLL >> (v8 + 46);
LABEL_7:

  return v9 & 1;
}

- (void)_processResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
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

    [(AsyncTask *)self completeWithError:v7];
  }

  else
  {
    v9 = [v6 object];
    if (v9)
    {
      v10 = [(RestoreInAppTransactionsTask *)self client];
      v11 = [(RestoreInAppTransactionsTask *)self receiptInstallURL];
      v12 = [(RestoreInAppTransactionsTask *)self logKey];
      v13 = sub_100027E30(v9, v10, v11, 1, v12, 0, 0);
      v14 = *(&self->_receiptInstallURL + 2);
      *(&self->_receiptInstallURL + 2) = v13;
    }

    [(AsyncTask *)self completeWithSuccess];
  }
}

- (void)_runRequestWithAccount:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RestoreInAppTransactionsTask *)self client];
  v9 = [v8 bag];

  v10 = [(RestoreInAppTransactionsTask *)self client];
  v11 = [v10 urlSession];

  v12 = [[AMSURLRequestEncoder alloc] initWithBag:v9];
  [v12 setAccount:v7];

  v13 = [(RestoreInAppTransactionsTask *)self client];
  v14 = [v13 processInfo];
  [v12 setClientInfo:v14];

  v15 = [(RestoreInAppTransactionsTask *)self logKey];
  [v12 setLogUUID:v15];

  v16 = [(RestoreInAppTransactionsTask *)self client];
  v17 = [(RestoreInAppTransactionsTask *)self receiptInstallURL];
  v18 = [v16 queryWith:1 customReceiptURL:v17];
  v19 = [v18 mutableCopy];

  v20 = [(RestoreInAppTransactionsTask *)self applicationUsername];
  [v19 setObject:v20 forKeyedSubscript:@"applicationUsername"];

  v21 = +[_TtC9storekitd6BagKey restoreTransactionsURL];
  v22 = [v9 URLForKey:v21];
  v23 = [v12 requestWithMethod:4 bagURL:v22 parameters:v19];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10004CBDC;
  v26[3] = &unk_100382050;
  v28 = self;
  v29 = v6;
  v27 = v11;
  v24 = v11;
  v25 = v6;
  [v23 resultWithCompletion:v26];
}

- (void)_authenticateAndRunRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RestoreInAppTransactionsTask *)self dialogContext];

  if (v5)
  {
    if (qword_1003D4330 != -1)
    {
      sub_1002CDA8C();
    }

    v6 = qword_1003D4300;
    if (os_log_type_enabled(qword_1003D4300, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(RestoreInAppTransactionsTask *)self logKey];
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending authentication request", buf, 0xCu);
    }

    v9 = [(RestoreInAppTransactionsTask *)self client];
    v10 = [(RestoreInAppTransactionsTask *)self dialogContext];
    v11 = [(RestoreInAppTransactionsTask *)self logKey];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10004CFD0;
    v16[3] = &unk_100380E38;
    v16[4] = self;
    v17 = v4;
    [_TtC9storekitd19objc_AccountManager authenticateWithClient:v9 reason:@"Restore In App" dialogContext:v10 logKey:v11 completionHandler:v16];
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
      v14 = [(RestoreInAppTransactionsTask *)self logKey];
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] No client available to handle authentication request", buf, 0xCu);
    }

    v15 = ASDErrorWithDescription();
    (*(v4 + 2))(v4, 0, v15);
  }
}

@end