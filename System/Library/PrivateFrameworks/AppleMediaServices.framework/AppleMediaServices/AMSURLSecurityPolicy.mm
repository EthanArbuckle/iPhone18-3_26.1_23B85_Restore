@interface AMSURLSecurityPolicy
+ (AMSURLSecurityPolicy)defaultPolicy;
- (AMSURLSecurityPolicy)initWithTrustMode:(int64_t)mode pinnedCertificated:(id)certificated;
- (BOOL)_evaluateExtendedValidationWithTrust:(__SecTrust *)trust forTask:(id)task;
- (BOOL)_evaluatePinnedCertificatesWithTrust:(__SecTrust *)trust forTask:(id)task;
- (BOOL)_shouldSkipValidation;
- (BOOL)evaluateTrust:(__SecTrust *)trust forTask:(id)task;
@end

@implementation AMSURLSecurityPolicy

+ (AMSURLSecurityPolicy)defaultPolicy
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AMSURLSecurityPolicy_defaultPolicy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_158 != -1)
  {
    dispatch_once(&_MergedGlobals_158, block);
  }

  v2 = qword_1ED6E31F8;

  return v2;
}

uint64_t __37__AMSURLSecurityPolicy_defaultPolicy__block_invoke()
{
  qword_1ED6E31F8 = [objc_alloc(objc_opt_class()) initWithTrustMode:1];

  return MEMORY[0x1EEE66BB8]();
}

- (AMSURLSecurityPolicy)initWithTrustMode:(int64_t)mode pinnedCertificated:(id)certificated
{
  certificatedCopy = certificated;
  v11.receiver = self;
  v11.super_class = AMSURLSecurityPolicy;
  v8 = [(AMSURLSecurityPolicy *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_trustMode = mode;
    objc_storeStrong(&v8->_pinnedCertificates, certificated);
  }

  return v9;
}

- (BOOL)evaluateTrust:(__SecTrust *)trust forTask:(id)task
{
  taskCopy = task;
  trustMode = [(AMSURLSecurityPolicy *)self trustMode];
  if (trustMode == 2)
  {
    v8 = [(AMSURLSecurityPolicy *)self _evaluatePinnedCertificatesWithTrust:trust forTask:taskCopy];
  }

  else
  {
    if (trustMode != 1)
    {
      v9 = 1;
      goto LABEL_7;
    }

    v8 = [(AMSURLSecurityPolicy *)self _evaluateExtendedValidationWithTrust:trust forTask:taskCopy];
  }

  v9 = v8;
LABEL_7:

  return v9;
}

- (BOOL)_evaluateExtendedValidationWithTrust:(__SecTrust *)trust forTask:(id)task
{
  v37 = *MEMORY[0x1E69E9840];
  if (trust)
  {
    v6 = [AMSURLTaskInfo taskInfoForTask:task];
    if ([(AMSURLSecurityPolicy *)self _shouldSkipValidation])
    {
      v7 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        properties = [v6 properties];
        logUUID = [properties logUUID];
        *buf = 138543618;
        v32 = v9;
        v33 = 2114;
        v34 = logUUID;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ignoring extended validation (EV) for trust", buf, 0x16u);
      }

      goto LABEL_8;
    }

    error = 0;
    if (!SecTrustEvaluateWithError(trust, &error) || error)
    {
      v18 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        properties2 = [v6 properties];
        logUUID2 = [properties2 logUUID];
        *buf = 138543874;
        v32 = v20;
        v33 = 2114;
        v34 = logUUID2;
        v35 = 2114;
        v36 = error;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid trust (EV) error: %{public}@", buf, 0x20u);
      }

      if (error)
      {
        CFRelease(error);
      }
    }

    else
    {
      v14 = SecTrustCopyInfo();
      if (v14)
      {
        v15 = v14;
        v16 = CFDictionaryGetValue(v14, *MEMORY[0x1E697B348]);
        if (objc_opt_respondsToSelector())
        {
          bOOLValue = [v16 BOOLValue];
          CFRelease(v15);

          if (bOOLValue)
          {
LABEL_8:
            v13 = 1;
LABEL_29:

            return v13;
          }
        }

        else
        {
          CFRelease(v15);
        }
      }

      v23 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = v25;
        properties3 = [v6 properties];
        logUUID3 = [properties3 logUUID];
        *buf = 138543618;
        v32 = v25;
        v33 = 2114;
        v34 = logUUID3;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Trust failed extended validation (EV)", buf, 0x16u);
      }
    }

    v13 = 0;
    goto LABEL_29;
  }

  return 0;
}

- (BOOL)_evaluatePinnedCertificatesWithTrust:(__SecTrust *)trust forTask:(id)task
{
  v51 = *MEMORY[0x1E69E9840];
  if (trust)
  {
    v6 = [AMSURLTaskInfo taskInfoForTask:task];
    if ([(AMSURLSecurityPolicy *)self _shouldSkipValidation])
    {
      v7 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        properties = [v6 properties];
        logUUID = [properties logUUID];
        *buf = 138543618;
        v45 = v9;
        v46 = 2114;
        v47 = logUUID;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ignoring certificate pinning validation", buf, 0x16u);
      }

LABEL_8:
      v13 = 1;
LABEL_36:

      return v13;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    pinnedCertificates = [(AMSURLSecurityPolicy *)self pinnedCertificates];
    v15 = [pinnedCertificates countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(pinnedCertificates);
          }

          v19 = SecCertificateCreateWithData(0, *(*(&v40 + 1) + 8 * i));
          [v7 addObject:v19];
        }

        v16 = [pinnedCertificates countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v16);
    }

    SecTrustSetAnchorCertificates(trust, v7);
    error = 0;
    if (!SecTrustEvaluateWithError(trust, &error) || error)
    {
      v33 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v33)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v33 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        properties2 = [v6 properties];
        logUUID2 = [properties2 logUUID];
        *buf = 138543874;
        v45 = v35;
        v46 = 2114;
        v47 = logUUID2;
        v48 = 2114;
        v49 = error;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid trust (pinned) error: %{public}@", buf, 0x20u);
      }

      if (error)
      {
        CFRelease(error);
      }
    }

    else
    {
      CertificateCount = SecTrustGetCertificateCount(trust);
      if ((CertificateCount & 0x8000000000000000) == 0)
      {
        v21 = CertificateCount;
        do
        {
          CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, v21);
          v23 = SecCertificateCopyData(CertificateAtIndex);
          pinnedCertificates2 = [(AMSURLSecurityPolicy *)self pinnedCertificates];
          v25 = [pinnedCertificates2 containsObject:v23];

          if (v25)
          {
            goto LABEL_8;
          }
        }

        while (v21-- >= 1);
      }

      v27 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v27)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v27 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = v29;
        properties3 = [v6 properties];
        logUUID3 = [properties3 logUUID];
        *buf = 138543618;
        v45 = v29;
        v46 = 2114;
        v47 = logUUID3;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Trust failed certificate pinning validation", buf, 0x16u);
      }
    }

    v13 = 0;
    goto LABEL_36;
  }

  return 0;
}

- (BOOL)_shouldSkipValidation
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    if (+[AMSDefaults QAMode](AMSDefaults, "QAMode") || +[AMSDefaults ignoreServerTrustEvaluation])
    {
      LOBYTE(has_internal_content) = 1;
    }

    else
    {

      LOBYTE(has_internal_content) = +[AMSDefaults ss_ignoreServerTrustEvaluation];
    }
  }

  return has_internal_content;
}

@end