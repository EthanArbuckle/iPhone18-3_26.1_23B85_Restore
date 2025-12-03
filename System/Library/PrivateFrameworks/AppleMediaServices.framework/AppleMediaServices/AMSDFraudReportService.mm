@interface AMSDFraudReportService
+ (BOOL)isConnectionEntitled:(id)entitled;
+ (id)_reportedScoreFromFSRDataString:(id)string error:(id *)error;
- (void)performFraudReportRefreshWithOptions:(id)options completion:(id)completion;
@end

@implementation AMSDFraudReportService

+ (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (void)performFraudReportRefreshWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = AMSLogKey();
    *buf = 138543618;
    v26 = v10;
    v27 = 2114;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running fraud report task.", buf, 0x16u);
  }

  v13 = +[AMSDBag defaultBag];
  v14 = [[AMSDFraudReportPrivacyTask alloc] initWithBag:v13];
  transactionIdentifier = [optionsCopy transactionIdentifier];
  keyIdentifier = [optionsCopy keyIdentifier];
  v17 = [(AMSDFraudReportPrivacyTask *)v14 performBlindingWithTransactionID:transactionIdentifier keyID:keyIdentifier];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10005AC0C;
  v21[3] = &unk_1002B0850;
  v21[4] = self;
  v22 = optionsCopy;
  v23 = v13;
  v24 = completionCopy;
  v18 = v13;
  v19 = optionsCopy;
  v20 = completionCopy;
  [v17 resultWithCompletion:v21];
}

+ (id)_reportedScoreFromFSRDataString:(id)string error:(id *)error
{
  stringCopy = string;
  v6 = [[NSScanner alloc] initWithString:stringCopy];

  [v6 scanUpToString:@"rs=" intoString:0];
  if ([v6 isAtEnd])
  {
    if (error)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [v6 setScanLocation:{objc_msgSend(@"rs=", "length") + objc_msgSend(v6, "scanLocation")}];
  v9 = 0;
  if (([v6 scanUnsignedLongLong:&v9] & 1) == 0)
  {
    if (error)
    {
LABEL_10:
      AMSError();
      *error = v7 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (_os_feature_enabled_impl() && v9 >= 0x100)
  {
    if (error)
    {
      goto LABEL_10;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_13;
  }

  v7 = [NSNumber numberWithUnsignedLongLong:v9];
LABEL_13:

  return v7;
}

@end