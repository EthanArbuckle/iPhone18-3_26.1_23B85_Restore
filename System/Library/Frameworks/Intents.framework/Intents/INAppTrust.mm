@interface INAppTrust
+ (BOOL)_appRequiresExplicitTrust:(id)trust withExplicitAppTrustCache:(id)cache;
+ (BOOL)_shouldTrustAppForLaunch:(id)launch withExplicitAppTrustCache:(id)cache;
+ (BOOL)_shouldTrustExtensionForLaunch:(id)launch withExplicitAppTrustCache:(id)cache;
+ (BOOL)shouldTrustAppForLaunch:(id)launch;
+ (BOOL)shouldTrustExtensionForLaunch:(id)launch;
+ (id)appsTrustedForLaunch:(id)launch;
+ (id)extensionsTrustedForLaunch:(id)launch;
@end

@implementation INAppTrust

+ (BOOL)_appRequiresExplicitTrust:(id)trust withExplicitAppTrustCache:(id)cache
{
  trustCopy = trust;
  cacheCopy = cache;
  managedBundleIdentifiers = [cacheCopy managedBundleIdentifiers];
  bundleIdentifier = [trustCopy bundleIdentifier];
  v9 = [managedBundleIdentifiers containsObject:bundleIdentifier];

  if (v9 & 1) != 0 || ([cacheCopy trustedCodeSigningIdentities], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(trustCopy, "signerIdentity"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "containsObject:", v11), v11, v10, (v12))
  {
    v13 = 0;
  }

  else
  {
    signingIdentitiesRequiringExplicitTrust = [cacheCopy signingIdentitiesRequiringExplicitTrust];
    signerIdentity = [trustCopy signerIdentity];
    v13 = [signingIdentitiesRequiringExplicitTrust containsObject:signerIdentity];
  }

  return v13;
}

+ (id)appsTrustedForLaunch:(id)launch
{
  launchCopy = launch;
  v5 = objc_alloc_init(INExplicitAppTrustCache);
  v6 = MEMORY[0x1E696AE18];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __35__INAppTrust_appsTrustedForLaunch___block_invoke;
  v14 = &unk_1E7283858;
  v15 = v5;
  selfCopy = self;
  v7 = v5;
  v8 = [v6 predicateWithBlock:&v11];
  v9 = [launchCopy filteredArrayUsingPredicate:{v8, v11, v12, v13, v14}];

  return v9;
}

+ (BOOL)_shouldTrustAppForLaunch:(id)launch withExplicitAppTrustCache:(id)cache
{
  v21 = *MEMORY[0x1E69E9840];
  launchCopy = launch;
  cacheCopy = cache;
  if (!launchCopy)
  {
    LOBYTE(v8) = 0;
    goto LABEL_18;
  }

  if (([launchCopy if_isSystem] & 1) == 0)
  {
    bundleURL = [launchCopy bundleURL];
    path = [bundleURL path];

    if (path)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [defaultManager isReadableFileAtPath:path];

      if (v12)
      {
        v13 = MISAppApprovalState();
        switch(v13)
        {
          case 0:
            v8 = [self _appRequiresExplicitTrust:launchCopy withExplicitAppTrustCache:cacheCopy] ^ 1;
            goto LABEL_17;
          case 3:
            goto LABEL_13;
          case 1:
            if (INIsInternalInstall_onceToken != -1)
            {
              dispatch_once(&INIsInternalInstall_onceToken, &__block_literal_global_227);
            }

            if (INIsInternalInstall_isInternal)
            {
LABEL_13:
              LOBYTE(v8) = 1;
LABEL_17:

              goto LABEL_18;
            }

            break;
        }
      }

      else
      {
        v14 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          v17 = 136315394;
          v18 = "+[INAppTrust _shouldTrustAppForLaunch:withExplicitAppTrustCache:]";
          v19 = 2112;
          v20 = path;
          _os_log_error_impl(&dword_18E991000, v14, OS_LOG_TYPE_ERROR, "%s Unable to determine app aproval state for %@ because the path is unreadable", &v17, 0x16u);
        }
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_17;
  }

  LOBYTE(v8) = 1;
LABEL_18:

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)shouldTrustAppForLaunch:(id)launch
{
  launchCopy = launch;
  v5 = objc_alloc_init(INExplicitAppTrustCache);
  LOBYTE(self) = [self _shouldTrustAppForLaunch:launchCopy withExplicitAppTrustCache:v5];

  return self;
}

+ (id)extensionsTrustedForLaunch:(id)launch
{
  launchCopy = launch;
  v5 = objc_alloc_init(INExplicitAppTrustCache);
  v6 = MEMORY[0x1E696AE18];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __41__INAppTrust_extensionsTrustedForLaunch___block_invoke;
  v14 = &unk_1E7283858;
  v15 = v5;
  selfCopy = self;
  v7 = v5;
  v8 = [v6 predicateWithBlock:&v11];
  v9 = [launchCopy filteredArrayUsingPredicate:{v8, v11, v12, v13, v14}];

  return v9;
}

+ (BOOL)_shouldTrustExtensionForLaunch:(id)launch withExplicitAppTrustCache:(id)cache
{
  launchCopy = launch;
  cacheCopy = cache;
  _extensionBundle = [launchCopy _extensionBundle];
  bundlePath = [_extensionBundle bundlePath];
  v10 = [bundlePath hasPrefix:@"/System/Library/PrivateFrameworks/"];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    _plugIn = [launchCopy _plugIn];
    containingUrl = [_plugIn containingUrl];

    if (containingUrl)
    {
      v14 = [MEMORY[0x1E69635E0] applicationProxyForBundleURL:containingUrl];
      v11 = [self _shouldTrustAppForLaunch:v14 withExplicitAppTrustCache:cacheCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (BOOL)shouldTrustExtensionForLaunch:(id)launch
{
  launchCopy = launch;
  v5 = objc_alloc_init(INExplicitAppTrustCache);
  LOBYTE(self) = [self _shouldTrustExtensionForLaunch:launchCopy withExplicitAppTrustCache:v5];

  return self;
}

@end