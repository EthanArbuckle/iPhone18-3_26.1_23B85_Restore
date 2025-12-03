@interface AMSMediaTokenServicePATFetcher
+ (id)challengeDictFor:(id)for;
+ (id)fetchToken:(id)token dispatchQueue:(id)queue;
+ (id)fetchTokenWithChallenge:(id)challenge dispatchQueue:(id)queue;
+ (id)fetcherWithChallenge:(id)challenge tokenKey:(id)key;
+ (id)tokenChallengeWith:(id)with redemptionNonce:(id)nonce originName:(id)name;
@end

@implementation AMSMediaTokenServicePATFetcher

+ (id)challengeDictFor:(id)for
{
  v38 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = forCopy;
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
        whitespaceAndNewlineCharacterSet = [*(v13 + 2824) whitespaceAndNewlineCharacterSet];
        v17 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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

+ (id)tokenChallengeWith:(id)with redemptionNonce:(id)nonce originName:(id)name
{
  v13[1] = *MEMORY[0x1E69E9840];
  withCopy = with;
  nonceCopy = nonce;
  if (name)
  {
    v13[0] = name;
    v9 = MEMORY[0x1E695DEC8];
    nameCopy = name;
    name = [v9 arrayWithObjects:v13 count:1];
  }

  v11 = [objc_alloc(getNSPPrivateAccessTokenChallengeClass()) initRSABlindSignatureChallengeWithIssuerName:withCopy redemptionNonce:nonceCopy originNames:name];

  return v11;
}

+ (id)fetcherWithChallenge:(id)challenge tokenKey:(id)key
{
  challengeCopy = challenge;
  keyCopy = key;
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
  challengeData = [challengeCopy challengeData];
  v11 = [v9 initWithChallenge:challengeData tokenKey:keyCopy originNameKey:0];

  [v11 setSystemClient:1];

  return v11;
}

+ (id)fetchTokenWithChallenge:(id)challenge dispatchQueue:(id)queue
{
  queueCopy = queue;
  v6 = [AMSMediaTokenServicePATChallenge challengeWith:challenge];
  v7 = v6;
  if (v6)
  {
    issuerName = [v6 issuerName];
    redemptionNonce = [v7 redemptionNonce];
    originName = [v7 originName];
    v11 = [AMSMediaTokenServicePATFetcher tokenChallengeWith:issuerName redemptionNonce:redemptionNonce originName:originName];

    tokenKey = [v7 tokenKey];
    v13 = [AMSMediaTokenServicePATFetcher fetcherWithChallenge:v11 tokenKey:tokenKey];

    [v13 setSystemClient:1];
    v14 = [AMSMediaTokenServicePATFetcher fetchToken:v13 dispatchQueue:queueCopy];
  }

  else
  {
    v11 = AMSError(2, @"Invalid parameter fetching PAT", @"Parameter missing or invalid when parsing challenge. Private Access Token may not be available on this platform.", 0);
    v14 = [AMSPromise promiseWithError:v11];
  }

  return v14;
}

+ (id)fetchToken:(id)token dispatchQueue:(id)queue
{
  queueCopy = queue;
  tokenCopy = token;
  v7 = objc_alloc_init(AMSMutablePromise);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__AMSMediaTokenServicePATFetcher_fetchToken_dispatchQueue___block_invoke;
  v10[3] = &unk_1E73B90E0;
  v8 = v7;
  v11 = v8;
  [tokenCopy fetchTokenWithQueue:queueCopy completionHandler:v10];

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