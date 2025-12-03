@interface AMSDBiometricsTokenUpdateTask
+ (AMSThreadSafeDictionary)lockUptimeDictionary;
+ (id)confirmationDialogRequestForBiometricsType:(int64_t)type clientInfo:(id)info acceptActionIdentifier:(id *)identifier declineActionIdentifier:(id *)actionIdentifier;
- (AMSDBiometricsTokenUpdateTask)initWithAccount:(id)account;
- (AMSSecurityClientInterface)delegate;
- (BOOL)_canAttemptTokenUpdate:(id *)update;
- (BOOL)_isSupported:(id *)supported;
- (BOOL)_performPasscodeDialogOperationWithError:(id *)error;
- (BOOL)_presentConfirmation:(id *)confirmation currentBiometricsState:(int64_t *)state;
- (BOOL)_runConfirmationDialogWithError:(id *)error;
- (BOOL)_shouldCreateCertsWithOption:(id)option forCerts:(id)certs;
- (BOOL)_updateTokens:(id *)tokens currentBiometricsState:(int64_t *)state;
- (id)_buildRequestBodyWithStyle:(unint64_t)style primaryCerts:(id)certs extendedCerts:(id)extendedCerts;
- (id)_buildRequestWithBody:(id)body bag:(id)bag;
- (id)_handleDialogRequest:(id)request;
- (id)_lookupAttestationForOption:(id)option;
- (id)performUpdate;
- (int64_t)_runUpdateRequestWithStyle:(unint64_t)style primaryCerts:(id)certs extendedCerts:(id)extendedCerts error:(id *)error;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)completeMetricsActivityWithPromise:(id)promise;
- (void)prepareMetricsActivity;
@end

@implementation AMSDBiometricsTokenUpdateTask

- (AMSDBiometricsTokenUpdateTask)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AMSDBiometricsTokenUpdateTask;
  v6 = [(AMSDBiometricsTokenUpdateTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

+ (id)confirmationDialogRequestForBiometricsType:(int64_t)type clientInfo:(id)info acceptActionIdentifier:(id *)identifier declineActionIdentifier:(id *)actionIdentifier
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
  if (type == 3)
  {
    v17 = @"FACEID_CONFIRMATION_DIALOG_TITLE_IOS";
  }

  if (type == 7)
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

  if (identifier)
  {
    *identifier = [v11 identifier];
  }

  if (actionIdentifier)
  {
    *actionIdentifier = [v14 identifier];
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

- (BOOL)_presentConfirmation:(id *)confirmation currentBiometricsState:(int64_t *)state
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
    *state = v13;
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
  if (confirmation)
  {
    v14 = v9;
    *confirmation = v9;
  }

  v12 = v9 == 0;

  return v12;
}

- (id)_lookupAttestationForOption:(id)option
{
  optionCopy = option;
  if ([optionCopy regenerateKeys])
  {
    v4 = 0;
  }

  else
  {
    style = [optionCopy style];
    if (style > 5)
    {
      v6 = 0;
      v4 = 0;
    }

    else
    {
      if (((1 << style) & 0x39) != 0)
      {
        v19 = 0;
        v4 = [AMSKeychain certificateChainStringsForOptions:optionCopy error:&v19];
        v6 = v19;
        v7 = +[AMSLogConfig sharedBiometricsConfig];
        if (!v7)
        {
          v7 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v7 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
          _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found %{public}ld certs in chain (primary), error: %{public}@", buf, 0x2Au);
        }
      }

      else
      {
        v18 = 0;
        v4 = [AMSAttestation attestationWithOptions:optionCopy error:&v18];
        v6 = v18;
        v7 = +[AMSLogConfig sharedBiometricsConfig];
        if (!v7)
        {
          v7 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v7 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
          _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did fetch attestation: %{public}@, error: %{public}@", buf, 0x2Au);
        }
      }
    }
  }

  return v4;
}

- (BOOL)_shouldCreateCertsWithOption:(id)option forCerts:(id)certs
{
  optionCopy = option;
  certsCopy = certs;
  v7 = ![optionCopy style] && objc_msgSend(certsCopy, "count") != 2 || objc_msgSend(optionCopy, "style") == 3 && objc_msgSend(certsCopy, "count") != 2 || objc_msgSend(optionCopy, "style") == 4 && objc_msgSend(certsCopy, "count") != 2 || objc_msgSend(optionCopy, "style") == 5 && objc_msgSend(certsCopy, "count") != 2 || objc_msgSend(optionCopy, "style") == 1 && objc_msgSend(certsCopy, "count") != 1 || objc_msgSend(optionCopy, "style") == 2 && objc_msgSend(certsCopy, "count") != 1;

  return v7;
}

- (BOOL)_updateTokens:(id *)tokens currentBiometricsState:(int64_t *)state
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
    account = [(AMSDBiometricsTokenUpdateTask *)self account];
    v10 = [AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:account];

    if (v10)
    {
      break;
    }

    v36 = [(AMSDBiometricsTokenUpdateTask *)self _lookupAttestationForOption:v94];
    if ([(AMSDBiometricsTokenUpdateTask *)self _shouldCreateCertsWithOption:v94 forCerts:v36])
    {
      sharedBiometricsConfig = [v8[95] sharedBiometricsConfig];
      if (!sharedBiometricsConfig)
      {
        sharedBiometricsConfig = [v8[95] sharedConfig];
      }

      oSLogObject = [sharedBiometricsConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        v40 = v39;
        v41 = AMSLogKey();
        style = [v94 style];
        *buf = 138543874;
        v101 = v39;
        v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
        v102 = 2114;
        stateCopy = v41;
        v104 = 2048;
        v105 = style;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating attestation tokens (primary) for style: %ld", buf, 0x20u);
      }

      v97 = v7;
      v93 = [AMSAttestation attestationWithOptions:v94 error:&v97];
      v43 = v97;

      sharedBiometricsConfig2 = [v8[95] sharedBiometricsConfig];
      if (!sharedBiometricsConfig2)
      {
        sharedBiometricsConfig2 = [v8[95] sharedConfig];
      }

      oSLogObject2 = [sharedBiometricsConfig2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v46 = objc_opt_class();
        v47 = v46;
        v48 = AMSLogKey();
        v49 = [v93 count];
        style2 = [v94 style];
        *buf = 138544386;
        v101 = v46;
        v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
        v102 = 2114;
        stateCopy = v48;
        v104 = 2048;
        v105 = v49;
        v106 = 2048;
        v107 = style2;
        v108 = 2114;
        v109 = v43;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished creating attestation tokens (primary). Count: %ld, Style: %ld, error: %{public}@", buf, 0x34u);
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

    sharedBiometricsConfig3 = [v8[95] sharedBiometricsConfig];
    if (!sharedBiometricsConfig3)
    {
      sharedBiometricsConfig3 = [v8[95] sharedConfig];
    }

    oSLogObject3 = [sharedBiometricsConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
      stateCopy = v55;
      v104 = 2114;
      v105 = v56;
      v106 = 2114;
      v107 = v57;
      v108 = 2114;
      v109 = v7;
      _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished creating attestation tokens (extended). Count: %{public}@, Style: %{public}@, error: %{public}@", buf, 0x34u);
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

    sharedBiometricsConfig4 = [v8[95] sharedBiometricsConfig];
    if (!sharedBiometricsConfig4)
    {
      sharedBiometricsConfig4 = [v8[95] sharedConfig];
    }

    oSLogObject4 = [sharedBiometricsConfig4 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_opt_class();
      v61 = v60;
      v62 = AMSLogKey();
      *buf = 138543618;
      v101 = v60;
      v102 = 2114;
      stateCopy = v62;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running update request", buf, 0x16u);

      v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    }

    v95 = 0;
    v63 = [(AMSDBiometricsTokenUpdateTask *)self _runUpdateRequestWithStyle:v89 primaryCerts:v93 extendedCerts:v35 error:&v95];
    v7 = v95;
    if (v63 != 498)
    {
      goto LABEL_64;
    }

    sharedBiometricsConfig5 = [v8[95] sharedBiometricsConfig];
    if (!sharedBiometricsConfig5)
    {
      sharedBiometricsConfig5 = [v8[95] sharedConfig];
    }

    oSLogObject5 = [sharedBiometricsConfig5 OSLogObject];
    v66 = v90;
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
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
      stateCopy = state;
      _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@Retry token update request biometrics state = %ld", buf, 0x16u);
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

  sharedBiometricsConfig6 = [v8[95] sharedBiometricsConfig];
  if (!sharedBiometricsConfig6)
  {
    sharedBiometricsConfig6 = [v8[95] sharedConfig];
  }

  oSLogObject6 = [sharedBiometricsConfig6 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = AMSLogKey();
    account2 = [(AMSDBiometricsTokenUpdateTask *)self account];
    v17 = AMSHashIfNeeded();
    style3 = [v94 style];
    *buf = 138544130;
    v101 = v13;
    v102 = 2114;
    stateCopy = v15;
    v104 = 2114;
    v105 = v17;
    v106 = 2048;
    v107 = style3;
    _os_log_impl(&_mh_execute_header, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating attestation tokens (primary) for account: %{public}@ for style: %ld", buf, 0x2Au);
  }

  account3 = [(AMSDBiometricsTokenUpdateTask *)self account];
  v99 = v7;
  v93 = [AMSAttestation attestationWithAccount:account3 options:v94 error:&v99];
  v20 = v99;

  if (v20)
  {
    sharedBiometricsConfig7 = [v8[95] sharedBiometricsConfig];
    if (!sharedBiometricsConfig7)
    {
      sharedBiometricsConfig7 = [v8[95] sharedConfig];
    }

    oSLogObject7 = [sharedBiometricsConfig7 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = v23;
      v25 = AMSLogKey();
      *buf = 138543874;
      v101 = v23;
      v102 = 2114;
      stateCopy = v25;
      v104 = 2114;
      v105 = v20;
      _os_log_impl(&_mh_execute_header, oSLogObject7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed creating attestation tokens (primary) with error: %{public}@", buf, 0x20u);
    }
  }

  sharedBiometricsConfig8 = [v8[95] sharedBiometricsConfig];
  if (!sharedBiometricsConfig8)
  {
    sharedBiometricsConfig8 = [v8[95] sharedConfig];
  }

  oSLogObject8 = [sharedBiometricsConfig8 OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = v28;
    v30 = AMSLogKey();
    account4 = [(AMSDBiometricsTokenUpdateTask *)self account];
    v32 = AMSHashIfNeeded();
    style4 = [v94 style];
    *buf = 138544130;
    v101 = v28;
    v102 = 2114;
    stateCopy = v30;
    v104 = 2114;
    v105 = v32;
    v106 = 2048;
    v107 = style4;
    _os_log_impl(&_mh_execute_header, oSLogObject8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating attestation tokens (extended) for account: %{public}@ for style: %ld", buf, 0x2Au);
  }

  account5 = [(AMSDBiometricsTokenUpdateTask *)self account];
  v98 = v20;
  v35 = [AMSAttestation attestationWithAccount:account5 options:v92 error:&v98];
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

  oSLogObject9 = [v73 OSLogObject];
  if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
  {
    v75 = objc_opt_class();
    v76 = v75;
    v77 = AMSLogKey();
    *buf = 138543874;
    v101 = v75;
    v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    v102 = 2114;
    stateCopy = v77;
    v104 = 2114;
    v105 = v7;
    _os_log_impl(&_mh_execute_header, oSLogObject9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed creating attestation tokens (extended) with error: %{public}@", buf, 0x20u);
  }

LABEL_58:
  if ([(AMSDBiometricsTokenUpdateTask *)self shouldGenerateKeysOnly])
  {
    sharedBiometricsConfig9 = [v8[95] sharedBiometricsConfig];
    if (!sharedBiometricsConfig9)
    {
      sharedBiometricsConfig9 = [v8[95] sharedConfig];
    }

    oSLogObject10 = [sharedBiometricsConfig9 OSLogObject];
    if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
    {
      v80 = objc_opt_class();
      v81 = v80;
      v82 = AMSLogKey();
      *buf = 138543618;
      v101 = v80;
      v102 = 2114;
      stateCopy = v82;
      _os_log_impl(&_mh_execute_header, oSLogObject10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping attestation due to shouldGenerateKeysOnly being set", buf, 0x16u);
    }
  }

LABEL_64:

LABEL_65:
  if (tokens)
  {
    v83 = v7;
    *tokens = v7;
  }

  return v7 == 0;
}

- (BOOL)_isSupported:(id *)supported
{
  if (+[AMSBiometrics type](AMSBiometrics, "type") && +[AMSBiometrics type]!= 1)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = AMSError();
    if (supported)
    {
      v4 = v4;
      v5 = 0;
      *supported = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_canAttemptTokenUpdate:(id *)update
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

  account = [(AMSDBiometricsTokenUpdateTask *)self account];
  identifier = [account identifier];

  lockUptimeDictionary = [objc_opt_class() lockUptimeDictionary];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100043930;
  v14[3] = &unk_1002AFFE0;
  v11 = identifier;
  v19 = v7;
  v15 = v11;
  selfCopy = self;
  v17 = &v26;
  v18 = &v20;
  [lockUptimeDictionary readWrite:v14];

  v12 = *(v27 + 24);
  if (update && (v27[3] & 1) == 0)
  {
    *update = v21[5];
    v12 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v12 & 1;
}

- (BOOL)_runConfirmationDialogWithError:(id *)error
{
  v5 = objc_opt_class();
  v6 = +[AMSBiometrics type];
  clientInfo = [(AMSDBiometricsTokenUpdateTask *)self clientInfo];
  v37 = 0;
  v38 = 0;
  v8 = [v5 confirmationDialogRequestForBiometricsType:v6 clientInfo:clientInfo acceptActionIdentifier:&v38 declineActionIdentifier:&v37];
  v9 = v38;
  v10 = v37;

  v11 = [(AMSDBiometricsTokenUpdateTask *)self _handleDialogRequest:v8];
  v36 = 0;
  v12 = [v11 resultWithError:&v36];
  v13 = v36;

  selectedActionIdentifier = [v12 selectedActionIdentifier];
  v15 = [selectedActionIdentifier isEqualToString:v9];

  if (v15)
  {
    v16 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      errorCopy = error;
      v19 = objc_opt_class();
      v32 = v19;
      AMSLogKey();
      v34 = v8;
      v20 = v9;
      v22 = v21 = v10;
      *buf = 138543618;
      v40 = v19;
      error = errorCopy;
      v41 = 2114;
      v42 = v22;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Biometrics confirmation dialog accepted", buf, 0x16u);

      v10 = v21;
      v9 = v20;
      v8 = v34;
    }
  }

  else
  {
    selectedActionIdentifier2 = [v12 selectedActionIdentifier];
    v35 = v10;
    v24 = [selectedActionIdentifier2 isEqualToString:v10];

    if (v24)
    {
      v25 = +[AMSLogConfig sharedBiometricsConfig];
      if (!v25)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v25 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v33 = v27;
        AMSLogKey();
        v29 = v28 = error;
        *buf = 138543618;
        v40 = v27;
        v41 = 2114;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Biometrics confirmation dialog declined", buf, 0x16u);

        error = v28;
      }
    }

    AMSError();
    v13 = v16 = v13;
    v10 = v35;
  }

  [(AMSDBiometricsTokenUpdateTask *)self _sendMetricsForDialog];
  if (error)
  {
    v30 = v13;
    *error = v13;
  }

  return v13 == 0;
}

- (BOOL)_performPasscodeDialogOperationWithError:(id *)error
{
  v5 = [_TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask alloc];
  clientInfo = [(AMSDBiometricsTokenUpdateTask *)self clientInfo];
  v7 = [(AMSDVerifyDevicePasscodeTask *)v5 initWithClientInfo:clientInfo];

  perform = [(AMSDVerifyDevicePasscodeTask *)v7 perform];
  v17 = 0;
  v9 = [perform resultWithError:&v17];
  v10 = v17;
  if (v10)
  {
    v11 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543874;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Passcode operation failed with error: %{public}@", buf, 0x20u);
    }
  }

  if (error)
  {
    v15 = v10;
    *error = v10;
  }

  return v9;
}

- (id)_buildRequestBodyWithStyle:(unint64_t)style primaryCerts:(id)certs extendedCerts:(id)extendedCerts
{
  certsCopy = certs;
  extendedCertsCopy = extendedCerts;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = v9;
  if (style - 1 > 1)
  {
    if (certsCopy)
    {
      [v9 setObject:certsCopy forKeyedSubscript:@"primaryX509Chain"];
    }

    if (extendedCertsCopy)
    {
      [v10 setObject:extendedCertsCopy forKeyedSubscript:@"extendedX509Chain"];
    }
  }

  else
  {
    if ([certsCopy count])
    {
      v11 = [certsCopy objectAtIndexedSubscript:0];
      [v10 setObject:v11 forKeyedSubscript:@"touchIdAttestation"];
    }

    if ([extendedCertsCopy count])
    {
      v12 = [extendedCertsCopy objectAtIndexedSubscript:0];
      [v10 setObject:v12 forKeyedSubscript:@"extendedAttestation"];
    }
  }

  return v10;
}

- (id)_buildRequestWithBody:(id)body bag:(id)bag
{
  bagCopy = bag;
  bodyCopy = body;
  clientInfo = [(AMSDBiometricsTokenUpdateTask *)self clientInfo];
  if (!clientInfo)
  {
    clientInfo = +[AMSProcessInfo currentProcess];
    [clientInfo setAccountMediaType:AMSAccountMediaTypeProduction];
    account = [(AMSDBiometricsTokenUpdateTask *)self account];
    ams_isSandboxAccount = [account ams_isSandboxAccount];

    if (ams_isSandboxAccount)
    {
      [clientInfo setAccountMediaType:AMSAccountMediaTypeAppStoreSandbox];
    }
  }

  v11 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
  account2 = [(AMSDBiometricsTokenUpdateTask *)self account];
  [v11 setAccount:account2];

  [v11 setClientInfo:clientInfo];
  [v11 setRequestEncoding:2];
  account3 = [(AMSDBiometricsTokenUpdateTask *)self account];
  v14 = [bagCopy URLForKey:@"update-touch-id-settings" account:account3];

  v15 = [v11 requestWithMethod:4 bagURL:v14 parameters:bodyCopy];

  return v15;
}

- (int64_t)_runUpdateRequestWithStyle:(unint64_t)style primaryCerts:(id)certs extendedCerts:(id)extendedCerts error:(id *)error
{
  certsCopy = certs;
  extendedCertsCopy = extendedCerts;
  v12 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v39 = v14;
    AMSLogKey();
    styleCopy = style;
    v17 = v16 = error;
    *buf = 138544130;
    v46 = v14;
    v47 = 2114;
    v48 = v17;
    v49 = 2048;
    v50 = [certsCopy count];
    v51 = 2048;
    v52 = [extendedCertsCopy count];
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running update task. (primaryCount: %ld, extendedCount: %ld)", buf, 0x2Au);

    error = v16;
    style = styleCopy;
  }

  v18 = +[AMSProcessInfo currentProcess];
  accountMediaType = [v18 accountMediaType];

  account = [(AMSDBiometricsTokenUpdateTask *)self account];
  ams_isSandboxAccount = [account ams_isSandboxAccount];

  if (ams_isSandboxAccount)
  {
    v22 = AMSAccountMediaTypeAppStoreSandbox;

    accountMediaType = v22;
  }

  v23 = [AMSDBag bagForMediaType:accountMediaType];
  v38 = extendedCertsCopy;
  v40 = certsCopy;
  v24 = [(AMSDBiometricsTokenUpdateTask *)self _buildRequestBodyWithStyle:style primaryCerts:certsCopy extendedCerts:extendedCertsCopy];
  v25 = [(AMSDBiometricsTokenUpdateTask *)self _buildRequestWithBody:v24 bag:v23];
  [(AMSDBiometricsTokenUpdateTask *)self prepareMetricsActivity];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000448A8;
  v42[3] = &unk_1002B0008;
  v26 = v23;
  v43 = v26;
  selfCopy = self;
  v27 = [v25 thenWithBlock:v42];
  [(AMSDBiometricsTokenUpdateTask *)self completeMetricsActivityWithPromise:v27];
  v41 = 0;
  v28 = [v27 resultWithError:&v41];
  v29 = v41;
  session = [(AMSDBiometricsTokenUpdateTask *)self session];
  [session invalidateAndCancel];

  if (v29)
  {
    integerValue = 0;
    if (error)
    {
LABEL_9:
      v32 = v29;
      *error = v29;
    }
  }

  else
  {
    errorCopy = error;
    object = [v28 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = object;
    }

    else
    {
      v35 = 0;
    }

    v36 = [v35 objectForKeyedSubscript:@"status"];
    if (objc_opt_respondsToSelector())
    {
      integerValue = [v36 integerValue];
      v29 = 0;
    }

    else
    {
      v29 = AMSError();
      integerValue = 0;
    }

    error = errorCopy;
    if (errorCopy)
    {
      goto LABEL_9;
    }
  }

  return integerValue;
}

- (id)_handleDialogRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = AMSLogKey();
    *buf = 138543874;
    v18 = v8;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = requestCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Informing delegate about dialog request. Request: %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  delegate = [(AMSDBiometricsTokenUpdateTask *)self delegate];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100044BF0;
  v14[3] = &unk_1002B0030;
  objc_copyWeak(&v16, buf);
  v12 = v5;
  v15 = v12;
  [delegate handleDialogRequest:requestCopy completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  return v12;
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  sessionCopy = session;
  taskCopy = task;
  requestCopy = request;
  completionCopy = completion;
  v13 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Informing delegate about authenticate request. Request: %{public}@", buf, 0x20u);
  }

  delegate = [(AMSDBiometricsTokenUpdateTask *)self delegate];
  v20 = delegate == 0;

  if (v20)
  {
    v22 = AMSError();
    completionCopy[2](completionCopy, 0, v22);
  }

  else
  {
    objc_initWeak(buf, self);
    delegate2 = [(AMSDBiometricsTokenUpdateTask *)self delegate];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100045014;
    v24[3] = &unk_1002B0058;
    objc_copyWeak(&v26, buf);
    v25 = completionCopy;
    [delegate2 handleAuthenticateRequest:requestCopy completion:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v9 = [(AMSDBiometricsTokenUpdateTask *)self _handleDialogRequest:request];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100045278;
  v11[3] = &unk_1002B0080;
  v12 = completionCopy;
  v10 = completionCopy;
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
  selfCopy = self;
  AMSDBiometricsTokenUpdateTask.prepareMetricsActivity()();
}

- (void)completeMetricsActivityWithPromise:(id)promise
{
  promiseCopy = promise;
  selfCopy = self;
  AMSDBiometricsTokenUpdateTask.completeMetricsActivity(promise:)();
}

@end