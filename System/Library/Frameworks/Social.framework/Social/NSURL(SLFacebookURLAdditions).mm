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
  v5 = [self _isBetaSwitchEnabledForKey:@"SLFacebookRESTAPIShouldUseBeta"];
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
    if ([self _isBetaSwitchEnabledForKey:@"SLFacebookGraphAPIShouldUseBeta"])
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
  v5 = [self _isBetaSwitchEnabledForKey:@"SLFacebookRESTAPIShouldUseBeta"];
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
  host = [self host];
  v3 = 1;
  if ([host compare:@"itun.es" options:1])
  {
    if ([host compare:@"itunes.apple.com" options:1])
    {
      v3 = 0;
      goto LABEL_13;
    }

    path = [self path];
    v5 = [path rangeOfString:@"/"];
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = [path substringFromIndex:v5 + v6];

    v8 = [v7 rangeOfString:@"/"];
    if (!v9)
    {
      v3 = 0;
      path = v7;
      goto LABEL_12;
    }

    path = [v7 substringFromIndex:v8 + v9];

    if (([path hasPrefix:@"album/"] & 1) != 0 || (objc_msgSend(path, "hasPrefix:", @"movie/") & 1) != 0 || objc_msgSend(path, "hasPrefix:", @"tv-season"))
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
  host = [self host];
  v3 = 1;
  if ([host compare:@"appsto.re" options:1])
  {
    if ([host compare:@"itunes.apple.com" options:1])
    {
      v3 = 0;
    }

    else
    {
      path = [self path];
      v5 = [path rangeOfString:@"/"];
      if (v6)
      {
        v7 = [path substringFromIndex:v5 + v6];

        v8 = [v7 rangeOfString:@"/"];
        if (v9)
        {
          path = [v7 substringFromIndex:v8 + v9];

          v3 = [path hasPrefix:@"app/"];
        }

        else
        {
          v3 = 0;
          path = v7;
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
  scheme = [self scheme];
  v2 = [scheme compare:@"assets-library" options:1] == 0;

  return v2;
}

- (uint64_t)loadingInUIWebViewWillLaunchAnotherApp
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v4 = [defaultWorkspace URLOverrideForURL:self];

  scheme = [v4 scheme];
  v6 = scheme;
  if (scheme)
  {
    if (![scheme compare:@"http" options:1] || (v7 = 1, !objc_msgSend(v6, "compare:options:", @"https", 1)))
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