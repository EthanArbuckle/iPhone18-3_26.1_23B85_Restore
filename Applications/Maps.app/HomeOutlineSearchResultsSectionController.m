@interface HomeOutlineSearchResultsSectionController
- (BOOL)_isItemVenue:(id)a3;
- (HomeOutlineSearchResultsSectionController)initWithConfiguration:(id)a3;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSArray)dataProviders;
- (NSArray)itemSnapshots;
- (id)_childItemsInVenueSearchResult:(id)a3;
- (id)_searchResultContainingIdentifierPath:(id)a3;
- (void)_refreshEVChargers:(id)a3;
- (void)addMetricsForPlaceSummaryTemplate:(id)a3;
- (void)cachePlacesummaryTemplates:(id)a3 metadata:(id)a4 location:(id)a5 openAt:(id)a6;
- (void)dealloc;
- (void)didTapOnContainment:(id)a3;
- (void)didTapOnCuratedGuide:(id)a3;
- (void)didTapOnCuratedGuides:(id)a3;
- (void)didTapOnPhotoCarousel:(id)a3 index:(int64_t)a4;
- (void)didTapOnReportAnIssue;
- (void)didTapOnUserGeneratedGuide:(id)a3;
- (void)didTapOnUserLibrary:(id)a3;
- (void)didTapOnUserNote:(id)a3;
- (void)expandElementAtIdentifierPath:(id)a3;
- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)a3 searchFieldItem:(id)a4 browseCategories:(id)a5;
- (void)presentVenueWithVenueCardItem:(id)a3;
- (void)resetEVChargerDownloader;
- (void)searchResultsFilterItem:(id)a3 didSelectSuggestion:(id)a4;
- (void)venuesDropDownOutlineCell:(id)a3 didSelectCategory:(id)a4;
@end

@implementation HomeOutlineSearchResultsSectionController

- (void)didTapOnReportAnIssue
{
  v8 = [[ReportASearchAutocompleteResult alloc] initWithTitle:0];
  v3 = [(HomeOutlineSectionController *)self configuration];
  v4 = [v3 actionCoordinator];
  v5 = [v4 containerViewController];
  v6 = [v5 _maps_mapsSceneDelegate];
  v7 = [v6 rapPresenter];

  [v7 presentAddToMapsFromSearchEntryPoint:8 result:v8 completion:0];
}

- (void)venuesDropDownOutlineCell:(id)a3 didSelectCategory:(id)a4
{
  v6 = a4;
  v7 = [a3 cellModel];
  v8 = [v7 venueIdentifier];

  [(SearchResultsDataProvider *)self->_searchResultsDataProvider selectCategory:v6 forVenueWithVenueIdentifier:v8];
}

- (void)didTapOnPhotoCarousel:(id)a3 index:(int64_t)a4
{
  v5 = a3;
  v7 = [(HomeOutlineSectionController *)self configuration];
  v6 = [v7 homeActionDelegate];
  [v6 homeItemTapped:v5];
}

- (void)didTapOnUserLibrary:(id)a3
{
  v4 = [(HomeOutlineSectionController *)self configuration];
  v3 = [v4 actionCoordinator];
  [v3 viewControllerShowLibraryPlacesView:0];
}

- (void)didTapOnUserNote:(id)a3
{
  v4 = a3;
  v6 = [(HomeOutlineSectionController *)self configuration];
  v5 = [v6 homeActionDelegate];
  [v5 homeItemTapped:v4];
}

- (void)didTapOnContainment:(id)a3
{
  v4 = a3;
  v7 = [(HomeOutlineSectionController *)self configuration];
  v5 = [v7 homeActionDelegate];
  v6 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchResults];
  [v5 homeDidTapOnContainment:v4 forResults:v6];
}

- (void)didTapOnCuratedGuides:(id)a3
{
  v4 = a3;
  v6 = [(HomeOutlineSectionController *)self configuration];
  v5 = [v6 homeActionDelegate];
  [v5 homeDidTapOnCuratedGuides:v4];
}

- (void)didTapOnCuratedGuide:(id)a3
{
  v4 = a3;
  v6 = [(HomeOutlineSectionController *)self configuration];
  v5 = [v6 homeActionDelegate];
  [v5 homeDidTapOnCuratedGuide:v4];
}

- (void)didTapOnUserGeneratedGuide:(id)a3
{
  v4 = a3;
  v6 = [(HomeOutlineSectionController *)self configuration];
  v5 = [v6 homeActionDelegate];
  [v5 homeDidTapOnUserGeneratedGuide:v4];
}

- (void)searchResultsFilterItem:(id)a3 didSelectSuggestion:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v6 setSuggestion:v5];

  v7 = [(HomeOutlineSectionController *)self configuration];
  v8 = [v7 actionCoordinator];
  v10 = @"SearchSessionIsSuggestionSearch";
  v11 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v8 viewController:0 doSearchItem:v6 withUserInfo:v9];
}

- (id)_childItemsInVenueSearchResult:(id)a3
{
  v4 = [a3 mapItem];
  v5 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider venueProviderForMapItem:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 currentCategory];
    v8 = [v7 displayString];

    v9 = [v4 _venueInfo];
    v10 = [v9 venueIdentifier];

    v11 = [VenueDropDownOutlineCellModel alloc];
    v12 = [v6 browseCategories];
    v13 = [v6 currentCategory];
    v14 = [(VenueDropDownOutlineCellModel *)v11 initWithButtonTitle:v8 categories:v12 selectedCategory:v13 venueIdentifier:v10 delegate:self];

    v19 = v14;
    v15 = [NSArray arrayWithObjects:&v19 count:1];
    v16 = [v6 venueContents];
    v17 = [v15 arrayByAddingObjectsFromArray:v16];
  }

  else
  {
    v17 = &__NSArray0__struct;
  }

  return v17;
}

- (BOOL)_isItemVenue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 mapItem];
    v5 = [v4 _venueFeatureType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)a3 searchFieldItem:(id)a4 browseCategories:(id)a5
{
  searchResultsDataProvider = self->_searchResultsDataProvider;
  v9 = a3;
  [(SearchResultsDataProvider *)searchResultsDataProvider handleVenueSearchResultsWithSelectedSearchResult:v9 searchFieldItem:a4 browseCategories:a5];
  v14 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchInfo];
  v10 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchInfo];
  v11 = [v10 placeSummaryMetadata];
  v12 = [(CurrentLocationDataProvider *)self->_currentLocationDataProvider currentLocation];
  v13 = [v14 openAt];
  [(HomeOutlineSearchResultsSectionController *)self cachePlacesummaryTemplates:v9 metadata:v11 location:v12 openAt:v13];
}

- (void)presentVenueWithVenueCardItem:(id)a3
{
  v12 = a3;
  [(SearchResultsDataProvider *)self->_searchResultsDataProvider presentVenueWithVenueCardItem:v12];
  if ([v12 conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem])
  {
    v4 = v12;
    v5 = [SearchResult alloc];
    v6 = [v4 venueMapItem];

    v7 = [(SearchResult *)v5 initWithMapItem:v6];
    v8 = [(HomeOutlineSectionController *)self identifierCache];
    v9 = [v8 identifierForObject:v7];

    v10 = [(HomeOutlineSectionController *)self sectionIdentifierPath];
    v11 = [v10 identifierPathByAppendingIdentifier:v9];

    [(HomeOutlineSearchResultsSectionController *)self expandElementAtIdentifierPath:v11];
  }
}

- (void)expandElementAtIdentifierPath:(id)a3
{
  v4 = a3;
  v5 = [(HomeOutlineSearchResultsSectionController *)self _searchResultContainingIdentifierPath:v4];
  v6 = v5;
  if (v5)
  {
    searchResultsDataProvider = self->_searchResultsDataProvider;
    v8 = [v5 mapItem];
    [(SearchResultsDataProvider *)searchResultsDataProvider downloadVenueInfoForMapItem:v8];
  }

  v9.receiver = self;
  v9.super_class = HomeOutlineSearchResultsSectionController;
  [(HomeOutlineSectionController *)&v9 expandElementAtIdentifierPath:v4];
}

- (void)addMetricsForPlaceSummaryTemplate:(id)a3
{
  v4 = a3;
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v3 = [[_TtC4Maps19PlaceSummaryMetrics alloc] initWithLeadingMargin:1 trailingMargin:1 topMargin:8.0 bottomMargin:8.0 topLeadingCornerRadius:8.0 topTrailingCornerRadius:8.0 bottomLeadingCornerRadius:0.0 bottomTrailingCornerRadius:0.0 showsDivider:0.0 showPlatter:0.0];
    [v4 setMetrics:v3];
  }
}

- (id)_searchResultContainingIdentifierPath:(id)a3
{
  v4 = a3;
  if ([v4 length] >= 2)
  {
    v6 = [v4 identifiers];
    v7 = [v6 objectAtIndexedSubscript:1];

    v8 = [(HomeOutlineSectionController *)self sectionSnapshot];
    v9 = [v8 childSnapshotWithIdentifier:v7];

    v10 = [v9 viewModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v5 = [v12 searchResult];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)cachePlacesummaryTemplates:(id)a3 metadata:(id)a4 location:(id)a5 openAt:(id)a6
{
  v10 = a3;
  v40 = a4;
  v39 = a5;
  v38 = a6;
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
  v14 = v10;
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
            v23 = [v21 mapItem];
            v24 = [v23 _geoMapItem];
            v25 = [v24 _hasEVCharger];

            if (v25)
            {
              v26 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithSearchResult:v22 metadata:v40 currentLocation:v39 searchAlongRoute:0 openAt:v38];
              if (v26)
              {
                v27 = [v22 mapItem];
                v28 = [v27 _identifier];
                [(NSDictionary *)v37 setObject:v26 forKeyedSubscript:v28];

                v41 = *(&self->super.super.isa + v36);
                v29 = [v22 mapItem];
                [v29 _identifier];
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
  v3 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchInfo];
  if (!MapsFeature_IsEnabled_MapsWally() || ([(__CFString *)v3 autocompletePerson], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchResults];
    v42 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider suggestions];
    v41 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider currentSuggestion];
    v7 = [(CurrentLocationDataProvider *)self->_currentLocationDataProvider currentLocation];
    v40 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider relatedSuggestion];
    v8 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider errorString];
    if ([(__CFString *)v3 singleResultMode])
    {
      v9 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider actionCoordinator];
      v10 = [v9 currentSearchSession];
      v11 = [v10 isSpotlightPunchInSearch];

      if ((v11 & 1) == 0)
      {
        v24 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider suggestions];
        v25 = [v24 count];

        v26 = [(__CFString *)v3 results];
        v27 = [v26 firstObject];
        v28 = [(HomeOutlineSearchResultsSectionController *)self _isItemVenue:v27];

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

    if (-[SearchResultsDataProvider isLoading](self->_searchResultsDataProvider, "isLoading") || [v8 length])
    {
      v12 = [[HomeSearchStatusOutlineCellModel alloc] initWithErrorString:v8 enableStructuredRAPAffordance:[(__CFString *)v3 enableStructuredRAPAffordance] delegate:self];
      v51 = v12;
      v13 = [NSArray arrayWithObjects:&v51 count:1];
    }

    else if ([v42 count])
    {
      v31 = [[HomeSearchResultsFilterItem alloc] initWithSuggestions:v42 currentSuggestion:v41 delegate:self];
      searchResultsFilterItem = self->_searchResultsFilterItem;
      self->_searchResultsFilterItem = v31;

      v50 = self->_searchResultsFilterItem;
      v12 = [NSArray arrayWithObjects:&v50 count:1];
      v13 = [(HomeSearchStatusOutlineCellModel *)v12 arrayByAddingObjectsFromArray:v5];
    }

    else
    {
      if ([(__CFString *)v3 hasRelatedSearchSuggestion])
      {
        v12 = [[RelatedSearchSuggestionOutlineCellModel alloc] initWithRelatedSuggestion:v40 delegate:self];
        v49 = v12;
        v33 = [NSArray arrayWithObjects:&v49 count:1];
        v14 = [v33 arrayByAddingObjectsFromArray:v5];

        goto LABEL_12;
      }

      v34 = self->_searchResultsFilterItem;
      self->_searchResultsFilterItem = 0;

      if (!-[__CFString enableStructuredRAPAffordance](v3, "enableStructuredRAPAffordance") || (-[__CFString results](v3, "results"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 count], v35, !v36))
      {
        v14 = v5;
        goto LABEL_13;
      }

      v37 = [ReportASearchAutocompleteResult alloc];
      v38 = [(__CFString *)v3 searchFieldItem];
      v39 = [v38 title];
      v12 = [(ReportASearchAutocompleteResult *)v37 initWithTitle:v39];

      v13 = [v5 arrayByAddingObject:v12];
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
      v18 = [(__CFString *)v3 placeSummaryMetadata];
      v19 = [(__CFString *)v3 openAt];
      [(HomeOutlineSearchResultsSectionController *)self cachePlacesummaryTemplates:v14 metadata:v18 location:v7 openAt:v19];
    }

    v20 = [(HomeOutlineSectionController *)self configuration];
    v21 = [v20 sectionIdentifier];
    v22 = [(HomeOutlineSectionController *)self expanded];
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
    v46 = v3;
    v47 = v7;
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
    v6 = [HomeOutlineSectionBuilder itemSnapshotsWithItems:v14 sectionIdentifier:v21 sectionExpanded:v22 itemIdentifierBlock:v48 viewModelBlock:v45 childItemsBlock:v44 expandedBlock:v43];

    goto LABEL_20;
  }

  v5 = sub_1000410AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Returning empty items here : %@", buf, 0xCu);
  }

  v6 = &__NSArray0__struct;
LABEL_21:

  return v6;
}

- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Sidebar] Search Results" value:@"localized string not found" table:0];

  v5 = [(SearchResultsDataProvider *)self->_searchResultsDataProvider searchResults];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [v5 count]);

  v7 = [[SectionHeaderBasicOutlineCellModel alloc] initWithTitle:v6];

  return v7;
}

- (void)_refreshEVChargers:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10057B284;
  v3[3] = &unk_101624C88;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
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

- (HomeOutlineSearchResultsSectionController)initWithConfiguration:(id)a3
{
  v23.receiver = self;
  v23.super_class = HomeOutlineSearchResultsSectionController;
  v3 = [(HomeOutlineSectionController *)&v23 initWithConfiguration:a3];
  if (v3)
  {
    v4 = objc_alloc_init(SearchResultsDataProvider);
    searchResultsDataProvider = v3->_searchResultsDataProvider;
    v3->_searchResultsDataProvider = v4;

    v6 = [(HomeOutlineSectionController *)v3 configuration];
    v7 = [v6 actionCoordinator];
    [(SearchResultsDataProvider *)v3->_searchResultsDataProvider setActionCoordinator:v7];

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