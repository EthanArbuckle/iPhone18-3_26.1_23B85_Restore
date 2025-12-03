@interface INExecutionInfo
+ (void)initialize;
- (INAppInfo)_appInfo;
- (LSApplicationRecord)_applicationRecord;
- (id)_initWithLaunchableAppBundleId:(id)id displayableAppBundleId:(id)bundleId containingAppBundleURL:(id)l extensionBundleId:(id)extensionBundleId;
@end

@implementation INExecutionInfo

- (LSApplicationRecord)_applicationRecord
{
  v15 = *MEMORY[0x1E69E9840];
  launchableAppBundleId = [(INExecutionInfo *)self launchableAppBundleId];
  if ([launchableAppBundleId length])
  {
    v8 = 0;
    v3 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:launchableAppBundleId allowPlaceholder:0 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v10 = "[INExecutionInfo _applicationRecord]";
        v11 = 2112;
        v12 = launchableAppBundleId;
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
    _applicationRecord = [(INExecutionInfo *)self _applicationRecord];
    v5 = _applicationRecord;
    if (_applicationRecord)
    {
      _applicationRecord = [INAppInfo appInfoWithApplicationRecord:_applicationRecord];
    }

    v6 = self->_appInfo;
    self->_appInfo = _applicationRecord;

    appInfo = self->_appInfo;
  }

  return appInfo;
}

- (id)_initWithLaunchableAppBundleId:(id)id displayableAppBundleId:(id)bundleId containingAppBundleURL:(id)l extensionBundleId:(id)extensionBundleId
{
  idCopy = id;
  bundleIdCopy = bundleId;
  lCopy = l;
  extensionBundleIdCopy = extensionBundleId;
  v28.receiver = self;
  v28.super_class = INExecutionInfo;
  v14 = [(INExecutionInfo *)&v28 init];
  if (v14)
  {
    v15 = [idCopy copy];
    p_launchableAppBundleId = &v14->_launchableAppBundleId;
    launchableAppBundleId = v14->_launchableAppBundleId;
    v14->_launchableAppBundleId = v15;

    v18 = [bundleIdCopy copy];
    displayableAppBundleId = v14->_displayableAppBundleId;
    v14->_displayableAppBundleId = v18;

    v20 = [lCopy copy];
    containingAppBundleURL = v14->_containingAppBundleURL;
    v14->_containingAppBundleURL = v20;

    v22 = [extensionBundleIdCopy copy];
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
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end