@interface LSBundleRecord
- (BOOL)asd_canMakeExternalPurchasesForAnyCountryCodeInCountryCodes:(id)a3;
- (id)_fullInfoPlistDictionary;
- (id)_infoPlistURL;
- (id)asd_firstExternalLinkURLForCountryCodes:(id)a3;
- (int64_t)asd_galetteMode;
@end

@implementation LSBundleRecord

- (int64_t)asd_galetteMode
{
  v2 = [(LSBundleRecord *)self entitlements];
  v3 = [v2 objectForKey:@"com.apple.developer.storekit.external-purchase-link" ofClass:objc_opt_class()];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 objectForKey:@"com.apple.developer.storekit.external-purchase" ofClass:objc_opt_class()];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)asd_firstExternalLinkURLForCountryCodes:(id)a3
{
  v4 = a3;
  v24 = self;
  v5 = [(LSBundleRecord *)self _fullInfoPlistDictionary];
  v6 = [v5 objectForKeyedSubscript:@"SKExternalPurchaseLink"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = v4;
      v9 = *v27;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [v11 lowercaseString];
          v13 = [v6 objectForKeyedSubscript:v12];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_13;
          }

          if (v13)
          {
            v14 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v20 = [(LSBundleRecord *)v24 bundleIdentifier];
              *buf = 138544130;
              v31 = v20;
              v32 = 2114;
              v33 = @"SKExternalPurchaseLink";
              v34 = 2114;
              v35 = v12;
              v36 = 2114;
              v37 = v13;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@.%{public}@ = %{public}@, which is not a string", buf, 0x2Au);
            }
          }

          v15 = [v11 uppercaseString];
          v16 = [v6 objectForKeyedSubscript:v15];

          objc_opt_class();
          v13 = v16;
          if (objc_opt_isKindOfClass())
          {
LABEL_13:
            v17 = [NSURL URLWithString:v13];
            if (v17)
            {
              v21 = v17;

              goto LABEL_22;
            }

            v18 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [(LSBundleRecord *)v24 bundleIdentifier];
              *buf = 138544130;
              v31 = v19;
              v32 = 2114;
              v33 = @"SKExternalPurchaseLink";
              v34 = 2114;
              v35 = v12;
              v36 = 2114;
              v37 = v13;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@.%{public}@ = %{public}@, which is not a valid URL", buf, 0x2Au);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v21 = 0;
LABEL_22:
      v4 = v23;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)asd_canMakeExternalPurchasesForAnyCountryCodeInCountryCodes:(id)a3
{
  v4 = a3;
  v30 = self;
  v5 = [(LSBundleRecord *)self _fullInfoPlistDictionary];
  v6 = [v5 objectForKeyedSubscript:@"SKExternalPurchase"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [NSSet setWithArray:v6];
LABEL_5:
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v32;
      *&v11 = 138543874;
      v27 = v11;
      v28 = v6;
      v29 = v4;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [v15 lowercaseString];
          v17 = [v7 member:v16];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_28;
          }

          if (v17)
          {
            v18 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v22 = [(LSBundleRecord *)v30 bundleIdentifier];
              *buf = v27;
              v37 = v22;
              v38 = 2114;
              v39 = v17;
              v40 = 2114;
              v41 = @"SKExternalPurchase";
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Found %{public}@ in collection for %{public}@, which is not a string", buf, 0x20u);
            }
          }

          v19 = [v15 uppercaseString];
          v20 = [v7 member:v19];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v20;
LABEL_28:

            v24 = 1;
            v6 = v28;
            v4 = v29;
            goto LABEL_29;
          }

          if (v20)
          {
            v21 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v23 = [(LSBundleRecord *)v30 bundleIdentifier];
              *buf = v27;
              v37 = v23;
              v38 = 2114;
              v39 = v20;
              v40 = 2114;
              v41 = @"SKExternalPurchase";
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Found %{public}@ in collection for %{public}@, which is not a string", buf, 0x20u);
            }
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
        v6 = v28;
        v4 = v29;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(__CFString *)v6 allKeys];
    v7 = [NSSet setWithArray:v8];

    goto LABEL_5;
  }

  if (!v6)
  {
    v24 = 0;
    goto LABEL_30;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v26 = [(LSBundleRecord *)self bundleIdentifier];
    *buf = 138543874;
    v37 = v26;
    v38 = 2114;
    v39 = @"SKExternalPurchase";
    v40 = 2114;
    v41 = v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ = %{public}@, which is not a valid container", buf, 0x20u);
  }

LABEL_26:
  v24 = 0;
LABEL_29:

LABEL_30:
  return v24;
}

- (id)_infoPlistURL
{
  v2 = [(LSBundleRecord *)self URL];
  v3 = [v2 URLByAppendingPathComponent:@"Info.plist"];

  return v3;
}

- (id)_fullInfoPlistDictionary
{
  v3 = [(LSBundleRecord *)self _infoPlistURL];
  v9 = 0;
  v4 = [NSDictionary dictionaryWithContentsOfURL:v3 error:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [(LSBundleRecord *)self bundleIdentifier];
      *buf = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error loading Info.plist for %{public}@: %{public}@", buf, 0x16u);
    }
  }

  return v4;
}

@end