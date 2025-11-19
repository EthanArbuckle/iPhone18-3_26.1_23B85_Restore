@interface AMSMediaTokenServicePATChallenge
+ (id)challengeWith:(id)a3;
@end

@implementation AMSMediaTokenServicePATChallenge

+ (id)challengeWith:(id)a3
{
  v3 = [AMSMediaTokenServicePATFetcher challengeDictFor:a3];
  v4 = [v3 objectForKeyedSubscript:@"challenge"];
  v5 = [v3 objectForKeyedSubscript:@"token-key"];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v4 ams_dataFromBase64URLEncodedString];
    v10 = [v6 ams_dataFromBase64URLEncodedString];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v8 = 0;
    }

    else
    {
      v13 = [objc_alloc(getNSPPrivateAccessTokenChallengeClass()) initWithData:v9];
      v8 = [v13 issuerName];

      if (v8)
      {
        v8 = objc_alloc_init(AMSMediaTokenServicePATChallenge);
        [(AMSMediaTokenServicePATChallenge *)v8 setTokenKey:v11];
        v14 = [v13 issuerName];
        [(AMSMediaTokenServicePATChallenge *)v8 setIssuerName:v14];

        v15 = [v13 originName];
        [(AMSMediaTokenServicePATChallenge *)v8 setOriginName:v15];

        v16 = [v13 redemptionNonce];
        [(AMSMediaTokenServicePATChallenge *)v8 setRedemptionNonce:v16];
      }
    }
  }

  return v8;
}

@end