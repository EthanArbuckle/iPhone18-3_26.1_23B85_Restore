@interface NSURL(SLFacebookURLAdditions)
+ (BOOL)_isBetaSwitchEnabledForKey:()SLFacebookURLAdditions;
+ (id)URLForFacebookGraphAPIWithDomain:()SLFacebookURLAdditions path:;
+ (id)URLForFacebookPageAtPath:()SLFacebookURLAdditions;
+ (id)URLForFacebookRESTMethod:()SLFacebookURLAdditions;
- (BOOL)isAssetURL;
- (uint64_t)isAppStoreURL;
- (uint64_t)isMusicStoreURL;
- (uint64_t)loadingInUIWebViewWillLaunchAnotherApp;
@end

@implementation NSURL(SLFacebookURLAdditions)

+ (BOOL)_isBetaSwitchEnabledForKey:()SLFacebookURLAdditions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  if (_startObservingPreferenceChanges_once != -1)
  {
    +[NSURL(SLFacebookURLAdditions) _isBetaSwitchEnabledForKey:];
  }

  v4 = _preferencesQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__NSURL_SLFacebookURLAdditions___isBetaSwitchEnabledForKey___block_invoke;
  v7[3] = &unk_1E8176328;
  v7[4] = &v8;
  v7[5] = a3;
  dispatch_sync(v4, v7);

  v5 = [v9[5] integerValue] == 1;
  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (id)URLForFacebookRESTMethod:()SLFacebookURLAdditions
{
  v4 = a3;
  v5 = [a1 _isBetaSwitchEnabledForKey:@"SLFacebookRESTAPIShouldUseBeta"];
  v6 = @"api.facebook.com";
  if (v5)
  {
    v6 = @"api.beta.facebook.com";
  }

  v7 = MEMORY[0x1E695DFF8];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/method/%@", v6, v4];

  v9 = [v7 URLWithString:v8];

  return v9;
}

+ (id)URLForFacebookGraphAPIWithDomain:()SLFacebookURLAdditions path:
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    if ([a1 _isBetaSwitchEnabledForKey:@"SLFacebookGraphAPIShouldUseBeta"])
    {
      v6 = @"graph.beta.facebook.com";
    }

    else
    {
      v6 = @"graph.facebook.com";
    }
  }

  v8 = MEMORY[0x1E695DFF8];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/%@", v6, v7];
  v10 = [v8 URLWithString:v9];

  return v10;
}

+ (id)URLForFacebookPageAtPath:()SLFacebookURLAdditions
{
  v4 = a3;
  v5 = [a1 _isBetaSwitchEnabledForKey:@"SLFacebookRESTAPIShouldUseBeta"];
  v6 = @"m.facebook.com";
  if (v5)
  {
    v6 = @"m.beta.facebook.com";
  }

  v7 = MEMORY[0x1E695DFF8];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/%@", v6, v4];

  v9 = [v7 URLWithString:v8];

  return v9;
}

- (uint64_t)isMusicStoreURL
{
  v2 = [a1 host];
  v3 = 1;
  if ([v2 compare:@"itun.es" options:1])
  {
    if ([v2 compare:@"itunes.apple.com" options:1])
    {
      v3 = 0;
      goto LABEL_13;
    }

    v4 = [a1 path];
    v5 = [v4 rangeOfString:@"/"];
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = [v4 substringFromIndex:v5 + v6];

    v8 = [v7 rangeOfString:@"/"];
    if (!v9)
    {
      v3 = 0;
      v4 = v7;
      goto LABEL_12;
    }

    v4 = [v7 substringFromIndex:v8 + v9];

    if (([v4 hasPrefix:@"album/"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"movie/") & 1) != 0 || objc_msgSend(v4, "hasPrefix:", @"tv-season"))
    {
      v3 = 1;
    }

    else
    {
LABEL_10:
      v3 = 0;
    }

LABEL_12:
  }

LABEL_13:

  return v3;
}

- (uint64_t)isAppStoreURL
{
  v2 = [a1 host];
  v3 = 1;
  if ([v2 compare:@"appsto.re" options:1])
  {
    if ([v2 compare:@"itunes.apple.com" options:1])
    {
      v3 = 0;
    }

    else
    {
      v4 = [a1 path];
      v5 = [v4 rangeOfString:@"/"];
      if (v6)
      {
        v7 = [v4 substringFromIndex:v5 + v6];

        v8 = [v7 rangeOfString:@"/"];
        if (v9)
        {
          v4 = [v7 substringFromIndex:v8 + v9];

          v3 = [v4 hasPrefix:@"app/"];
        }

        else
        {
          v3 = 0;
          v4 = v7;
        }
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (BOOL)isAssetURL
{
  v1 = [a1 scheme];
  v2 = [v1 compare:@"assets-library" options:1] == 0;

  return v2;
}

- (uint64_t)loadingInUIWebViewWillLaunchAnotherApp
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v4 = [v3 URLOverrideForURL:a1];

  v5 = [v4 scheme];
  v6 = v5;
  if (v5)
  {
    if (![v5 compare:@"http" options:1] || (v7 = 1, !objc_msgSend(v6, "compare:options:", @"https", 1)))
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  _SLLog(v1, 6, @"URL %@ overridden to %@ scheme %@ will launch another app? %d");

  return v7;
}

@end