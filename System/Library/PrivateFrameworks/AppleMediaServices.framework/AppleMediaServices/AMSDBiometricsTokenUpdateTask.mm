@interface AMSDBiometricsTokenUpdateTask
+ (AMSThreadSafeDictionary)lockUptimeDictionary;
+ (id)confirmationDialogRequestForBiometricsType:(int64_t)a3 clientInfo:(id)a4 acceptActionIdentifier:(id *)a5 declineActionIdentifier:(id *)a6;
- (AMSDBiometricsTokenUpdateTask)initWithAccount:(id)a3;
- (AMSSecurityClientInterface)delegate;
- (BOOL)_canAttemptTokenUpdate:(id *)a3;
- (BOOL)_isSupported:(id *)a3;
- (BOOL)_performPasscodeDialogOperationWithError:(id *)a3;
- (BOOL)_presentConfirmation:(id *)a3 currentBiometricsState:(int64_t *)a4;
- (BOOL)_runConfirmationDialogWithError:(id *)a3;
- (BOOL)_shouldCreateCertsWithOption:(id)a3 forCerts:(id)a4;
- (BOOL)_updateTokens:(id *)a3 currentBiometricsState:(int64_t *)a4;
- (id)_buildRequestBodyWithStyle:(unint64_t)a3 primaryCerts:(id)a4 extendedCerts:(id)a5;
- (id)_buildRequestWithBody:(id)a3 bag:(id)a4;
- (id)_handleDialogRequest:(id)a3;
- (id)_lookupAttestationForOption:(id)a3;
- (id)performUpdate;
- (int64_t)_runUpdateRequestWithStyle:(unint64_t)a3 primaryCerts:(id)a4 extendedCerts:(id)a5 error:(id *)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)completeMetricsActivityWithPromise:(id)a3;
- (void)prepareMetricsActivity;
@end

@implementation AMSDBiometricsTokenUpdateTask

- (AMSDBiometricsTokenUpdateTask)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSDBiometricsTokenUpdateTask;
  v6 = [(AMSDBiometricsTokenUpdateTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

+ (id)confirmationDialogRequestForBiometricsType:(int64_t)a3 clientInfo:(id)a4 acceptActionIdentifier:(id *)a5 declineActionIdentifier:(id *)a6
{
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"TOUCHID_CONFIRMATION_DIALOG_OPT_IN_IOS" value:&stru_1002C23E8 table:0];
  v11 = [AMSDialogAction actionWithTitle:v10];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TOUCHID_CONFIRMATION_DIALOG_OPT_OUT" value:&stru_1002C23E8 table:0];
  v14 = [AMSDialogAction actionWithTitle:v13];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = v15;
  v17 = @"TOUCHID_CONFIRMATION_DIALOG_TITLE_IOS";
  if (a3 == 3)
  {
    v17 = @"FACEID_CONFIRMATION_DIALOG_TITLE_IOS";
  }

  if (a3 == 7)
  {
    v18 = @"OPTICID_CONFIRMATION_DIALOG_TITLE_VISIONOS";
  }

  else
  {
    v18 = v17;
  }

  v19 = [v15 localizedStringForKey:v18 value:&stru_1002C23E8 table:0];

  v20 = [[AMSDialogRequest alloc] initWithTitle:v19 message:0];
  v23[0] = v11;
  v23[1] = v14;
  v21 = [NSArray arrayWithObjects:v23 count:2];
  [v20 setButtonActions:v21];

  if (a5)
  {
    *a5 = [v11 identifier];
  }

  if (a6)
  {
    *a6 = [v14 identifier];
  }

  return v20;
}

- (id)performUpdate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004198C;
  v4[3] = &unk_1002AFFB8;
  v4[4] = self;
  v2 = [(AMSDBiometricsTokenUpdateTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

- (BOOL)_presentConfirmation:(id *)a3 currentBiometricsState:(int64_t *)a4
{
  if (![(AMSDBiometricsTokenUpdateTask *)self shouldRequestConfirmation])
  {
    return 0;
  }

  v17 = 0;
  v7 = [(AMSDBiometricsTokenUpdateTask *)self _runConfirmationDialogWithError:&v17];
  v8 = v17;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if ([v8 code] != 6)
    {
      goto LABEL_10;
    }

    v13 = 2;
LABEL_9:
    *a4 = v13;
    [AMSDefaults setDeviceBiometricsState:?];
    goto LABEL_10;
  }

  v16 = v8;
  v10 = [(AMSDBiometricsTokenUpdateTask *)self _performPasscodeDialogOperationWithError:&v16];
  v11 = v16;

  if ((v10 & 1) == 0)
  {
    v13 = 0;
    v9 = v11;
    goto LABEL_9;
  }

  v9 = v11;
LABEL_10:
  if (a3)
  {
    v14 = v9;
    *a3 = v9;
  }

  v12 = v9 == 0;

  return v12;
}

- (id)_lookupAttestationForOption:(id)a3
{
  v3 = a3;
  if ([v3 regenerateKeys])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 style];
    if (v5 > 5)
    {
      v6 = 0;
      v4 = 0;
    }

    else
    {
      if (((1 << v5) & 0x39) != 0)
      {
        v19 = 0;
        v4 = [AMSKeychain certificateChainStringsForOptions:v3 error:&v19];
        v6 = v19;
        v7 = +[AMSLogConfig sharedBiometricsConfig];
        if (!v7)
        {
          v7 = +[AMSLogConfig sharedConfig];
        }

        v8 = [v7 OSLogObject];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          v10 = v9;
          v11 = AMSLogKey();
          v12 = [v4 count];
          *buf = 138544130;
          v21 = v9;
          v22 = 2114;
          v23 = v11;
          v24 = 2050;
          v25 = v12;
          v26 = 2114;
          v27 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found %{public}ld certs in chain (primary), error: %{public}@", buf, 0x2Au);
        }
      }

      else
      {
        v18 = 0;
        v4 = [AMSAttestation attestationWithOptions:v3 error:&v18];
        v6 = v18;
        v7 = +[AMSLogConfig sharedBiometricsConfig];
        if (!v7)
        {
          v7 = +[AMSLogConfig sharedConfig];
        }

        v8 = [v7 OSLogObject];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          v14 = v13;
          v15 = AMSLogKey();
          v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
          *buf = 138544130;
          v21 = v13;
          v22 = 2114;
          v23 = v15;
          v24 = 2114;
          v25 = v16;
          v26 = 2114;
          v27 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did fetch attestation: %{public}@, error: %{public}@", buf, 0x2Au);
        }
      }
    }
  }

  return v4;
}

- (BOOL)_shouldCreateCertsWithOption:(id)a3 forCerts:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ![v5 style] && objc_msgSend(v6, "count") != 2 || objc_msgSend(v5, "style") == 3 && objc_msgSend(v6, "count") != 2 || objc_msgSend(v5, "style") == 4 && objc_msgSend(v6, "count") != 2 || objc_msgSend(v5, "style") == 5 && objc_msgSend(v6, "count") != 2 || objc_msgSend(v5, "style") == 1 && objc_msgSend(v6, "count") != 1 || objc_msgSend(v5, "style") == 2 && objc_msgSend(v6, "count") != 1;

  return v7;
}

- (BOOL)_updateTokens:(id *)a3 currentBiometricsState:(int64_t *)a4
{
  v5 = +[AMSKeychainOptions preferredAttestationStyle];
  v6 = 1;
  v94 = [(AMSDBiometricsTokenUpdateTask *)self _keychainOptionWithPurpose:0 style:v5 regenerate:1];
  v89 = v5;
  v92 = [(AMSDBiometricsTokenUpdateTask *)self _keychainOptionWithPurpose:1 style:v5 regenerate:1];
  v7 = 0;
  v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  while (1)
  {
    v91 = v6;
    v9 = [(AMSDBiometricsTokenUpdateTask *)self account];
    v10 = [AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:v9];

    if (v10)
    {
      break;
    }

    v36 = [(AMSDBiometricsTokenUpdateTask *)self _lookupAttestationForOption:v94];
    if ([(AMSDBiometricsTokenUpdateTask *)self _shouldCreateCertsWithOption:v94 forCerts:v36])
    {
      v37 = [v8[95] sharedBiometricsConfig];
      if (!v37)
      {
        v37 = [v8[95] sharedConfig];
      }

      v38 = [v37 OSLogObject];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        v40 = v39;
        v41 = AMSLogKey();
        v42 = [v94 style];
        *buf = 138543874;
        v101 = v39;
        v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
        v102 = 2114;
        v103 = v41;
        v104 = 2048;
        v105 = v42;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating attestation tokens (primary) for style: %ld", buf, 0x20u);
      }

      v97 = v7;
      v93 = [AMSAttestation attestationWithOptions:v94 error:&v97];
      v43 = v97;

      v44 = [v8[95] sharedBiometricsConfig];
      if (!v44)
      {
        v44 = [v8[95] sharedConfig];
      }

      v45 = [v44 OSLogObject];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = objc_opt_class();
        v47 = v46;
        v48 = AMSLogKey();
        v49 = [v93 count];
        v50 = [v94 style];
        *buf = 138544386;
        v101 = v46;
        v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
        v102 = 2114;
        v103 = v48;
        v104 = 2048;
        v105 = v49;
        v106 = 2048;
        v107 = v50;
        v108 = 2114;
        v109 = v43;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished creating attestation tokens (primary). Count: %ld, Style: %ld, error: %{public}@", buf, 0x34u);
      }
    }

    else
    {
      v93 = v36;
      v43 = v7;
    }

    v96 = v43;
    v35 = [AMSAttestation attestationWithOptions:v92 error:&v96];
    v7 = v96;

    v51 = [v8[95] sharedBiometricsConfig];
    if (!v51)
    {
      v51 = [v8[95] sharedConfig];
    }

    v52 = [v51 OSLogObject];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = objc_opt_class();
      v54 = v53;
      v55 = AMSSetLogKeyIfNeeded();
      v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v35 count]);
      v57 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v92 style]);
      *buf = 138544386;
      v101 = v53;
      v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      v102 = 2114;
      v103 = v55;
      v104 = 2114;
      v105 = v56;
      v106 = 2114;
      v107 = v57;
      v108 = 2114;
      v109 = v7;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished creating attestation tokens (extended). Count: %{public}@, Style: %{public}@, error: %{public}@", buf, 0x34u);
    }

    if (v7)
    {
      goto LABEL_58;
    }

LABEL_35:
    if ([(AMSDBiometricsTokenUpdateTask *)self shouldGenerateKeysOnly])
    {
      v7 = 0;
      goto LABEL_58;
    }

    v58 = [v8[95] sharedBiometricsConfig];
    if (!v58)
    {
      v58 = [v8[95] sharedConfig];
    }

    v59 = [v58 OSLogObject];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_opt_class();
      v61 = v60;
      v62 = AMSLogKey();
      *buf = 138543618;
      v101 = v60;
      v102 = 2114;
      v103 = v62;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running update request", buf, 0x16u);

      v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    }

    v95 = 0;
    v63 = [(AMSDBiometricsTokenUpdateTask *)self _runUpdateRequestWithStyle:v89 primaryCerts:v93 extendedCerts:v35 error:&v95];
    v7 = v95;
    if (v63 != 498)
    {
      goto LABEL_64;
    }

    v64 = [v8[95] sharedBiometricsConfig];
    if (!v64)
    {
      v64 = [v8[95] sharedConfig];
    }

    v65 = [v64 OSLogObject];
    v66 = v90;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v67 = AMSLogKey();
      v68 = objc_opt_class();
      v69 = v68;
      if (v67)
      {
        v87 = AMSLogKey();
        v70 = [NSString stringWithFormat:@"%@: [%@] ", v69, v87];
        v86 = v70;
      }

      else
      {
        v70 = [NSString stringWithFormat:@"%@: ", v68];
        v66 = v70;
      }

      *buf = 138543618;
      v101 = v70;
      v102 = 2048;
      v103 = a4;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%{public}@Retry token update request biometrics state = %ld", buf, 0x16u);
      v71 = v66;
      if (v67)
      {

        v71 = v87;
      }

      v90 = v66;
    }

    [v94 setRegenerateKeys:1];
    [v92 setRegenerateKeys:1];

    v6 = 0;
    if ((v91 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v11 = [v8[95] sharedBiometricsConfig];
  if (!v11)
  {
    v11 = [v8[95] sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = AMSLogKey();
    v16 = [(AMSDBiometricsTokenUpdateTask *)self account];
    v17 = AMSHashIfNeeded();
    v18 = [v94 style];
    *buf = 138544130;
    v101 = v13;
    v102 = 2114;
    v103 = v15;
    v104 = 2114;
    v105 = v17;
    v106 = 2048;
    v107 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating attestation tokens (primary) for account: %{public}@ for style: %ld", buf, 0x2Au);
  }

  v19 = [(AMSDBiometricsTokenUpdateTask *)self account];
  v99 = v7;
  v93 = [AMSAttestation attestationWithAccount:v19 options:v94 error:&v99];
  v20 = v99;

  if (v20)
  {
    v21 = [v8[95] sharedBiometricsConfig];
    if (!v21)
    {
      v21 = [v8[95] sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = v23;
      v25 = AMSLogKey();
      *buf = 138543874;
      v101 = v23;
      v102 = 2114;
      v103 = v25;
      v104 = 2114;
      v105 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed creating attestation tokens (primary) with error: %{public}@", buf, 0x20u);
    }
  }

  v26 = [v8[95] sharedBiometricsConfig];
  if (!v26)
  {
    v26 = [v8[95] sharedConfig];
  }

  v27 = [v26 OSLogObject];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = v28;
    v30 = AMSLogKey();
    v31 = [(AMSDBiometricsTokenUpdateTask *)self account];
    v32 = AMSHashIfNeeded();
    v33 = [v94 style];
    *buf = 138544130;
    v101 = v28;
    v102 = 2114;
    v103 = v30;
    v104 = 2114;
    v105 = v32;
    v106 = 2048;
    v107 = v33;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating attestation tokens (extended) for account: %{public}@ for style: %ld", buf, 0x2Au);
  }

  v34 = [(AMSDBiometricsTokenUpdateTask *)self account];
  v98 = v20;
  v35 = [AMSAttestation attestationWithAccount:v34 options:v92 error:&v98];
  v7 = v98;

  v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  if (!v7)
  {
    goto LABEL_35;
  }

  v72 = +[AMSLogConfig sharedBiometricsConfig];
  v73 = v72;
  if (!v72)
  {
    v73 = +[AMSLogConfig sharedConfig];
  }

  v74 = [v73 OSLogObject];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    v75 = objc_opt_class();
    v76 = v75;
    v77 = AMSLogKey();
    *buf = 138543874;
    v101 = v75;
    v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    v102 = 2114;
    v103 = v77;
    v104 = 2114;
    v105 = v7;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed creating attestation tokens (extended) with error: %{public}@", buf, 0x20u);
  }

LABEL_58:
  if ([(AMSDBiometricsTokenUpdateTask *)self shouldGenerateKeysOnly])
  {
    v78 = [v8[95] sharedBiometricsConfig];
    if (!v78)
    {
      v78 = [v8[95] sharedConfig];
    }

    v79 = [v78 OSLogObject];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = objc_opt_class();
      v81 = v80;
      v82 = AMSLogKey();
      *buf = 138543618;
      v101 = v80;
      v102 = 2114;
      v103 = v82;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping attestation due to shouldGenerateKeysOnly being set", buf, 0x16u);
    }
  }

LABEL_64:

LABEL_65:
  if (a3)
  {
    v83 = v7;
    *a3 = v7;
  }

  return v7 == 0;
}

- (BOOL)_isSupported:(id *)a3
{
  if (+[AMSBiometrics type](AMSBiometrics, "type") && +[AMSBiometrics type]!= 1)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = AMSError();
    if (a3)
    {
      v4 = v4;
      v5 = 0;
      *a3 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_canAttemptTokenUpdate:(id *)a3
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100043918;
  v24 = sub_100043928;
  v25 = 0;
  v5 = +[NSProcessInfo processInfo];
  [v5 systemUptime];
  v7 = v6;

  v8 = [(AMSDBiometricsTokenUpdateTask *)self account];
  v9 = [v8 identifier];

  v10 = [objc_opt_class() lockUptimeDictionary];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100043930;
  v14[3] = &unk_1002AFFE0;
  v11 = v9;
  v19 = v7;
  v15 = v11;
  v16 = self;
  v17 = &v26;
  v18 = &v20;
  [v10 readWrite:v14];

  v12 = *(v27 + 24);
  if (a3 && (v27[3] & 1) == 0)
  {
    *a3 = v21[5];
    v12 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v12 & 1;
}

- (BOOL)_runConfirmationDialogWithError:(id *)a3
{
  v5 = objc_opt_class();
  v6 = +[AMSBiometrics type];
  v7 = [(AMSDBiometricsTokenUpdateTask *)self clientInfo];
  v37 = 0;
  v38 = 0;
  v8 = [v5 confirmationDialogRequestForBiometricsType:v6 clientInfo:v7 acceptActionIdentifier:&v38 declineActionIdentifier:&v37];
  v9 = v38;
  v10 = v37;

  v11 = [(AMSDBiometricsTokenUpdateTask *)self _handleDialogRequest:v8];
  v36 = 0;
  v12 = [v11 resultWithError:&v36];
  v13 = v36;

  v14 = [v12 selectedActionIdentifier];
  v15 = [v14 isEqualToString:v9];

  if (v15)
  {
    v16 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a3;
      v19 = objc_opt_class();
      v32 = v19;
      AMSLogKey();
      v34 = v8;
      v20 = v9;
      v22 = v21 = v10;
      *buf = 138543618;
      v40 = v19;
      a3 = v18;
      v41 = 2114;
      v42 = v22;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Biometrics confirmation dialog accepted", buf, 0x16u);

      v10 = v21;
      v9 = v20;
      v8 = v34;
    }
  }

  else
  {
    v23 = [v12 selectedActionIdentifier];
    v35 = v10;
    v24 = [v23 isEqualToString:v10];

    if (v24)
    {
      v25 = +[AMSLogConfig sharedBiometricsConfig];
      if (!v25)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v33 = v27;
        AMSLogKey();
        v29 = v28 = a3;
        *buf = 138543618;
        v40 = v27;
        v41 = 2114;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Biometrics confirmation dialog declined", buf, 0x16u);

        a3 = v28;
      }
    }

    AMSError();
    v13 = v16 = v13;
    v10 = v35;
  }

  [(AMSDBiometricsTokenUpdateTask *)self _sendMetricsForDialog];
  if (a3)
  {
    v30 = v13;
    *a3 = v13;
  }

  return v13 == 0;
}

- (BOOL)_performPasscodeDialogOperationWithError:(id *)a3
{
  v5 = [_TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask alloc];
  v6 = [(AMSDBiometricsTokenUpdateTask *)self clientInfo];
  v7 = [(AMSDVerifyDevicePasscodeTask *)v5 initWithClientInfo:v6];

  v8 = [(AMSDVerifyDevicePasscodeTask *)v7 perform];
  v17 = 0;
  v9 = [v8 resultWithError:&v17];
  v10 = v17;
  if (v10)
  {
    v11 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543874;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Passcode operation failed with error: %{public}@", buf, 0x20u);
    }
  }

  if (a3)
  {
    v15 = v10;
    *a3 = v10;
  }

  return v9;
}

- (id)_buildRequestBodyWithStyle:(unint64_t)a3 primaryCerts:(id)a4 extendedCerts:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = v9;
  if (a3 - 1 > 1)
  {
    if (v7)
    {
      [v9 setObject:v7 forKeyedSubscript:@"primaryX509Chain"];
    }

    if (v8)
    {
      [v10 setObject:v8 forKeyedSubscript:@"extendedX509Chain"];
    }
  }

  else
  {
    if ([v7 count])
    {
      v11 = [v7 objectAtIndexedSubscript:0];
      [v10 setObject:v11 forKeyedSubscript:@"touchIdAttestation"];
    }

    if ([v8 count])
    {
      v12 = [v8 objectAtIndexedSubscript:0];
      [v10 setObject:v12 forKeyedSubscript:@"extendedAttestation"];
    }
  }

  return v10;
}

- (id)_buildRequestWithBody:(id)a3 bag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSDBiometricsTokenUpdateTask *)self clientInfo];
  if (!v8)
  {
    v8 = +[AMSProcessInfo currentProcess];
    [v8 setAccountMediaType:AMSAccountMediaTypeProduction];
    v9 = [(AMSDBiometricsTokenUpdateTask *)self account];
    v10 = [v9 ams_isSandboxAccount];

    if (v10)
    {
      [v8 setAccountMediaType:AMSAccountMediaTypeAppStoreSandbox];
    }
  }

  v11 = [[AMSURLRequestEncoder alloc] initWithBag:v6];
  v12 = [(AMSDBiometricsTokenUpdateTask *)self account];
  [v11 setAccount:v12];

  [v11 setClientInfo:v8];
  [v11 setRequestEncoding:2];
  v13 = [(AMSDBiometricsTokenUpdateTask *)self account];
  v14 = [v6 URLForKey:@"update-touch-id-settings" account:v13];

  v15 = [v11 requestWithMethod:4 bagURL:v14 parameters:v7];

  return v15;
}

- (int64_t)_runUpdateRequestWithStyle:(unint64_t)a3 primaryCerts:(id)a4 extendedCerts:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v39 = v14;
    AMSLogKey();
    v15 = a3;
    v17 = v16 = a6;
    *buf = 138544130;
    v46 = v14;
    v47 = 2114;
    v48 = v17;
    v49 = 2048;
    v50 = [v10 count];
    v51 = 2048;
    v52 = [v11 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running update task. (primaryCount: %ld, extendedCount: %ld)", buf, 0x2Au);

    a6 = v16;
    a3 = v15;
  }

  v18 = +[AMSProcessInfo currentProcess];
  v19 = [v18 accountMediaType];

  v20 = [(AMSDBiometricsTokenUpdateTask *)self account];
  v21 = [v20 ams_isSandboxAccount];

  if (v21)
  {
    v22 = AMSAccountMediaTypeAppStoreSandbox;

    v19 = v22;
  }

  v23 = [AMSDBag bagForMediaType:v19];
  v38 = v11;
  v40 = v10;
  v24 = [(AMSDBiometricsTokenUpdateTask *)self _buildRequestBodyWithStyle:a3 primaryCerts:v10 extendedCerts:v11];
  v25 = [(AMSDBiometricsTokenUpdateTask *)self _buildRequestWithBody:v24 bag:v23];
  [(AMSDBiometricsTokenUpdateTask *)self prepareMetricsActivity];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000448A8;
  v42[3] = &unk_1002B0008;
  v26 = v23;
  v43 = v26;
  v44 = self;
  v27 = [v25 thenWithBlock:v42];
  [(AMSDBiometricsTokenUpdateTask *)self completeMetricsActivityWithPromise:v27];
  v41 = 0;
  v28 = [v27 resultWithError:&v41];
  v29 = v41;
  v30 = [(AMSDBiometricsTokenUpdateTask *)self session];
  [v30 invalidateAndCancel];

  if (v29)
  {
    v31 = 0;
    if (a6)
    {
LABEL_9:
      v32 = v29;
      *a6 = v29;
    }
  }

  else
  {
    v37 = a6;
    v34 = [v28 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = [v35 objectForKeyedSubscript:@"status"];
    if (objc_opt_respondsToSelector())
    {
      v31 = [v36 integerValue];
      v29 = 0;
    }

    else
    {
      v29 = AMSError();
      v31 = 0;
    }

    a6 = v37;
    if (v37)
    {
      goto LABEL_9;
    }
  }

  return v31;
}

- (id)_handleDialogRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = AMSLogKey();
    *buf = 138543874;
    v18 = v8;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Informing delegate about dialog request. Request: %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v11 = [(AMSDBiometricsTokenUpdateTask *)self delegate];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100044BF0;
  v14[3] = &unk_1002B0030;
  objc_copyWeak(&v16, buf);
  v12 = v5;
  v15 = v12;
  [v11 handleDialogRequest:v4 completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  return v12;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v23 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = AMSLogKey();
    v18 = AMSHashIfNeeded();
    *buf = 138543874;
    v28 = v15;
    v29 = 2114;
    v30 = v17;
    v31 = 2114;
    v32 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Informing delegate about authenticate request. Request: %{public}@", buf, 0x20u);
  }

  v19 = [(AMSDBiometricsTokenUpdateTask *)self delegate];
  v20 = v19 == 0;

  if (v20)
  {
    v22 = AMSError();
    v12[2](v12, 0, v22);
  }

  else
  {
    objc_initWeak(buf, self);
    v21 = [(AMSDBiometricsTokenUpdateTask *)self delegate];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100045014;
    v24[3] = &unk_1002B0058;
    objc_copyWeak(&v26, buf);
    v25 = v12;
    [v21 handleAuthenticateRequest:v11 completion:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [(AMSDBiometricsTokenUpdateTask *)self _handleDialogRequest:a5];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100045278;
  v11[3] = &unk_1002B0080;
  v12 = v8;
  v10 = v8;
  [v9 addFinishBlock:v11];
}

- (AMSSecurityClientInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (AMSThreadSafeDictionary)lockUptimeDictionary
{
  if (qword_1002E31A8 != -1)
  {
    sub_10021B14C();
  }

  v3 = qword_1002E31B0;

  return v3;
}

- (void)prepareMetricsActivity
{
  v2 = self;
  AMSDBiometricsTokenUpdateTask.prepareMetricsActivity()();
}

- (void)completeMetricsActivityWithPromise:(id)a3
{
  v4 = a3;
  v5 = self;
  AMSDBiometricsTokenUpdateTask.completeMetricsActivity(promise:)();
}

@end