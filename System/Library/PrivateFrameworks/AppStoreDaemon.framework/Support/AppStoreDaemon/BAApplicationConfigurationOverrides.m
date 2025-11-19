@interface BAApplicationConfigurationOverrides
+ (id)asd_overriddenDictionaryForBundleIdentifier:(id)a3 startingDictionary:(id)a4;
@end

@implementation BAApplicationConfigurationOverrides

+ (id)asd_overriddenDictionaryForBundleIdentifier:(id)a3 startingDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([BAApplicationConfigurationOverrides overridesForAppBundleIdentifier:v5], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v6 mutableCopy];
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

    v14 = [v8 essentialMaxInstallSize];

    if (v14)
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v8 essentialMaxInstallSize];
        v40 = 138543618;
        v41 = v5;
        v42 = 2114;
        v43 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAEssentialMaxInstallSize for %{public}@ to %{public}@", &v40, 0x16u);
      }

      v17 = [v8 essentialMaxInstallSize];
      [v13 setObject:v17 forKeyedSubscript:BAEssentialMaxInstallSize];
    }

    v18 = [v8 maxInstallSize];

    if (v18)
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v8 maxInstallSize];
        v40 = 138543618;
        v41 = v5;
        v42 = 2114;
        v43 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAMaxInstallSize for %{public}@ to %{public}@", &v40, 0x16u);
      }

      v21 = [v8 maxInstallSize];
      [v13 setObject:v21 forKeyedSubscript:BAMaxInstallSize];
    }

    v22 = [v8 manifestURL];

    if (v22)
    {
      v23 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v8 manifestURL];
        v40 = 138543618;
        v41 = v5;
        v42 = 2114;
        v43 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAManifestURL for %{public}@ to %{public}@", &v40, 0x16u);
      }

      v25 = [v8 manifestURL];
      [v13 setObject:v25 forKeyedSubscript:BAManifestURL];
    }

    v26 = [v8 essentialDownloadAllowance];

    if (v26)
    {
      v27 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v8 essentialDownloadAllowance];
        v40 = 138543618;
        v41 = v5;
        v42 = 2114;
        v43 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAInitialRestrictionsEssentialDownloadAllowance for %{public}@ to %{public}@", &v40, 0x16u);
      }

      v29 = [v8 essentialDownloadAllowance];
      [v13 setObject:v29 forKeyedSubscript:BAInitialRestrictionsEssentialDownloadAllowance];
    }

    v30 = [v8 downloadAllowance];

    if (v30)
    {
      v31 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v8 downloadAllowance];
        v40 = 138543618;
        v41 = v5;
        v42 = 2114;
        v43 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAInitialRestrictionsDownloadAllowance for %{public}@ to %{public}@", &v40, 0x16u);
      }

      v33 = [v8 downloadAllowance];
      [v13 setObject:v33 forKeyedSubscript:BAInitialRestrictionsDownloadAllowance];
    }

    v34 = [v8 domainAllowlist];

    if (v34)
    {
      v35 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v8 domainAllowlist];
        v40 = 138543618;
        v41 = v5;
        v42 = 2114;
        v43 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[BackgroundAssets] Overriding BAInitialRestrictionsDomainAllowList for %{public}@ to %{public}@", &v40, 0x16u);
      }

      v37 = [v8 domainAllowlist];
      [v13 setObject:v37 forKeyedSubscript:BAInitialRestrictionsDomainAllowList];
    }

    v38 = [v13 count];
    if (v6 || v38)
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
    v12 = v6;
  }

  return v12;
}

@end