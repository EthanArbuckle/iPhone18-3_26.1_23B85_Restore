@interface AMSKeychain
+ (BOOL)_generateLegacyKeypairForOptions:(id)a3 error:(id *)a4;
+ (BOOL)deleteCertificateChainWithOptions:(id)a3 error:(id *)a4;
+ (BOOL)deleteKeyPairWithOptions:(id)a3 error:(id *)a4;
+ (BOOL)stashResumptionHeaders:(id)a3 error:(id *)a4;
+ (BOOL)storePrimaryCert:(__SecCertificate *)a3 intermediateCert:(__SecCertificate *)a4 privateKey:(__SecKey *)a5 options:(id)a6 error:(id *)a7;
+ (__SecAccessControl)copyAccessControlRefWithAccount:(id)a3 options:(id)a4 error:(id *)a5;
+ (__SecAccessControl)createAccessControlRefWithOptions:(id)a3 error:(id *)a4;
+ (__SecKey)_copyLegacyPrivateKeyForOptions:(id)a3 error:(id *)a4;
+ (__SecKey)_copyLegacyPublicKeyForOptions:(id)a3 error:(id *)a4;
+ (__SecKey)copyCertificatePrivateKeyWithContext:(id)a3 account:(id)a4 options:(id)a5 error:(id *)a6;
+ (__SecKey)copyPrivateKeyWithContext:(id)a3 account:(id)a4 options:(id)a5 error:(id *)a6;
+ (__SecKey)copyPrivateKeyWithContext:(id)a3 options:(id)a4 error:(id *)a5;
+ (__SecKey)copyPublicKeyForAccount:(id)a3 options:(id)a4 error:(id *)a5;
+ (__SecKey)copyPublicKeyForOptions:(id)a3 error:(id *)a4;
+ (id)_certificatePrivateKeyLabelForOptions:(id)a3;
+ (id)_extendedConstraintsWithOptions:(id)a3;
+ (id)_legacyAttestationForOptions:(id)a3 error:(id *)a4;
+ (id)_primaryConstraintsWithOptions:(id)a3;
+ (id)_resumptionHeadersQuery;
+ (id)_ssCertificateKeychainLabelForAccount:(id)a3 options:(id)a4;
+ (id)_ssKeychainLabelForAccount:(id)a3 options:(id)a4;
+ (id)certificateChainStringsForOptions:(id)a3 error:(id *)a4;
+ (id)certificateKeychainLabelsForOptions:(id)a3;
+ (id)keychainLabelForOptions:(id)a3;
+ (id)legacyAttestationForOptions:(id)a3 error:(id *)a4;
+ (id)publicKeyHeaderWithAccount:(id)a3 options:(id)a4 signatureResult:(id)a5;
+ (id)resumptionHeaders;
+ (void)_deleteResumptionHeaders;
+ (void)setSecItemAddFunc:(void *)a3;
+ (void)setSecItemCopyMatchingFunc:(void *)a3;
@end

@implementation AMSKeychain

+ (id)certificateChainStringsForOptions:(id)a3 error:(id *)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [AMSKeychain certificateKeychainLabelsForOptions:v5];
  v8 = 0x1E696A000uLL;
  if ([v7 count] == 2 || (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Certificate Lookup: Invalid number of keychain labels: %@ options: %@", v7, v5), v9 = objc_claimAutoreleasedReturnValue(), AMSError(600, @"Keychain Error", v9, 0), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
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
      v42 = a4;
      v43 = v5;
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

          v20 = [v19 OSLogObject];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
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
            _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Fetching cert for label: %{public}@", buf, 0x20u);

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
            v5 = v43;
            v36 = [v34 stringWithFormat:@"Certificate Lookup: Failed to find cert. status: %@ options: %@", v35, v43];

            v10 = AMSKeychainError(v36, v33);

            v7 = v41;
            a4 = v42;
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
      a4 = v42;
      v5 = v43;
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
    v37 = [*(v8 + 3776) stringWithFormat:@"Certificate Lookup: Cert fetch finished without either an error or both certs. options: %@", v5];
    v38 = AMSError(600, @"Keychain Error", v37, 0);

    v10 = v38;
  }

  if (v10)
  {

    v6 = 0;
  }

  if (a4)
  {
    v39 = v10;
    *a4 = v10;
  }

  return v6;
}

+ (__SecKey)copyPrivateKeyWithContext:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  cf = 0;
  v10 = [v9 style];
  if (v10 > 5)
  {
    goto LABEL_23;
  }

  if (((1 << v10) & 0x39) != 0)
  {
    [a1 _certificatePrivateKeyLabelForOptions:v9];
  }

  else
  {
    [a1 keychainLabelForOptions:v9];
  }
  v11 = ;
  if (!v11)
  {
LABEL_23:
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Private Key Lookup: Invalid private key label: %@. options: %@", 0, v9];
    v13 = AMSError(600, @"Keychain Error", v12, 0);

    v11 = 0;
    if (v13)
    {
LABEL_17:
      if (a5)
      {
        v23 = v13;
        *a5 = v13;
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
  if (v8)
  {
    [v14 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697B378]];
  }

  v16 = AMSSecItemCopyMatchingWithTimeFault(v14, &cf);
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0x1E696AEC0];
    v19 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    v20 = [v18 stringWithFormat:@"Private Key Lookup: Failed to fetch privateKey. status: %@ options: %@", v19, v9];

    v13 = AMSKeychainError(v20, v17);
  }

  else
  {
    v13 = 0;
  }

  v21 = cf;
  if (!(v13 | cf))
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Private Key Lookup: Finished without a result or error. options: %@", v9];
    v13 = AMSError(600, @"Keychain Error", v22, 0);

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

+ (__SecKey)copyCertificatePrivateKeyWithContext:(id)a3 account:(id)a4 options:(id)a5 error:(id *)a6
{
  v80 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v71 = 0;
  v70 = AMSSetLogKeyIfNeeded();
  if (![v13 style] || objc_msgSend(v13, "style") == 4 || objc_msgSend(v13, "style") == 3 || objc_msgSend(v13, "style") == 5)
  {
    v67 = a1;
    v69 = v13;
    v14 = [a1 _ssKeychainLabelForAccount:v12 options:v13];
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
    [v15 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697B378]];
    v21 = AMSSecItemCopyMatchingWithTimeFault(v15, &v71);
    if (v21 != -25300)
    {
      v22 = v21;
      if (v21)
      {
        v61 = v12;
        v62 = v11;
        v23 = +[AMSLogConfig sharedKeychainConfig];
        if (!v23)
        {
          v23 = +[AMSLogConfig sharedConfig];
        }

        v24 = [v23 OSLogObject];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
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
          _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Retrieving certificate key for legacy StoreServices returned status: %{public}@", buf, 0x20u);
        }

        v12 = v61;
        v11 = v62;
      }
    }

    v27 = v71;
    if (!v71)
    {
      v28 = v12;
      v29 = [v67 _certificatePrivateKeyLabelForOptions:v69];
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
      [v30 setObject:v11 forKeyedSubscript:v20];
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

          v37 = [v36 OSLogObject];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = objc_opt_class();
            v39 = MEMORY[0x1E696AD98];
            v66 = v32;
            v40 = v11;
            v41 = v38;
            v42 = [v39 numberWithInt:v35];
            *buf = 138543874;
            v73 = v38;
            v74 = 2114;
            v75 = v70;
            v76 = 2114;
            v77 = v42;
            _os_log_impl(&dword_192869000, v37, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Retrieving certificate key for AMS returned status: %{public}@", buf, 0x20u);

            v11 = v40;
            v32 = v66;
          }
        }
      }

      v27 = v71;
      v12 = v28;
      if (!v71)
      {
        v43 = +[AMSLogConfig sharedKeychainConfig];
        if (!v43)
        {
          v43 = +[AMSLogConfig sharedConfig];
        }

        v44 = [v43 OSLogObject];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
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
          _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find certificate key either for AMS or StoreServices for account: %{public}@", buf, 0x20u);

          v12 = v28;
        }

        v27 = v71;
      }
    }

    v48 = 0;
    v13 = v69;
  }

  else
  {
    v50 = +[AMSLogConfig sharedKeychainConfig];
    if (!v50)
    {
      v50 = +[AMSLogConfig sharedConfig];
    }

    v51 = [v50 OSLogObject];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = objc_opt_class();
      v53 = v12;
      v54 = v52;
      v55 = NSStringFromSelector(a2);
      v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "style")}];
      *buf = 138544130;
      v73 = v52;
      v74 = 2114;
      v75 = v70;
      v76 = 2112;
      v77 = v55;
      v78 = 2112;
      v79 = v56;
      _os_log_impl(&dword_192869000, v51, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %@ was invoked with attestation style: %@", buf, 0x2Au);

      v12 = v53;
    }

    v57 = AMSError(600, @"Keychain Error", @"Incorrect Attestation Style", 0);
    v48 = v57;
    if (a6)
    {
      v58 = v57;
      v27 = 0;
      *a6 = v48;
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

+ (__SecKey)copyPrivateKeyWithContext:(id)a3 account:(id)a4 options:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v37 = 0;
  v14 = AMSSetLogKeyIfNeeded();
  if ([v13 style] == 1)
  {
    v35 = a6;
    v15 = [a1 _ssKeychainLabelForAccount:v12 options:v13];
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
    if (v11)
    {
      [v16 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697B378]];
    }

    if (AMSSecItemCopyMatchingWithTimeFault(v16, &v37))
    {
      v17 = +[AMSLogConfig sharedKeychainConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        *buf = 138543618;
        v39 = v19;
        v40 = 2114;
        v41 = v14;
        v20 = v19;
        _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No legacy StoreServices private key found", buf, 0x16u);
      }
    }

    v21 = 0;
    v22 = 0;
    v23 = v37;
    if (!v37)
    {
LABEL_20:
      v23 = [a1 copyPrivateKeyWithContext:v11 options:v13 error:v35];
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

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = v14;
      v27 = v12;
      v28 = a6;
      v29 = objc_opt_class();
      v36 = v29;
      v30 = NSStringFromSelector(a2);
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "style")}];
      *buf = 138544130;
      v39 = v29;
      a6 = v28;
      v12 = v27;
      v14 = v26;
      v40 = 2114;
      v41 = v26;
      v42 = 2112;
      v43 = v30;
      v44 = 2112;
      v45 = v31;
      _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %@ was invoked with attestation style: %@", buf, 0x2Au);
    }

    v32 = AMSError(600, @"Keychain Error", @"Incorrect Attestation Style", 0);
    v22 = v32;
    if (a6)
    {
      v33 = v32;
      v23 = 0;
      *a6 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

+ (__SecKey)copyPublicKeyForAccount:(id)a3 options:(id)a4 error:(id *)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v45 = AMSSetLogKeyIfNeeded();
  if (![v8 style] || objc_msgSend(v8, "style") == 4 || objc_msgSend(v8, "style") == 5)
  {
    v50 = 0;
    v9 = [AMSKeychain copyCertificatePrivateKeyWithContext:0 account:v7 options:v8 error:&v50];
    v10 = v50;
    if (v9)
    {
      v11 = SecKeyCopyPublicKey(v9);
      if (v11)
      {
        v12 = v11;
        v13 = a5;
        v14 = +[AMSLogConfig sharedKeychainConfig];
        if (!v14)
        {
          v14 = +[AMSLogConfig sharedConfig];
        }

        v15 = [v14 OSLogObject];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          *buf = 138543874;
          v52 = v16;
          v53 = 2114;
          v17 = v45;
          v54 = v45;
          v55 = 2114;
          v56 = v8;
          v18 = v16;
          _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found public key cert reference for options: %{public}@", buf, 0x20u);

          a5 = v13;
        }

        else
        {
          v17 = v45;
        }

LABEL_20:

        goto LABEL_21;
      }
    }

    v19 = [[AMSBiometricsTokenUpdateTask alloc] initWithAccount:v7];
    [(AMSBiometricsTokenUpdateTask *)v19 setShouldGenerateKeysOnly:1];
    v20 = [(AMSBiometricsTokenUpdateTask *)v19 performUpdate];
    v49 = v10;
    [v20 resultWithError:&v49];
    v21 = v49;

    if (v21)
    {
      v43 = v7;
      v22 = a5;
      v23 = +[AMSLogConfig sharedAttestationConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = AMSSetLogKeyIfNeeded();
        *buf = 138543874;
        v52 = v25;
        v53 = 2114;
        v54 = v26;
        v55 = 2114;
        v56 = v21;
        _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Re-create cert chain failed with error: %{public}@", buf, 0x20u);
      }

      a5 = v22;
      v7 = v43;
    }
  }

  else
  {
    if ([v8 style] != 1)
    {
      v33 = a5;
      v34 = +[AMSLogConfig sharedKeychainConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      v35 = [v34 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v52 = objc_opt_class();
        v53 = 2114;
        v54 = v45;
        v55 = 2114;
        v56 = v8;
        v36 = v52;
        _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Legacy StoreServices public key lookup not supported for attestation style: %{public}@", buf, 0x20u);
      }

      v27 = 0;
      v10 = 0;
      a5 = v33;
      v17 = v45;
      goto LABEL_22;
    }

    v44 = a5;
    v48 = 0;
    v9 = [AMSKeychain copyPrivateKeyWithContext:0 account:v7 options:v8 error:&v48];
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

        v15 = [v14 OSLogObject];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_opt_class();
          *buf = 138543874;
          v52 = v31;
          v53 = 2114;
          v17 = v45;
          v54 = v45;
          v55 = 2114;
          v56 = v8;
          v32 = v31;
          _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found public key reference for options: %{public}@", buf, 0x20u);

          a5 = v44;
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

    v38 = [v37 OSLogObject];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v40 = v39;
      v41 = AMSSetLogKeyIfNeeded();
      *buf = 138544130;
      v52 = v39;
      v53 = 2114;
      v54 = v41;
      v55 = 2112;
      v56 = v8;
      v57 = 2114;
      v58 = v10;
      _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find public key reference for options: %@, error: %{public}@", buf, 0x2Au);
    }

    v47 = v10;
    v42 = [AMSKeychain _generateLegacyKeypairForOptions:v8 error:&v47];
    v21 = v47;

    if (v42)
    {
      v46 = v21;
      v9 = [objc_opt_class() copyPrivateKeyWithContext:0 options:v8 error:&v46];
      v10 = v46;

      if (v9)
      {
        v12 = SecKeyCopyPublicKey(v9);
        a5 = v44;
        v17 = v45;
        goto LABEL_21;
      }

      v27 = 0;
      a5 = v44;
      v17 = v45;
      goto LABEL_22;
    }

    a5 = v44;
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
  if (a5)
  {
    v28 = v10;
    *a5 = v10;
  }

  return v27;
}

+ (__SecKey)copyPublicKeyForOptions:(id)a3 error:(id *)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v65 = 0;
  v7 = 0;
  if ([v6 style] == 4)
  {
    v8 = [AMSKeychain certificateKeychainLabelsForOptions:v6];
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

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = a4;
        v19 = objc_opt_class();
        v59 = v8;
        v20 = a1;
        v21 = v19;
        v22 = AMSLogKey();
        *buf = 138543874;
        v67 = v19;
        a4 = v18;
        v68 = 2114;
        v69 = v22;
        v70 = 2114;
        v71 = v11;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Did not lookup public key: %{public}@", buf, 0x20u);

        a1 = v20;
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

      v23 = [v16 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v57 = v24;
        AMSLogKey();
        v25 = v58 = a1;
        v26 = v65;
        [MEMORY[0x1E696AD98] numberWithInt:0];
        v27 = v60 = a4;
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
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Success for lookup of public key label: %{public}@, key: %{public}@, status: %{public}@", buf, 0x34u);

        a4 = v60;
        a1 = v58;
      }

      v7 = 0;
    }
  }

  if ([v6 style] == 3 || !objc_msgSend(v6, "style"))
  {
    v64 = v7;
    v35 = [a1 certificateChainStringsForOptions:v6 error:&v64];
    v36 = v64;

    v37 = [v35 firstObject];
    if ([v37 length])
    {
      v38 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v37 options:0];
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

  else if ([v6 style] == 1 || objc_msgSend(v6, "style") == 2)
  {
    v28 = +[AMSLogConfig sharedKeychainConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = v30;
      v32 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v67 = v30;
      v68 = 2114;
      v69 = v32;
      v70 = 2112;
      v71 = v6;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to lookup public key for options: %@", buf, 0x20u);
    }

    v63 = v7;
    v33 = [AMSKeychain _copyLegacyPublicKeyForOptions:v6 error:&v63];
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

      v42 = [v41 OSLogObject];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v44 = v43;
        v45 = AMSSetLogKeyIfNeeded();
        *buf = 138544130;
        v67 = v43;
        v68 = 2114;
        v69 = v45;
        v70 = 2112;
        v71 = v6;
        v72 = 2114;
        v73 = v34;
        _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find public key for options: %@, error: %{public}@", buf, 0x2Au);
      }

      v62 = v34;
      v46 = [AMSKeychain _generateLegacyKeypairForOptions:v6 error:&v62];
      v7 = v62;

      if (v46)
      {
        v47 = +[AMSLogConfig sharedKeychainConfig];
        if (!v47)
        {
          v47 = +[AMSLogConfig sharedConfig];
        }

        v48 = [v47 OSLogObject];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = objc_opt_class();
          v50 = v49;
          v51 = AMSSetLogKeyIfNeeded();
          *buf = 138543874;
          v67 = v49;
          v68 = 2114;
          v69 = v51;
          v70 = 2112;
          v71 = v6;
          _os_log_impl(&dword_192869000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting second lookup for public key for options: %@", buf, 0x20u);
        }

        v61 = v7;
        v52 = [AMSKeychain _copyLegacyPublicKeyForOptions:v6 error:&v61];
        v53 = v61;

        v65 = v52;
        v7 = v53;
      }
    }
  }

  if (a4)
  {
    v54 = v7;
    *a4 = v7;
  }

  v55 = v65;

  return v55;
}

+ (BOOL)deleteCertificateChainWithOptions:(id)a3 error:(id *)a4
{
  v122 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v87 = AMSSetLogKeyIfNeeded();
  v6 = [AMSKeychain certificateKeychainLabelsForOptions:v5];
  v85 = a4;
  if ([v6 count] == 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Delete Certificate: Invalid number of keychain labels: %@ options: %@", v6, v5];
    v7 = AMSError(600, @"Keychain Error", v8, 0);
  }

  v86 = [a1 _certificatePrivateKeyLabelForOptions:v5];
  if (!v86)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Delete Certificate: NULL privateKey label for options: %@", v5];
    v10 = AMSError(600, @"Keychain Error", v9, 0);

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
            v19 = +[AMSLogConfig sharedConfig];
            if (!v19)
            {
              v19 = +[AMSLogConfig sharedConfig];
            }

            v20 = [v19 OSLogObject];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = objc_opt_class();
              v22 = AMSLogKey();
              *buf = 138543874;
              v116 = v21;
              v117 = 2114;
              v118 = v22;
              v119 = 2114;
              v120 = v15;
              _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cert not found for label: %{public}@", buf, 0x20u);
            }

            v7 = 0;
          }

          else
          {
            v23 = MEMORY[0x1E696AEC0];
            v24 = [MEMORY[0x1E696AD98] numberWithInt:v17];
            v19 = [v23 stringWithFormat:@"Delete Certificate: Failed to delete cert. label: %@ status: %@ options: %@", v15, v24, v5];

            v7 = AMSKeychainError(v19, v18);
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
        v30 = +[AMSLogConfig sharedConfig];
        if (!v30)
        {
          v30 = +[AMSLogConfig sharedConfig];
        }

        v31 = [v30 OSLogObject];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = objc_opt_class();
          v33 = AMSLogKey();
          *buf = 138543874;
          v116 = v32;
          v117 = 2114;
          v118 = v33;
          v119 = 2114;
          v120 = v86;
          _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Key (cert) not found for label: %{public}@", buf, 0x20u);
        }

        v7 = 0;
      }

      else
      {
        v81 = MEMORY[0x1E696AEC0];
        v82 = [MEMORY[0x1E696AD98] numberWithInt:v28];
        v30 = [v81 stringWithFormat:@"Delete Certificate: Failed to delete cert key. label: %@ status: %@ options: %@", v86, v82, v5];

        v7 = AMSKeychainError(v30, v29);
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
  v98 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v35 = [v98 ams_activeiTunesAccount];
  if (v35)
  {
    v36 = [a1 _ssCertificateKeychainLabelForAccount:v35 options:v5];
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

      v44 = [v43 OSLogObject];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No deletion of legacy StoreServices laef cert with status: %{public}@", buf, 0x20u);

        v38 = v88;
      }

      v39 = v102;
    }

    v48 = [a1 _ssKeychainLabelForAccount:v35 options:v5];
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

      v52 = [v51 OSLogObject];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&dword_192869000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No deletion of legacy StoreServices key with status: %{public}@", buf, 0x20u);
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

  v103 = v5;
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

    v62 = [v61 OSLogObject];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_192869000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No deletion of legacy StoreServices intermediate cert with status: %{public}@", buf, 0x20u);
    }
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v67 = [*(v34 + 2632) ams_sharedAccountStore];
  v68 = [v67 ams_iTunesAccounts];

  v69 = [v68 countByEnumeratingWithState:&v104 objects:v114 count:16];
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
          objc_enumerationMutation(v68);
        }

        v74 = *(*(&v104 + 1) + 8 * j);
        v75 = MEMORY[0x1E696AEC0];
        v76 = [v74 ams_DSID];
        v77 = [v75 stringWithFormat:@"mt-tid-%@", v76];

        v112 = v72;
        v113 = v77;
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        [v74 ams_removeCookiesMatchingProperties:v78];
      }

      v70 = [v68 countByEnumeratingWithState:&v104 objects:v114 count:16];
    }

    while (v70);
  }

  if (v85)
  {
    v79 = v100;
    *v85 = v100;
  }

  return v100 == 0;
}

+ (BOOL)storePrimaryCert:(__SecCertificate *)a3 intermediateCert:(__SecCertificate *)a4 privateKey:(__SecKey *)a5 options:(id)a6 error:(id *)a7
{
  v81 = *MEMORY[0x1E69E9840];
  v69 = a6;
  v12 = [a1 _certificatePrivateKeyLabelForOptions:?];
  v13 = v12;
  if (a5 && v12)
  {
    v14 = 0;
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store Certificate: Invalid private key OR label. label: %@ options: %@", v12, v69];
    v14 = AMSError(2, @"Keychain Error", v15, 0);

    if (a4)
    {
      goto LABEL_9;
    }
  }

  if (!a3 && !v14)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store Certificate: Invalid certs. options: %@", v69];
    v14 = AMSError(2, @"Keychain Error", v16, 0);
  }

LABEL_9:
  v68 = [AMSKeychain certificateKeychainLabelsForOptions:v69];
  if (!v14)
  {
    if ([v68 count] == 2)
    {
      v14 = 0;
    }

    else
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store Certificate: Invalid number of keychain labels: %@ options: %@", v68, v69];
      v14 = AMSError(2, @"Keychain Error", v17, 0);
    }
  }

  v70 = 0;
  [a1 deleteCertificateChainWithOptions:v69 error:&v70];
  v67 = v70;
  if (v67)
  {
    v65 = a4;
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = a1;
      v21 = objc_opt_class();
      v63 = v21;
      AMSLogKey();
      v22 = a3;
      v23 = v13;
      v25 = v24 = a7;
      *buf = 138543874;
      v72 = v21;
      a1 = v20;
      v73 = 2114;
      v74 = v25;
      v75 = 2114;
      v76 = v14;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to delete certs. Error: %{public}@", buf, 0x20u);

      a7 = v24;
      v13 = v23;
      a3 = v22;
    }

    a4 = v65;
  }

  if (a5 && !v14)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v26 setObject:*MEMORY[0x1E697AD38] forKeyedSubscript:*MEMORY[0x1E697AD30]];
    [v26 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v26 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
    [v26 setObject:v13 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    [v26 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v26 setObject:a5 forKeyedSubscript:*MEMORY[0x1E697B3D0]];
    v27 = ([a1 secItemAddFunc])(v26, 0);
    if (v27)
    {
      v28 = v27;
      v29 = a7;
      v30 = a3;
      v31 = a4;
      v32 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E696AD98] numberWithInt:v27];
      v34 = v33 = a1;
      v35 = [v32 stringWithFormat:@"Store Certificate: Failed to save privateKey for label: %@ status: %@ options: %@", v13, v34, v69];

      a1 = v33;
      v14 = AMSKeychainError(v35, v28);

      a4 = v31;
      a3 = v30;
      a7 = v29;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a3 && !v14)
  {
    v36 = [v68 objectAtIndexedSubscript:0];
    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v37 setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v37 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v37 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
    [v37 setObject:a3 forKeyedSubscript:*MEMORY[0x1E697B3D0]];
    [v37 setObject:v36 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    v38 = ([a1 secItemAddFunc])(v37, 0);
    if (v38)
    {
      v39 = v38;
      v40 = a4;
      v41 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E696AD98] numberWithInt:v38];
      v43 = v42 = a1;
      v44 = [v41 stringWithFormat:@"Store Certificate: Failed to save client cert for label: %@ status: %@ options: %@", v36, v43, v69];

      a1 = v42;
      v14 = AMSKeychainError(v44, v39);

      a4 = v40;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a4 && !v14)
  {
    v64 = a7;
    v66 = v13;
    v45 = [v68 objectAtIndexedSubscript:1];
    v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v46 setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v46 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v46 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
    [v46 setObject:a4 forKeyedSubscript:*MEMORY[0x1E697B3D0]];
    [v46 setObject:v45 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    v47 = ([a1 secItemAddFunc])(v46, 0);
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

        v50 = [v49 OSLogObject];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
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
          _os_log_impl(&dword_192869000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [Store-Certificate] Skipping intermediate cert save for duplicate status: %{public}@, label: %{public}@, options: %{public}@ ", buf, 0x34u);
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

        v56 = [v55 OSLogObject];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
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
          v80 = v69;
          _os_log_impl(&dword_192869000, v56, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [Store-Certificate] Failed to save intermediate cert for label: %{public}@, options: %{public}@, status: %{public}@", buf, 0x34u);
        }

        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store Certificate: Failed to save intermediate [cert"];
        v14 = AMSKeychainError(v49, v48);
      }
    }

    else
    {
      v14 = 0;
    }

    a7 = v64;

    v13 = v66;
  }

  if (a7)
  {
    v61 = v14;
    *a7 = v14;
  }

  return v14 == 0;
}

+ (id)resumptionHeaders
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v3 = [a1 _resumptionHeadersQuery];
  v4 = [v3 mutableCopy];

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

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = AMSLogKey();
        *buf = 138543874;
        v20 = v10;
        v21 = 2114;
        v22 = v11;
        v23 = 2114;
        v24 = v7;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to deserialize TID continue headers. %{public}@", buf, 0x20u);
      }
    }
  }

  v12 = +[AMSLogConfig sharedKeychainConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = AMSLogKey();
    v15 = [v6 count];
    *buf = 138544130;
    v20 = a1;
    v21 = 2114;
    v22 = v14;
    v23 = 2048;
    v24 = v15;
    v25 = 2048;
    v26 = v5;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found %ld TID headers. %ld", buf, 0x2Au);
  }

  return v6;
}

+ (BOOL)stashResumptionHeaders:(id)a3 error:(id *)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = 0x1E73B0000uLL;
  v9 = +[AMSLogConfig sharedKeychainConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Stashing TID headers", buf, 0xCu);
    if (v11)
    {

      v15 = v4;
    }
  }

  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v7])
  {
    [a1 _deleteResumptionHeaders];
    v65 = 0;
    v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:&v65];
    v17 = v65;
    if (v17)
    {
      v18 = +[AMSLogConfig sharedKeychainConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = v16;
        v21 = AMSLogKey();
        v22 = MEMORY[0x1E696AEC0];
        v23 = objc_opt_class();
        v24 = v23;
        if (v21)
        {
          a1 = AMSLogKey();
          [v22 stringWithFormat:@"%@: [%@] ", v24, a1];
        }

        else
        {
          [v22 stringWithFormat:@"%@: ", v23];
        }
        v25 = ;
        *buf = 138543618;
        v67 = v25;
        v68 = 2114;
        v69 = v17;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error occurred serializing TID continue headers. error = %{public}@", buf, 0x16u);
        if (v21)
        {

          v25 = a1;
        }

        v16 = v20;
      }

      if (a4)
      {
        AMSError(2, @"Serialization Error", @"Error serializing headers to data", v17);
        *a4 = v42 = 0;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v33 = [a1 _resumptionHeadersQuery];
      v34 = [v33 mutableCopy];

      v64 = v34;
      [v34 setObject:v16 forKeyedSubscript:*MEMORY[0x1E697B3C0]];
      v35 = +[AMSLogConfig sharedKeychainConfig];
      if (!v35)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v36 = [v35 OSLogObject];
      v62 = a4;
      v63 = v16;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
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
        _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Beginning keychain query: %{public}@", buf, 0x16u);
        if (v37)
        {

          v41 = v16;
        }
      }

      v44 = ([a1 secItemAddFunc])(v64, 0);
      v45 = +[AMSLogConfig sharedKeychainConfig];
      if (!v45)
      {
        v45 = +[AMSLogConfig sharedConfig];
      }

      v46 = [v45 OSLogObject];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
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
        _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_DEBUG, "%{public}@Keychain query complete. status = %d", buf, 0x12u);
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

        v53 = [v52 OSLogObject];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
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
          _os_log_impl(&dword_192869000, v53, OS_LOG_TYPE_ERROR, "%{public}@Failed to stash TID continue headers. error: %{public}@", buf, 0x16u);
          if (v54)
          {

            v58 = v8;
          }
        }

        if (v62)
        {
          *v62 = AMSKeychainError(@"Failed to insert TID headers into keychain", v44);
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

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = AMSLogKey();
      v29 = MEMORY[0x1E696AEC0];
      v30 = objc_opt_class();
      v31 = v30;
      if (v28)
      {
        a1 = AMSLogKey();
        [v29 stringWithFormat:@"%@: [%@] ", v31, a1];
      }

      else
      {
        [v29 stringWithFormat:@"%@: ", v30];
      }
      v32 = ;
      *buf = 138543362;
      v67 = v32;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize TID continue headers", buf, 0xCu);
      if (v28)
      {

        v32 = a1;
      }
    }

    if (a4)
    {
      AMSError(2, @"Invalid Headers", @"Headers are not a valid JSON object.", 0);
      *a4 = v42 = 0;
    }

    else
    {
      v42 = 0;
    }
  }

  return v42;
}

+ (BOOL)deleteKeyPairWithOptions:(id)a3 error:(id *)a4
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AMSSetLogKeyIfNeeded();
  v7 = [AMSKeychain keychainLabelForOptions:v5];
  v8 = MEMORY[0x1E697AD38];
  v9 = MEMORY[0x1E697AD30];
  v10 = MEMORY[0x1E697ABD0];
  v11 = MEMORY[0x1E697B020];
  v12 = MEMORY[0x1E697AFF8];
  v13 = MEMORY[0x1E697ADC8];
  v59 = v5;
  if (v7)
  {
    v14 = a1;
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

        v21 = [v20 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v69 = objc_opt_class();
          v70 = 2114;
          v71 = v6;
          v72 = 2114;
          v73 = v7;
          v22 = v18;
          v23 = v69;
          _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Key (legacy) not found for label: %{public}@", buf, 0x20u);

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

    a1 = v14;
  }

  else
  {
    v16 = MEMORY[0x1E697AFF8];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Keypair Delete: Invalid keychain label for options: %@", v5];
    v25 = v24 = v11;
    v55 = AMSError(600, @"Keychain Error", v25, 0);

    v11 = v24;
    v18 = v8;
    v19 = v6;
  }

  v56 = v7;
  v54 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v58 = [v54 ams_activeiTunesAccount];
  if (v58)
  {
    v29 = v16;
    v30 = [a1 _ssKeychainLabelForAccount:v58 options:v59];
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

      v35 = [v34 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No deletion of legacy StoreServices keys with status: %{public}@", buf, 0x20u);
      }
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v40 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v41 = [v40 ams_iTunesAccounts];

  obj = v41;
  v42 = [v41 countByEnumeratingWithState:&v61 objects:v67 count:16];
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
        v49 = [v47 ams_DSID];
        v50 = [v48 stringWithFormat:@"mt-tid-%@", v49];

        v65 = v45;
        v66 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        [v47 ams_removeCookiesMatchingProperties:v51];
      }

      v43 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v43);
  }

  if (a4)
  {
    v52 = v55;
    *a4 = v55;
  }

  return v55 == 0;
}

+ (id)legacyAttestationForOptions:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 regenerateKeys])
  {
    v6 = +[AMSLogConfig sharedKeychainConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v41 = v8;
      v42 = 2112;
      v43 = v10;
      v44 = 2114;
      v45 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] WARNING - Property options.generateKeys is ignored at this layer: %{public}@", buf, 0x20u);
    }
  }

  v39 = 0;
  v11 = [AMSKeychain _legacyAttestationForOptions:v5 error:&v39];
  v12 = v39;
  if (v12)
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attestation failed with error: %{public}@", buf, 0x20u);
    }
  }

  if (![v12 ams_hasDomain:*MEMORY[0x1E6966708] code:-3])
  {
LABEL_30:
    if (!a4)
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

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = v20;
    v22 = AMSSetLogKeyIfNeeded();
    *buf = 138544130;
    v41 = v20;
    v42 = 2114;
    v43 = v22;
    v44 = 2112;
    v45 = v5;
    v46 = 2112;
    v47 = v12;
    _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attestation failed with options: %@, error: %@", buf, 0x2Au);
  }

  v38 = 0;
  v23 = [AMSKeychain _generateLegacyKeypairForOptions:v5 error:&v38];
  v24 = v38;
  if (!v23)
  {
    v27 = +[AMSLogConfig sharedKeychainConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Re-generation of keys failed with error: %{public}@", buf, 0x20u);
    }

    v26 = v24;
    v25 = v11;
    goto LABEL_29;
  }

  v37 = v24;
  v25 = [AMSKeychain _legacyAttestationForOptions:v5 error:&v37];
  v26 = v37;

  if (v26)
  {
    v27 = +[AMSLogConfig sharedKeychainConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Re-attestation failed with error: %{public}@", buf, 0x20u);
    }

LABEL_29:

    v11 = v25;
    goto LABEL_30;
  }

  v11 = v25;
  if (a4)
  {
LABEL_31:
    v35 = v12;
    *a4 = v12;
  }

LABEL_32:

  return v11;
}

+ (id)certificateKeychainLabelsForOptions:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 clientCertLabel];
  v6 = [v3 intermediateCertLabel];
  v7 = v6;
  if (!v5 || !v6)
  {
    v8 = [v3 purpose];
    if (v8 == 1)
    {
      v11 = [v3 style];
      if (v11 > 5 || ((1 << v11) & 0x31) == 0)
      {
        goto LABEL_15;
      }

      v10 = @"com.apple.AppleMediaServices.cert.X509.client.extended";
    }

    else
    {
      if (v8)
      {
        goto LABEL_15;
      }

      v9 = [v3 style];
      if ((v9 - 4) >= 2)
      {
        if (v9 == 3)
        {
          [v4 addObject:@"com.apple.AppleMediaServices.cert.watch.client.primary"];
          v12 = @"com.apple.AppleMediaServices.cert.watch.intermediate.primary";
          goto LABEL_14;
        }

        if (v9)
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

  [v4 addObject:v5];
  [v4 addObject:v7];
LABEL_15:
  v13 = +[AMSLogConfig sharedKeychainConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = AMSSetLogKeyIfNeeded();
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "purpose")}];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "style")}];
    v21 = 138544130;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    v25 = 2114;
    v26 = v17;
    v27 = 2114;
    v28 = v18;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate certificate keychain labels for keychain options: %{public}@ %{public}@", &v21, 0x2Au);
  }

LABEL_20:
  v19 = [v4 copy];

  return v19;
}

+ (id)keychainLabelForOptions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 style] != 1 && objc_msgSend(v3, "style") != 2)
  {
    goto LABEL_6;
  }

  v4 = [v3 purpose];
  if (!v4)
  {
    v5 = @"com.apple.AppleMediaServices.primaryKey";
    goto LABEL_12;
  }

  if (v4 == 1)
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

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSSetLogKeyIfNeeded();
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "purpose")}];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "style")}];
      v13 = 138544130;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate legacy keychain label for keychain options: %{public}@ %{public}@", &v13, 0x2Au);
    }

    v5 = 0;
  }

LABEL_12:

  return v5;
}

+ (__SecAccessControl)copyAccessControlRefWithAccount:(id)a3 options:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = AMSSetLogKeyIfNeeded();
  if (![v8 style] || objc_msgSend(v8, "style") == 4 || objc_msgSend(v8, "style") == 3 || objc_msgSend(v8, "style") == 5)
  {
    v36 = 0;
    v10 = &v36;
    v11 = [AMSKeychain copyCertificatePrivateKeyWithContext:0 account:v7 options:v8 error:&v36];
  }

  else
  {
    v35 = 0;
    v10 = &v35;
    v11 = [AMSKeychain copyPrivateKeyWithContext:0 account:v7 options:v8 error:&v35];
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

        v28 = [v27 OSLogObject];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          *buf = 138543618;
          v38 = v29;
          v39 = 2114;
          v40 = v9;
          v30 = v29;
          _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ACL lookup failed for no ACL associated with key", buf, 0x16u);
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

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        *buf = 138543618;
        v38 = v33;
        v39 = 2114;
        v40 = v9;
        v34 = v33;
        _os_log_impl(&dword_192869000, v32, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ACL lookup failed to fetch key attributes", buf, 0x16u);
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

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    *buf = 138543874;
    v38 = v22;
    v39 = 2114;
    v40 = v9;
    v41 = 2114;
    v42 = v13;
    v23 = v22;
    _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ACL lookup failed for no private key: %{public}@", buf, 0x20u);
  }

  v19 = 0;
  v24 = 0;
  if (v12)
  {
LABEL_31:
    CFRelease(v12);
    v24 = v19;
    if (!a5)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a5)
  {
LABEL_18:
    v25 = v13;
    *a5 = v13;
  }

LABEL_19:

  return v24;
}

+ (__SecAccessControl)createAccessControlRefWithOptions:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = AMSSetLogKeyIfNeeded();
  v8 = +[AMSLogConfig sharedKeychainConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = [v6 description];
    v12 = AMSHashIfNeeded(v11);
    *buf = 138543874;
    v38 = v10;
    v39 = 2114;
    v40 = v7;
    v41 = 2112;
    v42 = v12;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating access control reference with options: %@", buf, 0x20u);
  }

  v13 = 1073741826;

  error = 0;
  if ([v6 style] != 1 && objc_msgSend(v6, "style") != 2)
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

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      *buf = 138543874;
      v38 = v18;
      v39 = 2114;
      v40 = v7;
      v41 = 2114;
      v42 = error;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create access controll reference with error: %{public}@", buf, 0x20u);
    }

    v19 = error;
    v20 = error;
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

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      *buf = 138543618;
      v38 = v27;
      v39 = 2114;
      v40 = v7;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create access control reference", buf, 0x16u);
    }

    v28 = @"Create ACL: Failed to create ACL reference";
    goto LABEL_39;
  }

  v23 = [v6 purpose];
  if (v23 == 1)
  {
    v24 = [a1 _extendedConstraintsWithOptions:v6];
  }

  else
  {
    if (v23)
    {
LABEL_34:
      v33 = +[AMSLogConfig sharedKeychainConfig];
      if (!v33)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      v34 = [v33 OSLogObject];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        *buf = 138543618;
        v38 = v35;
        v39 = 2114;
        v40 = v7;
        _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create ACL constraints", buf, 0x16u);
      }

      v28 = @"Create ACL: Failed to create ACL constraints";
LABEL_39:
      v20 = AMSError(600, @"Keychain Error", v28, 0);
      goto LABEL_40;
    }

    v24 = [a1 _primaryConstraintsWithOptions:v6];
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

  v31 = [v30 OSLogObject];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    *buf = 138543618;
    v38 = v32;
    v39 = 2114;
    v40 = v7;
    _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully configured ACL constraints", buf, 0x16u);
  }

  v20 = 0;
LABEL_40:
  v19 = error;
  if (error)
  {
LABEL_14:
    CFRelease(v19);
  }

LABEL_15:
  if (a4)
  {
    v21 = v20;
    *a4 = v20;
  }

  return v15;
}

+ (id)_extendedConstraintsWithOptions:(id)a3
{
  v3 = [a3 style];

  return [AMSACLConstraintsProvider extendedConstraintsForStyle:v3];
}

+ (id)_primaryConstraintsWithOptions:(id)a3
{
  v3 = [a3 style];

  return [AMSACLConstraintsProvider primaryConstraintsForStyle:v3];
}

+ (id)_ssCertificateKeychainLabelForAccount:(id)a3 options:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 _ssKeychainLabelForAccount:a3 options:v6];
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

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find legacy StoreServices certificate label for options: %{public}@", buf, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_ssKeychainLabelForAccount:(id)a3 options:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 purpose];
  if (v7 == 1)
  {
    v10 = MEMORY[0x1E696AEC0];
    v9 = [v5 ams_DSID];
    [v10 stringWithFormat:@"com.apple.itunesstored:%@-ext", v9];
    goto LABEL_5;
  }

  if (!v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v5 ams_DSID];
    [v8 stringWithFormat:@"com.apple.itunesstored:%@", v9];
    v11 = LABEL_5:;

    goto LABEL_11;
  }

  v12 = +[AMSLogConfig sharedKeychainConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = AMSSetLogKeyIfNeeded();
    *buf = 138543874;
    v19 = v14;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find legacy StoreServices keychain label for options: %{public}@", buf, 0x20u);
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (id)_certificatePrivateKeyLabelForOptions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 style] && objc_msgSend(v3, "style") != 4 && objc_msgSend(v3, "style") != 5 && objc_msgSend(v3, "style") != 3)
  {
    goto LABEL_8;
  }

  v4 = [v3 purpose];
  if (!v4)
  {
    v5 = @"com.apple.AppleMediaServices.cert.X509.primary";
    goto LABEL_14;
  }

  if (v4 == 1)
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

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSSetLogKeyIfNeeded();
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "purpose")}];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "style")}];
      v13 = 138544130;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate certificate privateKey keychain labels. options: %{public}@ %{public}@", &v13, 0x2Au);
    }

    v5 = 0;
  }

LABEL_14:

  return v5;
}

+ (__SecKey)_copyLegacyPrivateKeyForOptions:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v29 = 0;
  v6 = [AMSKeychain keychainLabelForOptions:v5];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:*MEMORY[0x1E697AD38] forKeyedSubscript:*MEMORY[0x1E697AD30]];
  [v7 ams_setNullableObject:v6 forKey:*MEMORY[0x1E697ADC8]];
  [v7 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v7 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  v8 = MEMORY[0x1E695E118];
  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697B328]];
  v9 = [v5 prompt];

  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [v5 prompt];
    [v10 setLocalizedReason:v11];

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

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v6;
      v18 = a4;
      v19 = objc_opt_class();
      v28 = v19;
      v20 = AMSSetLogKeyIfNeeded();
      v21 = [MEMORY[0x1E696AD98] numberWithInt:v13];
      *buf = 138544130;
      v31 = v19;
      a4 = v18;
      v6 = v17;
      v32 = 2114;
      v33 = v20;
      v34 = 2112;
      v35 = v5;
      v36 = 2114;
      v37 = v21;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find private key with options: %@, status: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    if (v29)
    {
      v14 = 0;
      if (!a4)
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

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = v25;
      v27 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v31 = v25;
      v32 = 2114;
      v33 = v27;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find private key with options: %@", buf, 0x20u);
    }
  }

  if (a4)
  {
LABEL_9:
    v22 = v14;
    *a4 = v14;
  }

LABEL_10:
  v23 = v29;

  return v23;
}

+ (__SecKey)_copyLegacyPublicKeyForOptions:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v5 = [AMSKeychain _copyLegacyPrivateKeyForOptions:a3 error:&v19];
  v6 = v19;
  if (!v5)
  {
    v7 = 0;
    if (!a4)
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

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully copied public key", buf, 0x16u);
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

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to copy public key representation", buf, 0x16u);
    }
  }

  CFRelease(v5);
  v6 = v13;
  if (a4)
  {
LABEL_15:
    v17 = v6;
    *a4 = v6;
  }

LABEL_16:

  return v7;
}

+ (void)_deleteResumptionHeaders
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1 _resumptionHeadersQuery];
  v3 = SecItemDelete(v2);
  if (v3 != -25303 && v3 != -25300 && v3 != 0)
  {
    v6 = v3;
    v7 = +[AMSLogConfig sharedMediaConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to delete resumption headers. %{public}@", &v13, 0x20u);
    }
  }
}

+ (BOOL)_generateLegacyKeypairForOptions:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  error = 0;
  v56 = 0;
  [objc_opt_class() deleteKeyPairWithOptions:v5 error:&v56];
  v6 = v56;
  if (v6)
  {
    v7 = v6;
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
    v7 = error;
    v11 = +[AMSLogConfig sharedKeychainConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v59 = v13;
      v60 = 2114;
      v61 = v15;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate access control reference", buf, 0x16u);
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

  v16 = [v5 purpose];
  if (v16 == 1)
  {
    v17 = [AMSKeychain _extendedConstraintsWithOptions:v5];
  }

  else
  {
    if (v16)
    {
LABEL_29:
      v32 = +[AMSLogConfig sharedKeychainConfig];
      if (!v32)
      {
        v32 = +[AMSLogConfig sharedConfig];
      }

      v33 = [v32 OSLogObject];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        v35 = v34;
        v36 = AMSSetLogKeyIfNeeded();
        *buf = 138543874;
        v59 = v34;
        v60 = 2114;
        v61 = v36;
        v62 = 2112;
        v63 = v5;
        _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to sepecify access control constraints for options: %@", buf, 0x20u);
      }

      v7 = AMSError(600, @"Keychain Error", @"Generate Keypair: Failed to generate ACL constraints", 0);
      v8 = 0;
      goto LABEL_49;
    }

    v17 = [AMSKeychain _primaryConstraintsWithOptions:v5];
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

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = v20;
    v22 = AMSSetLogKeyIfNeeded();
    *buf = 138543874;
    v59 = v20;
    v60 = 2114;
    v61 = v22;
    v62 = 2112;
    v63 = v5;
    _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Configured keypair ACL constraints for options: %@", buf, 0x20u);
  }

  v23 = [AMSKeychain keychainLabelForOptions:v5];
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
    v7 = error;
    v28 = +[AMSLogConfig sharedKeychainConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v49 = v30;
      AMSSetLogKeyIfNeeded();
      v31 = v51 = v23;
      *buf = 138543618;
      v59 = v30;
      v60 = 2114;
      v61 = v31;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@]: Failed to create keypair", buf, 0x16u);

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

    v43 = [v39 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      v53 = v44;
      AMSSetLogKeyIfNeeded();
      v46 = v45 = v23;
      *buf = 138543618;
      v59 = v44;
      v60 = 2114;
      v61 = v46;
      _os_log_impl(&dword_192869000, v43, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@]: Failed to retrieve the public key from a private key", buf, 0x16u);

      v23 = v45;
    }

    v7 = AMSError(600, @"Keychain Error", @"Generate Keypair: Failed to retrieve the public key from a private key", 0);
    goto LABEL_45;
  }

  if (!v38)
  {
    v39 = +[AMSLogConfig sharedConfig];
  }

  v40 = [v39 OSLogObject];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
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
    v63 = v5;
    _os_log_impl(&dword_192869000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Keypair generated for options: %@", buf, 0x20u);

    v23 = v52;
  }

  v7 = 0;
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

  if (a4)
  {
    v47 = v7;
    *a4 = v7;
  }

  return v8;
}

+ (id)_legacyAttestationForOptions:(id)a3 error:(id *)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  cf = 0;
  if ([v5 style] == 1 || objc_msgSend(v5, "style") == 2)
  {
    v6 = [AMSKeychain keychainLabelForOptions:v5];
    if (v6)
    {
      v53 = 0;
      v7 = [AMSKeychain _copyLegacyPrivateKeyForOptions:v5 error:&v53];
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

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v48 = v24;
        v25 = AMSSetLogKeyIfNeeded();
        *buf = 138544130;
        v56 = v24;
        v57 = 2114;
        v58 = v25;
        v59 = 2112;
        v60 = v5;
        v61 = 2114;
        v62 = v8;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find private key for options: %@, error: %{public}@", buf, 0x2Au);
      }

      v52 = v8;
      v26 = [AMSKeychain _generateLegacyKeypairForOptions:v5 error:&v52];
      v11 = v52;

      if (v26)
      {
        v27 = +[AMSLogConfig sharedKeychainConfig];
        if (!v27)
        {
          v27 = +[AMSLogConfig sharedConfig];
        }

        v28 = [v27 OSLogObject];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_opt_class();
          v49 = v29;
          v30 = AMSSetLogKeyIfNeeded();
          *buf = 138543874;
          v56 = v29;
          v57 = 2114;
          v58 = v30;
          v59 = 2112;
          v60 = v5;
          _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting second lookup for private key for options: %@", buf, 0x20u);
        }

        v51 = v11;
        v7 = [AMSKeychain _copyLegacyPrivateKeyForOptions:v5 error:&v51];
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
              v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keychain Attestation: Attesting key lookup failed for options: %@", v5];
              v11 = AMSError(600, @"Keychain Error", v39, 0);

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
                v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keychain Attestation: Failed to create attestation data for options: %@", v5];
                v11 = AMSError(600, @"Keychain Error", v47, 0);

                v12 = 0;
                goto LABEL_43;
              }

              v40 = +[AMSLogConfig sharedKeychainConfig];
              if (!v40)
              {
                v40 = +[AMSLogConfig sharedConfig];
              }

              v41 = [v40 OSLogObject];
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
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
                v60 = v5;
                _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Generating attestation for options: %@", buf, 0x20u);
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

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = v33;
        v35 = AMSSetLogKeyIfNeeded();
        *buf = 138543874;
        v56 = v33;
        v57 = 2114;
        v58 = v35;
        v59 = 2112;
        v60 = v5;
        _os_log_impl(&dword_192869000, v32, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate private key for options: %@", buf, 0x20u);
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keychain Attestation: Invalid keychain label for options: %@", v5];
      v11 = AMSError(600, @"Keychain Error", v13, 0);
    }

    v12 = 0;
LABEL_46:
    if (a4)
    {
      v45 = v11;
      *a4 = v11;
    }

    v20 = v12;

    v21 = v20;
    goto LABEL_49;
  }

  v14 = +[AMSLogConfig sharedKeychainConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = AMSSetLogKeyIfNeeded();
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "style")}];
    *buf = 138543874;
    v56 = v16;
    v57 = 2114;
    v58 = v18;
    v59 = 2114;
    v60 = v19;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ** WARNING ** Failing attestation for incorrect attestation style: %{public}@", buf, 0x20u);
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keychain Attestation: Invalid attestation style for options: %@", v5];
  v11 = AMSError(600, @"Keychain Error", v20, 0);
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

+ (id)publicKeyHeaderWithAccount:(id)a3 options:(id)a4 signatureResult:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__38;
  v27 = __Block_byref_object_dispose__38;
  v28 = objc_alloc_init(AMSDaemonConnection);
  v10 = [v24[5] keychainServiceProxy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__AMSKeychain_publicKeyHeaderWithAccount_options_signatureResult___block_invoke;
  v18[3] = &unk_1E73B8770;
  v11 = v7;
  v19 = v11;
  v12 = v8;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  v22 = &v23;
  v14 = [v10 thenWithBlock:v18];
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

+ (void)setSecItemAddFunc:(void *)a3
{
  if (+[AMSUnitTests isRunningUnitTests])
  {
    _secItemAddFunc = a3;
  }
}

+ (void)setSecItemCopyMatchingFunc:(void *)a3
{
  if (+[AMSUnitTests isRunningUnitTests])
  {
    _secItemCopyMatchingFunc = a3;
  }
}

@end