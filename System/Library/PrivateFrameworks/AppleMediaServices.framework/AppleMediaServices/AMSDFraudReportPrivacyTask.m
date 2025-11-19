@interface AMSDFraudReportPrivacyTask
+ (id)_blindedTransactionWithTransactionID:(id)a3 pks:(id)a4 keyID:(id)a5 error:(id *)a6;
+ (id)performUnBlindingFraudReportForResponse:(id)a3 tdmToken:(id)a4 pks:(id)a5 error:(id *)a6;
- (AMSDFraudReportPrivacyTask)initWithBag:(id)a3;
- (id)performBlindingWithTransactionID:(id)a3 keyID:(id)a4;
@end

@implementation AMSDFraudReportPrivacyTask

- (AMSDFraudReportPrivacyTask)initWithBag:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"bag must not be nil" userInfo:0];
    objc_exception_throw(v10);
  }

  v6 = v5;
  v11.receiver = self;
  v11.super_class = AMSDFraudReportPrivacyTask;
  v7 = [(AMSDFraudReportPrivacyTask *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_bag, a3);
  }

  return v8;
}

- (id)performBlindingWithTransactionID:(id)a3 keyID:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100059B48;
  v9[3] = &unk_1002B0800;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v5 = v12;
  v6 = v11;
  v7 = [(AMSDFraudReportPrivacyTask *)v10 performTaskWithPromiseBlock:v9];

  return v7;
}

+ (id)performUnBlindingFraudReportForResponse:(id)a3 tdmToken:(id)a4 pks:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = AMSSetLogKeyIfNeeded();
  v14 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v33 = a1;
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running fraud report unblinding response task.", buf, 0x16u);
  }

  v16 = [v10 nameSpace];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@|%hhu|%hhu", v16, [v10 reportedScore], objc_msgSend(v10, "newScore"));
  v18 = [v17 dataUsingEncoding:4];

  if (v18)
  {
    v19 = a1;
    v30 = a6;
    v20 = [v10 evaluatedElementData];
    v21 = [v10 proofData];
    v31 = 0;
    v22 = [v11 finalizeWithEvaluatedElement:v20 proof:v21 publicKey:v12 fsr:v18 error:&v31];
    v23 = v31;

    if (v22)
    {
      v24 = [v22 base64EncodedStringWithOptions:0];
      [v10 _setFinalizedElement:v24];

      v25 = v10;
    }

    else
    {
      v26 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v26)
      {
        v26 = +[AMSLogConfig sharedConfig];
      }

      v27 = [v26 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v33 = v19;
        v34 = 2114;
        v35 = v13;
        v36 = 2114;
        v37 = v23;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error fraud report unblinding message, cannot create a finalized element: %{public}@", buf, 0x20u);
      }

      if (v30)
      {
        v28 = v23;
        v25 = 0;
        *v30 = v23;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else if (a6)
  {
    AMSError();
    *a6 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)_blindedTransactionWithTransactionID:(id)a3 pks:(id)a4 keyID:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = AMSSetLogKeyIfNeeded();
  v13 = [v11 dataUsingEncoding:4];

  if (v13)
  {
    v14 = [[TDMToken alloc] initWithTID:v13];
    v15 = [v14 blindedElement];

    if (v15)
    {
      v16 = [v10 dataUsingEncoding:4];
      v17 = [[AMSDFraudReportBlindedTransaction alloc] initWithTDMToken:v14 pks:v9 keyID:v16];
    }

    else if (a6)
    {
      AMSError();
      *a6 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (a6)
  {
    AMSError();
    *a6 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end