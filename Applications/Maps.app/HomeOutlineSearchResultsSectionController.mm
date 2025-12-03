@interface HomeOutlineSearchResultsSectionController
- (BOOL)_isItemVenue:(id)venue;
- (HomeOutlineSearchResultsSectionController)initWithConfiguration:(id)configuration;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSArray)dataProviders;
- (NSArray)itemSnapshots;
- (id)_childItemsInVenueSearchResult:(id)result;
- (id)_searchResultContainingIdentifierPath:(id)path;
- (void)_refreshEVChargers:(id)chargers;
- (void)addMetricsForPlaceSummaryTemplate:(id)template;
- (void)cachePlacesummaryTemplates:(id)templates metadata:(id)metadata location:(id)location openAt:(id)at;
- (void)dealloc;
- (void)didTapOnContainment:(id)containment;
- (void)didTapOnCuratedGuide:(id)guide;
- (void)didTapOnCuratedGuides:(id)guides;
- (void)didTapOnPhotoCarousel:(id)carousel index:(int64_t)index;
- (void)didTapOnReportAnIssue;
- (void)didTapOnUserGeneratedGuide:(id)guide;
- (void)didTapOnUserLibrary:(id)library;
- (void)didTapOnUserNote:(id)note;
- (void)expandElementAtIdentifierPath:(id)path;
- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)result searchFieldItem:(id)item browseCategories:(id)categories;
- (void)presentVenueWithVenueCardItem:(id)item;
- (void)resetEVChargerDownloader;
- (void)searchResultsFilterItem:(id)item didSelectSuggestion:(id)suggestion;
- (void)venuesDropDownOutlineCell:(id)cell didSelectCategory:(id)category;
@end

@implementation HomeOutlineSearchResultsSectionController

- (void)didTapOnReportAnIssue
{
  v8 = [[ReportASearchAutocompleteResult alloc] initWithTitle:0];
  configuration = [(HomeOutlineSectionController *)self configuration];
  actionCoordinator = [configuration actionCoordinator];
  containerViewController = [actionCoordinator containerViewController];
  _maps_mapsSceneDelegate = [containerViewController _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];

  [rapPresenter presentAddToMapsFromSearchEntryPoint:8 result:v8 completion:0];
}

- (void)venuesDropDownOutlineCell:(id)cell didSelectCategory:(id)category
{
  categoryCopy = category;
  cellModel = [cell cellModel];
  venueIdentifier = [cellModel venueIdentifier];

  [(SearchResultsDataProvider *)self->_searchResultsDataProvider selectCategory:categoryCopy forVenueWithVenueIdentifier:venueIdentifier];
}

- (void)didTapOnPhotoCarousel:(id)carousel index:(int64_t)index
{
  carouselCopy = carousel;
  configuration = [(HomeOutlineSectionController *)self configuration];
  homeActionDelegate = [configuration homeActionDelegate];
  [homeActionDelegate homeItemTapped:carouselCopy];
}

- (void)didTapOnUserLibrary:(id)library
{
  configuration = [(HomeOutlineSectionController *)self configuration];
  actionCoordinator = [configuration actionCoordinator];
  [actionCoordinator viewControllerShowLibraryPlacesView:0];
}

- (void)didTapOnUserNote:(id)note
{
  noteCopy = note;
  configuration = [(HomeOutlineSectionController *)self configuration];
  homeActionDelegate = [configuration homeActionDelegate];
  [homeActionDelegate homeItemTapped:noteCopy];
}

- (void)didTapOnContainment:(id)containment
{
  containmentCopy = containment;
  configuration = [(HomeOutlineSectionController *)self configuration];
  homeActionDelegate = [configuration homeActionDelegate];
  searchResults = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchResults];
  [homeActionDelegate homeDidTapOnContainment:containmentCopy forResults:searchResults];
}

- (void)didTapOnCuratedGuides:(id)guides
{
  guidesCopy = guides;
  configuration = [(HomeOutlineSectionController *)self configuration];
  homeActionDelegate = [configuration homeActionDelegate];
  [homeActionDelegate homeDidTapOnCuratedGuides:guidesCopy];
}

- (void)didTapOnCuratedGuide:(id)guide
{
  guideCopy = guide;
  configuration = [(HomeOutlineSectionController *)self configuration];
  homeActionDelegate = [configuration homeActionDelegate];
  [homeActionDelegate homeDidTapOnCuratedGuide:guideCopy];
}

- (void)didTapOnUserGeneratedGuide:(id)guide
{
  guideCopy = guide;
  configuration = [(HomeOutlineSectionController *)self configuration];
  homeActionDelegate = [configuration homeActionDelegate];
  [homeActionDelegate homeDidTapOnUserGeneratedGuide:guideCopy];
}

- (void)searchResultsFilterItem:(id)item didSelectSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v6 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v6 setSuggestion:suggestionCopy];

  configuration = [(HomeOutlineSectionController *)self configuration];
  actionCoordinator = [configuration actionCoordinator];
  v10 = @"SearchSessionIsSuggestionSearch";
  v11 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [actionCoordinator viewController:0 doSearchItem:v6 withUserInfo:v9];
}

- (id)_childItemsInVenueSearchResult:(id)result
{
  mapItem = [result mapItem];
  v5 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider venueProviderForMapItem:mapItem];
  v6 = v5;
  if (v5)
  {
    currentCategory = [v5 currentCategory];
    displayString = [currentCategory displayString];

    _venueInfo = [mapItem _venueInfo];
    venueIdentifier = [_venueInfo venueIdentifier];

    v11 = [VenueDropDownOutlineCellModel alloc];
    browseCategories = [v6 browseCategories];
    currentCategory2 = [v6 currentCategory];
    v14 = [(VenueDropDownOutlineCellModel *)v11 initWithButtonTitle:displayString categories:browseCategories selectedCategory:currentCategory2 venueIdentifier:venueIdentifier delegate:self];

    v19 = v14;
    v15 = [NSArray arrayWithObjects:&v19 count:1];
    venueContents = [v6 venueContents];
    v17 = [v15 arrayByAddingObjectsFromArray:venueContents];
  }

  else
  {
    v17 = &__NSArray0__struct;
  }

  return v17;
}

- (BOOL)_isItemVenue:(id)venue
{
  venueCopy = venue;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapItem = [venueCopy mapItem];
    v5 = [mapItem _venueFeatureType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)result searchFieldItem:(id)item browseCategories:(id)categories
{
  searchResultsDataProvider = self->_searchResultsDataProvider;
  resultCopy = result;
  [(SearchResultsDataProvider *)searchResultsDataProvider handleVenueSearchResultsWithSelectedSearchResult:resultCopy searchFieldItem:item browseCategories:categories];
  searchInfo = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchInfo];
  searchInfo2 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchInfo];
  placeSummaryMetadata = [searchInfo2 placeSummaryMetadata];
  currentLocation = [(CurrentLocationDataProvider *)self->_currentLocationDataProvider currentLocation];
  openAt = [searchInfo openAt];
  [(HomeOutlineSearchResultsSectionController *)self cachePlacesummaryTemplates:resultCopy metadata:placeSummaryMetadata location:currentLocation openAt:openAt];
}

- (void)presentVenueWithVenueCardItem:(id)item
{
  itemCopy = item;
  [(SearchResultsDataProvider *)self->_searchResultsDataProvider presentVenueWithVenueCardItem:itemCopy];
  if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem])
  {
    v4 = itemCopy;
    v5 = [SearchResult alloc];
    venueMapItem = [v4 venueMapItem];

    v7 = [(SearchResult *)v5 initWithMapItem:venueMapItem];
    identifierCache = [(HomeOutlineSectionController *)self identifierCache];
    v9 = [identifierCache identifierForObject:v7];

    sectionIdentifierPath = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v11 = [sectionIdentifierPath identifierPathByAppendingIdentifier:v9];

    [(HomeOutlineSearchResultsSectionController *)self expandElementAtIdentifierPath:v11];
  }
}

- (void)expandElementAtIdentifierPath:(id)path
{
  pathCopy = path;
  v5 = [(HomeOutlineSearchResultsSectionController *)self _searchResultContainingIdentifierPath:pathCopy];
  v6 = v5;
  if (v5)
  {
    searchResultsDataProvider = self->_searchResultsDataProvider;
    mapItem = [v5 mapItem];
    [(SearchResultsDataProvider *)searchResultsDataProvider downloadVenueInfoForMapItem:mapItem];
  }

  v9.receiver = self;
  v9.super_class = HomeOutlineSearchResultsSectionController;
  [(HomeOutlineSectionController *)&v9 expandElementAtIdentifierPath:pathCopy];
}

- (void)addMetricsForPlaceSummaryTemplate:(id)template
{
  templateCopy = template;
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v3 = [[_TtC4Maps19PlaceSummaryMetrics alloc] initWithLeadingMargin:1 trailingMargin:1 topMargin:8.0 bottomMargin:8.0 topLeadingCornerRadius:8.0 topTrailingCornerRadius:8.0 bottomLeadingCornerRadius:0.0 bottomTrailingCornerRadius:0.0 showsDivider:0.0 showPlatter:0.0];
    [templateCopy setMetrics:v3];
  }
}

- (id)_searchResultContainingIdentifierPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length] >= 2)
  {
    identifiers = [pathCopy identifiers];
    v7 = [identifiers objectAtIndexedSubscript:1];

    sectionSnapshot = [(HomeOutlineSectionController *)self sectionSnapshot];
    v9 = [sectionSnapshot childSnapshotWithIdentifier:v7];

    viewModel = [v9 viewModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = viewModel;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    searchResult = [v12 searchResult];
  }

  else
  {
    searchResult = 0;
  }

  return searchResult;
}

- (void)cachePlacesummaryTemplates:(id)templates metadata:(id)metadata location:(id)location openAt:(id)at
{
  templatesCopy = templates;
  metadataCopy = metadata;
  locationCopy = location;
  atCopy = at;
  placeSummaryTemplateViewModels = self->_placeSummaryTemplateViewModels;
  if (placeSummaryTemplateViewModels)
  {
    [(NSCache *)placeSummaryTemplateViewModels removeAllObjects];
  }

  else
  {
    v12 = objc_alloc_init(NSCache);
    v13 = self->_placeSummaryTemplateViewModels;
    self->_placeSummaryTemplateViewModels = v12;
  }

  v37 = +[NSMutableDictionary dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = templatesCopy;
  v15 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v42 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
          v22 = v21;
          if (v21)
          {
            mapItem = [v21 mapItem];
            _geoMapItem = [mapItem _geoMapItem];
            _hasEVCharger = [_geoMapItem _hasEVCharger];

            if (_hasEVCharger)
            {
              v26 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithSearchResult:v22 metadata:metadataCopy currentLocation:locationCopy searchAlongRoute:0 openAt:atCopy];
              if (v26)
              {
                mapItem2 = [v22 mapItem];
                _identifier = [mapItem2 _identifier];
                [(NSDictionary *)v37 setObject:v26 forKeyedSubscript:_identifier];

                v41 = *(&self->super.super.isa + v36);
                mapItem3 = [v22 mapItem];
                [mapItem3 _identifier];
                v30 = v17;
                v31 = p_cache;
                v32 = v14;
                v34 = v33 = self;
                [v41 setObject:v26 forKey:v34];

                self = v33;
                v14 = v32;
                p_cache = v31;
                v17 = v30;
              }
            }
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v16);
  }

  placeSummaryTemplates = self->_placeSummaryTemplates;
  self->_placeSummaryTemplates = v37;
}

- (NSArray)itemSnapshots
{
  searchInfo = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchInfo];
  if (!MapsFeature_IsEnabled_MapsWally() || ([(__CFString *)searchInfo autocompletePerson], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    searchResults = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchResults];
    suggestions = [(SearchResultsDataProvider *)self->_searchResultsDataProvider suggestions];
    currentSuggestion = [(SearchResultsDataProvider *)self->_searchResultsDataProvider currentSuggestion];
    currentLocation = [(CurrentLocationDataProvider *)self->_currentLocationDataProvider currentLocation];
    relatedSuggestion = [(SearchResultsDataProvider *)self->_searchResultsDataProvider relatedSuggestion];
    errorString = [(SearchResultsDataProvider *)self->_searchResultsDataProvider errorString];
    if ([(__CFString *)searchInfo singleResultMode])
    {
      actionCoordinator = [(SearchResultsDataProvider *)self->_searchResultsDataProvider actionCoordinator];
      currentSearchSession = [actionCoordinator currentSearchSession];
      isSpotlightPunchInSearch = [currentSearchSession isSpotlightPunchInSearch];

      if ((isSpotlightPunchInSearch & 1) == 0)
      {
        suggestions2 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider suggestions];
        v25 = [suggestions2 count];

        results = [(__CFString *)searchInfo results];
        firstObject = [results firstObject];
        v28 = [(HomeOutlineSearchResultsSectionController *)self _isItemVenue:firstObject];

        if ((v28 & 1) == 0 && !v25)
        {
          v14 = sub_1000410AC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v29 = @"NO";
            v30 = @"NO";
            *buf = 138412546;
            v53 = @"NO";
            v54 = 2112;
            v55 = @"NO";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Returning empty items here. isVenueResult :%@ and %@", buf, 0x16u);
          }

          v6 = &__NSArray0__struct;
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    if (-[SearchResultsDataProvider isLoading](self->_searchResultsDataProvider, "isLoading") || [errorString length])
    {
      v12 = [[HomeSearchStatusOutlineCellModel alloc] initWithErrorString:errorString enableStructuredRAPAffordance:[(__CFString *)searchInfo enableStructuredRAPAffordance] delegate:self];
      v51 = v12;
      v13 = [NSArray arrayWithObjects:&v51 count:1];
    }

    else if ([suggestions count])
    {
      v31 = [[HomeSearchResultsFilterItem alloc] initWithSuggestions:suggestions currentSuggestion:currentSuggestion delegate:self];
      searchResultsFilterItem = self->_searchResultsFilterItem;
      self->_searchResultsFilterItem = v31;

      v50 = self->_searchResultsFilterItem;
      v12 = [NSArray arrayWithObjects:&v50 count:1];
      v13 = [(HomeSearchStatusOutlineCellModel *)v12 arrayByAddingObjectsFromArray:searchResults];
    }

    else
    {
      if ([(__CFString *)searchInfo hasRelatedSearchSuggestion])
      {
        v12 = [[RelatedSearchSuggestionOutlineCellModel alloc] initWithRelatedSuggestion:relatedSuggestion delegate:self];
        v49 = v12;
        v33 = [NSArray arrayWithObjects:&v49 count:1];
        v14 = [v33 arrayByAddingObjectsFromArray:searchResults];

        goto LABEL_12;
      }

      v34 = self->_searchResultsFilterItem;
      self->_searchResultsFilterItem = 0;

      if (!-[__CFString enableStructuredRAPAffordance](searchInfo, "enableStructuredRAPAffordance") || (-[__CFString results](searchInfo, "results"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 count], v35, !v36))
      {
        v14 = searchResults;
        goto LABEL_13;
      }

      v37 = [ReportASearchAutocompleteResult alloc];
      searchFieldItem = [(__CFString *)searchInfo searchFieldItem];
      title = [searchFieldItem title];
      v12 = [(ReportASearchAutocompleteResult *)v37 initWithTitle:title];

      v13 = [searchResults arrayByAddingObject:v12];
    }

    v14 = v13;
LABEL_12:

LABEL_13:
    v15 = sub_1000410AC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v14 count];
      *buf = 134218242;
      v53 = v16;
      v54 = 2112;
      v55 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "These %lu items %@ will be will be applied to the snapshot.", buf, 0x16u);
    }

    placeSummaryTemplateViewModels = self->_placeSummaryTemplateViewModels;
    if (placeSummaryTemplateViewModels)
    {
      [(NSCache *)placeSummaryTemplateViewModels removeAllObjects];
    }

    if (v14)
    {
      placeSummaryMetadata = [(__CFString *)searchInfo placeSummaryMetadata];
      openAt = [(__CFString *)searchInfo openAt];
      [(HomeOutlineSearchResultsSectionController *)self cachePlacesummaryTemplates:v14 metadata:placeSummaryMetadata location:currentLocation openAt:openAt];
    }

    configuration = [(HomeOutlineSectionController *)self configuration];
    sectionIdentifier = [configuration sectionIdentifier];
    expanded = [(HomeOutlineSectionController *)self expanded];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10057AB94;
    v48[3] = &unk_10165D100;
    v48[4] = self;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10057ACCC;
    v45[3] = &unk_101622200;
    v45[4] = self;
    v46 = searchInfo;
    v47 = currentLocation;
    v43[4] = self;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10057B054;
    v44[3] = &unk_10165D150;
    v44[4] = self;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10057B0C4;
    v43[3] = &unk_10165D178;
    v6 = [HomeOutlineSectionBuilder itemSnapshotsWithItems:v14 sectionIdentifier:sectionIdentifier sectionExpanded:expanded itemIdentifierBlock:v48 viewModelBlock:v45 childItemsBlock:v44 expandedBlock:v43];

    goto LABEL_20;
  }

  searchResults = sub_1000410AC();
  if (os_log_type_enabled(searchResults, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = searchInfo;
    _os_log_impl(&_mh_execute_header, searchResults, OS_LOG_TYPE_INFO, "Returning empty items here : %@", buf, 0xCu);
  }

  v6 = &__NSArray0__struct;
LABEL_21:

  return v6;
}

- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Sidebar] Search Results" value:@"localized string not found" table:0];

  searchResults = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchResults];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [searchResults count]);

  v7 = [[SectionHeaderBasicOutlineCellModel alloc] initWithTitle:v6];

  return v7;
}

- (void)_refreshEVChargers:(id)chargers
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10057B284;
  v3[3] = &unk_101624C88;
  v3[4] = self;
  [chargers enumerateObjectsUsingBlock:v3];
}

- (NSArray)dataProviders
{
  currentLocationDataProvider = self->_currentLocationDataProvider;
  v5[0] = self->_collectionsDataProvider;
  v5[1] = currentLocationDataProvider;
  v5[2] = self->_distanceUnitDataProvider;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

- (void)resetEVChargerDownloader
{
  evChargerDownloader = self->_evChargerDownloader;
  self->_evChargerDownloader = 0;
}

- (void)dealloc
{
  placeSummaryTemplateViewModels = self->_placeSummaryTemplateViewModels;
  if (placeSummaryTemplateViewModels)
  {
    [(NSCache *)placeSummaryTemplateViewModels removeAllObjects];
    v4 = self->_placeSummaryTemplateViewModels;
    self->_placeSummaryTemplateViewModels = 0;
  }

  [(HomeOutlineSearchResultsSectionController *)self resetEVChargerDownloader];
  v5.receiver = self;
  v5.super_class = HomeOutlineSearchResultsSectionController;
  [(HomeOutlineSearchResultsSectionController *)&v5 dealloc];
}

- (HomeOutlineSearchResultsSectionController)initWithConfiguration:(id)configuration
{
  v23.receiver = self;
  v23.super_class = HomeOutlineSearchResultsSectionController;
  v3 = [(HomeOutlineSectionController *)&v23 initWithConfiguration:configuration];
  if (v3)
  {
    v4 = objc_alloc_init(SearchResultsDataProvider);
    searchResultsDataProvider = v3->_searchResultsDataProvider;
    v3->_searchResultsDataProvider = v4;

    configuration = [(HomeOutlineSectionController *)v3 configuration];
    actionCoordinator = [configuration actionCoordinator];
    [(SearchResultsDataProvider *)v3->_searchResultsDataProvider setActionCoordinator:actionCoordinator];

    v8 = [[CollectionsDataProvider alloc] initWithContext:0 observeInfo:0 observeContents:1];
    collectionsDataProvider = v3->_collectionsDataProvider;
    v3->_collectionsDataProvider = v8;

    v10 = objc_alloc_init(CurrentLocationDataProvider);
    currentLocationDataProvider = v3->_currentLocationDataProvider;
    v3->_currentLocationDataProvider = v10;

    v12 = objc_alloc_init(DistanceUnitDataProvider);
    distanceUnitDataProvider = v3->_distanceUnitDataProvider;
    v3->_distanceUnitDataProvider = v12;

    v14 = objc_alloc_init(_TtC4Maps28PlaceSummaryAsyncDataManager);
    asyncDataManager = v3->_asyncDataManager;
    v3->_asyncDataManager = v14;

    v16 = objc_alloc_init(_TtC4Maps31PlaceSummaryEVChargerDownloader);
    evChargerDownloader = v3->_evChargerDownloader;
    v3->_evChargerDownloader = v16;

    v18 = objc_alloc_init(_TtC4Maps35CuratedGuideViewModelDataDownloader);
    curatedGuideDataDownloader = v3->_curatedGuideDataDownloader;
    v3->_curatedGuideDataDownloader = v18;

    v20 = objc_alloc_init(NSCache);
    placeSummaryTemplateViewModels = v3->_placeSummaryTemplateViewModels;
    v3->_placeSummaryTemplateViewModels = v20;
  }

  return v3;
}

@end