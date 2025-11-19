@interface TKApplicationProxy
+ (id)_displayNamesCache;
- (id)_coreServicesLocalizedNameForBundleID:(id)a3;
- (id)displayNameForBundleID:(id)a3;
@end

@implementation TKApplicationProxy

- (id)displayNameForBundleID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[TKApplicationProxy _displayNamesCache];
    v6 = [v5 objectForKey:v4];

    if (!v6)
    {
      v6 = [(TKApplicationProxy *)self _coreServicesLocalizedNameForBundleID:v4];
      v7 = +[TKApplicationProxy _displayNamesCache];
      [v7 setObject:v6 forKey:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_coreServicesLocalizedNameForBundleID:(id)a3
{
  v3 = a3;
  v17 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v17];
  v5 = v17;
  if (!v4)
  {
    if (TK_LOG_appproxy_once != -1)
    {
      [TKApplicationProxy _coreServicesLocalizedNameForBundleID:];
    }

    v11 = TK_LOG_appproxy_log;
    if (os_log_type_enabled(TK_LOG_appproxy_log, OS_LOG_TYPE_ERROR))
    {
      [(TKApplicationProxy *)v3 _coreServicesLocalizedNameForBundleID:v5, v11];
    }

    v12 = v3;
    goto LABEL_11;
  }

  v6 = [v4 applicationState];
  v7 = [v6 isValid];

  if (!v7)
  {
    v12 = [v4 bundleIdentifier];
LABEL_11:
    v10 = v12;
    goto LABEL_17;
  }

  v8 = [v4 localizedName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13 = [v4 localizedShortName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v4 bundleIdentifier];
    }

    v10 = v15;
  }

LABEL_17:

  return v10;
}

+ (id)_displayNamesCache
{
  if (_displayNamesCache_oncePredicate != -1)
  {
    +[TKApplicationProxy _displayNamesCache];
  }

  v3 = _displayNamesCache_cache;

  return v3;
}

uint64_t __40__TKApplicationProxy__displayNamesCache__block_invoke()
{
  _displayNamesCache_cache = objc_alloc_init(MEMORY[0x1E695DEE0]);

  return MEMORY[0x1EEE66BB8]();
}

- (void)_coreServicesLocalizedNameForBundleID:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1DF413000, log, OS_LOG_TYPE_ERROR, "failed to get app record for %{public}@ with error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end