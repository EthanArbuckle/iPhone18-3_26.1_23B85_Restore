@interface _WKAttributedStringWebViewCache
+ (RetainPtr<WKWebView>)retrieveOrCreateWebView;
+ (id)cache;
+ (id)configuration;
+ (void)cacheWebView:(id)view;
+ (void)clearConfiguration;
+ (void)clearConfigurationAndRaiseExceptionIfNecessary:(id)necessary;
+ (void)invalidateGlobalConfigurationIfNeeded:(id)needed;
+ (void)maybeConsumeBundlePaths:(id)paths;
+ (void)maybeUpdateShouldAllowNetworkLoads:(id)loads;
+ (void)maybeUpdateSourceApplicationBundleIdentifier:(id)identifier;
+ (void)purgeAllWebViews;
+ (void)purgeSingleWebView;
+ (void)resetPurgeDelay;
+ (void)validateEntry:(id)entry;
@end

@implementation _WKAttributedStringWebViewCache

+ (id)cache
{
  if (byte_1ED6423B9 == 1)
  {
    return qword_1ED6423D0;
  }

  result = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{3, v2, v3}];
  qword_1ED6423D0 = result;
  byte_1ED6423B9 = 1;
  return result;
}

+ (id)configuration
{
  if (byte_1ED6423BB)
  {
    if (qword_1ED6423E0)
    {
      return qword_1ED6423E0;
    }
  }

  else
  {
    qword_1ED6423E0 = 0;
    byte_1ED6423BB = 1;
  }

  v2 = objc_alloc_init(WKWebViewConfiguration);
  v3 = qword_1ED6423E0;
  qword_1ED6423E0 = v2;
  if (v3)
  {
  }

  if (![readOnlyAccessPaths() count])
  {
    v6 = objc_alloc_init(WKProcessPool);
    v5 = v6;
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = v6;
    v4 = v5;
    goto LABEL_11;
  }

  if ([readOnlyAccessPaths() count] < 3)
  {
    v4 = objc_alloc_init(_WKProcessPoolConfiguration);
    [(_WKProcessPoolConfiguration *)v4 setAdditionalReadAccessAllowedURLs:readOnlyAccessPaths()];
    v5 = [[WKProcessPool alloc] _initWithConfiguration:v4];
    if (!v4)
    {
LABEL_12:
      if (byte_1ED6423BD)
      {
        v8 = qword_1ED6423F0;
        if (qword_1ED6423F0)
        {
          v9 = qword_1ED6423F0;
          initNonPersistentConfiguration = [[_WKWebsiteDataStoreConfiguration alloc] initNonPersistentConfiguration];
          [initNonPersistentConfiguration setSourceApplicationBundleIdentifier:v8];
          v11 = [[WKWebsiteDataStore alloc] _initWithConfiguration:initNonPersistentConfiguration];
          if (initNonPersistentConfiguration)
          {
          }

LABEL_21:
          [qword_1ED6423E0 setProcessPool:v5];
          [qword_1ED6423E0 setWebsiteDataStore:v11];
          [qword_1ED6423E0 setMediaTypesRequiringUserActionForPlayback:-1];
          [qword_1ED6423E0 _setAllowsJavaScriptMarkup:0];
          [qword_1ED6423E0 _setAllowsMetaRefresh:0];
          [qword_1ED6423E0 _setAttachmentElementEnabled:1];
          [objc_msgSend(qword_1ED6423E0 "preferences")];
          [qword_1ED6423E0 _setInvisibleAutoplayNotPermitted:1];
          [qword_1ED6423E0 _setMediaDataLoadsAutomatically:0];
          [qword_1ED6423E0 _setNeedsStorageAccessFromFileURLsQuirk:0];
          [qword_1ED6423E0 setAllowsInlineMediaPlayback:0];
          [qword_1ED6423E0 _setClientNavigationsRunAtForegroundPriority:1];
          [objc_msgSend(qword_1ED6423E0 "preferences")];
          if ((shouldAllowNetworkLoads & 1) == 0)
          {
            [qword_1ED6423E0 _setAllowedNetworkHosts:{objc_msgSend(MEMORY[0x1E695DFD8], "set")}];
          }

          if (v11)
          {
          }

          if (v5)
          {
          }

          return qword_1ED6423E0;
        }
      }

      else
      {
        qword_1ED6423F0 = 0;
        byte_1ED6423BD = 1;
      }

      v12 = +[WKWebsiteDataStore nonPersistentDataStore];
      v11 = v12;
      if (v12)
      {
        v13 = v12;
      }

      goto LABEL_21;
    }

LABEL_11:

    goto LABEL_12;
  }

  result = 174;
  __break(0xC471u);
  return result;
}

+ (void)clearConfiguration
{
  if (byte_1ED6423BB)
  {
    v2 = qword_1ED6423E0;
    qword_1ED6423E0 = 0;
    if (v2)
    {
    }
  }

  else
  {
    byte_1ED6423BB = 1;
    qword_1ED6423E0 = 0;
  }
}

+ (void)clearConfigurationAndRaiseExceptionIfNecessary:(id)necessary
{
  if (necessary)
  {
    if ([readOnlyAccessPaths() count])
    {
      [readOnlyAccessPaths() removeAllObjects];
      [self clearConfiguration];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", necessary}];
  }
}

+ (void)validateEntry:(id)entry
{
  v4 = WTF::dynamic_objc_cast<NSURL>(entry);
  if (v4)
  {
    if ([v4 isFileURL])
    {
      v5 = 0;
    }

    else
    {
      v5 = @"_WKReadAccessFileURLsOption requires its NSURL objects to be file URLs.";
    }
  }

  else
  {
    v5 = @"The NSArray associated with _WKReadAccessFileURLsOption may only contain NSURL objects.";
  }

  [self clearConfigurationAndRaiseExceptionIfNecessary:v5];
}

+ (void)maybeUpdateShouldAllowNetworkLoads:(id)loads
{
  if (!loads)
  {
    if (shouldAllowNetworkLoads)
    {
      return;
    }

    bOOLValue2 = 1;
    goto LABEL_11;
  }

  loadsCopy = loads;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    loadsCopy = 0;
  }

  if (!loadsCopy)
  {
    [self clearConfigurationAndRaiseExceptionIfNecessary:@"The value associated with _WKAllowNetworkLoadsOption must be an NSNumber."];
  }

  bOOLValue = [loadsCopy BOOLValue];
  if (shouldAllowNetworkLoads != bOOLValue)
  {
    bOOLValue2 = [loadsCopy BOOLValue];
LABEL_11:
    shouldAllowNetworkLoads = bOOLValue2;

    [self clearConfiguration];
  }
}

+ (void)maybeUpdateSourceApplicationBundleIdentifier:(id)identifier
{
  if (!identifier)
  {
    if ((byte_1ED6423BD & 1) == 0)
    {
      qword_1ED6423F0 = 0;
      byte_1ED6423BD = 1;
      return;
    }

    v7 = qword_1ED6423F0;
    if (!qword_1ED6423F0)
    {
      return;
    }

    qword_1ED6423F0 = 0;
    goto LABEL_17;
  }

  identifierCopy = identifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    identifierCopy = 0;
  }

  if (!identifierCopy)
  {
    [self clearConfigurationAndRaiseExceptionIfNecessary:@"The value associated with _WKSourceApplicationBundleIdentifierOption must be an NSString."];
  }

  if (byte_1ED6423BD == 1)
  {
    v5 = qword_1ED6423F0;
  }

  else
  {
    v5 = 0;
    qword_1ED6423F0 = 0;
    byte_1ED6423BD = 1;
  }

  if (([v5 isEqualToString:identifierCopy] & 1) == 0)
  {
    if (byte_1ED6423BD)
    {
      if (!identifierCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {
      qword_1ED6423F0 = 0;
      byte_1ED6423BD = 1;
      if (!identifierCopy)
      {
LABEL_12:
        v7 = qword_1ED6423F0;
        qword_1ED6423F0 = identifierCopy;
        if (!v7)
        {
LABEL_18:

          [self clearConfiguration];
          return;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v6 = identifierCopy;
    goto LABEL_12;
  }
}

+ (void)maybeConsumeBundlePaths:(id)paths
{
  pathsCopy = paths;
  v17 = *MEMORY[0x1E69E9840];
  if (!paths)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    pathsCopy = 0;
LABEL_7:
    v6 = @"The value associated with _WKReadAccessFileURLsOption must be an NSArray of NSURL objects.";
    v5 = 1;
    goto LABEL_8;
  }

  v5 = 0;
  if ([pathsCopy count] <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = @"_WKReadAccessFileURLsOption may have at most two additional directories.";
  }

LABEL_8:
  [self clearConfigurationAndRaiseExceptionIfNecessary:v6];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(pathsCopy);
        }

        [self validateEntry:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (([pathsCopy isEqualToArray:readOnlyAccessPaths()] & 1) == 0)
  {
    OnlyAccessPaths = readOnlyAccessPaths();
    if (v5)
    {
      [OnlyAccessPaths removeAllObjects];
    }

    else
    {
      [OnlyAccessPaths setArray:pathsCopy];
    }

    [self clearConfiguration];
  }
}

+ (void)invalidateGlobalConfigurationIfNeeded:(id)needed
{
  v5 = [needed objectForKeyedSubscript:@"_WKReadAccessFileURLsOption"];
  if (v5)
  {
    [self maybeConsumeBundlePaths:v5];
  }

  [self maybeUpdateShouldAllowNetworkLoads:{objc_msgSend(needed, "objectForKeyedSubscript:", @"_WKAllowNetworkLoadsOption"}];
  v6 = [needed objectForKeyedSubscript:@"_WKSourceApplicationBundleIdentifierOption"];

  [self maybeUpdateSourceApplicationBundleIdentifier:v6];
}

+ (RetainPtr<WKWebView>)retrieveOrCreateWebView
{
  v4 = v2;
  [self resetPurgeDelay];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___WKAttributedStringWebViewCache_retrieveOrCreateWebView__block_invoke;
  block[3] = &unk_1E7631230;
  block[4] = self;
  if (+[_WKAttributedStringWebViewCache retrieveOrCreateWebView]::onceToken != -1)
  {
    dispatch_once(&+[_WKAttributedStringWebViewCache retrieveOrCreateWebView]::onceToken, block);
  }

  cache = [self cache];
  if ([cache count])
  {
    lastObject = [cache lastObject];
    *v4 = lastObject;
    if (lastObject)
    {
      v7 = lastObject;
    }

    return [cache removeLastObject];
  }

  else
  {
    v8 = -[WKWebView initWithFrame:configuration:]([WKWebView alloc], "initWithFrame:configuration:", [self configuration], 0.0, 0.0, 800.0, 600.0);
    *v4 = v8;
  }

  return v8;
}

+ (void)cacheWebView:(id)view
{
  cache = [self cache];
  if ([cache count] <= 2)
  {

    [cache addObject:view];
  }
}

+ (void)resetPurgeDelay
{
  if (byte_1ED6423BA == 1)
  {
    v3 = qword_1ED6423D8;
  }

  else
  {
    v3 = sel_purgeSingleWebView;
    qword_1ED6423D8 = sel_purgeSingleWebView;
    byte_1ED6423BA = 1;
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:v3 object:0];
  v4 = qword_1ED6423D8;

  [self performSelector:v4 withObject:0 afterDelay:15.0];
}

+ (void)purgeSingleWebView
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  cache = [self cache];
  if ([cache count])
  {
    [objc_msgSend(cache "lastObject")];
    [cache removeLastObject];
    if ([cache count])
    {

      [self performSelector:a2 withObject:0 afterDelay:15.0];
    }

    else
    {

      [self clearConfiguration];
    }
  }
}

+ (void)purgeAllWebViews
{
  cache = [self cache];
  if ([cache count])
  {
    [cache makeObjectsPerformSelector:sel__close];
    [cache removeAllObjects];

    [self clearConfiguration];
  }
}

@end