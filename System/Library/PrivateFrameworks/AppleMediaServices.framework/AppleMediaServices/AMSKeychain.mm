@interface AMSKeychain
+ (BOOL)_generateLegacyKeypairForOptions:(id)options error:(id *)error;
+ (BOOL)deleteCertificateChainWithOptions:(id)options error:(id *)error;
+ (BOOL)deleteKeyPairWithOptions:(id)options error:(id *)error;
+ (BOOL)stashResumptionHeaders:(id)headers error:(id *)error;
+ (BOOL)storePrimaryCert:(__SecCertificate *)cert intermediateCert:(__SecCertificate *)intermediateCert privateKey:(__SecKey *)key options:(id)options error:(id *)error;
+ (__SecAccessControl)copyAccessControlRefWithAccount:(id)account options:(id)options error:(id *)error;
+ (__SecAccessControl)createAccessControlRefWithOptions:(id)options error:(id *)error;
+ (__SecKey)_copyLegacyPrivateKeyForOptions:(id)options error:(id *)error;
+ (__SecKey)_copyLegacyPublicKeyForOptions:(id)options error:(id *)error;
+ (__SecKey)copyCertificatePrivateKeyWithContext:(id)context account:(id)account options:(id)options error:(id *)error;
+ (__SecKey)copyPrivateKeyWithContext:(id)context account:(id)account options:(id)options error:(id *)error;
+ (__SecKey)copyPrivateKeyWithContext:(id)context options:(id)options error:(id *)error;
+ (__SecKey)copyPublicKeyForAccount:(id)account options:(id)options error:(id *)error;
+ (__SecKey)copyPublicKeyForOptions:(id)options error:(id *)error;
+ (id)_certificatePrivateKeyLabelForOptions:(id)options;
+ (id)_extendedConstraintsWithOptions:(id)options;
+ (id)_legacyAttestationForOptions:(id)options error:(id *)error;
+ (id)_primaryConstraintsWithOptions:(id)options;
+ (id)_resumptionHeadersQuery;
+ (id)_ssCertificateKeychainLabelForAccount:(id)account options:(id)options;
+ (id)_ssKeychainLabelForAccount:(id)account options:(id)options;
+ (id)certificateChainStringsForOptions:(id)options error:(id *)error;
+ (id)certificateKeychainLabelsForOptions:(id)options;
+ (id)keychainLabelForOptions:(id)options;
+ (id)legacyAttestationForOptions:(id)options error:(id *)error;
+ (id)publicKeyHeaderWithAccount:(id)account options:(id)options signatureResult:(id)result;
+ (id)resumptionHeaders;
+ (void)_deleteResumptionHeaders;
+ (void)setSecItemAddFunc:(void *)func;
+ (void)setSecItemCopyMatchingFunc:(void *)func;
@end

@implementation AMSKeychain

+ (id)certificateChainStringsForOptions:(id)options error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [AMSKeychain certificateKeychainLabelsForOptions:optionsCopy];
  v8 = 0x1E696A000uLL;
  if ([v7 count] == 2 || (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Certificate Lookup: Invalid number of keychain labels: %@ options: %@", v7, optionsCopy), v9 = objc_claimAutoreleasedReturnValue(), AMSError(600, @"Keychain Error", v9, 0), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v41 = v7;
      errorCopy = error;
      v43 = optionsCopy;
      v13 = *v51;
      v14 = *MEMORY[0x1E697ADC8];
      v15 = *MEMORY[0x1E697B390];
      v16 = *MEMORY[0x1E697ABD0];
      v48 = *MEMORY[0x1E697AFF8];
      v49 = *MEMORY[0x1E697B000];
      v47 = *MEMORY[0x1E697B328];
      v44 = *MEMORY[0x1E697ABD0];
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v51 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v50 + 1) + 8 * i);
          v19 = +[AMSLogConfig sharedKeychainConfig];
          if (!v19)
          {
            v19 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v19 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
          {
            v46 = v18;
            v21 = v12;
            v22 = v15;
            v23 = v14;
            v24 = v13;
            v25 = v6;
            v26 = objc_opt_class();
            v27 = AMSSetLogKeyIfNeeded();
            *buf = 138543874;
            *&buf[4] = v26;
            v6 = v25;
            v13 = v24;
            v14 = v23;
            v15 = v22;
            v12 = v21;
            v18 = v46;
            v55 = 2114;
            v56 = v27;
            v57 = 2114;
            v58 = v46;
            _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetching cert for label: %{public}@", buf, 0x20u);

            v16 = v44;
          }

          *buf = 0;
          v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v28 setObject:v18 forKeyedSubscript:v14];
          v29 = MEMORY[0x1E695E118];
          [v28 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v15];
          [v28 setObject:@"apple" forKeyedSubscript:v16];
          [v28 setObject:v49 forKeyedSubscript:v48];
          [v28 setObject:v29 forKeyedSubscript:v47];
          v30 = AMSSecItemCopyMatchingWithTimeFault(v28, buf);
          if (v30)
          {
            v33 = v30;
            v8 = 0x1E696A000uLL;
            v34 = MEMORY[0x1E696AEC0];
            v35 = [MEMORY[0x1E696AD98] numberWithInt:v30];
            optionsCopy = v43;
            v36 = [v34 stringWithFormat:@"Certificate Lookup: Failed to find cert. status: %@ options: %@", v35, v43];

            v10 = AMSKeychainError(v36, v33);

            v7 = v41;
            error = errorCopy;
            goto LABEL_18;
          }

          v31 = SecCertificateCopyData(*buf);
          v32 = [(__CFData *)v31 base64EncodedStringWithOptions:0];
          [v6 addObject:v32];
        }

        v12 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v10 = 0;
      error = errorCopy;
      optionsCopy = v43;
      v7 = v41;
      v8 = 0x1E696A000;
    }

    else
    {
      v10 = 0;
    }

LABEL_18:
  }

  if ([v6 count] != 2)
  {
    optionsCopy = [*(v8 + 3776) stringWithFormat:@"Certificate Lookup: Cert fetch finished without either an error or both certs. options: %@", optionsCopy];
    v38 = AMSError(600, @"Keychain Error", optionsCopy, 0);

    v10 = v38;
  }

  if (v10)
  {

    v6 = 0;
  }

  if (error)
  {
    v39 = v10;
    *error = v10;
  }

  return v6;
}

+ (__SecKey)copyPrivateKeyWithContext:(id)context options:(id)options error:(id *)error
{
  contextCopy = context;
  optionsCopy = options;
  cf = 0;
  style = [optionsCopy style];
  if (style > 5)
  {
    goto LABEL_23;
  }

  if (((1 << style) & 0x39) != 0)
  {
    [self _certificatePrivateKeyLabelForOptions:optionsCopy];
  }

  else
  {
    [self keychainLabelForOptions:optionsCopy];
  }
  v11 = ;
  if (!v11)
  {
LABEL_23:
    optionsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Private Key Lookup: Invalid private key label: %@. options: %@", 0, optionsCopy];
    v13 = AMSError(600, @"Keychain Error", optionsCopy, 0);

    v11 = 0;
    if (v13)
    {
LABEL_17:
      if (error)
      {
        v23 = v13;
        *error = v13;
      }

      cf = 0;

      v21 = 0;
      goto LABEL_20;
    }
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v14 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  v15 = MEMORY[0x1E695E118];
  [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v14 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  [v14 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v14 setObject:*MEMORY[0x1E697AD38] forKeyedSubscript:*MEMORY[0x1E697AD30]];
  [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E697B328]];
  [v14 setObject:*MEMORY[0x1E697AEE0] forKeyedSubscript:*MEMORY[0x1E697AEC8]];
  if (contextCopy)
  {
    [v14 setObject:contextCopy forKeyedSubscript:*MEMORY[0x1E697B378]];
  }

  v16 = AMSSecItemCopyMatchingWithTimeFault(v14, &cf);
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0x1E696AEC0];
    v19 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    optionsCopy2 = [v18 stringWithFormat:@"Private Key Lookup: Failed to fetch privateKey. status: %@ options: %@", v19, optionsCopy];

    v13 = AMSKeychainError(optionsCopy2, v17);
  }

  else
  {
    v13 = 0;
  }

  v21 = cf;
  if (!(v13 | cf))
  {
    optionsCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Private Key Lookup: Finished without a result or error. options: %@", optionsCopy];
    v13 = AMSError(600, @"Keychain Error", optionsCopy3, 0);

    v21 = cf;
  }

  if (v13)
  {
    if (v21)
    {
      CFRelease(v21);
    }

    goto LABEL_17;
  }

LABEL_20:

  return v21;
}

+ (__SecKey)copyCertificatePrivateKeyWithContext:(id)context account:(id)account options:(id)options error:(id *)error
{
  v80 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  accountCopy = account;
  optionsCopy = options;
  v71 = 0;
  v70 = AMSSetLogKeyIfNeeded();
  if (![optionsCopy style] || objc_msgSend(optionsCopy, "style") == 4 || objc_msgSend(optionsCopy, "style") == 3 || objc_msgSend(optionsCopy, "style") == 5)
  {
    selfCopy = self;
    v69 = optionsCopy;
    v14 = [self _ssKeychainLabelForAccount:accountCopy options:optionsCopy];
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = *MEMORY[0x1E697AD38];
    v17 = *MEMORY[0x1E697AD30];
    [v15 setObject:*MEMORY[0x1E697AD38] forKeyedSubscript:*MEMORY[0x1E697AD30]];
    v18 = *MEMORY[0x1E697ADC8];
    v68 = v14;
    [v15 setObject:v14 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    v65 = *MEMORY[0x1E697ABD0];
    [v15 setObject:@"apple" forKeyedSubscript:?];
    v63 = *MEMORY[0x1E697AFF8];
    v64 = *MEMORY[0x1E697B020];
    [v15 setObject:? forKeyedSubscript:?];
    v19 = *MEMORY[0x1E697B328];
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B328]];
    v20 = *MEMORY[0x1E697B378];
    [v15 setObject:contextCopy forKeyedSubscript:*MEMORY[0x1E697B378]];
    v21 = AMSSecItemCopyMatchingWithTimeFault(v15, &v71);
    if (v21 != -25300)
    {
      v22 = v21;
      if (v21)
      {
        v61 = accountCopy;
        v62 = contextCopy;
        v23 = +[AMSLogConfig sharedKeychainConfig];
        if (!v23)
        {
          v23 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v23 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v25 = objc_opt_class();
          v59 = MEMORY[0x1E696AD98];
          v60 = v25;
          v26 = [v59 numberWithInt:v22];
          *buf = 138543874;
          v73 = v25;
          v74 = 2114;
          v75 = v70;
          v76 = 2114;
          v77 = v26;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Retrieving certificate key for legacy StoreServices returned status: %{public}@", buf, 0x20u);
        }

        accountCopy = v61;
        contextCopy = v62;
      }
    }

    v27 = v71;
    if (!v71)
    {
      v28 = accountCopy;
      v29 = [selfCopy _certificatePrivateKeyLabelForOptions:v69];
      v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v31 = v16;
      v32 = v29;
      [v30 setObject:v31 forKeyedSubscript:v17];
      [v30 setObject:v29 forKeyedSubscript:v18];
      v33 = MEMORY[0x1E695E118];
      [v30 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
      [v30 setObject:@"apple" forKeyedSubscript:v65];
      [v30 setObject:v64 forKeyedSubscript:v63];
      [v30 setObject:v33 forKeyedSubscript:v19];
      [v30 setObject:contextCopy forKeyedSubscript:v20];
      v34 = AMSSecItemCopyMatchingWithTimeFault(v30, &v71);
      if (v34 != -25300)
      {
        v35 = v34;
        if (v34)
        {
          v36 = +[AMSLogConfig sharedKeychainConfig];
          if (!v36)
          {
            v36 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject2 = [v36 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
          {
            v38 = objc_opt_class();
            v39 = MEMORY[0x1E696AD98];
            v66 = v32;
            v40 = contextCopy;
            v41 = v38;
            v42 = [v39 numberWithInt:v35];
            *buf = 138543874;
            v73 = v38;
            v74 = 2114;
            v75 = v70;
            v76 = 2114;
            v77 = v42;
            _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Retrieving certificate key for AMS returned status: %{public}@", buf, 0x20u);

            contextCopy = v40;
            v32 = v66;
          }
        }
      }

      v27 = v71;
      accountCopy = v28;
      if (!v71)
      {
        v43 = +[AMSLogConfig sharedKeychainConfig];
        if (!v43)
        {
          v43 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject3 = [v43 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v46 = v45;
          v47 = AMSHashIfNeeded(v28);
          *buf = 138543874;
          v73 = v45;
          v74 = 2114;
          v75 = v70;
          v76 = 2114;
          v77 = v47;
          _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find certificate key either for AMS or StoreServices for account: %{public}@", buf, 0x20u);

          accountCopy = v28;
        }

        v27 = v71;
      }
    }

    v48 = 0;
    optionsCopy = v69;
  }

  else
  {
    v50 = +[AMSLogConfig sharedKeychainConfig];
    if (!v50)
    {
      v50 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v50 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v52 = objc_opt_class();
      v53 = accountCopy;
      v54 = v52;
      v55 = NSStringFromSelector(a2);
      v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "style")}];
      *buf = 138544130;
      v73 = v52;
      v74 = 2114;
      v75 = v70;
      v76 = 2112;
      v77 = v55;
      v78 = 2112;
      v79 = v56;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %@ was invoked with attestation style: %@", buf, 0x2Au);

      accountCopy = v53;
    }

    v57 = AMSError(600, @"Keychain Error", @"Incorrect Attestation Style", 0);
    v48 = v57;
    if (error)
    {
      v58 = v57;
      v27 = 0;
      *error = v48;
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

+ (__SecKey)copyPrivateKeyWithContext:(id)context account:(id)account options:(id)options error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  accountCopy = account;
  optionsCopy = options;
  v37 = 0;
  v14 = AMSSetLogKeyIfNeeded();
  if ([optionsCopy style] == 1)
  {
    errorCopy = error;
    v15 = [self _ssKeychainLabelForAccount:accountCopy options:optionsCopy];
    if (!v15)
    {
      v21 = AMSError(600, @"Keychain Error", @"No Private Key Label", 0);
      if (v21)
      {
        goto LABEL_20;
      }
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    [v16 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v16 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v16 setObject:*MEMORY[0x1E697AD38] forKeyedSubscript:*MEMORY[0x1E697AD30]];
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B328]];
    [v16 setObject:*MEMORY[0x1E697AEE0] forKeyedSubscript:*MEMORY[0x1E697AEC8]];
    if (contextCopy)
    {
      [v16 setObject:contextCopy forKeyedSubscript:*MEMORY[0x1E697B378]];
    }

    if (AMSSecItemCopyMatchingWithTimeFault(v16, &v37))
    {
      v17 = +[AMSLogConfig sharedKeychainConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v17 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        *buf = 138543618;
        v39 = v19;
        v40 = 2114;
        v41 = v14;
        v20 = v19;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No legacy StoreServices private key found", buf, 0x16u);
      }
    }

    v21 = 0;
    v22 = 0;
    v23 = v37;
    if (!v37)
    {
LABEL_20:
      v23 = [self copyPrivateKeyWithContext:contextCopy options:optionsCopy error:errorCopy];
      v22 = v21;
    }
  }

  else
  {
    v24 = +[AMSLogConfig sharedKeychainConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v26 = v14;
      v27 = accountCopy;
      errorCopy2 = error;
      v29 = objc_opt_class();
      v36 = v29;
      v30 = NSStringFromSelector(a2);
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "style")}];
      *buf = 138544130;
      v39 = v29;
      error = errorCopy2;
      accountCopy = v27;
      v14 = v26;
      v40 = 2114;
      v41 = v26;
      v42 = 2112;
      v43 = v30;
      v44 = 2112;
      v45 = v31;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %@ was invoked with attestation style: %@", buf, 0x2Au);
    }

    v32 = AMSError(600, @"Keychain Error", @"Incorrect Attestation Style", 0);
    v22 = v32;
    if (error)
    {
      v33 = v32;
      v23 = 0;
      *error = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

+ (__SecKey)copyPublicKeyForAccount:(id)account options:(id)options error:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  v45 = AMSSetLogKeyIfNeeded();
  if (![optionsCopy style] || objc_msgSend(optionsCopy, "style") == 4 || objc_msgSend(optionsCopy, "style") == 5)
  {
    v50 = 0;
    v9 = [AMSKeychain copyCertificatePrivateKeyWithContext:0 account:accountCopy options:optionsCopy error:&v50];
    v10 = v50;
    if (v9)
    {
      v11 = SecKeyCopyPublicKey(v9);
      if (v11)
      {
        v12 = v11;
        errorCopy = error;
        v14 = +[AMSLogConfig sharedKeychainConfig];
        if (!v14)
        {
          v14 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v14 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          *buf = 138543874;
          v52 = v16;
          v53 = 2114;
          v17 = v45;
          v54 = v45;
          v55 = 2114;
          v56 = optionsCopy;
          v18 = v16;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found public key cert reference for options: %{public}@", buf, 0x20u);

          error = errorCopy;
        }

        else
        {
          v17 = v45;
        }

LABEL_20:

        goto LABEL_21;
      }
    }

    v19 = [[AMSBiometricsTokenUpdateTask alloc] initWithAccount:accountCopy];
    [(AMSBiometricsTokenUpdateTask *)v19 setShouldGenerateKeysOnly:1];
    performUpdate = [(AMSBiometricsTokenUpdateTask *)v19 performUpdate];
    v49 = v10;
    [performUpdate resultWithError:&v49];
    v21 = v49;

    if (v21)
    {
      v43 = accountCopy;
      errorCopy2 = error;
      v23 = +[AMSLogConfig sharedAttestationConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = AMSSetLogKeyIfNeeded();
        *buf = 138543874;
        v52 = v25;
        v53 = 2114;
        v54 = v26;
        v55 = 2114;
        v56 = v21;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Re-create cert chain failed with error: %{public}@", buf, 0x20u);
      }

      error = errorCopy2;
      accountCopy = v43;
    }
  }

  else
  {
    if ([optionsCopy style] != 1)
    {
      errorCopy3 = error;
      v34 = +[AMSLogConfig sharedKeychainConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v34 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v52 = objc_opt_class();
        v53 = 2114;
        v54 = v45;
        v55 = 2114;
        v56 = optionsCopy;
        v36 = v52;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Legacy StoreServices public key lookup not supported for attestation style: %{public}@", buf, 0x20u);
      }

      v27 = 0;
      v10 = 0;
      error = errorCopy3;
      v17 = v45;
      goto LABEL_22;
    }

    errorCopy4 = error;
    v48 = 0;
    v9 = [AMSKeychain copyPrivateKeyWithContext:0 account:accountCopy options:optionsCopy error:&v48];
    v10 = v48;
    if (v9)
    {
      v30 = SecKeyCopyPublicKey(v9);
      if (v30)
      {
        v12 = v30;
        v14 = +[AMSLogConfig sharedKeychainConfig];
        if (!v14)
        {
          v14 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v14 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_opt_class();
          *buf = 138543874;
          v52 = v31;
          v53 = 2114;
          v17 = v45;
          v54 = v45;
          v55 = 2114;
          v56 = optionsCopy;
          v32 = v31;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found public key reference for options: %{public}@", buf, 0x20u);

          error = errorCopy4;
        }

        else
        {
          v17 = v45;
        }

        goto LABEL_20;
      }
    }

    v37 = +[AMSLogConfig sharedKeychainConfig];
    if (!v37)
    {
      v37 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v37 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v40 = v39;
      v41 = AMSSetLogKeyIfNeeded();
      *buf = 138544130;
      v52 = v39;
      v53 = 2114;
      v54 = v41;
      v55 = 2112;
      v56 = optionsCopy;
      v57 = 2114;
      v58 = v10;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find public key reference for options: %@, error: %{public}@", buf, 0x2Au);
    }

    v47 = v10;
    v42 = [AMSKeychain _generateLegacyKeypairForOptions:optionsCopy error:&v47];
    v21 = v47;

    if (v42)
    {
      v46 = v21;
      v9 = [objc_opt_class() copyPrivateKeyWithContext:0 options:optionsCopy error:&v46];
      v10 = v46;

      if (v9)
      {
        v12 = SecKeyCopyPublicKey(v9);
        error = errorCopy4;
        v17 = v45;
        goto LABEL_21;
      }

      v27 = 0;
      error = errorCopy4;
      v17 = v45;
      goto LABEL_22;
    }

    error = errorCopy4;
  }

  v12 = 0;
  v27 = 0;
  v10 = v21;
  v17 = v45;
  if (v9)
  {
LABEL_21:
    CFRelease(v9);
    v27 = v12;
  }

LABEL_22:
  if (error)
  {
    v28 = v10;
    *error = v10;
  }

  return v27;
}

+ (__SecKey)copyPublicKeyForOptions:(id)options error:(id *)error
{
  v76 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v65 = 0;
  v7 = 0;
  if ([optionsCopy style] == 4)
  {
    v8 = [AMSKeychain certificateKeychainLabelsForOptions:optionsCopy];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v8 objectAtIndexedSubscript:0];
    v11 = [v9 stringWithFormat:@"%@.publickey", v10];

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    [v12 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    v13 = MEMORY[0x1E695E118];
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
    [v12 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E697B328]];
    v14 = AMSSecItemCopyMatchingWithTimeFault(v12, &v65);
    v15 = +[AMSLogConfig sharedKeychainConfig];
    v16 = v15;
    if (v14)
    {
      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        errorCopy = error;
        v19 = objc_opt_class();
        v59 = v8;
        selfCopy = self;
        v21 = v19;
        v22 = AMSLogKey();
        *buf = 138543874;
        v67 = v19;
        error = errorCopy;
        v68 = 2114;
        v69 = v22;
        v70 = 2114;
        v71 = v11;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Did not lookup public key: %{public}@", buf, 0x20u);

        self = selfCopy;
        v8 = v59;
      }

      v7 = AMSError(600, @"Keychain Error", @"Public Key Not Found", 0);
    }

    else
    {
      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v57 = v24;
        AMSLogKey();
        v25 = v58 = self;
        v26 = v65;
        [MEMORY[0x1E696AD98] numberWithInt:0];
        v27 = v60 = error;
        *buf = 138544386;
        v67 = v24;
        v68 = 2114;
        v69 = v25;
        v70 = 2114;
        v71 = v11;
        v72 = 2114;
        v73 = v26;
        v74 = 2114;
        v75 = v27;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Success for lookup of public key label: %{public}@, key: %{public}@, status: %{public}@", buf, 0x34u);

        error = v60;
        self = v58;
      }

      v7 = 0;
    }
  }

  if ([optionsCopy style] == 3 || !objc_msgSend(optionsCopy, "style"))
  {
    v64 = v7;
    v35 = [self certificateChainStringsForOptions:optionsCopy error:&v64];
    v36 = v64;

    firstObject = [v35 firstObject];
    if ([firstObject length])
    {
      v38 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:firstObject options:0];
      if (v38)
      {
        v39 = SecCertificateCreateWithData(0, v38);
        if (v39)
        {
          v40 = v39;
          v65 = SecCertificateCopyKey(v39);
          CFRelease(v40);
        }
      }
    }

    v7 = v36;
  }

  else if ([optionsCopy style] == 1 || objc_msgSend(optionsCopy, "style") == 2)
  {
    v28 = +[AMSLogConfig sharedKeychainConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = v30;
      v32 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v67 = v30;
      v68 = 2114;
      v69 = v32;
      v70 = 2112;
      v71 = optionsCopy;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to lookup public key for options: %@", buf, 0x20u);
    }

    v63 = v7;
    v33 = [AMSKeychain _copyLegacyPublicKeyForOptions:optionsCopy error:&v63];
    v34 = v63;

    v65 = v33;
    if (v33)
    {
      v7 = v34;
    }

    else
    {
      v41 = +[AMSLogConfig sharedKeychainConfig];
      if (!v41)
      {
        v41 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v41 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v44 = v43;
        v45 = AMSSetLogKeyIfNeeded();
        *buf = 138544130;
        v67 = v43;
        v68 = 2114;
        v69 = v45;
        v70 = 2112;
        v71 = optionsCopy;
        v72 = 2114;
        v73 = v34;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find public key for options: %@, error: %{public}@", buf, 0x2Au);
      }

      v62 = v34;
      v46 = [AMSKeychain _generateLegacyKeypairForOptions:optionsCopy error:&v62];
      v7 = v62;

      if (v46)
      {
        v47 = +[AMSLogConfig sharedKeychainConfig];
        if (!v47)
        {
          v47 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject5 = [v47 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
        {
          v49 = objc_opt_class();
          v50 = v49;
          v51 = AMSSetLogKeyIfNeeded();
          *buf = 138543874;
          v67 = v49;
          v68 = 2114;
          v69 = v51;
          v70 = 2112;
          v71 = optionsCopy;
          _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting second lookup for public key for options: %@", buf, 0x20u);
        }

        v61 = v7;
        v52 = [AMSKeychain _copyLegacyPublicKeyForOptions:optionsCopy error:&v61];
        v53 = v61;

        v65 = v52;
        v7 = v53;
      }
    }
  }

  if (error)
  {
    v54 = v7;
    *error = v7;
  }

  v55 = v65;

  return v55;
}

+ (BOOL)deleteCertificateChainWithOptions:(id)options error:(id *)error
{
  v122 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v87 = AMSSetLogKeyIfNeeded();
  v6 = [AMSKeychain certificateKeychainLabelsForOptions:optionsCopy];
  errorCopy = error;
  if ([v6 count] == 2)
  {
    v7 = 0;
  }

  else
  {
    optionsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Delete Certificate: Invalid number of keychain labels: %@ options: %@", v6, optionsCopy];
    v7 = AMSError(600, @"Keychain Error", optionsCopy, 0);
  }

  v86 = [self _certificatePrivateKeyLabelForOptions:optionsCopy];
  if (!v86)
  {
    optionsCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Delete Certificate: NULL privateKey label for options: %@", optionsCopy];
    v10 = AMSError(600, @"Keychain Error", optionsCopy2, 0);

    v7 = v10;
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v108 objects:v121 count:16];
  if (v11)
  {
    v12 = v11;
    v101 = *v109;
    v99 = *MEMORY[0x1E697ADC8];
    v97 = *MEMORY[0x1E697ABD0];
    v92 = *MEMORY[0x1E697B000];
    v95 = *MEMORY[0x1E697B390];
    v13 = *MEMORY[0x1E697AFF8];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v109 != v101)
        {
          objc_enumerationMutation(obj);
        }

        if (v7)
        {
          v27 = obj;
          v25 = MEMORY[0x1E697AFF8];
          v26 = MEMORY[0x1E697ABD0];
          goto LABEL_33;
        }

        v15 = *(*(&v108 + 1) + 8 * i);
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v16 setObject:v15 forKeyedSubscript:v99];
        [v16 setObject:@"apple" forKeyedSubscript:v97];
        [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v95];
        [v16 setObject:v92 forKeyedSubscript:v13];
        v17 = SecItemDelete(v16);
        if (v17)
        {
          v18 = v17;
          if (v17 == -25300)
          {
            optionsCopy3 = +[AMSLogConfig sharedConfig];
            if (!optionsCopy3)
            {
              optionsCopy3 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject = [optionsCopy3 OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
            {
              v21 = objc_opt_class();
              v22 = AMSLogKey();
              *buf = 138543874;
              v116 = v21;
              v117 = 2114;
              v118 = v22;
              v119 = 2114;
              v120 = v15;
              _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cert not found for label: %{public}@", buf, 0x20u);
            }

            v7 = 0;
          }

          else
          {
            v23 = MEMORY[0x1E696AEC0];
            v24 = [MEMORY[0x1E696AD98] numberWithInt:v17];
            optionsCopy3 = [v23 stringWithFormat:@"Delete Certificate: Failed to delete cert. label: %@ status: %@ options: %@", v15, v24, optionsCopy];

            v7 = AMSKeychainError(optionsCopy3, v18);
          }
        }

        else
        {
          v7 = 0;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v108 objects:v121 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v25 = MEMORY[0x1E697AFF8];
  v26 = MEMORY[0x1E697ABD0];
  if (!v7)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v27 setObject:v86 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    [v27 setObject:@"apple" forKeyedSubscript:*v26];
    [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
    [v27 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*v25];
    [v27 setObject:*MEMORY[0x1E697AD38] forKeyedSubscript:*MEMORY[0x1E697AD30]];
    v28 = SecItemDelete(v27);
    if (v28)
    {
      v29 = v28;
      if (v28 == -25300)
      {
        optionsCopy4 = +[AMSLogConfig sharedConfig];
        if (!optionsCopy4)
        {
          optionsCopy4 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [optionsCopy4 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v32 = objc_opt_class();
          v33 = AMSLogKey();
          *buf = 138543874;
          v116 = v32;
          v117 = 2114;
          v118 = v33;
          v119 = 2114;
          v120 = v86;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Key (cert) not found for label: %{public}@", buf, 0x20u);
        }

        v7 = 0;
      }

      else
      {
        v81 = MEMORY[0x1E696AEC0];
        v82 = [MEMORY[0x1E696AD98] numberWithInt:v28];
        optionsCopy4 = [v81 stringWithFormat:@"Delete Certificate: Failed to delete cert key. label: %@ status: %@ options: %@", v86, v82, optionsCopy];

        v7 = AMSKeychainError(optionsCopy4, v29);
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_33:
  }

  v100 = v7;
  v34 = 0x1E6959000uLL;
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  if (ams_activeiTunesAccount)
  {
    v36 = [self _ssCertificateKeychainLabelForAccount:ams_activeiTunesAccount options:optionsCopy];
    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = *MEMORY[0x1E697ADC8];
    v93 = v36;
    [v37 setObject:v36 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    v39 = *v26;
    [v37 setObject:@"apple" forKeyedSubscript:*v26];
    v40 = *v25;
    v96 = *MEMORY[0x1E697B000];
    [v37 setObject:? forKeyedSubscript:?];
    v41 = SecItemDelete(v37);
    v102 = v39;
    if (v41)
    {
      v42 = v41;
      v43 = +[AMSLogConfig sharedConfig];
      if (!v43)
      {
        v43 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v43 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v45 = objc_opt_class();
        v88 = v38;
        v46 = MEMORY[0x1E696AD98];
        v83 = v45;
        v47 = [v46 numberWithInt:v42];
        *buf = 138543874;
        v116 = v45;
        v117 = 2114;
        v118 = v87;
        v119 = 2114;
        v120 = v47;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No deletion of legacy StoreServices laef cert with status: %{public}@", buf, 0x20u);

        v38 = v88;
      }

      v39 = v102;
    }

    v48 = [self _ssKeychainLabelForAccount:ams_activeiTunesAccount options:optionsCopy];
    [v37 setObject:v48 forKeyedSubscript:v38];
    [v37 setObject:@"apple" forKeyedSubscript:v39];
    [v37 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:v40];
    [v37 setObject:*MEMORY[0x1E697AD38] forKeyedSubscript:*MEMORY[0x1E697AD30]];
    v49 = SecItemDelete(v37);
    if (v49)
    {
      v50 = v49;
      v51 = +[AMSLogConfig sharedConfig];
      if (!v51)
      {
        v51 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v51 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v89 = v38;
        v53 = objc_opt_class();
        v54 = MEMORY[0x1E696AD98];
        v84 = v53;
        v55 = v54;
        v34 = 0x1E6959000;
        v56 = [v55 numberWithInt:v50];
        *buf = 138543874;
        v116 = v53;
        v38 = v89;
        v117 = 2114;
        v118 = v87;
        v119 = 2114;
        v120 = v56;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No deletion of legacy StoreServices key with status: %{public}@", buf, 0x20u);
      }

      v39 = v102;
    }

    v57 = v96;
  }

  else
  {
    v38 = *MEMORY[0x1E697ADC8];
    v39 = *v26;
    v57 = *MEMORY[0x1E697B000];
    v40 = *v25;
  }

  v103 = optionsCopy;
  v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v58 setObject:@"com.apple.itunesstored:intermediate-cert" forKeyedSubscript:v38];
  [v58 setObject:@"apple" forKeyedSubscript:v39];
  [v58 setObject:v57 forKeyedSubscript:v40];
  v94 = v58;
  v59 = SecItemDelete(v58);
  if (v59)
  {
    v60 = v59;
    v61 = +[AMSLogConfig sharedConfig];
    if (!v61)
    {
      v61 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [v61 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_opt_class();
      v64 = MEMORY[0x1E696AD98];
      v65 = v63;
      v66 = [v64 numberWithInt:v60];
      *buf = 138543874;
      v116 = v63;
      v117 = 2114;
      v118 = v87;
      v119 = 2114;
      v120 = v66;
      _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No deletion of legacy StoreServices intermediate cert with status: %{public}@", buf, 0x20u);
    }
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  ams_sharedAccountStore2 = [*(v34 + 2632) ams_sharedAccountStore];
  ams_iTunesAccounts = [ams_sharedAccountStore2 ams_iTunesAccounts];

  v69 = [ams_iTunesAccounts countByEnumeratingWithState:&v104 objects:v114 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v105;
    v72 = *MEMORY[0x1E695AAF0];
    do
    {
      for (j = 0; j != v70; ++j)
      {
        if (*v105 != v71)
        {
          objc_enumerationMutation(ams_iTunesAccounts);
        }

        v74 = *(*(&v104 + 1) + 8 * j);
        v75 = MEMORY[0x1E696AEC0];
        ams_DSID = [v74 ams_DSID];
        v77 = [v75 stringWithFormat:@"mt-tid-%@", ams_DSID];

        v112 = v72;
        v113 = v77;
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        [v74 ams_removeCookiesMatchingProperties:v78];
      }

      v70 = [ams_iTunesAccounts countByEnumeratingWithState:&v104 objects:v114 count:16];
    }

    while (v70);
  }

  if (errorCopy)
  {
    v79 = v100;
    *errorCopy = v100;
  }

  return v100 == 0;
}

+ (BOOL)storePrimaryCert:(__SecCertificate *)cert intermediateCert:(__SecCertificate *)intermediateCert privateKey:(__SecKey *)key options:(id)options error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v12 = [self _certificatePrivateKeyLabelForOptions:?];
  v13 = v12;
  if (key && v12)
  {
    v14 = 0;
    if (intermediateCert)
    {
      goto LABEL_9;
    }
  }

  else
  {
    optionsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store Certificate: Invalid private key OR label. label: %@ options: %@", v12, optionsCopy];
    v14 = AMSError(2, @"Keychain Error", optionsCopy, 0);

    if (intermediateCert)
    {
      goto LABEL_9;
    }
  }

  if (!cert && !v14)
  {
    optionsCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store Certificate: Invalid certs. options: %@", optionsCopy];
    v14 = AMSError(2, @"Keychain Error", optionsCopy2, 0);
  }

LABEL_9:
  v68 = [AMSKeychain certificateKeychainLabelsForOptions:optionsCopy];
  if (!v14)
  {
    if ([v68 count] == 2)
    {
      v14 = 0;
    }

    else
    {
      optionsCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store Certificate: Invalid number of keychain labels: %@ options: %@", v68, optionsCopy];
      v14 = AMSError(2, @"Keychain Error", optionsCopy3, 0);
    }
  }

  v70 = 0;
  [self deleteCertificateChainWithOptions:optionsCopy error:&v70];
  v67 = v70;
  if (v67)
  {
    intermediateCertCopy = intermediateCert;
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      selfCopy = self;
      v21 = objc_opt_class();
      v63 = v21;
      AMSLogKey();
      certCopy = cert;
      v23 = v13;
      v25 = v24 = error;
      *buf = 138543874;
      v72 = v21;
      self = selfCopy;
      v73 = 2114;
      v74 = v25;
      v75 = 2114;
      v76 = v14;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to delete certs. Error: %{public}@", buf, 0x20u);

      error = v24;
      v13 = v23;
      cert = certCopy;
    }

    intermediateCert = intermediateCertCopy;
  }

  if (key && !v14)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v26 setObject:*MEMORY[0x1E697AD38] forKeyedSubscript:*MEMORY[0x1E697AD30]];
    [v26 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v26 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
    [v26 setObject:v13 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    [v26 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v26 setObject:key forKeyedSubscript:*MEMORY[0x1E697B3D0]];
    v27 = ([self secItemAddFunc])(v26, 0);
    if (v27)
    {
      v28 = v27;
      errorCopy = error;
      certCopy2 = cert;
      intermediateCertCopy2 = intermediateCert;
      v32 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E696AD98] numberWithInt:v27];
      v34 = v33 = self;
      optionsCopy4 = [v32 stringWithFormat:@"Store Certificate: Failed to save privateKey for label: %@ status: %@ options: %@", v13, v34, optionsCopy];

      self = v33;
      v14 = AMSKeychainError(optionsCopy4, v28);

      intermediateCert = intermediateCertCopy2;
      cert = certCopy2;
      error = errorCopy;
    }

    else
    {
      v14 = 0;
    }
  }

  if (cert && !v14)
  {
    v36 = [v68 objectAtIndexedSubscript:0];
    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v37 setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v37 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v37 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
    [v37 setObject:cert forKeyedSubscript:*MEMORY[0x1E697B3D0]];
    [v37 setObject:v36 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    v38 = ([self secItemAddFunc])(v37, 0);
    if (v38)
    {
      v39 = v38;
      intermediateCertCopy3 = intermediateCert;
      v41 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E696AD98] numberWithInt:v38];
      v43 = v42 = self;
      optionsCopy5 = [v41 stringWithFormat:@"Store Certificate: Failed to save client cert for label: %@ status: %@ options: %@", v36, v43, optionsCopy];

      self = v42;
      v14 = AMSKeychainError(optionsCopy5, v39);

      intermediateCert = intermediateCertCopy3;
    }

    else
    {
      v14 = 0;
    }
  }

  if (intermediateCert && !v14)
  {
    errorCopy2 = error;
    v66 = v13;
    v45 = [v68 objectAtIndexedSubscript:1];
    v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v46 setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v46 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v46 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
    [v46 setObject:intermediateCert forKeyedSubscript:*MEMORY[0x1E697B3D0]];
    [v46 setObject:v45 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    v47 = ([self secItemAddFunc])(v46, 0);
    if (v47)
    {
      v48 = v47;
      if (v47 == -25299)
      {
        v49 = +[AMSLogConfig sharedConfig];
        if (!v49)
        {
          v49 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v49 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v51 = objc_opt_class();
          v52 = v51;
          v53 = AMSLogKey();
          v54 = [MEMORY[0x1E696AD98] numberWithInt:4294941997];
          *buf = 138544386;
          v72 = v51;
          v73 = 2114;
          v74 = v53;
          v75 = 2114;
          v76 = v45;
          v77 = 2114;
          v78 = v54;
          v79 = 2114;
          v80 = v45;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [Store-Certificate] Skipping intermediate cert save for duplicate status: %{public}@, label: %{public}@, options: %{public}@ ", buf, 0x34u);
        }

        v14 = 0;
      }

      else
      {
        v55 = +[AMSLogConfig sharedConfig];
        if (!v55)
        {
          v55 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject3 = [v55 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
        {
          v57 = objc_opt_class();
          v58 = v57;
          v59 = AMSLogKey();
          v60 = [MEMORY[0x1E696AD98] numberWithInt:v48];
          *buf = 138544386;
          v72 = v57;
          v73 = 2114;
          v74 = v59;
          v75 = 2114;
          v76 = v45;
          v77 = 2114;
          v78 = v60;
          v79 = 2114;
          v80 = optionsCopy;
          _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [Store-Certificate] Failed to save intermediate cert for label: %{public}@, options: %{public}@, status: %{public}@", buf, 0x34u);
        }

        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store Certificate: Failed to save intermediate [cert"];
        v14 = AMSKeychainError(v49, v48);
      }
    }

    else
    {
      v14 = 0;
    }

    error = errorCopy2;

    v13 = v66;
  }

  if (error)
  {
    v61 = v14;
    *error = v14;
  }

  return v14 == 0;
}

+ (id)resumptionHeaders
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0;
  _resumptionHeadersQuery = [self _resumptionHeadersQuery];
  v4 = [_resumptionHeadersQuery mutableCopy];

  [v4 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:*MEMORY[0x1E697B318]];
  v5 = AMSSecItemCopyMatchingWithTimeFault(v4, &v18);
  v6 = 0;
  if (!v5 && v18)
  {
    v17 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v18 options:0 error:&v17];
    v7 = v17;
    if (v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = AMSLogKey();
        *buf = 138543874;
        selfCopy = v10;
        v21 = 2114;
        v22 = v11;
        v23 = 2114;
        v24 = v7;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to deserialize TID continue headers. %{public}@", buf, 0x20u);
      }
    }
  }

  v12 = +[AMSLogConfig sharedKeychainConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = AMSLogKey();
    v15 = [v6 count];
    *buf = 138544130;
    selfCopy = self;
    v21 = 2114;
    v22 = v14;
    v23 = 2048;
    v24 = v15;
    v25 = 2048;
    v26 = v5;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found %ld TID headers. %ld", buf, 0x2Au);
  }

  return v6;
}

+ (BOOL)stashResumptionHeaders:(id)headers error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  v8 = 0x1E73B0000uLL;
  v9 = +[AMSLogConfig sharedKeychainConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      v4 = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v14, v4];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    *buf = 138543362;
    v67 = v15;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Stashing TID headers", buf, 0xCu);
    if (v11)
    {

      v15 = v4;
    }
  }

  if ([MEMORY[0x1E696ACB0] isValidJSONObject:headersCopy])
  {
    [self _deleteResumptionHeaders];
    v65 = 0;
    v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:headersCopy options:0 error:&v65];
    v17 = v65;
    if (v17)
    {
      v18 = +[AMSLogConfig sharedKeychainConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v20 = v16;
        v21 = AMSLogKey();
        v22 = MEMORY[0x1E696AEC0];
        v23 = objc_opt_class();
        v24 = v23;
        if (v21)
        {
          self = AMSLogKey();
          [v22 stringWithFormat:@"%@: [%@] ", v24, self];
        }

        else
        {
          [v22 stringWithFormat:@"%@: ", v23];
        }
        selfCopy = ;
        *buf = 138543618;
        v67 = selfCopy;
        v68 = 2114;
        v69 = v17;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Error occurred serializing TID continue headers. error = %{public}@", buf, 0x16u);
        if (v21)
        {

          selfCopy = self;
        }

        v16 = v20;
      }

      if (error)
      {
        AMSError(2, @"Serialization Error", @"Error serializing headers to data", v17);
        *error = v42 = 0;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      _resumptionHeadersQuery = [self _resumptionHeadersQuery];
      v34 = [_resumptionHeadersQuery mutableCopy];

      v64 = v34;
      [v34 setObject:v16 forKeyedSubscript:*MEMORY[0x1E697B3C0]];
      v35 = +[AMSLogConfig sharedKeychainConfig];
      if (!v35)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v35 OSLogObject];
      errorCopy = error;
      v63 = v16;
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
      {
        v37 = AMSLogKey();
        v38 = MEMORY[0x1E696AEC0];
        v39 = objc_opt_class();
        v40 = v39;
        if (v37)
        {
          v16 = AMSLogKey();
          [v38 stringWithFormat:@"%@: [%@] ", v40, v16];
        }

        else
        {
          [v38 stringWithFormat:@"%@: ", v39];
        }
        v41 = ;
        v43 = AMSHashIfNeeded(v64);
        *buf = 138543618;
        v67 = v41;
        v68 = 2114;
        v69 = v43;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@Beginning keychain query: %{public}@", buf, 0x16u);
        if (v37)
        {

          v41 = v16;
        }
      }

      v44 = ([self secItemAddFunc])(v64, 0);
      v45 = +[AMSLogConfig sharedKeychainConfig];
      if (!v45)
      {
        v45 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v45 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
      {
        v47 = AMSLogKey();
        v48 = MEMORY[0x1E696AEC0];
        v49 = objc_opt_class();
        v50 = v49;
        if (v47)
        {
          v61 = AMSLogKey();
          [v48 stringWithFormat:@"%@: [%@] ", v50, v61];
        }

        else
        {
          [v48 stringWithFormat:@"%@: ", v49];
        }
        v51 = ;
        *buf = 138543618;
        v67 = v51;
        v68 = 1024;
        LODWORD(v69) = v44;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEBUG, "%{public}@Keychain query complete. status = %d", buf, 0x12u);
        if (v47)
        {

          v51 = v61;
        }
      }

      v42 = v44 == 0;
      if (v44)
      {
        v52 = +[AMSLogConfig sharedKeychainConfig];
        if (!v52)
        {
          v52 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject5 = [v52 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
        {
          v54 = AMSLogKey();
          v55 = MEMORY[0x1E696AEC0];
          v56 = objc_opt_class();
          v57 = v56;
          if (v54)
          {
            v8 = AMSLogKey();
            [v55 stringWithFormat:@"%@: [%@] ", v57, v8];
          }

          else
          {
            [v55 stringWithFormat:@"%@: ", v56];
          }
          v58 = ;
          v59 = SecCopyErrorMessageString(v44, 0);
          *buf = 138543618;
          v67 = v58;
          v68 = 2114;
          v69 = v59;
          _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@Failed to stash TID continue headers. error: %{public}@", buf, 0x16u);
          if (v54)
          {

            v58 = v8;
          }
        }

        if (errorCopy)
        {
          *errorCopy = AMSKeychainError(@"Failed to insert TID headers into keychain", v44);
        }
      }

      v16 = v63;
    }
  }

  else
  {
    v26 = +[AMSLogConfig sharedKeychainConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject6 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
    {
      v28 = AMSLogKey();
      v29 = MEMORY[0x1E696AEC0];
      v30 = objc_opt_class();
      v31 = v30;
      if (v28)
      {
        self = AMSLogKey();
        [v29 stringWithFormat:@"%@: [%@] ", v31, self];
      }

      else
      {
        [v29 stringWithFormat:@"%@: ", v30];
      }
      selfCopy2 = ;
      *buf = 138543362;
      v67 = selfCopy2;
      _os_log_impl(&dword_192869000, oSLogObject6, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize TID continue headers", buf, 0xCu);
      if (v28)
      {

        selfCopy2 = self;
      }
    }

    if (error)
    {
      AMSError(2, @"Invalid Headers", @"Headers are not a valid JSON object.", 0);
      *error = v42 = 0;
    }

    else
    {
      v42 = 0;
    }
  }

  return v42;
}

+ (BOOL)deleteKeyPairWithOptions:(id)options error:(id *)error
{
  v74 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = AMSSetLogKeyIfNeeded();
  v7 = [AMSKeychain keychainLabelForOptions:optionsCopy];
  v8 = MEMORY[0x1E697AD38];
  v9 = MEMORY[0x1E697AD30];
  v10 = MEMORY[0x1E697ABD0];
  v11 = MEMORY[0x1E697B020];
  v12 = MEMORY[0x1E697AFF8];
  v13 = MEMORY[0x1E697ADC8];
  v59 = optionsCopy;
  if (v7)
  {
    selfCopy = self;
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v15 setObject:v7 forKeyedSubscript:*v13];
    [v15 setObject:@"apple" forKeyedSubscript:*v10];
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
    v16 = v12;
    [v15 setObject:*v11 forKeyedSubscript:*v12];
    [v15 setObject:*v8 forKeyedSubscript:*v9];
    v17 = SecItemDelete(v15);
    v18 = v8;
    if (v17)
    {
      v19 = v6;
      if (v17 == -25300)
      {
        v20 = +[AMSLogConfig sharedConfig];
        if (!v20)
        {
          v20 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v20 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v69 = objc_opt_class();
          v70 = 2114;
          v71 = v6;
          v72 = 2114;
          v73 = v7;
          v22 = v18;
          v23 = v69;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Key (legacy) not found for label: %{public}@", buf, 0x20u);

          v18 = v22;
          v19 = v6;
        }

        v55 = 0;
      }

      else
      {
        v26 = MEMORY[0x1E696AEC0];
        v27 = [MEMORY[0x1E696AD98] numberWithInt:v17];
        v28 = [v26 stringWithFormat:@"Keypair Delete: Failed to delete legacy key. label: %@ status: %@ options: %@", v7, v27, v59];

        v55 = AMSError(600, @"Keychain Error", v28, 0);
      }

      v13 = MEMORY[0x1E697ADC8];
      v11 = MEMORY[0x1E697B020];
    }

    else
    {
      v55 = 0;
      v19 = v6;
    }

    self = selfCopy;
  }

  else
  {
    v16 = MEMORY[0x1E697AFF8];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Keypair Delete: Invalid keychain label for options: %@", optionsCopy];
    v25 = v24 = v11;
    v55 = AMSError(600, @"Keychain Error", v25, 0);

    v11 = v24;
    v18 = v8;
    v19 = v6;
  }

  v56 = v7;
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  if (ams_activeiTunesAccount)
  {
    v29 = v16;
    v30 = [self _ssKeychainLabelForAccount:ams_activeiTunesAccount options:v59];
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v31 setObject:*v18 forKeyedSubscript:*v9];
    [v31 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v31 setObject:*v11 forKeyedSubscript:*v29];
    [v31 setObject:v30 forKeyedSubscript:*v13];
    v32 = SecItemDelete(v31);
    if (v32)
    {
      v33 = v32;
      v34 = +[AMSLogConfig sharedConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v34 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v36 = objc_opt_class();
        v37 = MEMORY[0x1E696AD98];
        v38 = v36;
        v39 = [v37 numberWithInt:v33];
        *buf = 138543874;
        v69 = v36;
        v70 = 2114;
        v71 = v19;
        v72 = 2114;
        v73 = v39;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No deletion of legacy StoreServices keys with status: %{public}@", buf, 0x20u);
      }
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  ams_sharedAccountStore2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_iTunesAccounts = [ams_sharedAccountStore2 ams_iTunesAccounts];

  obj = ams_iTunesAccounts;
  v42 = [ams_iTunesAccounts countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v62;
    v45 = *MEMORY[0x1E695AAF0];
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v62 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v61 + 1) + 8 * i);
        v48 = MEMORY[0x1E696AEC0];
        ams_DSID = [v47 ams_DSID];
        v50 = [v48 stringWithFormat:@"mt-tid-%@", ams_DSID];

        v65 = v45;
        v66 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        [v47 ams_removeCookiesMatchingProperties:v51];
      }

      v43 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v43);
  }

  if (error)
  {
    v52 = v55;
    *error = v55;
  }

  return v55 == 0;
}

+ (id)legacyAttestationForOptions:(id)options error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if ([optionsCopy regenerateKeys])
  {
    v6 = +[AMSLogConfig sharedKeychainConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v41 = v8;
      v42 = 2112;
      v43 = v10;
      v44 = 2114;
      v45 = optionsCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] WARNING - Property options.generateKeys is ignored at this layer: %{public}@", buf, 0x20u);
    }
  }

  v39 = 0;
  v11 = [AMSKeychain _legacyAttestationForOptions:optionsCopy error:&v39];
  v12 = v39;
  if (v12)
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v41 = v15;
      v42 = 2114;
      v43 = v17;
      v44 = 2114;
      v45 = v12;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attestation failed with error: %{public}@", buf, 0x20u);
    }
  }

  if (![v12 ams_hasDomain:*MEMORY[0x1E6966708] code:-3])
  {
LABEL_30:
    if (!error)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v18 = +[AMSLogConfig sharedKeychainConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = v20;
    v22 = AMSSetLogKeyIfNeeded();
    *buf = 138544130;
    v41 = v20;
    v42 = 2114;
    v43 = v22;
    v44 = 2112;
    v45 = optionsCopy;
    v46 = 2112;
    v47 = v12;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attestation failed with options: %@, error: %@", buf, 0x2Au);
  }

  v38 = 0;
  v23 = [AMSKeychain _generateLegacyKeypairForOptions:optionsCopy error:&v38];
  v24 = v38;
  if (!v23)
  {
    v27 = +[AMSLogConfig sharedKeychainConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v27 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = v32;
      v34 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v41 = v32;
      v42 = 2114;
      v43 = v34;
      v44 = 2114;
      v45 = v24;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Re-generation of keys failed with error: %{public}@", buf, 0x20u);
    }

    v26 = v24;
    v25 = v11;
    goto LABEL_29;
  }

  v37 = v24;
  v25 = [AMSKeychain _legacyAttestationForOptions:optionsCopy error:&v37];
  v26 = v37;

  if (v26)
  {
    v27 = +[AMSLogConfig sharedKeychainConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v27 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = v29;
      v31 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v41 = v29;
      v42 = 2114;
      v43 = v31;
      v44 = 2114;
      v45 = v26;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Re-attestation failed with error: %{public}@", buf, 0x20u);
    }

LABEL_29:

    v11 = v25;
    goto LABEL_30;
  }

  v11 = v25;
  if (error)
  {
LABEL_31:
    v35 = v12;
    *error = v12;
  }

LABEL_32:

  return v11;
}

+ (id)certificateKeychainLabelsForOptions:(id)options
{
  v29 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  clientCertLabel = [optionsCopy clientCertLabel];
  intermediateCertLabel = [optionsCopy intermediateCertLabel];
  v7 = intermediateCertLabel;
  if (!clientCertLabel || !intermediateCertLabel)
  {
    purpose = [optionsCopy purpose];
    if (purpose == 1)
    {
      style = [optionsCopy style];
      if (style > 5 || ((1 << style) & 0x31) == 0)
      {
        goto LABEL_15;
      }

      v10 = @"com.apple.AppleMediaServices.cert.X509.client.extended";
    }

    else
    {
      if (purpose)
      {
        goto LABEL_15;
      }

      style2 = [optionsCopy style];
      if ((style2 - 4) >= 2)
      {
        if (style2 == 3)
        {
          [v4 addObject:@"com.apple.AppleMediaServices.cert.watch.client.primary"];
          v12 = @"com.apple.AppleMediaServices.cert.watch.intermediate.primary";
          goto LABEL_14;
        }

        if (style2)
        {
          goto LABEL_15;
        }
      }

      v10 = @"com.apple.AppleMediaServices.cert.X509.client.primary";
    }

    [v4 addObject:v10];
    v12 = @"com.apple.AppleMediaServices.cert.X509.client.intermediate";
LABEL_14:
    [v4 addObject:v12];
    goto LABEL_20;
  }

  [v4 addObject:clientCertLabel];
  [v4 addObject:v7];
LABEL_15:
  v13 = +[AMSLogConfig sharedKeychainConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = AMSSetLogKeyIfNeeded();
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "purpose")}];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "style")}];
    v21 = 138544130;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    v25 = 2114;
    v26 = v17;
    v27 = 2114;
    v28 = v18;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate certificate keychain labels for keychain options: %{public}@ %{public}@", &v21, 0x2Au);
  }

LABEL_20:
  v19 = [v4 copy];

  return v19;
}

+ (id)keychainLabelForOptions:(id)options
{
  v21 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if ([optionsCopy style] != 1 && objc_msgSend(optionsCopy, "style") != 2)
  {
    goto LABEL_6;
  }

  purpose = [optionsCopy purpose];
  if (!purpose)
  {
    v5 = @"com.apple.AppleMediaServices.primaryKey";
    goto LABEL_12;
  }

  if (purpose == 1)
  {
    v5 = @"com.apple.AppleMediaServices.extendedKey";
  }

  else
  {
LABEL_6:
    v6 = +[AMSLogConfig sharedKeychainConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSSetLogKeyIfNeeded();
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "purpose")}];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "style")}];
      v13 = 138544130;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate legacy keychain label for keychain options: %{public}@ %{public}@", &v13, 0x2Au);
    }

    v5 = 0;
  }

LABEL_12:

  return v5;
}

+ (__SecAccessControl)copyAccessControlRefWithAccount:(id)account options:(id)options error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  v9 = AMSSetLogKeyIfNeeded();
  if (![optionsCopy style] || objc_msgSend(optionsCopy, "style") == 4 || objc_msgSend(optionsCopy, "style") == 3 || objc_msgSend(optionsCopy, "style") == 5)
  {
    v36 = 0;
    v10 = &v36;
    v11 = [AMSKeychain copyCertificatePrivateKeyWithContext:0 account:accountCopy options:optionsCopy error:&v36];
  }

  else
  {
    v35 = 0;
    v10 = &v35;
    v11 = [AMSKeychain copyPrivateKeyWithContext:0 account:accountCopy options:optionsCopy error:&v35];
  }

  v12 = v11;
  v13 = *v10;
  if (!v13 && v12)
  {
    v14 = SecKeyCopyAttributes(v12);
    if (v14)
    {
      v15 = v14;
      Value = CFDictionaryGetValue(v14, *MEMORY[0x1E697ABC8]);
      if (Value && (v17 = Value, TypeID = SecAccessControlGetTypeID(), TypeID == CFGetTypeID(v17)))
      {
        v19 = CFRetain(v17);
      }

      else
      {
        v27 = +[AMSLogConfig sharedConfig];
        if (!v27)
        {
          v27 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v27 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          *buf = 138543618;
          v38 = v29;
          v39 = 2114;
          v40 = v9;
          v30 = v29;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ACL lookup failed for no ACL associated with key", buf, 0x16u);
        }

        v19 = 0;
      }

      CFRelease(v15);
    }

    else
    {
      v31 = +[AMSLogConfig sharedConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v31 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        *buf = 138543618;
        v38 = v33;
        v39 = 2114;
        v40 = v9;
        v34 = v33;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ACL lookup failed to fetch key attributes", buf, 0x16u);
      }

      v19 = 0;
    }

    goto LABEL_31;
  }

  v20 = +[AMSLogConfig sharedConfig];
  if (!v20)
  {
    v20 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v20 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    *buf = 138543874;
    v38 = v22;
    v39 = 2114;
    v40 = v9;
    v41 = 2114;
    v42 = v13;
    v23 = v22;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ACL lookup failed for no private key: %{public}@", buf, 0x20u);
  }

  v19 = 0;
  v24 = 0;
  if (v12)
  {
LABEL_31:
    CFRelease(v12);
    v24 = v19;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (error)
  {
LABEL_18:
    v25 = v13;
    *error = v13;
  }

LABEL_19:

  return v24;
}

+ (__SecAccessControl)createAccessControlRefWithOptions:(id)options error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = AMSSetLogKeyIfNeeded();
  v8 = +[AMSLogConfig sharedKeychainConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = [optionsCopy description];
    v12 = AMSHashIfNeeded(v11);
    *buf = 138543874;
    v38 = v10;
    v39 = 2114;
    v40 = v7;
    v41 = 2112;
    errorCopy = v12;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating access control reference with options: %@", buf, 0x20u);
  }

  v13 = 1073741826;

  error = 0;
  if ([optionsCopy style] != 1 && objc_msgSend(optionsCopy, "style") != 2)
  {
    v13 = 0x40000000;
  }

  v14 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697AC28], v13, &error);
  v15 = v14;
  if (error)
  {
    v16 = +[AMSLogConfig sharedKeychainConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      *buf = 138543874;
      v38 = v18;
      v39 = 2114;
      v40 = v7;
      v41 = 2114;
      errorCopy = error;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create access controll reference with error: %{public}@", buf, 0x20u);
    }

    errorCopy4 = error;
    errorCopy3 = error;
    if (error)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (!v14)
  {
    v25 = +[AMSLogConfig sharedKeychainConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      *buf = 138543618;
      v38 = v27;
      v39 = 2114;
      v40 = v7;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create access control reference", buf, 0x16u);
    }

    v28 = @"Create ACL: Failed to create ACL reference";
    goto LABEL_39;
  }

  purpose = [optionsCopy purpose];
  if (purpose == 1)
  {
    v24 = [self _extendedConstraintsWithOptions:optionsCopy];
  }

  else
  {
    if (purpose)
    {
LABEL_34:
      v33 = +[AMSLogConfig sharedKeychainConfig];
      if (!v33)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v33 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        *buf = 138543618;
        v38 = v35;
        v39 = 2114;
        v40 = v7;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create ACL constraints", buf, 0x16u);
      }

      v28 = @"Create ACL: Failed to create ACL constraints";
LABEL_39:
      errorCopy3 = AMSError(600, @"Keychain Error", v28, 0);
      goto LABEL_40;
    }

    v24 = [self _primaryConstraintsWithOptions:optionsCopy];
  }

  v29 = v24;
  if (!v24)
  {
    goto LABEL_34;
  }

  SecAccessControlSetConstraints();
  v30 = +[AMSLogConfig sharedKeychainConfig];
  if (!v30)
  {
    v30 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject5 = [v30 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    *buf = 138543618;
    v38 = v32;
    v39 = 2114;
    v40 = v7;
    _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully configured ACL constraints", buf, 0x16u);
  }

  errorCopy3 = 0;
LABEL_40:
  errorCopy4 = error;
  if (error)
  {
LABEL_14:
    CFRelease(errorCopy4);
  }

LABEL_15:
  if (error)
  {
    v21 = errorCopy3;
    *error = errorCopy3;
  }

  return v15;
}

+ (id)_extendedConstraintsWithOptions:(id)options
{
  style = [options style];

  return [AMSACLConstraintsProvider extendedConstraintsForStyle:style];
}

+ (id)_primaryConstraintsWithOptions:(id)options
{
  style = [options style];

  return [AMSACLConstraintsProvider primaryConstraintsForStyle:style];
}

+ (id)_ssCertificateKeychainLabelForAccount:(id)account options:(id)options
{
  v21 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = [self _ssKeychainLabelForAccount:account options:optionsCopy];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-cert", v7];
  }

  else
  {
    v9 = +[AMSLogConfig sharedKeychainConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = optionsCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find legacy StoreServices certificate label for options: %{public}@", buf, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_ssKeychainLabelForAccount:(id)account options:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  optionsCopy = options;
  purpose = [optionsCopy purpose];
  if (purpose == 1)
  {
    v10 = MEMORY[0x1E696AEC0];
    ams_DSID = [accountCopy ams_DSID];
    [v10 stringWithFormat:@"com.apple.itunesstored:%@-ext", ams_DSID];
    goto LABEL_5;
  }

  if (!purpose)
  {
    v8 = MEMORY[0x1E696AEC0];
    ams_DSID = [accountCopy ams_DSID];
    [v8 stringWithFormat:@"com.apple.itunesstored:%@", ams_DSID];
    v11 = LABEL_5:;

    goto LABEL_11;
  }

  v12 = +[AMSLogConfig sharedKeychainConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = AMSSetLogKeyIfNeeded();
    *buf = 138543874;
    v19 = v14;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = optionsCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find legacy StoreServices keychain label for options: %{public}@", buf, 0x20u);
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (id)_certificatePrivateKeyLabelForOptions:(id)options
{
  v21 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if ([optionsCopy style] && objc_msgSend(optionsCopy, "style") != 4 && objc_msgSend(optionsCopy, "style") != 5 && objc_msgSend(optionsCopy, "style") != 3)
  {
    goto LABEL_8;
  }

  purpose = [optionsCopy purpose];
  if (!purpose)
  {
    v5 = @"com.apple.AppleMediaServices.cert.X509.primary";
    goto LABEL_14;
  }

  if (purpose == 1)
  {
    v5 = @"com.apple.AppleMediaServices.cert.X509.extended";
  }

  else
  {
LABEL_8:
    v6 = +[AMSLogConfig sharedKeychainConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSSetLogKeyIfNeeded();
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "purpose")}];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "style")}];
      v13 = 138544130;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate certificate privateKey keychain labels. options: %{public}@ %{public}@", &v13, 0x2Au);
    }

    v5 = 0;
  }

LABEL_14:

  return v5;
}

+ (__SecKey)_copyLegacyPrivateKeyForOptions:(id)options error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v29 = 0;
  v6 = [AMSKeychain keychainLabelForOptions:optionsCopy];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:*MEMORY[0x1E697AD38] forKeyedSubscript:*MEMORY[0x1E697AD30]];
  [v7 ams_setNullableObject:v6 forKey:*MEMORY[0x1E697ADC8]];
  [v7 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v7 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  v8 = MEMORY[0x1E695E118];
  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697B328]];
  prompt = [optionsCopy prompt];

  if (prompt)
  {
    v10 = objc_opt_new();
    prompt2 = [optionsCopy prompt];
    [v10 setLocalizedReason:prompt2];

    [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x1E697B378]];
  }

  v12 = AMSSecItemCopyMatchingWithTimeFault(v7, &v29);
  if (v12)
  {
    v13 = v12;
    v14 = AMSKeychainError(@"Private Key: Failed to lookup private key", v12);
    v15 = +[AMSLogConfig sharedKeychainConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v6;
      errorCopy = error;
      v19 = objc_opt_class();
      v28 = v19;
      v20 = AMSSetLogKeyIfNeeded();
      v21 = [MEMORY[0x1E696AD98] numberWithInt:v13];
      *buf = 138544130;
      v31 = v19;
      error = errorCopy;
      v6 = v17;
      v32 = 2114;
      v33 = v20;
      v34 = 2112;
      v35 = optionsCopy;
      v36 = 2114;
      v37 = v21;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find private key with options: %@, status: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    if (v29)
    {
      v14 = 0;
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v14 = AMSError(600, @"Keychain Error", @"Private Key: Failed to lookup private key", 0);
    v15 = +[AMSLogConfig sharedKeychainConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = v25;
      v27 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v31 = v25;
      v32 = 2114;
      v33 = v27;
      v34 = 2112;
      v35 = optionsCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find private key with options: %@", buf, 0x20u);
    }
  }

  if (error)
  {
LABEL_9:
    v22 = v14;
    *error = v14;
  }

LABEL_10:
  v23 = v29;

  return v23;
}

+ (__SecKey)_copyLegacyPublicKeyForOptions:(id)options error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v5 = [AMSKeychain _copyLegacyPrivateKeyForOptions:options error:&v19];
  v6 = v19;
  if (!v5)
  {
    v7 = 0;
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = SecKeyCopyPublicKey(v5);
  if (v7)
  {
    v8 = +[AMSLogConfig sharedKeychainConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully copied public key", buf, 0x16u);
    }

    v13 = v6;
  }

  else
  {
    v13 = AMSError(600, @"Keychain Error", @"Public Key: Failed to copy public key", 0);

    v8 = +[AMSLogConfig sharedKeychainConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to copy public key representation", buf, 0x16u);
    }
  }

  CFRelease(v5);
  v6 = v13;
  if (error)
  {
LABEL_15:
    v17 = v6;
    *error = v6;
  }

LABEL_16:

  return v7;
}

+ (void)_deleteResumptionHeaders
{
  v19 = *MEMORY[0x1E69E9840];
  _resumptionHeadersQuery = [self _resumptionHeadersQuery];
  v3 = SecItemDelete(_resumptionHeadersQuery);
  if (v3 != -25303 && v3 != -25300 && v3 != 0)
  {
    v6 = v3;
    v7 = +[AMSLogConfig sharedMediaConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSLogKey();
      v12 = [MEMORY[0x1E696AD98] numberWithInt:v6];
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to delete resumption headers. %{public}@", &v13, 0x20u);
    }
  }
}

+ (BOOL)_generateLegacyKeypairForOptions:(id)options error:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  error = 0;
  v56 = 0;
  [objc_opt_class() deleteKeyPairWithOptions:optionsCopy error:&v56];
  v6 = v56;
  if (v6)
  {
    errorCopy2 = v6;
    v8 = 0;
    goto LABEL_50;
  }

  v9 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697AC28], 0x40000002uLL, &error);
  if (v9)
  {
    v10 = error == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    errorCopy2 = error;
    v11 = +[AMSLogConfig sharedKeychainConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v59 = v13;
      v60 = 2114;
      v61 = v15;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate access control reference", buf, 0x16u);
    }

    v8 = 0;
    if (!v9)
    {
      goto LABEL_50;
    }

LABEL_49:
    CFRelease(v9);
    goto LABEL_50;
  }

  purpose = [optionsCopy purpose];
  if (purpose == 1)
  {
    v17 = [AMSKeychain _extendedConstraintsWithOptions:optionsCopy];
  }

  else
  {
    if (purpose)
    {
LABEL_29:
      v32 = +[AMSLogConfig sharedKeychainConfig];
      if (!v32)
      {
        v32 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v32 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        v35 = v34;
        v36 = AMSSetLogKeyIfNeeded();
        *buf = 138543874;
        v59 = v34;
        v60 = 2114;
        v61 = v36;
        v62 = 2112;
        v63 = optionsCopy;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to sepecify access control constraints for options: %@", buf, 0x20u);
      }

      errorCopy2 = AMSError(600, @"Keychain Error", @"Generate Keypair: Failed to generate ACL constraints", 0);
      v8 = 0;
      goto LABEL_49;
    }

    v17 = [AMSKeychain _primaryConstraintsWithOptions:optionsCopy];
  }

  if (!v17)
  {
    goto LABEL_29;
  }

  v55 = v17;
  SecAccessControlSetConstraints();
  v18 = +[AMSLogConfig sharedKeychainConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = v20;
    v22 = AMSSetLogKeyIfNeeded();
    *buf = 138543874;
    v59 = v20;
    v60 = 2114;
    v61 = v22;
    v62 = 2112;
    v63 = optionsCopy;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Configured keypair ACL constraints for options: %@", buf, 0x20u);
  }

  v23 = [AMSKeychain keychainLabelForOptions:optionsCopy];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v24 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697ABC8]];
  [v24 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  v25 = MEMORY[0x1E695E118];
  [v24 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v24 setObject:v25 forKeyedSubscript:*MEMORY[0x1E697AD18]];
  [v24 ams_setNullableObject:v23 forKey:*MEMORY[0x1E697ADC8]];
  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v26 setObject:*MEMORY[0x1E697AEE0] forKeyedSubscript:*MEMORY[0x1E697AEC8]];
  [v26 setObject:*MEMORY[0x1E697AD78] forKeyedSubscript:*MEMORY[0x1E697AD68]];
  [v26 setObject:&unk_1F0779628 forKeyedSubscript:*MEMORY[0x1E697AD50]];
  [v26 setObject:v24 forKeyedSubscript:*MEMORY[0x1E697B2D0]];
  v27 = SecKeyCreateRandomKey(v26, &error);
  cf = v27;
  if (!v27 && error)
  {
    errorCopy2 = error;
    v28 = +[AMSLogConfig sharedKeychainConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v49 = v30;
      AMSSetLogKeyIfNeeded();
      v31 = v51 = v23;
      *buf = 138543618;
      v59 = v30;
      v60 = 2114;
      v61 = v31;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@]: Failed to create keypair", buf, 0x16u);

      v23 = v51;
    }

LABEL_45:
    v37 = 0;
    v8 = 0;
    goto LABEL_46;
  }

  v37 = SecKeyCopyPublicKey(v27);
  v38 = +[AMSLogConfig sharedKeychainConfig];
  v39 = v38;
  if (!v37)
  {
    if (!v38)
    {
      v39 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [v39 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      v53 = v44;
      AMSSetLogKeyIfNeeded();
      v46 = v45 = v23;
      *buf = 138543618;
      v59 = v44;
      v60 = 2114;
      v61 = v46;
      _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@]: Failed to retrieve the public key from a private key", buf, 0x16u);

      v23 = v45;
    }

    errorCopy2 = AMSError(600, @"Keychain Error", @"Generate Keypair: Failed to retrieve the public key from a private key", 0);
    goto LABEL_45;
  }

  if (!v38)
  {
    v39 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject6 = [v39 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
  {
    v41 = objc_opt_class();
    v50 = v41;
    AMSSetLogKeyIfNeeded();
    v42 = v52 = v23;
    *buf = 138543874;
    v59 = v41;
    v60 = 2114;
    v61 = v42;
    v62 = 2112;
    v63 = optionsCopy;
    _os_log_impl(&dword_192869000, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Keypair generated for options: %@", buf, 0x20u);

    v23 = v52;
  }

  errorCopy2 = 0;
  v8 = 1;
LABEL_46:

  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = v37;
  if (v37)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (error)
  {
    CFRelease(error);
  }

  if (error)
  {
    v47 = errorCopy2;
    *error = errorCopy2;
  }

  return v8;
}

+ (id)_legacyAttestationForOptions:(id)options error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  cf = 0;
  if ([optionsCopy style] == 1 || objc_msgSend(optionsCopy, "style") == 2)
  {
    v6 = [AMSKeychain keychainLabelForOptions:optionsCopy];
    if (v6)
    {
      v53 = 0;
      v7 = [AMSKeychain _copyLegacyPrivateKeyForOptions:optionsCopy error:&v53];
      v8 = v53;
      if (v7)
      {
        goto LABEL_5;
      }

      v22 = +[AMSLogConfig sharedKeychainConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v22 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v48 = v24;
        v25 = AMSSetLogKeyIfNeeded();
        *buf = 138544130;
        v56 = v24;
        v57 = 2114;
        v58 = v25;
        v59 = 2112;
        v60 = optionsCopy;
        v61 = 2114;
        v62 = v8;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find private key for options: %@, error: %{public}@", buf, 0x2Au);
      }

      v52 = v8;
      v26 = [AMSKeychain _generateLegacyKeypairForOptions:optionsCopy error:&v52];
      v11 = v52;

      if (v26)
      {
        v27 = +[AMSLogConfig sharedKeychainConfig];
        if (!v27)
        {
          v27 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v27 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_opt_class();
          v49 = v29;
          v30 = AMSSetLogKeyIfNeeded();
          *buf = 138543874;
          v56 = v29;
          v57 = 2114;
          v58 = v30;
          v59 = 2112;
          v60 = optionsCopy;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting second lookup for private key for options: %@", buf, 0x20u);
        }

        v51 = v11;
        v7 = [AMSKeychain _copyLegacyPrivateKeyForOptions:optionsCopy error:&v51];
        v8 = v51;

        if (v7)
        {
LABEL_5:
          v9 = SecKeyCopySystemKey();
          v10 = v9;
          if (cf)
          {
            v11 = cf;

            v12 = 0;
            if (!v10)
            {
LABEL_44:
              CFRelease(v7);
              if (cf)
              {
                CFRelease(cf);
              }

              goto LABEL_46;
            }
          }

          else
          {
            if (!v9)
            {
              optionsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keychain Attestation: Attesting key lookup failed for options: %@", optionsCopy];
              v11 = AMSError(600, @"Keychain Error", optionsCopy, 0);

              v12 = 0;
              goto LABEL_44;
            }

            Attestation = SecKeyCreateAttestation();
            v37 = Attestation;
            if (cf)
            {
              v11 = cf;

              v38 = 0;
              v12 = 0;
              if (!v37)
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (!Attestation)
              {
                optionsCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keychain Attestation: Failed to create attestation data for options: %@", optionsCopy];
                v11 = AMSError(600, @"Keychain Error", optionsCopy2, 0);

                v12 = 0;
                goto LABEL_43;
              }

              v40 = +[AMSLogConfig sharedKeychainConfig];
              if (!v40)
              {
                v40 = +[AMSLogConfig sharedConfig];
              }

              oSLogObject3 = [v40 OSLogObject];
              if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
              {
                v42 = objc_opt_class();
                v50 = v42;
                v43 = AMSSetLogKeyIfNeeded();
                *buf = 138543874;
                v56 = v42;
                v57 = 2114;
                v58 = v43;
                v44 = v43;
                v59 = 2112;
                v60 = optionsCopy;
                _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Generating attestation for options: %@", buf, 0x20u);
              }

              v38 = [v37 base64EncodedStringWithOptions:0];
              v11 = v8;
            }

            CFRelease(v37);
            v12 = v38;
          }

LABEL_43:
          CFRelease(v10);
          goto LABEL_44;
        }

        v11 = v8;
      }

      v31 = +[AMSLogConfig sharedKeychainConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v31 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = v33;
        v35 = AMSSetLogKeyIfNeeded();
        *buf = 138543874;
        v56 = v33;
        v57 = 2114;
        v58 = v35;
        v59 = 2112;
        v60 = optionsCopy;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate private key for options: %@", buf, 0x20u);
      }
    }

    else
    {
      optionsCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keychain Attestation: Invalid keychain label for options: %@", optionsCopy];
      v11 = AMSError(600, @"Keychain Error", optionsCopy3, 0);
    }

    v12 = 0;
LABEL_46:
    if (error)
    {
      v45 = v11;
      *error = v11;
    }

    optionsCopy4 = v12;

    v21 = optionsCopy4;
    goto LABEL_49;
  }

  v14 = +[AMSLogConfig sharedKeychainConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject5 = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = AMSSetLogKeyIfNeeded();
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "style")}];
    *buf = 138543874;
    v56 = v16;
    v57 = 2114;
    v58 = v18;
    v59 = 2114;
    v60 = v19;
    _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ** WARNING ** Failing attestation for incorrect attestation style: %{public}@", buf, 0x20u);
  }

  optionsCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keychain Attestation: Invalid attestation style for options: %@", optionsCopy];
  v11 = AMSError(600, @"Keychain Error", optionsCopy4, 0);
  v21 = 0;
LABEL_49:

  return v21;
}

+ (id)_resumptionHeadersQuery
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *MEMORY[0x1E697B390];
  [v2 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:*MEMORY[0x1E697B390]];
  v4 = *MEMORY[0x1E697ABD0];
  [v2 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v3];
  [v2 setObject:@"com.apple.AppleMediaServices.resumptionHeaders" forKeyedSubscript:*MEMORY[0x1E697AE88]];
  [v2 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v2 setObject:@"apple" forKeyedSubscript:v4];

  return v2;
}

+ (id)publicKeyHeaderWithAccount:(id)account options:(id)options signatureResult:(id)result
{
  accountCopy = account;
  optionsCopy = options;
  resultCopy = result;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__38;
  v27 = __Block_byref_object_dispose__38;
  v28 = objc_alloc_init(AMSDaemonConnection);
  keychainServiceProxy = [v24[5] keychainServiceProxy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__AMSKeychain_publicKeyHeaderWithAccount_options_signatureResult___block_invoke;
  v18[3] = &unk_1E73B8770;
  v11 = accountCopy;
  v19 = v11;
  v12 = optionsCopy;
  v20 = v12;
  v13 = resultCopy;
  v21 = v13;
  v22 = &v23;
  v14 = [keychainServiceProxy thenWithBlock:v18];
  v17 = 0;
  v15 = [v14 resultWithError:&v17];

  _Block_object_dispose(&v23, 8);

  return v15;
}

AMSMutablePromise *__66__AMSKeychain_publicKeyHeaderWithAccount_options_signatureResult___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__AMSKeychain_publicKeyHeaderWithAccount_options_signatureResult___block_invoke_2;
  v11[3] = &unk_1E73B8748;
  v8 = v4;
  v9 = a1[7];
  v12 = v8;
  v13 = v9;
  [v3 getPublicKeyHeaderWithAccount:v5 options:v6 signatureResult:v7 completion:v11];

  return v8;
}

void __66__AMSKeychain_publicKeyHeaderWithAccount_options_signatureResult___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 finishWithError:?];
  }

  else
  {
    [v4 finishWithResult:a2];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

+ (void)setSecItemAddFunc:(void *)func
{
  if (+[AMSUnitTests isRunningUnitTests])
  {
    _secItemAddFunc = func;
  }
}

+ (void)setSecItemCopyMatchingFunc:(void *)func
{
  if (+[AMSUnitTests isRunningUnitTests])
  {
    _secItemCopyMatchingFunc = func;
  }
}

@end