@interface _MXExtensionProvider
+ (id)sharedProvider;
- (BOOL)_disableExtension:(id)extension error:(id *)error;
- (BOOL)_enableExtension:(id)extension error:(id *)error;
- (_MXExtensionProvider)init;
- (id)_extensionsByFilteringBlacklistedExtensionsFromArray:(id)array;
- (id)_intentClassFilter:(id)filter;
- (id)addExtensionsUpdateHandler:(id)handler;
- (void)_beginMatchingExtensionsIfNeeded;
- (void)_endMatchingExtensionsIfNeeded;
- (void)_restartMatchingExtensionsForDefaultsChange;
- (void)dealloc;
- (void)imageForKey:(id)key completion:(id)completion;
- (void)loadImageForKey:(id)key withBlock:(id)block;
@end

@implementation _MXExtensionProvider

+ (id)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, &__block_literal_global_18678);
  }

  v3 = sharedProvider_sharedInstance;

  return v3;
}

- (_MXExtensionProvider)init
{
  v13.receiver = self;
  v13.super_class = _MXExtensionProvider;
  v2 = [(_MXExtensionProvider *)&v13 init];
  if (v2)
  {
    v3 = [[_MXExtensionServiceCenter alloc] initWithExtensionProvider:v2];
    serviceCenter = v2->_serviceCenter;
    v2->_serviceCenter = v3;

    v5 = [[_MXExtensionDispatchCenter alloc] initWithExtensionProvider:v2];
    dispatchCenter = v2->_dispatchCenter;
    v2->_dispatchCenter = v5;

    v7 = objc_alloc_init(_MXExtensionMatchingMerger);
    merger = v2->_merger;
    v2->_merger = v7;

    v9 = objc_alloc_init(_MXAssetStorage);
    assetStorage = v2->_assetStorage;
    v2->_assetStorage = v9;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__restartMatchingExtensionsForDefaultsChange name:*MEMORY[0x1E69A1698] object:0];
  }

  return v2;
}

- (void)_beginMatchingExtensionsIfNeeded
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (!self->_matchingContext)
  {
    if (!self->_extensionMatchingClass)
    {
      self->_extensionMatchingClass = objc_opt_class();
    }

    v29 = *MEMORY[0x1E696A2F8];
    v28[0] = @"com.apple.maps.ui-services";
    v28[1] = @"com.apple.maps.services";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v30[0] = v3;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    objc_initWeak(&location, self);
    extensionMatchingClass = self->_extensionMatchingClass;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __56___MXExtensionProvider__beginMatchingExtensionsIfNeeded__block_invoke;
    v25[3] = &unk_1E76CA508;
    objc_copyWeak(&v26, &location);
    v5 = [(objc_class *)extensionMatchingClass beginMatchingExtensionsWithAttributes:v20 completion:v25];
    matchingContext = self->_matchingContext;
    self->_matchingContext = v5;

    v7 = +[_MXExtensionManager restaurantQueueingIntentClassNames];
    v8 = +[_MXExtensionManager restaurantReservationIntentClassNames];
    array = [MEMORY[0x1E695DF70] array];
    [array addObjectsFromArray:v7];
    [array addObjectsFromArray:v8];
    [array addObjectsFromArray:&unk_1F1612180];
    v10 = [array copy];
    v11 = [(_MXExtensionProvider *)self _intentClassFilter:v10];

    v12 = [(objc_class *)self->_extensionMatchingClass _intents_extensionMatchingAttributesForIntents:v11];
    v13 = self->_extensionMatchingClass;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __56___MXExtensionProvider__beginMatchingExtensionsIfNeeded__block_invoke_2;
    v23[3] = &unk_1E76CA508;
    objc_copyWeak(&v24, &location);
    v14 = [(objc_class *)v13 beginMatchingExtensionsWithAttributes:v12 completion:v23];
    intentNonUIMatchingContext = self->_intentNonUIMatchingContext;
    self->_intentNonUIMatchingContext = v14;

    v16 = [(objc_class *)self->_extensionMatchingClass _intents_uiExtensionMatchingAttributesForIntents:v11];
    v17 = self->_extensionMatchingClass;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56___MXExtensionProvider__beginMatchingExtensionsIfNeeded__block_invoke_3;
    v21[3] = &unk_1E76CA508;
    objc_copyWeak(&v22, &location);
    v18 = [(objc_class *)v17 beginMatchingExtensionsWithAttributes:v16 completion:v21];
    intentUIMatchingContext = self->_intentUIMatchingContext;
    self->_intentUIMatchingContext = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (void)loadImageForKey:(id)key withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  if (blockCopy)
  {
    assetStorage = [(_MXExtensionProvider *)self assetStorage];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50___MXExtensionProvider_loadImageForKey_withBlock___block_invoke;
    v9[3] = &unk_1E76CAA70;
    v9[4] = self;
    v11 = blockCopy;
    v10 = keyCopy;
    [assetStorage loadAssetForKey:v10 withBlock:v9];
  }
}

- (void)imageForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  assetStorage = [(_MXExtensionProvider *)self assetStorage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47___MXExtensionProvider_imageForKey_completion___block_invoke;
  v10[3] = &unk_1E76C8E00;
  v11 = completionCopy;
  v9 = completionCopy;
  [assetStorage fetchAssetForKey:keyCopy completion:v10];
}

- (BOOL)_disableExtension:(id)extension error:(id *)error
{
  extensionCopy = extension;
  LODWORD(dispatchCenter) = [extensionCopy isEnabled] ^ 1;
  if (extensionCopy)
  {
    if ([extensionCopy isEnabled])
    {
      extension = [extensionCopy extension];
      v9 = [extension attemptOptOut:error];

      if (v9)
      {
        dispatchCenter = self->_dispatchCenter;
        _currentExtensions = [(_MXExtensionProvider *)self _currentExtensions];
        [(_MXExtensionDispatchCenter *)dispatchCenter dispatchExtensions:_currentExtensions error:0];

        LOBYTE(dispatchCenter) = 1;
      }
    }
  }

  return dispatchCenter;
}

- (BOOL)_enableExtension:(id)extension error:(id *)error
{
  extensionCopy = extension;
  isEnabled = [extensionCopy isEnabled];
  if (extensionCopy)
  {
    if (([extensionCopy isEnabled] & 1) == 0)
    {
      extension = [extensionCopy extension];
      v9 = [extension attemptOptIn:error];

      if (v9)
      {
        dispatchCenter = self->_dispatchCenter;
        _currentExtensions = [(_MXExtensionProvider *)self _currentExtensions];
        [(_MXExtensionDispatchCenter *)dispatchCenter dispatchExtensions:_currentExtensions error:0];

        isEnabled = 1;
      }
    }
  }

  return isEnabled;
}

- (void)_restartMatchingExtensionsForDefaultsChange
{
  if (self->_matchingContext)
  {
    [(_MXExtensionProvider *)self _endMatchingExtensionsIfNeeded];
    serviceCenter = [(_MXExtensionProvider *)self serviceCenter];
    [serviceCenter _clearExtensions];

    merger = [(_MXExtensionProvider *)self merger];
    [merger clearExtensions];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    blacklistedExtensions = selfCopy->_blacklistedExtensions;
    selfCopy->_blacklistedExtensions = 0;

    blacklistedContainingApplications = selfCopy->_blacklistedContainingApplications;
    selfCopy->_blacklistedContainingApplications = 0;

    objc_sync_exit(selfCopy);

    [(_MXExtensionProvider *)selfCopy _beginMatchingExtensionsIfNeeded];
  }
}

- (void)_endMatchingExtensionsIfNeeded
{
  matchingContext = self->_matchingContext;
  self->_matchingContext = 0;
  v8 = matchingContext;

  [(objc_class *)self->_extensionMatchingClass endMatchingExtensions:v8];
  intentNonUIMatchingContext = self->_intentNonUIMatchingContext;
  self->_intentNonUIMatchingContext = 0;
  v5 = intentNonUIMatchingContext;

  [(objc_class *)self->_extensionMatchingClass endMatchingExtensions:v5];
  intentUIMatchingContext = self->_intentUIMatchingContext;
  self->_intentUIMatchingContext = 0;
  v7 = intentUIMatchingContext;

  [(objc_class *)self->_extensionMatchingClass endMatchingExtensions:v7];
}

- (id)_intentClassFilter:(id)filter
{
  v3 = MEMORY[0x1E695DF70];
  filterCopy = filter;
  array = [v3 array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43___MXExtensionProvider__intentClassFilter___block_invoke;
  v8[3] = &unk_1E76C8DD8;
  v6 = array;
  v9 = v6;
  [filterCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

- (id)_extensionsByFilteringBlacklistedExtensionsFromArray:(id)array
{
  v54 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  blacklistedExtensions = selfCopy->_blacklistedExtensions;
  if (!blacklistedExtensions)
  {
    v7 = GEOConfigGetDictionary();
    v8 = [_MXBundleBlacklistEntry blacklistEntriesFromDefaultsValue:v7];
    v9 = selfCopy->_blacklistedExtensions;
    selfCopy->_blacklistedExtensions = v8;

    blacklistedExtensions = selfCopy->_blacklistedExtensions;
  }

  v38 = [(NSArray *)blacklistedExtensions copy];
  blacklistedContainingApplications = selfCopy->_blacklistedContainingApplications;
  if (!blacklistedContainingApplications)
  {
    v11 = GEOConfigGetDictionary();
    v12 = [_MXBundleBlacklistEntry blacklistEntriesFromDefaultsValue:v11];
    v13 = selfCopy->_blacklistedContainingApplications;
    selfCopy->_blacklistedContainingApplications = v12;

    blacklistedContainingApplications = selfCopy->_blacklistedContainingApplications;
  }

  v36 = [(NSArray *)blacklistedContainingApplications copy];
  objc_sync_exit(selfCopy);

  v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = arrayCopy;
  v14 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v14)
  {
    v37 = *v48;
    do
    {
      v15 = 0;
      do
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v47 + 1) + 8 * v15);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v17 = v38;
        v18 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v18)
        {
          v19 = *v44;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v44 != v19)
              {
                objc_enumerationMutation(v17);
              }

              if (([*(*(&v43 + 1) + 8 * i) isExtensionAllowed:v16] & 1) == 0)
              {

                goto LABEL_30;
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        if ([v36 count])
        {
          v21 = objc_alloc(MEMORY[0x1E69635D0]);
          _plugIn = [v16 _plugIn];
          v23 = [_plugIn valueForKey:@"uuid"];
          v24 = [v21 initWithUUID:v23 error:0];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v25 = v36;
          v26 = [v25 countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v26)
          {
            v27 = *v40;
            while (2)
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v40 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(*(&v39 + 1) + 8 * j);
                containingBundleRecord = [v24 containingBundleRecord];
                LODWORD(v29) = [v29 isBundleRecordAllowed:containingBundleRecord];

                if (!v29)
                {

                  goto LABEL_30;
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v39 objects:v51 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }
          }
        }

        [v34 addObject:v16];
LABEL_30:
        ++v15;
      }

      while (v15 != v14);
      v31 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      v14 = v31;
    }

    while (v31);
  }

  v32 = [v34 copy];

  return v32;
}

- (id)addExtensionsUpdateHandler:(id)handler
{
  v4 = [(_MXExtensionDispatchCenter *)self->_dispatchCenter addExtensionsUpdateHandler:handler];
  [(_MXExtensionProvider *)self _beginMatchingExtensionsIfNeeded];

  return v4;
}

- (void)dealloc
{
  dispatchCenter = self->_dispatchCenter;
  self->_dispatchCenter = 0;

  [(_MXExtensionProvider *)self _endMatchingExtensionsIfNeeded];
  v4.receiver = self;
  v4.super_class = _MXExtensionProvider;
  [(_MXExtensionProvider *)&v4 dealloc];
}

@end