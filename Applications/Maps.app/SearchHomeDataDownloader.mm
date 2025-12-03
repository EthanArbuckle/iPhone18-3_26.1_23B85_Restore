@interface SearchHomeDataDownloader
- (NSString)naturalSearchCachedKey;
- (SearchHomeDataDownloader)initWithDelegate:(id)delegate isSearchAlongRoute:(BOOL)route;
- (SearchHomeDataFetcherDelegate)delegate;
- (id)_searchHomeTipDataProvider:(id)provider;
- (id)browseCategoriesDataProviderWithSearchCategories:(id)categories title:(id)title;
- (id)citiesNearYouDataProviderWithSuggestions:(id)suggestions title:(id)title;
- (id)curatedCollectionsDataProviderWithCollectionSuggestions:(id)suggestions title:(id)title;
- (id)publishersDataProviderWithPublisherSuggestions:(id)suggestions title:(id)title;
- (void)fetchContent;
- (void)parseResponse:(id)response;
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

- (id)citiesNearYouDataProviderWithSuggestions:(id)suggestions title:(id)title
{
  suggestionsCopy = suggestions;
  titleCopy = title;
  if (MapsFeature_IsEnabled_Maps269())
  {
    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];
    v9 = [NSString stringWithFormat:@"SearchHomeCitiesNearYou-%@", uUIDString];

    v10 = [SearchHomeCitiesDataProvider alloc];
    guideLocations = [suggestionsCopy guideLocations];
    v12 = [(SearchHomeCitiesDataProvider *)v10 initWithObjects:guideLocations type:5 identifier:v9 title:titleCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)publishersDataProviderWithPublisherSuggestions:(id)suggestions title:(id)title
{
  suggestionsCopy = suggestions;
  titleCopy = title;
  publishers = [suggestionsCopy publishers];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [publishers count]);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  publishers2 = [suggestionsCopy publishers];
  v10 = [publishers2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(publishers2);
        }

        publisher = [*(*(&v22 + 1) + 8 * i) publisher];
        if (publisher)
        {
          [v8 addObject:publisher];
        }
      }

      v11 = [publishers2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = +[NSUUID UUID];
  uUIDString = [v15 UUIDString];
  v17 = [NSString stringWithFormat:@"SearchHomePublishers-%@", uUIDString];

  v18 = [SearchHomePublishersDataProvider alloc];
  v19 = [v8 copy];
  v20 = [(SearchHomePublishersDataProvider *)v18 initWithObjects:v19 type:4 identifier:v17 title:titleCopy];

  return v20;
}

- (id)curatedCollectionsDataProviderWithCollectionSuggestions:(id)suggestions title:(id)title
{
  suggestionsCopy = suggestions;
  titleCopy = title;
  collections = [suggestionsCopy collections];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [collections count]);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  collections2 = [suggestionsCopy collections];
  v10 = [collections2 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(collections2);
        }

        collection = [*(*(&v24 + 1) + 8 * i) collection];
        if (collection)
        {
          [v8 addObject:collection];
        }
      }

      v11 = [collections2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v15 = +[NSUUID UUID];
  uUIDString = [v15 UUIDString];
  v17 = [NSString stringWithFormat:@"SearchHomeCuratedCollections-%@", uUIDString];

  v18 = [SearchHomeCollectionsDataProvider alloc];
  v19 = [v8 copy];
  v20 = [(SearchHomeCollectionsDataProvider *)v18 initWithObjects:v19 type:3 identifier:v17 title:titleCopy];

  if (MapsFeature_IsEnabled_Maps269())
  {
    exploreGuides = [suggestionsCopy exploreGuides];

    if (exploreGuides)
    {
      exploreGuides2 = [suggestionsCopy exploreGuides];
      [(SearchHomeCollectionsDataProvider *)v20 configureWithExploreGuides:exploreGuides2];
    }
  }

  return v20;
}

- (id)browseCategoriesDataProviderWithSearchCategories:(id)categories title:(id)title
{
  categoriesCopy = categories;
  titleCopy = title;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [categoriesCopy count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = categoriesCopy;
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
  uUIDString = [v15 UUIDString];
  v17 = [NSString stringWithFormat:@"SearchHomeBrowseCategories-%@", uUIDString];

  v18 = [SearchHomeBrowseCategoriesDataProvider alloc];
  v19 = [v7 copy];
  v20 = [(SearchHomeBrowseCategoriesDataProvider *)v18 initWithObjects:v19 type:2 identifier:v17 title:titleCopy];

  return v20;
}

- (id)_searchHomeTipDataProvider:(id)provider
{
  v3 = [SearchHomeTipDataProvider alloc];
  v7 = @"SearchHomeTip";
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [(SearchHomeTipDataProvider *)v3 initWithObjects:v4 type:6 identifier:@"SearchHomeTip" title:&stru_1016631F0];

  return v5;
}

- (void)parseResponse:(id)response
{
  responseCopy = response;
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

  cachedNaturalSearchKey = [responseCopy cachedNaturalSearchKey];
  naturalSearchCachedKey = self->_naturalSearchCachedKey;
  self->_naturalSearchCachedKey = cachedNaturalSearchKey;

  sections = [responseCopy sections];
  v12 = [sections count];
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
  v41 = responseCopy;
  sections2 = [responseCopy sections];
  v16 = [sections2 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
          objc_enumerationMutation(sections2);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        sectionType = [v21 sectionType];
        if (sectionType <= 2)
        {
          if (sectionType == 1)
          {
            searchCategories = [v21 searchCategories];
            name = [v21 name];
            v28 = [(SearchHomeDataDownloader *)self browseCategoriesDataProviderWithSearchCategories:searchCategories title:name];

            [v14 addObject:v28];
            v18 = v28;
            continue;
          }

          if (sectionType != 2)
          {
            continue;
          }

          collectionSuggestions = [v21 collectionSuggestions];
          name2 = [v21 name];
          v25 = [(SearchHomeDataDownloader *)self curatedCollectionsDataProviderWithCollectionSuggestions:collectionSuggestions title:name2];
          goto LABEL_22;
        }

        if (sectionType == 3)
        {
          collectionSuggestions = [v21 publisherSuggestions];
          name2 = [v21 name];
          v25 = [(SearchHomeDataDownloader *)self publishersDataProviderWithPublisherSuggestions:collectionSuggestions title:name2];
          goto LABEL_22;
        }

        if (sectionType == 4 && MapsFeature_IsEnabled_Maps269())
        {
          collectionSuggestions = [v21 guideLocationSuggestsions];
          name2 = [v21 name];
          v25 = [(SearchHomeDataDownloader *)self citiesNearYouDataProviderWithSuggestions:collectionSuggestions title:name2];
LABEL_22:
          v29 = v25;
          [v14 addObject:v25];

          continue;
        }
      }

      v17 = [sections2 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
    supportsFullTextSearch = [(SearchHomeDataDownloader *)self supportsFullTextSearch];

    v31 = v41;
    if ((supportsFullTextSearch & 1) == 0)
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

  delegate = [(SearchHomeDataDownloader *)self delegate];
  [delegate didUpdateDataFetcher:self];

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
  delegate = [(SearchHomeDataDownloader *)self delegate];
  newTraits = [delegate newTraits];

  if (!newTraits)
  {
    v5 = sub_100798B6C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      delegate2 = [(SearchHomeDataDownloader *)self delegate];
      *buf = 138412290;
      v50 = delegate2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The defaultTraits are being used because the delegate was found nil, hence the traits were nil. Delegate %@", buf, 0xCu);
    }

    v7 = +[MKMapService sharedService];
    newTraits = [v7 defaultTraits];
  }

  v8 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  virtualGarage = [v8 virtualGarage];
  selectedVehicle = [virtualGarage selectedVehicle];

  if (selectedVehicle)
  {
    lprPowerType = [selectedVehicle lprPowerType];
    lprPowerType = self->_lprPowerType;
    self->_lprPowerType = lprPowerType;
  }

  v13 = [SearchHomeDataDownloaderCacheKey alloc];
  mapRegion = [newTraits mapRegion];
  GEOMapRectForMapRegion();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [newTraits mode] - 1;
  if (v23 > 3)
  {
    v24 = 103;
  }

  else
  {
    v24 = qword_101215FB0[v23];
  }

  v25 = [(SearchHomeDataDownloaderCacheKey *)v13 initWithMapRect:v24 mapType:self->_lprPowerType time:v16 lprPowerType:v18, v20, v22, CFAbsoluteTimeGetCurrent()];

  cache = [(SearchHomeDataDownloader *)self cache];
  v27 = [cache objectForKey:v25];

  if (v27)
  {
    [(SearchHomeDataDownloader *)self parseResponse:v27];
    v28 = sub_100798B6C();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      sections = [v27 sections];
      *buf = 138412290;
      v50 = sections;
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

    delegate3 = [(SearchHomeDataDownloader *)self delegate];
    [delegate3 isTouristHereValue];
    [newTraits setIsTourist:?];

    [newTraits setSearchOriginationType:0];
    if ([(SearchHomeDataDownloader *)self searchAlongRoute])
    {
      [newTraits setNavigating:{-[SearchHomeDataDownloader searchAlongRoute](self, "searchAlongRoute")}];
      v35 = +[MNNavigationService sharedService];
      if ([v35 isInNavigatingState])
      {
        navigationTransportType = [v35 navigationTransportType];
      }

      else
      {
        navigationTransportType = [v35 desiredTransportType];
      }

      [newTraits setNavigationTransportType:navigationTransportType];
      [newTraits setSearchOriginationType:2];
      if (MapsFeature_IsEnabled_VisitedPlaces())
      {
        v37 = 37;
      }

      else
      {
        v37 = 35;
      }

      [newTraits setPlaceSummaryRevision:v37];
      [newTraits addSupportedPlaceSummaryFormatType:1];
      [newTraits addSupportedPlaceSummaryFormatType:2];
      [newTraits addSupportedPlaceSummaryFormatType:3];
    }

    v38 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
    v39 = [v38 updatedTraitsForCurrentGarageState:newTraits];

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
    newTraits = v39;
    v46 = newTraits;
    [v42 submitWithCallbackQueue:parsingQueue handler:v44 networkActivity:0];

    objc_destroyWeak(v47);
    objc_destroyWeak(&location);
  }
}

- (SearchHomeDataDownloader)initWithDelegate:(id)delegate isSearchAlongRoute:(BOOL)route
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = SearchHomeDataDownloader;
  v7 = [(SearchHomeDataDownloader *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v8->_searchAlongRoute = route;
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