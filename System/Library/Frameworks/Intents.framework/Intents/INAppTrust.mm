@interface INAppTrust
+ (BOOL)_appRequiresExplicitTrust:(id)a3 withExplicitAppTrustCache:(id)a4;
+ (BOOL)_shouldTrustAppForLaunch:(id)a3 withExplicitAppTrustCache:(id)a4;
+ (BOOL)_shouldTrustExtensionForLaunch:(id)a3 withExplicitAppTrustCache:(id)a4;
+ (BOOL)shouldTrustAppForLaunch:(id)a3;
+ (BOOL)shouldTrustExtensionForLaunch:(id)a3;
+ (id)appsTrustedForLaunch:(id)a3;
+ (id)extensionsTrustedForLaunch:(id)a3;
@end

@implementation INAppTrust

+ (BOOL)_appRequiresExplicitTrust:(id)a3 withExplicitAppTrustCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 managedBundleIdentifiers];
  v8 = [v5 bundleIdentifier];
  v9 = [v7 containsObject:v8];

  if (v9 & 1) != 0 || ([v6 trustedCodeSigningIdentities], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "signerIdentity"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "containsObject:", v11), v11, v10, (v12))
  {
    v13 = 0;
  }

  else
  {
    v14 = [v6 signingIdentitiesRequiringExplicitTrust];
    v15 = [v5 signerIdentity];
    v13 = [v14 containsObject:v15];
  }

  return v13;
}

+ (id)appsTrustedForLaunch:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(INExplicitAppTrustCache);
  v6 = MEMORY[0x1E696AE18];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __35__INAppTrust_appsTrustedForLaunch___block_invoke;
  v14 = &unk_1E7283858;
  v15 = v5;
  v16 = a1;
  v7 = v5;
  v8 = [v6 predicateWithBlock:&v11];
  v9 = [v4 filteredArrayUsingPredicate:{v8, v11, v12, v13, v14}];

  return v9;
}

+ (BOOL)_shouldTrustAppForLaunch:(id)a3 withExplicitAppTrustCache:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    LOBYTE(v8) = 0;
    goto LABEL_18;
  }

  if (([v6 if_isSystem] & 1) == 0)
  {
    v9 = [v6 bundleURL];
    v10 = [v9 path];

    if (v10)
    {
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [v11 isReadableFileAtPath:v10];

      if (v12)
      {
        v13 = MISAppApprovalState();
        switch(v13)
        {
          case 0:
            v8 = [a1 _appRequiresExplicitTrust:v6 withExplicitAppTrustCache:v7] ^ 1;
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
          v20 = v10;
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

+ (BOOL)shouldTrustAppForLaunch:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(INExplicitAppTrustCache);
  LOBYTE(a1) = [a1 _shouldTrustAppForLaunch:v4 withExplicitAppTrustCache:v5];

  return a1;
}

+ (id)extensionsTrustedForLaunch:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(INExplicitAppTrustCache);
  v6 = MEMORY[0x1E696AE18];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __41__INAppTrust_extensionsTrustedForLaunch___block_invoke;
  v14 = &unk_1E7283858;
  v15 = v5;
  v16 = a1;
  v7 = v5;
  v8 = [v6 predicateWithBlock:&v11];
  v9 = [v4 filteredArrayUsingPredicate:{v8, v11, v12, v13, v14}];

  return v9;
}

+ (BOOL)_shouldTrustExtensionForLaunch:(id)a3 withExplicitAppTrustCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 _extensionBundle];
  v9 = [v8 bundlePath];
  v10 = [v9 hasPrefix:@"/System/Library/PrivateFrameworks/"];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [v6 _plugIn];
    v13 = [v12 containingUrl];

    if (v13)
    {
      v14 = [MEMORY[0x1E69635E0] applicationProxyForBundleURL:v13];
      v11 = [a1 _shouldTrustAppForLaunch:v14 withExplicitAppTrustCache:v7];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (BOOL)shouldTrustExtensionForLaunch:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(INExplicitAppTrustCache);
  LOBYTE(a1) = [a1 _shouldTrustExtensionForLaunch:v4 withExplicitAppTrustCache:v5];

  return a1;
}

@end