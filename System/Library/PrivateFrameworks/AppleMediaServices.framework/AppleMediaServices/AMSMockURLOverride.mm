@interface AMSMockURLOverride
+ (AMSMockURLOverride)overrideWithHost:(id)host usingResponse:(id)response;
+ (AMSMockURLOverride)overrideWithPathComponent:(id)component usingResponse:(id)response;
+ (AMSMockURLOverride)overrideWithURLRegex:(id)regex usingResponse:(id)response;
- (AMSMockURLOverride)init;
- (BOOL)shouldOverrideURLRequest:(id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_withURLMatchingHost:(id)host containingPath:(id)path queryItems:(id)items;
- (void)withHTTPBodyValidation:(id)validation encoding:(int64_t)encoding;
- (void)withHTTPHeaderValidation:(id)validation;
- (void)withURLRegexValidation:(id)validation;
@end

@implementation AMSMockURLOverride

- (AMSMockURLOverride)init
{
  v8.receiver = self;
  v8.super_class = AMSMockURLOverride;
  v2 = [(AMSMockURLOverride *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(AMSObservable);
    executedObservable = v2->_executedObservable;
    v2->_executedObservable = v3;

    v5 = objc_opt_new();
    comparators = v2->_comparators;
    v2->_comparators = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AMSMockURLOverride);
  response = [(AMSMockURLOverride *)self response];
  [(AMSMockURLOverride *)v4 setResponse:response];

  return v4;
}

+ (AMSMockURLOverride)overrideWithHost:(id)host usingResponse:(id)response
{
  responseCopy = response;
  hostCopy = host;
  v7 = objc_alloc_init(AMSMockURLOverride);
  [(AMSMockURLOverride *)v7 withURLMatchingHost:hostCopy];

  [(AMSMockURLOverride *)v7 setResponse:responseCopy];

  return v7;
}

+ (AMSMockURLOverride)overrideWithPathComponent:(id)component usingResponse:(id)response
{
  responseCopy = response;
  componentCopy = component;
  v7 = objc_alloc_init(AMSMockURLOverride);
  [(AMSMockURLOverride *)v7 withURLContainingPath:componentCopy];

  [(AMSMockURLOverride *)v7 setResponse:responseCopy];

  return v7;
}

+ (AMSMockURLOverride)overrideWithURLRegex:(id)regex usingResponse:(id)response
{
  responseCopy = response;
  regexCopy = regex;
  v7 = objc_alloc_init(AMSMockURLOverride);
  [(AMSMockURLOverride *)v7 withURLRegexValidation:regexCopy];

  [(AMSMockURLOverride *)v7 setResponse:responseCopy];

  return v7;
}

- (void)withURLRegexValidation:(id)validation
{
  validationCopy = validation;
  v5 = [AMSMockURLRequestComparator alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__AMSMockURLOverride_withURLRegexValidation___block_invoke;
  v9[3] = &unk_1E73BA210;
  v10 = validationCopy;
  v6 = validationCopy;
  v7 = [(AMSMockURLRequestComparator *)v5 initWithCriteriaBlock:v9];
  comparators = [(AMSMockURLOverride *)self comparators];
  [comparators addObject:v7];
}

BOOL __45__AMSMockURLOverride_withURLRegexValidation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 URL];
  v4 = [v3 absoluteString];
  v5 = [v4 rangeOfString:*(a1 + 32) options:1024];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)withHTTPHeaderValidation:(id)validation
{
  validationCopy = validation;
  v5 = [AMSMockURLRequestComparator alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__AMSMockURLOverride_withHTTPHeaderValidation___block_invoke;
  v9[3] = &unk_1E73BA238;
  v10 = validationCopy;
  v6 = validationCopy;
  v7 = [(AMSMockURLRequestComparator *)v5 initWithCriteriaBlock:v9];
  comparators = [(AMSMockURLOverride *)self comparators];
  [comparators addObject:v7];
}

uint64_t __47__AMSMockURLOverride_withHTTPHeaderValidation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allHTTPHeaderFields];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)withHTTPBodyValidation:(id)validation encoding:(int64_t)encoding
{
  validationCopy = validation;
  v7 = [AMSMockURLRequestComparator alloc];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __54__AMSMockURLOverride_withHTTPBodyValidation_encoding___block_invoke;
  v14 = &unk_1E73BA260;
  v15 = validationCopy;
  encodingCopy = encoding;
  v8 = validationCopy;
  v9 = [(AMSMockURLRequestComparator *)v7 initWithCriteriaBlock:&v11];
  v10 = [(AMSMockURLOverride *)self comparators:v11];
  [v10 addObject:v9];
}

uint64_t __54__AMSMockURLOverride_withHTTPBodyValidation_encoding___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 body];
  if (v3)
  {
    v4 = [AMSData objectWithData:v3 encoding:*(a1 + 40) error:0];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = (*(*(a1 + 32) + 16))();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldOverrideURLRequest:(id)request
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  comparators = [(AMSMockURLOverride *)self comparators];
  v6 = [comparators count] != 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  comparators2 = [(AMSMockURLOverride *)self comparators];
  v8 = [comparators2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(comparators2);
        }

        v6 &= [*(*(&v13 + 1) + 8 * i) shouldOverrideURLRequest:requestCopy];
      }

      v9 = [comparators2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)_withURLMatchingHost:(id)host containingPath:(id)path queryItems:(id)items
{
  hostCopy = host;
  pathCopy = path;
  itemsCopy = items;
  v11 = [AMSMockURLRequestComparator alloc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__AMSMockURLOverride__withURLMatchingHost_containingPath_queryItems___block_invoke;
  v17[3] = &unk_1E73BA2D0;
  v18 = hostCopy;
  v19 = pathCopy;
  v20 = itemsCopy;
  v12 = itemsCopy;
  v13 = pathCopy;
  v14 = hostCopy;
  v15 = [(AMSMockURLRequestComparator *)v11 initWithCriteriaBlock:v17];
  comparators = [(AMSMockURLOverride *)self comparators];
  [comparators addObject:v15];
}

uint64_t __69__AMSMockURLOverride__withURLMatchingHost_containingPath_queryItems___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[4])
  {
    v5 = [v3 URL];
    v6 = [v5 host];
    v7 = [v6 isEqualToString:a1[4]];
  }

  else
  {
    v7 = 1;
  }

  if (a1[5])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [v4 URL];
    v10 = [v9 path];
    v7 = [v10 containsString:a1[5]];
  }

  if (a1[6] && v7)
  {
    v11 = objc_alloc(MEMORY[0x1E696AF20]);
    v12 = [v4 URL];
    v13 = [v12 absoluteString];
    v14 = [v11 initWithString:v13];
    v15 = [v14 queryItems];

    v16 = [v15 ams_dictionaryUsingTransform:&__block_literal_global_102];
    v17 = v16;
    v18 = MEMORY[0x1E695E0F8];
    if (v16)
    {
      v18 = v16;
    }

    v19 = v18;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v20 = a1[6];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __69__AMSMockURLOverride__withURLMatchingHost_containingPath_queryItems___block_invoke_3;
    v23[3] = &unk_1E73BA2A8;
    v21 = v19;
    v24 = v21;
    v25 = &v26;
    [v20 enumerateKeysAndObjectsUsingBlock:v23];
    v7 = *(v27 + 24);

    _Block_object_dispose(&v26, 8);
  }

  return v7;
}

void __69__AMSMockURLOverride__withURLMatchingHost_containingPath_queryItems___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v8 = [v7 value];

  if (!v8 || ([v9 isEqualToString:v8] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

@end