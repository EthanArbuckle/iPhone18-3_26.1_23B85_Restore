@interface AMSLookup
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSLookup)initWithBag:(id)a3 caller:(id)a4 keyProfile:(id)a5;
- (AMSLookup)initWithBagContract:(id)a3 caller:(id)a4 keyProfile:(id)a5;
- (id)_compileQueryParametersWithBundleIds:(id)a3 itemIds:(id)a4;
- (id)contract;
- (id)performLookupWithBundleIdentifiers:(id)a3 itemIdentifiers:(id)a4;
- (void)_addJSSignatureToRequest:(id)a3;
- (void)setContract:(id)a3;
@end

@implementation AMSLookup

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (AMSLookup)initWithBag:(id)a3 caller:(id)a4 keyProfile:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AMSLookup;
  v12 = [(AMSTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bag, a3);
    v13->_version = 2;
    v14 = +[AMSProcessInfo currentProcess];
    clientInfo = v13->_clientInfo;
    v13->_clientInfo = v14;

    objc_storeStrong(&v13->_caller, a4);
    objc_storeStrong(&v13->_keyProfile, a5);
  }

  return v13;
}

- (id)performLookupWithBundleIdentifiers:(id)a3 itemIdentifiers:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AMSGenerateLogCorrelationKey();
  v9 = [(AMSLookup *)self bag];
  v10 = [(AMSLookup *)self contract];
  if (v9 | v10)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__AMSLookup_performLookupWithBundleIdentifiers_itemIdentifiers___block_invoke;
    v19[3] = &unk_1E73B88D8;
    v19[4] = self;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v23 = v6;
    v24 = v7;
    v16 = [(AMSTask *)self performTaskWithPromiseBlock:v19];
  }

  else
  {
    v11 = +[AMSUnitTests isRunningUnitTests];
    v12 = +[AMSLogConfig sharedConfig];
    v13 = v12;
    if (v11)
    {
      if (!v12)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v26 = objc_opt_class();
        v27 = 2114;
        v28 = v8;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] AMSLookup requires its bag or contract properties to be set.", buf, 0x16u);
      }

      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v15 = +[AMSLogConfig sharedConfig];
      [v13 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v15 userInfo:0];
    }

    else
    {
      if (!v12)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v13 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v26 = objc_opt_class();
        v27 = 2114;
        v28 = v8;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] AMSLookup requires its bag or contract properties to be set.", buf, 0x16u);
      }
    }

    v17 = AMSError(2, @"AMSLookup failed", @"Neither bag nor bag contract was provided.", 0);
    v16 = [AMSPromise promiseWithError:v17];
  }

  return v16;
}

id __64__AMSLookup_performLookupWithBundleIdentifiers_itemIdentifiers___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    *buf = 138543618;
    v35 = v4;
    v36 = 2114;
    v37 = v5;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Starting lookup request", buf, 0x16u);
  }

  v6 = *(a1 + 48);
  v7 = [AMSURLRequestEncoder alloc];
  if (v6)
  {
    v8 = [(AMSURLRequestEncoder *)v7 initWithBag:*(a1 + 48)];
  }

  else
  {
    v8 = [(AMSURLRequestEncoder *)v7 initWithBagContract:*(a1 + 56)];
  }

  v9 = v8;
  [(AMSURLRequestEncoder *)v8 setLogUUID:*(a1 + 40)];
  v10 = [*(a1 + 32) clientInfo];
  [(AMSURLRequestEncoder *)v9 setClientInfo:v10];

  v11 = objc_alloc_init(AMSLookupDecoder);
  [(AMSURLRequestEncoder *)v9 setResponseDecoder:v11];

  if ([*(a1 + 32) signatureType] == 1)
  {
    [(AMSURLRequestEncoder *)v9 setMescalType:1];
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = [v12 URLForKey:@"storeplatform-lookup-url-unpersonalized"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [*(a1 + 48) URLForKey:@"storeplatform-lookup-url"];
    }

    v18 = v15;

    goto LABEL_21;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v17 = @"Bag contract doesn't support providing either personalized or unpersonalized URLs.";
      goto LABEL_27;
    }

    v16 = [*(a1 + 56) personalizedLookupURL];
    if (!v16)
    {
      v17 = @"Bag contract provided a nil personalized URL.";
      goto LABEL_27;
    }

LABEL_20:
    v18 = v16;
LABEL_21:
    v19 = [*(a1 + 32) _compileQueryParametersWithBundleIds:*(a1 + 64) itemIds:*(a1 + 72)];
    v20 = [v18 valuePromise];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __64__AMSLookup_performLookupWithBundleIdentifiers_itemIdentifiers___block_invoke_77;
    v31[3] = &unk_1E73B5D48;
    v32 = v9;
    v33 = v19;
    v21 = v19;
    v22 = [v20 thenWithBlock:v31];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __64__AMSLookup_performLookupWithBundleIdentifiers_itemIdentifiers___block_invoke_2;
    v28[3] = &unk_1E73B6D68;
    v28[4] = *(a1 + 32);
    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    v23 = [v22 thenWithBlock:v28];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __64__AMSLookup_performLookupWithBundleIdentifiers_itemIdentifiers___block_invoke_5;
    v26[3] = &unk_1E73B32F0;
    v24 = *(a1 + 40);
    v26[4] = *(a1 + 32);
    v27 = v24;
    [v23 addErrorBlock:v26];

    goto LABEL_22;
  }

  v16 = [*(a1 + 56) unpersonalizedLookupURL];
  if (v16)
  {
    goto LABEL_20;
  }

  v17 = @"Bag contract provided a nil unpersonalized URL.";
LABEL_27:
  v18 = AMSError(0, @"Bag lookup URL fetch failed", v17, 0);
  v23 = [AMSPromise promiseWithError:v18];
LABEL_22:

  return v23;
}

id __64__AMSLookup_performLookupWithBundleIdentifiers_itemIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 mutableCopy];
  }

  v5 = v4;
  if (![*(a1 + 32) signatureType])
  {
    [*(a1 + 32) _addJSSignatureToRequest:v5];
  }

  v6 = [*(a1 + 32) clientInfo];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[AMSProcessInfo currentProcess];
  }

  v9 = v8;

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [[AMSContractBagShim alloc] initWithBagContract:*(a1 + 48)];
  }

  v12 = v11;
  v13 = [MEMORY[0x1E695AC80] ams_configurationWithClientInfo:v9 bag:v11];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__AMSLookup_performLookupWithBundleIdentifiers_itemIdentifiers___block_invoke_3;
  v17[3] = &unk_1E73B88B0;
  v18 = v5;
  v14 = v5;
  v15 = [v13 thenWithBlock:v17];

  return v15;
}

id __64__AMSLookup_performLookupWithBundleIdentifiers_itemIdentifiers___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[AMSURLSession alloc] initWithConfiguration:v3];

  v5 = [(AMSURLSession *)v4 dataTaskPromiseWithRequest:*(a1 + 32)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__AMSLookup_performLookupWithBundleIdentifiers_itemIdentifiers___block_invoke_4;
  v8[3] = &unk_1E73B8888;
  v9 = v4;
  v6 = v4;
  [v5 addFinishBlock:v8];

  return v5;
}

void __64__AMSLookup_performLookupWithBundleIdentifiers_itemIdentifiers___block_invoke_5(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = AMSLogableError(v3);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] AMSLookup failed. error = %{public}@", &v9, 0x20u);
  }
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_10 != -1)
  {
    dispatch_once(&_MergedGlobals_1_10, &__block_literal_global_75);
  }

  v3 = qword_1ED6E1EC8;

  return v3;
}

void __26__AMSLookup_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1EC8;
  qword_1ED6E1EC8 = @"AMSLookup";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1ED0 != -1)
  {
    dispatch_once(&qword_1ED6E1ED0, &__block_literal_global_93_0);
  }

  v3 = qword_1ED6E1ED8;

  return v3;
}

void __33__AMSLookup_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1ED8;
  qword_1ED6E1ED8 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

- (void)_addJSSignatureToRequest:(id)a3
{
  v58[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSince1970];
  v7 = v6;

  [v4 appendFormat:@"%.0f", v7];
  v46 = v7;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f"];
  [v3 setValue:v8 forHTTPHeaderField:@"X-JS-TIMESTAMP"];

  v9 = [v3 valueForHTTPHeaderField:@"X-Apple-Store-Front"];
  if (v9)
  {
    [v4 appendString:v9];
  }

  else
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138543618;
      v52 = v12;
      v53 = 2114;
      v54 = v13;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] JS sign is missing a storefront", buf, 0x16u);
    }
  }

  v14 = [v3 URL];
  v15 = [v14 ams_parameters];

  v58[0] = @"caller";
  v58[1] = @"id";
  v58[2] = @"p";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v16 = v50 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v48;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v48 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v15 objectForKey:*(*(&v47 + 1) + 8 * i)];
        if (v21)
        {
          [v4 appendString:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v18);
  }

  v22 = [v4 UTF8String];
  if (![v4 length])
  {
    v35 = AMSErrorWithFormat(0, @"Lookup JS Failed", @"Signature string is empty", v23, v24, v25, v26, v27, v7);
    if (!v35)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  v28 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:20];
  CC_SHA1(v22, [v4 length], objc_msgSend(v28, "mutableBytes"));
  [v28 setLength:16];
  fd3fa4R8(3, [v28 mutableBytes]);
  if (v29)
  {
    v35 = AMSErrorWithFormat(0, @"Lookup JS Failed", @"JS sign returned invalid status code: %ld", v30, v31, v32, v33, v34, v29);
  }

  else
  {
    v35 = 0;
  }

  v36 = [v28 base64EncodedStringWithOptions:0];
  if ([v36 length])
  {
    [v3 setValue:v36 forHTTPHeaderField:@"X-JS-SP-TOKEN"];
  }

  else if (!v35)
  {
    v35 = AMSErrorWithFormat(0, @"Lookup JS Failed", @"Signature cookie value is empty", v37, v38, v39, v40, v41, v46);
  }

  if (v35)
  {
LABEL_28:
    v42 = +[AMSLogConfig sharedConfig];
    if (!v42)
    {
      v42 = +[AMSLogConfig sharedConfig];
    }

    v43 = [v42 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      v45 = AMSLogKey();
      *buf = 138543874;
      v52 = v44;
      v53 = 2114;
      v54 = v45;
      v55 = 2114;
      v56 = v35;
      _os_log_impl(&dword_192869000, v43, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error occurred during JS sign: %{public}@", buf, 0x20u);
    }
  }

LABEL_33:
}

- (id)_compileQueryParametersWithBundleIds:(id)a3 itemIds:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[AMSLookup version](self, "version")];
  [v9 setObject:v10 forKeyedSubscript:@"version"];

  v11 = [v8 componentsJoinedByString:{@", "}];

  if (v8)
  {
    [v9 setObject:v11 forKeyedSubscript:@"bundleId"];
  }

  v12 = [(AMSLookup *)self caller];
  if (v12)
  {
    v13 = v12;
LABEL_8:
    [v9 setObject:v13 forKeyedSubscript:@"caller"];

    goto LABEL_9;
  }

  v14 = [(AMSLookup *)self clientInfo];
  v13 = [v14 bundleIdentifier];

  if (v13)
  {
    goto LABEL_8;
  }

  v15 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v15 bundleIdentifier];

  if (v13)
  {
    goto LABEL_8;
  }

  v16 = [MEMORY[0x1E696AE30] processInfo];
  v13 = [v16 processName];

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_9:
  v17 = [(AMSLookup *)self imageProfile];

  if (v17)
  {
    v18 = [(AMSLookup *)self imageProfile];
    [v9 setObject:v18 forKeyedSubscript:@"artwork"];
  }

  v19 = [v6 componentsJoinedByString:{@", "}];
  if (v19)
  {
    [v9 setObject:v19 forKeyedSubscript:@"id"];
  }

  v20 = [(AMSLookup *)self keyProfile];

  if (v20)
  {
    v21 = [(AMSLookup *)self keyProfile];
    [v9 setObject:v21 forKeyedSubscript:@"p"];
  }

  v22 = [(AMSLookup *)self platform];

  if (v22)
  {
    v23 = [(AMSLookup *)self platform];
    [v9 setObject:v23 forKeyedSubscript:@"platform"];
  }

  v24 = [(AMSLookup *)self language];

  if (v24)
  {
    v25 = [(AMSLookup *)self language];
    [v9 setObject:v25 forKeyedSubscript:@"lang"];
  }

  return v9;
}

- (AMSLookup)initWithBagContract:(id)a3 caller:(id)a4 keyProfile:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[AMSContractBagShim alloc] initWithBagContract:v10];

  v12 = [(AMSLookup *)self initWithBag:v11 caller:v9 keyProfile:v8];
  return v12;
}

- (id)contract
{
  v3 = [AMSDeprecatedBagContract alloc];
  v4 = [(AMSLookup *)self bag];
  v5 = [(AMSDeprecatedBagContract *)v3 initWithBag:v4];

  return v5;
}

- (void)setContract:(id)a3
{
  v4 = a3;
  v5 = [[AMSContractBagShim alloc] initWithBagContract:v4];

  [(AMSLookup *)self setBag:v5];
}

@end