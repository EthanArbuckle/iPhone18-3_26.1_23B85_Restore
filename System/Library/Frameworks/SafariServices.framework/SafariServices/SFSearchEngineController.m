@interface SFSearchEngineController
@end

@implementation SFSearchEngineController

void __51___SFSearchEngineController__populateSearchEngines__block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 56) = _SFDeviceIsPad();
  v2 = [MEMORY[0x1E695E000] _web_preferredLanguageCode];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  [*(a1 + 32) _setEngines:0 defaultSearchEngineIndex:0x7FFFFFFFFFFFFFFFLL forPrivateBrowsing:0];
  [*(a1 + 32) _setEngines:0 defaultSearchEngineIndex:0x7FFFFFFFFFFFFFFFLL forPrivateBrowsing:1];
  v5 = [MEMORY[0x1E695E000] safari_browserSharedDefaults];
  v6 = [v5 stringForKey:@"SearchEngineStringSetting"];
  v35 = v5;
  v7 = [v5 stringForKey:@"PrivateSearchEngineStringSetting"];
  v8 = v7;
  if (v6)
  {
LABEL_4:
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (useBaiduAsPresetDefaultSearchEngine == 1)
  {
    v6 = *MEMORY[0x1E69C9988];
    goto LABEL_4;
  }

  v6 = 0;
  if (!v7)
  {
LABEL_5:
    v8 = v6;
  }

LABEL_6:
  [*(a1 + 32) _loadSystemPropertiesForSearchEngine:v6];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  [v9 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C9990]];
  v34 = v8;
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69C9998]];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  [*(a1 + 32) _addAllWebSearchEngineInfosToArray:v11 andAddUserVisibleWebSearchEngineInfosToArray:v10];
  v32 = [MEMORY[0x1E69C9830] sharedRecorder];
  v33 = v11;
  [v32 setSearchProviders:v11];
  v12 = v10;
  if (_SFDeviceRegionCodeIsChina())
  {
    v13 = MEMORY[0x1E69C99D0];
    v14 = MEMORY[0x1E69C8D60];
    v15 = MEMORY[0x1E69C99C8];
    v16 = MEMORY[0x1E69C8D68];
    v17 = MEMORY[0x1E69C99A8];
    v39 = *MEMORY[0x1E69C99A0];
    v18 = MEMORY[0x1E69C99B8];
    v19 = MEMORY[0x1E69C99C0];
  }

  else
  {
    v13 = MEMORY[0x1E69C99B8];
    v14 = MEMORY[0x1E69C99C0];
    v15 = MEMORY[0x1E69C8D60];
    v16 = MEMORY[0x1E69C99D0];
    v17 = MEMORY[0x1E69C99A0];
    v39 = *MEMORY[0x1E69C8D68];
    v18 = MEMORY[0x1E69C99A8];
    v19 = MEMORY[0x1E69C99C8];
  }

  v20 = *v18;
  v40 = *v19;
  v41 = v20;
  v21 = *v16;
  v42 = *v17;
  v43 = v21;
  v22 = *v14;
  v44 = *v15;
  v45 = v22;
  v23 = *MEMORY[0x1E69C99B0];
  v46 = *v13;
  v47 = v23;
  v48 = @"Wikipedia";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v25 = [(WBSSearchProvider *)_SFSearchEngineInfo sortedSearchProvidersInArray:v12 usingShortNameOrder:v24];

  v26 = [(WBSSearchProvider *)_SFSearchEngineInfo defaultProviderInUserVisibleProviders:v25 usingSettings:v9 forPrivateBrowsing:0];
  v27 = [(WBSSearchProvider *)_SFSearchEngineInfo defaultProviderInUserVisibleProviders:v25 usingSettings:v9 forPrivateBrowsing:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51___SFSearchEngineController__populateSearchEngines__block_invoke_2;
  aBlock[3] = &unk_1E84935D8;
  v38 = v25;
  v28 = v25;
  v29 = _Block_copy(aBlock);
  v30 = v29[2](v29, v26);
  [*(a1 + 32) _setEngines:v28 defaultSearchEngineIndex:v30 forPrivateBrowsing:0];
  [*(a1 + 32) _setEngines:v28 defaultSearchEngineIndex:v29[2](v29 forPrivateBrowsing:{v27), 1}];
  v31 = [v28 objectAtIndexedSubscript:v30];
  [v32 setDefaultSearchProvider:v31];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___SFSearchEngineController__populateSearchEngines__block_invoke_4;
  block[3] = &unk_1E848F810;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __51___SFSearchEngineController__populateSearchEngines__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 shortName];
  v4 = [*(a1 + 32) shortName];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __51___SFSearchEngineController__populateSearchEngines__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___SFSearchEngineController__populateSearchEngines__block_invoke_3;
  v8[3] = &unk_1E84935B0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8];

  return v6;
}

void __62___SFSearchEngineController__postDefaultSearchEngineDidChange__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SearchEngineControllerDefaultSearchEngineDidChange" object:*(a1 + 32)];

  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  v4 = [MEMORY[0x1E695E000] safari_notificationNameForUserDefaultsKey:@"PrivateSearchEngineStringSetting"];
  [v3 postNotificationName:v4 object:0 userInfo:0 deliverImmediately:1];

  v6 = [MEMORY[0x1E696ABB0] defaultCenter];
  v5 = [MEMORY[0x1E695E000] safari_notificationNameForUserDefaultsKey:@"SearchEngineStringSetting"];
  [v6 postNotificationName:v5 object:0 userInfo:0 deliverImmediately:1];
}

void __51___SFSearchEngineController__populateSearchEngines__block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SearchEngineControllerInstanceDidFinishPopulatingSearchEngines" object:*(a1 + 32)];
}

void __72___SFSearchEngineController__setDefaultSearchEngine_forPrivateBrowsing___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v8 = [v14 shortName];
  if (![v8 caseInsensitiveCompare:*(a1 + 32)])
  {
    v9 = 16;
    if (*(a1 + 48))
    {
      v9 = 40;
    }

    *(*(a1 + 40) + v9) = a3;
    v10 = [MEMORY[0x1E695E000] safari_browserSharedDefaults];
    v11 = v10;
    v12 = &_SFPrivateSearchEngineStringDefaultsKey;
    if (!*(a1 + 48))
    {
      v12 = _SFSearchEngineStringDefaultsKey;
    }

    [v10 setObject:*(a1 + 32) forKey:*v12];

    os_unfair_lock_lock(&defaultSearchEngineLock);
    v13 = 32;
    if (*(a1 + 48))
    {
      v13 = 48;
    }

    objc_storeStrong((*(a1 + 40) + v13), a2);
    os_unfair_lock_unlock(&defaultSearchEngineLock);
    [*(a1 + 40) _postDefaultSearchEngineDidChange];
    *a4 = 1;
  }
}

void __43___SFSearchEngineController_engineInfoFor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingEngineInfoFor:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __85___SFSearchEngineController__getEngines_defaultSearchEngineIndex_forPrivateBrowsing___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 8));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = 16;
    if (*(a1 + 56))
    {
      v3 = 40;
    }

    *v2 = *(*(a1 + 32) + v3);
  }
}

uint64_t __69___SFSearchEngineController_enginesAvailableForUnifiedFieldSearching__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 shortName];
  v3 = [v2 isEqualToString:@"Wikipedia"];

  return v3 ^ 1u;
}

@end