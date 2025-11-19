@interface MKURLHandler
@end

@implementation MKURLHandler

void __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_45(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  if ([v12 _hasResolvablePartialInformation])
  {
    goto LABEL_2;
  }

  v8 = [*(*(*(a1 + 32) + 8) + 40) _geoAddress];
  v9 = [v8 structuredAddress];
  if (v9)
  {
  }

  else
  {
    v10 = [*(*(*(a1 + 32) + 8) + 40) _geoAddress];
    v11 = [v10 formattedAddressLinesCount];

    if (v11)
    {
LABEL_2:
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

void __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5 || ![v10 count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    [WeakRetained URLHandler:*(a1 + 40) launchIntoDirectionsWithMapItems:*(a1 + 32) options:*(a1 + 48) context:*(a1 + 56)];
  }

  else
  {
    WeakRetained = [*(a1 + 32) mutableCopy];
    v7 = *(*(*(a1 + 64) + 8) + 24);
    v8 = [v10 firstObject];
    [WeakRetained replaceObjectAtIndex:v7 withObject:v8];

    v9 = objc_loadWeakRetained((*(a1 + 40) + 8));
    [v9 URLHandler:*(a1 + 40) launchIntoDirectionsWithMapItems:WeakRetained options:*(a1 + 48) context:*(a1 + 56)];
  }
}

void __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5 || ![v10 count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    [WeakRetained URLHandler:*(a1 + 40) launchIntoDirectionsWithMapItems:*(a1 + 32) options:*(a1 + 48) context:*(a1 + 56)];
  }

  else
  {
    WeakRetained = [*(a1 + 32) mutableCopy];
    v7 = *(*(*(a1 + 64) + 8) + 24);
    v8 = [v10 firstObject];
    [WeakRetained replaceObjectAtIndex:v7 withObject:v8];

    v9 = objc_loadWeakRetained((*(a1 + 40) + 8));
    [v9 URLHandler:*(a1 + 40) launchIntoDirectionsWithMapItems:WeakRetained options:*(a1 + 48) context:*(a1 + 56)];
  }
}

void __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_4(uint64_t a1)
{
  v2 = +[MKMapService sharedService];
  v3 = [*(a1 + 32) _geoAddress];
  v4 = [v3 singleLineAddress];
  v5 = [v2 ticketForForwardGeocodeString:v4 traits:0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_5;
  v11[3] = &unk_1E76C7088;
  v10 = *(a1 + 40);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [v5 submitWithHandler:v11 networkActivity:0];
}

void __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_7(void *a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    [WeakRetained URLHandler:a1[4] launchIntoSearchWithMapItems:a1[7] options:a1[5] context:a1[6]];
  }

  else
  {
    WeakRetained = [v5 firstObject];
    v8 = objc_loadWeakRetained((a1[4] + 8));
    v9 = a1[4];
    v11[0] = WeakRetained;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v8 URLHandler:v9 launchIntoShowMapItems:v10 options:a1[5] context:a1[6]];
  }
}

void __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke_5(void *a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    [WeakRetained URLHandler:a1[4] launchIntoSearchWithMapItems:a1[7] options:a1[5] context:a1[6]];
  }

  else
  {
    WeakRetained = [v5 firstObject];
    v8 = objc_loadWeakRetained((a1[4] + 8));
    v9 = a1[4];
    v11[0] = WeakRetained;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v8 URLHandler:v9 launchIntoShowMapItems:v10 options:a1[5] context:a1[6]];
  }
}

uint64_t __75___MKURLHandler__handleMapItems_withOptions_url_sourceApplication_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __68___MKURLHandler__handleMapItemHandlesURL_sourceApplication_context___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___MKURLHandler__handleMapItemHandlesURL_sourceApplication_context___block_invoke_2;
  block[3] = &unk_1E76CDB10;
  v17 = v9;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v18 = v10;
  v19 = v11;
  v20 = v7;
  v21 = v8;
  v22 = v12;
  v23 = *(a1 + 56);
  v13 = v8;
  v14 = v7;
  v15 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68___MKURLHandler__handleMapItemHandlesURL_sourceApplication_context___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v8 = 138478083;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1A2EA0000, v2, OS_LOG_TYPE_DEBUG, "_mapItemsFromHandleURL: '%{private}@' error %@", &v8, 0x16u);
    }
  }

  else
  {
    [*(a1 + 48) _handleMapItems:*(a1 + 56) withOptions:*(a1 + 64) url:*(a1 + 40) sourceApplication:*(a1 + 72) context:*(a1 + 80)];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((*(a1 + 48) + 8));
    [v7 URLHandler:*(a1 + 48) didFinishAsynchronousHandlingWithError:*(a1 + 32)];
  }
}

void __59___MKURLHandler__handleShortURL_sourceApplication_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v14 && !v5 && ((v7 = [_MKURLHandler _MKGetURLSchemeTypeFor:v14], v8 = v14, v7 == 1) || (v9 = [_MKURLHandler _MKGetURLSchemeTypeFor:v14], v8 = v14, v9 == 5)))
    {
      [WeakRetained _handleMapsURL:v8 sourceApplication:*(a1 + 32) context:*(a1 + 40)];
      v5 = 0;
    }

    else
    {
      v10 = [WeakRetained _createMKURLHandlerError:v5];

      v5 = v10;
    }

    v11 = objc_loadWeakRetained(WeakRetained + 1);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(WeakRetained + 1);
      [v13 URLHandler:WeakRetained didFinishAsynchronousHandlingWithError:v5];
    }
  }
}

void __39___MKURLHandler__treatPinPositionFrom___block_invoke(uint64_t a1, void *a2)
{
  v10 = [a2 firstObject];
  if (!v10)
  {
    v3 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:*(a1 + 48) longitude:*(a1 + 56)];
    v10 = [[MKMapItem alloc] initWithLocation:v3 address:0];
    v4 = [*(a1 + 32) searchQuery];
    [(MKMapItem *)v10 setName:v4];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) searchQuery];
  if (*(a1 + 64) == 1)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
  }

  else
  {
    [(MKMapItem *)v10 _coordinate];
  }

  [WeakRetained URLHandler:v6 showMapItem:v10 label:v7 at:{v8, v9}];
}

void __39___MKURLHandler__treatPinPositionFrom___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 placemark];
    v6 = [v5 mkPostalAddressDictionary];

    v7 = [[MKPlacemark alloc] initWithCoordinate:v6 addressDictionary:*(a1 + 48), *(a1 + 56)];
    v18 = [[MKMapItem alloc] initWithPlacemark:v7];

    v8 = [*(a1 + 32) searchQuery];
    [(MKMapItem *)v18 setName:v8];

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) searchQuery];
    if (*(a1 + 64) == 1)
    {
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
    }

    else
    {
      [(MKMapItem *)v18 _coordinate];
    }

    [WeakRetained URLHandler:v10 showMapItem:v18 label:v11 at:{v12, v13}];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:*(a1 + 48) longitude:*(a1 + 56)];
    v18 = [[MKMapItem alloc] initWithLocation:v6 address:0];
    v14 = [*(a1 + 32) searchQuery];
    [(MKMapItem *)v18 setName:v14];

    v7 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v15 = *(a1 + 40);
    WeakRetained = [*(a1 + 32) searchQuery];
    if (*(a1 + 64) == 1)
    {
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
    }

    else
    {
      [(MKMapItem *)v18 _coordinate];
    }

    [(MKPlacemark *)v7 URLHandler:v15 showMapItem:v18 label:WeakRetained at:v16, v17];
  }
}

@end