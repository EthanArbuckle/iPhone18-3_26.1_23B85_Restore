@interface MKURLSerializer
+ (id)stringForDirectionsType:(unint64_t)a3;
+ (id)stringForMapType:(unint64_t)a3;
- (id)mapItemsFromUrl:(id)a3 options:(id *)a4;
- (id)urlForDirectionsFromMapItem:(id)a3 toMapItem:(id)a4 transportType:(unint64_t)a5 options:(id)a6;
- (id)urlForDirectionsWithMapItems:(id)a3 transportType:(unint64_t)a4 options:(id)a5;
- (id)urlForOpeningMapItems:(id)a3 options:(id)a4;
@end

@implementation MKURLSerializer

+ (id)stringForDirectionsType:(unint64_t)a3
{
  v4 = @"p";
  IsEnabled_URLUnification = MapsFeature_IsEnabled_URLUnification();
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v6 = @"r";
      v7 = @"transit";
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_13;
      }

      v6 = @"c";
      v7 = @"cycling";
    }
  }

  else if (a3 == 1)
  {
    v6 = @"d";
    v7 = @"driving";
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_13;
    }

    v6 = @"w";
    v7 = @"walking";
  }

  if (IsEnabled_URLUnification)
  {
    v6 = v7;
  }

  v4 = v6;
LABEL_13:

  return v4;
}

+ (id)stringForMapType:(unint64_t)a3
{
  v4 = @"h";
  IsEnabled_URLUnification = MapsFeature_IsEnabled_URLUnification();
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4uLL:
        goto LABEL_14;
      case 0x65uLL:
        v4 = @"t";
        goto LABEL_14;
      case 0x68uLL:
        v6 = @"r";
        v7 = @"transit";
        goto LABEL_11;
    }

LABEL_10:
    v6 = @"m";
    v7 = @"explore";
    goto LABEL_11;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      goto LABEL_14;
    }

    if (a3 != 3)
    {
      goto LABEL_10;
    }
  }

  v6 = @"k";
  v7 = @"satellite";
LABEL_11:
  if (IsEnabled_URLUnification)
  {
    v6 = v7;
  }

  v4 = v6;
LABEL_14:

  return v4;
}

- (id)mapItemsFromUrl:(id)a3 options:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v43 = 0;
  v44 = 0;
  v6 = [MEMORY[0x1E69A21F0] mapItemsFromURL:v5 currentLocationIndices:&v44 options:&v43];
  v7 = v44;
  v8 = v43;
  if (v6)
  {
    v27 = v5;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count") + 1}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v40;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[MKMapItem alloc] initWithGeoMapItem:*(*(&v39 + 1) + 8 * i) isPlaceHolderPlace:0];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v12);
    }

    if ([v7 count])
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __43__MKURLSerializer_mapItemsFromUrl_options___block_invoke;
      v37[3] = &unk_1E76CCB20;
      v38 = v9;
      [v7 enumerateIndexesUsingBlock:v37];
    }

    v5 = v27;
    if (a4)
    {
      *a4 = [v8 launchOptions];
    }

    v16 = v7;
    v17 = v8;
  }

  else
  {
    v35 = v8;
    v36 = v7;
    v18 = [MEMORY[0x1E69A2348] _placesFromURL:v5 currentLocationIndices:&v36 options:&v35];
    v16 = v36;

    v17 = v35;
    if (v18)
    {
      v26 = a4;
      v28 = v5;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count") + 1}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v31 objects:v45 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v32;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [[MKMapItem alloc] initWithPlace:*(*(&v31 + 1) + 8 * j)];
            [v9 addObject:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v31 objects:v45 count:16];
        }

        while (v21);
      }

      if ([v16 count])
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __43__MKURLSerializer_mapItemsFromUrl_options___block_invoke_2;
        v29[3] = &unk_1E76CCB20;
        v30 = v9;
        [v16 enumerateIndexesUsingBlock:v29];
      }

      if (v26)
      {
        *v26 = [v17 launchOptions];
      }

      v5 = v28;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void __43__MKURLSerializer_mapItemsFromUrl_options___block_invoke(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) count] >= a2)
  {
    v6 = *(a1 + 32);
    v7 = +[MKMapItem mapItemForCurrentLocation];
    [v6 insertObject:v7 atIndex:a2];
  }

  else
  {
    *a3 = 1;
  }
}

void __43__MKURLSerializer_mapItemsFromUrl_options___block_invoke_2(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if ([*(a1 + 32) count] >= a2)
  {
    v6 = *(a1 + 32);
    v7 = +[MKMapItem mapItemForCurrentLocation];
    [v6 insertObject:v7 atIndex:a2];
  }

  else
  {
    *a3 = 1;
  }
}

- (id)urlForDirectionsWithMapItems:(id)a3 transportType:(unint64_t)a4 options:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([v7 count] < 2)
  {
    v9 = 0;
    goto LABEL_30;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __70__MKURLSerializer_urlForDirectionsWithMapItems_transportType_options___block_invoke;
  v27[3] = &unk_1E76CCAF8;
  v10 = v7;
  v28 = v10;
  v29 = &v30;
  [v10 enumerateObjectsUsingBlock:v27];
  if ((v31[3] & 1) == 0)
  {
    if (v8)
    {
      v11 = [objc_alloc(MEMORY[0x1E69A26E0]) initWithLaunchOptions:v8];
    }

    else
    {
      v11 = 0;
    }

    if (a4 - 1 > 7)
    {
      v12 = 4;
      if (!v11)
      {
LABEL_12:
        v11 = objc_alloc_init(MEMORY[0x1E69A26E0]);
      }
    }

    else
    {
      v12 = dword_1A30F7AE8[a4 - 1];
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (([v11 hasTransportType] & 1) == 0)
    {
      [v11 setTransportType:v12];
    }

    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v22 = v11;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v15)
    {
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          if ([v18 isCurrentLocation])
          {
            v19 = [MEMORY[0x1E69A2348] _urlRepresentationForCurrentLocation];
            [v13 addObject:v19];
          }

          else
          {
            v20 = [v18 place];

            if (!v20)
            {

              v9 = 0;
              goto LABEL_28;
            }

            v19 = [v18 place];
            [v13 addObject:v19];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v23 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v9 = [MEMORY[0x1E69A2348] _urlForDirectionsWithWaypoints:v13 options:v22];
LABEL_28:

    goto LABEL_29;
  }

  v9 = 0;
LABEL_29:

  _Block_object_dispose(&v30, 8);
LABEL_30:

  return v9;
}

void __70__MKURLSerializer_urlForDirectionsWithMapItems_transportType_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = a3 - 1;
    v8 = a2;
    v9 = [v6 objectAtIndexedSubscript:v7];
    LODWORD(v6) = [v8 _isEquivalentURLRepresentationTo:?];

    if (v6)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (id)urlForDirectionsFromMapItem:(id)a3 toMapItem:(id)a4 transportType:(unint64_t)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x1E695DF70];
  v13 = a6;
  v14 = [[v12 alloc] initWithCapacity:2];
  v15 = v14;
  if (v10)
  {
    [v14 addObject:v10];
  }

  if (v11)
  {
    [v15 addObject:v11];
  }

  v16 = [v15 copy];
  v17 = [(MKURLSerializer *)self urlForDirectionsWithMapItems:v16 transportType:a5 options:v13];

  return v17;
}

- (id)urlForOpeningMapItems:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  if (v7)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = [v5 objectAtIndexedSubscript:v10];
      if (([v9 containsObject:v13] & 1) == 0)
      {
        [v9 addObject:v13];
        if (v11 & 1 | (([v13 isCurrentLocation] & 1) == 0))
        {
          v14 = [v13 place];

          if (v14)
          {
            v15 = [v13 place];
            [v8 addObject:v15];
          }
        }

        else
        {
          v11 = 1;
          v12 = v10;
        }
      }

      ++v10;
    }

    while (v7 != v10);
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    if (v6)
    {
LABEL_10:
      v16 = [objc_alloc(MEMORY[0x1E69A26E0]) initWithLaunchOptions:v6];
      goto LABEL_13;
    }
  }

  v16 = 0;
LABEL_13:
  if (v11)
  {
    [MEMORY[0x1E69A2348] _urlToShowCurrentLocationAndPlaces:v8 currentLocationIndex:v12 options:v16];
  }

  else
  {
    [MEMORY[0x1E69A2348] _urlToShowPlaces:v8 options:v16];
  }
  v17 = ;

  return v17;
}

@end