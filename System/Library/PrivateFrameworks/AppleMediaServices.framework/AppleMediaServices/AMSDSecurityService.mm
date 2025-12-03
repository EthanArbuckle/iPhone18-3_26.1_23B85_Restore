@interface AMSDSecurityService
+ (BOOL)isConnectionEntitled:(id)entitled;
+ (OS_dispatch_queue)sharedPerformQueue;
- (AMSSecurityClientInterface)delegate;
- (BOOL)isActionSupportedForType:(int64_t)type account:(id)account options:(id)options error:(id *)error;
- (void)_absintheHeadersForRequest:(id)request bag:(id)bag buyParams:(id)params completion:(id)completion;
- (void)deleteAllKeysWithCompletion:(id)completion;
- (void)handleResponse:(id)response completion:(id)completion;
- (void)hasKeysForAccount:(id)account forSignaturePurpose:(unint64_t)purpose completion:(id)completion;
- (void)isActionSupportedForType:(int64_t)type account:(id)account options:(id)options completion:(id)completion;
- (void)isBiometricsAvailableForAccount:(id)account completion:(id)completion;
- (void)isDeviceInBiometricLockoutWithCompletion:(id)completion;
- (void)isIdentityMapValidWithCompletion:(id)completion;
- (void)paymentServicesMerchantURLWithCompletion:(id)completion;
- (void)performBiometricTokenUpdateWithAccount:(id)account clientInfo:(id)info additionalDialogMetrics:(id)metrics shouldGenerateKeysOnly:(BOOL)only shouldRequestConfirmation:(BOOL)confirmation userInitiated:(BOOL)initiated completion:(id)completion;
- (void)performClientCertChainRequestWithAccount:(id)account options:(id)options completion:(id)completion;
- (void)performDevicePasscodeVerificationWithCompletion:(id)completion;
- (void)performRemoteSignInWithAuthenticationResults:(id)results signInContext:(id)context serviceTypes:(id)types clientInfo:(id)info completion:(id)completion;
- (void)performSilentEnrollmentWithRequest:(id)request logKey:(id)key completion:(id)completion;
- (void)saveIdentityMapWithCompletion:(id)completion;
- (void)shouldAttemptApplePayWithAccount:(id)account options:(id)options countryCode:(id)code paymentNetworks:(id)networks completion:(id)completion;
- (void)shouldAttemptApplePayWithCountryCode:(id)code paymentNetworks:(id)networks completion:(id)completion;
- (void)signChallengeForRequest:(id)request completion:(id)completion;
- (void)signedHeadersForRequest:(id)request buyParams:(id)params completion:(id)completion;
@end

@implementation AMSDSecurityService

+ (OS_dispatch_queue)sharedPerformQueue
{
  if (qword_1002E3438 != -1)
  {
    sub_10021B4CC();
  }

  v3 = qword_1002E3440;

  return v3;
}

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

- (void)performClientCertChainRequestWithAccount:(id)account options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  accountCopy = account;
  v10 = [[AMSDClientCertificateTask alloc] initWithAccount:accountCopy options:optionsCopy];

  performClientCertChainRequest = [(AMSDClientCertificateTask *)v10 performClientCertChainRequest];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008A174;
  v13[3] = &unk_1002B22E8;
  v14 = completionCopy;
  v12 = completionCopy;
  [performClientCertChainRequest addFinishBlock:v13];
}

- (void)isIdentityMapValidWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = +[AMSBiometrics isIdentityMapValid];
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v3, 0);
    v4 = completionCopy;
  }
}

- (void)saveIdentityMapWithCompletion:(id)completion
{
  completionCopy = completion;
  +[AMSBiometrics saveIdentityMap];
  v3 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v3 = completionCopy;
  }
}

- (BOOL)isActionSupportedForType:(int64_t)type account:(id)account options:(id)options error:(id *)error
{
  optionsCopy = options;
  accountCopy = account;
  v11 = AMSSetLogKeyIfNeeded();
  v26 = 0;
  v12 = [AMSKeychain copyAccessControlRefWithAccount:accountCopy options:optionsCopy error:&v26];

  v13 = v26;
  if (v13)
  {
    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      *buf = 138543874;
      v28 = v16;
      v29 = 2114;
      v30 = v11;
      v31 = 2114;
      v32 = v13;
      v17 = v16;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ACL copy failed with error: %{public}@", buf, 0x20u);
    }

    if (error)
    {
      v18 = v13;
      v19 = 0;
      *error = v13;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = [AMSBiometrics isActionSupported:type withAccessControl:v12];
    if ((v19 & 1) == 0)
    {
      v20 = [AMSBiometrics ACLVersionForAccessControl:v12];
      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543874;
        v28 = v23;
        v29 = 2114;
        v30 = v11;
        v31 = 2114;
        v32 = v20;
        v24 = v23;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometric/ACL check for bad ACL version: %{public}@", buf, 0x20u);
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  return v19;
}

- (void)hasKeysForAccount:(id)account forSignaturePurpose:(unint64_t)purpose completion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v8 = [AMSBiometrics hasKeysForAccount:account forSignaturePurpose:purpose withError:&v10];
  v9 = v10;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8, v9);
  }
}

- (void)isDeviceInBiometricLockoutWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = +[AMSBiometrics isDeviceInBiometricLockout];
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v3);
    v4 = completionCopy;
  }
}

- (void)deleteAllKeysWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = objc_opt_class();
    v9 = v8;
    if (v7)
    {
      self = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, self];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    selfCopy = ;
    *buf = 138543362;
    v17 = selfCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Requested to delete all biometrics keys.", buf, 0xCu);
    if (v7)
    {

      selfCopy = self;
    }
  }

  v15 = 0;
  v11 = [AMSBiometrics deleteAllKeysWithError:&v15];
  v12 = v15;
  v13 = v12;
  if (completionCopy)
  {
    ams_sanitizedForSecureCoding = [v12 ams_sanitizedForSecureCoding];
    completionCopy[2](completionCopy, v11, ams_sanitizedForSecureCoding);
  }
}

- (void)isActionSupportedForType:(int64_t)type account:(id)account options:(id)options completion:(id)completion
{
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  v13 = AMSSetLogKeyIfNeeded();
  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v13;
    v17 = objc_opt_class();
    v18 = [NSNumber numberWithInteger:type];
    AMSHashIfNeeded();
    v19 = v28 = accountCopy;
    AMSHashIfNeeded();
    v27 = completionCopy;
    typeCopy = type;
    v22 = v21 = self;
    *buf = 138544386;
    v31 = v17;
    v13 = v16;
    v32 = 2114;
    v33 = v16;
    v34 = 2114;
    v35 = v18;
    v36 = 2114;
    v37 = v19;
    v38 = 2114;
    v39 = v22;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking auto enrollment for action type = %{public}@ | account = %{public}@ | options = %{public}@", buf, 0x34u);

    self = v21;
    type = typeCopy;
    completionCopy = v27;

    accountCopy = v28;
  }

  if (completionCopy)
  {
    v29 = 0;
    v23 = [(AMSDSecurityService *)self isActionSupportedForType:type account:accountCopy options:optionsCopy error:&v29];
    v24 = v29;
    ams_sanitizedForSecureCoding = [v24 ams_sanitizedForSecureCoding];
    completionCopy[2](completionCopy, v23, ams_sanitizedForSecureCoding);
  }

  else
  {
    v24 = +[AMSLogConfig sharedConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    ams_sanitizedForSecureCoding = [v24 OSLogObject];
    if (os_log_type_enabled(ams_sanitizedForSecureCoding, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      *buf = 138543618;
      v31 = v26;
      v32 = 2114;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, ams_sanitizedForSecureCoding, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Checking auto enrollment for action type failed for no completion handler", buf, 0x16u);
    }
  }
}

- (void)isBiometricsAvailableForAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  v5 = [AMSBiometrics isAvailableForAccount:account];
  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v5, 0);
    v6 = completionCopy;
  }
}

- (void)performBiometricTokenUpdateWithAccount:(id)account clientInfo:(id)info additionalDialogMetrics:(id)metrics shouldGenerateKeysOnly:(BOOL)only shouldRequestConfirmation:(BOOL)confirmation userInitiated:(BOOL)initiated completion:(id)completion
{
  accountCopy = account;
  infoCopy = info;
  metricsCopy = metrics;
  completionCopy = completion;
  sharedPerformQueue = [objc_opt_class() sharedPerformQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10008AC7C;
  v24[3] = &unk_1002B2338;
  v24[4] = self;
  v25 = accountCopy;
  v26 = metricsCopy;
  v27 = infoCopy;
  onlyCopy = only;
  confirmationCopy = confirmation;
  initiatedCopy = initiated;
  v28 = completionCopy;
  v20 = completionCopy;
  v21 = infoCopy;
  v22 = metricsCopy;
  v23 = accountCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.biometrics" withQueue:sharedPerformQueue whilePerformingBlock:v24];
}

- (void)performDevicePasscodeVerificationWithCompletion:(id)completion
{
  completionCopy = completion;
  sharedPerformQueue = [objc_opt_class() sharedPerformQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B2B0;
  v7[3] = &unk_1002B05B8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.devicepasscode" withQueue:sharedPerformQueue whilePerformingBlock:v7];
}

- (void)performRemoteSignInWithAuthenticationResults:(id)results signInContext:(id)context serviceTypes:(id)types clientInfo:(id)info completion:(id)completion
{
  resultsCopy = results;
  contextCopy = context;
  typesCopy = types;
  infoCopy = info;
  completionCopy = completion;
  sharedPerformQueue = [objc_opt_class() sharedPerformQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008BA2C;
  v23[3] = &unk_1002B23B0;
  v23[4] = self;
  v24 = resultsCopy;
  v25 = contextCopy;
  v26 = typesCopy;
  v27 = infoCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = infoCopy;
  v20 = typesCopy;
  v21 = contextCopy;
  v22 = resultsCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.remotesignin" withQueue:sharedPerformQueue whilePerformingBlock:v23];
}

- (void)paymentServicesMerchantURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = AMSSetLogKeyIfNeeded();
  if (completionCopy)
  {
    objc_initWeak(location, self);
    v7 = [AMSMutableLazyPromise alloc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008C320;
    v18[3] = &unk_1002B2400;
    objc_copyWeak(v20, location);
    v19 = v6;
    v20[1] = a2;
    v8 = [v7 initWithBlock:v18];
    v17 = 0;
    v9 = [v8 resultWithError:&v17];
    v10 = v17;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008CD70;
    v14[3] = &unk_1002B2428;
    v16 = completionCopy;
    v11 = v9;
    v15 = v11;
    [v8 addFinishBlock:v14];

    objc_destroyWeak(v20);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      *location = 138543618;
      *&location[4] = objc_opt_class();
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] Merchant URL lookup failed for no completion handler", location, 0x16u);
    }
  }
}

- (void)shouldAttemptApplePayWithAccount:(id)account options:(id)options countryCode:(id)code paymentNetworks:(id)networks completion:(id)completion
{
  accountCopy = account;
  optionsCopy = options;
  codeCopy = code;
  networksCopy = networks;
  completionCopy = completion;
  v38 = AMSSetLogKeyIfNeeded();
  v13 = +[AMSLogConfig sharedConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    v17 = AMSHashIfNeeded();
    v18 = AMSHashIfNeeded();
    v19 = AMSHashIfNeeded();
    v20 = AMSHashIfNeeded();
    *buf = 138544898;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v38;
    *&buf[22] = 2114;
    v53 = v16;
    v54 = 2114;
    v55 = v17;
    v56 = 2114;
    v57 = v18;
    v58 = 2114;
    v59 = v19;
    v60 = 2114;
    v61 = v20;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] %{public}@ account = %{public}@ | options = %{public}@ | countryCode = %{public}@ | paymentNetworks = %{public}@", buf, 0x48u);
  }

  if (completionCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v45 = 0;
    v21 = [AMSKeychain copyAccessControlRefWithAccount:accountCopy options:optionsCopy error:&v45];
    v22 = v45;
    v53 = v21;
    if (v22)
    {
      v23 = +[AMSLogConfig sharedConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        *v46 = 138543874;
        v47 = v25;
        v48 = 2114;
        v49 = v38;
        v50 = 2114;
        v51 = v22;
        v26 = v25;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] ACL copy failed with error: %{public}@", v46, 0x20u);
      }

      ams_sanitizedForSecureCoding = [v22 ams_sanitizedForSecureCoding];
      completionCopy[2](completionCopy, 0, ams_sanitizedForSecureCoding);
    }

    else if (([AMSBiometrics isActionSupported:4 withAccessControl:*(*&buf[8] + 24)]& 1) != 0)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10008D370;
      v41[3] = &unk_1002B2450;
      v41[4] = self;
      v42 = v38;
      v44 = buf;
      v43 = completionCopy;
      [(AMSDSecurityService *)self shouldAttemptApplePayWithCountryCode:codeCopy paymentNetworks:networksCopy completion:v41];
    }

    else
    {
      v30 = [AMSBiometrics ACLVersionForAccessControl:*(*&buf[8] + 24)];
      v31 = +[AMSLogConfig sharedConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v31 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        *v46 = 138543874;
        v47 = v33;
        v48 = 2114;
        v49 = v38;
        v50 = 2114;
        v51 = v30;
        v34 = v33;
        _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Skipping biometric/ACL check for bad ACL version: %{public}@", v46, 0x20u);
      }

      completionCopy[2](completionCopy, 0, 0);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = +[AMSLogConfig sharedConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] Apple Pay Classic evaluation failed for no completion block", buf, 0x16u);
    }
  }
}

- (void)shouldAttemptApplePayWithCountryCode:(id)code paymentNetworks:(id)networks completion:(id)completion
{
  codeCopy = code;
  networksCopy = networks;
  completionCopy = completion;
  v27 = AMSSetLogKeyIfNeeded();
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    v14 = AMSHashIfNeeded();
    v15 = AMSHashIfNeeded();
    *buf = 138544386;
    v35 = v12;
    v36 = 2114;
    v37 = v27;
    v38 = 2114;
    v39 = v13;
    v40 = 2114;
    v41 = v14;
    v42 = 2114;
    v43 = v15;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] %{public}@ | countryCode = %{public}@ | paymentNetworks = %{public}@", buf, 0x34u);
  }

  if (completionCopy)
  {
    objc_initWeak(buf, self);
    v16 = [AMSMutableLazyPromise alloc];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10008D950;
    v29[3] = &unk_1002B24A0;
    objc_copyWeak(v33, buf);
    v30 = codeCopy;
    v31 = v27;
    v33[1] = a2;
    v32 = networksCopy;
    v17 = [v16 initWithBlock:v29];
    v28 = 0;
    v18 = [v17 resultWithError:&v28];
    v19 = v28;
    bOOLValue = [v18 BOOLValue];

    ams_sanitizedForSecureCoding = [v19 ams_sanitizedForSecureCoding];
    completionCopy[2](completionCopy, bOOLValue, ams_sanitizedForSecureCoding);

    objc_destroyWeak(v33);
    objc_destroyWeak(buf);
  }

  else
  {
    v22 = +[AMSLogConfig sharedConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      *buf = 138543618;
      v35 = v24;
      v36 = 2114;
      v37 = v27;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] Apple Pay Classic evaluation failed for no completion block", buf, 0x16u);
    }
  }
}

- (void)signedHeadersForRequest:(id)request buyParams:(id)params completion:(id)completion
{
  requestCopy = request;
  paramsCopy = params;
  completionCopy = completion;
  sharedPerformQueue = [objc_opt_class() sharedPerformQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008E448;
  v15[3] = &unk_1002B24F0;
  v15[4] = self;
  v16 = requestCopy;
  v17 = paramsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = paramsCopy;
  v14 = requestCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.signingsecurity" withQueue:sharedPerformQueue whilePerformingBlock:v15];
}

- (void)signChallengeForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  sharedPerformQueue = [objc_opt_class() sharedPerformQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008E674;
  v10[3] = &unk_1002B05B8;
  v11 = requestCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = requestCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.biometrics" withQueue:sharedPerformQueue whilePerformingBlock:v10];
}

- (void)performSilentEnrollmentWithRequest:(id)request logKey:(id)key completion:(id)completion
{
  requestCopy = request;
  keyCopy = key;
  completionCopy = completion;
  if (!keyCopy)
  {
    keyCopy = AMSSetLogKeyIfNeeded();
  }

  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = keyCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting silent-enrollment payment session", buf, 0x16u);
  }

  v13 = +[AMSURLSession defaultSession];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008EAF8;
  v17[3] = &unk_1002B2540;
  v17[4] = self;
  v18 = keyCopy;
  v19 = completionCopy;
  v14 = completionCopy;
  v15 = keyCopy;
  v16 = [v13 dataTaskWithRequest:requestCopy completionHandler:v17];

  [v16 resume];
}

- (void)handleResponse:(id)response completion:(id)completion
{
  completionCopy = completion;
  responseCopy = response;
  v7 = +[AMSDBag defaultBag];
  v8 = [AMSAbsinthe handleResponse:responseCopy bag:v7];

  completionCopy[2](completionCopy, v8);
}

- (void)_absintheHeadersForRequest:(id)request bag:(id)bag buyParams:(id)params completion:(id)completion
{
  completionCopy = completion;
  v10 = [AMSAbsinthe headersForRequest:request buyParams:params bag:bag];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008EF70;
  v12[3] = &unk_1002B24C8;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 addFinishBlock:v12];
}

- (AMSSecurityClientInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end