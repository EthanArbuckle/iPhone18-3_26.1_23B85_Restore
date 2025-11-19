@interface MKRouteETAFetcher
@end

@implementation MKRouteETAFetcher

void __88___MKRouteETAFetcher_requestNewETAForTransportType_additionalTransportTypes_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;

  if (a1[5] == *(a1[4] + 88))
  {
    *(a1[4] + 32) = CFAbsoluteTimeGetCurrent();
    v9 = a1[4];
    v10 = [v5 source];
    [v10 _coordinate];
    *(v9 + 16) = v11;
    *(v9 + 24) = v12;

    v13 = a1[4];
    if (v6)
    {
      *(v13 + 56) = 1;
      (*(a1[6] + 16))();
    }

    else
    {
      v25 = v5;
      *(v13 + 56) = 0;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = [v5 _sortedETAs];
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v26 + 1) + 8 * i);
            v20 = [v19 transportType];
            if (v20 > 5)
            {
              v21 = 1;
            }

            else
            {
              v21 = qword_1A30F7810[v20];
            }

            v22 = +[_MKRouteETA routeETAWithDistance:travelTime:transportType:status:](_MKRouteETA, "routeETAWithDistance:travelTime:transportType:status:", v21, [v19 status], objc_msgSend(v19, "distance"), objc_msgSend(v19, "travelTimeBestEstimate"));
            v23 = *(a1[4] + 8);
            v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
            [v23 setObject:v22 forKeyedSubscript:v24];
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v16);
      }

      v5 = v25;
      (*(a1[6] + 16))();
      v6 = 0;
    }
  }
}

@end