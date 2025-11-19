@interface MKLinkPreviewMetadataRequest
- (BOOL)isCancelled;
- (BOOL)isLoading;
- (MKLinkPreviewMetadataRequest)initWithURL:(id)a3;
- (id)_subtitleFromMapItem:(id)a3 useMultilineAddressFormat:(BOOL)a4;
- (void)_failWithError:(id)a3;
- (void)_forwardGeocodeString:(id)a3 completionHandler:(id)a4;
- (void)_handleDirectionsAction;
- (void)_handleFrameAction;
- (void)_handleGuidesAction;
- (void)_handleLookAroundAction;
- (void)_handlePlaceAction;
- (void)_handleReportAProblemAction;
- (void)_handleSearchAction;
- (void)_handleShortURL:(id)a3;
- (void)_populateLocationInfo:(id)a3 withMapItem:(id)a4;
- (void)_processURL:(id)a3;
- (void)_refineCollectionStorage:(id)a3 completionHandler:(id)a4;
- (void)_refineCuratedCollectionStorageWithCollectionIdentifier:(unint64_t)a3 providerIdentifier:(int)a4 completionHandler:(id)a5;
- (void)_requestCategoryIconFromMapItem:(id)a3 completionHandler:(id)a4;
- (void)_requestMapItemFromLocationQueryItem:(id)a3 completionHandler:(id)a4;
- (void)_requestMapItemFromMapItemIdentifier:(id)a3 completionHandler:(id)a4;
- (void)_requestPublisherFromPublisherIdentifier:(unint64_t)a3 providerIdentifier:(int)a4 completionHandler:(id)a5;
- (void)_reverseGeocodeCoordinate:(CLLocationCoordinate2D)a3 completionHandler:(id)a4;
- (void)_searchWithQuery:(id)a3 region:(id *)a4 completionHandler:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)getMetadataWithCompletionHandler:(id)a3;
@end

@implementation MKLinkPreviewMetadataRequest

- (void)_searchWithQuery:(id)a3 region:(id *)a4 completionHandler:(id)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v14 = a3;
  v15 = a4;
  if (fabs(v12) > 180.0 || fabs(v13) > 90.0 || v11 < 0.0 || v11 > 180.0 || v10 < 0.0 || v10 > 360.0)
  {
    v16 = [[MKLocalSearchRequest alloc] initWithNaturalLanguageQuery:v14];
    v17 = 0;
  }

  else
  {
    v16 = [[MKLocalSearchRequest alloc] initWithNaturalLanguageQuery:v14 region:v13, v12, v11, v10];
    v17 = 1;
  }

  v18 = [[MKLocalSearch alloc] initWithRequest:v16];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__MKLinkPreviewMetadataRequest__searchWithQuery_region_completionHandler___block_invoke;
  v21[3] = &unk_1E76C7798;
  v28 = v17;
  v24 = v13;
  v25 = v12;
  v26 = v11;
  v27 = v10;
  v22 = v14;
  v23 = v15;
  v19 = v15;
  v20 = v14;
  [(MKLocalSearch *)v18 startWithCompletionHandler:v21];
}

void __74__MKLinkPreviewMetadataRequest__searchWithQuery_region_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (*(a1 + 80) == 1)
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);
      v11 = MKGetMKLinkPreviewLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = MEMORY[0x1E696AEC0];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v7, v8];
        v15 = [v13 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v14, v9, v10];

        *buf = 138478339;
        v20 = v12;
        v21 = 2113;
        v22 = v15;
        v23 = 2114;
        v24 = v6;
        _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, "Error: MKLocalSearchRequest with query : %{private}@, region : %{private}@ failed: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v11 = MKGetMKLinkPreviewLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 138478083;
        v20 = v16;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, "Error: MKLocalSearchRequest with query : %{private}@ failed: %{public}@", buf, 0x16u);
      }
    }
  }

  v17 = *(a1 + 40);
  v18 = [v5 mapItems];
  [v5 boundingRegion];
  (*(v17 + 16))(v17, v18, v6);
}

- (void)_reverseGeocodeCoordinate:(CLLocationCoordinate2D)a3 completionHandler:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = a4;
  v7 = +[MKMapService sharedService];
  v8 = [v7 ticketForReverseGeocodeCoordinate:0 traits:{latitude, longitude}];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__MKLinkPreviewMetadataRequest__reverseGeocodeCoordinate_completionHandler___block_invoke;
  v10[3] = &unk_1E76C7770;
  v12 = latitude;
  v13 = longitude;
  v11 = v6;
  v9 = v6;
  [v8 submitWithHandler:v10 networkActivity:0];
}

void __76__MKLinkPreviewMetadataRequest__reverseGeocodeCoordinate_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", a1[5], a1[6]];
      *buf = 138478083;
      v12 = v8;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "Error: ticketForReverseGeocodeCoordinate with coordinate %{private}@ failed: %{public}@", buf, 0x16u);
    }
  }

  v9 = a1[4];
  v10 = [v5 firstObject];
  (*(v9 + 16))(v9, v10, v6);
}

- (void)_requestPublisherFromPublisherIdentifier:(unint64_t)a3 providerIdentifier:(int)a4 completionHandler:(id)a5
{
  v5 = *&a4;
  v7 = a5;
  v8 = [[MKPlacePublisherRefiner alloc] initWithPublisherIdentifier:a3 providerIdentifier:v5];
  v9 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__MKLinkPreviewMetadataRequest__requestPublisherFromPublisherIdentifier_providerIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E76C7748;
  v14 = v5;
  v12 = v7;
  v13 = a3;
  v10 = v7;
  [(MKPlacePublisherRefiner *)v8 fetchWithCallbackQueue:v9 completion:v11];
}

void __110__MKLinkPreviewMetadataRequest__requestPublisherFromPublisherIdentifier_providerIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = 134284035;
      v11 = v8;
      v12 = 1025;
      v13 = v9;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "Error: MKPlacePublisherRefiner with publisher identifier %{private}llu, provider identifier %{private}d failed: %{public}@", &v10, 0x1Cu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_requestMapItemFromMapItemIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MKMapItemRequest alloc] initWithMapItemIdentifier:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__MKLinkPreviewMetadataRequest__requestMapItemFromMapItemIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E76C7720;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [(MKMapItemRequest *)v7 getMapItemWithCompletionHandler:v10];
}

void __87__MKLinkPreviewMetadataRequest__requestMapItemFromMapItemIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) identifierString];
      v9 = 138478083;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "Error: MKMapItemRequest with identifier %{private}@ failed: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_requestMapItemFromLocationQueryItem:(id)a3 completionHandler:(id)a4
{
  v19 = a3;
  v6 = a4;
  [v19 coordinate];
  v8 = fabs(v7) <= 180.0;
  v10 = fabs(v9) <= 90.0 && v8;
  v11 = [v19 mapItemIdentifier];

  v12 = [v19 address];
  v13 = [v12 length];

  if (v11)
  {
    v14 = [MKMapItemIdentifier alloc];
    v15 = [v19 mapItemIdentifier];
    v16 = [(MKMapItemIdentifier *)v14 initWithGEOMapItemIdentifier:v15];

    [(MKLinkPreviewMetadataRequest *)self _requestMapItemFromMapItemIdentifier:v16 completionHandler:v6];
LABEL_8:

    goto LABEL_9;
  }

  if (v13)
  {
    v16 = [v19 address];
    [(MKLinkPreviewMetadataRequest *)self _forwardGeocodeString:v16 completionHandler:v6];
    goto LABEL_8;
  }

  if (v10)
  {
    [v19 coordinate];
    [(MKLinkPreviewMetadataRequest *)self _reverseGeocodeCoordinate:v6 completionHandler:?];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = [v17 initWithDomain:MKErrorDomain code:1 userInfo:0];
    v6[2](v6, 0, v18);
  }

LABEL_9:
}

- (void)_requestCategoryIconFromMapItem:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _styleAttributes];
  +[MKLinkPreviewMetadata displayScale];
  v9 = v8;
  if (v7)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __82__MKLinkPreviewMetadataRequest__requestCategoryIconFromMapItem_completionHandler___block_invoke;
    v27[3] = &unk_1E76C9480;
    v10 = &v28;
    v11 = v7;
    v12 = &v29;
    v28 = v11;
    v29 = v5;
    v13 = &v30;
    v30 = v6;
    v14 = v6;
    v15 = v5;
    v16 = v27;
  }

  else
  {
    v17 = [MEMORY[0x1E69A1DB0] addressMarkerStyleAttributes];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __82__MKLinkPreviewMetadataRequest__requestCategoryIconFromMapItem_completionHandler___block_invoke_82;
    v23 = &unk_1E76C9480;
    v10 = &v24;
    v11 = v17;
    v12 = &v25;
    v24 = v11;
    v25 = v5;
    v13 = &v26;
    v26 = v6;
    v18 = v6;
    v19 = v5;
    v16 = &v20;
  }

  [MKIconManager requestImageForStyleAttributes:v11 size:5 scale:v16 completionHandler:v9, v20, v21, v22, v23];
}

void __82__MKLinkPreviewMetadataRequest__requestCategoryIconFromMapItem_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v4 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) name];
      v7 = 138478083;
      v8 = v5;
      v9 = 2113;
      v10 = v6;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_ERROR, "Failed to retrieve POI icon with non-null attributes : %{private}@ and mapItem : %{private}@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __82__MKLinkPreviewMetadataRequest__requestCategoryIconFromMapItem_completionHandler___block_invoke_82(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v4 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) name];
      v7 = 138478083;
      v8 = v5;
      v9 = 2113;
      v10 = v6;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_ERROR, "Failed to retrieve fallback address icon with attributes : %{private}@ and mapItem : %{private}@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_refineCuratedCollectionStorageWithCollectionIdentifier:(unint64_t)a3 providerIdentifier:(int)a4 completionHandler:(id)a5
{
  v5 = *&a4;
  v7 = a5;
  v8 = [[MKPlaceCuratedCollectionRefiner alloc] initWithCollectionIdentifier:a3 providerIdentifier:v5];
  v9 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __125__MKLinkPreviewMetadataRequest__refineCuratedCollectionStorageWithCollectionIdentifier_providerIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E76C76F8;
  v14 = v5;
  v12 = v7;
  v13 = a3;
  v10 = v7;
  [(MKPlaceCuratedCollectionRefiner *)v8 fetchWithCallbackQueue:v9 completion:v11];
}

void __125__MKLinkPreviewMetadataRequest__refineCuratedCollectionStorageWithCollectionIdentifier_providerIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = 134284035;
      v14 = v11;
      v15 = 1025;
      v16 = v12;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_ERROR, "Error: MKPlaceCuratedCollectionRefiner with collection identifier %{private}llu, provider identifier %{private}d failed: %{public}@", &v13, 0x1Cu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_refineCollectionStorage:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MKCollectionStorageRefiner alloc] initWithCollectionStorage:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__MKLinkPreviewMetadataRequest__refineCollectionStorage_completionHandler___block_invoke;
  v10[3] = &unk_1E76C76D0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [(MKCollectionStorageRefiner *)v7 fetchMapItems:v10];
}

void __75__MKLinkPreviewMetadataRequest__refineCollectionStorage_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) name];
      v9 = 138478083;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "Error: MKCollectionStorageRefiner with collection %{private}@ failed: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_forwardGeocodeString:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MKMapService sharedService];
  v8 = [v7 ticketForForwardGeocodeString:v5 traits:0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MKLinkPreviewMetadataRequest__forwardGeocodeString_completionHandler___block_invoke;
  v11[3] = &unk_1E76CA920;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v8 submitWithHandler:v11 networkActivity:0];
}

void __72__MKLinkPreviewMetadataRequest__forwardGeocodeString_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v11 = 138478083;
      v12 = v8;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "Error: ticketForForwardGeocodeString with address string %{private}@ failed: %{public}@", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  v10 = [v5 firstObject];
  (*(v9 + 16))(v9, v10, v6);
}

- (id)_subtitleFromMapItem:(id)a3 useMultilineAddressFormat:(BOOL)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 name];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79__MKLinkPreviewMetadataRequest__subtitleFromMapItem_useMultilineAddressFormat___block_invoke;
  v24[3] = &unk_1E76C76A8;
  v26 = a4;
  v7 = v5;
  v25 = v7;
  v8 = __79__MKLinkPreviewMetadataRequest__subtitleFromMapItem_useMultilineAddressFormat___block_invoke(v24);
  v9 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v10 = [v8 componentsSeparatedByCharactersInSet:v9];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (([v17 isEqualToString:{v6, v20}] & 1) == 0)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = [v11 componentsJoinedByString:@"\n"];

  return v18;
}

id __79__MKLinkPreviewMetadataRequest__subtitleFromMapItem_useMultilineAddressFormat___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1 && ([*(a1 + 32) identifier], v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v7 = [*(a1 + 32) _addressFormattedAsMultilineAddress];
  }

  else
  {
    v3 = [*(a1 + 32) _cnPostalAddress];
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 city];
    v6 = [v3 state];
    v7 = [v4 stringWithFormat:@"%@ %@", v5, v6];
  }

  return v7;
}

- (void)_populateLocationInfo:(id)a3 withMapItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 identifier];
  [v6 setIsPointOfInterest:v7 != 0];

  [v5 _coordinate];
  [v6 setCoordinate:?];
  v8 = [v5 name];
  [v6 setName:v8];

  v9 = [v5 _shortAddress];
  [v6 setAddress:v9];

  v10 = [v5 _cnPostalAddress];
  [v6 setAddressComponents:v10];

  v11 = [v5 _firstLocalizedCategoryName];

  [v6 setCategory:v11];
}

- (void)_failWithError:(id)a3
{
  v4 = a3;
  [(MKLinkPreviewMetadataRequest *)self cancel];
  v5 = MEMORY[0x1A58E9F30](self->_completionHandler);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = [v7 initWithDomain:MKErrorDomain code:1 userInfo:0];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MKLinkPreviewMetadataRequest__failWithError___block_invoke;
  v10[3] = &unk_1E76CDA20;
  v11 = v6;
  v12 = v5;
  v8 = v6;
  v9 = v5;
  _performBlockOnMainThreadIfNeeded(v10);
}

uint64_t __47__MKLinkPreviewMetadataRequest__failWithError___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

- (void)_handleShortURL:(id)a3
{
  v5 = _MKPerformShortURLTransformationIfNeeded(a3);
  v6 = objc_alloc_init(MKURLShortener);
  objc_initWeak(&location, self);
  GEOConfigGetDouble();
  v8 = v7;
  v9 = MEMORY[0x1E69E96A0];
  v10 = MEMORY[0x1E69E96A0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__MKLinkPreviewMetadataRequest__handleShortURL___block_invoke;
  v12[3] = &unk_1E76C7680;
  objc_copyWeak(v14, &location);
  v14[1] = a2;
  v11 = v5;
  v13 = v11;
  [(MKURLShortener *)v6 lengthenURL:v11 timeout:v9 queue:v12 completion:v8];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __48__MKLinkPreviewMetadataRequest__handleShortURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = _MKURLGetSchemeType(v6);
    v10 = MKGetMKLinkPreviewLog();
    v11 = v10;
    if (v7 || (v9 & 3) != 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(*(a1 + 48));
        v15 = *(a1 + 32);
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v9];
        v17 = 138544130;
        v18 = v14;
        v19 = 2114;
        v20 = v15;
        v21 = 2112;
        v22 = v7;
        v23 = 2114;
        v24 = v16;
        _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, "%{public}@ unable to retrieve fullURL from %{public}@ with error:%@ schemeType:%{public}@", &v17, 0x2Au);
      }

      [WeakRetained _failWithError:v7];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = NSStringFromSelector(*(a1 + 48));
        v13 = *(a1 + 32);
        v17 = 138543874;
        v18 = v12;
        v19 = 2114;
        v20 = v6;
        v21 = 2114;
        v22 = v13;
        _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ successfully retrieved fullURL:%{public}@ from:%{public}@", &v17, 0x20u);
      }

      objc_storeStrong(WeakRetained + 4, a2);
      [WeakRetained _processURL:v6];
    }
  }
}

- (void)_handleReportAProblemAction
{
  v2 = MEMORY[0x1A58E9F30](self->_completionHandler, a2);
  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v4 = [v3 initWithDomain:MKErrorDomain code:1 userInfo:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MKLinkPreviewMetadataRequest__handleReportAProblemAction__block_invoke;
  v7[3] = &unk_1E76CDA20;
  v8 = v4;
  v9 = v2;
  v5 = v4;
  v6 = v2;
  _performBlockOnMainThreadIfNeeded(v7);
}

- (void)_handleGuidesAction
{
  v3 = self->_parser;
  v4 = MEMORY[0x1A58E9F30](self->_completionHandler);
  objc_initWeak(&location, self);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke;
  v36[3] = &unk_1E76C75E0;
  v5 = v4;
  v37 = v5;
  v6 = MEMORY[0x1A58E9F30](v36);
  v7 = [(_MKURLParser *)v3 collectionStorage];

  if (v7)
  {
    v8 = [(MKLinkPreviewMetadata *)[MKLinkPreviewGuidesMetadata alloc] initWithActionType:[(_MKURLParser *)v3 actionType] mapType:[(_MKURLParser *)v3 mapType]];
    v9 = [(_MKURLParser *)v3 collectionStorage];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke_3;
    v31[3] = &unk_1E76C7608;
    objc_copyWeak(&v35, &location);
    v32 = v3;
    v10 = v8;
    v33 = v10;
    v34 = v6;
    [(MKLinkPreviewMetadataRequest *)self _refineCollectionStorage:v9 completionHandler:v31];

    objc_destroyWeak(&v35);
  }

  else
  {
    if ([(_MKURLParser *)v3 curatedCollectionMUID])
    {
      v11 = [(MKLinkPreviewMetadata *)[MKLinkPreviewGuidesMetadata alloc] initWithActionType:[(_MKURLParser *)v3 actionType] mapType:[(_MKURLParser *)v3 mapType]];
      v12 = [(_MKURLParser *)v3 curatedCollectionMUID];
      v13 = [(_MKURLParser *)v3 searchProviderID];
      v14 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke_4;
      v27[3] = &unk_1E76C7630;
      objc_copyWeak(&v30, &location);
      v10 = v11;
      v28 = v10;
      v29 = v6;
      [(MKLinkPreviewMetadataRequest *)self _refineCuratedCollectionStorageWithCollectionIdentifier:v12 providerIdentifier:v13 completionHandler:v27];

      v15 = v28;
    }

    else
    {
      if (![(_MKURLParser *)v3 publisherMUID])
      {
        v19 = [[MKLinkPreviewMetadata alloc] initWithActionType:[(_MKURLParser *)v3 actionType] mapType:[(_MKURLParser *)v3 mapType]];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke_7;
        v20[3] = &unk_1E76CDA20;
        v22 = v5;
        v10 = v19;
        v21 = v10;
        _performBlockOnMainThreadIfNeeded(v20);

        goto LABEL_8;
      }

      v16 = [(MKLinkPreviewMetadata *)[MKLinkPreviewPublisherMetadata alloc] initWithActionType:[(_MKURLParser *)v3 actionType] mapType:[(_MKURLParser *)v3 mapType]];
      v17 = [(_MKURLParser *)v3 publisherMUID];
      v18 = [(_MKURLParser *)v3 searchProviderID];
      v14 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke_5;
      v23[3] = &unk_1E76C7658;
      objc_copyWeak(&v26, &location);
      v10 = v16;
      v24 = v10;
      v25 = v5;
      [(MKLinkPreviewMetadataRequest *)self _requestPublisherFromPublisherIdentifier:v17 providerIdentifier:v18 completionHandler:v23];

      v15 = v24;
    }

    objc_destroyWeak(v14 + 6);
  }

LABEL_8:

  objc_destroyWeak(&location);
}

void __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
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

        v13 = [*(*(&v19 + 1) + 8 * v12) _cnPostalAddress];
        if (v13)
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [v5 setAddresses:v7];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke_2;
  v16[3] = &unk_1E76CDA20;
  v14 = *(a1 + 32);
  v17 = v5;
  v18 = v14;
  v15 = v5;
  _performBlockOnMainThreadIfNeeded(v16);
}

void __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke_3(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained isCancelled];

  if ((v5 & 1) == 0)
  {
    if ([v3 count])
    {
      v6 = [*(a1 + 32) collectionStorage];
      v7 = [v6 name];

      v25 = v7;
      [*(a1 + 40) setTitle:v7];
      v8 = [*(a1 + 32) collectionStorage];
      v9 = [v8 placesCount];

      v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v9];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = v3;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          v15 = 0;
          do
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v26 + 1) + 8 * v15) _addressFormattedAsCity];
            if (v16)
            {
              [v10 addObject:v16];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v13);
      }

      v17 = [v10 allObjects];
      v18 = [v17 componentsJoinedByString:{@", "}];

      v19 = _MKLocalizedStringFromThisBundle(@"Number of places [LinkPreviewUserGuide]");
      v20 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%u" error:0, v9];
      v21 = _MKLocalizedStringFromThisBundle(@"Number of places followed by comma-separated list of place names [LinkPreviewUserGuide]");
      v22 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v21, v20, v18];
      [*(a1 + 40) setSubtitle:v22];

      v23 = [*(a1 + 32) collectionStorage];
      [*(a1 + 40) setCollectionStorage:v23];

      [*(a1 + 40) setName:v25];
      [*(a1 + 40) setNumberOfItems:v9];
      [*(a1 + 40) setMapItems:v11];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v24 = objc_loadWeakRetained((a1 + 56));
      [v24 _failWithError:0];
    }
  }
}

void __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [WeakRetained isCancelled];

  if ((v10 & 1) == 0)
  {
    if (v8 || ![v7 count])
    {
      v11 = objc_loadWeakRetained((a1 + 48));
      [v11 _failWithError:v8];
    }

    else
    {
      v11 = [v21 collectionTitle];
      [*(a1 + 32) setTitle:v11];
      v12 = [v21 numberOfItems];
      v13 = [v21 publisherAttribution];
      v14 = [v13 displayName];

      v15 = _MKLocalizedStringFromThisBundle(@"Number of places [LinkPreviewCuratedGuide]");
      v16 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%u" error:0, v12];
      v17 = _MKLocalizedStringFromThisBundle(@"Name of publisher followed by number of places [LinkPreviewUserGuide]");
      v18 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v17, v14, v16];
      [*(a1 + 32) setSubtitle:v18];

      [*(a1 + 32) setCuratedCollection:v21];
      [*(a1 + 32) setName:v11];
      [*(a1 + 32) setNumberOfItems:v12];
      [*(a1 + 32) setPublisherName:v14];
      v19 = [v21 publisherAttribution];
      v20 = +[MKIconManager imageForIconID:contentScale:sizeGroup:nightMode:](MKIconManager, "imageForIconID:contentScale:sizeGroup:nightMode:", [v19 iconIdentifier], 1, 0, 3.0);
      [*(a1 + 32) setIcon:v20];

      (*(*(a1 + 40) + 16))();
    }
  }
}

void __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke_5(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = [WeakRetained isCancelled];

  if ((v8 & 1) == 0)
  {
    if (!v5 || v6)
    {
      v16 = objc_loadWeakRetained(a1 + 6);
      [v16 _failWithError:v6];
    }

    else
    {
      v9 = [v5 publisherAttribution];
      v10 = [v9 displayName];

      [a1[4] setTitle:v10];
      v11 = [v5 totalCollectionCount];
      v12 = _MKLocalizedStringFromThisBundle(@"Number of guides [LinkPreviewPublisherGuides]");
      v13 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v12 validFormatSpecifiers:@"%u" error:0, v11];
      [a1[4] setSubtitle:v13];

      [a1[4] setName:v10];
      [a1[4] setNumberOfPublishedCollections:v11];
      v14 = [v5 publisherAttribution];
      v15 = +[MKIconManager imageForIconID:contentScale:sizeGroup:nightMode:](MKIconManager, "imageForIconID:contentScale:sizeGroup:nightMode:", [v14 iconIdentifier], 1, 0, 3.0);
      [a1[4] setIcon:v15];

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__MKLinkPreviewMetadataRequest__handleGuidesAction__block_invoke_6;
      v17[3] = &unk_1E76CDA20;
      v19 = a1[5];
      v18 = a1[4];
      _performBlockOnMainThreadIfNeeded(v17);
    }
  }
}

- (void)_handleLookAroundAction
{
  v3 = self->_parser;
  v4 = MEMORY[0x1A58E9F30](self->_completionHandler);
  v5 = [[MKLinkPreviewLookAroundMetadata alloc] initWithActionType:[(_MKURLParser *)v3 actionType] mapType:[(_MKURLParser *)v3 mapType]];
  v6 = [(_MKURLParser *)v3 locationQueryItem];
  v47 = v3;
  v7 = [(_MKURLParser *)v3 muninViewState];
  [v6 coordinate];
  v9 = fabs(v8) <= 180.0;
  v11 = fabs(v10) <= 90.0 && v9;
  v12 = [v6 mapItemIdentifier];

  v13 = [v6 address];
  v44 = [v13 length];

  v14 = [v6 name];
  if ([v14 length])
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v48 = v16;

  if (v7)
  {
    v43 = v4;
    v45 = v11;
    v17 = [v7 locationInfo];
    v18 = [[MKLookAroundScene alloc] initWithMuninViewState:v7];
    [(MKLinkPreviewMetadata *)v5 setScene:v18];
    v19 = [v17 locationName];
    [(MKLinkPreviewLookAroundMetadata *)v5 setName:v19];

    v20 = [v17 secondaryLocationName];
    if ([v20 length])
    {
      v21 = [v17 localityName];
      v22 = [v21 length];

      if (v22)
      {
        v23 = MEMORY[0x1E696AEC0];
        v24 = [v17 secondaryLocationName];
        v25 = [v17 localityName];
        v26 = [v23 stringWithFormat:@"%@\n%@", v24, v25];
        [(MKLinkPreviewLookAroundMetadata *)v5 setAddress:v26];

LABEL_19:
        v11 = v45;
        v4 = v43;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v27 = [v17 secondaryLocationName];
    v28 = [v27 length];

    if (v28)
    {
      [v17 secondaryLocationName];
    }

    else
    {
      [v17 localityName];
    }
    v24 = ;
    [(MKLinkPreviewLookAroundMetadata *)v5 setAddress:v24];
    goto LABEL_19;
  }

LABEL_20:
  objc_initWeak(location, self);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __55__MKLinkPreviewMetadataRequest__handleLookAroundAction__block_invoke;
  v57[3] = &unk_1E76C7590;
  v63 = v7 != 0;
  v29 = v4;
  v61 = v29;
  v30 = v5;
  v58 = v30;
  v46 = v7;
  v59 = v46;
  v64 = v11;
  v65 = v44 != 0;
  v66 = v48;
  v31 = v6;
  v60 = v31;
  objc_copyWeak(&v62, location);
  v32 = v11;
  v33 = MEMORY[0x1A58E9F30](v57);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __55__MKLinkPreviewMetadataRequest__handleLookAroundAction__block_invoke_5;
  v52[3] = &unk_1E76C75B8;
  v56 = v7 != 0;
  v34 = v29;
  v54 = v34;
  v35 = v30;
  v53 = v35;
  v36 = v33;
  v55 = v36;
  v37 = MEMORY[0x1A58E9F30](v52);
  if (v12)
  {
    v38 = [MKMapItemIdentifier alloc];
    v39 = [v31 mapItemIdentifier];
    v40 = [(MKMapItemIdentifier *)v38 initWithGEOMapItemIdentifier:v39];

    [(MKLinkPreviewMetadataRequest *)self _requestMapItemFromMapItemIdentifier:v40 completionHandler:v37];
LABEL_27:

    goto LABEL_28;
  }

  if (v44)
  {
    v40 = [v31 address];
    [(MKLinkPreviewMetadataRequest *)self _forwardGeocodeString:v40 completionHandler:v37];
    goto LABEL_27;
  }

  if (!v32)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __55__MKLinkPreviewMetadataRequest__handleLookAroundAction__block_invoke_7;
    v49[3] = &unk_1E76CDA20;
    v51 = v34;
    v50 = v35;
    _performBlockOnMainThreadIfNeeded(v49);

    v40 = v51;
    goto LABEL_27;
  }

  [v31 coordinate];
  v42 = v41;
  [v31 coordinate];
  [(MKLinkPreviewMetadataRequest *)self _reverseGeocodeCoordinate:v37 completionHandler:v42];
LABEL_28:

  objc_destroyWeak(&v62);
  objc_destroyWeak(location);
}

void __55__MKLinkPreviewMetadataRequest__handleLookAroundAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55__MKLinkPreviewMetadataRequest__handleLookAroundAction__block_invoke_2;
    v21[3] = &unk_1E76C9670;
    v25 = *(a1 + 72);
    v24 = *(a1 + 56);
    v22 = *(a1 + 32);
    v23 = v7;
    _performBlockOnMainThreadIfNeeded(v21);

    v8 = v24;
  }

  else
  {
    v8 = [v5 _mapItem];
    v26[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [*(a1 + 32) setMapItems:v9];

    if (*(a1 + 72) == 1)
    {
      v10 = [*(a1 + 40) cameraFrame];
      v11 = [[MKLookAroundScene alloc] initWithMapItem:v8 cameraFrameOverride:v10];
      [*(a1 + 32) setScene:v11];
    }

    else
    {
      [*(a1 + 32) setScene:v5];
    }

    if (((*(a1 + 73) & 1) != 0 || *(a1 + 74) == 1) && *(a1 + 75) == 1)
    {
      v12 = [*(a1 + 48) name];
      [v8 setName:v12];
    }

    v13 = [v8 name];
    [*(a1 + 32) setTitle:v13];

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v15 = [WeakRetained _subtitleFromMapItem:v8 useMultilineAddressFormat:1];
    [*(a1 + 32) setSubtitle:v15];

    v16 = objc_loadWeakRetained((a1 + 64));
    [v16 _populateLocationInfo:*(a1 + 32) withMapItem:v8];

    v17 = objc_loadWeakRetained((a1 + 64));
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__MKLinkPreviewMetadataRequest__handleLookAroundAction__block_invoke_3;
    v18[3] = &unk_1E76C7E18;
    v19 = *(a1 + 32);
    v20 = *(a1 + 56);
    [v17 _requestCategoryIconFromMapItem:v8 completionHandler:v18];
  }
}

void __55__MKLinkPreviewMetadataRequest__handleLookAroundAction__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__MKLinkPreviewMetadataRequest__handleLookAroundAction__block_invoke_6;
    v9[3] = &unk_1E76C9670;
    v13 = *(a1 + 56);
    v12 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = v7;
    _performBlockOnMainThreadIfNeeded(v9);
  }

  else
  {
    v8 = [[MKLookAroundSceneRequest alloc] initWithMapItem:v5];
    [(MKLookAroundSceneRequest *)v8 getSceneWithCompletionHandler:*(a1 + 48)];
  }
}

void __55__MKLinkPreviewMetadataRequest__handleLookAroundAction__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIcon:a2];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__MKLinkPreviewMetadataRequest__handleLookAroundAction__block_invoke_4;
  v3[3] = &unk_1E76CDA20;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  _performBlockOnMainThreadIfNeeded(v3);
}

- (void)_handlePlaceAction
{
  v3 = self->_parser;
  v4 = MEMORY[0x1A58E9F30](self->_completionHandler);
  v5 = [[MKLinkPreviewPlaceMetadata alloc] initWithActionType:[(_MKURLParser *)v3 actionType] mapType:[(_MKURLParser *)v3 mapType]];
  v25 = v3;
  v6 = [(_MKURLParser *)v3 locationQueryItem];
  v7 = v6;
  if (v6)
  {
    [v6 coordinate];
    v9 = fabs(v8) <= 180.0;
    v11 = fabs(v10) <= 90.0 && v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 mapItemIdentifier];

  v13 = [v7 address];
  v14 = [v13 length];

  v15 = [v7 name];
  if ([v15 length])
  {
    v16 = v12 == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  objc_initWeak(location, self);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __50__MKLinkPreviewMetadataRequest__handlePlaceAction__block_invoke;
  v29[3] = &unk_1E76C7568;
  v18 = v4;
  v32 = v18;
  v19 = v5;
  v30 = v19;
  v34 = v11;
  v35 = v14 != 0;
  v36 = v17;
  v20 = v7;
  v31 = v20;
  objc_copyWeak(&v33, location);
  v21 = MEMORY[0x1A58E9F30](v29);
  if (v12)
  {
    v22 = [MKMapItemIdentifier alloc];
    v23 = [v20 mapItemIdentifier];
    v24 = [(MKMapItemIdentifier *)v22 initWithGEOMapItemIdentifier:v23];

    [(MKLinkPreviewMetadataRequest *)self _requestMapItemFromMapItemIdentifier:v24 completionHandler:v21];
LABEL_19:

    goto LABEL_20;
  }

  if (v14)
  {
    v24 = [v20 address];
    [(MKLinkPreviewMetadataRequest *)self _forwardGeocodeString:v24 completionHandler:v21];
    goto LABEL_19;
  }

  if (!v11)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __50__MKLinkPreviewMetadataRequest__handlePlaceAction__block_invoke_5;
    v26[3] = &unk_1E76CDA20;
    v28 = v18;
    v27 = v19;
    _performBlockOnMainThreadIfNeeded(v26);

    v24 = v28;
    goto LABEL_19;
  }

  [v20 coordinate];
  [(MKLinkPreviewMetadataRequest *)self _reverseGeocodeCoordinate:v21 completionHandler:?];
LABEL_20:

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

void __50__MKLinkPreviewMetadataRequest__handlePlaceAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __50__MKLinkPreviewMetadataRequest__handlePlaceAction__block_invoke_2;
    v20[3] = &unk_1E76CDA20;
    v15 = &v22;
    v22 = *(a1 + 48);
    v16 = &v21;
    v21 = v7;
    _performBlockOnMainThreadIfNeeded(v20);
  }

  else
  {
    v23[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [*(a1 + 32) setMapItems:v8];

    if (((*(a1 + 64) & 1) != 0 || *(a1 + 65) == 1) && *(a1 + 66) == 1)
    {
      v9 = [*(a1 + 40) name];
      [v5 setName:v9];
    }

    v10 = [v5 name];
    [*(a1 + 32) setTitle:v10];

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v12 = [WeakRetained _subtitleFromMapItem:v5 useMultilineAddressFormat:1];
    [*(a1 + 32) setSubtitle:v12];

    v13 = objc_loadWeakRetained((a1 + 56));
    [v13 _populateLocationInfo:*(a1 + 32) withMapItem:v5];

    v14 = objc_loadWeakRetained((a1 + 56));
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__MKLinkPreviewMetadataRequest__handlePlaceAction__block_invoke_3;
    v17[3] = &unk_1E76C7E18;
    v15 = &v18;
    v18 = *(a1 + 32);
    v16 = &v19;
    v19 = *(a1 + 48);
    [v14 _requestCategoryIconFromMapItem:v5 completionHandler:v17];
  }
}

void __50__MKLinkPreviewMetadataRequest__handlePlaceAction__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIcon:a2];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__MKLinkPreviewMetadataRequest__handlePlaceAction__block_invoke_4;
  v3[3] = &unk_1E76CDA20;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  _performBlockOnMainThreadIfNeeded(v3);
}

- (void)_handleSearchAction
{
  v3 = self->_parser;
  v4 = MEMORY[0x1A58E9F30](self->_completionHandler);
  v5 = [[MKLinkPreviewSearchMetadata alloc] initWithActionType:[(_MKURLParser *)v3 actionType] mapType:[(_MKURLParser *)v3 mapType]];
  v6 = [(_MKURLParser *)v3 searchQuery];
  [(_MKURLParser *)v3 searchRegion];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(_MKURLParser *)v3 searchCoordinate];
  v16 = fabs(v15) <= 180.0;
  if (fabs(v17) > 90.0)
  {
    v16 = 0;
  }

  if ((fabs(v10) > 180.0 || fabs(v8) > 90.0 || v12 < 0.0 || v12 > 180.0 || v14 < 0.0 || v14 > 360.0) && v16)
  {
    [(_MKURLParser *)v3 searchCoordinate];
    v8 = v18;
    v10 = v19;
    GEOConfigGetDouble();
    v14 = v20;
    v12 = v20;
  }

  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __51__MKLinkPreviewMetadataRequest__handleSearchAction__block_invoke;
  v24[3] = &unk_1E76C7540;
  v21 = v4;
  v27 = v21;
  v22 = v5;
  v25 = v22;
  v23 = v6;
  v26 = v23;
  objc_copyWeak(&v28, &location);
  [(MKLinkPreviewMetadataRequest *)self _searchWithQuery:v23 region:v24 completionHandler:v8, v10, v12, v14];
  objc_destroyWeak(&v28);

  objc_destroyWeak(&location);
}

void __51__MKLinkPreviewMetadataRequest__handleSearchAction__block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  if (v14 || ![v13 count])
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__MKLinkPreviewMetadataRequest__handleSearchAction__block_invoke_2;
    v24[3] = &unk_1E76CDA20;
    v26 = *(a1 + 48);
    v25 = v14;
    _performBlockOnMainThreadIfNeeded(v24);

    v15 = v26;
  }

  else
  {
    [*(a1 + 32) setTitle:*(a1 + 40)];
    [*(a1 + 32) setSearchQuery:*(a1 + 40)];
    [*(a1 + 32) setMapItems:v13];
    [*(a1 + 32) setCoordinateRegion:{a4, a5, a6, a7}];
    if ([v13 count] == 1)
    {
      v15 = [v13 firstObject];
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [WeakRetained _populateLocationInfo:*(a1 + 32) withMapItem:v15];

      v17 = objc_loadWeakRetained((a1 + 56));
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __51__MKLinkPreviewMetadataRequest__handleSearchAction__block_invoke_3;
      v21[3] = &unk_1E76C7E18;
      v22 = *(a1 + 32);
      v23 = *(a1 + 48);
      [v17 _requestCategoryIconFromMapItem:v15 completionHandler:v21];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51__MKLinkPreviewMetadataRequest__handleSearchAction__block_invoke_5;
      v18[3] = &unk_1E76CDA20;
      v20 = *(a1 + 48);
      v19 = *(a1 + 32);
      _performBlockOnMainThreadIfNeeded(v18);

      v15 = v20;
    }
  }
}

void __51__MKLinkPreviewMetadataRequest__handleSearchAction__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIcon:a2];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__MKLinkPreviewMetadataRequest__handleSearchAction__block_invoke_4;
  v3[3] = &unk_1E76CDA20;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  _performBlockOnMainThreadIfNeeded(v3);
}

- (void)_handleFrameAction
{
  v3 = self->_parser;
  v4 = MEMORY[0x1A58E9F30](self->_completionHandler);
  v5 = [[MKLinkPreviewFrameMetadata alloc] initWithActionType:[(_MKURLParser *)v3 actionType] mapType:[(_MKURLParser *)v3 mapType]];
  [(_MKURLParser *)v3 centerCoordinate];
  if (fabs(v7) <= 180.0 && fabs(v6) <= 90.0)
  {
    [(_MKURLParser *)v3 centerCoordinate];
    v9 = v8;
    v11 = v10;
    [(MKLinkPreviewFrameMetadata *)v5 setCoordinate:?];
    [(_MKURLParser *)v3 cameraCenterBasedAltitude];
    if (v12 <= 0.0)
    {
      v19 = [(_MKURLParser *)v3 mapCamera];
      [v19 altitude];
      if (v20 > 0.0)
      {
      }

      else
      {
        v21 = [(_MKURLParser *)v3 mapCamera];
        [v21 centerCoordinateDistance];
        v23 = v22;

        if (v23 <= 0.0)
        {
          [(_MKURLParser *)v3 span];
          if (v24 >= 0.0 && v24 <= 180.0 && v25 >= 0.0 && v25 <= 360.0)
          {
            [(_MKURLParser *)v3 span];
            if (v26 != 0.0)
            {
              [(_MKURLParser *)v3 span];
              if (v27 != 0.0)
              {
                [(_MKURLParser *)v3 span];
                [(MKLinkPreviewMetadata *)v5 setCoordinateRegion:*&v9, *&v11, v28, v29];
              }
            }
          }

          goto LABEL_18;
        }
      }

      v18 = [(_MKURLParser *)v3 mapCamera];
    }

    else
    {
      [(_MKURLParser *)v3 cameraCenterBasedAltitude];
      v14 = v13;
      [(_MKURLParser *)v3 tilt];
      v16 = v15;
      [(_MKURLParser *)v3 rotation];
      v18 = [MKMapCamera cameraLookingAtCenterCoordinate:*&v9 fromDistance:*&v11 pitch:v14 heading:v16, v17];
    }

    v30 = v18;
    [(MKLinkPreviewMetadata *)v5 setMapCamera:v18];

LABEL_18:
    objc_initWeak(&location, self);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __50__MKLinkPreviewMetadataRequest__handleFrameAction__block_invoke;
    v34[3] = &unk_1E76C7518;
    v37[1] = v9;
    v37[2] = v11;
    v35 = v5;
    objc_copyWeak(v37, &location);
    v36 = v4;
    [(MKLinkPreviewMetadataRequest *)self _reverseGeocodeCoordinate:v34 completionHandler:*&v9, *&v11];

    objc_destroyWeak(v37);
    objc_destroyWeak(&location);
    goto LABEL_19;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __50__MKLinkPreviewMetadataRequest__handleFrameAction__block_invoke_4;
  v31[3] = &unk_1E76CDA20;
  v33 = v4;
  v32 = v5;
  _performBlockOnMainThreadIfNeeded(v31);

LABEL_19:
}

void __50__MKLinkPreviewMetadataRequest__handleFrameAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:*(a1 + 56) longitude:*(a1 + 64)];
    v8 = [[MKMapItem alloc] initWithCLLocation:v7];

    v5 = v8;
  }

  v23[0] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [*(a1 + 32) setMapItems:v9];

  v10 = [*(a1 + 32) mapCamera];
  if (v10)
  {
    goto LABEL_11;
  }

  [*(a1 + 32) coordinateRegion];
  if (fabs(v14) > 180.0 || fabs(v11) > 90.0 || v12 < 0.0 || v12 > 180.0 || v13 < 0.0 || v13 > 360.0)
  {
    +[MKLinkPreviewSnapshot size];
    v10 = [MKMapCamera cameraLookingAtMapItem:v5 forViewSize:1 allowPitch:?];
    [*(a1 + 32) setMapCamera:v10];
LABEL_11:
  }

  v15 = [(MKMapItem *)v5 name];
  [*(a1 + 32) setTitle:v15];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v17 = [WeakRetained _subtitleFromMapItem:v5 useMultilineAddressFormat:1];
  [*(a1 + 32) setSubtitle:v17];

  v18 = objc_loadWeakRetained((a1 + 48));
  [v18 _populateLocationInfo:*(a1 + 32) withMapItem:v5];

  v19 = objc_loadWeakRetained((a1 + 48));
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__MKLinkPreviewMetadataRequest__handleFrameAction__block_invoke_2;
  v20[3] = &unk_1E76C7E18;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  [v19 _requestCategoryIconFromMapItem:v5 completionHandler:v20];
}

void __50__MKLinkPreviewMetadataRequest__handleFrameAction__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIcon:a2];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__MKLinkPreviewMetadataRequest__handleFrameAction__block_invoke_3;
  v3[3] = &unk_1E76CDA20;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  _performBlockOnMainThreadIfNeeded(v3);
}

- (void)_handleDirectionsAction
{
  v3 = self->_parser;
  v4 = MEMORY[0x1A58E9F30](self->_completionHandler);
  v5 = [(MKLinkPreviewMetadata *)[MKLinkPreviewDirectionsMetadata alloc] initWithActionType:[(_MKURLParser *)v3 actionType] mapType:[(_MKURLParser *)v3 mapType]];
  v6 = [(_MKURLParser *)v3 sourceLocationQueryItem];
  v7 = [(_MKURLParser *)v3 destinationLocationQueryItem];
  v8 = [(_MKURLParser *)v3 transportType];
  v17 = v7;
  if (v8 <= 3)
  {
    if (v8 == 2)
    {
      v9 = 2;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v8 == 4)
  {
    v9 = 1;
  }

  else
  {
    if (v8 != 8)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_10;
    }

    v9 = 3;
  }

LABEL_10:
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __55__MKLinkPreviewMetadataRequest__handleDirectionsAction__block_invoke;
  v41[3] = &unk_1E76C74A0;
  v10 = v5;
  v42 = v10;
  v44 = v9;
  v11 = v4;
  v43 = v11;
  v12 = MEMORY[0x1A58E9F30](v41);
  v13 = dispatch_group_create();
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__8437;
  v39[4] = __Block_byref_object_dispose__8438;
  v40 = +[MKMapItem mapItemForCurrentLocation];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__8437;
  v37[4] = __Block_byref_object_dispose__8438;
  v38 = 0;
  if (v6)
  {
    dispatch_group_enter(v13);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __55__MKLinkPreviewMetadataRequest__handleDirectionsAction__block_invoke_8;
    v33[3] = &unk_1E76C74C8;
    v35 = v37;
    v36 = v39;
    v34 = v13;
    [(MKLinkPreviewMetadataRequest *)self _requestMapItemFromLocationQueryItem:v6 completionHandler:v33];
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__8437;
  v31[4] = __Block_byref_object_dispose__8438;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__8437;
  v29[4] = __Block_byref_object_dispose__8438;
  v30 = 0;
  dispatch_group_enter(v13);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__MKLinkPreviewMetadataRequest__handleDirectionsAction__block_invoke_2_10;
  v25[3] = &unk_1E76C74C8;
  v27 = v29;
  v28 = v31;
  v14 = v13;
  v26 = v14;
  [(MKLinkPreviewMetadataRequest *)self _requestMapItemFromLocationQueryItem:v17 completionHandler:v25];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MKLinkPreviewMetadataRequest__handleDirectionsAction__block_invoke_3;
  block[3] = &unk_1E76C74F0;
  v21 = v37;
  v22 = v29;
  v19 = v11;
  v20 = v12;
  v23 = v31;
  v24 = v39;
  v15 = v12;
  v16 = v11;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
}

void __55__MKLinkPreviewMetadataRequest__handleDirectionsAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 _addressFormattedAsSinglelineAddress];
  [*(a1 + 32) setTitle:v7];

  if (([v5 isCurrentLocation] & 1) == 0)
  {
    v8 = [v5 name];
    [*(a1 + 32) setSourceName:v8];

    v9 = [v5 _shortAddress];
    [*(a1 + 32) setSourceAddress:v9];

    v10 = [v5 _cnPostalAddress];
    [*(a1 + 32) setSourceAddressComponents:v10];
  }

  v11 = [v6 name];
  [*(a1 + 32) setDestinationName:v11];

  v12 = [v6 _shortAddress];
  [*(a1 + 32) setDestinationAddress:v12];

  v13 = [v6 _cnPostalAddress];
  [*(a1 + 32) setDestinationAddressComponents:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [*(a1 + 32) setTransportType:v14];

  if (([v5 isCurrentLocation] & 1) == 0)
  {
    [v5 _coordinate];
    if (CLLocationCoordinate2DIsValid(v30))
    {
      [v6 _coordinate];
      if (CLLocationCoordinate2DIsValid(v31))
      {
        [v5 _coordinate];
        v16 = v15;
        v18 = v17;
        [v6 _coordinate];
        v20 = v19;
        v22 = v21;
        v23 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v16 longitude:v18];
        v24 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v20 longitude:v22];
        v25 = MEMORY[0x1E696AD98];
        [v23 distanceFromLocation:v24];
        v26 = [v25 numberWithDouble:?];

        [*(a1 + 32) setDistance:v26];
      }
    }
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __55__MKLinkPreviewMetadataRequest__handleDirectionsAction__block_invoke_2;
  v27[3] = &unk_1E76CDA20;
  v29 = *(a1 + 40);
  v28 = *(a1 + 32);
  _performBlockOnMainThreadIfNeeded(v27);
}

void __55__MKLinkPreviewMetadataRequest__handleDirectionsAction__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void __55__MKLinkPreviewMetadataRequest__handleDirectionsAction__block_invoke_2_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void __55__MKLinkPreviewMetadataRequest__handleDirectionsAction__block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40) || *(*(*(a1 + 56) + 8) + 40) || !*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v3 = [v2 initWithDomain:MKErrorDomain code:1 userInfo:MEMORY[0x1E695E0F8]];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__MKLinkPreviewMetadataRequest__handleDirectionsAction__block_invoke_4;
    v7[3] = &unk_1E76CDA20;
    v4 = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    v5 = v3;
    _performBlockOnMainThreadIfNeeded(v7);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_loading && !self->_cancelled)
  {
    self->_cancelled = 1;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)_processURL:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_MKURLGetSchemeType(v5) != 6)
  {
    v8 = [[_MKURLParser alloc] initWithURL:v5];
    v9 = v8;
    if (v8)
    {
      if ([(_MKURLParser *)v8 parseIncludingCustomParameters:1])
      {
        if ([(_MKURLParser *)v9 actionType])
        {
          objc_storeStrong(&self->_parser, v9);
          v10 = [(_MKURLParser *)v9 actionType];
          if (v10 <= 3)
          {
            switch(v10)
            {
              case 1:
                [(MKLinkPreviewMetadataRequest *)self _handleDirectionsAction];
                goto LABEL_21;
              case 2:
                [(MKLinkPreviewMetadataRequest *)self _handleFrameAction];
                goto LABEL_21;
              case 3:
                [(MKLinkPreviewMetadataRequest *)self _handleSearchAction];
                goto LABEL_21;
            }
          }

          else
          {
            if (v10 <= 5)
            {
              if (v10 == 4)
              {
                [(MKLinkPreviewMetadataRequest *)self _handlePlaceAction];
              }

              else
              {
                [(MKLinkPreviewMetadataRequest *)self _handleLookAroundAction];
              }

              goto LABEL_21;
            }

            if (v10 == 6)
            {
              [(MKLinkPreviewMetadataRequest *)self _handleGuidesAction];
              goto LABEL_21;
            }

            if (v10 == 7)
            {
              [(MKLinkPreviewMetadataRequest *)self _handleReportAProblemAction];
              goto LABEL_21;
            }
          }

          v14 = MKGetMKLinkPreviewLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *v15 = 134217984;
            *&v15[4] = [(_MKURLParser *)v9 actionType];
            _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_ERROR, "Unknown URL ActionType encountered : %lu", v15, 0xCu);
          }

LABEL_20:
          [(MKLinkPreviewMetadataRequest *)self _failWithError:0, *v15, *&v15[16], v16];
LABEL_21:

          goto LABEL_22;
        }

        v11 = MKGetMKLinkPreviewLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = NSStringFromSelector(a2);
          *v15 = 138543618;
          *&v15[4] = v12;
          *&v15[12] = 2114;
          *&v15[14] = v5;
          v13 = "%{public}@ parser could not identify action type for %{public}@";
          goto LABEL_18;
        }

LABEL_19:

        goto LABEL_20;
      }

      v11 = MKGetMKLinkPreviewLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v12 = NSStringFromSelector(a2);
      *v15 = 138543618;
      *&v15[4] = v12;
      *&v15[12] = 2114;
      *&v15[14] = v5;
      v13 = "%{public}@ failed parsing %{public}@";
    }

    else
    {
      v11 = MKGetMKLinkPreviewLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v12 = NSStringFromSelector(a2);
      *v15 = 138543618;
      *&v15[4] = v12;
      *&v15[12] = 2114;
      *&v15[14] = v5;
      v13 = "%{public}@ could not build a parser for %{public}@";
    }

LABEL_18:
    _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, v13, v15, 0x16u);

    goto LABEL_19;
  }

  v6 = MKGetMKLinkPreviewLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    *v15 = 138543618;
    *&v15[4] = v7;
    *&v15[12] = 2114;
    *&v15[14] = v5;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ start handling shortURL for %{public}@", v15, 0x16u);
  }

  [(MKLinkPreviewMetadataRequest *)self _handleShortURL:v5];
LABEL_22:
}

- (void)getMetadataWithCompletionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_loading)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    v5 = MKGetMKLinkPreviewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_ERROR, "Cannot call [MKLinkPreviewMetadataRequest getMetadataWithCompletionHandler:] on a metadata request which is already loading", buf, 2u);
    }

    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = [v6 initWithDomain:MKErrorDomain code:1 userInfo:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__MKLinkPreviewMetadataRequest_getMetadataWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E76CDA20;
    v12 = v7;
    v13 = v4;
    v8 = v7;
    _performBlockOnMainThreadIfNeeded(v11);
  }

  else
  {
    self->_loading = 1;
    os_unfair_lock_unlock(&self->_stateLock);
    v9 = MEMORY[0x1A58E9F30](v4);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v9;

    [(MKLinkPreviewMetadataRequest *)self _processURL:self->_url];
  }
}

- (BOOL)isLoading
{
  os_unfair_lock_lock_with_options();
  loading = self->_loading;
  os_unfair_lock_unlock(&self->_stateLock);
  return loading;
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock_with_options();
  cancelled = self->_cancelled;
  os_unfair_lock_unlock(&self->_stateLock);
  return cancelled;
}

- (void)dealloc
{
  [(MKLinkPreviewMetadataRequest *)self cancel];
  v3.receiver = self;
  v3.super_class = MKLinkPreviewMetadataRequest;
  [(MKLinkPreviewMetadataRequest *)&v3 dealloc];
}

- (MKLinkPreviewMetadataRequest)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKLinkPreviewMetadataRequest;
  v6 = [(MKLinkPreviewMetadataRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

@end