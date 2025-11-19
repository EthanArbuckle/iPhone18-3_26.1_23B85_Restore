@interface AMSDSecurityService
+ (BOOL)isConnectionEntitled:(id)a3;
+ (OS_dispatch_queue)sharedPerformQueue;
- (AMSSecurityClientInterface)delegate;
- (BOOL)isActionSupportedForType:(int64_t)a3 account:(id)a4 options:(id)a5 error:(id *)a6;
- (void)_absintheHeadersForRequest:(id)a3 bag:(id)a4 buyParams:(id)a5 completion:(id)a6;
- (void)deleteAllKeysWithCompletion:(id)a3;
- (void)handleResponse:(id)a3 completion:(id)a4;
- (void)hasKeysForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4 completion:(id)a5;
- (void)isActionSupportedForType:(int64_t)a3 account:(id)a4 options:(id)a5 completion:(id)a6;
- (void)isBiometricsAvailableForAccount:(id)a3 completion:(id)a4;
- (void)isDeviceInBiometricLockoutWithCompletion:(id)a3;
- (void)isIdentityMapValidWithCompletion:(id)a3;
- (void)paymentServicesMerchantURLWithCompletion:(id)a3;
- (void)performBiometricTokenUpdateWithAccount:(id)a3 clientInfo:(id)a4 additionalDialogMetrics:(id)a5 shouldGenerateKeysOnly:(BOOL)a6 shouldRequestConfirmation:(BOOL)a7 userInitiated:(BOOL)a8 completion:(id)a9;
- (void)performClientCertChainRequestWithAccount:(id)a3 options:(id)a4 completion:(id)a5;
- (void)performDevicePasscodeVerificationWithCompletion:(id)a3;
- (void)performRemoteSignInWithAuthenticationResults:(id)a3 signInContext:(id)a4 serviceTypes:(id)a5 clientInfo:(id)a6 completion:(id)a7;
- (void)performSilentEnrollmentWithRequest:(id)a3 logKey:(id)a4 completion:(id)a5;
- (void)saveIdentityMapWithCompletion:(id)a3;
- (void)shouldAttemptApplePayWithAccount:(id)a3 options:(id)a4 countryCode:(id)a5 paymentNetworks:(id)a6 completion:(id)a7;
- (void)shouldAttemptApplePayWithCountryCode:(id)a3 paymentNetworks:(id)a4 completion:(id)a5;
- (void)signChallengeForRequest:(id)a3 completion:(id)a4;
- (void)signedHeadersForRequest:(id)a3 buyParams:(id)a4 completion:(id)a5;
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

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (void)performClientCertChainRequestWithAccount:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[AMSDClientCertificateTask alloc] initWithAccount:v9 options:v8];

  v11 = [(AMSDClientCertificateTask *)v10 performClientCertChainRequest];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008A174;
  v13[3] = &unk_1002B22E8;
  v14 = v7;
  v12 = v7;
  [v11 addFinishBlock:v13];
}

- (void)isIdentityMapValidWithCompletion:(id)a3
{
  v5 = a3;
  v3 = +[AMSBiometrics isIdentityMapValid];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3, 0);
    v4 = v5;
  }
}

- (void)saveIdentityMapWithCompletion:(id)a3
{
  v4 = a3;
  +[AMSBiometrics saveIdentityMap];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, 0);
    v3 = v4;
  }
}

- (BOOL)isActionSupportedForType:(int64_t)a3 account:(id)a4 options:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = AMSSetLogKeyIfNeeded();
  v26 = 0;
  v12 = [AMSKeychain copyAccessControlRefWithAccount:v10 options:v9 error:&v26];

  v13 = v26;
  if (v13)
  {
    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      *buf = 138543874;
      v28 = v16;
      v29 = 2114;
      v30 = v11;
      v31 = 2114;
      v32 = v13;
      v17 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ACL copy failed with error: %{public}@", buf, 0x20u);
    }

    if (a6)
    {
      v18 = v13;
      v19 = 0;
      *a6 = v13;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = [AMSBiometrics isActionSupported:a3 withAccessControl:v12];
    if ((v19 & 1) == 0)
    {
      v20 = [AMSBiometrics ACLVersionForAccessControl:v12];
      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543874;
        v28 = v23;
        v29 = 2114;
        v30 = v11;
        v31 = 2114;
        v32 = v20;
        v24 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometric/ACL check for bad ACL version: %{public}@", buf, 0x20u);
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  return v19;
}

- (void)hasKeysForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4 completion:(id)a5
{
  v7 = a5;
  v10 = 0;
  v8 = [AMSBiometrics hasKeysForAccount:a3 forSignaturePurpose:a4 withError:&v10];
  v9 = v10;
  if (v7)
  {
    v7[2](v7, v8, v9);
  }
}

- (void)isDeviceInBiometricLockoutWithCompletion:(id)a3
{
  v5 = a3;
  v3 = +[AMSBiometrics isDeviceInBiometricLockout];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
    v4 = v5;
  }
}

- (void)deleteAllKeysWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
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
    v10 = ;
    *buf = 138543362;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Requested to delete all biometrics keys.", buf, 0xCu);
    if (v7)
    {

      v10 = self;
    }
  }

  v15 = 0;
  v11 = [AMSBiometrics deleteAllKeysWithError:&v15];
  v12 = v15;
  v13 = v12;
  if (v4)
  {
    v14 = [v12 ams_sanitizedForSecureCoding];
    v4[2](v4, v11, v14);
  }
}

- (void)isActionSupportedForType:(int64_t)a3 account:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = AMSSetLogKeyIfNeeded();
  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v13;
    v17 = objc_opt_class();
    v18 = [NSNumber numberWithInteger:a3];
    AMSHashIfNeeded();
    v19 = v28 = v10;
    AMSHashIfNeeded();
    v27 = v12;
    v20 = a3;
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
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking auto enrollment for action type = %{public}@ | account = %{public}@ | options = %{public}@", buf, 0x34u);

    self = v21;
    a3 = v20;
    v12 = v27;

    v10 = v28;
  }

  if (v12)
  {
    v29 = 0;
    v23 = [(AMSDSecurityService *)self isActionSupportedForType:a3 account:v10 options:v11 error:&v29];
    v24 = v29;
    v25 = [v24 ams_sanitizedForSecureCoding];
    v12[2](v12, v23, v25);
  }

  else
  {
    v24 = +[AMSLogConfig sharedConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      *buf = 138543618;
      v31 = v26;
      v32 = 2114;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Checking auto enrollment for action type failed for no completion handler", buf, 0x16u);
    }
  }
}

- (void)isBiometricsAvailableForAccount:(id)a3 completion:(id)a4
{
  v7 = a4;
  v5 = [AMSBiometrics isAvailableForAccount:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v5, 0);
    v6 = v7;
  }
}

- (void)performBiometricTokenUpdateWithAccount:(id)a3 clientInfo:(id)a4 additionalDialogMetrics:(id)a5 shouldGenerateKeysOnly:(BOOL)a6 shouldRequestConfirmation:(BOOL)a7 userInitiated:(BOOL)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v19 = [objc_opt_class() sharedPerformQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10008AC7C;
  v24[3] = &unk_1002B2338;
  v24[4] = self;
  v25 = v15;
  v26 = v17;
  v27 = v16;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v28 = v18;
  v20 = v18;
  v21 = v16;
  v22 = v17;
  v23 = v15;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.biometrics" withQueue:v19 whilePerformingBlock:v24];
}

- (void)performDevicePasscodeVerificationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() sharedPerformQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B2B0;
  v7[3] = &unk_1002B05B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.devicepasscode" withQueue:v5 whilePerformingBlock:v7];
}

- (void)performRemoteSignInWithAuthenticationResults:(id)a3 signInContext:(id)a4 serviceTypes:(id)a5 clientInfo:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [objc_opt_class() sharedPerformQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008BA2C;
  v23[3] = &unk_1002B23B0;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.remotesignin" withQueue:v17 whilePerformingBlock:v23];
}

- (void)paymentServicesMerchantURLWithCompletion:(id)a3
{
  v5 = a3;
  v6 = AMSSetLogKeyIfNeeded();
  if (v5)
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
    v16 = v5;
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

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *location = 138543618;
      *&location[4] = objc_opt_class();
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] Merchant URL lookup failed for no completion handler", location, 0x16u);
    }
  }
}

- (void)shouldAttemptApplePayWithAccount:(id)a3 options:(id)a4 countryCode:(id)a5 paymentNetworks:(id)a6 completion:(id)a7
{
  v39 = a3;
  v40 = a4;
  v36 = a5;
  v37 = a6;
  v12 = a7;
  v38 = AMSSetLogKeyIfNeeded();
  v13 = +[AMSLogConfig sharedConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] %{public}@ account = %{public}@ | options = %{public}@ | countryCode = %{public}@ | paymentNetworks = %{public}@", buf, 0x48u);
  }

  if (v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v45 = 0;
    v21 = [AMSKeychain copyAccessControlRefWithAccount:v39 options:v40 error:&v45];
    v22 = v45;
    v53 = v21;
    if (v22)
    {
      v23 = +[AMSLogConfig sharedConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        *v46 = 138543874;
        v47 = v25;
        v48 = 2114;
        v49 = v38;
        v50 = 2114;
        v51 = v22;
        v26 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] ACL copy failed with error: %{public}@", v46, 0x20u);
      }

      v27 = [v22 ams_sanitizedForSecureCoding];
      v12[2](v12, 0, v27);
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
      v43 = v12;
      [(AMSDSecurityService *)self shouldAttemptApplePayWithCountryCode:v36 paymentNetworks:v37 completion:v41];
    }

    else
    {
      v30 = [AMSBiometrics ACLVersionForAccessControl:*(*&buf[8] + 24)];
      v31 = +[AMSLogConfig sharedConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        *v46 = 138543874;
        v47 = v33;
        v48 = 2114;
        v49 = v38;
        v50 = 2114;
        v51 = v30;
        v34 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Skipping biometric/ACL check for bad ACL version: %{public}@", v46, 0x20u);
      }

      v12[2](v12, 0, 0);
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

    v28 = [v22 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] Apple Pay Classic evaluation failed for no completion block", buf, 0x16u);
    }
  }
}

- (void)shouldAttemptApplePayWithCountryCode:(id)a3 paymentNetworks:(id)a4 completion:(id)a5
{
  v25 = a3;
  v26 = a4;
  v9 = a5;
  v27 = AMSSetLogKeyIfNeeded();
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] %{public}@ | countryCode = %{public}@ | paymentNetworks = %{public}@", buf, 0x34u);
  }

  if (v9)
  {
    objc_initWeak(buf, self);
    v16 = [AMSMutableLazyPromise alloc];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10008D950;
    v29[3] = &unk_1002B24A0;
    objc_copyWeak(v33, buf);
    v30 = v25;
    v31 = v27;
    v33[1] = a2;
    v32 = v26;
    v17 = [v16 initWithBlock:v29];
    v28 = 0;
    v18 = [v17 resultWithError:&v28];
    v19 = v28;
    v20 = [v18 BOOLValue];

    v21 = [v19 ams_sanitizedForSecureCoding];
    v9[2](v9, v20, v21);

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

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      *buf = 138543618;
      v35 = v24;
      v36 = 2114;
      v37 = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] Apple Pay Classic evaluation failed for no completion block", buf, 0x16u);
    }
  }
}

- (void)signedHeadersForRequest:(id)a3 buyParams:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() sharedPerformQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008E448;
  v15[3] = &unk_1002B24F0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.signingsecurity" withQueue:v11 whilePerformingBlock:v15];
}

- (void)signChallengeForRequest:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() sharedPerformQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008E674;
  v10[3] = &unk_1002B05B8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.biometrics" withQueue:v7 whilePerformingBlock:v10];
}

- (void)performSilentEnrollmentWithRequest:(id)a3 logKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v9 = AMSSetLogKeyIfNeeded();
  }

  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting silent-enrollment payment session", buf, 0x16u);
  }

  v13 = +[AMSURLSession defaultSession];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008EAF8;
  v17[3] = &unk_1002B2540;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v14 = v10;
  v15 = v9;
  v16 = [v13 dataTaskWithRequest:v8 completionHandler:v17];

  [v16 resume];
}

- (void)handleResponse:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[AMSDBag defaultBag];
  v8 = [AMSAbsinthe handleResponse:v6 bag:v7];

  v5[2](v5, v8);
}

- (void)_absintheHeadersForRequest:(id)a3 bag:(id)a4 buyParams:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = [AMSAbsinthe headersForRequest:a3 buyParams:a5 bag:a4];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008EF70;
  v12[3] = &unk_1002B24C8;
  v13 = v9;
  v11 = v9;
  [v10 addFinishBlock:v12];
}

- (AMSSecurityClientInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end