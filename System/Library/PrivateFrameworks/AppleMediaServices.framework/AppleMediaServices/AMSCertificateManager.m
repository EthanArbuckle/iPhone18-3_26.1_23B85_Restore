@interface AMSCertificateManager
+ (BOOL)isExpiredForCertificates:(id)a3;
+ (__SecAccessControl)accessControlForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4;
+ (__SecKey)_generateLegacyAttestationKeyPairWithAccount:(id)a3 style:(unint64_t)a4 forPurpose:(unint64_t)a5;
+ (__SecKey)privateKeyForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4;
+ (__SecKey)privateKeyForAccount:(id)a3 withContext:(id)a4 forSignaturePurpose:(unint64_t)a5;
+ (__SecKey)publicKeyForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4;
+ (id)_baseKeychainQueryDictionaryWithLabel:(id)a3;
+ (id)_labelForAccount:(id)a3 itemType:(unint64_t)a4 purpose:(unint64_t)a5;
+ (id)certificatesForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4;
+ (id)legacyAttestationWithAccount:(id)a3 style:(unint64_t)a4 forPurpose:(unint64_t)a5;
+ (void)_deleteItemForLabel:(id)a3 type:(unint64_t)a4;
+ (void)_itemForLabel:(id)a3 type:(unint64_t)a4 additionalQueryParameters:(id)a5;
+ (void)_saveCertificate:(__SecCertificate *)a3 forLabel:(id)a4;
+ (void)_saveKey:(__SecKey *)a3 forLabel:(id)a4;
+ (void)deleteCertificatesForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4;
+ (void)saveCertificatesForAccount:(id)a3 leafCertificate:(__SecCertificate *)a4 intermediateCertificate:(__SecCertificate *)a5 privateKey:(__SecKey *)a6 forSignaturePurpose:(unint64_t)a7;
@end

@implementation AMSCertificateManager

+ (void)saveCertificatesForAccount:(id)a3 leafCertificate:(__SecCertificate *)a4 intermediateCertificate:(__SecCertificate *)a5 privateKey:(__SecKey *)a6 forSignaturePurpose:(unint64_t)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v26 = a5;
    v27 = a6;
    v15 = AMSLogKey();
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = v17;
    if (v15)
    {
      v25 = AMSLogKey();
      [v16 stringWithFormat:@"%@: [%@] ", v18, v25];
    }

    else
    {
      [v16 stringWithFormat:@"%@: ", v17];
    }
    v19 = ;
    v20 = AMSHashIfNeeded(v12);
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
    *buf = 138543874;
    v29 = v19;
    v30 = 2114;
    v31 = v20;
    v32 = 2114;
    v33 = v21;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Saving certificates for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v15)
    {

      v19 = v25;
    }

    a5 = v26;
    a6 = v27;
  }

  v22 = [a1 _labelForAccount:v12 itemType:0 purpose:a7];
  [a1 _saveCertificate:a4 forLabel:v22];

  v23 = [a1 _labelForAccount:v12 itemType:1 purpose:a7];
  [a1 _saveCertificate:a5 forLabel:v23];

  v24 = [a1 _labelForAccount:v12 itemType:2 purpose:a7];
  [a1 _saveKey:a6 forLabel:v24];
}

+ (void)deleteCertificatesForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      v4 = AMSLogKey();
      [v11 stringWithFormat:@"%@: [%@] ", v13, v4];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v12];
    }
    v14 = ;
    v15 = AMSHashIfNeeded(v7);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    *buf = 138543874;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Deleting certificates for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v10)
    {

      v14 = v4;
    }
  }

  v17 = [a1 _labelForAccount:v7 itemType:0 purpose:a4];
  [a1 _deleteItemForLabel:v17 type:0];

  v18 = [a1 _labelForAccount:v7 itemType:1 purpose:a4];
  [a1 _deleteItemForLabel:v18 type:1];

  v19 = [a1 _labelForAccount:v7 itemType:2 purpose:a4];
  [a1 _deleteItemForLabel:v19 type:2];
}

+ (id)certificatesForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      v4 = AMSLogKey();
      [v11 stringWithFormat:@"%@: [%@] ", v13, v4];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v12];
    }
    v14 = ;
    v15 = AMSHashIfNeeded(v7);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    *buf = 138543874;
    v28 = v14;
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v16;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching certificates for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v10)
    {

      v14 = v4;
    }
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = [a1 _labelForAccount:v7 itemType:0 purpose:a4];
  v19 = [a1 _itemForLabel:v18 type:0];

  if (v19)
  {
    v20 = SecCertificateCopyData(v19);
    v21 = [(__CFData *)v20 base64EncodedStringWithOptions:0];
    [v17 addObject:v21];
  }

  v22 = [a1 _labelForAccount:v7 itemType:1 purpose:a4];
  v23 = [a1 _itemForLabel:v22 type:1];

  if (v23)
  {
    v24 = SecCertificateCopyData(v23);
    v25 = [(__CFData *)v24 base64EncodedStringWithOptions:0];
    [v17 addObject:v25];
  }

  return v17;
}

+ (__SecKey)privateKeyForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      v4 = AMSLogKey();
      [v11 stringWithFormat:@"%@: [%@] ", v13, v4];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v12];
    }
    v14 = ;
    v15 = AMSHashIfNeeded(v7);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    *buf = 138543874;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching private key for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v10)
    {

      v14 = v4;
    }
  }

  v17 = [a1 _labelForAccount:v7 itemType:2 purpose:a4];
  v18 = [a1 _itemForLabel:v17 type:2];

  return v18;
}

+ (__SecKey)privateKeyForAccount:(id)a3 withContext:(id)a4 forSignaturePurpose:(unint64_t)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = AMSLogKey();
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      v23 = AMSLogKey();
      [v13 stringWithFormat:@"%@: [%@] ", v15, v23];
    }

    else
    {
      [v13 stringWithFormat:@"%@: ", v14];
    }
    v16 = ;
    v17 = AMSHashIfNeeded(v8);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    *buf = 138543874;
    v27 = v16;
    v28 = 2114;
    v29 = v17;
    v30 = 2114;
    v31 = v18;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching private key with context for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v12)
    {

      v16 = v23;
    }
  }

  v24 = *MEMORY[0x1E697B378];
  v25 = v9;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v20 = [a1 _labelForAccount:v8 itemType:2 purpose:a5];
  v21 = [a1 _itemForLabel:v20 type:2 additionalQueryParameters:v19];

  return v21;
}

+ (__SecKey)publicKeyForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      v4 = AMSLogKey();
      [v11 stringWithFormat:@"%@: [%@] ", v13, v4];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v12];
    }
    v14 = ;
    v15 = AMSHashIfNeeded(v7);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    *buf = 138543874;
    v36 = v14;
    v37 = 2114;
    v38 = v15;
    v39 = 2114;
    v40 = v16;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching public key for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v10)
    {

      v14 = v4;
    }
  }

  v17 = [a1 privateKeyForAccount:v7 forSignaturePurpose:a4];
  if (v17)
  {
    v18 = v17;
    v19 = SecKeyCopyPublicKey(v17);
    if (!v19)
    {
      v20 = +[AMSLogConfig sharedBiometricsConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = AMSLogKey();
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        v25 = v24;
        if (v22)
        {
          a1 = AMSLogKey();
          [v23 stringWithFormat:@"%@: [%@] ", v25, a1];
        }

        else
        {
          [v23 stringWithFormat:@"%@: ", v24];
        }
        v26 = ;
        *buf = 138543362;
        v36 = v26;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@Fetching public key failed. Could not fetch public key from private key.", buf, 0xCu);
        if (v22)
        {

          v26 = a1;
        }
      }
    }

    CFRelease(v18);
  }

  else
  {
    v27 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = AMSLogKey();
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_opt_class();
      v32 = v31;
      if (v29)
      {
        a1 = AMSLogKey();
        [v30 stringWithFormat:@"%@: [%@] ", v32, a1];
      }

      else
      {
        [v30 stringWithFormat:@"%@: ", v31];
      }
      v33 = ;
      *buf = 138543362;
      v36 = v33;
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@Fetching public key failed. Could not fetch private key.", buf, 0xCu);
      if (v29)
      {

        v33 = a1;
      }
    }

    v19 = 0;
  }

  return v19;
}

+ (__SecAccessControl)accessControlForAccount:(id)a3 forSignaturePurpose:(unint64_t)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      v4 = AMSLogKey();
      [v11 stringWithFormat:@"%@: [%@] ", v13, v4];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v12];
    }
    v14 = ;
    v15 = v7;
    v16 = AMSHashIfNeeded(v7);
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    *buf = 138543874;
    v49 = v14;
    v50 = 2114;
    v51 = v16;
    v52 = 2114;
    v53 = v17;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching access control for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v10)
    {

      v14 = v4;
    }

    v7 = v15;
  }

  v18 = [a1 privateKeyForAccount:v7 forSignaturePurpose:a4];
  if (v18)
  {
    v19 = v18;
    v20 = SecKeyCopyAttributes(v18);
    if (v20)
    {
      v21 = v20;
      Value = CFDictionaryGetValue(v20, *MEMORY[0x1E697ABC8]);
      if (Value && (v23 = Value, TypeID = SecAccessControlGetTypeID(), TypeID == CFGetTypeID(v23)))
      {
        v25 = CFRetain(v23);
      }

      else
      {
        v33 = +[AMSLogConfig sharedBiometricsConfig];
        if (!v33)
        {
          v33 = +[AMSLogConfig sharedConfig];
        }

        v34 = [v33 OSLogObject];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = AMSLogKey();
          v36 = MEMORY[0x1E696AEC0];
          v37 = objc_opt_class();
          v38 = v37;
          if (v35)
          {
            a1 = AMSLogKey();
            [v36 stringWithFormat:@"%@: [%@] ", v38, a1];
          }

          else
          {
            [v36 stringWithFormat:@"%@: ", v37];
          }
          v39 = ;
          *buf = 138543362;
          v49 = v39;
          _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_ERROR, "%{public}@ACL lookup failed. No ACL associated with private key", buf, 0xCu);
          if (v35)
          {

            v39 = a1;
          }
        }

        v25 = 0;
      }

      CFRelease(v21);
    }

    else
    {
      v40 = +[AMSLogConfig sharedBiometricsConfig];
      if (!v40)
      {
        v40 = +[AMSLogConfig sharedConfig];
      }

      v41 = [v40 OSLogObject];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = AMSLogKey();
        v43 = MEMORY[0x1E696AEC0];
        v44 = objc_opt_class();
        v45 = v44;
        if (v42)
        {
          a1 = AMSLogKey();
          [v43 stringWithFormat:@"%@: [%@] ", v45, a1];
        }

        else
        {
          [v43 stringWithFormat:@"%@: ", v44];
        }
        v46 = ;
        *buf = 138543362;
        v49 = v46;
        _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_ERROR, "%{public}@ACL lookup failed. No attributes associated with private key", buf, 0xCu);
        if (v42)
        {

          v46 = a1;
        }
      }

      v25 = 0;
    }

    CFRelease(v19);
  }

  else
  {
    v26 = +[AMSLogConfig sharedBiometricsConfig];
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
      v49 = v32;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@ACL lookup failed. Failed to fetch private key", buf, 0xCu);
      if (v28)
      {

        v32 = a1;
      }
    }

    v25 = 0;
  }

  return v25;
}

+ (id)legacyAttestationWithAccount:(id)a3 style:(unint64_t)a4 forPurpose:(unint64_t)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v9;
    v13 = AMSLogKey();
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = v15;
    if (v13)
    {
      v5 = AMSLogKey();
      [v14 stringWithFormat:@"%@: [%@] ", v16, v5];
    }

    else
    {
      [v14 stringWithFormat:@"%@: ", v15];
    }
    v17 = ;
    *buf = 138543362;
    v55 = v17;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching legacy style attestation", buf, 0xCu);
    if (v13)
    {

      v17 = v5;
    }

    v9 = v12;
  }

  if (a4 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = AMSLogKey();
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      v23 = v22;
      if (v20)
      {
        a1 = AMSLogKey();
        [v21 stringWithFormat:@"%@: [%@] ", v23, a1];
      }

      else
      {
        [v21 stringWithFormat:@"%@: ", v22];
      }
      v24 = ;
      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      *buf = 138543618;
      v55 = v24;
      v56 = 2112;
      v57 = v35;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@Legacy attestation does not support style %@", buf, 0x16u);

      if (v20)
      {

        v24 = a1;
      }
    }

    goto LABEL_60;
  }

  v25 = [a1 _labelForAccount:v9 itemType:2 purpose:a5];
  v26 = [a1 _itemForLabel:v25 type:2];

  if (v26)
  {
    goto LABEL_69;
  }

  v27 = +[AMSLogConfig sharedKeychainConfig];
  if (!v27)
  {
    v27 = +[AMSLogConfig sharedConfig];
  }

  v28 = [v27 OSLogObject];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v9;
    v30 = AMSLogKey();
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    v33 = v32;
    if (v30)
    {
      v5 = AMSLogKey();
      [v31 stringWithFormat:@"%@: [%@] ", v33, v5];
    }

    else
    {
      [v31 stringWithFormat:@"%@: ", v32];
    }
    v34 = ;
    *buf = 138543362;
    v55 = v34;
    _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find private key in keychain. Will generate.", buf, 0xCu);
    if (v30)
    {

      v34 = v5;
    }

    v9 = v29;
  }

  if ([a1 _generateLegacyAttestationKeyPairWithAccount:v9 style:a4 forPurpose:a5])
  {
LABEL_69:
    if (SecKeyCopySystemKey())
    {
      Attestation = SecKeyCreateAttestation();
      if (Attestation)
      {
        v37 = [Attestation base64EncodedStringWithOptions:0];
        goto LABEL_61;
      }

      v38 = 0;
      v39 = +[AMSLogConfig sharedKeychainConfig];
      if (!v39)
      {
        v39 = +[AMSLogConfig sharedConfig];
      }

      v40 = [v39 OSLogObject];
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v41 = AMSLogKey();
      v46 = MEMORY[0x1E696AEC0];
      v47 = objc_opt_class();
      v48 = v47;
      if (v41)
      {
        a1 = AMSLogKey();
        [v46 stringWithFormat:@"%@: [%@] ", v48, a1];
      }

      else
      {
        [v46 stringWithFormat:@"%@: ", v47];
      }
      v45 = ;
      *buf = 138543618;
      v55 = v45;
      v56 = 2112;
      v57 = v38;
      v52 = "%{public}@Failed to create attestation. error = %@";
    }

    else
    {
      v38 = 0;
      v39 = +[AMSLogConfig sharedKeychainConfig];
      if (!v39)
      {
        v39 = +[AMSLogConfig sharedConfig];
      }

      v40 = [v39 OSLogObject];
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v41 = AMSLogKey();
      v42 = MEMORY[0x1E696AEC0];
      v43 = objc_opt_class();
      v44 = v43;
      if (v41)
      {
        a1 = AMSLogKey();
        [v42 stringWithFormat:@"%@: [%@] ", v44, a1];
      }

      else
      {
        [v42 stringWithFormat:@"%@: ", v43];
      }
      v45 = ;
      *buf = 138543618;
      v55 = v45;
      v56 = 2112;
      v57 = v38;
      v52 = "%{public}@Failed to get attesting key. error = %@";
    }

    _os_log_impl(&dword_192869000, v40, OS_LOG_TYPE_ERROR, v52, buf, 0x16u);
    if (v41)
    {

      v45 = a1;
    }
  }

  else
  {
    v38 = +[AMSLogConfig sharedKeychainConfig];
    if (!v38)
    {
      v38 = +[AMSLogConfig sharedConfig];
    }

    v39 = [v38 OSLogObject];
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    v40 = AMSLogKey();
    v49 = MEMORY[0x1E696AEC0];
    v50 = objc_opt_class();
    v51 = v50;
    if (v40)
    {
      a1 = AMSLogKey();
      [v49 stringWithFormat:@"%@: [%@] ", v51, a1];
    }

    else
    {
      [v49 stringWithFormat:@"%@: ", v50];
    }
    v41 = ;
    *buf = 138543362;
    v55 = v41;
    _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to find/create legacy attestation", buf, 0xCu);
    if (v40)
    {

      v41 = a1;
    }
  }

LABEL_58:
LABEL_59:

LABEL_60:
  v37 = 0;
LABEL_61:

  return v37;
}

+ (BOOL)isExpiredForCertificates:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AMSCertificateManager_isExpiredForCertificates___block_invoke;
  v6[3] = &unk_1E73B5C50;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__AMSCertificateManager_isExpiredForCertificates___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = a2;
  data = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  v5 = SecCertificateCreateWithData(0, data);
  if (v5)
  {
    v6 = v5;
    v7 = SecCertificateCopyNotValidAfterDate();
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E695DF00] now];
      if ([v9 compare:v8] == 1)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      CFRelease(v8);
    }

    CFRelease(v6);
  }
}

+ (void)_saveCertificate:(__SecCertificate *)a3 forLabel:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 _baseKeychainQueryDictionaryWithLabel:v6];
  [v7 setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v7 setObject:a3 forKeyedSubscript:*MEMORY[0x1E697B3D0]];
  v8 = SecItemAdd(v7, 0);
  v9 = +[AMSLogConfig sharedBiometricsConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        a1 = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v15, a1];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      v21 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      *buf = 138543874;
      v23 = v16;
      v24 = 2114;
      v25 = v6;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to save cert for label: %{public}@ status: %{public}@", buf, 0x20u);

      if (v12)
      {

        v16 = a1;
      }

LABEL_20:
    }
  }

  else
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v12)
      {
        a1 = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, a1];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      *buf = 138543618;
      v23 = v20;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully saved cert for label: %{public}@", buf, 0x16u);
      if (v12)
      {

        v20 = a1;
      }

      goto LABEL_20;
    }
  }
}

+ (void)_saveKey:(__SecKey *)a3 forLabel:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 _baseKeychainQueryDictionaryWithLabel:v6];
  [v7 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v7 setObject:a3 forKeyedSubscript:*MEMORY[0x1E697B3D0]];
  v8 = SecItemAdd(v7, 0);
  v9 = +[AMSLogConfig sharedBiometricsConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        a1 = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v15, a1];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      v21 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      *buf = 138543874;
      v23 = v16;
      v24 = 2114;
      v25 = v6;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to save key for label: %{public}@ status: %{public}@", buf, 0x20u);

      if (v12)
      {

        v16 = a1;
      }

LABEL_20:
    }
  }

  else
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v12)
      {
        a1 = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, a1];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      *buf = 138543618;
      v23 = v20;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully saved key for label: %{public}@", buf, 0x16u);
      if (v12)
      {

        v20 = a1;
      }

      goto LABEL_20;
    }
  }
}

+ (void)_deleteItemForLabel:(id)a3 type:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _baseKeychainQueryDictionaryWithLabel:v6];
  v8 = v7;
  if (a4 <= 2)
  {
    [(__CFDictionary *)v7 setObject:**(&unk_1E73B5C70 + a4) forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  }

  v9 = SecItemDelete(v8);
  v10 = +[AMSLogConfig sharedBiometricsConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        a1 = AMSLogKey();
        [v14 stringWithFormat:@"%@: [%@] ", v16, a1];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v22 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      *buf = 138543874;
      v24 = v17;
      v25 = 2114;
      v26 = v6;
      v27 = 2114;
      v28 = v22;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete item for label: %{public}@ status: %{public}@", buf, 0x20u);

      if (v13)
      {

        v17 = a1;
      }

LABEL_22:
    }
  }

  else
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = AMSLogKey();
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = v19;
      if (v13)
      {
        a1 = AMSLogKey();
        [v18 stringWithFormat:@"%@: [%@] ", v20, a1];
      }

      else
      {
        [v18 stringWithFormat:@"%@: ", v19];
      }
      v21 = ;
      *buf = 138543618;
      v24 = v21;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully deleted item for label: %{public}@", buf, 0x16u);
      if (v13)
      {

        v21 = a1;
      }

      goto LABEL_22;
    }
  }
}

+ (void)_itemForLabel:(id)a3 type:(unint64_t)a4 additionalQueryParameters:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [a1 _baseKeychainQueryDictionaryWithLabel:v8];
  v11 = v10;
  if (v9)
  {
    [v10 addEntriesFromDictionary:v9];
  }

  [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B328]];
  if (a4 <= 2)
  {
    [v11 setObject:**(&unk_1E73B5C70 + a4) forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  }

  result = 0;
  v12 = SecItemCopyMatching(v11, &result);
  v13 = +[AMSLogConfig sharedBiometricsConfig];
  v14 = v13;
  if (v12)
  {
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v16)
      {
        a1 = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, a1];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      v25 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      *buf = 138543874;
      v30 = v20;
      v31 = 2114;
      v32 = v8;
      v33 = 2114;
      v34 = v25;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch item for label: %{public}@ status: %{public}@", buf, 0x20u);

      if (v16)
      {

        v20 = a1;
      }

LABEL_24:
    }
  }

  else
  {
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = AMSLogKey();
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      v23 = v22;
      if (v16)
      {
        a1 = AMSLogKey();
        [v21 stringWithFormat:@"%@: [%@] ", v23, a1];
      }

      else
      {
        [v21 stringWithFormat:@"%@: ", v22];
      }
      v24 = ;
      *buf = 138543618;
      v30 = v24;
      v31 = 2114;
      v32 = v8;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully fetched item for label: %{public}@", buf, 0x16u);
      if (v16)
      {

        v24 = a1;
      }

      goto LABEL_24;
    }
  }

  v26 = result;
  return v26;
}

+ (id)_labelForAccount:(id)a3 itemType:(unint64_t)a4 purpose:(unint64_t)a5
{
  if (a4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E73B5C88[a4];
  }

  v6 = @"extended";
  if (a5 != 1)
  {
    v6 = 0;
  }

  if (a5)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"primary";
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [a3 identifier];
  v10 = [v8 stringWithFormat:@"%@.%@.%@.%@", @"com.apple.AppleMediaServices", v5, v7, v9];

  return v10;
}

+ (id)_baseKeychainQueryDictionaryWithLabel:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x1E697ADC8]];

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v5 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  return v5;
}

+ (__SecKey)_generateLegacyAttestationKeyPairWithAccount:(id)a3 style:(unint64_t)a4 forPurpose:(unint64_t)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = 0x1E73B0000uLL;
  v9 = a3;
  v10 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = AMSLogKey();
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      v8 = AMSLogKey();
      [v13 stringWithFormat:@"%@: [%@] ", v15, v8];
    }

    else
    {
      [v13 stringWithFormat:@"%@: ", v14];
    }
    v16 = ;
    *buf = 138543362;
    v51 = v16;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Creating legacy style attestation", buf, 0xCu);
    if (v12)
    {

      v16 = v8;
    }
  }

  v17 = [a1 _labelForAccount:v9 itemType:2 purpose:a5];

  [a1 _deleteItemForLabel:v17 type:2];
  v18 = objc_alloc_init(AMSKeychainOptions);
  [(AMSKeychainOptions *)v18 setStyle:a4];
  [(AMSKeychainOptions *)v18 setPurpose:a5];
  v47 = 0;
  v19 = [AMSKeychain createAccessControlRefWithOptions:v18 error:&v47];
  v20 = v47;
  v21 = v20;
  if (!v19 || v20)
  {
    v22 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v22 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    v29 = AMSLogKey();
    v30 = MEMORY[0x1E696AEC0];
    v31 = objc_opt_class();
    v32 = v31;
    if (v29)
    {
      a1 = AMSLogKey();
      [v30 stringWithFormat:@"%@: [%@] ", v32, a1];
    }

    else
    {
      [v30 stringWithFormat:@"%@: ", v31];
    }
    v33 = ;
    *buf = 138543618;
    v51 = v33;
    v52 = 2112;
    v53 = v21;
    _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to create access control error = %@", buf, 0x16u);
    if (v29)
    {

      v33 = a1;
    }

LABEL_43:

LABEL_44:
    v28 = 0;
    goto LABEL_45;
  }

  v22 = [a1 _baseKeychainQueryDictionaryWithLabel:v17];
  [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697AD18]];
  [v22 setObject:v19 forKeyedSubscript:*MEMORY[0x1E697ABC8]];
  v23 = *MEMORY[0x1E697AD68];
  v48[0] = *MEMORY[0x1E697AEC8];
  v48[1] = v23;
  v24 = *MEMORY[0x1E697AD78];
  v49[0] = *MEMORY[0x1E697AEE0];
  v49[1] = v24;
  v25 = *MEMORY[0x1E697B2D0];
  v48[2] = *MEMORY[0x1E697AD50];
  v48[3] = v25;
  v49[2] = &unk_1F07790D0;
  v49[3] = v22;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];
  error = 0;
  v27 = SecKeyCreateRandomKey(v26, &error);
  if (!v27 || error)
  {
    v21 = error;
    v29 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v29 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = AMSLogKey();
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = v36;
      if (v34)
      {
        v45 = AMSLogKey();
        [v35 stringWithFormat:@"%@: [%@] ", v37, v45];
      }

      else
      {
        [v35 stringWithFormat:@"%@: ", v36];
      }
      v38 = ;
      *buf = 138543618;
      v51 = v38;
      v52 = 2112;
      v53 = v21;
      _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create key pair error = %@", buf, 0x16u);
      if (v34)
      {

        v38 = v45;
      }
    }

    goto LABEL_43;
  }

  v28 = v27;
  if (!SecKeyCopyPublicKey(v27))
  {
    v29 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v29 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v39 = AMSLogKey();
      v40 = MEMORY[0x1E696AEC0];
      v41 = objc_opt_class();
      v42 = v41;
      if (v39)
      {
        a1 = AMSLogKey();
        [v40 stringWithFormat:@"%@: [%@] ", v42, a1];
      }

      else
      {
        [v40 stringWithFormat:@"%@: ", v41];
      }
      v43 = ;
      *buf = 138543362;
      v51 = v43;
      _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to get public key from private key", buf, 0xCu);
      if (v39)
      {

        v43 = a1;
      }
    }

    v21 = 0;
    goto LABEL_43;
  }

  v21 = 0;
LABEL_45:

  return v28;
}

@end