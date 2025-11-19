@interface AMSMediaTokenServicePATFetcher
+ (id)challengeDictFor:(id)a3;
+ (id)fetchToken:(id)a3 dispatchQueue:(id)a4;
+ (id)fetchTokenWithChallenge:(id)a3 dispatchQueue:(id)a4;
+ (id)fetcherWithChallenge:(id)a3 tokenKey:(id)a4;
+ (id)tokenChallengeWith:(id)a3 redemptionNonce:(id)a4 originName:(id)a5;
@end

@implementation AMSMediaTokenServicePATFetcher

+ (id)challengeDictFor:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  v5 = [v4 rangeOfString:@"PrivateToken " options:1];
  v7 = v4;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    v7 = v4;
    if (v6 + v5 + 1 < [v4 length])
    {
      v7 = [v4 substringFromIndex:v8];
    }
  }

  v30 = v7;
  v31 = v4;
  v9 = [v7 componentsSeparatedByString:{@", "}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    v13 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [*(v13 + 2824) whitespaceAndNewlineCharacterSet];
        v17 = [v15 stringByTrimmingCharactersInSet:v16];

        v18 = [v17 rangeOfString:@"="];
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v18;
          v20 = v18 + 1;
          v21 = [v17 length];
          if (v19 && v20 < v21)
          {
            v23 = [v17 substringToIndex:v19];
            [v23 lowercaseString];
            v24 = v13;
            v26 = v25 = v9;

            v27 = [v17 substringFromIndex:v20];
            [v32 setObject:v27 forKeyedSubscript:v26];

            v9 = v25;
            v13 = v24;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
  }

  v28 = [v32 copy];

  return v28;
}

+ (id)tokenChallengeWith:(id)a3 redemptionNonce:(id)a4 originName:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a5)
  {
    v13[0] = a5;
    v9 = MEMORY[0x1E695DEC8];
    v10 = a5;
    a5 = [v9 arrayWithObjects:v13 count:1];
  }

  v11 = [objc_alloc(getNSPPrivateAccessTokenChallengeClass()) initRSABlindSignatureChallengeWithIssuerName:v7 redemptionNonce:v8 originNames:a5];

  return v11;
}

+ (id)fetcherWithChallenge:(id)a3 tokenKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v7 = getNSPPrivateAccessTokenFetcherClass_softClass;
  v17 = getNSPPrivateAccessTokenFetcherClass_softClass;
  if (!getNSPPrivateAccessTokenFetcherClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getNSPPrivateAccessTokenFetcherClass_block_invoke;
    v13[3] = &unk_1E73B3880;
    v13[4] = &v14;
    __getNSPPrivateAccessTokenFetcherClass_block_invoke(v13);
    v7 = v15[3];
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);
  v9 = [v7 alloc];
  v10 = [v5 challengeData];
  v11 = [v9 initWithChallenge:v10 tokenKey:v6 originNameKey:0];

  [v11 setSystemClient:1];

  return v11;
}

+ (id)fetchTokenWithChallenge:(id)a3 dispatchQueue:(id)a4
{
  v5 = a4;
  v6 = [AMSMediaTokenServicePATChallenge challengeWith:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 issuerName];
    v9 = [v7 redemptionNonce];
    v10 = [v7 originName];
    v11 = [AMSMediaTokenServicePATFetcher tokenChallengeWith:v8 redemptionNonce:v9 originName:v10];

    v12 = [v7 tokenKey];
    v13 = [AMSMediaTokenServicePATFetcher fetcherWithChallenge:v11 tokenKey:v12];

    [v13 setSystemClient:1];
    v14 = [AMSMediaTokenServicePATFetcher fetchToken:v13 dispatchQueue:v5];
  }

  else
  {
    v11 = AMSError(2, @"Invalid parameter fetching PAT", @"Parameter missing or invalid when parsing challenge. Private Access Token may not be available on this platform.", 0);
    v14 = [AMSPromise promiseWithError:v11];
  }

  return v14;
}

+ (id)fetchToken:(id)a3 dispatchQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(AMSMutablePromise);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__AMSMediaTokenServicePATFetcher_fetchToken_dispatchQueue___block_invoke;
  v10[3] = &unk_1E73B90E0;
  v8 = v7;
  v11 = v8;
  [v6 fetchTokenWithQueue:v5 completionHandler:v10];

  return v8;
}

void __59__AMSMediaTokenServicePATFetcher_fetchToken_dispatchQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) finishWithError:v5];
  }

  else if (v7)
  {
    [*(a1 + 32) finishWithResult:?];
  }

  else
  {
    v6 = AMSError(12, @"Private Access Token", @"Private Access Token was not fetched.", 0);
    [*(a1 + 32) finishWithError:v6];
  }
}

@end