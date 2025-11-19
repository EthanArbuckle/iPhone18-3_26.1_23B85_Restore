@interface MKQuickRouteManager
@end

@implementation MKQuickRouteManager

void __74___MKQuickRouteManager_requestNewETAForPreferredTransportType_completion___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v5 _sortedETAs];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          if ([v14 status])
          {
            v15 = [v14 transportType];
            if (v15 > 5)
            {
              v16 = 1;
            }

            else
            {
              v16 = qword_1A30F7810[v15];
            }

            v11 |= v16 == a1[6];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v17 = [*(a1[4] + 8) etaResults];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    v19 = [v17 objectForKeyedSubscript:v18];
    if (!v19 && (v11 & 1) == 0)
    {
      if ([v6 transportType] == a1[6])
      {
        [v6 expectedTravelTime];
        v21 = v20;

        if (v21 <= 0.0)
        {
LABEL_24:
          v7 = *(a1[5] + 16);
          goto LABEL_25;
        }

        [v6 distance];
        v23 = v22;
        [v6 expectedTravelTime];
        v17 = [_MKRouteETA routeETAWithDistance:a1[6] travelTime:v23 transportType:v24];
        v18 = [*(a1[4] + 8) etaResults];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
        [v18 setObject:v17 forKeyedSubscript:v19];
      }

      else
      {
        v19 = 0;
      }
    }

    goto LABEL_24;
  }

  v7 = *(a1[5] + 16);
LABEL_25:
  v7();
}

void __33___MKQuickRouteManager_updateETA__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4[3];
  [v4 originCoordinate];
  v8 = v6;
  v9 = v7;
  v10 = *(a1 + 32);
  if (v5 == a2 && (*(v10 + 56) & 1) == 0)
  {
    if (![*(v10 + 8) shouldUpdateEstimatedTravelTimeForNewOrigin:{v6, v7}])
    {
      return;
    }

    v10 = *(a1 + 32);
  }

  *(v10 + 56) = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v11 = *(*(a1 + 32) + 16);
  if (v11)
  {
    [v11 travelTime];
    v13 = v12 < 0.0 || v5 != a2;
  }

  else
  {
    v13 = 1;
  }

  v57 = v13;
  [*(*(a1 + 32) + 8) expireETAsIfNoLongerValid];
  if ([*(a1 + 32) haveETAsForPreferredTransportType:a2] && (objc_msgSend(*(a1 + 32), "bestETAForPreferredDirectionsType:", a2), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    objc_storeStrong((*(a1 + 32) + 16), v14);
    *(*(a1 + 32) + 24) = a2;
    v15 = [*(a1 + 32) view];
    [v15 quickRouteManager:*(a1 + 32) didUpdateETA:*(*(a1 + 32) + 16) error:*(*(a1 + 32) + 32) animated:*(v55 + 24)];
  }

  else
  {
    v14 = [_MKRouteETA routeETAWithDistance:a2 travelTime:-1.0 transportType:-1.0];
    v16 = [*(a1 + 32) isUsingCurrentLocationForOrigin];
    v17 = fabs(v9) <= 180.0;
    v18 = fabs(v8) <= 90.0 && v17;
    [*(a1 + 32) destinationCoordinate];
    v20 = fabs(v19) <= 180.0;
    v22 = fabs(v21) <= 90.0 && v20;
    if (v18 && v22)
    {
      GEOCalculateDistance();
      v24 = v23;
      [*(a1 + 32) _maxDistanceToRequestETA];
      v26 = v24 > v25 && v25 > 0.0;
      if ([*(a1 + 32) _transportTypeShouldBeSmart])
      {
        [v14 setTransportType:{objc_msgSend(*(a1 + 32), "guessTransportTypeForDistance:preferredDirectionsType:", a2, v24)}];
      }
    }

    else
    {
      v26 = 0;
    }

    v15 = [*(a1 + 32) mapItem];
    v27 = [*(a1 + 32) originMapItem];
    v28 = [v27 isEqual:v15];
    if (v15)
    {
      v29 = v22;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      v30 = v16 & ~v18 | v26 | v28;
      v31 = *(a1 + 32);
      if (v30)
      {
        v32 = [v31 view];
        [v32 quickRouteManager:*(a1 + 32) didUpdateETA:v14 error:0 animated:0];
      }

      else
      {
        if (*(v31 + 16))
        {
          if (v5 == a2)
          {
            [*(v31 + 16) setTravelTime:-1.0];
            v34 = [*(a1 + 32) view];
            [v34 quickRouteManager:*(a1 + 32) didUpdateETA:*(*(a1 + 32) + 16) error:0 animated:0];
          }

          else
          {
            v34 = [v31 view];
            [v34 quickRouteManager:*(a1 + 32) didUpdateETA:v14 error:0 animated:0];
          }

          *(v55 + 24) = 1;
          v31 = *(a1 + 32);
        }

        v48 = 0;
        v49 = &v48;
        v50 = 0x2020000000;
        v51 = 0;
        *(v31 + 24) = a2;
        v35 = *(a1 + 32);
        v39 = MEMORY[0x1E69E9820];
        v40 = 3221225472;
        v41 = __33___MKQuickRouteManager_updateETA__block_invoke_3;
        v42 = &unk_1E76C9C10;
        v43 = v35;
        v47 = a2;
        v36 = v14;
        v44 = v36;
        v45 = &v54;
        v46 = &v48;
        [v35 requestNewETAForPreferredTransportType:a2 completion:&v39];
        if ((v49[3] & 1) == 0)
        {
          v37 = *(a1 + 32);
          if (!v37[2])
          {
            v38 = [v37 view];
            [v38 quickRouteManager:*(a1 + 32) didUpdateETA:v36 error:0 animated:0];
          }
        }

        _Block_object_dispose(&v48, 8);
      }
    }

    else
    {
      v33 = dispatch_time(0, 150000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __33___MKQuickRouteManager_updateETA__block_invoke_2;
      block[3] = &unk_1E76CD810;
      block[4] = *(a1 + 32);
      v53 = v14;
      dispatch_after(v33, MEMORY[0x1E69E96A0], block);
    }
  }

  _Block_object_dispose(&v54, 8);
}

void __33___MKQuickRouteManager_updateETA__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mapItem];

  if (!v2)
  {
    v3 = [*(a1 + 32) view];
    [v3 quickRouteManager:*(a1 + 32) didUpdateETA:*(a1 + 40) error:0 animated:0];
  }
}

void __33___MKQuickRouteManager_updateETA__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6 || ([*(a1 + 32) bestETAForPreferredDirectionsType:*(a1 + 64)], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = v4;
    objc_storeStrong((*(a1 + 32) + 16), v4);
  }

  v5 = [*(a1 + 32) view];
  [v5 quickRouteManager:*(a1 + 32) didUpdateETA:v3 error:v6 animated:*(*(*(a1 + 48) + 8) + 24)];

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

@end