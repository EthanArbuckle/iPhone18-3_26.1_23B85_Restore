@interface SearchHomeDataDownloader
- (NSString)naturalSearchCachedKey;
- (SearchHomeDataDownloader)initWithDelegate:(id)a3 isSearchAlongRoute:(BOOL)a4;
- (SearchHomeDataFetcherDelegate)delegate;
- (id)_searchHomeTipDataProvider:(id)a3;
- (id)browseCategoriesDataProviderWithSearchCategories:(id)a3 title:(id)a4;
- (id)citiesNearYouDataProviderWithSuggestions:(id)a3 title:(id)a4;
- (id)curatedCollectionsDataProviderWithCollectionSuggestions:(id)a3 title:(id)a4;
- (id)publishersDataProviderWithPublisherSuggestions:(id)a3 title:(id)a4;
- (void)fetchContent;
- (void)parseResponse:(id)a3;
@end

@implementation SearchHomeDataDownloader

- (SearchHomeDataFetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)naturalSearchCachedKey
{
  if (MapsFeature_IsEnabled_NaturalSearchMaps())
  {
    naturalSearchCachedKey = self->_naturalSearchCachedKey;
  }

  else
  {
    naturalSearchCachedKey = 0;
  }

  return naturalSearchCachedKey;
}

- (id)citiesNearYouDataProviderWithSuggestions:(id)a3 title:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (MapsFeature_IsEnabled_Maps269())
  {
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
    v9 = [NSString stringWithFormat:@"SearchHomeCitiesNearYou-%@", v8];

    v10 = [SearchHomeCitiesDataProvider alloc];
    v11 = [v5 guideLocations];
    v12 = [(SearchHomeCitiesDataProvider *)v10 initWithObjects:v11 type:5 identifier:v9 title:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)publishersDataProviderWithPublisherSuggestions:(id)a3 title:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 publishers];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v5 publishers];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v22 + 1) + 8 * i) publisher];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = +[NSUUID UUID];
  v16 = [v15 UUIDString];
  v17 = [NSString stringWithFormat:@"SearchHomePublishers-%@", v16];

  v18 = [SearchHomePublishersDataProvider alloc];
  v19 = [v8 copy];
  v20 = [(SearchHomePublishersDataProvider *)v18 initWithObjects:v19 type:4 identifier:v17 title:v6];

  return v20;
}

- (id)curatedCollectionsDataProviderWithCollectionSuggestions:(id)a3 title:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 collections];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v5 collections];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v24 + 1) + 8 * i) collection];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v15 = +[NSUUID UUID];
  v16 = [v15 UUIDString];
  v17 = [NSString stringWithFormat:@"SearchHomeCuratedCollections-%@", v16];

  v18 = [SearchHomeCollectionsDataProvider alloc];
  v19 = [v8 copy];
  v20 = [(SearchHomeCollectionsDataProvider *)v18 initWithObjects:v19 type:3 identifier:v17 title:v6];

  if (MapsFeature_IsEnabled_Maps269())
  {
    v21 = [v5 exploreGuides];

    if (v21)
    {
      v22 = [v5 exploreGuides];
      [(SearchHomeCollectionsDataProvider *)v20 configureWithExploreGuides:v22];
    }
  }

  return v20;
}

- (id)browseCategoriesDataProviderWithSearchCategories:(id)a3 title:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[BrowseCategory alloc] initWithCategory:*(*(&v22 + 1) + 8 * i)];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v14 = sub_100798B6C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "The Search Browse Categories in the response are : %@", buf, 0xCu);
  }

  v15 = +[NSUUID UUID];
  v16 = [v15 UUIDString];
  v17 = [NSString stringWithFormat:@"SearchHomeBrowseCategories-%@", v16];

  v18 = [SearchHomeBrowseCategoriesDataProvider alloc];
  v19 = [v7 copy];
  v20 = [(SearchHomeBrowseCategoriesDataProvider *)v18 initWithObjects:v19 type:2 identifier:v17 title:v6];

  return v20;
}

- (id)_searchHomeTipDataProvider:(id)a3
{
  v3 = [SearchHomeTipDataProvider alloc];
  v7 = @"SearchHomeTip";
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [(SearchHomeTipDataProvider *)v3 initWithObjects:v4 type:6 identifier:@"SearchHomeTip" title:&stru_1016631F0];

  return v5;
}

- (void)parseResponse:(id)a3
{
  v4 = a3;
  v5 = sub_100EC1E20();
  v6 = os_signpost_id_generate(v5);

  v7 = sub_100EC1E20();
  v8 = v7;
  v40 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "BuildingDataProviders", "", buf, 2u);
  }

  spid = v6;

  v9 = [v4 cachedNaturalSearchKey];
  naturalSearchCachedKey = self->_naturalSearchCachedKey;
  self->_naturalSearchCachedKey = v9;

  v11 = [v4 sections];
  v12 = [v11 count];
  if ([(NSString *)self->_naturalSearchCachedKey length])
  {
    v13 = [(SearchHomeDataDownloader *)self searchAlongRoute]^ 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [NSMutableArray arrayWithCapacity:&v12[v13]];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v41 = v4;
  v15 = [v4 sections];
  v16 = [v15 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v43;
    while (1)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        v22 = [v21 sectionType];
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            v26 = [v21 searchCategories];
            v27 = [v21 name];
            v28 = [(SearchHomeDataDownloader *)self browseCategoriesDataProviderWithSearchCategories:v26 title:v27];

            [v14 addObject:v28];
            v18 = v28;
            continue;
          }

          if (v22 != 2)
          {
            continue;
          }

          v23 = [v21 collectionSuggestions];
          v24 = [v21 name];
          v25 = [(SearchHomeDataDownloader *)self curatedCollectionsDataProviderWithCollectionSuggestions:v23 title:v24];
          goto LABEL_22;
        }

        if (v22 == 3)
        {
          v23 = [v21 publisherSuggestions];
          v24 = [v21 name];
          v25 = [(SearchHomeDataDownloader *)self publishersDataProviderWithPublisherSuggestions:v23 title:v24];
          goto LABEL_22;
        }

        if (v22 == 4 && MapsFeature_IsEnabled_Maps269())
        {
          v23 = [v21 guideLocationSuggestsions];
          v24 = [v21 name];
          v25 = [(SearchHomeDataDownloader *)self citiesNearYouDataProviderWithSuggestions:v23 title:v24];
LABEL_22:
          v29 = v25;
          [v14 addObject:v25];

          continue;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (!v17)
      {
        goto LABEL_27;
      }
    }
  }

  v18 = 0;
LABEL_27:

  v30 = +[MapsOfflineUIHelper sharedHelper];
  if ([v30 isUsingOfflineMaps] && !-[SearchHomeDataDownloader searchAlongRoute](self, "searchAlongRoute"))
  {
    v38 = [(SearchHomeDataDownloader *)self supportsFullTextSearch];

    v31 = v41;
    if ((v38 & 1) == 0)
    {
      v32 = 0;
      goto LABEL_31;
    }
  }

  else
  {

    v31 = v41;
  }

  v32 = [v14 count] == 1;
LABEL_31:
  [v18 setWantsOneColumnLayout:v32];
  if (![(SearchHomeDataDownloader *)self searchAlongRoute]&& [(NSString *)self->_naturalSearchCachedKey length])
  {
    v33 = [(SearchHomeDataDownloader *)self _searchHomeTipDataProvider:self->_naturalSearchCachedKey];
    [v14 addObject:v33];
  }

  self->_isFetchingDataComplete = 1;
  v34 = [v14 copy];
  [(SearchHomeDataDownloader *)self setDataProviders:v34];

  v35 = [(SearchHomeDataDownloader *)self delegate];
  [v35 didUpdateDataFetcher:self];

  v36 = sub_100EC1E20();
  v37 = v36;
  if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, spid, "BuildingDataProviders", "", buf, 2u);
  }
}

- (void)fetchContent
{
  self->_isFetchingDataComplete = 0;
  v3 = [(SearchHomeDataDownloader *)self delegate];
  v4 = [v3 newTraits];

  if (!v4)
  {
    v5 = sub_100798B6C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(SearchHomeDataDownloader *)self delegate];
      *buf = 138412290;
      v50 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The defaultTraits are being used because the delegate was found nil, hence the traits were nil. Delegate %@", buf, 0xCu);
    }

    v7 = +[MKMapService sharedService];
    v4 = [v7 defaultTraits];
  }

  v8 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v9 = [v8 virtualGarage];
  v10 = [v9 selectedVehicle];

  if (v10)
  {
    v11 = [v10 lprPowerType];
    lprPowerType = self->_lprPowerType;
    self->_lprPowerType = v11;
  }

  v13 = [SearchHomeDataDownloaderCacheKey alloc];
  v14 = [v4 mapRegion];
  GEOMapRectForMapRegion();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v4 mode] - 1;
  if (v23 > 3)
  {
    v24 = 103;
  }

  else
  {
    v24 = qword_101215FB0[v23];
  }

  v25 = [(SearchHomeDataDownloaderCacheKey *)v13 initWithMapRect:v24 mapType:self->_lprPowerType time:v16 lprPowerType:v18, v20, v22, CFAbsoluteTimeGetCurrent()];

  v26 = [(SearchHomeDataDownloader *)self cache];
  v27 = [v26 objectForKey:v25];

  if (v27)
  {
    [(SearchHomeDataDownloader *)self parseResponse:v27];
    v28 = sub_100798B6C();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [v27 sections];
      *buf = 138412290;
      v50 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "The cached categories are being used. Sections %@", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v30 = sub_100EC1E20();
    v31 = os_signpost_id_generate(v30);

    v32 = sub_100EC1E20();
    v33 = v32;
    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "FetchingSearchHome", "", buf, 2u);
    }

    v34 = [(SearchHomeDataDownloader *)self delegate];
    [v34 isTouristHereValue];
    [v4 setIsTourist:?];

    [v4 setSearchOriginationType:0];
    if ([(SearchHomeDataDownloader *)self searchAlongRoute])
    {
      [v4 setNavigating:{-[SearchHomeDataDownloader searchAlongRoute](self, "searchAlongRoute")}];
      v35 = +[MNNavigationService sharedService];
      if ([v35 isInNavigatingState])
      {
        v36 = [v35 navigationTransportType];
      }

      else
      {
        v36 = [v35 desiredTransportType];
      }

      [v4 setNavigationTransportType:v36];
      [v4 setSearchOriginationType:2];
      if (MapsFeature_IsEnabled_VisitedPlaces())
      {
        v37 = 37;
      }

      else
      {
        v37 = 35;
      }

      [v4 setPlaceSummaryRevision:v37];
      [v4 addSupportedPlaceSummaryFormatType:1];
      [v4 addSupportedPlaceSummaryFormatType:2];
      [v4 addSupportedPlaceSummaryFormatType:3];
    }

    v38 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
    v39 = [v38 updatedTraitsForCurrentGarageState:v4];

    v40 = sub_100798B6C();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "The category request is made with the traits: %@", buf, 0xCu);
    }

    v41 = +[MKMapService sharedService];
    v42 = [v41 ticketForSearchHomeWithTraits:v39];

    parsingQueue = self->_parsingQueue;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100EC2440;
    v44[3] = &unk_101657F88;
    objc_copyWeak(v47, &location);
    v47[1] = v31;
    v45 = v25;
    v4 = v39;
    v46 = v4;
    [v42 submitWithCallbackQueue:parsingQueue handler:v44 networkActivity:0];

    objc_destroyWeak(v47);
    objc_destroyWeak(&location);
  }
}

- (SearchHomeDataDownloader)initWithDelegate:(id)a3 isSearchAlongRoute:(BOOL)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = SearchHomeDataDownloader;
  v7 = [(SearchHomeDataDownloader *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v8->_searchAlongRoute = a4;
    v9 = objc_alloc_init(SearchHomeDataDownloaderCache);
    cache = v8->_cache;
    v8->_cache = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.Maps.Search.SearchHomeParsingResponse", v11);
    parsingQueue = v8->_parsingQueue;
    v8->_parsingQueue = v12;
  }

  return v8;
}

@end