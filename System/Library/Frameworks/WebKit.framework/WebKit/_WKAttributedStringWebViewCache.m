@interface _WKAttributedStringWebViewCache
+ (RetainPtr<WKWebView>)retrieveOrCreateWebView;
+ (id)cache;
+ (id)configuration;
+ (void)cacheWebView:(id)a3;
+ (void)clearConfiguration;
+ (void)clearConfigurationAndRaiseExceptionIfNecessary:(id)a3;
+ (void)invalidateGlobalConfigurationIfNeeded:(id)a3;
+ (void)maybeConsumeBundlePaths:(id)a3;
+ (void)maybeUpdateShouldAllowNetworkLoads:(id)a3;
+ (void)maybeUpdateSourceApplicationBundleIdentifier:(id)a3;
+ (void)purgeAllWebViews;
+ (void)purgeSingleWebView;
+ (void)resetPurgeDelay;
+ (void)validateEntry:(id)a3;
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
          v10 = [[_WKWebsiteDataStoreConfiguration alloc] initNonPersistentConfiguration];
          [v10 setSourceApplicationBundleIdentifier:v8];
          v11 = [[WKWebsiteDataStore alloc] _initWithConfiguration:v10];
          if (v10)
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

+ (void)clearConfigurationAndRaiseExceptionIfNecessary:(id)a3
{
  if (a3)
  {
    if ([readOnlyAccessPaths() count])
    {
      [readOnlyAccessPaths() removeAllObjects];
      [a1 clearConfiguration];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", a3}];
  }
}

+ (void)validateEntry:(id)a3
{
  v4 = WTF::dynamic_objc_cast<NSURL>(a3);
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

  [a1 clearConfigurationAndRaiseExceptionIfNecessary:v5];
}

+ (void)maybeUpdateShouldAllowNetworkLoads:(id)a3
{
  if (!a3)
  {
    if (shouldAllowNetworkLoads)
    {
      return;
    }

    v6 = 1;
    goto LABEL_11;
  }

  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    [a1 clearConfigurationAndRaiseExceptionIfNecessary:@"The value associated with _WKAllowNetworkLoadsOption must be an NSNumber."];
  }

  v5 = [v4 BOOLValue];
  if (shouldAllowNetworkLoads != v5)
  {
    v6 = [v4 BOOLValue];
LABEL_11:
    shouldAllowNetworkLoads = v6;

    [a1 clearConfiguration];
  }
}

+ (void)maybeUpdateSourceApplicationBundleIdentifier:(id)a3
{
  if (!a3)
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

  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    [a1 clearConfigurationAndRaiseExceptionIfNecessary:@"The value associated with _WKSourceApplicationBundleIdentifierOption must be an NSString."];
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

  if (([v5 isEqualToString:v4] & 1) == 0)
  {
    if (byte_1ED6423BD)
    {
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      qword_1ED6423F0 = 0;
      byte_1ED6423BD = 1;
      if (!v4)
      {
LABEL_12:
        v7 = qword_1ED6423F0;
        qword_1ED6423F0 = v4;
        if (!v7)
        {
LABEL_18:

          [a1 clearConfiguration];
          return;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v6 = v4;
    goto LABEL_12;
  }
}

+ (void)maybeConsumeBundlePaths:(id)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = 0;
LABEL_7:
    v6 = @"The value associated with _WKReadAccessFileURLsOption must be an NSArray of NSURL objects.";
    v5 = 1;
    goto LABEL_8;
  }

  v5 = 0;
  if ([v3 count] <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = @"_WKReadAccessFileURLsOption may have at most two additional directories.";
  }

LABEL_8:
  [a1 clearConfigurationAndRaiseExceptionIfNecessary:v6];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        [a1 validateEntry:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (([v3 isEqualToArray:readOnlyAccessPaths()] & 1) == 0)
  {
    OnlyAccessPaths = readOnlyAccessPaths();
    if (v5)
    {
      [OnlyAccessPaths removeAllObjects];
    }

    else
    {
      [OnlyAccessPaths setArray:v3];
    }

    [a1 clearConfiguration];
  }
}

+ (void)invalidateGlobalConfigurationIfNeeded:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"_WKReadAccessFileURLsOption"];
  if (v5)
  {
    [a1 maybeConsumeBundlePaths:v5];
  }

  [a1 maybeUpdateShouldAllowNetworkLoads:{objc_msgSend(a3, "objectForKeyedSubscript:", @"_WKAllowNetworkLoadsOption"}];
  v6 = [a3 objectForKeyedSubscript:@"_WKSourceApplicationBundleIdentifierOption"];

  [a1 maybeUpdateSourceApplicationBundleIdentifier:v6];
}

+ (RetainPtr<WKWebView>)retrieveOrCreateWebView
{
  v4 = v2;
  [a1 resetPurgeDelay];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___WKAttributedStringWebViewCache_retrieveOrCreateWebView__block_invoke;
  block[3] = &unk_1E7631230;
  block[4] = a1;
  if (+[_WKAttributedStringWebViewCache retrieveOrCreateWebView]::onceToken != -1)
  {
    dispatch_once(&+[_WKAttributedStringWebViewCache retrieveOrCreateWebView]::onceToken, block);
  }

  v5 = [a1 cache];
  if ([v5 count])
  {
    v6 = [v5 lastObject];
    *v4 = v6;
    if (v6)
    {
      v7 = v6;
    }

    return [v5 removeLastObject];
  }

  else
  {
    v8 = -[WKWebView initWithFrame:configuration:]([WKWebView alloc], "initWithFrame:configuration:", [a1 configuration], 0.0, 0.0, 800.0, 600.0);
    *v4 = v8;
  }

  return v8;
}

+ (void)cacheWebView:(id)a3
{
  v4 = [a1 cache];
  if ([v4 count] <= 2)
  {

    [v4 addObject:a3];
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

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:a1 selector:v3 object:0];
  v4 = qword_1ED6423D8;

  [a1 performSelector:v4 withObject:0 afterDelay:15.0];
}

+ (void)purgeSingleWebView
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:a1 selector:a2 object:0];
  v4 = [a1 cache];
  if ([v4 count])
  {
    [objc_msgSend(v4 "lastObject")];
    [v4 removeLastObject];
    if ([v4 count])
    {

      [a1 performSelector:a2 withObject:0 afterDelay:15.0];
    }

    else
    {

      [a1 clearConfiguration];
    }
  }
}

+ (void)purgeAllWebViews
{
  v3 = [a1 cache];
  if ([v3 count])
  {
    [v3 makeObjectsPerformSelector:sel__close];
    [v3 removeAllObjects];

    [a1 clearConfiguration];
  }
}

@end