@interface FinishInAppTransactionTask
- (FinishInAppTransactionTask)initWithTransactionID:(id)d client:(id)client;
- (void)_processError:(id)error;
- (void)main;
@end

@implementation FinishInAppTransactionTask

- (FinishInAppTransactionTask)initWithTransactionID:(id)d client:(id)client
{
  dCopy = d;
  clientCopy = client;
  v14.receiver = self;
  v14.super_class = FinishInAppTransactionTask;
  v9 = [(Task *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((v9 + 50), client);
    v11 = +[NSUUID lib_shortLogKey];
    v12 = *(v10 + 42);
    *(v10 + 42) = v11;

    objc_storeStrong((v10 + 58), d);
  }

  return v10;
}

- (void)main
{
  transactionID = [(FinishInAppTransactionTask *)self transactionID];
  v4 = [transactionID length];

  if (v4)
  {
    client = [(FinishInAppTransactionTask *)self client];
    v6 = [ReceiptManager managerForClient:client];

    transactionID2 = [(FinishInAppTransactionTask *)self transactionID];
    v8 = [v6 isTransactionFinishedForID:transactionID2];

    if (v8)
    {
      if (qword_1003D4648 != -1)
      {
        sub_1002D0344();
      }

      v9 = qword_1003D4618;
      if (os_log_type_enabled(qword_1003D4618, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(&self->super._finished + 1);
        v11 = v9;
        client2 = [(FinishInAppTransactionTask *)self client];
        requestBundleID = [client2 requestBundleID];
        *buf = 138543618;
        v44 = v10;
        v45 = 2114;
        v46 = requestBundleID;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Transaction is already finished for %{public}@", buf, 0x16u);
      }

      [(AsyncTask *)self completeWithSuccess];
    }

    else
    {
      if (qword_1003D4648 != -1)
      {
        sub_1002D0344();
      }

      v19 = qword_1003D4618;
      if (os_log_type_enabled(qword_1003D4618, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(&self->super._finished + 1);
        v21 = v19;
        transactionID3 = [(FinishInAppTransactionTask *)self transactionID];
        v23 = [transactionID3 hash];
        client3 = [(FinishInAppTransactionTask *)self client];
        requestBundleID2 = [client3 requestBundleID];
        *buf = 138543874;
        v44 = v20;
        v45 = 2048;
        v46 = v23;
        v47 = 2114;
        v48 = requestBundleID2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finishing transaction %lu for %{public}@", buf, 0x20u);
      }

      client4 = [(FinishInAppTransactionTask *)self client];
      v27 = [client4 bag];

      client5 = [(FinishInAppTransactionTask *)self client];
      urlSession = [client5 urlSession];

      client6 = [(FinishInAppTransactionTask *)self client];
      urlRequestEncoder = [client6 urlRequestEncoder];

      v41 = @"transactionId";
      transactionID4 = [(FinishInAppTransactionTask *)self transactionID];
      v42 = transactionID4;
      v33 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];

      v34 = +[_TtC9storekitd6BagKey finishTransactionURL];
      v35 = [v27 URLForKey:v34];
      v36 = [urlRequestEncoder requestWithMethod:2 bagURL:v35 parameters:v33];

      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000601E8;
      v38[3] = &unk_10037F8E0;
      v38[4] = self;
      v39 = urlSession;
      v40 = v6;
      v37 = urlSession;
      [v36 resultWithCompletion:v38];
    }
  }

  else
  {
    if (qword_1003D4648 != -1)
    {
      sub_1002D0344();
    }

    v14 = qword_1003D4618;
    if (os_log_type_enabled(qword_1003D4618, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(&self->super._finished + 1);
      v16 = v14;
      client7 = [(FinishInAppTransactionTask *)self client];
      requestBundleID3 = [client7 requestBundleID];
      *buf = 138543618;
      v44 = v15;
      v45 = 2114;
      v46 = requestBundleID3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finishing transaction with no identifier for %{public}@", buf, 0x16u);
    }

    [(AsyncTask *)self completeWithSuccess];
  }
}

- (void)_processError:(id)error
{
  errorCopy = error;
  if (qword_1003D4648 != -1)
  {
    sub_1002D0344();
  }

  v5 = qword_1003D4618;
  if (os_log_type_enabled(qword_1003D4618, OS_LOG_TYPE_ERROR))
  {
    sub_1002D0358(self, v5, errorCopy);
  }

  [(AsyncTask *)self completeWithError:errorCopy];
}

@end