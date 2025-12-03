@interface AMSBiometricsSignatureRequest
+ (id)biometricsSignatureRequestForURLResponse:(id)response account:(id)account session:(id)session task:(id)task clientInfo:(id)info options:(id)options error:(id *)error;
- (AMSBiometricsSignatureRequest)initWithAccount:(id)account clientInfo:(id)info challenge:(id)challenge localAuthContext:(id)context options:(id)options error:(id *)error;
- (AMSBiometricsSignatureRequest)initWithCoder:(id)coder;
- (id)_localAuthOptions;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setLocalAuthAccessControlRef:(__SecAccessControl *)ref;
@end

@implementation AMSBiometricsSignatureRequest

+ (id)biometricsSignatureRequestForURLResponse:(id)response account:(id)account session:(id)session task:(id)task clientInfo:(id)info options:(id)options error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  accountCopy = account;
  sessionCopy = session;
  taskCopy = task;
  infoCopy = info;
  optionsCopy = options;
  v20 = [responseCopy ams_valueForHTTPHeaderField:@"X-Apple-TID-Challenge"];
  if (v20)
  {
    v55 = taskCopy;
    v56 = sessionCopy;
    v21 = [[AMSBiometricsIdentityMapChangeTask alloc] initWithAccount:accountCopy session:sessionCopy task:taskCopy];
    [(AMSTask *)v21 setRunMode:1];
    perform = [(AMSBiometricsIdentityMapChangeTask *)v21 perform];
    v64 = 0;
    v23 = [perform resultWithError:&v64];
    v24 = v64;

    if (!v23)
    {
      v61 = infoCopy;
      v38 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v38)
      {
        v38 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v38 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        v58 = v40;
        AMSLogKey();
        v42 = v41 = optionsCopy;
        *buf = 138543618;
        v66 = v40;
        v67 = 2114;
        v68 = v42;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometric authentication for invalid identity map", buf, 0x16u);

        optionsCopy = v41;
      }

      if (error)
      {
        v43 = v24;
        v37 = 0;
        *error = v24;
      }

      else
      {
        v37 = 0;
      }

      v35 = v24;
      taskCopy = v55;
      infoCopy = v61;
      goto LABEL_35;
    }

    v53 = optionsCopy;
    v54 = accountCopy;
    v25 = [optionsCopy copy];
    v26 = [responseCopy ams_valueForHTTPHeaderField:@"X-Apple-TID-Pkeyid"];
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
        v44 = [[AMSBiometricsSignatureRequest alloc] initWithAccount:v54 clientInfo:infoCopy challenge:v20 localAuthContext:0 options:v25 error:&v63];
        v35 = v63;

        if (v35)
        {
          v62 = infoCopy;
          v45 = +[AMSLogConfig sharedPurchaseConfig];
          if (!v45)
          {
            v45 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject2 = [v45 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
            _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate biometrics request. Error: %{public}@", buf, 0x20u);
          }

          if (error)
          {
            v50 = v35;
            v37 = 0;
            *error = v35;
          }

          else
          {
            v37 = 0;
          }

          taskCopy = v55;
          infoCopy = v62;
        }

        else
        {
          v37 = v44;
          taskCopy = v55;
        }

        optionsCopy = v53;
        accountCopy = v54;
LABEL_35:

        sessionCopy = v56;
        goto LABEL_36;
      }

      v27 = 1;
    }

    [v25 setPurpose:v27];
    goto LABEL_20;
  }

  v60 = infoCopy;
  v28 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v28)
  {
    v28 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v28 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_opt_class();
    v57 = v30;
    AMSLogKey();
    v31 = responseCopy;
    v33 = v32 = optionsCopy;
    *buf = 138543618;
    v66 = v30;
    v67 = 2114;
    v68 = v33;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometric authentication, response does not have challenge header", buf, 0x16u);

    optionsCopy = v32;
    responseCopy = v31;
    v20 = 0;
  }

  v34 = AMSError(301, @"Missing Challenge Header", @"The response is missing the X-Apple-TID-Challenge header.", 0);
  v35 = v34;
  if (error)
  {
    v36 = v34;
    v37 = 0;
    *error = v35;
  }

  else
  {
    v37 = 0;
  }

  infoCopy = v60;
LABEL_36:

  return v37;
}

- (AMSBiometricsSignatureRequest)initWithAccount:(id)account clientInfo:(id)info challenge:(id)challenge localAuthContext:(id)context options:(id)options error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  infoCopy = info;
  challengeCopy = challenge;
  contextCopy = context;
  optionsCopy = options;
  v41.receiver = self;
  v41.super_class = AMSBiometricsSignatureRequest;
  v19 = [(AMSBiometricsSignatureRequest *)&v41 init];
  v20 = v19;
  if (v19)
  {
    v37 = challengeCopy;
    v21 = infoCopy;
    objc_storeStrong(&v19->_account, account);
    objc_storeStrong(&v20->_clientInfo, info);
    objc_storeStrong(&v20->_challenge, challenge);
    objc_storeStrong(&v20->_keychainOptions, options);
    if ([AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:accountCopy])
    {
      v22 = +[AMSCertificateManager accessControlForAccount:forSignaturePurpose:](AMSCertificateManager, "accessControlForAccount:forSignaturePurpose:", accountCopy, [optionsCopy purpose]);
      v23 = 0;
    }

    else
    {
      v40 = 0;
      v22 = [AMSKeychain copyAccessControlRefWithAccount:accountCopy options:optionsCopy error:&v40];
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

      oSLogObject = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to copy access control reference with error: %{public}@", buf, 0x20u);
      }

      v39 = v23;
      v28 = [AMSKeychain createAccessControlRefWithOptions:optionsCopy error:&v39];
      v29 = v39;

      v20->_localAuthAccessControlRef = v28;
      v23 = v29;
    }

    infoCopy = v21;
    challengeCopy = v37;
    if (contextCopy)
    {
      v30 = contextCopy;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x1E696EE50]);
    }

    localAuthContext = v20->_localAuthContext;
    v20->_localAuthContext = v30;

    if (v23)
    {

      if (error)
      {
        v32 = v23;
        v20 = 0;
        *error = v23;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      _localAuthOptions = [(AMSBiometricsSignatureRequest *)v20 _localAuthOptions];
      localAuthOptions = v20->_localAuthOptions;
      v20->_localAuthOptions = _localAuthOptions;
    }
  }

  else
  {
    v23 = 0;
  }

  return v20;
}

- (AMSBiometricsSignatureRequest)initWithCoder:(id)coder
{
  v28 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_self();
  v22 = [coderCopy decodeObjectOfClass:v5 forKey:@"kAccountKey"];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChallengeKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kClientInfoKey"];
  v7 = [coderCopy decodeBoolForKey:@"kDualActionKey"];
  v8 = [coderCopy decodeBoolForKey:@"kUseApplePayClassicKey"];
  v9 = [coderCopy decodeBoolForKey:@"kUseAutoEnrollmentKey"];
  ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
  v11 = [coderCopy decodeObjectOfClasses:ams_PLISTClasses forKey:@"kKeychainOptionsKey"];

  v12 = [[AMSKeychainOptions alloc] initWithOptionsDictionary:v11];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLocalAuthContextKey"];

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

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      v25 = v19;
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Error re-initializing signature request. %{public}@", buf, 0x16u);
    }
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  account = [(AMSBiometricsSignatureRequest *)self account];
  [coderCopy encodeObject:account forKey:@"kAccountKey"];

  challenge = [(AMSBiometricsSignatureRequest *)self challenge];
  [coderCopy encodeObject:challenge forKey:@"kChallengeKey"];

  clientInfo = [(AMSBiometricsSignatureRequest *)self clientInfo];
  [coderCopy encodeObject:clientInfo forKey:@"kClientInfoKey"];

  [coderCopy encodeBool:-[AMSBiometricsSignatureRequest isDualAction](self forKey:{"isDualAction"), @"kDualActionKey"}];
  [coderCopy encodeBool:-[AMSBiometricsSignatureRequest shouldUseApplePayClassic](self forKey:{"shouldUseApplePayClassic"), @"kUseApplePayClassicKey"}];
  [coderCopy encodeBool:-[AMSBiometricsSignatureRequest shouldUseAutoEnrollment](self forKey:{"shouldUseAutoEnrollment"), @"kUseAutoEnrollmentKey"}];
  keychainOptions = [(AMSBiometricsSignatureRequest *)self keychainOptions];
  optionsDictionary = [keychainOptions optionsDictionary];
  [coderCopy encodeObject:optionsDictionary forKey:@"kKeychainOptionsKey"];

  localAuthContext = [(AMSBiometricsSignatureRequest *)self localAuthContext];
  externalizedContext = [localAuthContext externalizedContext];

  if (externalizedContext)
  {
    [coderCopy encodeObject:externalizedContext forKey:@"kLocalAuthContextKey"];
  }
}

- (void)setLocalAuthAccessControlRef:(__SecAccessControl *)ref
{
  if (ref)
  {
    CFRetain(ref);
  }

  localAuthAccessControlRef = self->_localAuthAccessControlRef;
  if (localAuthAccessControlRef)
  {
    CFRelease(localAuthAccessControlRef);
  }

  self->_localAuthAccessControlRef = ref;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = AMSSetLogKeyIfNeeded();
  clientInfo = [(AMSBiometricsSignatureRequest *)self clientInfo];
  clientInfo2 = [(AMSBiometricsSignatureRequest *)self clientInfo];
  proxyAppBundleID = [clientInfo2 proxyAppBundleID];

  if (proxyAppBundleID)
  {
    v8 = [AMSProcessInfo alloc];
    clientInfo3 = [(AMSBiometricsSignatureRequest *)self clientInfo];
    proxyAppBundleID2 = [clientInfo3 proxyAppBundleID];
    v11 = [(AMSProcessInfo *)v8 initWithBundleIdentifier:proxyAppBundleID2];

    clientInfo = v11;
  }

  keychainOptions = [(AMSBiometricsSignatureRequest *)self keychainOptions];
  displayAuthenticationReason = [keychainOptions displayAuthenticationReason];

  if (displayAuthenticationReason)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = AMSLocalizedString(@"TOUCHID_AUTHENTICATION_REASON_APPLE_ACCOUNT", 0);
    account = [(AMSBiometricsSignatureRequest *)self account];
    username = [account username];
    v18 = [v14 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, username];
    [dictionary setObject:v18 forKeyedSubscript:&unk_1F0779010];
  }

  [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:&unk_1F0779028];
  bundleURL = [clientInfo bundleURL];

  if (bundleURL)
  {
    if (os_variant_has_internal_content() && ![AMSProcessInfo BOOLForEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
    {
      v20 = +[AMSLogConfig sharedConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }
    }

    v25 = MEMORY[0x1E696AEC0];
    bundleURL2 = [clientInfo bundleURL];
    v27 = [v25 stringWithUTF8String:{objc_msgSend(bundleURL2, "fileSystemRepresentation")}];
    [dictionary setObject:v27 forKeyedSubscript:&unk_1F0779040];
  }

  localizedName = [clientInfo localizedName];

  if (localizedName)
  {
    if (os_variant_has_internal_content() && ![AMSProcessInfo BOOLForEntitlement:@"com.apple.private.LocalAuthentication.CallerName"])
    {
      v29 = +[AMSLogConfig sharedConfig];
      if (!v29)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v29 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }
    }

    localizedName2 = [clientInfo localizedName];
    [dictionary setObject:localizedName2 forKeyedSubscript:&unk_1F0779058];
  }

  v35 = MEMORY[0x1E696AD98];
  keychainOptions2 = [(AMSBiometricsSignatureRequest *)self keychainOptions];
  v37 = [v35 numberWithBool:{objc_msgSend(keychainOptions2, "authenticationFallbackVisible")}];
  [dictionary setObject:v37 forKeyedSubscript:&unk_1F0779070];

  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:5];
  [dictionary setObject:v38 forKeyedSubscript:&unk_1F0779088];

  v39 = AMSLocalizedString(@"BIO_USE_PASSWORD", 0);
  [dictionary setObject:v39 forKeyedSubscript:&unk_1F07790A0];

  return dictionary;
}

@end