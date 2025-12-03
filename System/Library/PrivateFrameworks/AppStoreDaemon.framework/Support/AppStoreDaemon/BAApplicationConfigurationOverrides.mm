@interface BAApplicationConfigurationOverrides
+ (id)asd_overriddenDictionaryForBundleIdentifier:(id)identifier startingDictionary:(id)dictionary;
@end

@implementation BAApplicationConfigurationOverrides

+ (id)asd_overriddenDictionaryForBundleIdentifier:(id)identifier startingDictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  if (identifierCopy && ([BAApplicationConfigurationOverrides overridesForAppBundleIdentifier:identifierCopy], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [dictionaryCopy mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_opt_new();
    }

    v13 = v11;

    essentialMaxInstallSize = [v8 essentialMaxInstallSize];

    if (essentialMaxInstallSize)
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        essentialMaxInstallSize2 = [v8 essentialMaxInstallSize];
        v40 = 138543618;
        v41 = identifierCopy;
        v42 = 2114;
        v43 = essentialMaxInstallSize2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAEssentialMaxInstallSize for %{public}@ to %{public}@", &v40, 0x16u);
      }

      essentialMaxInstallSize3 = [v8 essentialMaxInstallSize];
      [v13 setObject:essentialMaxInstallSize3 forKeyedSubscript:BAEssentialMaxInstallSize];
    }

    maxInstallSize = [v8 maxInstallSize];

    if (maxInstallSize)
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        maxInstallSize2 = [v8 maxInstallSize];
        v40 = 138543618;
        v41 = identifierCopy;
        v42 = 2114;
        v43 = maxInstallSize2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAMaxInstallSize for %{public}@ to %{public}@", &v40, 0x16u);
      }

      maxInstallSize3 = [v8 maxInstallSize];
      [v13 setObject:maxInstallSize3 forKeyedSubscript:BAMaxInstallSize];
    }

    manifestURL = [v8 manifestURL];

    if (manifestURL)
    {
      v23 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        manifestURL2 = [v8 manifestURL];
        v40 = 138543618;
        v41 = identifierCopy;
        v42 = 2114;
        v43 = manifestURL2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAManifestURL for %{public}@ to %{public}@", &v40, 0x16u);
      }

      manifestURL3 = [v8 manifestURL];
      [v13 setObject:manifestURL3 forKeyedSubscript:BAManifestURL];
    }

    essentialDownloadAllowance = [v8 essentialDownloadAllowance];

    if (essentialDownloadAllowance)
    {
      v27 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        essentialDownloadAllowance2 = [v8 essentialDownloadAllowance];
        v40 = 138543618;
        v41 = identifierCopy;
        v42 = 2114;
        v43 = essentialDownloadAllowance2;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAInitialRestrictionsEssentialDownloadAllowance for %{public}@ to %{public}@", &v40, 0x16u);
      }

      essentialDownloadAllowance3 = [v8 essentialDownloadAllowance];
      [v13 setObject:essentialDownloadAllowance3 forKeyedSubscript:BAInitialRestrictionsEssentialDownloadAllowance];
    }

    downloadAllowance = [v8 downloadAllowance];

    if (downloadAllowance)
    {
      v31 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        downloadAllowance2 = [v8 downloadAllowance];
        v40 = 138543618;
        v41 = identifierCopy;
        v42 = 2114;
        v43 = downloadAllowance2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAInitialRestrictionsDownloadAllowance for %{public}@ to %{public}@", &v40, 0x16u);
      }

      downloadAllowance3 = [v8 downloadAllowance];
      [v13 setObject:downloadAllowance3 forKeyedSubscript:BAInitialRestrictionsDownloadAllowance];
    }

    domainAllowlist = [v8 domainAllowlist];

    if (domainAllowlist)
    {
      v35 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        domainAllowlist2 = [v8 domainAllowlist];
        v40 = 138543618;
        v41 = identifierCopy;
        v42 = 2114;
        v43 = domainAllowlist2;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAInitialRestrictionsDomainAllowList for %{public}@ to %{public}@", &v40, 0x16u);
      }

      domainAllowlist3 = [v8 domainAllowlist];
      [v13 setObject:domainAllowlist3 forKeyedSubscript:BAInitialRestrictionsDomainAllowList];
    }

    v38 = [v13 count];
    if (dictionaryCopy || v38)
    {
      v12 = [v13 copy];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = dictionaryCopy;
  }

  return v12;
}

@end