@interface INIntentExecutionInfo
+ (void)initialize;
- (BOOL)canRunOnLocalDevice;
- (BOOL)hasCustomUIExtension;
- (INIntentExecutionInfo)initWithIntent:(id)a3;
- (INIntentExecutionInfo)initWithIntentTypeName:(id)a3;
- (id)_extensionsWithError:(id *)a3;
- (id)_initWithIntentClassName:(id)a3 preferredCallProvider:(int64_t)a4 launchableAppBundleId:(id)a5 displayableAppBundleId:(id)a6 extensionBundleId:(id)a7 uiExtensionBundleId:(id)a8 containingAppBundleURL:(id)a9;
- (id)_matchingAttributesForExtensionPoint:(id)a3 error:(id *)a4;
- (id)_uiExtensionsWithError:(id *)a3;
@end

@implementation INIntentExecutionInfo

- (id)_uiExtensionsWithError:(id *)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  uiExtensions = self->_uiExtensions;
  if (uiExtensions)
  {
    goto LABEL_8;
  }

  v6 = [(INIntentExecutionInfo *)self uiExtensionBundleId];
  if (v6)
  {
    v7 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v6 error:a3];
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
    v11 = [(INIntentExecutionInfo *)self _matchingAttributesForExtensionPoint:@"com.apple.intents-ui-service" error:a3];
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v11 error:a3];
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

- (id)_extensionsWithError:(id *)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  extensions = self->_extensions;
  if (extensions)
  {
    goto LABEL_8;
  }

  v6 = [(INExecutionInfo *)self extensionBundleId];
  if (v6)
  {
    v7 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v6 error:a3];
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
    v11 = [(INIntentExecutionInfo *)self _matchingAttributesForExtensionPoint:@"com.apple.intents-service" error:a3];
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v11 error:a3];
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

- (id)_matchingAttributesForExtensionPoint:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A2F8]];

  v8 = [(INIntentExecutionInfo *)self intentClassName];
  v22[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [v7 setObject:v9 forKeyedSubscript:@"IntentsSupported"];

  v10 = [(INExecutionInfo *)self containingAppBundleURL];
  v11 = [(INExecutionInfo *)self launchableAppBundleId];
  v12 = v11;
  if (!v10 && v11)
  {
    v13 = [(INExecutionInfo *)self _applicationRecord];
    v10 = [v13 URL];
  }

  if (v10 || !v12)
  {
    if (v10)
    {
      v17 = [v10 path];
      [v7 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69C4AB0]];
    }

    a4 = v7;
  }

  else if (a4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot match extensions for %@ because it does not have a bundle URL", v12, 0];
    v15 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v21 = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a4 = [v15 errorWithDomain:@"IntentsErrorDomain" code:2005 userInfo:v16];

    a4 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return a4;
}

- (BOOL)canRunOnLocalDevice
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(INExecutionInfo *)self _applicationRecord];
  v4 = [v3 applicationState];
  v5 = [v4 isInstalled];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [(INExecutionInfo *)self _appInfo];
  v7 = [v6 supportedActions];
  v8 = [(INIntentExecutionInfo *)self intentClassName];
  v9 = [v7 containsObject:v8];

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
          v21 = self;
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
      v13 = self;
      v14 = 2114;
      v15 = v4;
      _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s Failed to match UI extensions for execution info %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (id)_initWithIntentClassName:(id)a3 preferredCallProvider:(int64_t)a4 launchableAppBundleId:(id)a5 displayableAppBundleId:(id)a6 extensionBundleId:(id)a7 uiExtensionBundleId:(id)a8 containingAppBundleURL:(id)a9
{
  v15 = a3;
  v16 = a8;
  v24.receiver = self;
  v24.super_class = INIntentExecutionInfo;
  v17 = [(INExecutionInfo *)&v24 _initWithLaunchableAppBundleId:a5 displayableAppBundleId:a6 containingAppBundleURL:a9 extensionBundleId:a7];
  if (v17)
  {
    v18 = [v15 copy];
    v19 = v17[8];
    v17[8] = v18;

    v17[9] = a4;
    v20 = [v16 copy];
    v21 = v17[10];
    v17[10] = v20;

    v22 = v17;
  }

  return v17;
}

- (INIntentExecutionInfo)initWithIntentTypeName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = 0;
  v5 = INParseCustomIntentTypeName(v4, &v14, &v13);
  v6 = v14;
  v7 = v13;
  if (v5)
  {
    self = [(INIntentExecutionInfo *)self initWithIntentClassName:v6 launchableAppBundleId:v7];
    v8 = self;
  }

  else
  {
    v9 = INIntentSchemaGetIntentDescriptionWithType(v4);
    v10 = v9;
    if (v9)
    {
      v11 = NSStringFromClass([v9 facadeClass]);
      self = [(INIntentExecutionInfo *)self _initWithIntentClassName:v11 preferredCallProvider:0 launchableAppBundleId:0 displayableAppBundleId:0 extensionBundleId:0 uiExtensionBundleId:0 containingAppBundleURL:0];

      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (INIntentExecutionInfo)initWithIntent:(id)a3
{
  v4 = a3;
  [v4 launchId];
  v19 = 0;
  v18 = v20 = 0;
  INExtractAppInfoFromSiriLaunchIdWithoutLaunchServices(v18, &v20, &v19);
  v5 = v20;
  v6 = v19;
  v7 = v4;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 preferredCallProvider];
      v9 = v7;
    }

    else
    {

      v8 = 0;
      v9 = 0;
    }

    v11 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v11 preferredCallProvider];
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
      v8 = 2;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  v13 = [v7 _className];
  v14 = [v7 extensionBundleId];
  v15 = [v7 _uiExtensionBundleId];
  v16 = [(INIntentExecutionInfo *)self _initWithIntentClassName:v13 preferredCallProvider:v8 launchableAppBundleId:v5 displayableAppBundleId:0 extensionBundleId:v14 uiExtensionBundleId:v15 containingAppBundleURL:v6];

  return v16;
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end