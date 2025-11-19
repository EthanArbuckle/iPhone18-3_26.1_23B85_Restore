@interface MKOfflineRegionsOverlayManager
@end

@implementation MKOfflineRegionsOverlayManager

uint64_t __42___MKOfflineRegionsOverlayManager__update__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A22E8] activeStateForCohortId:*(*(a1 + 32) + 24)];
  v3 = *(a1 + 32);
  v4 = v3[2];
  if (v4 != 1)
  {
    v5 = v2;
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = v2 >= 2u;
    }

    if (!v6)
    {
      return [v3 _setOverlay:0 customFeatures:0];
    }

    if (v2 != 2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v11 = v5;
        _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", buf, 8u);
        v3 = *(a1 + 32);
      }

      return [v3 _setOverlay:0 customFeatures:0];
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42___MKOfflineRegionsOverlayManager__update__block_invoke_2;
  v8[3] = &unk_1E76C6F08;
  v9 = v2;
  v8[4] = v3;
  return [v3 _fetchFullyLoadedSubscriptionsForState:v2 completionHandler:v8];
}

uint64_t __62___MKOfflineRegionsOverlayManager__setOverlay_customFeatures___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    [WeakRetained removeOverlay:*(*(a1 + 32) + 48)];

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 48), *(a1 + 40));
  v4 = [*(a1 + 48) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  v7 = *(a1 + 32);
  if (*(v7 + 48))
  {
    v8 = objc_loadWeakRetained((v7 + 8));
    [v8 _addInternalOverlay:*(*(a1 + 32) + 48) level:1 provider:?];

    v7 = *(a1 + 32);
  }

  v9 = *(v7 + 72);
  v10 = *MEMORY[0x1E69A1688];
  v11 = *(MEMORY[0x1E69A1688] + 8);
  v12 = *(MEMORY[0x1E69A1688] + 16);
  v13 = *(MEMORY[0x1E69A1688] + 24);

  return [v9 dataSource:v10 featuresDidChangeForRect:{v11, v12, v13}];
}

void __92___MKOfflineRegionsOverlayManager__fetchFullyLoadedSubscriptionsForState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [a2 _geo_filtered:&__block_literal_global_79];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = dispatch_group_create();
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        v9 = 0;
        do
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * v9);
          dispatch_group_enter(v5);
          v11 = *(*(a1 + 32) + 40);
          v12 = [v10 identifier];
          v13 = *(*(a1 + 32) + 32);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __92___MKOfflineRegionsOverlayManager__fetchFullyLoadedSubscriptionsForState_completionHandler___block_invoke_3;
          v23[3] = &unk_1E76C6F50;
          v24 = v19;
          v25 = v10;
          v26 = v5;
          [v11 fetchStateForSubscriptionWithIdentifier:v12 callbackQueue:v13 completionHandler:v23];

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    v14 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92___MKOfflineRegionsOverlayManager__fetchFullyLoadedSubscriptionsForState_completionHandler___block_invoke_4;
    block[3] = &unk_1E76CDA20;
    v15 = *(a1 + 40);
    v21 = v19;
    v22 = v15;
    v16 = v19;
    dispatch_group_notify(v5, v14, block);

    v4 = v17;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __92___MKOfflineRegionsOverlayManager__fetchFullyLoadedSubscriptionsForState_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && ([v6 loadState] - 1) <= 1)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __42___MKOfflineRegionsOverlayManager__update__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(a1 + 40) == [MEMORY[0x1E69A22E8] activeStateForCohortId:*(*(a1 + 32) + 24)])
  {
    if ([v6 count])
    {
      v3 = [v6 _geo_map:&__block_literal_global_4456];
      if ([v3 count])
      {
        v4 = [[MKMultiPolygon alloc] initWithPolygons:v3];
      }

      else
      {
        v4 = 0;
      }

      v5 = [v6 _geo_map:&__block_literal_global_72];
      [*(a1 + 32) _setOverlay:v4 customFeatures:v5];
    }

    else
    {
      [*(a1 + 32) _setOverlay:0 customFeatures:0];
    }
  }
}

_MKOfflineRegionCustomFeature *__42___MKOfflineRegionsOverlayManager__update__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[_MKOfflineRegionCustomFeature alloc] initWithSubscription:v2];

  return v3;
}

id __42___MKOfflineRegionsOverlayManager__update__block_invoke_3(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 region];
  [v3 northLat];
  v5 = v4;
  v6 = [v2 region];
  [v6 westLng];
  v25[0] = CLLocationCoordinate2DMake(v5, v7);
  v8 = [v2 region];
  [v8 northLat];
  v10 = v9;
  v11 = [v2 region];
  [v11 eastLng];
  v25[1] = CLLocationCoordinate2DMake(v10, v12);
  v13 = [v2 region];
  [v13 southLat];
  v15 = v14;
  v16 = [v2 region];
  [v16 eastLng];
  v25[2] = CLLocationCoordinate2DMake(v15, v17);
  v18 = [v2 region];
  [v18 southLat];
  v20 = v19;
  v21 = [v2 region];

  [v21 westLng];
  v25[3] = CLLocationCoordinate2DMake(v20, v22);

  v23 = [MKPolygon polygonWithCoordinates:v25 count:4];

  return v23;
}

void __51___MKOfflineRegionsOverlayManager_initWithMapView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

void __51___MKOfflineRegionsOverlayManager_initWithMapView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

@end