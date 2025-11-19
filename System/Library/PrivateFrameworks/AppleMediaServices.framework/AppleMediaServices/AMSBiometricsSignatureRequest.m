@interface AMSBiometricsSignatureRequest
+ (id)biometricsSignatureRequestForURLResponse:(id)a3 account:(id)a4 session:(id)a5 task:(id)a6 clientInfo:(id)a7 options:(id)a8 error:(id *)a9;
- (AMSBiometricsSignatureRequest)initWithAccount:(id)a3 clientInfo:(id)a4 challenge:(id)a5 localAuthContext:(id)a6 options:(id)a7 error:(id *)a8;
- (AMSBiometricsSignatureRequest)initWithCoder:(id)a3;
- (id)_localAuthOptions;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setLocalAuthAccessControlRef:(__SecAccessControl *)a3;
@end

@implementation AMSBiometricsSignatureRequest

+ (id)biometricsSignatureRequestForURLResponse:(id)a3 account:(id)a4 session:(id)a5 task:(id)a6 clientInfo:(id)a7 options:(id)a8 error:(id *)a9
{
  v71 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v14 ams_valueForHTTPHeaderField:@"X-Apple-TID-Challenge"];
  if (v20)
  {
    v55 = v17;
    v56 = v16;
    v21 = [[AMSBiometricsIdentityMapChangeTask alloc] initWithAccount:v15 session:v16 task:v17];
    [(AMSTask *)v21 setRunMode:1];
    v22 = [(AMSBiometricsIdentityMapChangeTask *)v21 perform];
    v64 = 0;
    v23 = [v22 resultWithError:&v64];
    v24 = v64;

    if (!v23)
    {
      v61 = v18;
      v38 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v38)
      {
        v38 = +[AMSLogConfig sharedConfig];
      }

      v39 = [v38 OSLogObject];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        v58 = v40;
        AMSLogKey();
        v42 = v41 = v19;
        *buf = 138543618;
        v66 = v40;
        v67 = 2114;
        v68 = v42;
        _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometric authentication for invalid identity map", buf, 0x16u);

        v19 = v41;
      }

      if (a9)
      {
        v43 = v24;
        v37 = 0;
        *a9 = v24;
      }

      else
      {
        v37 = 0;
      }

      v35 = v24;
      v17 = v55;
      v18 = v61;
      goto LABEL_35;
    }

    v53 = v19;
    v54 = v15;
    v25 = [v19 copy];
    v26 = [v14 ams_valueForHTTPHeaderField:@"X-Apple-TID-Pkeyid"];
    if ([v26 isEqualToString:0x1F0721318])
    {
      v27 = 0;
    }

    else
    {
      if (![v26 isEqual:0x1F0721338])
      {
LABEL_20:
        v63 = v24;
        v44 = [[AMSBiometricsSignatureRequest alloc] initWithAccount:v54 clientInfo:v18 challenge:v20 localAuthContext:0 options:v25 error:&v63];
        v35 = v63;

        if (v35)
        {
          v62 = v18;
          v45 = +[AMSLogConfig sharedPurchaseConfig];
          if (!v45)
          {
            v45 = +[AMSLogConfig sharedConfig];
          }

          v46 = [v45 OSLogObject];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v59 = v26;
            v47 = v44;
            v48 = objc_opt_class();
            v52 = v48;
            v49 = AMSLogKey();
            *buf = 138543874;
            v66 = v48;
            v44 = v47;
            v26 = v59;
            v67 = 2114;
            v68 = v49;
            v69 = 2114;
            v70 = v35;
            _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate biometrics request. Error: %{public}@", buf, 0x20u);
          }

          if (a9)
          {
            v50 = v35;
            v37 = 0;
            *a9 = v35;
          }

          else
          {
            v37 = 0;
          }

          v17 = v55;
          v18 = v62;
        }

        else
        {
          v37 = v44;
          v17 = v55;
        }

        v19 = v53;
        v15 = v54;
LABEL_35:

        v16 = v56;
        goto LABEL_36;
      }

      v27 = 1;
    }

    [v25 setPurpose:v27];
    goto LABEL_20;
  }

  v60 = v18;
  v28 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v28)
  {
    v28 = +[AMSLogConfig sharedConfig];
  }

  v29 = [v28 OSLogObject];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_opt_class();
    v57 = v30;
    AMSLogKey();
    v31 = v14;
    v33 = v32 = v19;
    *buf = 138543618;
    v66 = v30;
    v67 = 2114;
    v68 = v33;
    _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometric authentication, response does not have challenge header", buf, 0x16u);

    v19 = v32;
    v14 = v31;
    v20 = 0;
  }

  v34 = AMSError(301, @"Missing Challenge Header", @"The response is missing the X-Apple-TID-Challenge header.", 0);
  v35 = v34;
  if (a9)
  {
    v36 = v34;
    v37 = 0;
    *a9 = v35;
  }

  else
  {
    v37 = 0;
  }

  v18 = v60;
LABEL_36:

  return v37;
}

- (AMSBiometricsSignatureRequest)initWithAccount:(id)a3 clientInfo:(id)a4 challenge:(id)a5 localAuthContext:(id)a6 options:(id)a7 error:(id *)a8
{
  v48 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v41.receiver = self;
  v41.super_class = AMSBiometricsSignatureRequest;
  v19 = [(AMSBiometricsSignatureRequest *)&v41 init];
  v20 = v19;
  if (v19)
  {
    v37 = v16;
    v21 = v15;
    objc_storeStrong(&v19->_account, a3);
    objc_storeStrong(&v20->_clientInfo, a4);
    objc_storeStrong(&v20->_challenge, a5);
    objc_storeStrong(&v20->_keychainOptions, a7);
    if ([AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:v14])
    {
      v22 = +[AMSCertificateManager accessControlForAccount:forSignaturePurpose:](AMSCertificateManager, "accessControlForAccount:forSignaturePurpose:", v14, [v18 purpose]);
      v23 = 0;
    }

    else
    {
      v40 = 0;
      v22 = [AMSKeychain copyAccessControlRefWithAccount:v14 options:v18 error:&v40];
      v23 = v40;
    }

    v20->_localAuthAccessControlRef = v22;
    if (!v22)
    {
      v24 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v36 = v26;
        v27 = AMSLogKey();
        *buf = 138543874;
        v43 = v26;
        v44 = 2114;
        v45 = v27;
        v46 = 2114;
        v47 = v23;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to copy access control reference with error: %{public}@", buf, 0x20u);
      }

      v39 = v23;
      v28 = [AMSKeychain createAccessControlRefWithOptions:v18 error:&v39];
      v29 = v39;

      v20->_localAuthAccessControlRef = v28;
      v23 = v29;
    }

    v15 = v21;
    v16 = v37;
    if (v17)
    {
      v30 = v17;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x1E696EE50]);
    }

    localAuthContext = v20->_localAuthContext;
    v20->_localAuthContext = v30;

    if (v23)
    {

      if (a8)
      {
        v32 = v23;
        v20 = 0;
        *a8 = v23;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v33 = [(AMSBiometricsSignatureRequest *)v20 _localAuthOptions];
      localAuthOptions = v20->_localAuthOptions;
      v20->_localAuthOptions = v33;
    }
  }

  else
  {
    v23 = 0;
  }

  return v20;
}

- (AMSBiometricsSignatureRequest)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_self();
  v22 = [v4 decodeObjectOfClass:v5 forKey:@"kAccountKey"];

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChallengeKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kClientInfoKey"];
  v7 = [v4 decodeBoolForKey:@"kDualActionKey"];
  v8 = [v4 decodeBoolForKey:@"kUseApplePayClassicKey"];
  v9 = [v4 decodeBoolForKey:@"kUseAutoEnrollmentKey"];
  v10 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kKeychainOptionsKey"];

  v12 = [[AMSKeychainOptions alloc] initWithOptionsDictionary:v11];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLocalAuthContextKey"];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E696EE50]) initWithExternalizedContext:v13];
  }

  else
  {
    v14 = 0;
  }

  v23 = 0;
  v15 = [(AMSBiometricsSignatureRequest *)self initWithAccount:v22 clientInfo:v6 challenge:v21 localAuthContext:v14 options:v12 error:&v23];
  v16 = v23;
  [(AMSBiometricsSignatureRequest *)v15 setDualAction:v7];
  [(AMSBiometricsSignatureRequest *)v15 setUseApplePayClassic:v8];
  [(AMSBiometricsSignatureRequest *)v15 setUseAutoEnrollment:v9];
  if (v16)
  {
    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      v25 = v19;
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Error re-initializing signature request. %{public}@", buf, 0x16u);
    }
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(AMSBiometricsSignatureRequest *)self account];
  [v11 encodeObject:v4 forKey:@"kAccountKey"];

  v5 = [(AMSBiometricsSignatureRequest *)self challenge];
  [v11 encodeObject:v5 forKey:@"kChallengeKey"];

  v6 = [(AMSBiometricsSignatureRequest *)self clientInfo];
  [v11 encodeObject:v6 forKey:@"kClientInfoKey"];

  [v11 encodeBool:-[AMSBiometricsSignatureRequest isDualAction](self forKey:{"isDualAction"), @"kDualActionKey"}];
  [v11 encodeBool:-[AMSBiometricsSignatureRequest shouldUseApplePayClassic](self forKey:{"shouldUseApplePayClassic"), @"kUseApplePayClassicKey"}];
  [v11 encodeBool:-[AMSBiometricsSignatureRequest shouldUseAutoEnrollment](self forKey:{"shouldUseAutoEnrollment"), @"kUseAutoEnrollmentKey"}];
  v7 = [(AMSBiometricsSignatureRequest *)self keychainOptions];
  v8 = [v7 optionsDictionary];
  [v11 encodeObject:v8 forKey:@"kKeychainOptionsKey"];

  v9 = [(AMSBiometricsSignatureRequest *)self localAuthContext];
  v10 = [v9 externalizedContext];

  if (v10)
  {
    [v11 encodeObject:v10 forKey:@"kLocalAuthContextKey"];
  }
}

- (void)setLocalAuthAccessControlRef:(__SecAccessControl *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  localAuthAccessControlRef = self->_localAuthAccessControlRef;
  if (localAuthAccessControlRef)
  {
    CFRelease(localAuthAccessControlRef);
  }

  self->_localAuthAccessControlRef = a3;
}

- (void)dealloc
{
  localAuthAccessControlRef = self->_localAuthAccessControlRef;
  if (localAuthAccessControlRef)
  {
    CFRelease(localAuthAccessControlRef);
  }

  v4.receiver = self;
  v4.super_class = AMSBiometricsSignatureRequest;
  [(AMSBiometricsSignatureRequest *)&v4 dealloc];
}

- (id)_localAuthOptions
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = AMSSetLogKeyIfNeeded();
  v5 = [(AMSBiometricsSignatureRequest *)self clientInfo];
  v6 = [(AMSBiometricsSignatureRequest *)self clientInfo];
  v7 = [v6 proxyAppBundleID];

  if (v7)
  {
    v8 = [AMSProcessInfo alloc];
    v9 = [(AMSBiometricsSignatureRequest *)self clientInfo];
    v10 = [v9 proxyAppBundleID];
    v11 = [(AMSProcessInfo *)v8 initWithBundleIdentifier:v10];

    v5 = v11;
  }

  v12 = [(AMSBiometricsSignatureRequest *)self keychainOptions];
  v13 = [v12 displayAuthenticationReason];

  if (v13)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = AMSLocalizedString(@"TOUCHID_AUTHENTICATION_REASON_APPLE_ACCOUNT", 0);
    v16 = [(AMSBiometricsSignatureRequest *)self account];
    v17 = [v16 username];
    v18 = [v14 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v17];
    [v3 setObject:v18 forKeyedSubscript:&unk_1F0779010];
  }

  [v3 setObject:MEMORY[0x1E695E110] forKeyedSubscript:&unk_1F0779028];
  v19 = [v5 bundleURL];

  if (v19)
  {
    if (os_variant_has_internal_content() && ![AMSProcessInfo BOOLForEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
    {
      v20 = +[AMSLogConfig sharedConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = MEMORY[0x1E696AEC0];
        v23 = objc_opt_class();
        if (v4)
        {
          [v22 stringWithFormat:@"%@: [%@] ", v23, v4];
        }

        else
        {
          [v22 stringWithFormat:@"%@: ", v23, v41];
        }
        v24 = ;
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = @"Attempting to set the icon bundle path on the local auth options, but we don’t have the correct entitlement.";
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }
    }

    v25 = MEMORY[0x1E696AEC0];
    v26 = [v5 bundleURL];
    v27 = [v25 stringWithUTF8String:{objc_msgSend(v26, "fileSystemRepresentation")}];
    [v3 setObject:v27 forKeyedSubscript:&unk_1F0779040];
  }

  v28 = [v5 localizedName];

  if (v28)
  {
    if (os_variant_has_internal_content() && ![AMSProcessInfo BOOLForEntitlement:@"com.apple.private.LocalAuthentication.CallerName"])
    {
      v29 = +[AMSLogConfig sharedConfig];
      if (!v29)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      v30 = [v29 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = MEMORY[0x1E696AEC0];
        v32 = objc_opt_class();
        if (v4)
        {
          [v31 stringWithFormat:@"%@: [%@] ", v32, v4];
        }

        else
        {
          [v31 stringWithFormat:@"%@: ", v32, v41];
        }
        v33 = ;
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = @"Attempting to set the caller name on the local auth options, but we don’t have the correct entitlement.";
        _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }
    }

    v34 = [v5 localizedName];
    [v3 setObject:v34 forKeyedSubscript:&unk_1F0779058];
  }

  v35 = MEMORY[0x1E696AD98];
  v36 = [(AMSBiometricsSignatureRequest *)self keychainOptions];
  v37 = [v35 numberWithBool:{objc_msgSend(v36, "authenticationFallbackVisible")}];
  [v3 setObject:v37 forKeyedSubscript:&unk_1F0779070];

  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:5];
  [v3 setObject:v38 forKeyedSubscript:&unk_1F0779088];

  v39 = AMSLocalizedString(@"BIO_USE_PASSWORD", 0);
  [v3 setObject:v39 forKeyedSubscript:&unk_1F07790A0];

  return v3;
}

@end