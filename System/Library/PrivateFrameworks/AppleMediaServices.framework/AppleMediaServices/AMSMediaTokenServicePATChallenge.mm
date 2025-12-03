@interface AMSMediaTokenServicePATChallenge
+ (id)challengeWith:(id)with;
@end

@implementation AMSMediaTokenServicePATChallenge

+ (id)challengeWith:(id)with
{
  v3 = [AMSMediaTokenServicePATFetcher challengeDictFor:with];
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
    issuerName = 0;
  }

  else
  {
    ams_dataFromBase64URLEncodedString = [v4 ams_dataFromBase64URLEncodedString];
    ams_dataFromBase64URLEncodedString2 = [v6 ams_dataFromBase64URLEncodedString];
    v11 = ams_dataFromBase64URLEncodedString2;
    if (ams_dataFromBase64URLEncodedString)
    {
      v12 = ams_dataFromBase64URLEncodedString2 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      issuerName = 0;
    }

    else
    {
      v13 = [objc_alloc(getNSPPrivateAccessTokenChallengeClass()) initWithData:ams_dataFromBase64URLEncodedString];
      issuerName = [v13 issuerName];

      if (issuerName)
      {
        issuerName = objc_alloc_init(AMSMediaTokenServicePATChallenge);
        [(AMSMediaTokenServicePATChallenge *)issuerName setTokenKey:v11];
        issuerName2 = [v13 issuerName];
        [(AMSMediaTokenServicePATChallenge *)issuerName setIssuerName:issuerName2];

        originName = [v13 originName];
        [(AMSMediaTokenServicePATChallenge *)issuerName setOriginName:originName];

        redemptionNonce = [v13 redemptionNonce];
        [(AMSMediaTokenServicePATChallenge *)issuerName setRedemptionNonce:redemptionNonce];
      }
    }
  }

  return issuerName;
}

@end