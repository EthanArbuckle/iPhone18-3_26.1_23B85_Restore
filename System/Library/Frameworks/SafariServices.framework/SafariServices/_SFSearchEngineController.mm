@interface _SFSearchEngineController
+ (_SFSearchEngineController)sharedInstance;
+ (_SFSearchEngineController)sharedInstanceIfAvailable;
+ (void)_initializeSharedInstance;
- (BOOL)isChinaDevice;
- (NSArray)engines;
- (NSArray)enginesAvailableForUnifiedFieldSearching;
- (NSArray)searchEngineNames;
- (NSString)description;
- (_SFSearchEngineController)init;
- (id)_existingEngineInfoFor:(id)for;
- (id)_specialSearchEngines;
- (id)defaultSearchEngineForPrivateBrowsing:(BOOL)browsing;
- (id)defaultSearchEngineIfPopulatedForPrivateBrowsing:(BOOL)browsing;
- (id)defaultSearchEngineNameForPrivateBrowsing:(BOOL)browsing;
- (id)engineInfoFor:(id)for;
- (id)engineInfoForScriptName:(id)name;
- (id)safeSearchRequestForSearchRequest:(id)request;
- (id)userVisibleQueryFromSearchURL:(id)l allowQueryThatLooksLikeURL:(BOOL)rL;
- (void)_addAllWebSearchEngineInfosToArray:(id)array andAddUserVisibleWebSearchEngineInfosToArray:(id)toArray;
- (void)_getEngines:(id *)engines defaultSearchEngineIndex:(unint64_t *)index forPrivateBrowsing:(BOOL)browsing;
- (void)_loadSystemPropertiesForSearchEngine:(id)engine;
- (void)_populateSearchEngines;
- (void)_postDefaultSearchEngineDidChange;
- (void)_setDefaultSearchEngine:(id)engine forPrivateBrowsing:(BOOL)browsing;
- (void)_setEngines:(id)engines defaultSearchEngineIndex:(unint64_t)index forPrivateBrowsing:(BOOL)browsing;
- (void)reloadSearchEngines;
- (void)setDefaultSearchEngine:(id)engine forPrivateBrowsing:(BOOL)browsing;
@end

@implementation _SFSearchEngineController

+ (_SFSearchEngineController)sharedInstance
{
  v2 = searchEngineController;
  if (!searchEngineController)
  {
    [self _initializeSharedInstance];
    v2 = searchEngineController;
  }

  v3 = v2;

  return v3;
}

+ (void)_initializeSharedInstance
{
  obj = self;
  objc_sync_enter(obj);
  if (!searchEngineController)
  {
    v2 = objc_alloc_init(obj);
    v3 = searchEngineController;
    searchEngineController = v2;
  }

  objc_sync_exit(obj);
}

- (_SFSearchEngineController)init
{
  v7.receiver = self;
  v7.super_class = _SFSearchEngineController;
  v2 = [(_SFSearchEngineController *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mobilesafari._SFSearchEngineController", 0);
    searchEnginesQueue = v2->_searchEnginesQueue;
    v2->_searchEnginesQueue = v3;

    v2->_defaultSearchEngineIndex = 0x7FFFFFFFFFFFFFFFLL;
    v2->_privateSearchEngineIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(_SFSearchEngineController *)v2 _populateSearchEngines];
    v5 = v2;
  }

  return v2;
}

- (void)_populateSearchEngines
{
  searchEnginesQueue = self->_searchEnginesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___SFSearchEngineController__populateSearchEngines__block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(searchEnginesQueue, block);
}

- (BOOL)isChinaDevice
{
  v2 = CPGetDeviceRegionCode();

  return [v2 isEqualToString:@"CH"];
}

- (id)_specialSearchEngines
{
  v14[5] = *MEMORY[0x1E69E9840];
  v13[0] = *MEMORY[0x1E69C9968];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v4 = *MEMORY[0x1E69C9970];
  v14[0] = v3;
  v14[1] = @"org.wikipedia";
  v5 = *MEMORY[0x1E69C9980];
  v13[1] = v4;
  v13[2] = v5;
  v6 = *MEMORY[0x1E69C9960];
  v14[2] = @"Wikipedia";
  v14[3] = @"Wikipedia";
  v7 = *MEMORY[0x1E69C9978];
  v13[3] = v6;
  v13[4] = v7;
  v14[4] = @"https://{primaryLanguageCode}.wikipedia.org/?search={searchTerms}";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];

  v9 = [(WBSSearchProvider *)[_SFSearchEngineInfo alloc] initWithDictionary:v8 usingContext:self];
  v12 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];

  return v10;
}

- (void)_postDefaultSearchEngineDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___SFSearchEngineController__postDefaultSearchEngineDidChange__block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (_SFSearchEngineController)sharedInstanceIfAvailable
{
  v2 = searchEngineController;
  if (searchEngineController)
  {
    v3 = searchEngineController;
  }

  else
  {
    v5 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___SFSearchEngineController_sharedInstanceIfAvailable__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_async(v5, block);
  }

  return v2;
}

- (void)reloadSearchEngines
{
  os_unfair_lock_lock(&defaultSearchEngineLock);
  defaultSearchEngine = self->_defaultSearchEngine;
  self->_defaultSearchEngine = 0;

  privateSearchEngine = self->_privateSearchEngine;
  self->_privateSearchEngine = 0;

  os_unfair_lock_unlock(&defaultSearchEngineLock);
  +[_SFSearchEngineController loadSystemLanguageProperties];

  [(_SFSearchEngineController *)self _populateSearchEngines];
}

- (void)_addAllWebSearchEngineInfosToArray:(id)array andAddUserVisibleWebSearchEngineInfosToArray:(id)toArray
{
  v24 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  toArrayCopy = toArray;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = WBSSearchProviderDefinitions();
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = [_SFSearchEngineInfo alloc];
        v15 = [(WBSSearchProvider *)v14 initWithDictionary:v13 usingContext:self, v19];
        if (v15)
        {
          [arrayCopy addObject:v15];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  _specialSearchEngines = [(_SFSearchEngineController *)self _specialSearchEngines];
  v17 = [arrayCopy arrayByAddingObjectsFromArray:_specialSearchEngines];
  v18 = [(WBSSearchProvider *)_SFSearchEngineInfo userVisibleProvidersInAllProviders:v17 usingContext:self];
  [toArrayCopy addObjectsFromArray:v18];
}

- (NSString)description
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  engines = [(_SFSearchEngineController *)self engines];
  [v3 appendFormat:@"SearchEngineController with %lu engines.", objc_msgSend(engines, "count")];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = engines;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 appendFormat:@"\n\t%@", *(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)setDefaultSearchEngine:(id)engine forPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  engineCopy = engine;
  os_unfair_lock_lock(&defaultSearchEngineLock);
  v7 = 32;
  if (browsingCopy)
  {
    v7 = 48;
  }

  v8 = *(&self->super.isa + v7);
  *(&self->super.isa + v7) = 0;

  os_unfair_lock_unlock(&defaultSearchEngineLock);
  searchEnginesQueue = self->_searchEnginesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___SFSearchEngineController_setDefaultSearchEngine_forPrivateBrowsing___block_invoke;
  block[3] = &unk_1E848FC98;
  block[4] = self;
  v12 = engineCopy;
  v13 = browsingCopy;
  v10 = engineCopy;
  dispatch_async(searchEnginesQueue, block);
}

- (void)_setDefaultSearchEngine:(id)engine forPrivateBrowsing:(BOOL)browsing
{
  engineCopy = engine;
  searchEngines = self->_searchEngines;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___SFSearchEngineController__setDefaultSearchEngine_forPrivateBrowsing___block_invoke;
  v9[3] = &unk_1E8493600;
  browsingCopy = browsing;
  v10 = engineCopy;
  selfCopy = self;
  v8 = engineCopy;
  [(NSArray *)searchEngines enumerateObjectsUsingBlock:v9];
}

- (id)defaultSearchEngineForPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  os_unfair_lock_lock(&defaultSearchEngineLock);
  v5 = 32;
  if (browsingCopy)
  {
    v5 = 48;
  }

  v6 = *(&self->super.isa + v5);
  os_unfair_lock_unlock(&defaultSearchEngineLock);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    [(_SFSearchEngineController *)self _getEngines:&v11 defaultSearchEngineIndex:&v12 forPrivateBrowsing:browsingCopy];
    v8 = v11;
    v9 = v8;
    v7 = 0;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v8 objectAtIndexedSubscript:?];
    }
  }

  return v7;
}

- (id)defaultSearchEngineIfPopulatedForPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  os_unfair_lock_lock(&defaultSearchEngineLock);
  v5 = 32;
  if (browsingCopy)
  {
    v5 = 48;
  }

  v6 = *(&self->super.isa + v5);
  os_unfair_lock_unlock(&defaultSearchEngineLock);

  return v6;
}

- (id)_existingEngineInfoFor:(id)for
{
  v18 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_searchEngines;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        shortName = [v9 shortName];
        v11 = [shortName caseInsensitiveCompare:forCopy];

        if (!v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)engineInfoFor:(id)for
{
  forCopy = for;
  v5 = forCopy;
  if (forCopy && [forCopy length])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__4;
    v18 = __Block_byref_object_dispose__4;
    v19 = 0;
    searchEnginesQueue = self->_searchEnginesQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43___SFSearchEngineController_engineInfoFor___block_invoke;
    block[3] = &unk_1E8493628;
    v13 = &v14;
    block[4] = self;
    v12 = v5;
    dispatch_sync(searchEnginesQueue, block);
    v7 = v15[5];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [(_SFSearchEngineController *)self defaultSearchEngineForPrivateBrowsing:0];
    }

    v9 = v8;

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = [(_SFSearchEngineController *)self defaultSearchEngineForPrivateBrowsing:0];
  }

  return v9;
}

- (id)engineInfoForScriptName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    engines = [(_SFSearchEngineController *)self engines];
    v6 = [engines countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(engines);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          scriptName = [v9 scriptName];
          v11 = [scriptName caseInsensitiveCompare:nameCopy];

          if (!v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [engines countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_loadSystemPropertiesForSearchEngine:(id)engine
{
  v41[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF58];
  engineCopy = engine;
  currentLocale = [v4 currentLocale];
  countryCode = [currentLocale countryCode];
  v8 = [countryCode copy];
  countryCode = self->_countryCode;
  self->_countryCode = v8;

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject = [preferredLanguages firstObject];
  lowercaseString = [firstObject lowercaseString];

  if (lowercaseString)
  {
    v13 = lowercaseString;
  }

  else
  {
    v13 = @"en";
  }

  v14 = WBSSearchProviderBaiduTrackingCodeTemplateParameterValues();
  v15 = [v14 mutableCopy];

  v41[0] = v13;
  v40[0] = @"languageCode";
  v40[1] = @"primaryLanguageCode";
  v16 = [(__CFString *)v13 substringToIndex:2];
  v41[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  [v15 addEntriesFromDictionary:v17];

  v18 = [v15 copy];
  templateParameterValues = self->_templateParameterValues;
  self->_templateParameterValues = v18;

  LODWORD(v16) = [engineCopy isEqualToString:*MEMORY[0x1E69C99C8]];
  if (v16 && ![(_SFSearchEngineController *)self isChinaDevice]&& !self->_carrierTemplateParameterValues)
  {
    v20 = [objc_alloc(MEMORY[0x1E6965090]) initWithSlot:1];
    v21 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
    v37 = 0;
    v22 = [v21 copyMobileSubscriberCountryCode:v20 error:&v37];
    v23 = v37;
    if ([v22 length])
    {
      v34 = v22;
      v36 = v23;
      v24 = [v21 copyMobileSubscriberNetworkCode:v20 error:&v36];
      v25 = v36;

      if ([v24 length])
      {
        v33 = v24;
        v35 = v25;
        v32 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
        v26 = [v21 copyCarrierBundleValue:v20 key:@"CarrierName" bundleType:? error:?];
        v23 = v35;

        if (v26)
        {
          v38[0] = @"carrierName";
          v38[1] = @"carrierCountryCode";
          v22 = v34;
          v39[0] = v26;
          v39[1] = v34;
          v38[2] = @"carrierNetworkCode";
          v39[2] = v33;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
          carrierTemplateParameterValues = self->_carrierTemplateParameterValues;
          self->_carrierTemplateParameterValues = v27;
        }

        else
        {
          v22 = v34;
          if (v23)
          {
            v31 = WBS_LOG_CHANNEL_PREFIXSearchEngine();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [(_SFSearchEngineController *)v31 _loadSystemPropertiesForSearchEngine:v23];
            }
          }
        }

        v24 = v33;
      }

      else
      {
        if (v25)
        {
          v30 = WBS_LOG_CHANNEL_PREFIXSearchEngine();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [(_SFSearchEngineController *)v30 _loadSystemPropertiesForSearchEngine:v25];
          }

          v23 = v25;
        }

        else
        {
          v23 = 0;
        }

        v22 = v34;
      }
    }

    else if (v23)
    {
      v29 = WBS_LOG_CHANNEL_PREFIXSearchEngine();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(_SFSearchEngineController *)v29 _loadSystemPropertiesForSearchEngine:v23];
      }
    }
  }
}

- (id)safeSearchRequestForSearchRequest:(id)request
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [requestCopy URL];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  engines = [(_SFSearchEngineController *)self engines];
  v7 = [engines countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(engines);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 urlIsValidSearch:v5])
        {
          v11 = [v10 safeSearchURLForSearchURL:v5];
          if (v11 && ([v5 isEqual:v11] & 1) == 0)
          {
            v7 = [requestCopy mutableCopy];
            [v7 setURL:v11];
            [v7 setAttribution:1];
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_15;
        }
      }

      v7 = [engines countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v7;
}

- (id)userVisibleQueryFromSearchURL:(id)l allowQueryThatLooksLikeURL:(BOOL)rL
{
  rLCopy = rL;
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  engines = [(_SFSearchEngineController *)self engines];
  v8 = [engines countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(engines);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) userVisibleQueryFromSearchURL:lCopy allowQueryThatLooksLikeURL:rLCopy];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [engines countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)_setEngines:(id)engines defaultSearchEngineIndex:(unint64_t)index forPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  enginesCopy = engines;
  if (browsingCopy)
  {
    v9 = 40;
  }

  else
  {
    v9 = 16;
  }

  v18 = enginesCopy;
  if (*(&self->super.isa + v9) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(NSArray *)self->_searchEngines objectAtIndexedSubscript:?];
    enginesCopy = v18;
  }

  if (self->_searchEngines != enginesCopy)
  {
    v11 = [(NSArray *)v18 copy];
    searchEngines = self->_searchEngines;
    self->_searchEngines = v11;
  }

  if (*(&self->super.isa + v9) != index)
  {
    *(&self->super.isa + v9) = index;
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v14 = [(NSArray *)self->_searchEngines objectAtIndexedSubscript:index];
    os_unfair_lock_lock(&defaultSearchEngineLock);
    if (browsingCopy)
    {
      v15 = 48;
    }

    else
    {
      v15 = 32;
    }

    v16 = *(&self->super.isa + v15);
    *(&self->super.isa + v15) = v14;
    v17 = v14;

    v13 = *(&self->super.isa + v15);
    os_unfair_lock_unlock(&defaultSearchEngineLock);
    if (v13 && (WBSIsEqual() & 1) == 0)
    {
      [(_SFSearchEngineController *)self _postDefaultSearchEngineDidChange];
    }
  }
}

- (void)_getEngines:(id *)engines defaultSearchEngineIndex:(unint64_t *)index forPrivateBrowsing:(BOOL)browsing
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  searchEnginesQueue = self->_searchEnginesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85___SFSearchEngineController__getEngines_defaultSearchEngineIndex_forPrivateBrowsing___block_invoke;
  v7[3] = &unk_1E8493650;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = index;
  browsingCopy = browsing;
  dispatch_sync(searchEnginesQueue, v7);
  if (engines)
  {
    *engines = v10[5];
  }

  _Block_object_dispose(&v9, 8);
}

- (NSArray)engines
{
  v4 = 0;
  [(_SFSearchEngineController *)self _getEngines:&v4 defaultSearchEngineIndex:0 forPrivateBrowsing:0];
  v2 = v4;

  return v2;
}

- (NSArray)enginesAvailableForUnifiedFieldSearching
{
  engines = [(_SFSearchEngineController *)self engines];
  v3 = [engines safari_filterObjectsUsingBlock:&__block_literal_global_33];

  return v3;
}

- (NSArray)searchEngineNames
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  engines = [(_SFSearchEngineController *)self engines];
  v5 = [engines countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(engines);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        shortName = [v9 shortName];
        v11 = [shortName isEqualToString:@"Wikipedia"];

        if ((v11 & 1) == 0)
        {
          shortName2 = [v9 shortName];
          [array addObject:shortName2];
        }
      }

      v6 = [engines countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [array copy];

  return v13;
}

- (id)defaultSearchEngineNameForPrivateBrowsing:(BOOL)browsing
{
  v3 = [(_SFSearchEngineController *)self defaultSearchEngineForPrivateBrowsing:browsing];
  shortName = [v3 shortName];

  return shortName;
}

- (void)_loadSystemPropertiesForSearchEngine:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Unable to retrieve carrier name with error: %{public}@", v7, v8, v9, v10, 2u);
}

- (void)_loadSystemPropertiesForSearchEngine:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Unable to retrieve carrier network code with error: %{public}@", v7, v8, v9, v10, 2u);
}

- (void)_loadSystemPropertiesForSearchEngine:(void *)a1 .cold.3(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Unable to retrieve carrier country code with error: %{public}@", v7, v8, v9, v10, 2u);
}

@end