@interface INIntentExecutionInfo
+ (void)initialize;
- (BOOL)canRunOnLocalDevice;
- (BOOL)hasCustomUIExtension;
- (INIntentExecutionInfo)initWithIntent:(id)intent;
- (INIntentExecutionInfo)initWithIntentTypeName:(id)name;
- (id)_extensionsWithError:(id *)error;
- (id)_initWithIntentClassName:(id)name preferredCallProvider:(int64_t)provider launchableAppBundleId:(id)id displayableAppBundleId:(id)bundleId extensionBundleId:(id)extensionBundleId uiExtensionBundleId:(id)uiExtensionBundleId containingAppBundleURL:(id)l;
- (id)_matchingAttributesForExtensionPoint:(id)point error:(id *)error;
- (id)_uiExtensionsWithError:(id *)error;
@end

@implementation INIntentExecutionInfo

- (id)_uiExtensionsWithError:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  uiExtensions = self->_uiExtensions;
  if (uiExtensions)
  {
    goto LABEL_8;
  }

  uiExtensionBundleId = [(INIntentExecutionInfo *)self uiExtensionBundleId];
  if (uiExtensionBundleId)
  {
    v7 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:uiExtensionBundleId error:error];
    if (v7)
    {
      v8 = v7;
      v18[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v10 = self->_uiExtensions;
      self->_uiExtensions = v9;

LABEL_7:
      uiExtensions = self->_uiExtensions;
LABEL_8:
      v15 = uiExtensions;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [(INIntentExecutionInfo *)self _matchingAttributesForExtensionPoint:@"com.apple.intents-ui-service" error:error];
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v11 error:error];
      v14 = self->_uiExtensions;
      self->_uiExtensions = v13;

      goto LABEL_7;
    }
  }

  v15 = 0;
LABEL_9:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_extensionsWithError:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  extensions = self->_extensions;
  if (extensions)
  {
    goto LABEL_8;
  }

  extensionBundleId = [(INExecutionInfo *)self extensionBundleId];
  if (extensionBundleId)
  {
    v7 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:extensionBundleId error:error];
    if (v7)
    {
      v8 = v7;
      v18[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v10 = self->_extensions;
      self->_extensions = v9;

LABEL_7:
      extensions = self->_extensions;
LABEL_8:
      v15 = extensions;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [(INIntentExecutionInfo *)self _matchingAttributesForExtensionPoint:@"com.apple.intents-service" error:error];
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v11 error:error];
      v14 = self->_extensions;
      self->_extensions = v13;

      goto LABEL_7;
    }
  }

  v15 = 0;
LABEL_9:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_matchingAttributesForExtensionPoint:(id)point error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  pointCopy = point;
  v7 = objc_opt_new();
  [v7 setObject:pointCopy forKeyedSubscript:*MEMORY[0x1E696A2F8]];

  intentClassName = [(INIntentExecutionInfo *)self intentClassName];
  v22[0] = intentClassName;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [v7 setObject:v9 forKeyedSubscript:@"IntentsSupported"];

  containingAppBundleURL = [(INExecutionInfo *)self containingAppBundleURL];
  launchableAppBundleId = [(INExecutionInfo *)self launchableAppBundleId];
  v12 = launchableAppBundleId;
  if (!containingAppBundleURL && launchableAppBundleId)
  {
    _applicationRecord = [(INExecutionInfo *)self _applicationRecord];
    containingAppBundleURL = [_applicationRecord URL];
  }

  if (containingAppBundleURL || !v12)
  {
    if (containingAppBundleURL)
    {
      path = [containingAppBundleURL path];
      [v7 setObject:path forKeyedSubscript:*MEMORY[0x1E69C4AB0]];
    }

    error = v7;
  }

  else if (error)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot match extensions for %@ because it does not have a bundle URL", v12, 0];
    v15 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v21 = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *error = [v15 errorWithDomain:@"IntentsErrorDomain" code:2005 userInfo:v16];

    error = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return error;
}

- (BOOL)canRunOnLocalDevice
{
  v24 = *MEMORY[0x1E69E9840];
  _applicationRecord = [(INExecutionInfo *)self _applicationRecord];
  applicationState = [_applicationRecord applicationState];
  isInstalled = [applicationState isInstalled];

  if (!isInstalled)
  {
    goto LABEL_4;
  }

  _appInfo = [(INExecutionInfo *)self _appInfo];
  supportedActions = [_appInfo supportedActions];
  intentClassName = [(INIntentExecutionInfo *)self intentClassName];
  v9 = [supportedActions containsObject:intentClassName];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_4:
    v17 = 0;
    v11 = [(INIntentExecutionInfo *)self _extensionsWithError:&v17];
    v12 = v17;
    v13 = [v11 count];
    v10 = v13 != 0;
    if (!v13)
    {
      if (v12)
      {
        v14 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v19 = "[INIntentExecutionInfo canRunOnLocalDevice]";
          v20 = 2114;
          selfCopy = self;
          v22 = 2114;
          v23 = v12;
          _os_log_error_impl(&dword_18E991000, v14, OS_LOG_TYPE_ERROR, "%s Failed to match extensions for execution info %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)hasCustomUIExtension
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [(INIntentExecutionInfo *)self _uiExtensionsWithError:&v9];
  v4 = v9;
  v5 = [v3 count];
  if (!v5 && !v3)
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "[INIntentExecutionInfo hasCustomUIExtension]";
      v12 = 2114;
      selfCopy = self;
      v14 = 2114;
      v15 = v4;
      _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s Failed to match UI extensions for execution info %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (id)_initWithIntentClassName:(id)name preferredCallProvider:(int64_t)provider launchableAppBundleId:(id)id displayableAppBundleId:(id)bundleId extensionBundleId:(id)extensionBundleId uiExtensionBundleId:(id)uiExtensionBundleId containingAppBundleURL:(id)l
{
  nameCopy = name;
  uiExtensionBundleIdCopy = uiExtensionBundleId;
  v24.receiver = self;
  v24.super_class = INIntentExecutionInfo;
  v17 = [(INExecutionInfo *)&v24 _initWithLaunchableAppBundleId:id displayableAppBundleId:bundleId containingAppBundleURL:l extensionBundleId:extensionBundleId];
  if (v17)
  {
    v18 = [nameCopy copy];
    v19 = v17[8];
    v17[8] = v18;

    v17[9] = provider;
    v20 = [uiExtensionBundleIdCopy copy];
    v21 = v17[10];
    v17[10] = v20;

    v22 = v17;
  }

  return v17;
}

- (INIntentExecutionInfo)initWithIntentTypeName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = 0;
  v5 = INParseCustomIntentTypeName(nameCopy, &v14, &v13);
  v6 = v14;
  v7 = v13;
  if (v5)
  {
    self = [(INIntentExecutionInfo *)self initWithIntentClassName:v6 launchableAppBundleId:v7];
    selfCopy2 = self;
  }

  else
  {
    v9 = INIntentSchemaGetIntentDescriptionWithType(nameCopy);
    v10 = v9;
    if (v9)
    {
      v11 = NSStringFromClass([v9 facadeClass]);
      self = [(INIntentExecutionInfo *)self _initWithIntentClassName:v11 preferredCallProvider:0 launchableAppBundleId:0 displayableAppBundleId:0 extensionBundleId:0 uiExtensionBundleId:0 containingAppBundleURL:0];

      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

- (INIntentExecutionInfo)initWithIntent:(id)intent
{
  intentCopy = intent;
  [intentCopy launchId];
  v19 = 0;
  v18 = v20 = 0;
  INExtractAppInfoFromSiriLaunchIdWithoutLaunchServices(v18, &v20, &v19);
  v5 = v20;
  v6 = v19;
  v7 = intentCopy;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      preferredCallProvider = [v7 preferredCallProvider];
      v9 = v7;
    }

    else
    {

      preferredCallProvider = 0;
      v9 = 0;
    }

    v11 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      preferredCallProvider = [v11 preferredCallProvider];
      v10 = v11;
    }

    else
    {

      v10 = 0;
    }

    v12 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      preferredCallProvider = 2;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    preferredCallProvider = 0;
  }

  _className = [v7 _className];
  extensionBundleId = [v7 extensionBundleId];
  _uiExtensionBundleId = [v7 _uiExtensionBundleId];
  v16 = [(INIntentExecutionInfo *)self _initWithIntentClassName:_className preferredCallProvider:preferredCallProvider launchableAppBundleId:v5 displayableAppBundleId:0 extensionBundleId:extensionBundleId uiExtensionBundleId:_uiExtensionBundleId containingAppBundleURL:v6];

  return v16;
}

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end