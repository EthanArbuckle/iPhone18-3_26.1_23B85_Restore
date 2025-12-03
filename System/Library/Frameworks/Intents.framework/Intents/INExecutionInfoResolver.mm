@interface INExecutionInfoResolver
+ (id)defaultResolver;
+ (void)initialize;
- (INExecutionCounterpartMapper)_counterpartMapper;
- (INExecutionFrameworkMapper)_frameworkMapper;
- (id)_resolveExecutionInfo:(id)info;
- (id)_resolveExecutionInfoByLinkingExtensionToApp:(id)app;
- (id)_resolveExecutionInfoBySwappingIdentifiers:(id)identifiers;
- (id)_resolveIntentExecutionInfoByLinkingExtensionToApp:(id)app;
- (id)_resolveIntentExecutionInfoBySwappingIdentifiers:(id)identifiers;
- (id)_resolveIntentExecutionInfoUsingCounterparts:(id)counterparts;
- (id)_resolveUserActivityExecutionInfoByLinkingFileProvidersToFilesApp:(id)app;
- (id)_resolveUserActivityExecutionInfoBySwappingIdentifiers:(id)identifiers;
- (id)_resolveUserActivityExecutionInfoUsingCounterparts:(id)counterparts;
- (id)counterpartIdentifiersForLocalIdentifier:(id)identifier;
- (id)localIdentifiersForCounterpartIdentifier:(id)identifier;
- (id)resolveIntentExecutionInfo:(id)info;
- (id)resolveUserActivityExecutionInfo:(id)info;
@end

@implementation INExecutionInfoResolver

- (INExecutionFrameworkMapper)_frameworkMapper
{
  frameworkMapper = self->_frameworkMapper;
  if (!frameworkMapper)
  {
    v4 = objc_alloc_init(INExecutionFrameworkMapper);
    v5 = self->_frameworkMapper;
    self->_frameworkMapper = v4;

    frameworkMapper = self->_frameworkMapper;
  }

  return frameworkMapper;
}

- (INExecutionCounterpartMapper)_counterpartMapper
{
  counterpartMapper = self->_counterpartMapper;
  if (!counterpartMapper)
  {
    v4 = objc_alloc_init(INExecutionCounterpartMapper);
    v5 = self->_counterpartMapper;
    self->_counterpartMapper = v4;

    counterpartMapper = self->_counterpartMapper;
  }

  return counterpartMapper;
}

- (id)_resolveUserActivityExecutionInfoUsingCounterparts:(id)counterparts
{
  v31 = *MEMORY[0x1E69E9840];
  counterpartsCopy = counterparts;
  launchableAppBundleId = [counterpartsCopy launchableAppBundleId];
  userActivityType = [counterpartsCopy userActivityType];
  v7 = [(INExecutionInfoResolver *)self localIdentifiersForCounterpartIdentifier:launchableAppBundleId];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __78__INExecutionInfoResolver__resolveUserActivityExecutionInfoUsingCounterparts___block_invoke;
  v23[3] = &unk_1E727FD90;
  v8 = userActivityType;
  v24 = v8;
  v9 = [v7 if_compactMap:v23];
  if ([v9 count] < 2)
  {
    anyObject = [v9 anyObject];
  }

  else
  {
    allObjects = [v9 allObjects];
    v11 = [allObjects sortedArrayUsingComparator:&__block_literal_global_13];
    anyObject = [v11 firstObject];

    v13 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      bundleIdentifier = [anyObject bundleIdentifier];
      *buf = 136315650;
      v26 = "[INExecutionInfoResolver _resolveUserActivityExecutionInfoUsingCounterparts:]";
      v27 = 2114;
      v28 = launchableAppBundleId;
      v29 = 2114;
      v30 = bundleIdentifier;
      _os_log_error_impl(&dword_18E991000, v14, OS_LOG_TYPE_ERROR, "%s Matched multiple counterpart applications for %{public}@, choosing %{public}@", buf, 0x20u);
    }
  }

  if (anyObject)
  {
    v16 = [INUserActivityExecutionInfo alloc];
    bundleIdentifier2 = [anyObject bundleIdentifier];
    v18 = [anyObject URL];
    extensionBundleId = [counterpartsCopy extensionBundleId];
    v20 = [(INUserActivityExecutionInfo *)v16 _initWithUserActivityType:v8 launchableAppBundleId:bundleIdentifier2 containingAppBundleURL:v18 extensionBundleId:extensionBundleId];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

id __78__INExecutionInfoResolver__resolveUserActivityExecutionInfoUsingCounterparts___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69635F8];
  v4 = a2;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  v6 = [v5 applicationState];
  v7 = [v6 isInstalled];

  v8 = 0;
  if (v7)
  {
    v9 = [v5 if_userActivityTypes];
    if ([v9 containsObject:*(a1 + 32)])
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    v8 = v10;
  }

  return v8;
}

uint64_t __78__INExecutionInfoResolver__resolveUserActivityExecutionInfoUsingCounterparts___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedNameWithContext:&stru_1F01E0850];
  v6 = [v4 localizedNameWithContext:&stru_1F01E0850];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_resolveUserActivityExecutionInfoByLinkingFileProvidersToFilesApp:(id)app
{
  appCopy = app;
  extensionBundleId = [appCopy extensionBundleId];
  if (extensionBundleId)
  {
    v5 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:extensionBundleId error:0];
    extensionPointRecord = [v5 extensionPointRecord];
    name = [extensionPointRecord name];
    v8 = [name isEqualToString:@"com.apple.fileprovider-nonui"];

    v9 = 0;
    if (v8)
    {
      v10 = [INUserActivityExecutionInfo alloc];
      userActivityType = [appCopy userActivityType];
      containingAppBundleURL = [appCopy containingAppBundleURL];
      extensionBundleId2 = [appCopy extensionBundleId];
      v9 = [(INUserActivityExecutionInfo *)v10 _initWithUserActivityType:userActivityType launchableAppBundleId:@"com.apple.DocumentsApp" containingAppBundleURL:containingAppBundleURL extensionBundleId:extensionBundleId2];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_resolveUserActivityExecutionInfoBySwappingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(INExecutionInfoResolver *)self _resolveExecutionInfoBySwappingIdentifiers:identifiersCopy];
  if (v5)
  {
    v6 = [INUserActivityExecutionInfo alloc];
    userActivityType = [identifiersCopy userActivityType];
    launchableAppBundleId = [v5 launchableAppBundleId];
    containingAppBundleURL = [v5 containingAppBundleURL];
    extensionBundleId = [v5 extensionBundleId];
    v11 = [(INUserActivityExecutionInfo *)v6 _initWithUserActivityType:userActivityType launchableAppBundleId:launchableAppBundleId containingAppBundleURL:containingAppBundleURL extensionBundleId:extensionBundleId];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_resolveIntentExecutionInfoUsingCounterparts:(id)counterparts
{
  v53 = *MEMORY[0x1E69E9840];
  counterpartsCopy = counterparts;
  launchableAppBundleId = [counterpartsCopy launchableAppBundleId];
  intentClassName = [counterpartsCopy intentClassName];
  v7 = [(INExecutionInfoResolver *)self localIdentifiersForCounterpartIdentifier:launchableAppBundleId];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __72__INExecutionInfoResolver__resolveIntentExecutionInfoUsingCounterparts___block_invoke;
  v44[3] = &unk_1E727FD48;
  v8 = counterpartsCopy;
  v45 = v8;
  v9 = intentClassName;
  v46 = v9;
  v10 = [v7 if_compactMap:v44];
  if ([v10 count] < 2)
  {
    anyObject = [v10 anyObject];
  }

  else
  {
    allObjects = [v10 allObjects];
    v12 = [allObjects sortedArrayUsingComparator:&__block_literal_global_31213];
    anyObject = [v12 firstObject];

    v14 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      bundleIdentifier = [anyObject bundleIdentifier];
      *buf = 136315650;
      v48 = "[INExecutionInfoResolver _resolveIntentExecutionInfoUsingCounterparts:]";
      v49 = 2114;
      v50 = launchableAppBundleId;
      v51 = 2114;
      v52 = bundleIdentifier;
      _os_log_error_impl(&dword_18E991000, v15, OS_LOG_TYPE_ERROR, "%s Matched multiple launchable counterpart applications for %{public}@, choosing %{public}@", buf, 0x20u);
    }
  }

  displayableAppBundleId = [v8 displayableAppBundleId];
  selfCopy = self;
  v19 = displayableAppBundleId;
  v20 = [(INExecutionInfoResolver *)selfCopy localIdentifiersForCounterpartIdentifier:displayableAppBundleId];
  v43 = v20;
  if ([v20 count] < 2)
  {
    anyObject2 = [v20 anyObject];
  }

  else
  {
    v21 = anyObject;
    v22 = v10;
    allObjects2 = [v20 allObjects];
    v24 = [allObjects2 sortedArrayUsingSelector:sel_compare_];
    anyObject2 = [v24 firstObject];

    v26 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v48 = "[INExecutionInfoResolver _resolveIntentExecutionInfoUsingCounterparts:]";
      v49 = 2114;
      v50 = v19;
      v51 = 2114;
      v52 = anyObject2;
      _os_log_error_impl(&dword_18E991000, v26, OS_LOG_TYPE_ERROR, "%s Matched multiple displayable counterpart applications for %{public}@, choosing %{public}@", buf, 0x20u);
    }

    v10 = v22;
    anyObject = v21;
  }

  if (anyObject | anyObject2)
  {
    v40 = [INIntentExecutionInfo alloc];
    preferredCallProvider = [v8 preferredCallProvider];
    bundleIdentifier2 = [anyObject bundleIdentifier];
    [v8 extensionBundleId];
    v28 = v27 = v9;
    [v8 uiExtensionBundleId];
    v29 = v42 = launchableAppBundleId;
    [anyObject URL];
    v41 = v19;
    v30 = anyObject;
    v31 = v10;
    v32 = v8;
    v34 = v33 = v7;
    v35 = [(INIntentExecutionInfo *)v40 _initWithIntentClassName:v27 preferredCallProvider:preferredCallProvider launchableAppBundleId:bundleIdentifier2 displayableAppBundleId:anyObject2 extensionBundleId:v28 uiExtensionBundleId:v29 containingAppBundleURL:v34];

    v7 = v33;
    v8 = v32;
    v10 = v31;
    anyObject = v30;
    v19 = v41;

    launchableAppBundleId = v42;
    v9 = v27;
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

id __72__INExecutionInfoResolver__resolveIntentExecutionInfoUsingCounterparts___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
  v5 = [v4 applicationState];
  v6 = [v5 isInstalled];

  v7 = 0;
  if (v6)
  {
    v8 = [INAppInfo appInfoWithApplicationRecord:v4];
    v9 = [v8 supportedActionsByExtensions];
    v10 = [v9 mutableCopy];

    v11 = [*(a1 + 32) extensionBundleId];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E69635D0]);
      v13 = [*(a1 + 32) extensionBundleId];
      v23 = 0;
      v14 = [v12 initWithBundleIdentifier:v13 error:&v23];
      v15 = v23;

      if (v14)
      {
        v16 = [v14 if_extensionAttributesDictionary];
        v17 = [v16 objectForKeyedSubscript:@"IntentsSupported"];

        [v10 addObjectsFromArray:v17];
      }

      else
      {
        v18 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "[INExecutionInfoResolver _resolveIntentExecutionInfoUsingCounterparts:]_block_invoke";
          v26 = 2114;
          v27 = v15;
          _os_log_error_impl(&dword_18E991000, v18, OS_LOG_TYPE_ERROR, "%s Failed to create application extension record: %{public}@", buf, 0x16u);
        }
      }
    }

    if (v10)
    {
      if ([v10 containsObject:*(a1 + 40)])
      {
        v19 = v4;
      }

      else
      {
        v19 = 0;
      }

      v7 = v19;
    }

    else
    {
      v20 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v25 = "[INExecutionInfoResolver _resolveIntentExecutionInfoUsingCounterparts:]_block_invoke";
        v26 = 2114;
        v27 = v3;
        v28 = 2114;
        v29 = 0;
        _os_log_error_impl(&dword_18E991000, v20, OS_LOG_TYPE_ERROR, "%s Failed to get the supported intents for %{public}@: %{public}@", buf, 0x20u);
      }

      v7 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __72__INExecutionInfoResolver__resolveIntentExecutionInfoUsingCounterparts___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 bundleIdentifier];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_resolveIntentExecutionInfoByLinkingExtensionToApp:(id)app
{
  appCopy = app;
  v5 = [(INExecutionInfoResolver *)self _resolveExecutionInfoByLinkingExtensionToApp:appCopy];
  v6 = v5;
  if (v5)
  {
    displayableAppBundleId = [v5 displayableAppBundleId];
    if ([appCopy preferredCallProvider] == 2)
    {

      displayableAppBundleId = @"com.apple.facetime";
    }

    v8 = [INIntentExecutionInfo alloc];
    intentClassName = [appCopy intentClassName];
    preferredCallProvider = [appCopy preferredCallProvider];
    launchableAppBundleId = [v6 launchableAppBundleId];
    extensionBundleId = [v6 extensionBundleId];
    uiExtensionBundleId = [appCopy uiExtensionBundleId];
    containingAppBundleURL = [appCopy containingAppBundleURL];
    v15 = [(INIntentExecutionInfo *)v8 _initWithIntentClassName:intentClassName preferredCallProvider:preferredCallProvider launchableAppBundleId:launchableAppBundleId displayableAppBundleId:displayableAppBundleId extensionBundleId:extensionBundleId uiExtensionBundleId:uiExtensionBundleId containingAppBundleURL:containingAppBundleURL];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_resolveIntentExecutionInfoBySwappingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(INExecutionInfoResolver *)self _resolveExecutionInfoBySwappingIdentifiers:identifiersCopy];
  if (v5)
  {
    v6 = [INIntentExecutionInfo alloc];
    intentClassName = [identifiersCopy intentClassName];
    preferredCallProvider = [identifiersCopy preferredCallProvider];
    launchableAppBundleId = [v5 launchableAppBundleId];
    displayableAppBundleId = [v5 displayableAppBundleId];
    extensionBundleId = [v5 extensionBundleId];
    uiExtensionBundleId = [identifiersCopy uiExtensionBundleId];
    containingAppBundleURL = [v5 containingAppBundleURL];
    v14 = [(INIntentExecutionInfo *)v6 _initWithIntentClassName:intentClassName preferredCallProvider:preferredCallProvider launchableAppBundleId:launchableAppBundleId displayableAppBundleId:displayableAppBundleId extensionBundleId:extensionBundleId uiExtensionBundleId:uiExtensionBundleId containingAppBundleURL:containingAppBundleURL];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_resolveExecutionInfoByLinkingExtensionToApp:(id)app
{
  appCopy = app;
  extensionBundleId = [appCopy extensionBundleId];
  if (extensionBundleId)
  {
    _frameworkMapper = [(INExecutionInfoResolver *)self _frameworkMapper];
    v7 = [_frameworkMapper launchableAppBundleIdentifierForSystemExtensionBundleIdentifier:extensionBundleId];

    _frameworkMapper2 = [(INExecutionInfoResolver *)self _frameworkMapper];
    v9 = [_frameworkMapper2 displayableAppBundleIdentifierForSystemExtensionBundleIdentifier:extensionBundleId];

    if (v9 | v7)
    {
      v10 = [INExecutionInfo alloc];
      containingAppBundleURL = [appCopy containingAppBundleURL];
      v12 = [(INExecutionInfo *)v10 _initWithLaunchableAppBundleId:v7 displayableAppBundleId:v9 containingAppBundleURL:containingAppBundleURL extensionBundleId:extensionBundleId];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_resolveExecutionInfoBySwappingIdentifiers:(id)identifiers
{
  launchableAppBundleId = [identifiers launchableAppBundleId];
  if (!launchableAppBundleId)
  {
    v7 = 0;
    goto LABEL_22;
  }

  if (INThisProcessCanMapLSDatabase(0))
  {
    v4 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:launchableAppBundleId error:0];
    if (v4)
    {
LABEL_4:
      containingBundleRecord = [v4 containingBundleRecord];
      if (containingBundleRecord)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = containingBundleRecord;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v13 = v6;

      v14 = [INExecutionInfo alloc];
      bundleIdentifier = [v13 bundleIdentifier];
      bundleIdentifier2 = [v13 bundleIdentifier];
      v17 = [v13 URL];

      bundleIdentifier3 = [v4 bundleIdentifier];
      v7 = [(INExecutionInfo *)v14 _initWithLaunchableAppBundleId:bundleIdentifier displayableAppBundleId:bundleIdentifier2 containingAppBundleURL:v17 extensionBundleId:bundleIdentifier3];

      goto LABEL_21;
    }
  }

  else
  {
    bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    bundleIdentifier4 = [bundleRecordForCurrentProcess bundleIdentifier];
    v10 = [launchableAppBundleId isEqualToString:bundleIdentifier4];

    if (v10)
    {
      v11 = bundleRecordForCurrentProcess;
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v4 = v12;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_21:

LABEL_22:

  return v7;
}

- (id)_resolveExecutionInfo:(id)info
{
  infoCopy = info;
  v5 = [(INExecutionInfoResolver *)self _resolveExecutionInfoBySwappingIdentifiers:infoCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = infoCopy;
  }

  v8 = v7;

  v9 = [(INExecutionInfoResolver *)self _resolveExecutionInfoByLinkingExtensionToApp:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  return v11;
}

- (id)counterpartIdentifiersForLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _counterpartMapper = [(INExecutionInfoResolver *)self _counterpartMapper];
  v6 = [_counterpartMapper counterpartIdentifiersForLocalIdentifier:identifierCopy];

  return v6;
}

- (id)localIdentifiersForCounterpartIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _counterpartMapper = [(INExecutionInfoResolver *)self _counterpartMapper];
  v6 = [_counterpartMapper localIdentifiersForCounterpartIdentifier:identifierCopy];

  return v6;
}

- (id)resolveUserActivityExecutionInfo:(id)info
{
  infoCopy = info;
  v5 = [(INExecutionInfoResolver *)self _resolveUserActivityExecutionInfoBySwappingIdentifiers:infoCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = infoCopy;
  }

  v8 = v7;

  v9 = [(INExecutionInfoResolver *)self _resolveUserActivityExecutionInfoByLinkingFileProvidersToFilesApp:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  v13 = [(INExecutionInfoResolver *)self _resolveUserActivityExecutionInfoUsingCounterparts:v12];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v16 = v15;

  return v15;
}

- (id)resolveIntentExecutionInfo:(id)info
{
  infoCopy = info;
  v5 = [(INExecutionInfoResolver *)self _resolveIntentExecutionInfoBySwappingIdentifiers:infoCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = infoCopy;
  }

  v8 = v7;

  v9 = [(INExecutionInfoResolver *)self _resolveIntentExecutionInfoByLinkingExtensionToApp:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  v13 = [(INExecutionInfoResolver *)self _resolveIntentExecutionInfoUsingCounterparts:v12];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v16 = v15;

  return v15;
}

+ (id)defaultResolver
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__INExecutionInfoResolver_defaultResolver__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultResolver_onceToken != -1)
  {
    dispatch_once(&defaultResolver_onceToken, block);
  }

  v2 = defaultResolver_resolver;

  return v2;
}

uint64_t __42__INExecutionInfoResolver_defaultResolver__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = defaultResolver_resolver;
  defaultResolver_resolver = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end