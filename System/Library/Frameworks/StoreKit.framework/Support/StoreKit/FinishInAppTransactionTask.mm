@interface FinishInAppTransactionTask
- (FinishInAppTransactionTask)initWithTransactionID:(id)a3 client:(id)a4;
- (void)_processError:(id)a3;
- (void)main;
@end

@implementation FinishInAppTransactionTask

- (FinishInAppTransactionTask)initWithTransactionID:(id)a3 client:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = FinishInAppTransactionTask;
  v9 = [(Task *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((v9 + 50), a4);
    v11 = +[NSUUID lib_shortLogKey];
    v12 = *(v10 + 42);
    *(v10 + 42) = v11;

    objc_storeStrong((v10 + 58), a3);
  }

  return v10;
}

- (void)main
{
  v3 = [(FinishInAppTransactionTask *)self transactionID];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(FinishInAppTransactionTask *)self client];
    v6 = [ReceiptManager managerForClient:v5];

    v7 = [(FinishInAppTransactionTask *)self transactionID];
    v8 = [v6 isTransactionFinishedForID:v7];

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
        v12 = [(FinishInAppTransactionTask *)self client];
        v13 = [v12 requestBundleID];
        *buf = 138543618;
        v44 = v10;
        v45 = 2114;
        v46 = v13;
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
        v22 = [(FinishInAppTransactionTask *)self transactionID];
        v23 = [v22 hash];
        v24 = [(FinishInAppTransactionTask *)self client];
        v25 = [v24 requestBundleID];
        *buf = 138543874;
        v44 = v20;
        v45 = 2048;
        v46 = v23;
        v47 = 2114;
        v48 = v25;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finishing transaction %lu for %{public}@", buf, 0x20u);
      }

      v26 = [(FinishInAppTransactionTask *)self client];
      v27 = [v26 bag];

      v28 = [(FinishInAppTransactionTask *)self client];
      v29 = [v28 urlSession];

      v30 = [(FinishInAppTransactionTask *)self client];
      v31 = [v30 urlRequestEncoder];

      v41 = @"transactionId";
      v32 = [(FinishInAppTransactionTask *)self transactionID];
      v42 = v32;
      v33 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];

      v34 = +[_TtC9storekitd6BagKey finishTransactionURL];
      v35 = [v27 URLForKey:v34];
      v36 = [v31 requestWithMethod:2 bagURL:v35 parameters:v33];

      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000601E8;
      v38[3] = &unk_10037F8E0;
      v38[4] = self;
      v39 = v29;
      v40 = v6;
      v37 = v29;
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
      v17 = [(FinishInAppTransactionTask *)self client];
      v18 = [v17 requestBundleID];
      *buf = 138543618;
      v44 = v15;
      v45 = 2114;
      v46 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finishing transaction with no identifier for %{public}@", buf, 0x16u);
    }

    [(AsyncTask *)self completeWithSuccess];
  }
}

- (void)_processError:(id)a3
{
  v4 = a3;
  if (qword_1003D4648 != -1)
  {
    sub_1002D0344();
  }

  v5 = qword_1003D4618;
  if (os_log_type_enabled(qword_1003D4618, OS_LOG_TYPE_ERROR))
  {
    sub_1002D0358(self, v5, v4);
  }

  [(AsyncTask *)self completeWithError:v4];
}

@end