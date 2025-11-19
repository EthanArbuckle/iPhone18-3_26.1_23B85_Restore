@interface SLRequest
+ (SLRequest)requestForServiceType:(NSString *)serviceType requestMethod:(SLRequestMethod)requestMethod URL:(NSURL *)url parameters:(NSDictionary *)parameters;
- (BOOL)_shouldAppendTencentWeiboParametersToRequest;
- (BOOL)_shouldRetryAfterCount:(int)a3 delay:(float *)a4;
- (BOOL)shouldIncludeParameterString;
- (NSURLRequest)preparedURLRequest;
- (SLRequest)init;
- (SLRequest)initWithServiceType:(id)a3 URL:(id)a4 parameters:(id)a5 requestMethod:(int64_t)a6;
- (id)_HTTPMethodName;
- (id)_allParameters;
- (id)_commandName;
- (id)_parameterString;
- (id)_preparedURL;
- (id)_urlEncodedString:(id)a3;
- (id)completeMultiParts;
- (id)dictionaryRepresentationForJSONSerialization;
- (id)multiPartBodyData;
- (id)multiPartBoundary;
- (void)_addAuthenticationParameters:(id)a3;
- (void)addMultipartData:(NSData *)data withName:(NSString *)name type:(NSString *)type filename:(NSString *)filename;
- (void)performJSONRequestWithHandler:(id)a3 retryCount:(int)a4;
- (void)performRequestWithHandler:(SLRequestHandler)handler;
- (void)setAccount:(ACAccount *)account;
- (void)setMultiPartBoundary:(id)a3;
- (void)setParameterValue:(id)a3 forKey:(id)a4;
@end

@implementation SLRequest

- (SLRequest)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"SLRequestMultiPart must be obtained through!" userInfo:0];
  objc_exception_throw(v2);
}

- (SLRequest)initWithServiceType:(id)a3 URL:(id)a4 parameters:(id)a5 requestMethod:(int64_t)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [SLService serviceForServiceType:a3];
  if (v12)
  {
    v23.receiver = self;
    v23.super_class = SLRequest;
    v13 = [(SLRequest *)&v23 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_service, v12);
      v15 = [v10 copy];
      url = v14->_url;
      v14->_url = v15;

      if (v11)
      {
        v17 = [v11 mutableCopy];
      }

      else
      {
        v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
      }

      parameters = v14->_parameters;
      v14->_parameters = v17;

      v14->_requestMethod = a6;
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      multiParts = v14->_multiParts;
      v14->_multiParts = v20;
    }

    self = v14;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (SLRequest)requestForServiceType:(NSString *)serviceType requestMethod:(SLRequestMethod)requestMethod URL:(NSURL *)url parameters:(NSDictionary *)parameters
{
  v10 = parameters;
  v11 = url;
  v12 = serviceType;
  v13 = [[a1 alloc] initWithServiceType:v12 URL:v11 parameters:v10 requestMethod:requestMethod];

  return v13;
}

- (void)setParameterValue:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (!v7 || !v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Parameter key or value cannot be nil"];
  }

  [(NSMutableDictionary *)self->_parameters setObject:v7 forKey:v6];
}

- (id)_urlEncodedString:(id)a3
{
  v3 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x1E695E480], a3, 0, @":/?#[]@!$&‚Äö√Ñ√¥()*+,;='", 0x8000100u);

  return v3;
}

- (id)multiPartBoundary
{
  if (!self->_multiPartBoundary)
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    v6 = CFUUIDCreateString(v4, v5);
    CFRelease(v5);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"__mIm310v34411-%@__", v6];
    multiPartBoundary = self->_multiPartBoundary;
    self->_multiPartBoundary = v7;
  }

  _SLLog(v2, 6, @"Multipart boundary %@");
  v9 = self->_multiPartBoundary;

  return v9;
}

- (void)setMultiPartBoundary:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_multiPartBoundary, a3);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_multiParts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setMultiPartBoundary:{self->_multiPartBoundary, v11}];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addMultipartData:(NSData *)data withName:(NSString *)name type:(NSString *)type filename:(NSString *)filename
{
  v10 = filename;
  v11 = type;
  v12 = name;
  v13 = data;
  v14 = [(SLRequest *)self multiPartBoundary];
  v15 = [SLRequestMultiPart multiPartWithName:v12 payload:v13 type:v11 multiPartBoundary:v14];

  [v15 setFilename:v10];
  [(NSMutableArray *)self->_multiParts addObject:v15];
}

- (id)multiPartBodyData
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF88] data];
  v28 = self;
  v4 = [(SLRequest *)self _allParameters];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        v11 = [v10 dataUsingEncoding:4];
        v12 = [(SLRequest *)v28 multiPartBoundary];
        v13 = [SLRequestMultiPart multiPartWithName:v9 payload:v11 type:0 multiPartBoundary:v12];

        if (v13)
        {
          v14 = [v13 partData];
          [v3 appendData:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
  _SLLog(v27, 6, @"Body before binaries: %@");

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v28->_multiParts;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v37 count:16, v26];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v29 + 1) + 8 * j) partData];
        [v3 appendData:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v17);
  }

  v21 = MEMORY[0x1E696AEC0];
  v22 = [(SLRequest *)v28 multiPartBoundary];
  v23 = [v21 stringWithFormat:@"--%@--\r\n", v22];
  v24 = [v23 dataUsingEncoding:4];
  [v3 appendData:v24];

  return v3;
}

- (id)completeMultiParts
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v15 = self;
  v4 = [(SLRequest *)self _allParameters];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        v11 = [v10 dataUsingEncoding:4];
        v12 = [(SLRequest *)v15 multiPartBoundary];
        v13 = [SLRequestMultiPart multiPartWithName:v9 payload:v11 type:0 multiPartBoundary:v12];

        [v3 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [v3 addObjectsFromArray:v15->_multiParts];

  return v3;
}

- (void)setAccount:(ACAccount *)account
{
  v4 = account;
  v5 = v4;
  if (v4)
  {
    v6 = [(ACAccount *)v4 accountType];
    v7 = [v6 identifier];
    v8 = [(SLService *)self->_service accountTypeIdentifier];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid account type for this request" userInfo:0];
      objc_exception_throw(v11);
    }
  }

  v10 = self->_account;
  self->_account = v5;
}

- (id)_allParameters
{
  v3 = [(NSMutableDictionary *)self->_parameters mutableCopy];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  [(SLService *)self->_service addExtraParameters:v3 forRequest:self];
  [(SLRequest *)self _addAuthenticationParameters:v3];

  return v3;
}

- (BOOL)_shouldAppendTencentWeiboParametersToRequest
{
  v2 = [(SLRequest *)self account];
  v3 = [v2 accountType];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*MEMORY[0x1E6959900]];

  return v5;
}

- (void)_addAuthenticationParameters:(id)a3
{
  v37[7] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(SLService *)self->_service authenticationStyle]== 1)
  {
    v6 = [(SLRequest *)self account];

    if (v6)
    {
      v7 = [(SLRequest *)self account];
      v8 = [v7 credential];

      if (v8)
      {
        v9 = [v8 credentialType];
        v10 = [v9 isEqualToString:*MEMORY[0x1E6959958]];

        if (v10)
        {
          v11 = [v8 oauthToken];

          if (v11)
          {
            v12 = [v8 oauthToken];
            [v5 setObject:v12 forKey:@"access_token"];
          }
        }
      }
    }
  }

  if ([(SLRequest *)self _shouldAppendTencentWeiboParametersToRequest])
  {
    v13 = [(SLRequest *)self account];
    v14 = [v13 credential];
    v15 = [v14 oauthToken];
    if (v15)
    {
      v16 = v15;
      v17 = [(SLRequest *)self account];
      v18 = [v17 credential];
      v19 = [v18 oauthRefreshToken];

      if (v19)
      {
        v20 = [(SLRequest *)self account];
        v21 = [v20 credential];
        v22 = [v21 credentialItemForKey:*MEMORY[0x1E6959A10]];

        if (v22)
        {
          v36[0] = @"format";
          v36[1] = @"clientip";
          v37[0] = @"json";
          v37[1] = @"0.0.0.0";
          v36[2] = @"oauth_version";
          v36[3] = @"scope";
          v37[2] = @"2.a";
          v37[3] = @"all";
          v37[4] = v22;
          v36[4] = @"oauth_consumer_key";
          v36[5] = @"access_token";
          v23 = [(SLRequest *)self account];
          v24 = [v23 credential];
          v25 = [v24 oauthToken];
          v37[5] = v25;
          v36[6] = @"openid";
          v26 = [(SLRequest *)self account];
          v27 = [v26 credential];
          v28 = [v27 oauthRefreshToken];
          v37[6] = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:7];

          [v5 addEntriesFromDictionary:v29];
        }

        else
        {
          _SLLog(v3, 6, @"Missing credential's consumer key, forfeiting the addition of parameters");
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v30 = [(SLRequest *)self account];
    v31 = [v30 credential];
    v32 = [v31 oauthToken];
    v33 = [(SLRequest *)self account];
    v34 = [v33 credential];
    v35 = [v34 oauthRefreshToken];
    _SLLog(v3, 6, @"Missing oauthToken (%@) or oauthRefreshToken (%@)");
  }

LABEL_17:
}

- (id)_parameterString
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = [(SLRequest *)self _allParameters];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __29__SLRequest__parameterString__block_invoke;
  v37[3] = &unk_1E8175950;
  v23 = v5;
  v38 = v23;
  v39 = self;
  v6 = MEMORY[0x1C6917BF0](v37);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v24 = *v34;
    v25 = v7;
    do
    {
      v11 = 0;
      v26 = v9;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v13 = [v7 objectForKey:v12];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          (v6)[2](v6, v12, v13);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v13;
            v28 = v11;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:&v29 objects:v40 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v30;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v30 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v29 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v6[2](v6, v12, v19);
                  }

                  else
                  {
                    _SLLog(v2, 3, @"Invalid parameter type");
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v29 objects:v40 count:16];
              }

              while (v16);
            }

            v10 = v24;
            v7 = v25;
            v9 = v26;
            v13 = v27;
            v11 = v28;
          }

          else
          {
            _SLLog(v2, 3, @"Invalid parameter type");
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v9);
  }

  v20 = [v23 sortedArrayUsingSelector:sel_compare_];
  v21 = [v20 componentsJoinedByString:@"&"];

  return v21;
}

void __29__SLRequest__parameterString__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a3;
  v11 = [v7 _urlEncodedString:a2];
  v9 = [*(a1 + 40) _urlEncodedString:v8];

  v10 = [v5 stringWithFormat:@"%@=%@", v11, v9];
  [v6 addObject:v10];
}

- (BOOL)shouldIncludeParameterString
{
  if (self->_requestMethod == 1)
  {
    return 0;
  }

  if ([(NSMutableDictionary *)self->_parameters count])
  {
    return 1;
  }

  v4 = [(SLRequest *)self account];
  if (v4)
  {
    v5 = v4;
    v6 = [(SLService *)self->_service authenticationStyle];

    if (v6 == 1)
    {
      return 1;
    }
  }

  return 0;
}

- (id)_preparedURL
{
  if ([(SLRequest *)self shouldIncludeParameterString])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(NSURL *)self->_url absoluteString];
    v5 = [(SLRequest *)self _parameterString];
    v6 = [v3 stringWithFormat:@"%@?%@", v4, v5];

    v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  }

  else
  {
    v7 = self->_url;
  }

  return v7;
}

- (id)_HTTPMethodName
{
  requestMethod = self->_requestMethod;
  if (requestMethod > 3)
  {
    return 0;
  }

  else
  {
    return off_1E81759E8[requestMethod];
  }
}

- (NSURLRequest)preparedURLRequest
{
  v3 = [(SLRequest *)self _preparedURL];
  v4 = [MEMORY[0x1E696AD68] requestWithURL:v3];
  [v4 setNetworkServiceType:{-[SLRequest networkServiceType](self, "networkServiceType")}];
  v5 = [(SLRequest *)self _HTTPMethodName];
  [v4 setHTTPMethod:v5];

  if ((self->_requestMethod | 2) != 3)
  {
    goto LABEL_8;
  }

  if (self->_payload)
  {
    [v4 setHTTPBody:?];
    contentType = self->_contentType;
    if (contentType)
    {
      [v4 addValue:contentType forHTTPHeaderField:@"Content-Type"];
    }

    goto LABEL_8;
  }

  if (![(NSMutableArray *)self->_multiParts count])
  {
    v16 = [(SLRequest *)self _parameterString];
    v17 = [v16 dataUsingEncoding:4];
    [v4 setHTTPBody:v17];

LABEL_8:
    v13 = 0;
    v15 = 0;
    goto LABEL_9;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(SLRequest *)self multiPartBoundary];
  v9 = [v7 stringWithFormat:@"multipart/form-data boundary=%@", v8];;

  [v4 addValue:v9 forHTTPHeaderField:@"Content-Type"];
  v10 = [SLRequestBodyInputStream alloc];
  v11 = [(SLRequest *)self completeMultiParts];
  v12 = [(SLRequest *)self multiPartBoundary];
  v13 = [(SLRequestBodyInputStream *)v10 initWithMultiParts:v11 multiPartBoundary:v12];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[SLRequestBodyInputStream totalBytes](v13, "totalBytes")];
  [v4 addValue:v14 forHTTPHeaderField:@"Content-Length"];

  v15 = 1;
LABEL_9:
  v18 = v4;
  v19 = v18;
  if (![(SLService *)self->_service authenticationStyle])
  {
    v19 = v18;
    if ([(SLRequest *)self _requiresAuthorization])
    {
      if (self->_account)
      {
        v20 = [objc_alloc(MEMORY[0x1E6959A70]) initWithAccount:self->_account];
        [v20 setShouldIncludeAppIdInRequest:0];
        if (self->_callingPID < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = [MEMORY[0x1E696AD98] numberWithInt:?];
        }

        v19 = [v20 signedURLRequestWithURLRequest:v18 callingPID:v21 timestamp:0];
      }

      else
      {
        v19 = v18;
        if (!self->_OAuthCredential)
        {
          goto LABEL_19;
        }

        v20 = [objc_alloc(MEMORY[0x1E69B7B68]) initWithCredential:self->_OAuthCredential];
        v19 = [v20 signedURLRequestWithRequest:v18 applicationID:0 timestamp:0];
        v21 = v18;
      }
    }
  }

LABEL_19:
  if (v15)
  {
    v22 = [v19 mutableCopy];

    [v22 setHTTPBodyStream:v13];
    v19 = v22;
  }

  return v19;
}

- (id)dictionaryRepresentationForJSONSerialization
{
  v3 = objc_opt_new();
  v4 = [(SLRequest *)self _HTTPMethodName];
  [v3 setObject:v4 forKeyedSubscript:@"method"];

  v5 = [(SLRequest *)self _preparedURL];
  v6 = [v5 query];

  v7 = [v5 relativePath];
  if (v6)
  {
    v8 = [v5 query];
    v9 = [v7 stringByAppendingString:v8];
    [v3 setObject:v9 forKeyedSubscript:@"relative_url"];
  }

  else
  {
    [v3 setObject:v7 forKeyedSubscript:@"relative_url"];
  }

  if (self->_requestMethod == 1)
  {
    v10 = [(SLRequest *)self _parameterString];
    [v3 setObject:v10 forKeyedSubscript:@"body"];

    if ([(NSMutableArray *)self->_multiParts count])
    {
      v11 = objc_opt_new();
      multiParts = self->_multiParts;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __57__SLRequest_dictionaryRepresentationForJSONSerialization__block_invoke;
      v16[3] = &unk_1E8175978;
      v17 = v11;
      v13 = v11;
      [(NSMutableArray *)multiParts enumerateObjectsUsingBlock:v16];
      v14 = [v13 componentsJoinedByString:{@", "}];
      [v3 setObject:v14 forKeyedSubscript:@"attached_files"];
    }
  }

  return v3;
}

void __57__SLRequest_dictionaryRepresentationForJSONSerialization__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  [v2 addObject:v3];
}

- (void)performRequestWithHandler:(SLRequestHandler)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = handler;
  v6 = [(SLRequest *)self preparedURLRequest];
  v12 = [v6 URL];
  _SLLog(v3, 7, @"Prepared Request URL: %@");

  if (v6)
  {
    v7 = [v5 copy];
    v8 = dispatch_queue_create("SLRequest performRequest queue", 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__SLRequest_performRequestWithHandler___block_invoke;
    block[3] = &unk_1E81759A0;
    v14 = v6;
    v15 = v7;
    v9 = v7;
    dispatch_async(v8, block);

    v10 = v14;
  }

  else
  {
    _SLLog(v3, 3, @"Failed to prepare request");
    v11 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"Could not prepare the URL request.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:{1, v12}];
    v10 = [v11 errorWithDomain:@"SLErrorDomain" code:0 userInfo:v9];
    (*(v5 + 2))(v5, 0, 0, v10);
  }
}

void __39__SLRequest_performRequestWithHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v12 = 0;
  v13 = 0;
  v4 = [MEMORY[0x1E696AF28] sendSynchronousRequest:v3 returningResponse:&v13 error:&v12];
  v5 = v13;
  v6 = v12;
  v7 = [v5 statusCode];
  if (v6)
  {
    v11 = [v6 localizedDescription];
    _SLLog(v1, 3, @"Request error: %@");

    if (!v5)
    {
      v8 = [v6 userInfo];
      v9 = [v8 objectForKey:*MEMORY[0x1E696AA08]];

      if (v9)
      {
        v10 = [v9 userInfo];
        v5 = [v10 objectForKey:*MEMORY[0x1E695AD68]];

        if (v5)
        {
          v5 = [MEMORY[0x1E696AC68] _responseWithCFURLResponse:v5];
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else if (v7 != 200)
  {
    _SLLog(v1, 3, @"Request status was %d");
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_shouldRetryAfterCount:(int)a3 delay:(float *)a4
{
  if (a4)
  {
    v4 = a3 * 5.0;
    *a4 = v4;
  }

  return a3 < 4;
}

- (id)_commandName
{
  v2 = [(NSURL *)self->_url path];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (void)performJSONRequestWithHandler:(id)a3 retryCount:(int)a4
{
  v6 = [a3 copy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__SLRequest_performJSONRequestWithHandler_retryCount___block_invoke;
  v9[3] = &unk_1E81759C8;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v7 = v6;
  v8 = MEMORY[0x1C6917BF0](v9);
  [(SLRequest *)self performRequestWithHandler:v8];
}

void __54__SLRequest_performJSONRequestWithHandler_retryCount___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v9 statusCode];
  if (!v9 && v10)
  {
    v12 = *(*(a1 + 40) + 16);
LABEL_10:
    v12();
    goto LABEL_11;
  }

  if (v11 > 499)
  {
    v18 = 0.0;
    if (v11 != 503 || ![*(a1 + 32) _shouldRetryAfterCount:*(a1 + 48) delay:&v18])
    {
      v12 = *(*(a1 + 40) + 16);
      goto LABEL_10;
    }

    v15 = [*(a1 + 32) _commandName];
    v17 = v18;
    v16 = (*(a1 + 48) + 1);
    _SLLog(v4, 6, @"(503) %@ retrying:%d of %d delay: %f");

    sleep(v18);
    [*(a1 + 32) performJSONRequestWithHandler:*(a1 + 40) retryCount:{(*(a1 + 48) + 1), v15, v16, 4, *&v17}];
  }

  else
  {
    v19 = 0;
    v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v19];
    v14 = v19;
    (*(*(a1 + 40) + 16))();
  }

LABEL_11:
}

@end