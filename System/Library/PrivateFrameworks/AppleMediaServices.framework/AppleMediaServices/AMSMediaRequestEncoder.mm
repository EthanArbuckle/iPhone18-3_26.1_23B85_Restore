@interface AMSMediaRequestEncoder
+ (id)createBagForSubProfile;
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSMediaRequestEncoder)initWithTokenService:(id)service bag:(id)bag;
- (AMSProcessInfo)clientInfo;
- (AMSResponseDecoding)responseDecoder;
- (BOOL)URLKnownToBeTrusted;
- (BOOL)alwaysIncludeAuthKitHeaders;
- (BOOL)alwaysIncludeMMeClientInfoAndDeviceHeaders;
- (BOOL)disableResponseDecoding;
- (BOOL)excludeIdentifierHeadersForAccount;
- (NSString)gsTokenIdentifier;
- (NSString)logKey;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
- (id)requestWithComponents:(id)components;
- (id)requestWithURL:(id)l;
- (int64_t)requestEncoding;
- (void)setAccount:(id)account;
- (void)setAlwaysIncludeAuthKitHeaders:(BOOL)headers;
- (void)setAlwaysIncludeMMeClientInfoAndDeviceHeaders:(BOOL)headers;
- (void)setClientInfo:(id)info;
- (void)setDisableResponseDecoding:(BOOL)decoding;
- (void)setExcludeIdentifierHeadersForAccount:(BOOL)account;
- (void)setGsTokenIdentifier:(id)identifier;
- (void)setLogKey:(id)key;
- (void)setRequestEncoding:(int64_t)encoding;
- (void)setResponseDecoder:(id)decoder;
- (void)setURLKnownToBeTrusted:(BOOL)trusted;
@end

@implementation AMSMediaRequestEncoder

- (AMSBagProtocol)bag
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  v3 = [requestEncoder bag];

  return v3;
}

- (AMSMediaRequestEncoder)initWithTokenService:(id)service bag:(id)bag
{
  serviceCopy = service;
  bagCopy = bag;
  v14.receiver = self;
  v14.super_class = AMSMediaRequestEncoder;
  v9 = [(AMSMediaRequestEncoder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tokenService, service);
    v11 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
    requestEncoder = v10->_requestEncoder;
    v10->_requestEncoder = v11;
  }

  return v10;
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

- (ACAccount)account
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  account = [requestEncoder account];

  return account;
}

- (AMSProcessInfo)clientInfo
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  clientInfo = [requestEncoder clientInfo];

  return clientInfo;
}

- (BOOL)disableResponseDecoding
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  disableResponseDecoding = [requestEncoder disableResponseDecoding];

  return disableResponseDecoding;
}

- (BOOL)excludeIdentifierHeadersForAccount
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  excludeIdentifierHeadersForAccount = [requestEncoder excludeIdentifierHeadersForAccount];

  return excludeIdentifierHeadersForAccount;
}

- (BOOL)alwaysIncludeAuthKitHeaders
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  alwaysIncludeAuthKitHeaders = [requestEncoder alwaysIncludeAuthKitHeaders];

  return alwaysIncludeAuthKitHeaders;
}

- (BOOL)alwaysIncludeMMeClientInfoAndDeviceHeaders
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  alwaysIncludeMMeClientInfoAndDeviceHeaders = [requestEncoder alwaysIncludeMMeClientInfoAndDeviceHeaders];

  return alwaysIncludeMMeClientInfoAndDeviceHeaders;
}

- (NSString)gsTokenIdentifier
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  gsTokenIdentifier = [requestEncoder gsTokenIdentifier];

  return gsTokenIdentifier;
}

- (NSString)logKey
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  logUUID = [requestEncoder logUUID];

  return logUUID;
}

- (int64_t)requestEncoding
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  requestEncoding = [requestEncoder requestEncoding];

  return requestEncoding;
}

- (AMSResponseDecoding)responseDecoder
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  responseDecoder = [requestEncoder responseDecoder];

  return responseDecoder;
}

- (BOOL)URLKnownToBeTrusted
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  urlKnownToBeTrusted = [requestEncoder urlKnownToBeTrusted];

  return urlKnownToBeTrusted;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setAccount:accountCopy];
}

- (void)setAlwaysIncludeAuthKitHeaders:(BOOL)headers
{
  headersCopy = headers;
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setAlwaysIncludeAuthKitHeaders:headersCopy];
}

- (void)setAlwaysIncludeMMeClientInfoAndDeviceHeaders:(BOOL)headers
{
  headersCopy = headers;
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setAlwaysIncludeMMeClientInfoAndDeviceHeaders:headersCopy];
}

- (void)setClientInfo:(id)info
{
  infoCopy = info;
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setClientInfo:infoCopy];
}

- (void)setDisableResponseDecoding:(BOOL)decoding
{
  decodingCopy = decoding;
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setDisableResponseDecoding:decodingCopy];
}

- (void)setExcludeIdentifierHeadersForAccount:(BOOL)account
{
  accountCopy = account;
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setExcludeIdentifierHeadersForAccount:accountCopy];
}

- (void)setGsTokenIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setGsTokenIdentifier:identifierCopy];
}

- (void)setLogKey:(id)key
{
  keyCopy = key;
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setLogUUID:keyCopy];
}

- (void)setRequestEncoding:(int64_t)encoding
{
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setRequestEncoding:encoding];
}

- (void)setResponseDecoder:(id)decoder
{
  decoderCopy = decoder;
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setResponseDecoder:decoderCopy];
}

- (void)setURLKnownToBeTrusted:(BOOL)trusted
{
  trustedCopy = trusted;
  requestEncoder = [(AMSMediaRequestEncoder *)self requestEncoder];
  [requestEncoder setUrlKnownToBeTrusted:trustedCopy];
}

- (id)requestWithComponents:(id)components
{
  v4 = [components URL];
  v5 = [(AMSMediaRequestEncoder *)self requestWithURL:v4];

  return v5;
}

- (id)requestWithURL:(id)l
{
  v4 = [MEMORY[0x1E695AC68] requestWithURL:l];
  v5 = [(AMSMediaRequestEncoder *)self requestByEncodingRequest:v4 parameters:0];

  return v5;
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  requestCopy = request;
  parametersCopy = parameters;
  v8 = objc_alloc_init(AMSMutablePromise);
  tokenService = [(AMSMediaRequestEncoder *)self tokenService];
  fetchMediaToken = [tokenService fetchMediaToken];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__AMSMediaRequestEncoder_requestByEncodingRequest_parameters___block_invoke;
  v17[3] = &unk_1E73B8E40;
  v17[4] = self;
  v18 = requestCopy;
  v19 = parametersCopy;
  v11 = v8;
  v20 = v11;
  v12 = parametersCopy;
  v13 = requestCopy;
  [fetchMediaToken addFinishBlock:v17];

  v14 = v20;
  v15 = v11;

  return v11;
}

void __62__AMSMediaRequestEncoder_requestByEncodingRequest_parameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1 + 32) requestEncoder];
  v11 = [v10 requestByEncodingRequest:*(a1 + 40) parameters:*(a1 + 48)];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__AMSMediaRequestEncoder_requestByEncodingRequest_parameters___block_invoke_2;
  v20[3] = &unk_1E73B34B8;
  v21 = *(a1 + 56);
  [v11 addErrorBlock:v20];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__AMSMediaRequestEncoder_requestByEncodingRequest_parameters___block_invoke_3;
  v15[3] = &unk_1E73B8E18;
  v12 = *(a1 + 32);
  v16 = v9;
  v17 = v12;
  v18 = v6;
  v19 = *(a1 + 56);
  v13 = v6;
  v14 = v9;
  [v11 addSuccessBlock:v15];
}

void __62__AMSMediaRequestEncoder_requestByEncodingRequest_parameters___block_invoke_3(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 tokenString];
    v6 = [@"Bearer " stringByAppendingString:v5];

    [v3 setValue:v6 forHTTPHeaderField:0x1F072F1B8];
  }

  v7 = [MEMORY[0x1E696AE30] processInfo];
  v8 = [v7 processName];
  v9 = [v8 isEqualToString:@"mapspushd"];

  if (v9)
  {
    v10 = +[AMSLogConfig sharedMediaConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = [v3 properties];
      v15 = [v14 logUUID];
      *buf = 138543618;
      v64 = v12;
      v65 = 2114;
      v66 = v15;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Stripping cookies for mapspushd request", buf, 0x16u);
    }

    [v3 setValue:0 forHTTPHeaderField:@"Cookie"];
  }

  v16 = *(a1 + 48);
  if (!v16)
  {
LABEL_17:
    v26 = *(a1 + 32);
    if (v26)
    {
      v27 = [v26 isValid];
      v28 = +[AMSLogConfig sharedMediaConfig];
      v29 = v28;
      if (v27)
      {
        if (!v28)
        {
          v29 = +[AMSLogConfig sharedConfig];
        }

        v30 = [v29 OSLogObject];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_opt_class();
          v32 = v31;
          v33 = [v3 properties];
          v34 = [v33 logUUID];
          *buf = 138543618;
          v64 = v31;
          v65 = 2114;
          v66 = v34;
          _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] We received a valid media token.", buf, 0x16u);
        }

        v35 = [v3 properties];
        v23 = v35;
        v36 = 1;
        goto LABEL_34;
      }

      if (!v28)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      v37 = [v29 OSLogObject];
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
LABEL_33:

        v35 = [v3 properties];
        v23 = v35;
        v36 = 0;
LABEL_34:
        [v35 setMaxRetryCount:v36];
        goto LABEL_35;
      }

      v46 = objc_opt_class();
      v39 = v46;
      v40 = [v3 properties];
      v41 = [v40 logUUID];
      *buf = 138543618;
      v64 = v46;
      v65 = 2114;
      v66 = v41;
      v43 = "%{public}@: [%{public}@] We received an invalid media token. Will continue regardless.";
      v44 = v37;
      v45 = 22;
LABEL_32:
      _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_ERROR, v43, buf, v45);

      goto LABEL_33;
    }

LABEL_24:
    v29 = +[AMSLogConfig sharedMediaConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    v37 = [v29 OSLogObject];
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v38 = objc_opt_class();
    v39 = v38;
    v40 = [v3 properties];
    v41 = [v40 logUUID];
    v42 = *(a1 + 48);
    *buf = 138543874;
    v64 = v38;
    v65 = 2114;
    v66 = v41;
    v67 = 2114;
    v68 = v42;
    v43 = "%{public}@: [%{public}@] We did not receive a media token. We will continue regardless. %{public}@";
    v44 = v37;
    v45 = 32;
    goto LABEL_32;
  }

  if ([v16 code] != 406)
  {
    if (*(a1 + 48))
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v17 = +[AMSLogConfig sharedMediaConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = objc_opt_class();
    v20 = v19;
    v21 = [v3 properties];
    v22 = [v21 logUUID];
    *buf = 138543618;
    v64 = v19;
    v65 = 2114;
    v66 = v22;
    _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] We did not receive a private access token challenge. We will continue regardless.", buf, 0x16u);
  }

  v23 = [v3 properties];
  v24 = [v23 maxRetryCount];
  v25 = [v3 properties];
  [v25 setMaxRetryCount:v24 + 1];

LABEL_35:
  v47 = [v3 properties];
  v48 = [v47 userInfo];
  v61 = @"isMediaRequest";
  v62 = MEMORY[0x1E695E118];
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  v50 = [v48 ams_dictionaryByAddingEntriesFromDictionary:v49];
  v51 = [v3 properties];
  [v51 setUserInfo:v50];

  v52 = [*(a1 + 40) tokenService];
  if ([v52 conformsToProtocol:&unk_1F07A3F50])
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v54 = _os_feature_enabled_impl();
  if (v53 && v54)
  {
    v55 = [*(a1 + 40) bag];
    v56 = [v55 arrayForKey:@"anonymous-rate-limiting-enabled-client-ids"];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __62__AMSMediaRequestEncoder_requestByEncodingRequest_parameters___block_invoke_78;
    v57[3] = &unk_1E73B8DF0;
    v58 = v53;
    v59 = v3;
    v60 = *(a1 + 56);
    [v56 valueWithCompletion:v57];
  }

  else
  {
    [*(a1 + 56) finishWithResult:v3];
  }
}

void __62__AMSMediaRequestEncoder_requestByEncodingRequest_parameters___block_invoke_78(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  if (v11)
  {
    v7 = [*(a1 + 32) clientIdentifier];
    v8 = [v11 containsObject:v7];

    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) clientIdentifier];
      [v9 addValue:v10 forHTTPHeaderField:@"X-Apple-Client-Id"];
    }
  }

  [*(a1 + 48) finishWithResult:*(a1 + 40)];
}

@end