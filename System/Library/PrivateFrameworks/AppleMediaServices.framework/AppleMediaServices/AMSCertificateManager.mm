@interface AMSCertificateManager
+ (BOOL)isExpiredForCertificates:(id)certificates;
+ (__SecAccessControl)accessControlForAccount:(id)account forSignaturePurpose:(unint64_t)purpose;
+ (__SecKey)_generateLegacyAttestationKeyPairWithAccount:(id)account style:(unint64_t)style forPurpose:(unint64_t)purpose;
+ (__SecKey)privateKeyForAccount:(id)account forSignaturePurpose:(unint64_t)purpose;
+ (__SecKey)privateKeyForAccount:(id)account withContext:(id)context forSignaturePurpose:(unint64_t)purpose;
+ (__SecKey)publicKeyForAccount:(id)account forSignaturePurpose:(unint64_t)purpose;
+ (id)_baseKeychainQueryDictionaryWithLabel:(id)label;
+ (id)_labelForAccount:(id)account itemType:(unint64_t)type purpose:(unint64_t)purpose;
+ (id)certificatesForAccount:(id)account forSignaturePurpose:(unint64_t)purpose;
+ (id)legacyAttestationWithAccount:(id)account style:(unint64_t)style forPurpose:(unint64_t)purpose;
+ (void)_deleteItemForLabel:(id)label type:(unint64_t)type;
+ (void)_itemForLabel:(id)label type:(unint64_t)type additionalQueryParameters:(id)parameters;
+ (void)_saveCertificate:(__SecCertificate *)certificate forLabel:(id)label;
+ (void)_saveKey:(__SecKey *)key forLabel:(id)label;
+ (void)deleteCertificatesForAccount:(id)account forSignaturePurpose:(unint64_t)purpose;
+ (void)saveCertificatesForAccount:(id)account leafCertificate:(__SecCertificate *)certificate intermediateCertificate:(__SecCertificate *)intermediateCertificate privateKey:(__SecKey *)key forSignaturePurpose:(unint64_t)purpose;
@end

@implementation AMSCertificateManager

+ (void)saveCertificatesForAccount:(id)account leafCertificate:(__SecCertificate *)certificate intermediateCertificate:(__SecCertificate *)intermediateCertificate privateKey:(__SecKey *)key forSignaturePurpose:(unint64_t)purpose
{
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v13 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    intermediateCertificateCopy = intermediateCertificate;
    keyCopy = key;
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
    v20 = AMSHashIfNeeded(accountCopy);
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:purpose];
    *buf = 138543874;
    v29 = v19;
    v30 = 2114;
    v31 = v20;
    v32 = 2114;
    v33 = v21;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Saving certificates for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v15)
    {

      v19 = v25;
    }

    intermediateCertificate = intermediateCertificateCopy;
    key = keyCopy;
  }

  v22 = [self _labelForAccount:accountCopy itemType:0 purpose:purpose];
  [self _saveCertificate:certificate forLabel:v22];

  v23 = [self _labelForAccount:accountCopy itemType:1 purpose:purpose];
  [self _saveCertificate:intermediateCertificate forLabel:v23];

  v24 = [self _labelForAccount:accountCopy itemType:2 purpose:purpose];
  [self _saveKey:key forLabel:v24];
}

+ (void)deleteCertificatesForAccount:(id)account forSignaturePurpose:(unint64_t)purpose
{
  v26 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    v15 = AMSHashIfNeeded(accountCopy);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:purpose];
    *buf = 138543874;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Deleting certificates for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v10)
    {

      v14 = v4;
    }
  }

  v17 = [self _labelForAccount:accountCopy itemType:0 purpose:purpose];
  [self _deleteItemForLabel:v17 type:0];

  v18 = [self _labelForAccount:accountCopy itemType:1 purpose:purpose];
  [self _deleteItemForLabel:v18 type:1];

  v19 = [self _labelForAccount:accountCopy itemType:2 purpose:purpose];
  [self _deleteItemForLabel:v19 type:2];
}

+ (id)certificatesForAccount:(id)account forSignaturePurpose:(unint64_t)purpose
{
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    v15 = AMSHashIfNeeded(accountCopy);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:purpose];
    *buf = 138543874;
    v28 = v14;
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v16;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching certificates for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v10)
    {

      v14 = v4;
    }
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = [self _labelForAccount:accountCopy itemType:0 purpose:purpose];
  v19 = [self _itemForLabel:v18 type:0];

  if (v19)
  {
    v20 = SecCertificateCopyData(v19);
    v21 = [(__CFData *)v20 base64EncodedStringWithOptions:0];
    [v17 addObject:v21];
  }

  v22 = [self _labelForAccount:accountCopy itemType:1 purpose:purpose];
  v23 = [self _itemForLabel:v22 type:1];

  if (v23)
  {
    v24 = SecCertificateCopyData(v23);
    v25 = [(__CFData *)v24 base64EncodedStringWithOptions:0];
    [v17 addObject:v25];
  }

  return v17;
}

+ (__SecKey)privateKeyForAccount:(id)account forSignaturePurpose:(unint64_t)purpose
{
  v26 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    v15 = AMSHashIfNeeded(accountCopy);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:purpose];
    *buf = 138543874;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching private key for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v10)
    {

      v14 = v4;
    }
  }

  v17 = [self _labelForAccount:accountCopy itemType:2 purpose:purpose];
  v18 = [self _itemForLabel:v17 type:2];

  return v18;
}

+ (__SecKey)privateKeyForAccount:(id)account withContext:(id)context forSignaturePurpose:(unint64_t)purpose
{
  v32 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  contextCopy = context;
  v10 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    v17 = AMSHashIfNeeded(accountCopy);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:purpose];
    *buf = 138543874;
    v27 = v16;
    v28 = 2114;
    v29 = v17;
    v30 = 2114;
    v31 = v18;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching private key with context for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v12)
    {

      v16 = v23;
    }
  }

  v24 = *MEMORY[0x1E697B378];
  v25 = contextCopy;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v20 = [self _labelForAccount:accountCopy itemType:2 purpose:purpose];
  v21 = [self _itemForLabel:v20 type:2 additionalQueryParameters:v19];

  return v21;
}

+ (__SecKey)publicKeyForAccount:(id)account forSignaturePurpose:(unint64_t)purpose
{
  v41 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    v15 = AMSHashIfNeeded(accountCopy);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:purpose];
    *buf = 138543874;
    v36 = v14;
    v37 = 2114;
    v38 = v15;
    v39 = 2114;
    v40 = v16;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching public key for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v10)
    {

      v14 = v4;
    }
  }

  v17 = [self privateKeyForAccount:accountCopy forSignaturePurpose:purpose];
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

      oSLogObject2 = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v22 = AMSLogKey();
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        v25 = v24;
        if (v22)
        {
          self = AMSLogKey();
          [v23 stringWithFormat:@"%@: [%@] ", v25, self];
        }

        else
        {
          [v23 stringWithFormat:@"%@: ", v24];
        }
        selfCopy = ;
        *buf = 138543362;
        v36 = selfCopy;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Fetching public key failed. Could not fetch public key from private key.", buf, 0xCu);
        if (v22)
        {

          selfCopy = self;
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

    oSLogObject3 = [v27 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v29 = AMSLogKey();
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_opt_class();
      v32 = v31;
      if (v29)
      {
        self = AMSLogKey();
        [v30 stringWithFormat:@"%@: [%@] ", v32, self];
      }

      else
      {
        [v30 stringWithFormat:@"%@: ", v31];
      }
      selfCopy2 = ;
      *buf = 138543362;
      v36 = selfCopy2;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@Fetching public key failed. Could not fetch private key.", buf, 0xCu);
      if (v29)
      {

        selfCopy2 = self;
      }
    }

    v19 = 0;
  }

  return v19;
}

+ (__SecAccessControl)accessControlForAccount:(id)account forSignaturePurpose:(unint64_t)purpose
{
  v54 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    v15 = accountCopy;
    v16 = AMSHashIfNeeded(accountCopy);
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:purpose];
    *buf = 138543874;
    v49 = v14;
    v50 = 2114;
    v51 = v16;
    v52 = 2114;
    v53 = v17;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching access control for account: %{public}@ | purpose = %{public}@", buf, 0x20u);

    if (v10)
    {

      v14 = v4;
    }

    accountCopy = v15;
  }

  v18 = [self privateKeyForAccount:accountCopy forSignaturePurpose:purpose];
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

        oSLogObject2 = [v33 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v35 = AMSLogKey();
          v36 = MEMORY[0x1E696AEC0];
          v37 = objc_opt_class();
          v38 = v37;
          if (v35)
          {
            self = AMSLogKey();
            [v36 stringWithFormat:@"%@: [%@] ", v38, self];
          }

          else
          {
            [v36 stringWithFormat:@"%@: ", v37];
          }
          selfCopy = ;
          *buf = 138543362;
          v49 = selfCopy;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@ACL lookup failed. No ACL associated with private key", buf, 0xCu);
          if (v35)
          {

            selfCopy = self;
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

      oSLogObject3 = [v40 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v42 = AMSLogKey();
        v43 = MEMORY[0x1E696AEC0];
        v44 = objc_opt_class();
        v45 = v44;
        if (v42)
        {
          self = AMSLogKey();
          [v43 stringWithFormat:@"%@: [%@] ", v45, self];
        }

        else
        {
          [v43 stringWithFormat:@"%@: ", v44];
        }
        selfCopy2 = ;
        *buf = 138543362;
        v49 = selfCopy2;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@ACL lookup failed. No attributes associated with private key", buf, 0xCu);
        if (v42)
        {

          selfCopy2 = self;
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

    oSLogObject4 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
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
      selfCopy3 = ;
      *buf = 138543362;
      v49 = selfCopy3;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@ACL lookup failed. Failed to fetch private key", buf, 0xCu);
      if (v28)
      {

        selfCopy3 = self;
      }
    }

    v25 = 0;
  }

  return v25;
}

+ (id)legacyAttestationWithAccount:(id)account style:(unint64_t)style forPurpose:(unint64_t)purpose
{
  v58 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v10 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = accountCopy;
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
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching legacy style attestation", buf, 0xCu);
    if (v13)
    {

      v17 = v5;
    }

    accountCopy = v12;
  }

  if (style - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v20 = AMSLogKey();
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      v23 = v22;
      if (v20)
      {
        self = AMSLogKey();
        [v21 stringWithFormat:@"%@: [%@] ", v23, self];
      }

      else
      {
        [v21 stringWithFormat:@"%@: ", v22];
      }
      selfCopy = ;
      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:style];
      *buf = 138543618;
      v55 = selfCopy;
      v56 = 2112;
      v57 = v35;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Legacy attestation does not support style %@", buf, 0x16u);

      if (v20)
      {

        selfCopy = self;
      }
    }

    goto LABEL_60;
  }

  v25 = [self _labelForAccount:accountCopy itemType:2 purpose:purpose];
  v26 = [self _itemForLabel:v25 type:2];

  if (v26)
  {
    goto LABEL_69;
  }

  v27 = +[AMSLogConfig sharedKeychainConfig];
  if (!v27)
  {
    v27 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v27 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v29 = accountCopy;
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
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find private key in keychain. Will generate.", buf, 0xCu);
    if (v30)
    {

      v34 = v5;
    }

    accountCopy = v29;
  }

  if ([self _generateLegacyAttestationKeyPairWithAccount:accountCopy style:style forPurpose:purpose])
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
      oSLogObject5 = +[AMSLogConfig sharedKeychainConfig];
      if (!oSLogObject5)
      {
        oSLogObject5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [oSLogObject5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      selfCopy3 = AMSLogKey();
      v46 = MEMORY[0x1E696AEC0];
      v47 = objc_opt_class();
      v48 = v47;
      if (selfCopy3)
      {
        self = AMSLogKey();
        [v46 stringWithFormat:@"%@: [%@] ", v48, self];
      }

      else
      {
        [v46 stringWithFormat:@"%@: ", v47];
      }
      selfCopy2 = ;
      *buf = 138543618;
      v55 = selfCopy2;
      v56 = 2112;
      v57 = v38;
      v52 = "%{public}@Failed to create attestation. error = %@";
    }

    else
    {
      v38 = 0;
      oSLogObject5 = +[AMSLogConfig sharedKeychainConfig];
      if (!oSLogObject5)
      {
        oSLogObject5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [oSLogObject5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      selfCopy3 = AMSLogKey();
      v42 = MEMORY[0x1E696AEC0];
      v43 = objc_opt_class();
      v44 = v43;
      if (selfCopy3)
      {
        self = AMSLogKey();
        [v42 stringWithFormat:@"%@: [%@] ", v44, self];
      }

      else
      {
        [v42 stringWithFormat:@"%@: ", v43];
      }
      selfCopy2 = ;
      *buf = 138543618;
      v55 = selfCopy2;
      v56 = 2112;
      v57 = v38;
      v52 = "%{public}@Failed to get attesting key. error = %@";
    }

    _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, v52, buf, 0x16u);
    if (selfCopy3)
    {

      selfCopy2 = self;
    }
  }

  else
  {
    v38 = +[AMSLogConfig sharedKeychainConfig];
    if (!v38)
    {
      v38 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [v38 OSLogObject];
    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    oSLogObject4 = AMSLogKey();
    v49 = MEMORY[0x1E696AEC0];
    v50 = objc_opt_class();
    v51 = v50;
    if (oSLogObject4)
    {
      self = AMSLogKey();
      [v49 stringWithFormat:@"%@: [%@] ", v51, self];
    }

    else
    {
      [v49 stringWithFormat:@"%@: ", v50];
    }
    selfCopy3 = ;
    *buf = 138543362;
    v55 = selfCopy3;
    _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@Failed to find/create legacy attestation", buf, 0xCu);
    if (oSLogObject4)
    {

      selfCopy3 = self;
    }
  }

LABEL_58:
LABEL_59:

LABEL_60:
  v37 = 0;
LABEL_61:

  return v37;
}

+ (BOOL)isExpiredForCertificates:(id)certificates
{
  certificatesCopy = certificates;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AMSCertificateManager_isExpiredForCertificates___block_invoke;
  v6[3] = &unk_1E73B5C50;
  v6[4] = &v7;
  [certificatesCopy enumerateObjectsUsingBlock:v6];
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

+ (void)_saveCertificate:(__SecCertificate *)certificate forLabel:(id)label
{
  v28 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  v7 = [self _baseKeychainQueryDictionaryWithLabel:labelCopy];
  [v7 setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v7 setObject:certificate forKeyedSubscript:*MEMORY[0x1E697B3D0]];
  v8 = SecItemAdd(v7, 0);
  v9 = +[AMSLogConfig sharedBiometricsConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        self = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v15, self];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      selfCopy = ;
      v21 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      *buf = 138543874;
      v23 = selfCopy;
      v24 = 2114;
      v25 = labelCopy;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to save cert for label: %{public}@ status: %{public}@", buf, 0x20u);

      if (v12)
      {

        selfCopy = self;
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

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v12)
      {
        self = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, self];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      selfCopy2 = ;
      *buf = 138543618;
      v23 = selfCopy2;
      v24 = 2114;
      v25 = labelCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully saved cert for label: %{public}@", buf, 0x16u);
      if (v12)
      {

        selfCopy2 = self;
      }

      goto LABEL_20;
    }
  }
}

+ (void)_saveKey:(__SecKey *)key forLabel:(id)label
{
  v28 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  v7 = [self _baseKeychainQueryDictionaryWithLabel:labelCopy];
  [v7 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v7 setObject:key forKeyedSubscript:*MEMORY[0x1E697B3D0]];
  v8 = SecItemAdd(v7, 0);
  v9 = +[AMSLogConfig sharedBiometricsConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        self = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v15, self];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      selfCopy = ;
      v21 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      *buf = 138543874;
      v23 = selfCopy;
      v24 = 2114;
      v25 = labelCopy;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to save key for label: %{public}@ status: %{public}@", buf, 0x20u);

      if (v12)
      {

        selfCopy = self;
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

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v12)
      {
        self = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, self];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      selfCopy2 = ;
      *buf = 138543618;
      v23 = selfCopy2;
      v24 = 2114;
      v25 = labelCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully saved key for label: %{public}@", buf, 0x16u);
      if (v12)
      {

        selfCopy2 = self;
      }

      goto LABEL_20;
    }
  }
}

+ (void)_deleteItemForLabel:(id)label type:(unint64_t)type
{
  v29 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  v7 = [self _baseKeychainQueryDictionaryWithLabel:labelCopy];
  v8 = v7;
  if (type <= 2)
  {
    [(__CFDictionary *)v7 setObject:**(&unk_1E73B5C70 + type) forKeyedSubscript:*MEMORY[0x1E697AFF8]];
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

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        self = AMSLogKey();
        [v14 stringWithFormat:@"%@: [%@] ", v16, self];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      selfCopy = ;
      v22 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      *buf = 138543874;
      v24 = selfCopy;
      v25 = 2114;
      v26 = labelCopy;
      v27 = 2114;
      v28 = v22;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete item for label: %{public}@ status: %{public}@", buf, 0x20u);

      if (v13)
      {

        selfCopy = self;
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

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = AMSLogKey();
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = v19;
      if (v13)
      {
        self = AMSLogKey();
        [v18 stringWithFormat:@"%@: [%@] ", v20, self];
      }

      else
      {
        [v18 stringWithFormat:@"%@: ", v19];
      }
      selfCopy2 = ;
      *buf = 138543618;
      v24 = selfCopy2;
      v25 = 2114;
      v26 = labelCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully deleted item for label: %{public}@", buf, 0x16u);
      if (v13)
      {

        selfCopy2 = self;
      }

      goto LABEL_22;
    }
  }
}

+ (void)_itemForLabel:(id)label type:(unint64_t)type additionalQueryParameters:(id)parameters
{
  v35 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  parametersCopy = parameters;
  v10 = [self _baseKeychainQueryDictionaryWithLabel:labelCopy];
  v11 = v10;
  if (parametersCopy)
  {
    [v10 addEntriesFromDictionary:parametersCopy];
  }

  [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B328]];
  if (type <= 2)
  {
    [v11 setObject:**(&unk_1E73B5C70 + type) forKeyedSubscript:*MEMORY[0x1E697AFF8]];
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

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v16)
      {
        self = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, self];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      selfCopy = ;
      v25 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      *buf = 138543874;
      v30 = selfCopy;
      v31 = 2114;
      v32 = labelCopy;
      v33 = 2114;
      v34 = v25;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch item for label: %{public}@ status: %{public}@", buf, 0x20u);

      if (v16)
      {

        selfCopy = self;
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

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = AMSLogKey();
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      v23 = v22;
      if (v16)
      {
        self = AMSLogKey();
        [v21 stringWithFormat:@"%@: [%@] ", v23, self];
      }

      else
      {
        [v21 stringWithFormat:@"%@: ", v22];
      }
      selfCopy2 = ;
      *buf = 138543618;
      v30 = selfCopy2;
      v31 = 2114;
      v32 = labelCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully fetched item for label: %{public}@", buf, 0x16u);
      if (v16)
      {

        selfCopy2 = self;
      }

      goto LABEL_24;
    }
  }

  v26 = result;
  return v26;
}

+ (id)_labelForAccount:(id)account itemType:(unint64_t)type purpose:(unint64_t)purpose
{
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E73B5C88[type];
  }

  v6 = @"extended";
  if (purpose != 1)
  {
    v6 = 0;
  }

  if (purpose)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"primary";
  }

  v8 = MEMORY[0x1E696AEC0];
  identifier = [account identifier];
  v10 = [v8 stringWithFormat:@"%@.%@.%@.%@", @"com.apple.AppleMediaServices", v5, v7, identifier];

  return v10;
}

+ (id)_baseKeychainQueryDictionaryWithLabel:(id)label
{
  v3 = MEMORY[0x1E695DF90];
  labelCopy = label;
  v5 = objc_alloc_init(v3);
  [v5 setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v5 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  return v5;
}

+ (__SecKey)_generateLegacyAttestationKeyPairWithAccount:(id)account style:(unint64_t)style forPurpose:(unint64_t)purpose
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = 0x1E73B0000uLL;
  accountCopy = account;
  v10 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Creating legacy style attestation", buf, 0xCu);
    if (v12)
    {

      v16 = v8;
    }
  }

  v17 = [self _labelForAccount:accountCopy itemType:2 purpose:purpose];

  [self _deleteItemForLabel:v17 type:2];
  v18 = objc_alloc_init(AMSKeychainOptions);
  [(AMSKeychainOptions *)v18 setStyle:style];
  [(AMSKeychainOptions *)v18 setPurpose:purpose];
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

    oSLogObject2 = [v22 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    v29 = AMSLogKey();
    v30 = MEMORY[0x1E696AEC0];
    v31 = objc_opt_class();
    v32 = v31;
    if (v29)
    {
      self = AMSLogKey();
      [v30 stringWithFormat:@"%@: [%@] ", v32, self];
    }

    else
    {
      [v30 stringWithFormat:@"%@: ", v31];
    }
    selfCopy = ;
    *buf = 138543618;
    v51 = selfCopy;
    v52 = 2112;
    v53 = v21;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Failed to create access control error = %@", buf, 0x16u);
    if (v29)
    {

      selfCopy = self;
    }

LABEL_43:

LABEL_44:
    v28 = 0;
    goto LABEL_45;
  }

  v22 = [self _baseKeychainQueryDictionaryWithLabel:v17];
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
  oSLogObject2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];
  error = 0;
  v27 = SecKeyCreateRandomKey(oSLogObject2, &error);
  if (!v27 || error)
  {
    v21 = error;
    v29 = +[AMSLogConfig sharedBiometricsConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    selfCopy = [v29 OSLogObject];
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_192869000, selfCopy, OS_LOG_TYPE_ERROR, "%{public}@Failed to create key pair error = %@", buf, 0x16u);
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

    selfCopy = [v29 OSLogObject];
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_ERROR))
    {
      v39 = AMSLogKey();
      v40 = MEMORY[0x1E696AEC0];
      v41 = objc_opt_class();
      v42 = v41;
      if (v39)
      {
        self = AMSLogKey();
        [v40 stringWithFormat:@"%@: [%@] ", v42, self];
      }

      else
      {
        [v40 stringWithFormat:@"%@: ", v41];
      }
      selfCopy2 = ;
      *buf = 138543362;
      v51 = selfCopy2;
      _os_log_impl(&dword_192869000, selfCopy, OS_LOG_TYPE_ERROR, "%{public}@Failed to get public key from private key", buf, 0xCu);
      if (v39)
      {

        selfCopy2 = self;
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