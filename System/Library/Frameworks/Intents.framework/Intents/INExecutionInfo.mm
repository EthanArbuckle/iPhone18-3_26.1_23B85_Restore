@interface INExecutionInfo
+ (void)initialize;
- (INAppInfo)_appInfo;
- (LSApplicationRecord)_applicationRecord;
- (id)_initWithLaunchableAppBundleId:(id)a3 displayableAppBundleId:(id)a4 containingAppBundleURL:(id)a5 extensionBundleId:(id)a6;
@end

@implementation INExecutionInfo

- (LSApplicationRecord)_applicationRecord
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(INExecutionInfo *)self launchableAppBundleId];
  if ([v2 length])
  {
    v8 = 0;
    v3 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v2 allowPlaceholder:0 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v10 = "[INExecutionInfo _applicationRecord]";
        v11 = 2112;
        v12 = v2;
        v13 = 2112;
        v14 = v4;
        _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s Unable to create application record for %@: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (INAppInfo)_appInfo
{
  appInfo = self->_appInfo;
  if (!appInfo)
  {
    v4 = [(INExecutionInfo *)self _applicationRecord];
    v5 = v4;
    if (v4)
    {
      v4 = [INAppInfo appInfoWithApplicationRecord:v4];
    }

    v6 = self->_appInfo;
    self->_appInfo = v4;

    appInfo = self->_appInfo;
  }

  return appInfo;
}

- (id)_initWithLaunchableAppBundleId:(id)a3 displayableAppBundleId:(id)a4 containingAppBundleURL:(id)a5 extensionBundleId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = INExecutionInfo;
  v14 = [(INExecutionInfo *)&v28 init];
  if (v14)
  {
    v15 = [v10 copy];
    p_launchableAppBundleId = &v14->_launchableAppBundleId;
    launchableAppBundleId = v14->_launchableAppBundleId;
    v14->_launchableAppBundleId = v15;

    v18 = [v11 copy];
    displayableAppBundleId = v14->_displayableAppBundleId;
    v14->_displayableAppBundleId = v18;

    v20 = [v12 copy];
    containingAppBundleURL = v14->_containingAppBundleURL;
    v14->_containingAppBundleURL = v20;

    v22 = [v13 copy];
    extensionBundleId = v14->_extensionBundleId;
    v14->_extensionBundleId = v22;

    v24 = v14->_displayableAppBundleId;
    if (v14->_launchableAppBundleId)
    {
      if (!v24)
      {
        v24 = *p_launchableAppBundleId;
        p_launchableAppBundleId = &v14->_displayableAppBundleId;
LABEL_6:
        v25 = v24;
        v26 = *p_launchableAppBundleId;
        *p_launchableAppBundleId = v25;
      }
    }

    else if (v24)
    {
      goto LABEL_6;
    }
  }

  return v14;
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end