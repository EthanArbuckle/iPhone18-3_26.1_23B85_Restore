@interface AMSURLParser
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSURLParser)initWithBag:(id)a3;
- (AMSURLParser)initWithBagContract:(id)a3;
- (BOOL)_matchURL:(id)a3 toPatterns:(id)a4;
- (id)_commerceUIArrayForKey:(id)a3;
- (id)_correctURL:(id)a3;
- (id)_defaultWebAllowedForURL:(id)a3;
- (id)_dynamicUIAllowedForURL:(id)a3;
- (id)_legacyWebAllowedForURL:(id)a3;
- (id)bagContract;
- (id)isCommerceUIURL:(id)a3;
- (id)typeForCommerceUIURL:(id)a3;
- (id)typeForURL:(id)a3;
@end

@implementation AMSURLParser

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (AMSURLParser)initWithBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSURLParser;
  v6 = [(AMSURLParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
  }

  return v7;
}

- (id)isCommerceUIURL:(id)a3
{
  v4 = [(AMSURLParser *)self _correctURL:a3];
  v5 = [v4 absoluteString];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(AMSURLParser *)self _commerceUIArrayForKey:@"url-patterns"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __32__AMSURLParser_isCommerceUIURL___block_invoke;
    v14[3] = &unk_1E73B34B8;
    v14[4] = self;
    [v7 addErrorBlock:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __32__AMSURLParser_isCommerceUIURL___block_invoke_30;
    v12[3] = &unk_1E73B8238;
    v12[4] = self;
    v13 = v4;
    v8 = [v7 thenWithBlock:v12];
    v9 = [AMSBinaryPromise promiseWithPromise:v8];
  }

  else
  {
    v10 = AMSError(2, @"No URL to match", @"There was no URL passed in for matching", 0);
    v9 = [AMSBinaryPromise promiseWithError:v10];
  }

  return v9;
}

void __32__AMSURLParser_isCommerceUIURL___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543618;
    v6 = objc_opt_class();
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: There was no bag value found for commerce UI URL patterns. [%{public}@]", &v5, 0x16u);
  }
}

id __32__AMSURLParser_isCommerceUIURL___block_invoke_30(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _matchURL:*(a1 + 40) toPatterns:a2])
  {
    v2 = +[AMSBinaryPromise promiseWithSuccess];
    v3 = [v2 promiseAdapter];
  }

  else
  {
    v2 = AMSError(7, @"Commerce UI URL not found", @"The parsed URL did not match a commerce UI URL pattern", 0);
    v4 = [AMSBinaryPromise promiseWithError:v2];
    v3 = [v4 promiseAdapter];
  }

  return v3;
}

- (id)typeForCommerceUIURL:(id)a3
{
  v4 = [(AMSURLParser *)self _correctURL:a3];
  v5 = [v4 absoluteString];
  v6 = [v5 length];

  if (v6)
  {
    v7 = objc_alloc_init(AMSMutablePromise);
    v8 = [(AMSURLParser *)self typeForURL:v4];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__AMSURLParser_typeForCommerceUIURL___block_invoke;
    v12[3] = &unk_1E73B3A88;
    v9 = v7;
    v13 = v9;
    [v8 addFinishBlock:v12];
  }

  else
  {
    v10 = AMSError(2, @"No URL to match", @"There was no URL passed in for matching", 0);
    v9 = [AMSPromise promiseWithError:v10];
  }

  return v9;
}

void __37__AMSURLParser_typeForCommerceUIURL___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
    return;
  }

  v5 = [a2 integerValue];
  v6 = *(a1 + 32);
  if (v5 == 1)
  {
    v7 = &unk_1F0779AF0;
    goto LABEL_9;
  }

  if (!v5)
  {
    v7 = &unk_1F0779AD8;
LABEL_9:

    [v6 finishWithResult:v7];
    return;
  }

  v8 = AMSError(7, @"Commerce UI URL Type Not Found", @"The parsed URL did not match a commerce UI URL pattern", 0);
  [v6 finishWithError:v8];
}

- (id)typeForURL:(id)a3
{
  v4 = a3;
  v5 = [(AMSURLParser *)self bag];

  if (v5)
  {
    if (v4)
    {
      v6 = objc_alloc_init(AMSMutablePromise);
      v7 = [(AMSURLParser *)self bag];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __27__AMSURLParser_typeForURL___block_invoke;
      v13[3] = &unk_1E73BCEF0;
      v8 = v6;
      v14 = v8;
      [AMSURLParserInternal typeFor:v4 bag:v7 completionHandler:v13];

      goto LABEL_7;
    }

    v9 = @"Missing url";
    v10 = @"No url was passed in";
  }

  else
  {
    v9 = @"Missing bag";
    v10 = @"No bag was passed in";
  }

  v11 = AMSError(2, v9, v10, 0);
  v8 = [AMSPromise promiseWithError:v11];

LABEL_7:

  return v8;
}

void __27__AMSURLParser_typeForURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v3 finishWithResult:v5];
  }
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_156 != -1)
  {
    dispatch_once(&_MergedGlobals_156, &__block_literal_global_144);
  }

  v3 = qword_1ED6E31B8;

  return v3;
}

void __29__AMSURLParser_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E31B8;
  qword_1ED6E31B8 = @"AMSURLParser";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E31C0 != -1)
  {
    dispatch_once(&qword_1ED6E31C0, &__block_literal_global_67);
  }

  v3 = qword_1ED6E31C8;

  return v3;
}

void __36__AMSURLParser_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E31C8;
  qword_1ED6E31C8 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

- (AMSURLParser)initWithBagContract:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[AMSContractBagShim alloc] initWithBagContract:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(AMSURLParser *)self initWithBag:v5];

  return v6;
}

- (id)bagContract
{
  v3 = [AMSDeprecatedBagContract alloc];
  v4 = [(AMSURLParser *)self bag];
  v5 = [(AMSDeprecatedBagContract *)v3 initWithBag:v4];

  return v5;
}

- (id)_commerceUIArrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSURLParser *)self bag];
  v6 = [v5 dictionaryForKey:@"commerce-ui-urls"];

  v7 = [v6 valuePromise];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__AMSURLParser__commerceUIArrayForKey___block_invoke;
  v11[3] = &unk_1E73B5C28;
  v12 = v4;
  v8 = v4;
  v9 = [v7 thenWithBlock:v11];

  return v9;
}

id __39__AMSURLParser__commerceUIArrayForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (v4)
    {
      v10 = [AMSPromise promiseWithResult:v4];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = AMSErrorWithFormat(7, @"CommerceUI Value Not Found", @"Bag value not found for key: %@", v5, v6, v7, v8, v9, *(a1 + 32));
  v10 = [AMSPromise promiseWithError:v11];

  v4 = 0;
LABEL_6:

  return v10;
}

- (id)_defaultWebAllowedForURL:(id)a3
{
  v4 = a3;
  v5 = [(AMSURLParser *)self _commerceUIArrayForKey:@"v2-url-patterns"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__AMSURLParser__defaultWebAllowedForURL___block_invoke;
  v9[3] = &unk_1E73B8238;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 thenWithBlock:v9];

  return v7;
}

id __41__AMSURLParser__defaultWebAllowedForURL___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _matchURL:*(a1 + 40) toPatterns:a2])
  {
    v2 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v3 = AMSError(7, @"Commerce UI URL type not found", @"The parsed URL did not match a commerce UI default URL pattern", 0);
    v2 = [AMSPromise promiseWithError:v3];
  }

  return v2;
}

- (id)_dynamicUIAllowedForURL:(id)a3
{
  v4 = a3;
  v5 = [(AMSURLParser *)self _commerceUIArrayForKey:@"dynamic-url-patterns"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AMSURLParser__dynamicUIAllowedForURL___block_invoke;
  v9[3] = &unk_1E73B8238;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 thenWithBlock:v9];

  return v7;
}

id __40__AMSURLParser__dynamicUIAllowedForURL___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _matchURL:*(a1 + 40) toPatterns:a2])
  {
    v2 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v3 = AMSError(7, @"Commerce UI URL type not found", @"The parsed URL did not match a commerce UI dynamic URL pattern", 0);
    v2 = [AMSPromise promiseWithError:v3];
  }

  return v2;
}

- (id)_legacyWebAllowedForURL:(id)a3
{
  v4 = a3;
  v5 = [(AMSURLParser *)self _commerceUIArrayForKey:@"url-patterns"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AMSURLParser__legacyWebAllowedForURL___block_invoke;
  v9[3] = &unk_1E73B8238;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 thenWithBlock:v9];

  return v7;
}

id __40__AMSURLParser__legacyWebAllowedForURL___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _matchURL:*(a1 + 40) toPatterns:a2])
  {
    v2 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v3 = AMSError(7, @"Commerce UI URL type not found", @"The parsed URL did not match a commerce UI legacy URL pattern", 0);
    v2 = [AMSPromise promiseWithError:v3];
  }

  return v2;
}

- (BOOL)_matchURL:(id)a3 toPatterns:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v26;
    *&v8 = 138543618;
    v23 = v8;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v24 = 0;
        v13 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v12 options:1 error:{&v24, v23}];
        v14 = v24;
        if (v14)
        {
          v15 = +[AMSLogConfig sharedConfig];
          if (!v15)
          {
            v15 = +[AMSLogConfig sharedConfig];
          }

          v16 = [v15 OSLogObject];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = objc_opt_class();
            *buf = v23;
            v30 = v17;
            v31 = 2114;
            v32 = v14;
            _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Invalid commerceUI pattern. %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v18 = [v5 absoluteString];
          v19 = [v5 absoluteString];
          v20 = [v13 numberOfMatchesInString:v18 options:2 range:{0, objc_msgSend(v19, "length")}];

          if (v20)
          {

            v21 = 1;
            goto LABEL_17;
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (id)_correctURL:(id)a3
{
  v3 = a3;
  v4 = [v3 ams_parameters];
  v5 = [v4 objectForKeyedSubscript:@"action"];
  v6 = [v4 objectForKeyedSubscript:@"url"];
  if (![v6 length] || !objc_msgSend(v5, "isEqualToString:", @"account") || (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v6), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = v3;
  }

  v8 = [v7 scheme];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 scheme];
    v11 = [v10 hasSuffix:@"http"];

    if ((v11 & 1) == 0)
    {
      v12 = [v7 ams_URLByReplacingSchemeWithScheme:@"https"];

      v7 = v12;
    }
  }

  return v7;
}

@end