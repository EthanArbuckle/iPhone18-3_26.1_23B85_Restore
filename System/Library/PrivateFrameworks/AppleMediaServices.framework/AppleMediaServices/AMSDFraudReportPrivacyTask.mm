@interface AMSDFraudReportPrivacyTask
+ (id)_blindedTransactionWithTransactionID:(id)d pks:(id)pks keyID:(id)iD error:(id *)error;
+ (id)performUnBlindingFraudReportForResponse:(id)response tdmToken:(id)token pks:(id)pks error:(id *)error;
- (AMSDFraudReportPrivacyTask)initWithBag:(id)bag;
- (id)performBlindingWithTransactionID:(id)d keyID:(id)iD;
@end

@implementation AMSDFraudReportPrivacyTask

- (AMSDFraudReportPrivacyTask)initWithBag:(id)bag
{
  bagCopy = bag;
  if (!bagCopy)
  {
    v10 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"bag must not be nil" userInfo:0];
    objc_exception_throw(v10);
  }

  v6 = bagCopy;
  v11.receiver = self;
  v11.super_class = AMSDFraudReportPrivacyTask;
  v7 = [(AMSDFraudReportPrivacyTask *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_bag, bag);
  }

  return v8;
}

- (id)performBlindingWithTransactionID:(id)d keyID:(id)iD
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100059B48;
  v9[3] = &unk_1002B0800;
  selfCopy = self;
  dCopy = d;
  iDCopy = iD;
  v5 = iDCopy;
  v6 = dCopy;
  v7 = [(AMSDFraudReportPrivacyTask *)selfCopy performTaskWithPromiseBlock:v9];

  return v7;
}

+ (id)performUnBlindingFraudReportForResponse:(id)response tdmToken:(id)token pks:(id)pks error:(id *)error
{
  responseCopy = response;
  tokenCopy = token;
  pksCopy = pks;
  v13 = AMSSetLogKeyIfNeeded();
  v14 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running fraud report unblinding response task.", buf, 0x16u);
  }

  nameSpace = [responseCopy nameSpace];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@|%hhu|%hhu", nameSpace, [responseCopy reportedScore], objc_msgSend(responseCopy, "newScore"));
  v18 = [v17 dataUsingEncoding:4];

  if (v18)
  {
    selfCopy2 = self;
    errorCopy = error;
    evaluatedElementData = [responseCopy evaluatedElementData];
    proofData = [responseCopy proofData];
    v31 = 0;
    v22 = [tokenCopy finalizeWithEvaluatedElement:evaluatedElementData proof:proofData publicKey:pksCopy fsr:v18 error:&v31];
    v23 = v31;

    if (v22)
    {
      v24 = [v22 base64EncodedStringWithOptions:0];
      [responseCopy _setFinalizedElement:v24];

      v25 = responseCopy;
    }

    else
    {
      v26 = +[AMSLogConfig sharedFraudReportConfig];
      if (!v26)
      {
        v26 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v26 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy = selfCopy2;
        v34 = 2114;
        v35 = v13;
        v36 = 2114;
        v37 = v23;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error fraud report unblinding message, cannot create a finalized element: %{public}@", buf, 0x20u);
      }

      if (errorCopy)
      {
        v28 = v23;
        v25 = 0;
        *errorCopy = v23;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else if (error)
  {
    AMSError();
    *error = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)_blindedTransactionWithTransactionID:(id)d pks:(id)pks keyID:(id)iD error:(id *)error
{
  pksCopy = pks;
  iDCopy = iD;
  dCopy = d;
  v12 = AMSSetLogKeyIfNeeded();
  v13 = [dCopy dataUsingEncoding:4];

  if (v13)
  {
    v14 = [[TDMToken alloc] initWithTID:v13];
    blindedElement = [v14 blindedElement];

    if (blindedElement)
    {
      v16 = [iDCopy dataUsingEncoding:4];
      v17 = [[AMSDFraudReportBlindedTransaction alloc] initWithTDMToken:v14 pks:pksCopy keyID:v16];
    }

    else if (error)
    {
      AMSError();
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (error)
  {
    AMSError();
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end