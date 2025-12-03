@interface AMSURLRequestEncoder
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSKeychainOptions)keychainOptions;
- (AMSProcessInfo)clientInfo;
- (AMSResponseDecoding)responseDecoder;
- (AMSURLBagContract)bagContract;
- (AMSURLRequestEncoder)initWithBag:(id)bag;
- (AMSURLRequestEncoder)initWithBagContract:(id)contract;
- (NSArray)groupRequestAccounts;
- (NSDictionary)additionalMetrics;
- (NSString)logUUID;
- (id)_addCookiesToRequest:(id)request account:(id)account;
- (id)_methodStringFromMethod:(int64_t)method;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters error:(id *)error;
- (id)requestByEncodingRequestAndReturnSigningErrors:(id)errors parameters:(id)parameters;
- (id)requestWithMethod:(int64_t)method URL:(id)l headers:(id)headers parameters:(id)parameters;
- (id)requestWithMethod:(int64_t)method URL:(id)l parameters:(id)parameters error:(id *)error;
- (id)requestWithMethod:(int64_t)method URLString:(id)string parameters:(id)parameters error:(id *)error;
- (id)requestWithMethod:(int64_t)method bagURL:(id)l headers:(id)headers parameters:(id)parameters;
- (id)requestWithMethod:(int64_t)method bagURL:(id)l parameters:(id)parameters error:(id *)error;
- (void)_checkHeaderSizeAndTriggerAutoBugCaptureIfNeeded:(id)needed;
- (void)_personalizeKeychainOptionsForAccount:(id)account;
- (void)_triggerAutoBugCaptureForOversizedHeaders:(id)headers totalHeaderSize:(unint64_t)size threshold:(unint64_t)threshold maxSize:(unint64_t)maxSize;
- (void)setAccount:(id)account;
- (void)setAdditionalMetrics:(id)metrics;
- (void)setBag:(id)bag;
- (void)setClientInfo:(id)info;
- (void)setGroupRequestAccounts:(id)accounts;
- (void)setKeychainOptions:(id)options;
- (void)setLogUUID:(id)d;
- (void)setResponseDecoder:(id)decoder;
@end

@implementation AMSURLRequestEncoder

- (NSString)logUUID
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_logUUID;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (ACAccount)account
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_account;
  os_unfair_recursive_lock_unlock();

  return v3;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (AMSKeychainOptions)keychainOptions
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_keychainOptions;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (AMSProcessInfo)clientInfo
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_clientInfo;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (AMSResponseDecoding)responseDecoder
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_responseDecoder;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSDictionary)additionalMetrics
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_additionalMetrics;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (AMSBagProtocol)bag
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_bag;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSArray)groupRequestAccounts
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_groupRequestAccounts;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (AMSURLRequestEncoder)initWithBag:(id)bag
{
  bagCopy = bag;
  v22.receiver = self;
  v22.super_class = AMSURLRequestEncoder;
  v6 = [(AMSURLRequestEncoder *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v6->_propertiesLock = 0;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.AMSURLRequestEncoder", v8);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v9;

    *&v7->_alwaysIncludeAuthKitHeaders = 0;
    v7->_anisetteType = 0;
    objc_storeStrong(&v7->_bag, bag);
    v11 = +[AMSProcessInfo currentProcess];
    clientInfo = v7->_clientInfo;
    v7->_clientInfo = v11;

    v7->_encodeCount = 0;
    v7->_excludeIdentifierHeadersForAccount = 0;
    v7->_includeClientVersions = 1;
    v13 = AMSLogKey();
    logUUID = v7->_logUUID;
    v7->_logUUID = v13;

    v7->_mescalType = 1;
    *&v7->_shouldSetCookiesFromResponse = 257;
    *&v7->_shouldSetStorefrontHeader = 257;
    v15 = [AMSFairPlayDeviceIdentityNetworkProvider alloc];
    v16 = +[AMSURLSession minimalSession];
    v17 = [(AMSFairPlayDeviceIdentityNetworkProvider *)v15 initWithSession:v16];
    fpdiNetworkProvider = v7->_fpdiNetworkProvider;
    v7->_fpdiNetworkProvider = v17;

    v19 = +[AMSFairPlayDeviceIdentity shared];
    fairPlayDeviceIdentity = v7->_fairPlayDeviceIdentity;
    v7->_fairPlayDeviceIdentity = v19;
  }

  return v7;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  os_unfair_recursive_lock_lock_with_options();
  account = self->_account;
  self->_account = accountCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setAdditionalMetrics:(id)metrics
{
  metricsCopy = metrics;
  os_unfair_recursive_lock_lock_with_options();
  additionalMetrics = self->_additionalMetrics;
  self->_additionalMetrics = metricsCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setBag:(id)bag
{
  bagCopy = bag;
  os_unfair_recursive_lock_lock_with_options();
  bag = self->_bag;
  self->_bag = bagCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setClientInfo:(id)info
{
  infoCopy = info;
  os_unfair_recursive_lock_lock_with_options();
  clientInfo = self->_clientInfo;
  self->_clientInfo = infoCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setGroupRequestAccounts:(id)accounts
{
  accountsCopy = accounts;
  os_unfair_recursive_lock_lock_with_options();
  groupRequestAccounts = self->_groupRequestAccounts;
  self->_groupRequestAccounts = accountsCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setKeychainOptions:(id)options
{
  optionsCopy = options;
  os_unfair_recursive_lock_lock_with_options();
  keychainOptions = self->_keychainOptions;
  self->_keychainOptions = optionsCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setLogUUID:(id)d
{
  dCopy = d;
  os_unfair_recursive_lock_lock_with_options();
  logUUID = self->_logUUID;
  self->_logUUID = dCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setResponseDecoder:(id)decoder
{
  decoderCopy = decoder;
  os_unfair_recursive_lock_lock_with_options();
  responseDecoder = self->_responseDecoder;
  self->_responseDecoder = decoderCopy;

  os_unfair_recursive_lock_unlock();
}

- (id)requestWithMethod:(int64_t)method bagURL:(id)l headers:(id)headers parameters:(id)parameters
{
  lCopy = l;
  headersCopy = headers;
  parametersCopy = parameters;
  if (lCopy)
  {
    v13 = objc_alloc_init(AMSMutablePromise);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__AMSURLRequestEncoder_requestWithMethod_bagURL_headers_parameters___block_invoke;
    v19[3] = &unk_1E73BD330;
    v14 = v13;
    v20 = v14;
    selfCopy = self;
    methodCopy = method;
    v22 = headersCopy;
    v23 = parametersCopy;
    [lCopy valueWithCompletion:v19];
    v15 = v23;
    v16 = v14;
  }

  else
  {
    v17 = AMSError(2, @"URL Encoder Error", @"bagURL is nil", 0);
    v16 = [AMSPromise promiseWithError:v17];
  }

  return v16;
}

void __68__AMSURLRequestEncoder_requestWithMethod_bagURL_headers_parameters___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);

    [v5 finishWithError:a4];
  }

  else
  {
    v6 = [*(a1 + 40) requestWithMethod:*(a1 + 64) URL:a2 headers:*(a1 + 48) parameters:*(a1 + 56)];
    [*(a1 + 32) finishWithPromise:v6];
  }
}

- (id)requestWithMethod:(int64_t)method URL:(id)l headers:(id)headers parameters:(id)parameters
{
  v10 = MEMORY[0x1E695AC18];
  parametersCopy = parameters;
  headersCopy = headers;
  v13 = [v10 requestWithURL:l];
  v14 = [(AMSURLRequestEncoder *)self _methodStringFromMethod:method];
  [v13 setHTTPMethod:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__AMSURLRequestEncoder_requestWithMethod_URL_headers_parameters___block_invoke;
  v18[3] = &unk_1E73B7EE0;
  v19 = v13;
  v15 = v13;
  [headersCopy enumerateKeysAndObjectsUsingBlock:v18];

  v16 = [(AMSURLRequestEncoder *)self requestByEncodingRequest:v15 parameters:parametersCopy];

  return v16;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_157 != -1)
  {
    dispatch_once(&_MergedGlobals_157, &__block_literal_global_147);
  }

  v3 = qword_1ED6E31D8;

  return v3;
}

void __37__AMSURLRequestEncoder_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E31D8;
  qword_1ED6E31D8 = @"AMSCore";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E31E0 != -1)
  {
    dispatch_once(&qword_1ED6E31E0, &__block_literal_global_24_1);
  }

  v3 = qword_1ED6E31E8;

  return v3;
}

void __44__AMSURLRequestEncoder_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E31E8;
  qword_1ED6E31E8 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  v4 = [(AMSURLRequestEncoder *)self requestByEncodingRequestAndReturnSigningErrors:request parameters:parameters];
  v5 = [v4 thenWithBlock:&__block_literal_global_31_0];

  return v5;
}

id __60__AMSURLRequestEncoder_requestByEncodingRequest_parameters___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 request];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

- (id)requestByEncodingRequestAndReturnSigningErrors:(id)errors parameters:(id)parameters
{
  errorsCopy = errors;
  parametersCopy = parameters;
  v8 = objc_alloc_init(AMSMutablePromise);
  v9 = [errorsCopy copy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v10 = [[AMSURLRequest alloc] initWithRequest:errorsCopy];
    goto LABEL_6;
  }

  v10 = v9;

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  internalQueue = [(AMSURLRequestEncoder *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke;
  block[3] = &unk_1E73B7138;
  block[4] = self;
  v20 = v10;
  v21 = errorsCopy;
  v22 = parametersCopy;
  v12 = v8;
  v23 = v12;
  v13 = parametersCopy;
  v14 = errorsCopy;
  v15 = v10;
  dispatch_async(internalQueue, block);

  v16 = v23;
  v17 = v12;

  return v12;
}

void __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke(id *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] logUUID];
  if (!v2 || [a1[4] encodeCount] >= 1 && (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@_%ld", v2, objc_msgSend(a1[4], "encodeCount")), v3 = objc_claimAutoreleasedReturnValue(), v2, (v2 = v3) == 0))
  {
    v2 = AMSGenerateLogCorrelationKey();
  }

  v4 = [a1[5] properties];
  [v4 setLogUUID:v2];

  v5 = AMSSetLogKey(v2);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__74;
  v38 = __Block_byref_object_dispose__74;
  v39 = [a1[4] account];
  if (v35[5])
  {
    v6 = [AMSOptional optionalWithValue:?];
    v7 = [AMSPromise promiseWithResult:v6];
  }

  else
  {
    v8 = MEMORY[0x1E6959A48];
    v9 = [a1[4] clientInfo];
    v6 = [v8 ams_sharedAccountStoreForProcessInfo:v9];

    if (v6)
    {
      v10 = [v6 ams_mediaType];
      v11 = [v6 _ams_localiTunesAccountForAccountMediaType:v10 updateStorefront:1];
      v7 = [v11 thenWithBlock:&__block_literal_global_43];
    }

    else
    {
      v12 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = [a1[5] properties];
        v16 = [v15 logUUID];
        v17 = [a1[6] URL];
        v18 = AMSLogableURL(v17);
        *buf = 138543874;
        v41 = v14;
        v42 = 2114;
        v43 = v16;
        v44 = 2114;
        v45 = v18;
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to fetch shared ACAccountStore. Request encoding will continue without an account. Request URL: %{public}@", buf, 0x20u);
      }

      v10 = +[AMSOptional optionalWithNil];
      v7 = [AMSPromise promiseWithResult:v10];
    }
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2;
  v30[3] = &unk_1E73BD398;
  v33 = &v34;
  *&v19 = a1[5];
  *(&v19 + 1) = a1[4];
  v26 = v19;
  v20 = a1[6];
  v21 = a1[7];
  *&v22 = v20;
  *(&v22 + 1) = v21;
  v31 = v26;
  v32 = v22;
  v23 = [v7 continueWithBlock:v30];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_68;
  v27[3] = &unk_1E73BD3C0;
  v24 = a1[5];
  v27[4] = a1[4];
  v28 = v24;
  v29 = &v34;
  v25 = [v23 thenWithBlock:v27];

  [a1[8] finishWithPromise:v25];
  _Block_object_dispose(&v34, 8);
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_40(uint64_t a1, uint64_t a2)
{
  v2 = [AMSOptional optionalWithValue:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  v5 = [a2 value];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 64) + 8) + 40);
  if (v8)
  {
    goto LABEL_12;
  }

  v9 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [*(a1 + 32) properties];
    v12 = [v11 logUUID];
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      v2 = [*(a1 + 32) properties];
      v3 = [v2 logUUID];
      [v13 stringWithFormat:@"%@: [%@] ", v15, v3];
    }

    else
    {
      [v13 stringWithFormat:@"%@: ", v14];
    }
    v16 = ;
    *buf = 138543362;
    v97 = v16;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@We weren't provided an account and were unable to get the local account.", buf, 0xCu);
    if (v12)
    {

      v16 = v2;
    }
  }

  v8 = *(*(*(a1 + 64) + 8) + 40);
  if (v8)
  {
LABEL_12:
    v17 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v34 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      v35 = [v34 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = [*(a1 + 32) properties];
        v38 = [v37 logUUID];
        *buf = 138543618;
        v97 = v36;
        v98 = 2114;
        v99 = v38;
        _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Somewhere along the lines the account has become a dangling pointer.", buf, 0x16u);
      }

      v33 = AMSError(0, @"Request encoding failed", @"The account object was no longer valid.", 0);
      goto LABEL_26;
    }

    v18 = v17;
  }

  v19 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v93 = [*(a1 + 32) properties];
    v22 = [v93 logUUID];
    v23 = [*(a1 + 48) URL];
    v24 = AMSLogableURL(v23);
    v25 = [*(*(*(a1 + 64) + 8) + 40) hashedDescription];
    v26 = [*(a1 + 40) clientInfo];
    v27 = [v26 accountMediaType];
    *buf = 138544386;
    v97 = v21;
    v98 = 2114;
    v99 = v22;
    v100 = 2114;
    v101 = v24;
    v102 = 2114;
    v103 = v25;
    v104 = 2114;
    v105 = v27;
    _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Encoding request for URL: %{public}@ { \n\taccount = %{public}@ \n\tmediaType = %{public}@ \n}", buf, 0x34u);
  }

  v28 = *(a1 + 56);
  if (v28)
  {
    v29 = *(a1 + 32);
    v30 = [*(a1 + 40) requestEncoding];
    v31 = [*(a1 + 40) compressRequestBody];
    v95 = 0;
    [v29 ams_setBodyParameters:v28 encoding:v30 compressBody:v31 error:&v95];
    v32 = v95;
    if (v32)
    {
      v33 = v32;
LABEL_26:
      v39 = [AMSPromise promiseWithError:v33];
LABEL_39:

      goto LABEL_40;
    }
  }

  [*(a1 + 32) setValue:@"br forHTTPHeaderField:{gzip, deflate", @"Accept-Encoding"}];
  v40 = *(*(*(a1 + 64) + 8) + 40);
  v41 = [*(a1 + 32) properties];
  [v41 setAccount:v40];

  v42 = [*(a1 + 40) additionalMetrics];
  v43 = [*(a1 + 32) properties];
  [v43 setAdditionalMetrics:v42];

  v44 = [*(a1 + 40) anisetteType];
  v45 = [*(a1 + 32) properties];
  [v45 setAnisetteType:v44];

  v46 = [*(a1 + 40) bag];
  v47 = [*(a1 + 32) properties];
  [v47 setBag:v46];

  v48 = [*(a1 + 40) clientInfo];
  v49 = [*(a1 + 32) properties];
  [v49 setClientInfo:v48];

  v50 = [*(a1 + 40) dialogOptions];
  v51 = [*(a1 + 32) properties];
  [v51 setDialogOptions:v50];

  v52 = [*(a1 + 40) gsTokenIdentifier];
  v53 = [*(a1 + 32) properties];
  [v53 setGsTokenIdentifier:v52];

  v54 = [*(a1 + 40) excludeIdentifierHeadersForAccount];
  v55 = [*(a1 + 32) properties];
  [v55 setExcludeIdentifierHeadersForAccount:v54];

  v56 = [*(a1 + 40) keychainOptions];
  v57 = [*(a1 + 32) properties];
  [v57 setKeychainOptions:v56];

  v58 = [*(a1 + 40) urlKnownToBeTrusted];
  v59 = [*(a1 + 32) properties];
  [v59 setKnownToBeTrusted:v58];

  v60 = [*(a1 + 40) mescalType];
  v61 = [*(a1 + 32) properties];
  [v61 setMescalType:v60];

  v62 = [*(a1 + 40) responseDecoder];
  v63 = [*(a1 + 32) properties];
  [v63 setResponseDecoder:v62];

  v64 = [*(a1 + 40) disableResponseDecoding];
  v65 = [*(a1 + 32) properties];
  [v65 setDisableResponseDecoding:v64];

  v66 = [*(a1 + 40) enableRemoteSecuritySigning];
  v67 = [*(a1 + 32) properties];
  [v67 setRemoteSecuritySigningEnabled:v66];

  v68 = [*(a1 + 40) shouldSetCookiesFromResponse];
  v69 = [*(a1 + 32) properties];
  [v69 setShouldSetCookiesFromResponse:v68];

  v70 = [*(a1 + 40) shouldSetStorefrontFromResponse];
  v71 = [*(a1 + 32) properties];
  [v71 setShouldSetStorefrontFromResponse:v70];

  v72 = [*(a1 + 40) paymentSheetTaskClass];
  v73 = [*(a1 + 32) properties];
  [v73 setPaymentSheetTaskClass:v72];

  v74 = [*(a1 + 40) parentProperties];

  if (v74)
  {
    v75 = [*(a1 + 40) parentProperties];
    v76 = [v75 purchaseInfo];
    v77 = [*(a1 + 32) properties];
    [v77 setPurchaseInfo:v76];

    v78 = [*(a1 + 40) dialogOptions];
    v79 = *(a1 + 40);
    if (!v78)
    {
      v79 = [*(a1 + 40) parentProperties];
    }

    v80 = [v79 dialogOptions];
    v81 = [*(a1 + 32) properties];
    [v81 setDialogOptions:v80];

    if (!v78)
    {
    }
  }

  if (([*(a1 + 40) excludeIdentifierHeadersForAccount] & 1) == 0)
  {
    [*(a1 + 32) ams_addIdentifierHeadersForAccount:*(*(*(a1 + 64) + 8) + 40)];
  }

  v82 = *(*(*(a1 + 64) + 8) + 40);
  v83 = *(a1 + 32);
  v84 = [*(a1 + 40) gsTokenIdentifier];
  [v83 ams_addGSTokenForAccount:v82 identifier:v84];

  if ([*(a1 + 40) alwaysIncludeMMeClientInfoAndDeviceHeaders])
  {
    v85 = [*(a1 + 40) gsTokenIdentifier];

    if (!v85)
    {
      [*(a1 + 32) ams_addMMeClientInfoAndDeviceHeaders];
    }
  }

  if ([*(a1 + 40) shouldSetStorefrontHeader])
  {
    v86 = *(*(*(a1 + 64) + 8) + 40);
    v87 = *(a1 + 32);
    v33 = [*(a1 + 40) clientInfo];
    v88 = [v33 accountMediaType];
    v89 = [*(a1 + 40) bag];
    v90 = [AMSURLRequestDecoration addStoreFrontHeaderToRequest:v87 forAccount:v86 mediaType:v88 bag:v89];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_64;
    v94[3] = &unk_1E73B58D0;
    v94[4] = *(a1 + 40);
    v91 = [v90 catchWithBlock:v94];
    v39 = [v91 promiseAdapter];

    goto LABEL_39;
  }

  v39 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
LABEL_40:

  return v39;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_64(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add storefront header. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }

  v12 = +[AMSBinaryPromise promiseWithSuccess];

  return v12;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_68(uint64_t a1)
{
  v27 = [*(a1 + 32) _addCookiesToRequest:*(a1 + 40) account:*(*(*(a1 + 48) + 8) + 40)];
  v2 = [v27 promiseAdapter];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_69;
  v49[3] = &unk_1E73B3190;
  v3 = *(a1 + 40);
  v49[4] = *(a1 + 32);
  v50 = v3;
  v4 = [v2 continueWithBlock:v49];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_72;
  v46[3] = &unk_1E73B3078;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v47 = v5;
  v48 = v6;
  v7 = [v4 thenWithBlock:v46];
  v8 = [v7 thenWithBlock:&__block_literal_global_77];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_78;
  v42[3] = &unk_1E73BD3C0;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v43 = v9;
  v44 = v10;
  v45 = *(a1 + 48);
  v11 = [v8 thenWithBlock:v42];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_80;
  v38[3] = &unk_1E73BD3E8;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v39 = v12;
  v40 = v14;
  v41 = v13;
  v15 = [v11 thenWithBlock:v38];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_84;
  v34[3] = &unk_1E73BD3E8;
  v16 = *(a1 + 40);
  v37 = *(a1 + 48);
  v17 = v16;
  v18 = *(a1 + 32);
  v35 = v17;
  v36 = v18;
  v19 = [v15 thenWithBlock:v34];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_86;
  v31[3] = &unk_1E73B3F20;
  v20 = *(a1 + 40);
  v21 = *(a1 + 32);
  v32 = v20;
  v33 = v21;
  v22 = [v19 thenWithBlock:v31];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_88;
  v28[3] = &unk_1E73B3F20;
  v23 = *(a1 + 40);
  v24 = *(a1 + 32);
  v29 = v23;
  v30 = v24;
  v25 = [v22 thenWithBlock:v28];

  return v25;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_69(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = AMSLogKey();
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        v3 = AMSLogKey();
        [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      v13 = AMSLogableError(v5);
      *buf = 138543618;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to add cookies to request. error = %{public}@", buf, 0x16u);
      if (v8)
      {

        v12 = v3;
      }
    }
  }

  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) clientInfo];
  v16 = [v15 treatmentNamespace];
  v17 = [AMSURLRequestDecoration addTreatmentHeadersToRequest:v14 forTreatmentNamespace:v16];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_70;
  v21[3] = &unk_1E73B58D0;
  v21[4] = *(a1 + 32);
  v18 = [v17 catchWithBlock:v21];
  v19 = [v18 promiseAdapter];

  return v19;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_70(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add treatment headers. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }

  v12 = +[AMSBinaryPromise promiseWithSuccess];

  return v12;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_72(uint64_t a1)
{
  [*(a1 + 32) ams_addAcceptLanguageHeader];
  [*(a1 + 32) ams_addCacheBusterParameterWithPreservedQueryEncoding:{objc_msgSend(*(a1 + 40), "preserveQueryParameterEncoding")}];
  [*(a1 + 32) ams_addCachePolicyHeader];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) clientInfo];
  [v2 ams_addClientIdentifierHeaderForClient:v3];

  if ([*(a1 + 40) includeClientVersions])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) clientInfo];
    [v4 ams_addClientVersionsForClient:v5];
  }

  [*(a1 + 32) ams_addConnectionTypeHeader];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) bag];
  v8 = +[AMSURLRequestDecoration addGUIDParameterToRequest:bag:preservingQueryEncoding:](AMSURLRequestDecoration, "addGUIDParameterToRequest:bag:preservingQueryEncoding:", v6, v7, [*(a1 + 40) preserveQueryParameterEncoding]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_73;
  v12[3] = &unk_1E73B58D0;
  v12[4] = *(a1 + 40);
  v9 = [v8 catchWithBlock:v12];
  v10 = [v9 promiseAdapter];

  return v10;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_73(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add GUID parameters. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }

  v12 = +[AMSBinaryPromise promiseWithSuccess];

  return v12;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_75()
{
  v0 = +[AMSBinaryPromise promiseWithSuccess];
  v1 = [v0 promiseAdapter];

  return v1;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_78(uint64_t a1)
{
  [*(a1 + 32) ams_addIssuingProcessHeader];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) clientInfo];
  [v2 ams_addRequestingProcessWithClient:v3];

  [*(a1 + 32) ams_addTimezoneOffsetHeader];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) clientInfo];
  [v4 ams_addUserAgentHeaderFromClient:v5];

  [*(a1 + 32) ams_addForwardedForHeader];
  v6 = [*(a1 + 40) groupRequestAccounts];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 40) groupRequestAccounts];
    v9 = [v8 count];

    if (v9)
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) groupRequestAccounts];
      [v11 ams_addXGroupDSIDsWithPrimaryAccount:v10 andGroupAccounts:v12];
    }
  }

  [*(a1 + 40) _personalizeKeychainOptionsForAccount:*(*(*(a1 + 48) + 8) + 40)];
  v13 = *(a1 + 32);
  v14 = [v13 properties];
  v15 = [v14 purchaseInfo];
  v16 = [v15 buyParams];
  v17 = [*(a1 + 40) bag];
  v18 = +[AMSURLRequestDecoration addAbsintheHeadersToRequest:buyParams:bag:shouldUseRemoteSigningIfAvailable:](AMSURLRequestDecoration, "addAbsintheHeadersToRequest:buyParams:bag:shouldUseRemoteSigningIfAvailable:", v13, v16, v17, [*(a1 + 40) enableRemoteSecuritySigning]);
  v19 = [v18 promiseAdapter];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_3;
  v22[3] = &unk_1E73BB788;
  v22[4] = *(a1 + 40);
  v20 = [v19 continueWithBlock:v22];

  return v20;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x1E695DF20] dictionary];
  }

  else
  {
    v7 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      if (v9)
      {
        a1 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, a1];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      v14 = AMSLogableError(v5);
      *buf = 138543618;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add Absinthe headers. error = %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = a1;
      }
    }

    v18 = 0x1F073AAB8;
    v19 = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  v15 = v6;
  v16 = [AMSPromise promiseWithResult:v6];

  return v16;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) anisetteType];
  v7 = [*(a1 + 40) bag];
  v8 = [AMSURLRequestDecoration addAnisetteHeadersToRequest:v5 account:v4 type:v6 bag:v7];
  v9 = [v8 promiseAdapter];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_81;
  v14[3] = &unk_1E73B3190;
  v10 = *(a1 + 40);
  v15 = v3;
  v16 = v10;
  v11 = v3;
  v12 = [v9 continueWithBlock:v14];

  return v12;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_81(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2)
  {
    v7 = [AMSPromise promiseWithResult:*(a1 + 32)];
  }

  else
  {
    v8 = +[AMSLogConfig sharedURLLoadingConfig];
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
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v15 = AMSLogableError(v6);
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add Anisette headers. error = %{public}@", buf, 0x16u);
      if (v10)
      {

        v14 = v3;
      }
    }

    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
    [v16 setObject:v6 forKeyedSubscript:0x1F073AAD8];
    v7 = [AMSPromise promiseWithResult:v16];
  }

  return v7;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_84(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(*(a1 + 48) + 8) + 40) ams_isEphemeralAccount])
  {
    v4 = [AMSPromise promiseWithResult:v3];
  }

  else
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) keychainOptions];
    [v6 ams_addBiometricsHeadersForAccount:v5 options:v7];

    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) mescalType];
    v10 = [*(a1 + 40) bag];
    v11 = [*(a1 + 32) properties];
    v12 = [v11 logUUID];
    v13 = [AMSURLRequestDecoration addMescalHeaderToRequest:v8 type:v9 bag:v10 logKey:v12];
    v14 = [v13 promiseAdapter];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_85;
    v18[3] = &unk_1E73B3190;
    v15 = v3;
    v16 = *(a1 + 40);
    v19 = v15;
    v20 = v16;
    v4 = [v14 continueWithBlock:v18];
  }

  return v4;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_85(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2)
  {
    v7 = [AMSPromise promiseWithResult:*(a1 + 32)];
  }

  else
  {
    v8 = +[AMSLogConfig sharedURLLoadingConfig];
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
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v15 = AMSLogableError(v6);
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add Mescal headers. error = %{public}@", buf, 0x16u);
      if (v10)
      {

        v14 = v3;
      }
    }

    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
    [v16 setObject:v6 forKeyedSubscript:0x1F073AAF8];
    v7 = [AMSPromise promiseWithResult:v16];
  }

  return v7;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 properties];
  v6 = [v5 purchaseInfo];
  v7 = [v6 buyParams];
  v8 = [*(a1 + 40) bag];
  v9 = [*(a1 + 40) fairPlayDeviceIdentity];
  v10 = [*(a1 + 40) fpdiNetworkProvider];
  v11 = [AMSURLRequestDecoration addFPDIHeadersToRequest:v4 buyParams:v7 bag:v8 retryCount:0 fairPlayDeviceIdentity:v9 fpdiNetworkProvider:v10];
  v12 = [v11 promiseAdapter];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_87;
  v17[3] = &unk_1E73B3190;
  v13 = *(a1 + 40);
  v18 = v3;
  v19 = v13;
  v14 = v3;
  v15 = [v12 continueWithBlock:v17];

  return v15;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_87(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2)
  {
    v7 = [AMSPromise promiseWithResult:*(a1 + 32)];
  }

  else
  {
    v8 = +[AMSLogConfig sharedURLLoadingConfig];
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
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v15 = AMSLogableError(v6);
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add FPDI headers. error = %{public}@", buf, 0x16u);
      if (v10)
      {

        v14 = v3;
      }
    }

    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
    [v16 setObject:v6 forKeyedSubscript:0x1F0732178];
    v7 = [AMSPromise promiseWithResult:v16];
  }

  return v7;
}

id __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) URL];
  v5 = [v4 ams_URLBySortingQueryParameters];
  [*(a1 + 32) setURL:v5];

  if (os_variant_has_internal_content())
  {
    [*(a1 + 40) _checkHeaderSizeAndTriggerAutoBugCaptureIfNeeded:*(a1 + 32)];
  }

  v6 = [*(a1 + 40) internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_89;
  block[3] = &unk_1E73B3680;
  block[4] = *(a1 + 40);
  dispatch_async(v6, block);

  if (*(a1 + 32))
  {
    v7 = [[AMSURLRequestEncoderResult alloc] initWithRequest:*(a1 + 32) signingErrors:v3];
    [AMSPromise promiseWithResult:v7];
  }

  else
  {
    v7 = AMSError(311, @"Request encoding failed", @"The request encoder finished with a nil request", 0);
    [AMSPromise promiseWithError:v7];
  }
  v8 = ;

  return v8;
}

uint64_t __82__AMSURLRequestEncoder_requestByEncodingRequestAndReturnSigningErrors_parameters___block_invoke_2_89(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 encodeCount] + 1;

  return [v1 setEncodeCount:v2];
}

- (id)_addCookiesToRequest:(id)request account:(id)account
{
  v48 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  accountCopy = account;
  if ([(AMSURLRequestEncoder *)self shouldSetCookieHeader])
  {
    if (!accountCopy || ([accountCopy ams_isLocalAccount] & 1) != 0 || objc_msgSend(accountCopy, "ams_isEphemeralAccount"))
    {
      alwaysIncludeAuthKitHeaders = [(AMSURLRequestEncoder *)self alwaysIncludeAuthKitHeaders];
      v10 = +[AMSLogConfig sharedURLLoadingConfig];
      v11 = v10;
      if (!alwaysIncludeAuthKitHeaders)
      {
        if (!v10)
        {
          v11 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v11 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v26 = AMSLogKey();
          v27 = MEMORY[0x1E696AEC0];
          v28 = objc_opt_class();
          v29 = v28;
          if (v26)
          {
            v4 = AMSLogKey();
            [v27 stringWithFormat:@"%@: [%@] ", v29, v4];
          }

          else
          {
            [v27 stringWithFormat:@"%@: ", v28];
          }
          v30 = ;
          v37 = AMSHashIfNeeded(accountCopy);
          *buf = 138543618;
          v45 = v30;
          v46 = 2114;
          v47 = v37;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Request is unpersonalized, adding cookies. account = %{public}@", buf, 0x16u);
          if (v26)
          {

            v30 = v4;
          }
        }

        clientInfo = [(AMSURLRequestEncoder *)self clientInfo];
        v39 = [(AMSURLRequestEncoder *)self bag];
        v31 = [requestCopy ams_addCookiesAsynchronouslyForAccount:accountCopy clientInfo:clientInfo bag:v39 cleanupGlobalCookies:1];

        goto LABEL_46;
      }

      if (!v10)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v11 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
LABEL_43:

        if (![(AMSURLRequestEncoder *)self excludeIdentifierHeadersForAccount])
        {
          [requestCopy ams_addPrimaryiCloudIdentifierHeader];
        }

        clientInfo = [requestCopy ams_addAuthKitHeaders];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __53__AMSURLRequestEncoder__addCookiesToRequest_account___block_invoke;
        v41[3] = &unk_1E73B6C00;
        v41[4] = self;
        v42 = requestCopy;
        v43 = accountCopy;
        v31 = [clientInfo continueWithBlock:v41];

LABEL_46:
        goto LABEL_47;
      }

      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        v4 = AMSLogKey();
        [v14 stringWithFormat:@"%@: [%@] ", v16, v4];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v35 = AMSHashIfNeeded(accountCopy);
      *buf = 138543618;
      v45 = v17;
      v46 = 2114;
      v47 = v35;
      v36 = "%{public}@Request is unpersonalized, but requested authkit headers and adding cookies. account = %{public}@";
    }

    else
    {
      v11 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v11 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      v13 = AMSLogKey();
      v32 = MEMORY[0x1E696AEC0];
      v33 = objc_opt_class();
      v34 = v33;
      if (v13)
      {
        v4 = AMSLogKey();
        [v32 stringWithFormat:@"%@: [%@] ", v34, v4];
      }

      else
      {
        [v32 stringWithFormat:@"%@: ", v33];
      }
      v17 = ;
      v35 = AMSHashIfNeeded(accountCopy);
      *buf = 138543618;
      v45 = v17;
      v46 = 2114;
      v47 = v35;
      v36 = "%{public}@Request is personalized, adding personalized headers and cookies. account = %{public}@";
    }

    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, v36, buf, 0x16u);
    if (v13)
    {

      v17 = v4;
    }

    goto LABEL_43;
  }

  v18 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
    *buf = 138543362;
    v45 = selfCopy;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@Request cookies are disabled. No cookie header will be added.", buf, 0xCu);
    if (v20)
    {

      selfCopy = self;
    }
  }

  [requestCopy setHTTPShouldHandleCookies:0];
  v31 = +[AMSBinaryPromise promiseWithSuccess];
LABEL_47:

  return v31;
}

id __53__AMSURLRequestEncoder__addCookiesToRequest_account___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = AMSLogKey();
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        v3 = AMSLogKey();
        [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      v13 = AMSLogableError(v5);
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error adding AuthKit headers: %{public}@", buf, 0x16u);
      if (v8)
      {

        v12 = v3;
      }
    }
  }

  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v16 = [*(a1 + 32) clientInfo];
  v17 = [*(a1 + 32) bag];
  v18 = [v15 ams_addCookiesAsynchronouslyForAccount:v14 clientInfo:v16 bag:v17 cleanupGlobalCookies:0];

  return v18;
}

- (id)_methodStringFromMethod:(int64_t)method
{
  if (method > 6)
  {
    return 0;
  }

  else
  {
    return off_1E73BD408[method];
  }
}

- (void)_personalizeKeychainOptionsForAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v13 = accountCopy;
    keychainOptions = [(AMSURLRequestEncoder *)self keychainOptions];

    if (!keychainOptions && ([v13 ams_isLocalAccount] & 1) == 0)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v8 = [processName isEqualToString:@"AppStore"];

      if (v8)
      {
        v9 = objc_alloc_init(AMSKeychainOptions);
        [(AMSURLRequestEncoder *)self setKeychainOptions:v9];

        keychainOptions2 = [(AMSURLRequestEncoder *)self keychainOptions];
        [keychainOptions2 setPurpose:1];

        v11 = +[AMSKeychainOptions preferredAttestationStyle];
        keychainOptions3 = [(AMSURLRequestEncoder *)self keychainOptions];
        [keychainOptions3 setStyle:v11];
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_checkHeaderSizeAndTriggerAutoBugCaptureIfNeeded:(id)needed
{
  v38 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  allHTTPHeaderFields = [neededCopy allHTTPHeaderFields];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [allHTTPHeaderFields countByEnumeratingWithState:&v21 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(allHTTPHeaderFields);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [allHTTPHeaderFields objectForKeyedSubscript:v11];
        v13 = [v11 length];
        v8 += v13 + [v12 length] + 4;
      }

      v7 = [allHTTPHeaderFields countByEnumeratingWithState:&v21 objects:v37 count:16];
    }

    while (v7);
    if (v8 >> 2 >= 0x733)
    {
      v14 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        properties = [neededCopy properties];
        logUUID = [properties logUUID];
        v18 = [neededCopy URL];
        v19 = AMSLogableURL(v18);
        *buf = 138544642;
        v26 = v16;
        v27 = 2114;
        v28 = logUUID;
        v29 = 2048;
        v30 = v8;
        v31 = 2048;
        v32 = 7372;
        v33 = 2048;
        v34 = 0x2000;
        v35 = 2114;
        v36 = v19;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] HTTP headers approaching size limit. Total size: %lu bytes (threshold: %lu bytes, max: %lu bytes). URL: %{public}@", buf, 0x3Eu);
      }

      [(AMSURLRequestEncoder *)self _triggerAutoBugCaptureForOversizedHeaders:neededCopy totalHeaderSize:v8 threshold:7372 maxSize:0x2000];
    }
  }
}

- (void)_triggerAutoBugCaptureForOversizedHeaders:(id)headers totalHeaderSize:(unint64_t)size threshold:(unint64_t)threshold maxSize:(unint64_t)maxSize
{
  v75[4] = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  v74[0] = @"domain";
  v74[1] = @"type";
  v75[0] = @"AppleMediaServices";
  v75[1] = @"AMSURLRequestEncoder";
  v75[2] = @"AMSURLRequestEncoder Headers Oversized";
  v74[2] = @"subType";
  v74[3] = @"process";
  v10 = +[AMSProcessInfo currentProcess];
  bundleIdentifier = [v10 bundleIdentifier];
  v12 = bundleIdentifier;
  v13 = @"unknown";
  if (bundleIdentifier)
  {
    v13 = bundleIdentifier;
  }

  v75[3] = v13;
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:4];

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  [v14 setObject:v15 forKeyedSubscript:@"totalHeaderSize"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:threshold];
  [v14 setObject:v16 forKeyedSubscript:@"threshold"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maxSize];
  [v14 setObject:v17 forKeyedSubscript:@"maxSize"];

  v18 = [headersCopy URL];
  absoluteString = [v18 absoluteString];
  v20 = absoluteString;
  if (absoluteString)
  {
    v21 = absoluteString;
  }

  else
  {
    v21 = @"<nil>";
  }

  [v14 setObject:v21 forKeyedSubscript:@"requestURL"];

  properties = [headersCopy properties];
  logUUID = [properties logUUID];
  v24 = logUUID;
  if (logUUID)
  {
    v25 = logUUID;
  }

  else
  {
    v25 = @"<nil>";
  }

  [v14 setObject:v25 forKeyedSubscript:{@"logUUID", v14}];

  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v56 = headersCopy;
  allHTTPHeaderFields = [headersCopy allHTTPHeaderFields];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v28 = [allHTTPHeaderFields countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v67;
    v54 = allHTTPHeaderFields;
    v55 = v26;
    v53 = *v67;
    do
    {
      v31 = 0;
      v57 = v29;
      do
      {
        if (*v67 != v30)
        {
          objc_enumerationMutation(allHTTPHeaderFields);
        }

        v32 = *(*(&v66 + 1) + 8 * v31);
        v33 = [allHTTPHeaderFields objectForKeyedSubscript:v32];
        v34 = [v32 length];
        v35 = v34 + [v33 length];
        if ([v32 isEqualToString:@"Cookie"] && objc_msgSend(v33, "length"))
        {
          v58 = v35;
          v59 = v32;
          v60 = v33;
          v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
          ams_cookies = [v56 ams_cookies];
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v38 = [ams_cookies countByEnumeratingWithState:&v62 objects:v72 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v63;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v63 != v40)
                {
                  objc_enumerationMutation(ams_cookies);
                }

                v42 = *(*(&v62 + 1) + 8 * i);
                v43 = [ams_cookies objectForKeyedSubscript:v42];
                v44 = [v42 length];
                v45 = [v43 length];
                v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v44 + v45 + 3];
                [v36 setObject:v46 forKeyedSubscript:v42];
              }

              v39 = [ams_cookies countByEnumeratingWithState:&v62 objects:v72 count:16];
            }

            while (v39);
          }

          v70[0] = @"size";
          v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v58 + 4];
          v70[1] = @"cookieBreakdown";
          v71[0] = v47;
          v71[1] = v36;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
          v26 = v55;
          [v55 setObject:v48 forKeyedSubscript:v59];

          v30 = v53;
          allHTTPHeaderFields = v54;
          v29 = v57;
          v33 = v60;
        }

        else
        {
          v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35 + 4];
          [v26 setObject:v36 forKeyedSubscript:v32];
        }

        ++v31;
      }

      while (v31 != v29);
      v29 = [allHTTPHeaderFields countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v29);
  }

  [v50 setObject:v26 forKeyedSubscript:@"headerSizes"];
  v49 = +[AMSAutoBugCaptureService sharedService];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __100__AMSURLRequestEncoder__triggerAutoBugCaptureForOversizedHeaders_totalHeaderSize_threshold_maxSize___block_invoke;
  v61[3] = &unk_1E73B5C00;
  v61[4] = self;
  [v49 captureSnapshotWithSignature:v51 delay:0 events:v50 payload:0 actions:v61 completion:0.0];
}

void __100__AMSURLRequestEncoder__triggerAutoBugCaptureForOversizedHeaders_totalHeaderSize_threshold_maxSize___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogableError(v3);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to capture auto bug report for oversized headers. error = %{public}@", &v9, 0x16u);
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully captured auto bug report for oversized headers.", &v9, 0xCu);
    }
  }
}

- (AMSURLRequestEncoder)initWithBagContract:(id)contract
{
  if (contract)
  {
    contractCopy = contract;
    v5 = [[AMSContractBagShim alloc] initWithBagContract:contractCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(AMSURLRequestEncoder *)self initWithBag:v5];

  return v6;
}

- (AMSURLBagContract)bagContract
{
  v3 = [AMSDeprecatedBagContract alloc];
  v4 = [(AMSURLRequestEncoder *)self bag];
  v5 = [(AMSDeprecatedBagContract *)v3 initWithBag:v4];

  return v5;
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters error:(id *)error
{
  requestCopy = request;
  v9 = [(AMSURLRequestEncoder *)self requestByEncodingRequest:requestCopy parameters:parameters];
  v10 = [v9 resultWithError:error];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = requestCopy;
    v12 = [v10 URL];
    [v11 setURL:v12];

    hTTPMethod = [v10 HTTPMethod];
    [v11 setHTTPMethod:hTTPMethod];

    hTTPBody = [v10 HTTPBody];

    if (hTTPBody)
    {
      hTTPBody2 = [v10 HTTPBody];
      [v11 setHTTPBody:hTTPBody2];
    }

    allHTTPHeaderFields = [v10 allHTTPHeaderFields];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__AMSURLRequestEncoder_requestByEncodingRequest_parameters_error___block_invoke;
    v19[3] = &unk_1E73B7EE0;
    v20 = v11;
    v17 = v11;
    [allHTTPHeaderFields enumerateKeysAndObjectsUsingBlock:v19];
  }

  return v10;
}

- (id)requestWithMethod:(int64_t)method bagURL:(id)l parameters:(id)parameters error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v11 = [l valueWithError:error];
  if (v11)
  {
    v12 = [MEMORY[0x1E695AC18] requestWithURL:v11];
    v13 = [(AMSURLRequestEncoder *)self _methodStringFromMethod:method];
    [v12 setHTTPMethod:v13];

    v14 = [(AMSURLRequestEncoder *)self requestByEncodingRequest:v12 parameters:parametersCopy error:error];
  }

  else
  {
    v15 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v17 = v20;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Request encoding failed. bagURL returns a nil value.", &v19, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)requestWithMethod:(int64_t)method URL:(id)l parameters:(id)parameters error:(id *)error
{
  v10 = MEMORY[0x1E695AC18];
  parametersCopy = parameters;
  v12 = [v10 requestWithURL:l];
  v13 = [(AMSURLRequestEncoder *)self _methodStringFromMethod:method];
  [v12 setHTTPMethod:v13];

  v14 = [(AMSURLRequestEncoder *)self requestByEncodingRequest:v12 parameters:parametersCopy error:error];

  return v14;
}

- (id)requestWithMethod:(int64_t)method URLString:(id)string parameters:(id)parameters error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v11 = [MEMORY[0x1E695DFF8] URLWithString:string];
  if (v11)
  {
    v12 = [(AMSURLRequestEncoder *)self requestWithMethod:method URL:v11 parameters:parametersCopy error:error];
  }

  else
  {
    v13 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v15 = v18;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Request encoding failed. requestURL = nil.", &v17, 0xCu);
    }

    if (error)
    {
      AMSError(312, @"Invalid Request", @"Request URL is nil", 0);
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end