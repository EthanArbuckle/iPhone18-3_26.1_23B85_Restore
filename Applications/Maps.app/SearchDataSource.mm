@interface SearchDataSource
- (BOOL)shouldReloadOnHeightChange;
- (BOOL)shouldShowLoadingIndicator;
- (BOOL)shouldShowNoResultsCell;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (SearchDataSource)initWithTableView:(id)view;
- (double)rowHeight;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_contentFilteredIfNeeded;
- (id)autocompleteObjectAtIndexPath:(id)path;
- (id)flattenedArray;
- (id)flattenedIndexPath:(id)path;
- (id)objectAtIndexPath:(id)path;
- (id)objectsForAnalytics;
- (id)personalizedItemForQuickActionMenuWithCell:(id)cell;
- (id)placeSummaryTemplateForObject:(id)object autocompleteClientSourceType:(int64_t)type atIndexPath:(id)path;
- (id)sectionAtIndex:(unint64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view legacyCellFromSearchCompletion:(id)completion accessoryViewType:(int64_t)type indexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)_hoverGestureRecognizerStateDidChange:(id)change;
- (void)_invalidateFilteredContent;
- (void)_sendAnalyticsForDataSelectedAtIndexPath:(id)path fromContent:(id)content childPlaceIndexPath:(id)indexPath childItem:(id)item resultRefinement:(id)refinement containmentParent:(id)parent tappableEntryIdentifier:(id)identifier tappedAccessoryViewType:(int64_t)self0;
- (void)_sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:(id)path indexPathInSection:(id)section sections:(id)sections context:(id)context selectedChildItemIndexPath:(id)indexPath indexOfResultWithSelectedChildItem:(id)item;
- (void)configureAutocompleteOriginationTypeFromSource:(int)source inTraits:(id)traits;
- (void)didTapOnAccessoryEntityQueryAcceleratorWithCell:(id)cell;
- (void)didTapOnAccessoryView:(id)view withType:(int64_t)type object:(id)object;
- (void)didTapOnContainmentParentMapItem:(id)item cell:(id)cell;
- (void)didTapOnCuratedGuide:(id)guide cell:(id)cell;
- (void)didTapOnCuratedGuides:(id)guides cell:(id)cell;
- (void)didTapOnItemInChildItems:(id)items cell:(id)cell buttonIndex:(int64_t)index;
- (void)didTapOnReportAnIssue;
- (void)didTapOnResultRefinement:(id)refinement cell:(id)cell;
- (void)didTapOnTappableEntryWithMapItemIdentifier:(id)identifier cell:(id)cell;
- (void)didTapOnUserGeneratedGuide:(id)guide cell:(id)cell;
- (void)invalidateDataForFilterChange;
- (void)reset;
- (void)searchDataProviderDidUpdate:(id)update;
- (void)sendMapsSuggestionsInsightsAnalyticsWithEntry:(id)entry;
- (void)setActive:(BOOL)active;
- (void)setInputText:(id)text tappedQuerySuggestionCompletion:(id)completion isRetainQuery:(BOOL)query traits:(id)traits source:(int)source;
- (void)setResultTypes:(unint64_t)types;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation SearchDataSource

- (void)sendMapsSuggestionsInsightsAnalyticsWithEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contact = [entryCopy contact];
    if (!contact)
    {
      goto LABEL_29;
    }

    _geoMapItem = MapsSuggestionsEngineForMapsProcess();
    [_geoMapItem feedbackForContact:contact action:1];
  }

  else
  {
    v5 = entryCopy;
    v6 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
    objc_opt_class();
    v7 = v5;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9 && ([v9 historyEntry], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "conformsToProtocol:", v6), v10, v11))
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = v7;
      v14 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
      objc_opt_class();
      v15 = v13;
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17 && ([v17 historyEntry], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "conformsToProtocol:", v14), v18, v19))
      {
        v20 = v15;
      }

      else
      {
        v20 = 0;
      }

      historyEntry = [v20 historyEntry];
      geoMapItem = [historyEntry geoMapItem];
      contact = [MKMapItem _itemWithGeoMapItem:geoMapItem];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        contact = [v7 mapItem];
      }

      else
      {
        contact = 0;
      }
    }

    _geoMapItem = [contact _geoMapItem];
    if (_geoMapItem)
    {
      v23 = MapsSuggestionsMapItemConvertIfNeeded();
      if (v23)
      {
        v24 = MapsSuggestionsEngineForMapsProcess();
        [v24 feedbackForMapItem:v23 action:1];
      }
    }
  }

LABEL_29:
}

- (void)_sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:(id)path indexPathInSection:(id)section sections:(id)sections context:(id)context selectedChildItemIndexPath:(id)indexPath indexOfResultWithSelectedChildItem:(id)item
{
  pathCopy = path;
  sectionCopy = section;
  sectionsCopy = sections;
  contextCopy = context;
  indexPathCopy = indexPath;
  itemCopy = item;
  v42 = itemCopy;
  v43 = indexPathCopy;
  if (sectionsCopy)
  {
    v52 = [(SearchDataProvider *)self->_searchDataProvider autocompleteAnalyticsSuggestionsFromSections:sectionsCopy context:contextCopy selectedChildItemIndexPath:indexPathCopy indexOfResultWithSelectedChildItem:itemCopy];
  }

  else
  {
    v52 = 0;
  }

  if ([(SearchDataProvider *)self->_searchDataProvider hasShowAutocompleteClientSource])
  {
    v49 = [NSNumber numberWithBool:[(SearchDataProvider *)self->_searchDataProvider showAutocompleteClientSource]];
  }

  else
  {
    v49 = 0;
  }

  if (pathCopy)
  {
    v51 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pathCopy row]);
  }

  else
  {
    v51 = 0;
  }

  v44 = sectionsCopy;
  v41 = sectionCopy;
  if (sectionCopy)
  {
    v50 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sectionCopy section]);
    v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sectionCopy row]);
  }

  else
  {
    v40 = 0;
    v50 = 0;
  }

  queryString = [contextCopy queryString];
  query = [contextCopy query];
  queryTerms = [query queryTerms];
  v33 = [NSNumber numberWithBool:[(SearchDataProvider *)self->_searchDataProvider lastRequestIsRetainQuery]];
  rankerResponseStatus = [(SearchDataProvider *)self->_searchDataProvider rankerResponseStatus];
  modelMetadata = [(SearchDataProvider *)self->_searchDataProvider modelMetadata];
  modelVersion = [modelMetadata modelVersion];
  modelMetadata2 = [(SearchDataProvider *)self->_searchDataProvider modelMetadata];
  rolloutId = [modelMetadata2 rolloutId];
  modelMetadata3 = [(SearchDataProvider *)self->_searchDataProvider modelMetadata];
  rolloutDeploymentId = [modelMetadata3 rolloutDeploymentId];
  modelMetadata4 = [(SearchDataProvider *)self->_searchDataProvider modelMetadata];
  rolloutFactorpackId = [modelMetadata4 rolloutFactorpackId];
  modelMetadata5 = [(SearchDataProvider *)self->_searchDataProvider modelMetadata];
  rolloutRampId = [modelMetadata5 rolloutRampId];
  experimentMetadata = [(SearchDataProvider *)self->_searchDataProvider experimentMetadata];
  experimentId = [experimentMetadata experimentId];
  experimentMetadata2 = [(SearchDataProvider *)self->_searchDataProvider experimentMetadata];
  v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [experimentMetadata2 deploymentId]);
  experimentMetadata3 = [(SearchDataProvider *)self->_searchDataProvider experimentMetadata];
  [experimentMetadata3 treatmentId];
  v24 = v36 = contextCopy;
  experimentMetadata4 = [(SearchDataProvider *)self->_searchDataProvider experimentMetadata];
  experimentDescription = [experimentMetadata4 experimentDescription];
  LODWORD(v27) = rankerResponseStatus;
  [GEOAPPortal captureClientACSuggestionWithQuery:queryString queryTokens:queryTerms entries:v52 selectedIndex:v51 selectedSectionIndex:v50 withinSectionSelectedIndex:v40 isRetainedQuery:v33 isRerankerTriggered:0 shouldDifferentiateClientAndServerResults:v49 responseStatus:v27 GEOModelMetadata_modelVersion:modelVersion GEOModelMetadata_rolloutId:rolloutId GEOModelMetadata_rolloutDeploymentId:rolloutDeploymentId GEOModelMetadata_rolloutFactorpackId:rolloutFactorpackId GEOModelMetadata_rolloutRampId:rolloutRampId GEOExperimentMetadata_experimentId:experimentId GEOExperimentMetadata_deploymentId:v22 GEOExperimentMetadata_treatmentId:v24 GEOExperimentMetadata_experimentDescription:experimentDescription];
}

- (void)_sendAnalyticsForDataSelectedAtIndexPath:(id)path fromContent:(id)content childPlaceIndexPath:(id)indexPath childItem:(id)item resultRefinement:(id)refinement containmentParent:(id)parent tappableEntryIdentifier:(id)identifier tappedAccessoryViewType:(int64_t)self0
{
  pathCopy = path;
  contentCopy = content;
  indexPathCopy = indexPath;
  itemCopy = item;
  refinementCopy = refinement;
  parentCopy = parent;
  identifierCopy = identifier;
  v22 = [pathCopy row];
  if (v22 < [contentCopy count])
  {
    v81 = itemCopy;
    v82 = identifierCopy;
    v85 = refinementCopy;
    if ([(SearchDataProvider *)self->_searchDataProvider searchMode]== 1)
    {
      searchFieldTypeForAnalytics = 1;
    }

    else if ([(SearchDataProvider *)self->_searchDataProvider searchMode]== 2)
    {
      delegate = [(DataSource *)self delegate];
      v34 = [delegate conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

      if (v34)
      {
        delegate2 = [(DataSource *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          searchFieldTypeForAnalytics = [delegate2 searchFieldTypeForAnalytics];
        }

        else
        {
          searchFieldTypeForAnalytics = 2;
        }
      }

      else
      {
        searchFieldTypeForAnalytics = 2;
      }
    }

    else
    {
      searchFieldTypeForAnalytics = 0;
    }

    v36 = +[MapsAnalyticsHelper analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:](MapsAnalyticsHelper, "analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:", contentCopy, [pathCopy row]);
    v37 = v36;
    +[MapsAnalyticStateProvider updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:](MapsAnalyticStateProvider, "updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:", v36, self->_searchText, [pathCopy row], searchFieldTypeForAnalytics, -[SearchDataProvider searchRequestAnalyticsSequenceNumber](self->_searchDataProvider, "searchRequestAnalyticsSequenceNumber"));
    v38 = [contentCopy objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      autocompleteObject = [v38 autocompleteObject];

      v38 = autocompleteObject;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[AutocompleteAnalyticsManager addAPlaceTappedWithNumberOfResults:](self->_analyticsManager, "addAPlaceTappedWithNumberOfResults:", [contentCopy count]);
LABEL_21:
      v32 = itemCopy;
      identifierCopy = v82;
LABEL_22:
      v40 = +[GEOAPSharedStateData sharedData];
      [v40 clearSuggestionsData];

      refinementCopy = v85;
      goto LABEL_23;
    }

    if (parentCopy)
    {
      -[AutocompleteAnalyticsManager containmentParentUnitTappedWithMuid:](self->_analyticsManager, "containmentParentUnitTappedWithMuid:", [parentCopy _muid]);
      goto LABEL_21;
    }

    v79 = v36;
    if (v85)
    {
      analyticsManager = self->_analyticsManager;
      toggle = [v85 toggle];
      refinementKey = [toggle refinementKey];
      [(AutocompleteAnalyticsManager *)analyticsManager resultRefinementTappedWithKey:refinementKey];

      v32 = itemCopy;
      identifierCopy = v82;
LABEL_28:
      v37 = v79;
      goto LABEL_22;
    }

    identifierCopy = v82;
    if (v82)
    {
      -[AutocompleteAnalyticsManager tappableEntryUnitTappedWithMuid:](self->_analyticsManager, "tappableEntryUnitTappedWithMuid:", [v82 muid]);
      v32 = itemCopy;
      goto LABEL_28;
    }

    v32 = itemCopy;
    if (itemCopy)
    {
      childItemAction = [itemCopy childItemAction];

      if (childItemAction)
      {
        childItemAction2 = [itemCopy childItemAction];
        childItemAction3 = [itemCopy childItemAction];
        v47 = [childItemAction2 childActionTypeAsString:{objc_msgSend(childItemAction3, "childActionType")}];
      }

      else
      {
        v47 = 0;
      }

      identifierCopy = 0;
      v37 = v79;
      childItemPlace = [v81 childItemPlace];
      LOBYTE(v75) = 0;
      [(DataSource *)self sendAnalyticsForDataAtIndexPath:pathCopy object:v38 childPlaceIndexPath:indexPathCopy childPlaceObject:childItemPlace action:2031 eventValue:v47 populateSearchTapEvent:v75];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        publisherResult = [v38 publisherResult];
        publisher = [publisherResult publisher];

        childItemAction4 = [v81 childItemAction];
        guideLocation = [childItemAction4 guideLocation];

        if (publisher)
        {
          v57 = self->_analyticsManager;
          identifier = [publisher identifier];
          muid = [identifier muid];
          v60 = [pathCopy row];
          v61 = muid;
          v32 = v81;
          [(AutocompleteAnalyticsManager *)v57 publisherChildItemButtonTappedWithPublisherMuid:v61 verticalIndex:v60];

          v37 = v79;
          v62 = guideLocation;
        }

        else
        {
          v62 = guideLocation;
          if (guideLocation)
          {
            -[AutocompleteAnalyticsManager guidesHomeChildItemButtonTappedWithVerticalIndex:](self->_analyticsManager, "guidesHomeChildItemButtonTappedWithVerticalIndex:", [pathCopy row]);
            v62 = guideLocation;
          }
        }
      }

      goto LABEL_22;
    }

    objc_opt_class();
    v48 = 2007;
    if (objc_opt_isKindOfClass())
    {
      if ([v38 entryTapBehavior] == 1)
      {
        v48 = 2087;
      }

      else
      {
        v48 = 2007;
      }
    }

    if (type == 2)
    {
      v49 = 2032;
    }

    else
    {
      v49 = v48;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = v38;
      mapItem = [v50 mapItem];
      _hasHikeInfo = [mapItem _hasHikeInfo];

      if (_hasHikeInfo)
      {
        mapItem2 = [v50 mapItem];
        v78 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [mapItem2 _muid]);
      }

      else
      {
        v78 = 0;
      }

      v37 = v79;

      [(DataSource *)self sendAnalyticsForDataAtIndexPath:pathCopy object:v38 action:v49 eventValue:v78];
    }

    else
    {
      v78 = 0;
      v37 = v79;
      [(DataSource *)self sendAnalyticsForDataAtIndexPath:pathCopy object:v38 action:v49 eventValue:0];
    }

    objc_opt_class();
    v32 = 0;
    identifierCopy = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_60:

      goto LABEL_22;
    }

    collectionResult = [v38 collectionResult];
    collection = [collectionResult collection];

    publisherResult2 = [v38 publisherResult];
    publisher2 = [publisherResult2 publisher];

    if (collection)
    {
      v66 = +[CuratedCollectionSyncManager sharedManager];
      v67 = [v66 collectionIsSaved:collection];

      v68 = self->_analyticsManager;
      v76 = collection;
      collectionIdentifier = [collection collectionIdentifier];
      muid2 = [collectionIdentifier muid];
      v71 = [pathCopy row];
      v72 = muid2;
      v32 = v81;
      [(AutocompleteAnalyticsManager *)v68 curatedCollectionTappedWithMUID:v72 isCurrentlySaved:v67 verticalIndex:v71];
    }

    else
    {
      v73 = publisher2;
      if (!publisher2)
      {
LABEL_59:

        goto LABEL_60;
      }

      v76 = 0;
      v74 = self->_analyticsManager;
      collectionIdentifier = [publisher2 identifier];
      -[AutocompleteAnalyticsManager publisherTappedWithMuid:verticalIndex:](v74, "publisherTappedWithMuid:verticalIndex:", [collectionIdentifier muid], objc_msgSend(pathCopy, "row"));
    }

    v37 = v79;
    collection = v76;
    v73 = publisher2;
    goto LABEL_59;
  }

  v24 = sub_100067540();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = [pathCopy row];
    v83 = pathCopy;
    v26 = refinementCopy;
    v27 = v25;
    v28 = [contentCopy count];
    v29 = indexPathCopy;
    searchText = self->_searchText;
    v31 = [ChildItemButton buttonTitleWithChildItem:itemCopy];
    *buf = 134219010;
    v88 = v27;
    refinementCopy = v26;
    pathCopy = v83;
    v89 = 2048;
    v90 = v28;
    v91 = 2112;
    v92 = searchText;
    indexPathCopy = v29;
    v93 = 2112;
    v94 = v31;
    v95 = 2048;
    v96 = [v29 row];
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Logging out of bounds tap. IndexPath %ld. Content count: %lu. Query: %@. ChildItem title: %@. ChildPlaceIndexPath: %ld", buf, 0x34u);
  }

  v32 = itemCopy;
LABEL_23:
}

- (id)flattenedArray
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sections = [(SearchDataProvider *)self->_searchDataProvider sections];
  v5 = [sections countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(sections);
        }

        items = [*(*(&v12 + 1) + 8 * i) items];
        [v3 addObjectsFromArray:items];
      }

      v6 = [sections countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)flattenedIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  if ([pathCopy section] >= 1)
  {
    v6 = 0;
    do
    {
      tableView = [(DataSource *)self tableView];
      v5 = &v5[[(SearchDataSource *)self tableView:tableView numberOfRowsInSection:v6]];

      ++v6;
    }

    while ([pathCopy section] > v6);
  }

  v8 = [NSIndexPath indexPathForRow:v5 inSection:0];

  return v8;
}

- (void)didTapOnReportAnIssue
{
  [(AutocompleteAnalyticsManager *)self->_analyticsManager addAPlaceTappedWithNumberOfResults:0];
  v3 = [ReportASearchAutocompleteResult alloc];
  autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  queryString = [autocompleteContext queryString];
  v7 = [(ReportASearchAutocompleteResult *)v3 initWithTitle:queryString];

  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self itemTapped:v7];
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  if ([(SearchDataSource *)self shouldShowNoResultsCell]|| [(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    return 1;
  }

  v6 = [(SearchDataSource *)self sectionAtIndex:section];
  items = [v6 items];
  v8 = [items count];

  return v8;
}

- (int64_t)numberOfSections
{
  if ([(SearchDataSource *)self shouldShowNoResultsCell]|| [(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    return 1;
  }

  _contentFilteredIfNeeded = [(SearchDataSource *)self _contentFilteredIfNeeded];
  v5 = [_contentFilteredIfNeeded count];

  return v5;
}

- (void)_invalidateFilteredContent
{
  filteredContent = self->_filteredContent;
  self->_filteredContent = 0;
}

- (id)_contentFilteredIfNeeded
{
  filteredContent = self->_filteredContent;
  if (filteredContent)
  {
    v3 = filteredContent;
  }

  else
  {
    sections = [(SearchDataProvider *)self->_searchDataProvider sections];
    delegate = [(DataSource *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [sections count]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = sections;
      obj = sections;
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v26;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v25 + 1) + 8 * i);
            items = [v12 items];
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_10073D094;
            v24[3] = &unk_101656A98;
            v24[4] = self;
            v14 = [NSPredicate predicateWithBlock:v24];
            v15 = [items filteredArrayUsingPredicate:v14];

            if ([v15 count])
            {
              title = [v12 title];
              v17 = +[AutocompleteSection sectionWithTitle:items:isQuerySuggestionsSection:](AutocompleteSection, "sectionWithTitle:items:isQuerySuggestionsSection:", title, v15, [v12 isQuerySuggestionsSection]);
              [v23 addObject:v17];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v9);
      }

      v18 = [v23 copy];
      v19 = self->_filteredContent;
      self->_filteredContent = v18;

      sections = v21;
    }

    else
    {
      objc_storeStrong(&self->_filteredContent, sections);
    }

    v3 = self->_filteredContent;
  }

  return v3;
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  contextCopy = context;
  if (sub_10000FA08(viewCopy) == 5)
  {
    [viewCopy deselectRowAtIndexPath:self->_lastSelectedIndexPath animated:0];
    nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
    [viewCopy selectRowAtIndexPath:nextFocusedIndexPath animated:0 scrollPosition:0];
  }

  nextFocusedIndexPath2 = [contextCopy nextFocusedIndexPath];
  lastSelectedIndexPath = self->_lastSelectedIndexPath;
  self->_lastSelectedIndexPath = nextFocusedIndexPath2;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy row] && (-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") || -[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator")))
  {
    [viewCopy frame];
    v11 = v10;
  }

  else
  {
    v8 = -[SearchDataSource sectionAtIndex:](self, "sectionAtIndex:", [pathCopy section]);
    if ([v8 isQuerySuggestionsSection])
    {
      +[QuerySuggestionTableViewCell estimatedCellHeight];
    }

    else
    {
      +[_TtC4Maps25PlaceSummaryTableViewCell autocompleteResultEstimatedHeight];
    }

    v11 = v9;
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy row] || !-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") && !-[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator"))
  {
    v7 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:pathCopy];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(DataSource *)self addEKAnalyticsForEntry:v7 tapped:1];
      }

      [(SearchDataSource *)self sendMapsSuggestionsInsightsAnalyticsWithEntry:v7];
      flattenedArray = [(SearchDataSource *)self flattenedArray];
      v9 = [(SearchDataSource *)self flattenedIndexPath:pathCopy];
      [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v9 fromContent:flattenedArray];
      sections = [(SearchDataProvider *)self->_searchDataProvider sections];
      autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
      [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v9 indexPathInSection:pathCopy sections:sections context:autocompleteContext];

      delegate = [(DataSource *)self delegate];
      [delegate dataSource:self itemTapped:v7];
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    v13 = [viewCopy cellForRowAtIndexPath:pathCopy];
    if ([v13 conformsToProtocol:&OBJC_PROTOCOL___AutocompleteCellAccessoryView])
    {
      v14 = v13;
      if ([v14 accessoryViewType] == 1)
      {
        [v14 setAccessoryViewType:3];
      }
    }
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy row] && (-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") || -[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator")))
  {
    v9 = 0;
  }

  else
  {
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    v9 = ![v8 conformsToProtocol:&OBJC_PROTOCOL___AutocompleteCellAccessoryView] || objc_msgSend(v8, "accessoryViewType") != 3;
  }

  return v9;
}

- (id)tableView:(id)view legacyCellFromSearchCompletion:(id)completion accessoryViewType:(int64_t)type indexPath:(id)path
{
  viewCopy = view;
  completionCopy = completion;
  mapItem = [completionCopy mapItem];
  if (mapItem)
  {

LABEL_4:
    clientResolved = completionCopy;
    childItems = [clientResolved childItems];
    v41 = 0;
    goto LABEL_5;
  }

  publisherResult = [completionCopy publisherResult];

  if (publisherResult)
  {
    goto LABEL_4;
  }

  userLocationSearchResult = [(SearchDataSource *)self userLocationSearchResult];
  v41 = [TwoLinesContentViewModelComposer cellModelForLocalSearchCompletion:completionCopy userLocationSearchResult:userLocationSearchResult autocompleteClientSourceType:0];

  clientResolved = [completionCopy clientResolved];
  if (clientResolved)
  {
    clientResolved2 = [completionCopy clientResolved];
    if ([clientResolved2 itemType] == 4)
    {
      subtitle = [completionCopy subtitle];
      v40 = [subtitle length];

      if (v40)
      {
LABEL_21:
        childItems = 0;
        clientResolved = 0;
        goto LABEL_5;
      }

      clientResolved = +[CustomLocationManager sharedManager];
      clientResolved2 = [(SearchDataSource *)self userLocationSearchResult];
      [clientResolved processSearchResult:clientResolved2 traits:0];
    }

    goto LABEL_21;
  }

  childItems = 0;
LABEL_5:
  v15 = +[AcSearchResultTableViewCell identifierWithChildItemsCount:](AcSearchResultTableViewCell, "identifierWithChildItemsCount:", [childItems count]);
  v16 = [viewCopy dequeueReusableCellWithIdentifier:v15];
  if (!v16)
  {
    v16 = [[AcSearchResultTableViewCell alloc] initWithStyle:0 reuseIdentifier:v15];
  }

  currentLocation = [(DataSource *)self currentLocation];
  [(_SearchResultTableViewCell *)v16 setCurrentLocation:currentLocation];

  [(_SearchResultTableViewCell *)v16 setAccessoryViewDelegate:self];
  [(_SearchResultTableViewCell *)v16 setAccessoryViewObject:clientResolved];
  [(AcSearchResultTableViewCell *)v16 setAccessoryViewType:type];
  [(AcSearchResultTableViewCell *)v16 setShouldEnableGrayscaleHighlighting:[(SearchDataProvider *)self->_searchDataProvider shouldEnableGrayscaleHighlighting]];
  searchDataProvider = [(SearchDataSource *)self searchDataProvider];
  autocompleteContext = [searchDataProvider autocompleteContext];
  queryString = [autocompleteContext queryString];
  [(AcSearchResultTableViewCell *)v16 setSearchQuery:queryString];

  v21 = +[UIColor secondarySystemGroupedBackgroundColor];
  [(AcSearchResultTableViewCell *)v16 setBackgroundColor:v21];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    autocompleteCellType = [clientResolved autocompleteCellType];
  }

  else
  {
    autocompleteCellType = 3;
  }

  [(AcSearchResultTableViewCell *)v16 setAutocompleteCellType:autocompleteCellType];
  [(AcSearchResultTableViewCell *)v16 setAutocompleteClientSourceType:0];
  if ([childItems count])
  {
    tableView = [(DataSource *)self tableView];
    [tableView frame];
    [(AcSearchResultTableViewCell *)v16 estimatedChildItemsStackViewWidthWithContentViewWidth:CGRectGetWidth(v43)];
    v25 = v24;

    sub_10000FA08(viewCopy);
    v26 = objc_opt_class();
    v27 = [ChildItemsViewModel alloc];
    +[AcSearchResultTableViewCell childItemRowSpacing];
    v29 = v28;
    buttonTitleFont = [v26 buttonTitleFont];
    [v26 contentEdgeInsets];
    v35 = [(ChildItemsViewModel *)v27 initWithChildItems:childItems childItemsSpacing:buttonTitleFont font:v29 maxWidth:v25 buttonContentEdgeInsets:v31, v32, v33, v34];
  }

  else
  {
    v35 = 0;
  }

  [(AcSearchResultTableViewCell *)v16 setChildItems:childItems viewModel:v35];
  [(AcSearchResultTableViewCell *)v16 setObject:clientResolved];

  return v16;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator") && ![pathCopy row])
  {
    v12 = +[SearchLoadingTableViewCell identifier];
    v13 = [viewCopy dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];

    LODWORD(v14) = 1144750080;
    [(QuerySuggestionTableViewCell *)v13 setHeightConstraint:40.0 withPriority:v14];
  }

  else if (-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") && ![pathCopy row])
  {
    v40 = +[SearchNoResultsTableViewCell identifier];
    v13 = [viewCopy dequeueReusableCellWithIdentifier:v40 forIndexPath:pathCopy];

    [(QuerySuggestionTableViewCell *)v13 setEnableStructuredRAPAffordance:[(SearchDataProvider *)self->_searchDataProvider shouldEnableRAPForNoResults]];
    if (sub_10000FA08(viewCopy) == 5)
    {
      v42 = 40.0;
    }

    else
    {
      [viewCopy frame];
      v42 = v43;
    }

    LODWORD(v41) = 1144750080;
    [(QuerySuggestionTableViewCell *)v13 setHeightConstraint:v42 withPriority:v41];
    [(QuerySuggestionTableViewCell *)v13 setDelegate:self];
  }

  else
  {
    v8 = [(SearchDataSource *)self objectAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      searchDataProvider = [(SearchDataSource *)self searchDataProvider];
      showAutocompleteClientSource = [searchDataProvider showAutocompleteClientSource];

      if (showAutocompleteClientSource)
      {
        v11 = [AutocompleteClientSource autocompleteClientSourceTypeWithItem:v8];
      }

      else
      {
        v11 = 0;
      }

      autocompleteObject = [v8 autocompleteObject];

      v8 = autocompleteObject;
    }

    else
    {
      v11 = 0;
    }

    if (self->_showAddAccessory)
    {
      accessoryType = self->_accessoryType;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 hasQueryAcceleratorAffordanceEnabled])
      {
        if ([(SearchDataSource *)self canShowQueryAccelerator])
        {
          accessoryType = 2;
        }

        else
        {
          accessoryType = 0;
        }
      }

      else
      {
        accessoryType = 0;
      }
    }

    v51 = -[SearchDataSource sectionAtIndex:](self, "sectionAtIndex:", [pathCopy section]);
    if ([v51 isQuerySuggestionsSection])
    {
      v17 = +[QuerySuggestionTableViewCell identifier];
      v13 = [viewCopy dequeueReusableCellWithIdentifier:v17];

      if (!v13)
      {
        v18 = [QuerySuggestionTableViewCell alloc];
        v19 = +[QuerySuggestionTableViewCell identifier];
        v13 = [(QuerySuggestionTableViewCell *)v18 initWithStyle:0 reuseIdentifier:v19];
      }

      v50 = viewCopy;
      v20 = v8;
      directionIntent = [v20 directionIntent];

      if (directionIntent)
      {
        title = [[DirectionIntentCellViewModel alloc] initWithLocalSearchCompletion:v20];
        titleCellString = [(DirectionIntentCellViewModel *)title titleCellString];
        subtitleCellString = [(DirectionIntentCellViewModel *)title subtitleCellString];
        if ([subtitleCellString length])
        {
          v25 = [NSString stringWithFormat:@"%@ %@", titleCellString, subtitleCellString];

          titleCellString = v25;
        }

        titleHighlightRanges = [v20 titleHighlightRanges];
        [(QuerySuggestionTableViewCell *)v13 setTitle:titleCellString highlightTitleRanges:titleHighlightRanges detailText:0 style:0];
      }

      else
      {
        title = [v20 title];
        titleCellString = [v20 titleHighlightRanges];
        [(QuerySuggestionTableViewCell *)v13 setTitle:title highlightTitleRanges:titleCellString detailText:0 style:0];
      }

      [(QuerySuggestionTableViewCell *)v13 setAccessoryViewDelegate:self];
      [(QuerySuggestionTableViewCell *)v13 setAccessoryViewObject:v20];
      [(QuerySuggestionTableViewCell *)v13 setAccessoryViewType:accessoryType];
      viewCopy = v50;
    }

    else
    {
      v27 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v20 = v28;

      clientResolved = [v20 clientResolved];
      if (clientResolved)
      {
        v30 = clientResolved;
        clientResolved2 = [v20 clientResolved];
        itemType = [clientResolved2 itemType];

        if (itemType == 4)
        {
          v33 = +[CustomLocationManager sharedManager];
          userLocationSearchResult = [(SearchDataSource *)self userLocationSearchResult];
          [v33 processSearchResult:userLocationSearchResult traits:0];
        }
      }

      if (v20 && [(SearchDataSource *)self useLegacyCellsForSearchAC])
      {
        v13 = [(SearchDataSource *)self tableView:viewCopy legacyCellFromSearchCompletion:v20 accessoryViewType:self->_accessoryType indexPath:pathCopy];
      }

      else
      {
        v35 = [(SearchDataSource *)self placeSummaryTemplateForObject:v27 autocompleteClientSourceType:v11 atIndexPath:pathCopy];
        if (v35)
        {
          if (_UISolariumEnabled())
          {
            if ([v20 _type] == 4)
            {
              collectionResult = [v27 collectionResult];
              collection = [collectionResult collection];

              v38 = [[_TtC4Maps21CuratedGuideViewModel alloc] initWithPlaceCollection:collection useRichLayout:0 isAutocompleteContext:1];
              v39 = +[_TtC4Maps25CuratedGuideTableViewCell reuseIdentifier];
              v13 = [viewCopy dequeueReusableCellWithIdentifier:v39];

              [(QuerySuggestionTableViewCell *)v13 configureWith:v38 delegate:self template:v35];
            }

            else
            {
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              v13 = [viewCopy dequeueReusableCellWithIdentifier:v46];

              autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
              queryString = [autocompleteContext queryString];
              [(QuerySuggestionTableViewCell *)v13 configureWithTemplate:v35 query:queryString asyncDataManager:self->_placeSummaryAsyncDataManager delegate:self];
            }
          }

          else
          {
            v44 = +[_TtC4Maps25PlaceSummaryTableViewCell reuseIdentifier];
            v13 = [viewCopy dequeueReusableCellWithIdentifier:v44];

            [(QuerySuggestionTableViewCell *)v13 setViewModel:v35 delegate:self asyncDataManager:self->_placeSummaryAsyncDataManager];
          }
        }

        else
        {
          v13 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        }
      }
    }
  }

  return v13;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(SearchDataSource *)self sectionAtIndex:section];
  title = [v7 title];
  if ([title length])
  {
    v9 = 0.0;
    if (!-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") && -[DataSource active](self, "active") && !-[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator") && ([v7 isQuerySuggestionsSection] & 1) == 0)
    {
      v10 = [viewCopy _maps_indexOfFirstNonEmptySection] == section;
      [viewCopy bounds];
      Width = CGRectGetWidth(v16);
      traitCollection = [viewCopy traitCollection];
      [SectionHeaderTableViewHeaderFooterView heightWhenFirstNonEmptySection:v10 title:title actionTitle:0 availableWidth:traitCollection traitCollection:Width];
      v9 = v13;
    }
  }

  else if (section)
  {
    +[_TtC4Maps23MapsDesignConstantsShim discreetListRowSpacing];
    v9 = v14;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(SearchDataSource *)self shouldShowNoResultsCell]|| ![(DataSource *)self active]|| [(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    v7 = 0;
  }

  else
  {
    v9 = [(SearchDataSource *)self sectionAtIndex:section];
    if (([v9 isQuerySuggestionsSection] & 1) != 0 || (objc_msgSend(v9, "title"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, !v11))
    {
      v7 = 0;
    }

    else
    {
      title = [v9 title];
      if ([title length])
      {
        v13 = [SectionHeaderTableViewHeaderFooterView alloc];
        title2 = [v9 title];
        v7 = -[SectionHeaderTableViewHeaderFooterView initWithTitle:isFirstNonEmptySection:](v13, "initWithTitle:isFirstNonEmptySection:", title2, [viewCopy _maps_indexOfFirstNonEmptySection] == section);

        [(SectionHeaderTableViewHeaderFooterView *)v7 setAccessibilityIdentifiersWithBaseString:@"Autocomplete"];
        [(SectionHeaderTableViewHeaderFooterView *)v7 setShowsBottomHairline:0];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (id)objectsForAnalytics
{
  _contentFilteredIfNeeded = [(SearchDataSource *)self _contentFilteredIfNeeded];
  v3 = [_contentFilteredIfNeeded copy];

  return v3;
}

- (id)personalizedItemForQuickActionMenuWithCell:(id)cell
{
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v6 = [tableView indexPathForCell:cellCopy];

  v7 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    v10 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v9];
    v11 = v7;
    goto LABEL_47;
  }

  v12 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v14 || ([(SearchResult *)v14 mapItem], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    v18 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v20)
    {
      historyEntry = [(SearchResult *)v20 historyEntry];
      v22 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
      objc_opt_class();
      v23 = historyEntry;
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      if (v25)
      {
        historyEntry2 = [v25 historyEntry];
        v27 = [historyEntry2 conformsToProtocol:v22];

        if (v27)
        {
          v28 = v23;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      if (!v28)
      {
        v11 = 0;
        v10 = 0;
        goto LABEL_45;
      }

      v38 = v18;
      v39 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
      objc_opt_class();
      v40 = v38;
      if (objc_opt_isKindOfClass())
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      v42 = v41;

      if (v42 && (-[SearchResult historyEntry](v42, "historyEntry"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 conformsToProtocol:v39], v43, v44))
      {
        v31 = v40;
      }

      else
      {
        v31 = 0;
      }

      historyEntry3 = [(SearchResult *)v31 historyEntry];
      geoMapItem = [historyEntry3 geoMapItem];

      v37 = [[SearchResult alloc] initWithGEOMapItem:geoMapItem];
    }

    else
    {
      v29 = v18;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;

      if (!v31)
      {
        v47 = v29;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = v47;
        }

        else
        {
          v48 = 0;
        }

        geoMapItem = v48;

        if (geoMapItem && ([(SearchResult *)geoMapItem BOOLeanForKey:@"MapsSuggestionsIsNotADestinationKey" is:1]& 1) == 0)
        {
          v10 = [[SuggestionsItem alloc] initWithSuggestion:geoMapItem order:0 sourceType:9 sourceSubtype:0 hasPriorityOverride:0 priorityOverride:0];
          v31 = 0;
          v11 = 0;
        }

        else
        {
          v31 = 0;
          v11 = 0;
          v10 = 0;
        }

        goto LABEL_42;
      }

      geocodedMapItem = [(SearchResult *)v31 geocodedMapItem];
      geoMapItem = geocodedMapItem;
      if (!geocodedMapItem || ([geocodedMapItem _geoMapItem], v34 = objc_claimAutoreleasedReturnValue(), v34, !v34))
      {
        v35 = [MKMapItem alloc];
        addressDictionary = [(SearchResult *)v31 addressDictionary];
        v11 = [v35 initWithAddressDictionary:addressDictionary];

        geoMapItem = v11;
        if (!v11)
        {
          v10 = 0;
          goto LABEL_43;
        }
      }

      v37 = [[SearchResult alloc] initWithMapItem:geoMapItem searchResultType:0 addressBookAddress:v31 retainedSearchMetadata:0 resultIndex:0];
    }

    v11 = v37;
    v10 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v37];
LABEL_42:

LABEL_43:
LABEL_45:

    goto LABEL_46;
  }

  v16 = [SearchResult alloc];
  mapItem = [(SearchResult *)v14 mapItem];
  v11 = [(SearchResult *)v16 initWithMapItem:mapItem];

  v10 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v11];
LABEL_46:

LABEL_47:

  return v10;
}

- (void)didTapOnTappableEntryWithMapItemIdentifier:(id)identifier cell:(id)cell
{
  identifierCopy = identifier;
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  v9 = [(SearchDataSource *)self flattenedIndexPath:v8];
  flattenedArray = [(SearchDataSource *)self flattenedArray];
  [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v9 fromContent:flattenedArray childPlaceIndexPath:0 childItem:0 resultRefinement:0 containmentParent:0 tappableEntryIdentifier:identifierCopy tappedAccessoryViewType:0];

  sections = [(SearchDataProvider *)self->_searchDataProvider sections];
  autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v9 indexPathInSection:v8 sections:sections context:autocompleteContext];

  delegate = [(DataSource *)self delegate];
  LOBYTE(autocompleteContext) = objc_opt_respondsToSelector();

  if (autocompleteContext)
  {
    delegate2 = [(DataSource *)self delegate];
    v15 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:v8];
    [delegate2 dataSource:self itemTapped:identifierCopy childItemParent:v15];
  }
}

- (void)didTapOnResultRefinement:(id)refinement cell:(id)cell
{
  refinementCopy = refinement;
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  v9 = [(SearchDataSource *)self flattenedIndexPath:v8];
  flattenedArray = [(SearchDataSource *)self flattenedArray];
  [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v9 fromContent:flattenedArray childPlaceIndexPath:0 childItem:0 resultRefinement:refinementCopy containmentParent:0 tappableEntryIdentifier:0 tappedAccessoryViewType:0];

  sections = [(SearchDataProvider *)self->_searchDataProvider sections];
  autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v9 indexPathInSection:v8 sections:sections context:autocompleteContext];

  delegate = [(DataSource *)self delegate];
  LOBYTE(autocompleteContext) = objc_opt_respondsToSelector();

  if (autocompleteContext)
  {
    delegate2 = [(DataSource *)self delegate];
    v15 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:v8];
    [delegate2 dataSource:self itemTapped:refinementCopy childItemParent:v15];
  }
}

- (void)didTapOnContainmentParentMapItem:(id)item cell:(id)cell
{
  itemCopy = item;
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  v9 = [(SearchDataSource *)self flattenedIndexPath:v8];
  flattenedArray = [(SearchDataSource *)self flattenedArray];
  [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v9 fromContent:flattenedArray childPlaceIndexPath:0 childItem:0 resultRefinement:0 containmentParent:itemCopy tappableEntryIdentifier:0 tappedAccessoryViewType:0];

  sections = [(SearchDataProvider *)self->_searchDataProvider sections];
  autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v9 indexPathInSection:v8 sections:sections context:autocompleteContext];

  delegate = [(DataSource *)self delegate];
  LOBYTE(autocompleteContext) = objc_opt_respondsToSelector();

  if (autocompleteContext)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 dataSource:self itemTapped:itemCopy childItemParent:0];
  }
}

- (void)didTapOnAccessoryEntityQueryAcceleratorWithCell:(id)cell
{
  cellCopy = cell;
  tableView = [(DataSource *)self tableView];
  v13 = [tableView indexPathForCell:cellCopy];

  v6 = [(SearchDataSource *)self flattenedIndexPath:v13];
  v7 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:v13];
  flattenedArray = [(SearchDataSource *)self flattenedArray];
  [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v6 fromContent:flattenedArray childPlaceIndexPath:0 childItem:0 resultRefinement:0 containmentParent:0 tappableEntryIdentifier:0 tappedAccessoryViewType:2];

  sections = [(SearchDataProvider *)self->_searchDataProvider sections];
  autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v6 indexPathInSection:v13 sections:sections context:autocompleteContext];

  delegate = [(DataSource *)self delegate];
  LOBYTE(autocompleteContext) = objc_opt_respondsToSelector();

  if (autocompleteContext)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 searchDataSource:self replaceQueryWithItem:v7];
  }
}

- (void)didTapOnItemInChildItems:(id)items cell:(id)cell buttonIndex:(int64_t)index
{
  cellCopy = cell;
  itemsCopy = items;
  WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
  v21 = [WeakRetained indexPathForCell:cellCopy];

  v11 = [(SearchDataSource *)self flattenedIndexPath:v21];
  v12 = [NSIndexPath indexPathForRow:index inSection:0];
  childItems = [itemsCopy childItems];

  v14 = [childItems objectAtIndexedSubscript:index];

  flattenedArray = [(SearchDataSource *)self flattenedArray];
  [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v11 fromContent:flattenedArray childPlaceIndexPath:v12 childItem:v14 resultRefinement:0 containmentParent:0 tappableEntryIdentifier:0 tappedAccessoryViewType:0];

  sections = [(SearchDataProvider *)self->_searchDataProvider sections];
  autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v11 indexPathInSection:v21 sections:sections context:autocompleteContext selectedChildItemIndexPath:v12 indexOfResultWithSelectedChildItem:v21];

  delegate = [(DataSource *)self delegate];
  LOBYTE(autocompleteContext) = objc_opt_respondsToSelector();

  if (autocompleteContext)
  {
    delegate2 = [(DataSource *)self delegate];
    v20 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:v21];
    [delegate2 dataSource:self itemTapped:v14 childItemParent:v20];
  }
}

- (void)didTapOnUserGeneratedGuide:(id)guide cell:(id)cell
{
  guideCopy = guide;
  cellCopy = cell;
  WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
  v8 = [WeakRetained indexPathForCell:cellCopy];

  v9 = [(SearchDataSource *)self flattenedIndexPath:v8];
  flattenedArray = [(SearchDataSource *)self flattenedArray];
  v11 = +[MapsAnalyticsHelper analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:](MapsAnalyticsHelper, "analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:", flattenedArray, [v9 row]);

  +[MapsAnalyticStateProvider updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:](MapsAnalyticStateProvider, "updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:", v11, self->_searchText, [v9 row], 1, -[SearchDataProvider searchRequestAnalyticsSequenceNumber](self->_searchDataProvider, "searchRequestAnalyticsSequenceNumber"));
  delegate = [(DataSource *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 didTapOnUserGeneratedGuide:guideCopy];

    [(AutocompleteAnalyticsManager *)self->_analyticsManager userGeneratedGuideUnitTapped];
  }

  sections = [(SearchDataProvider *)self->_searchDataProvider sections];
  autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:0 indexPathInSection:0 sections:sections context:autocompleteContext];
}

- (void)didTapOnCuratedGuides:(id)guides cell:(id)cell
{
  guidesCopy = guides;
  cellCopy = cell;
  WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
  v28 = cellCopy;
  v9 = [WeakRetained indexPathForCell:cellCopy];

  v27 = v9;
  v10 = [(SearchDataSource *)self flattenedIndexPath:v9];
  flattenedArray = [(SearchDataSource *)self flattenedArray];
  v12 = +[MapsAnalyticsHelper analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:](MapsAnalyticsHelper, "analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:", flattenedArray, [v10 row]);

  v26 = v12;
  +[MapsAnalyticStateProvider updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:](MapsAnalyticStateProvider, "updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:", v12, self->_searchText, [v10 row], 1, -[SearchDataProvider searchRequestAnalyticsSequenceNumber](self->_searchDataProvider, "searchRequestAnalyticsSequenceNumber"));
  delegate = [(DataSource *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 didTapOnCuratedGuides:guidesCopy];
  }

  v16 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(guidesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = guidesCopy;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        collectionIdentifier = [*(*(&v29 + 1) + 8 * i) collectionIdentifier];
        v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [collectionIdentifier muid]);
        [v16 addObject:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  -[AutocompleteAnalyticsManager placeContextMultipleCollectionsTappedWithMuids:verticalIndex:](self->_analyticsManager, "placeContextMultipleCollectionsTappedWithMuids:verticalIndex:", v16, [v10 row]);
  sections = [(SearchDataProvider *)self->_searchDataProvider sections];
  autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v10 indexPathInSection:v27 sections:sections context:autocompleteContext];
}

- (void)didTapOnCuratedGuide:(id)guide cell:(id)cell
{
  guideCopy = guide;
  cellCopy = cell;
  WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
  v8 = [WeakRetained indexPathForCell:cellCopy];

  v9 = [(SearchDataSource *)self flattenedIndexPath:v8];
  flattenedArray = [(SearchDataSource *)self flattenedArray];
  v11 = +[MapsAnalyticsHelper analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:](MapsAnalyticsHelper, "analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:", flattenedArray, [v9 row]);

  +[MapsAnalyticStateProvider updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:](MapsAnalyticStateProvider, "updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:", v11, self->_searchText, [v9 row], 1, -[SearchDataProvider searchRequestAnalyticsSequenceNumber](self->_searchDataProvider, "searchRequestAnalyticsSequenceNumber"));
  delegate = [(DataSource *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 didTapOnCuratedGuide:guideCopy];
  }

  collectionIdentifier = [guideCopy collectionIdentifier];
  muid = [collectionIdentifier muid];

  v17 = +[CuratedCollectionSyncManager sharedManager];
  v18 = [v17 collectionIsSaved:guideCopy];

  -[AutocompleteAnalyticsManager placeContextSingleCollectionTappedWithMuid:isCurrentlySaved:verticalIndex:](self->_analyticsManager, "placeContextSingleCollectionTappedWithMuid:isCurrentlySaved:verticalIndex:", muid, v18, [v9 row]);
  sections = [(SearchDataProvider *)self->_searchDataProvider sections];
  autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v9 indexPathInSection:v8 sections:sections context:autocompleteContext];
}

- (id)placeSummaryTemplateForObject:(id)object autocompleteClientSourceType:(int64_t)type atIndexPath:(id)path
{
  objectCopy = object;
  pathCopy = path;
  v10 = [(NSMutableDictionary *)self->_placeSummaryTemplateViewModels objectForKeyedSubscript:pathCopy];

  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_placeSummaryTemplateViewModels objectForKeyedSubscript:pathCopy];
    goto LABEL_70;
  }

  tableView = [(DataSource *)self tableView];
  [tableView frame];
  Width = CGRectGetWidth(v107);

  v14 = [_TtC4Maps29PlaceSummaryTextHighlightType alloc];
  searchDataProvider = [(SearchDataSource *)self searchDataProvider];
  v90 = -[PlaceSummaryTextHighlightType initWithHighlightType:](v14, "initWithHighlightType:", [searchDataProvider highlightType]);

  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = sub_1007400D8;
  v104 = sub_1007400E8;
  v105 = 0;
  v16 = objectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v88 = objectCopy;
  v89 = v18;
  if (v18)
  {
    searchDataProvider2 = [(SearchDataSource *)self searchDataProvider];
    placeSummaryMetadata = [searchDataProvider2 placeSummaryMetadata];
    currentLocation = [(DataSource *)self currentLocation];
    userLocationSearchResult = [(SearchDataSource *)self userLocationSearchResult];
    if ([(SearchDataSource *)self searchAlongRoute])
    {
      v23 = 0;
    }

    else
    {
      v23 = ![(SearchDataSource *)self isRoutePlanning];
    }

    BYTE1(v83) = [(SearchDataSource *)self searchAlongRoute];
    LOBYTE(v83) = v23;
    v24 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithCompletion:v89 metadata:placeSummaryMetadata currentLocation:currentLocation userLocationSearchResult:userLocationSearchResult highlightType:v90 availableWidth:type clientSourceType:Width allowsTappableUnits:v83 searchAlongRoute:?];
    v25 = v101[5];
    v101[5] = v24;

    objectCopy = v88;
  }

  v26 = [_TtC4Maps38PlaceSummaryTextHighlightConfiguration alloc];
  searchDataProvider3 = [(SearchDataSource *)self searchDataProvider];
  autocompleteContext = [searchDataProvider3 autocompleteContext];
  queryString = [autocompleteContext queryString];
  v30 = [(PlaceSummaryTextHighlightConfiguration *)v26 initWithTypedAutocompleteQuery:queryString type:v90];

  v31 = v16;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  if (v33)
  {
    v34 = v101[5];
    v101[5] = 0;

    historyEntry = [v33 historyEntry];
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_1007400F0;
    v96[3] = &unk_101627DC0;
    v99 = &v100;
    v97 = v30;
    selfCopy = self;
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_10074017C;
    v91[3] = &unk_101638308;
    v94 = &v100;
    v95 = Width;
    v92 = v97;
    selfCopy2 = self;
    [historyEntry ifSearch:v96 ifRoute:0 ifPlaceDisplay:v91 ifTransitLineItem:0];
  }

  v36 = v31;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;

  if (v38)
  {
    v39 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithAddressBookAddress:v38 highlightConfiguration:v30 searchAlongRoute:[(SearchDataSource *)self searchAlongRoute]];
    v40 = v101[5];
    v101[5] = v39;
  }

  v41 = v36;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;

  v87 = v43;
  if (v43)
  {
    v44 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithAutocompletePerson:v43 highlightConfiguration:v30 searchAlongRoute:[(SearchDataSource *)self searchAlongRoute]];
    v45 = v101[5];
    v101[5] = v44;
  }

  v46 = v41;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = v47;

  v86 = v48;
  if (v48)
  {
    v49 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithCoreRecentContact:v48 highlightConfiguration:v30 searchAlongRoute:[(SearchDataSource *)self searchAlongRoute]];
    v50 = v101[5];
    v101[5] = v49;
  }

  v85 = v38;
  v51 = v46;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v53 = v52;

  if (v53)
  {
    currentLocation2 = [(DataSource *)self currentLocation];
    v55 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithSearchResult:v53 highlightConfiguration:v30 currentLocation:currentLocation2 availableWidth:[(SearchDataSource *)self searchAlongRoute] searchAlongRoute:Width];
    v56 = v101[5];
    v101[5] = v55;
  }

  v57 = v51;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v59 = v58;

  if (v59)
  {
    [(DataSource *)self addEKAnalyticsForEntry:v59 tapped:0];
    v60 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithMapsSuggestionsEntry:v59 highlightConfiguration:v30 searchAlongRoute:[(SearchDataSource *)self searchAlongRoute]];
    v61 = v101[5];
    v101[5] = v60;
  }

  v62 = v57;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63;

  if (v64)
  {
    v65 = +[_TtC4Maps36PlaceSummaryViewModelTemplateFactory addAPlaceAutocompleteViewModel];
    v66 = v101[5];
    v101[5] = v65;
  }

  v84 = v33;
  v67 = v62;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v68 = v67;
  }

  else
  {
    v68 = 0;
  }

  v69 = v68;

  if (v69)
  {
    currentLocation3 = [(DataSource *)self currentLocation];
    v71 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithUserRoute:v69 highlightConfiguration:v30 currentLocation:currentLocation3];
    v72 = v101[5];
    v101[5] = v71;

    objectCopy = v88;
  }

  if (v101[5])
  {
    v73 = +[NSUserDefaults standardUserDefaults];
    v74 = [v73 BOOLForKey:@"EnableSearchDebug"];

    if (!v74)
    {
      v80 = 0;
LABEL_68:
      [v101[5] setDebugString:v80];
      [(NSMutableDictionary *)self->_placeSummaryTemplateViewModels setObject:v101[5] forKeyedSubscript:pathCopy];
      v11 = v101[5];

      objectCopy = v88;
      goto LABEL_69;
    }

    searchDataProvider4 = [(SearchDataSource *)self searchDataProvider];
    autocompleteContext2 = [searchDataProvider4 autocompleteContext];
    v77 = [autocompleteContext2 matchInfoForObject:v67];

    if (v77)
    {
      if ([v77 hasClientRankingDebug])
      {
        [v77 clientRankingDebug];
        v79 = [NSString stringWithFormat:@"Client ranking: %f", v78];
LABEL_60:
        v80 = v79;
LABEL_62:
        if (v89)
        {
          if (v80)
          {
            v81 = [v80 stringByAppendingString:@" "];;
          }

          else
          {
            v81 = &stru_1016631F0;
          }

          v80 = -[__CFString stringByAppendingFormat:](v81, "stringByAppendingFormat:", @"Server index = %lu:%lu", [v89 serverSectionIndex], objc_msgSend(v89, "serverItemIndexInSection"));
        }

        goto LABEL_68;
      }

      if ([v77 hasSortPriorityDebug])
      {
        v79 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Priority: %ld", [v77 sortPriorityDebug]);
        goto LABEL_60;
      }
    }

    v80 = 0;
    goto LABEL_62;
  }

  v11 = 0;
LABEL_69:

  _Block_object_dispose(&v100, 8);
LABEL_70:

  return v11;
}

- (void)didTapOnAccessoryView:(id)view withType:(int64_t)type object:(id)object
{
  viewCopy = view;
  objectCopy = object;
  if (type != 4)
  {
    if (type == 2)
    {
      tableView = [(DataSource *)self tableView];
      v12 = [tableView indexPathForCell:viewCopy];

      v17 = [(SearchDataSource *)self flattenedIndexPath:v12];
      flattenedArray = [(SearchDataSource *)self flattenedArray];
      [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v17 fromContent:flattenedArray childPlaceIndexPath:0 childItem:0 resultRefinement:0 containmentParent:0 tappableEntryIdentifier:0 tappedAccessoryViewType:2];

      sections = [(SearchDataProvider *)self->_searchDataProvider sections];
      autocompleteContext = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
      [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v17 indexPathInSection:v12 sections:sections context:autocompleteContext];

      delegate = [(DataSource *)self delegate];
      LOBYTE(autocompleteContext) = objc_opt_respondsToSelector();

      if (autocompleteContext)
      {
        delegate2 = [(DataSource *)self delegate];
        [delegate2 searchDataSource:self replaceQueryWithItem:objectCopy];
      }

      goto LABEL_10;
    }

    if (type != 1)
    {
      goto LABEL_11;
    }
  }

  delegate3 = [(DataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate4 = [(DataSource *)self delegate];
    [delegate4 searchDataSource:self addItem:objectCopy];
  }

  v12 = [UIButton buttonWithType:0];
  [v12 setBounds:{0.0, 0.0, 30.0, 30.0}];
  v13 = [UIImage systemImageNamed:@"checkmark"];
  [v12 setImage:v13 forState:0];

  v14 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
  [v12 setPreferredSymbolConfiguration:v14 forImageInState:0];

  v15 = +[UIColor secondaryLabelColor];
  [v12 setTintColor:v15];

  [v12 setAccessibilityIdentifier:@"AccessoryCheckmarkButton"];
  [viewCopy setAccessoryView:v12];
LABEL_10:

LABEL_11:
}

- (double)rowHeight
{
  if (![(SearchDataSource *)self hasResults]&& ![(SearchDataSource *)self shouldShowNoResultsCell]&& ![(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    return UITableViewAutomaticDimension;
  }

  v4.receiver = self;
  v4.super_class = SearchDataSource;
  [(DataSource *)&v4 rowHeight];
  return result;
}

- (BOOL)shouldShowLoadingIndicator
{
  if ([(SearchDataSource *)self hasResults]|| !self->_isLoadingData)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
    if (sub_10000FA08(WeakRetained) == 5)
    {
      v4 = _UISolariumEnabled() ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)shouldShowNoResultsCell
{
  if ([(SearchDataSource *)self hasResults])
  {
    return 0;
  }

  searchDataProvider = [(SearchDataSource *)self searchDataProvider];
  autocompleteContext = [searchDataProvider autocompleteContext];
  v3 = autocompleteContext != 0;

  return v3;
}

- (id)sectionAtIndex:(unint64_t)index
{
  if ([(SearchDataSource *)self shouldShowNoResultsCell]|| [(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    v5 = 0;
  }

  else
  {
    _contentFilteredIfNeeded = [(SearchDataSource *)self _contentFilteredIfNeeded];
    if ([_contentFilteredIfNeeded count] <= index)
    {
      v5 = 0;
    }

    else
    {
      v5 = [_contentFilteredIfNeeded objectAtIndex:index];
    }
  }

  return v5;
}

- (id)autocompleteObjectAtIndexPath:(id)path
{
  v3 = [(SearchDataSource *)self objectAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    autocompleteObject = [v3 autocompleteObject];

    v3 = autocompleteObject;
  }

  return v3;
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy row] && (-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") || -[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator")))
  {
    v10 = 0;
  }

  else
  {
    v5 = -[SearchDataSource sectionAtIndex:](self, "sectionAtIndex:", [pathCopy section]);
    if (([pathCopy row] & 0x8000000000000000) != 0 || (v6 = objc_msgSend(pathCopy, "row"), objc_msgSend(v5, "items"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 >= v8))
    {
      v10 = 0;
    }

    else
    {
      items = [v5 items];
      v10 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    }
  }

  return v10;
}

- (void)reset
{
  if ([(SearchDataSource *)self searchAlongRoute])
  {
    v3 = 14;
  }

  else
  {
    v3 = 11;
  }

  [(SearchDataSource *)self setInputText:0 traits:0 source:v3];
  [(SearchDataSource *)self _invalidateFilteredContent];
  [(SearchDataProvider *)self->_searchDataProvider reset];
  placeSummaryTemplateViewModels = self->_placeSummaryTemplateViewModels;

  [(NSMutableDictionary *)placeSummaryTemplateViewModels removeAllObjects];
}

- (void)configureAutocompleteOriginationTypeFromSource:(int)source inTraits:(id)traits
{
  traitsCopy = traits;
  v7 = traitsCopy;
  if ((source - 13) > 3)
  {
    if (source == 21)
    {
      v6 = 3;
    }

    else if (source == 11)
    {
      if ([traitsCopy navigating])
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else if ([traitsCopy navigating])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v7 setAutocompleteOriginationType:v6];
}

- (void)setInputText:(id)text tappedQuerySuggestionCompletion:(id)completion isRetainQuery:(BOOL)query traits:(id)traits source:(int)source
{
  v7 = *&source;
  queryCopy = query;
  textCopy = text;
  completionCopy = completion;
  traitsCopy = traits;
  v15 = [textCopy isEqualToString:self->_searchText];
  if (completionCopy || (v15 & 1) == 0)
  {
    objc_storeStrong(&self->_searchText, text);
    _maps_stringByTrimmingLeadingWhitespace = [(NSString *)self->_searchText _maps_stringByTrimmingLeadingWhitespace];
    v17 = [_maps_stringByTrimmingLeadingWhitespace length];

    if (v17 && [(SearchDataSource *)self shouldShowLoadingIndicator])
    {
      WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
      [WeakRetained reloadData];
    }

    [(SearchDataSource *)self configureAutocompleteOriginationTypeFromSource:v7 inTraits:traitsCopy];
    [(SearchDataProvider *)self->_searchDataProvider setInputText:textCopy tappedQuerySuggestionCompletion:completionCopy isRetainQuery:queryCopy traits:traitsCopy source:v7];
  }
}

- (void)searchDataProviderDidUpdate:(id)update
{
  if ([(DataSource *)self active])
  {
    self->_isLoadingData = 0;
    WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
    v5 = sub_10000FA08(WeakRetained);

    if (v5 != 5)
    {
      v6 = objc_loadWeakRetained(&self->_contentTableView);
      [v6 _mapsui_scrollToTopAnimated:0];
    }
  }

  [(NSMutableDictionary *)self->_placeSummaryTemplateViewModels removeAllObjects];
  [(SearchDataSource *)self _invalidateFilteredContent];
  delegate = [(DataSource *)self delegate];
  [delegate dataSourceUpdated:self];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v8.receiver = self;
  v8.super_class = SearchDataSource;
  [(DataSource *)&v8 setActive:?];
  if (activeCopy)
  {
    self->_isLoadingData = 1;
    WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
    [WeakRetained _setHeaderAndFooterViewsFloat:0];
  }

  else
  {
    originalHeaderAndFooterViewsFloat = self->_originalHeaderAndFooterViewsFloat;
    v7 = objc_loadWeakRetained(&self->_contentTableView);
    [v7 _setHeaderAndFooterViewsFloat:originalHeaderAndFooterViewsFloat];

    [(SearchDataSource *)self reset];
  }

  [(SearchDataProvider *)self->_searchDataProvider setActive:activeCopy];
}

- (void)setResultTypes:(unint64_t)types
{
  if (self->_resultTypes != types)
  {
    self->_resultTypes = types;
    [(SearchDataProvider *)self->_searchDataProvider setResultTypes:?];
  }
}

- (BOOL)shouldReloadOnHeightChange
{
  if ([(SearchDataSource *)self shouldShowNoResultsCell])
  {
    return 1;
  }

  return [(SearchDataSource *)self shouldShowLoadingIndicator];
}

- (void)invalidateDataForFilterChange
{
  [(SearchDataSource *)self _invalidateFilteredContent];
  delegate = [(DataSource *)self delegate];
  [delegate dataSourceUpdated:self];
}

- (void)_hoverGestureRecognizerStateDidChange:(id)change
{
  changeCopy = change;
  if ([(SearchDataSource *)self shouldShowNoResultsCell]|| [(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    goto LABEL_23;
  }

  tableView = [(DataSource *)self tableView];
  dataSource = [tableView dataSource];
  v6 = dataSource;
  if (dataSource == self)
  {
    _maps_isHovering = [changeCopy _maps_isHovering];

    v7 = changeCopy;
    if (!_maps_isHovering)
    {
      goto LABEL_11;
    }

    tableView2 = [(DataSource *)self tableView];
    [changeCopy locationInView:tableView2];
    v11 = v10;
    v13 = v12;

    tableView3 = [(DataSource *)self tableView];
    v15 = [tableView3 indexPathForRowAtPoint:{v11, v13}];

    tableView4 = [(DataSource *)self tableView];
    v17 = [tableView4 cellForRowAtIndexPath:v15];

    if (v17 && ([v17 frame], v29.x = v11, v29.y = v13, CGRectContainsPoint(v30, v29)))
    {
      if (v15)
      {
        if ([v15 isEqual:self->_lastSelectedIndexPath])
        {
          v18 = 0;
LABEL_17:
          tableView5 = [(DataSource *)self tableView];
          [tableView5 selectRowAtIndexPath:v15 animated:0 scrollPosition:0];

          objc_storeStrong(&self->_lastSelectedIndexPath, v15);
          if (v17)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v17 canBecomeFirstResponder];
            }
          }

          [v17 becomeFirstResponder];
LABEL_21:

          if (!v18)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v21 = 0;
LABEL_16:
        v18 = self->_lastSelectedIndexPath;
        lastSelectedIndexPath = self->_lastSelectedIndexPath;
        self->_lastSelectedIndexPath = 0;

        if (v21)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }
    }

    else
    {

      v15 = 0;
    }

    v21 = 1;
    goto LABEL_16;
  }

  v7 = changeCopy;
LABEL_11:
  if ([v7 state] == 3)
  {
    v19 = self->_lastSelectedIndexPath;
    if (v19)
    {
      v18 = v19;
      v20 = self->_lastSelectedIndexPath;
      self->_lastSelectedIndexPath = 0;

LABEL_22:
      tableView6 = [(DataSource *)self tableView];
      v25 = [tableView6 cellForRowAtIndexPath:v18];

      [v25 resignFirstResponder];
      tableView7 = [(DataSource *)self tableView];
      [tableView7 deselectRowAtIndexPath:v18 animated:0];
    }
  }

LABEL_23:
}

- (SearchDataSource)initWithTableView:(id)view
{
  viewCopy = view;
  v29.receiver = self;
  v29.super_class = SearchDataSource;
  v5 = [(DataSource *)&v29 initWithTableView:viewCopy updateLocation:1];
  if (v5)
  {
    v6 = objc_alloc_init(AutocompleteAnalyticsManager);
    analyticsManager = v5->_analyticsManager;
    v5->_analyticsManager = v6;

    v8 = objc_storeWeak(&v5->_contentTableView, viewCopy);
    v5->_originalHeaderAndFooterViewsFloat = [viewCopy _headerAndFooterViewsFloat];

    v9 = objc_alloc_init(SearchDataProvider);
    searchDataProvider = v5->_searchDataProvider;
    v5->_searchDataProvider = v9;

    [(SearchDataProvider *)v5->_searchDataProvider setDelegate:v5];
    v11 = objc_alloc_init(NSMutableDictionary);
    placeSummaryTemplateViewModels = v5->_placeSummaryTemplateViewModels;
    v5->_placeSummaryTemplateViewModels = v11;

    v13 = objc_alloc_init(_TtC4Maps28PlaceSummaryAsyncDataManager);
    placeSummaryAsyncDataManager = v5->_placeSummaryAsyncDataManager;
    v5->_placeSummaryAsyncDataManager = v13;

    v15 = objc_opt_class();
    v16 = +[SearchNoResultsTableViewCell identifier];
    [viewCopy registerClass:v15 forCellReuseIdentifier:v16];

    v17 = objc_opt_class();
    v18 = +[SearchLoadingTableViewCell identifier];
    [viewCopy registerClass:v17 forCellReuseIdentifier:v18];

    v19 = objc_opt_class();
    v20 = +[_TtC4Maps25PlaceSummaryTableViewCell reuseIdentifier];
    [viewCopy registerClass:v19 forCellReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [viewCopy registerClass:v21 forCellReuseIdentifier:v23];

    v24 = objc_opt_class();
    v25 = +[_TtC4Maps25CuratedGuideTableViewCell reuseIdentifier];
    [viewCopy registerClass:v24 forCellReuseIdentifier:v25];

    if (sub_10000FA08(viewCopy) == 5)
    {
      v26 = [[UIHoverGestureRecognizer alloc] initWithTarget:v5 action:"_hoverGestureRecognizerStateDidChange:"];
      [viewCopy addGestureRecognizer:v26];
      if ((_UISolariumEnabled() & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&v5->_contentTableView);
        [WeakRetained setContentInset:{8.5, 0.0, 8.5, 0.0}];
      }
    }
  }

  return v5;
}

@end