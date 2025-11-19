@interface SearchDataSource
- (BOOL)shouldReloadOnHeightChange;
- (BOOL)shouldShowLoadingIndicator;
- (BOOL)shouldShowNoResultsCell;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (SearchDataSource)initWithTableView:(id)a3;
- (double)rowHeight;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_contentFilteredIfNeeded;
- (id)autocompleteObjectAtIndexPath:(id)a3;
- (id)flattenedArray;
- (id)flattenedIndexPath:(id)a3;
- (id)objectAtIndexPath:(id)a3;
- (id)objectsForAnalytics;
- (id)personalizedItemForQuickActionMenuWithCell:(id)a3;
- (id)placeSummaryTemplateForObject:(id)a3 autocompleteClientSourceType:(int64_t)a4 atIndexPath:(id)a5;
- (id)sectionAtIndex:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 legacyCellFromSearchCompletion:(id)a4 accessoryViewType:(int64_t)a5 indexPath:(id)a6;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)_hoverGestureRecognizerStateDidChange:(id)a3;
- (void)_invalidateFilteredContent;
- (void)_sendAnalyticsForDataSelectedAtIndexPath:(id)a3 fromContent:(id)a4 childPlaceIndexPath:(id)a5 childItem:(id)a6 resultRefinement:(id)a7 containmentParent:(id)a8 tappableEntryIdentifier:(id)a9 tappedAccessoryViewType:(int64_t)a10;
- (void)_sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:(id)a3 indexPathInSection:(id)a4 sections:(id)a5 context:(id)a6 selectedChildItemIndexPath:(id)a7 indexOfResultWithSelectedChildItem:(id)a8;
- (void)configureAutocompleteOriginationTypeFromSource:(int)a3 inTraits:(id)a4;
- (void)didTapOnAccessoryEntityQueryAcceleratorWithCell:(id)a3;
- (void)didTapOnAccessoryView:(id)a3 withType:(int64_t)a4 object:(id)a5;
- (void)didTapOnContainmentParentMapItem:(id)a3 cell:(id)a4;
- (void)didTapOnCuratedGuide:(id)a3 cell:(id)a4;
- (void)didTapOnCuratedGuides:(id)a3 cell:(id)a4;
- (void)didTapOnItemInChildItems:(id)a3 cell:(id)a4 buttonIndex:(int64_t)a5;
- (void)didTapOnReportAnIssue;
- (void)didTapOnResultRefinement:(id)a3 cell:(id)a4;
- (void)didTapOnTappableEntryWithMapItemIdentifier:(id)a3 cell:(id)a4;
- (void)didTapOnUserGeneratedGuide:(id)a3 cell:(id)a4;
- (void)invalidateDataForFilterChange;
- (void)reset;
- (void)searchDataProviderDidUpdate:(id)a3;
- (void)sendMapsSuggestionsInsightsAnalyticsWithEntry:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setInputText:(id)a3 tappedQuerySuggestionCompletion:(id)a4 isRetainQuery:(BOOL)a5 traits:(id)a6 source:(int)a7;
- (void)setResultTypes:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
@end

@implementation SearchDataSource

- (void)sendMapsSuggestionsInsightsAnalyticsWithEntry:(id)a3
{
  v25 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v25 contact];
    if (!v3)
    {
      goto LABEL_29;
    }

    v4 = MapsSuggestionsEngineForMapsProcess();
    [v4 feedbackForContact:v3 action:1];
  }

  else
  {
    v5 = v25;
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

      v21 = [v20 historyEntry];
      v22 = [v21 geoMapItem];
      v3 = [MKMapItem _itemWithGeoMapItem:v22];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v3 = [v7 mapItem];
      }

      else
      {
        v3 = 0;
      }
    }

    v4 = [v3 _geoMapItem];
    if (v4)
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

- (void)_sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:(id)a3 indexPathInSection:(id)a4 sections:(id)a5 context:(id)a6 selectedChildItemIndexPath:(id)a7 indexOfResultWithSelectedChildItem:(id)a8
{
  v53 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v42 = v18;
  v43 = v17;
  if (v15)
  {
    v52 = [(SearchDataProvider *)self->_searchDataProvider autocompleteAnalyticsSuggestionsFromSections:v15 context:v16 selectedChildItemIndexPath:v17 indexOfResultWithSelectedChildItem:v18];
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

  if (v53)
  {
    v51 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v53 row]);
  }

  else
  {
    v51 = 0;
  }

  v44 = v15;
  v41 = v14;
  if (v14)
  {
    v50 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 section]);
    v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 row]);
  }

  else
  {
    v40 = 0;
    v50 = 0;
  }

  v48 = [v16 queryString];
  v39 = [v16 query];
  v47 = [v39 queryTerms];
  v33 = [NSNumber numberWithBool:[(SearchDataProvider *)self->_searchDataProvider lastRequestIsRetainQuery]];
  v32 = [(SearchDataProvider *)self->_searchDataProvider rankerResponseStatus];
  v38 = [(SearchDataProvider *)self->_searchDataProvider modelMetadata];
  v46 = [v38 modelVersion];
  v37 = [(SearchDataProvider *)self->_searchDataProvider modelMetadata];
  v45 = [v37 rolloutId];
  v35 = [(SearchDataProvider *)self->_searchDataProvider modelMetadata];
  v29 = [v35 rolloutDeploymentId];
  v34 = [(SearchDataProvider *)self->_searchDataProvider modelMetadata];
  v28 = [v34 rolloutFactorpackId];
  v31 = [(SearchDataProvider *)self->_searchDataProvider modelMetadata];
  v19 = [v31 rolloutRampId];
  v30 = [(SearchDataProvider *)self->_searchDataProvider experimentMetadata];
  v20 = [v30 experimentId];
  v21 = [(SearchDataProvider *)self->_searchDataProvider experimentMetadata];
  v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v21 deploymentId]);
  v23 = [(SearchDataProvider *)self->_searchDataProvider experimentMetadata];
  [v23 treatmentId];
  v24 = v36 = v16;
  v25 = [(SearchDataProvider *)self->_searchDataProvider experimentMetadata];
  v26 = [v25 experimentDescription];
  LODWORD(v27) = v32;
  [GEOAPPortal captureClientACSuggestionWithQuery:v48 queryTokens:v47 entries:v52 selectedIndex:v51 selectedSectionIndex:v50 withinSectionSelectedIndex:v40 isRetainedQuery:v33 isRerankerTriggered:0 shouldDifferentiateClientAndServerResults:v49 responseStatus:v27 GEOModelMetadata_modelVersion:v46 GEOModelMetadata_rolloutId:v45 GEOModelMetadata_rolloutDeploymentId:v29 GEOModelMetadata_rolloutFactorpackId:v28 GEOModelMetadata_rolloutRampId:v19 GEOExperimentMetadata_experimentId:v20 GEOExperimentMetadata_deploymentId:v22 GEOExperimentMetadata_treatmentId:v24 GEOExperimentMetadata_experimentDescription:v26];
}

- (void)_sendAnalyticsForDataSelectedAtIndexPath:(id)a3 fromContent:(id)a4 childPlaceIndexPath:(id)a5 childItem:(id)a6 resultRefinement:(id)a7 containmentParent:(id)a8 tappableEntryIdentifier:(id)a9 tappedAccessoryViewType:(int64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v86 = a8;
  v21 = a9;
  v22 = [v16 row];
  if (v22 < [v17 count])
  {
    v81 = v19;
    v82 = v21;
    v85 = v20;
    if ([(SearchDataProvider *)self->_searchDataProvider searchMode]== 1)
    {
      v23 = 1;
    }

    else if ([(SearchDataProvider *)self->_searchDataProvider searchMode]== 2)
    {
      v33 = [(DataSource *)self delegate];
      v34 = [v33 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

      if (v34)
      {
        v35 = [(DataSource *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v23 = [v35 searchFieldTypeForAnalytics];
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 2;
      }
    }

    else
    {
      v23 = 0;
    }

    v36 = +[MapsAnalyticsHelper analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:](MapsAnalyticsHelper, "analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:", v17, [v16 row]);
    v37 = v36;
    +[MapsAnalyticStateProvider updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:](MapsAnalyticStateProvider, "updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:", v36, self->_searchText, [v16 row], v23, -[SearchDataProvider searchRequestAnalyticsSequenceNumber](self->_searchDataProvider, "searchRequestAnalyticsSequenceNumber"));
    v38 = [v17 objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 autocompleteObject];

      v38 = v39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[AutocompleteAnalyticsManager addAPlaceTappedWithNumberOfResults:](self->_analyticsManager, "addAPlaceTappedWithNumberOfResults:", [v17 count]);
LABEL_21:
      v32 = v19;
      v21 = v82;
LABEL_22:
      v40 = +[GEOAPSharedStateData sharedData];
      [v40 clearSuggestionsData];

      v20 = v85;
      goto LABEL_23;
    }

    if (v86)
    {
      -[AutocompleteAnalyticsManager containmentParentUnitTappedWithMuid:](self->_analyticsManager, "containmentParentUnitTappedWithMuid:", [v86 _muid]);
      goto LABEL_21;
    }

    v79 = v36;
    if (v85)
    {
      analyticsManager = self->_analyticsManager;
      v42 = [v85 toggle];
      v43 = [v42 refinementKey];
      [(AutocompleteAnalyticsManager *)analyticsManager resultRefinementTappedWithKey:v43];

      v32 = v19;
      v21 = v82;
LABEL_28:
      v37 = v79;
      goto LABEL_22;
    }

    v21 = v82;
    if (v82)
    {
      -[AutocompleteAnalyticsManager tappableEntryUnitTappedWithMuid:](self->_analyticsManager, "tappableEntryUnitTappedWithMuid:", [v82 muid]);
      v32 = v19;
      goto LABEL_28;
    }

    v32 = v19;
    if (v19)
    {
      v44 = [v19 childItemAction];

      if (v44)
      {
        v45 = [v19 childItemAction];
        v46 = [v19 childItemAction];
        v47 = [v45 childActionTypeAsString:{objc_msgSend(v46, "childActionType")}];
      }

      else
      {
        v47 = 0;
      }

      v21 = 0;
      v37 = v79;
      v54 = [v81 childItemPlace];
      LOBYTE(v75) = 0;
      [(DataSource *)self sendAnalyticsForDataAtIndexPath:v16 object:v38 childPlaceIndexPath:v18 childPlaceObject:v54 action:2031 eventValue:v47 populateSearchTapEvent:v75];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = [v38 publisherResult];
        v84 = [v55 publisher];

        v56 = [v81 childItemAction];
        v80 = [v56 guideLocation];

        if (v84)
        {
          v57 = self->_analyticsManager;
          v58 = [v84 identifier];
          v59 = [v58 muid];
          v60 = [v16 row];
          v61 = v59;
          v32 = v81;
          [(AutocompleteAnalyticsManager *)v57 publisherChildItemButtonTappedWithPublisherMuid:v61 verticalIndex:v60];

          v37 = v79;
          v62 = v80;
        }

        else
        {
          v62 = v80;
          if (v80)
          {
            -[AutocompleteAnalyticsManager guidesHomeChildItemButtonTappedWithVerticalIndex:](self->_analyticsManager, "guidesHomeChildItemButtonTappedWithVerticalIndex:", [v16 row]);
            v62 = v80;
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

    if (a10 == 2)
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
      v51 = [v50 mapItem];
      v52 = [v51 _hasHikeInfo];

      if (v52)
      {
        v53 = [v50 mapItem];
        v78 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v53 _muid]);
      }

      else
      {
        v78 = 0;
      }

      v37 = v79;

      [(DataSource *)self sendAnalyticsForDataAtIndexPath:v16 object:v38 action:v49 eventValue:v78];
    }

    else
    {
      v78 = 0;
      v37 = v79;
      [(DataSource *)self sendAnalyticsForDataAtIndexPath:v16 object:v38 action:v49 eventValue:0];
    }

    objc_opt_class();
    v32 = 0;
    v21 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_60:

      goto LABEL_22;
    }

    v63 = [v38 collectionResult];
    v64 = [v63 collection];

    v65 = [v38 publisherResult];
    v77 = [v65 publisher];

    if (v64)
    {
      v66 = +[CuratedCollectionSyncManager sharedManager];
      v67 = [v66 collectionIsSaved:v64];

      v68 = self->_analyticsManager;
      v76 = v64;
      v69 = [v64 collectionIdentifier];
      v70 = [v69 muid];
      v71 = [v16 row];
      v72 = v70;
      v32 = v81;
      [(AutocompleteAnalyticsManager *)v68 curatedCollectionTappedWithMUID:v72 isCurrentlySaved:v67 verticalIndex:v71];
    }

    else
    {
      v73 = v77;
      if (!v77)
      {
LABEL_59:

        goto LABEL_60;
      }

      v76 = 0;
      v74 = self->_analyticsManager;
      v69 = [v77 identifier];
      -[AutocompleteAnalyticsManager publisherTappedWithMuid:verticalIndex:](v74, "publisherTappedWithMuid:verticalIndex:", [v69 muid], objc_msgSend(v16, "row"));
    }

    v37 = v79;
    v64 = v76;
    v73 = v77;
    goto LABEL_59;
  }

  v24 = sub_100067540();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = [v16 row];
    v83 = v16;
    v26 = v20;
    v27 = v25;
    v28 = [v17 count];
    v29 = v18;
    searchText = self->_searchText;
    v31 = [ChildItemButton buttonTitleWithChildItem:v19];
    *buf = 134219010;
    v88 = v27;
    v20 = v26;
    v16 = v83;
    v89 = 2048;
    v90 = v28;
    v91 = 2112;
    v92 = searchText;
    v18 = v29;
    v93 = 2112;
    v94 = v31;
    v95 = 2048;
    v96 = [v29 row];
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Logging out of bounds tap. IndexPath %ld. Content count: %lu. Query: %@. ChildItem title: %@. ChildPlaceIndexPath: %ld", buf, 0x34u);
  }

  v32 = v19;
LABEL_23:
}

- (id)flattenedArray
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SearchDataProvider *)self->_searchDataProvider sections];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) items];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)flattenedIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if ([v4 section] >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [(DataSource *)self tableView];
      v5 = &v5[[(SearchDataSource *)self tableView:v7 numberOfRowsInSection:v6]];

      ++v6;
    }

    while ([v4 section] > v6);
  }

  v8 = [NSIndexPath indexPathForRow:v5 inSection:0];

  return v8;
}

- (void)didTapOnReportAnIssue
{
  [(AutocompleteAnalyticsManager *)self->_analyticsManager addAPlaceTappedWithNumberOfResults:0];
  v3 = [ReportASearchAutocompleteResult alloc];
  v4 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  v5 = [v4 queryString];
  v7 = [(ReportASearchAutocompleteResult *)v3 initWithTitle:v5];

  v6 = [(DataSource *)self delegate];
  [v6 dataSource:self itemTapped:v7];
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  if ([(SearchDataSource *)self shouldShowNoResultsCell]|| [(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    return 1;
  }

  v6 = [(SearchDataSource *)self sectionAtIndex:a3];
  v7 = [v6 items];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSections
{
  if ([(SearchDataSource *)self shouldShowNoResultsCell]|| [(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    return 1;
  }

  v4 = [(SearchDataSource *)self _contentFilteredIfNeeded];
  v5 = [v4 count];

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
    v5 = [(SearchDataProvider *)self->_searchDataProvider sections];
    v6 = [(DataSource *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = v5;
      obj = v5;
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
            v13 = [v12 items];
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_10073D094;
            v24[3] = &unk_101656A98;
            v24[4] = self;
            v14 = [NSPredicate predicateWithBlock:v24];
            v15 = [v13 filteredArrayUsingPredicate:v14];

            if ([v15 count])
            {
              v16 = [v12 title];
              v17 = +[AutocompleteSection sectionWithTitle:items:isQuerySuggestionsSection:](AutocompleteSection, "sectionWithTitle:items:isQuerySuggestionsSection:", v16, v15, [v12 isQuerySuggestionsSection]);
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

      v5 = v21;
    }

    else
    {
      objc_storeStrong(&self->_filteredContent, v5);
    }

    v3 = self->_filteredContent;
  }

  return v3;
}

- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v11 = a3;
  v7 = a4;
  if (sub_10000FA08(v11) == 5)
  {
    [v11 deselectRowAtIndexPath:self->_lastSelectedIndexPath animated:0];
    v8 = [v7 nextFocusedIndexPath];
    [v11 selectRowAtIndexPath:v8 animated:0 scrollPosition:0];
  }

  v9 = [v7 nextFocusedIndexPath];
  lastSelectedIndexPath = self->_lastSelectedIndexPath;
  self->_lastSelectedIndexPath = v9;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 row] && (-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") || -[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator")))
  {
    [v6 frame];
    v11 = v10;
  }

  else
  {
    v8 = -[SearchDataSource sectionAtIndex:](self, "sectionAtIndex:", [v7 section]);
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = a3;
  v6 = a4;
  if ([v6 row] || !-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") && !-[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator"))
  {
    v7 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(DataSource *)self addEKAnalyticsForEntry:v7 tapped:1];
      }

      [(SearchDataSource *)self sendMapsSuggestionsInsightsAnalyticsWithEntry:v7];
      v8 = [(SearchDataSource *)self flattenedArray];
      v9 = [(SearchDataSource *)self flattenedIndexPath:v6];
      [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v9 fromContent:v8];
      v10 = [(SearchDataProvider *)self->_searchDataProvider sections];
      v11 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
      [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v9 indexPathInSection:v6 sections:v10 context:v11];

      v12 = [(DataSource *)self delegate];
      [v12 dataSource:self itemTapped:v7];
    }

    [v15 deselectRowAtIndexPath:v6 animated:1];
    v13 = [v15 cellForRowAtIndexPath:v6];
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 row] && (-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") || -[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator")))
  {
    v9 = 0;
  }

  else
  {
    v8 = [v6 cellForRowAtIndexPath:v7];
    v9 = ![v8 conformsToProtocol:&OBJC_PROTOCOL___AutocompleteCellAccessoryView] || objc_msgSend(v8, "accessoryViewType") != 3;
  }

  return v9;
}

- (id)tableView:(id)a3 legacyCellFromSearchCompletion:(id)a4 accessoryViewType:(int64_t)a5 indexPath:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 mapItem];
  if (v11)
  {

LABEL_4:
    v13 = v10;
    v14 = [v13 childItems];
    v41 = 0;
    goto LABEL_5;
  }

  v12 = [v10 publisherResult];

  if (v12)
  {
    goto LABEL_4;
  }

  v37 = [(SearchDataSource *)self userLocationSearchResult];
  v41 = [TwoLinesContentViewModelComposer cellModelForLocalSearchCompletion:v10 userLocationSearchResult:v37 autocompleteClientSourceType:0];

  v13 = [v10 clientResolved];
  if (v13)
  {
    v38 = [v10 clientResolved];
    if ([v38 itemType] == 4)
    {
      v39 = [v10 subtitle];
      v40 = [v39 length];

      if (v40)
      {
LABEL_21:
        v14 = 0;
        v13 = 0;
        goto LABEL_5;
      }

      v13 = +[CustomLocationManager sharedManager];
      v38 = [(SearchDataSource *)self userLocationSearchResult];
      [v13 processSearchResult:v38 traits:0];
    }

    goto LABEL_21;
  }

  v14 = 0;
LABEL_5:
  v15 = +[AcSearchResultTableViewCell identifierWithChildItemsCount:](AcSearchResultTableViewCell, "identifierWithChildItemsCount:", [v14 count]);
  v16 = [v9 dequeueReusableCellWithIdentifier:v15];
  if (!v16)
  {
    v16 = [[AcSearchResultTableViewCell alloc] initWithStyle:0 reuseIdentifier:v15];
  }

  v17 = [(DataSource *)self currentLocation];
  [(_SearchResultTableViewCell *)v16 setCurrentLocation:v17];

  [(_SearchResultTableViewCell *)v16 setAccessoryViewDelegate:self];
  [(_SearchResultTableViewCell *)v16 setAccessoryViewObject:v13];
  [(AcSearchResultTableViewCell *)v16 setAccessoryViewType:a5];
  [(AcSearchResultTableViewCell *)v16 setShouldEnableGrayscaleHighlighting:[(SearchDataProvider *)self->_searchDataProvider shouldEnableGrayscaleHighlighting]];
  v18 = [(SearchDataSource *)self searchDataProvider];
  v19 = [v18 autocompleteContext];
  v20 = [v19 queryString];
  [(AcSearchResultTableViewCell *)v16 setSearchQuery:v20];

  v21 = +[UIColor secondarySystemGroupedBackgroundColor];
  [(AcSearchResultTableViewCell *)v16 setBackgroundColor:v21];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v13 autocompleteCellType];
  }

  else
  {
    v22 = 3;
  }

  [(AcSearchResultTableViewCell *)v16 setAutocompleteCellType:v22];
  [(AcSearchResultTableViewCell *)v16 setAutocompleteClientSourceType:0];
  if ([v14 count])
  {
    v23 = [(DataSource *)self tableView];
    [v23 frame];
    [(AcSearchResultTableViewCell *)v16 estimatedChildItemsStackViewWidthWithContentViewWidth:CGRectGetWidth(v43)];
    v25 = v24;

    sub_10000FA08(v9);
    v26 = objc_opt_class();
    v27 = [ChildItemsViewModel alloc];
    +[AcSearchResultTableViewCell childItemRowSpacing];
    v29 = v28;
    v30 = [v26 buttonTitleFont];
    [v26 contentEdgeInsets];
    v35 = [(ChildItemsViewModel *)v27 initWithChildItems:v14 childItemsSpacing:v30 font:v29 maxWidth:v25 buttonContentEdgeInsets:v31, v32, v33, v34];
  }

  else
  {
    v35 = 0;
  }

  [(AcSearchResultTableViewCell *)v16 setChildItems:v14 viewModel:v35];
  [(AcSearchResultTableViewCell *)v16 setObject:v13];

  return v16;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator") && ![v7 row])
  {
    v12 = +[SearchLoadingTableViewCell identifier];
    v13 = [v6 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];

    LODWORD(v14) = 1144750080;
    [(QuerySuggestionTableViewCell *)v13 setHeightConstraint:40.0 withPriority:v14];
  }

  else if (-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") && ![v7 row])
  {
    v40 = +[SearchNoResultsTableViewCell identifier];
    v13 = [v6 dequeueReusableCellWithIdentifier:v40 forIndexPath:v7];

    [(QuerySuggestionTableViewCell *)v13 setEnableStructuredRAPAffordance:[(SearchDataProvider *)self->_searchDataProvider shouldEnableRAPForNoResults]];
    if (sub_10000FA08(v6) == 5)
    {
      v42 = 40.0;
    }

    else
    {
      [v6 frame];
      v42 = v43;
    }

    LODWORD(v41) = 1144750080;
    [(QuerySuggestionTableViewCell *)v13 setHeightConstraint:v42 withPriority:v41];
    [(QuerySuggestionTableViewCell *)v13 setDelegate:self];
  }

  else
  {
    v8 = [(SearchDataSource *)self objectAtIndexPath:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(SearchDataSource *)self searchDataProvider];
      v10 = [v9 showAutocompleteClientSource];

      if (v10)
      {
        v11 = [AutocompleteClientSource autocompleteClientSourceTypeWithItem:v8];
      }

      else
      {
        v11 = 0;
      }

      v15 = [v8 autocompleteObject];

      v8 = v15;
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

    v51 = -[SearchDataSource sectionAtIndex:](self, "sectionAtIndex:", [v7 section]);
    if ([v51 isQuerySuggestionsSection])
    {
      v17 = +[QuerySuggestionTableViewCell identifier];
      v13 = [v6 dequeueReusableCellWithIdentifier:v17];

      if (!v13)
      {
        v18 = [QuerySuggestionTableViewCell alloc];
        v19 = +[QuerySuggestionTableViewCell identifier];
        v13 = [(QuerySuggestionTableViewCell *)v18 initWithStyle:0 reuseIdentifier:v19];
      }

      v50 = v6;
      v20 = v8;
      v21 = [v20 directionIntent];

      if (v21)
      {
        v22 = [[DirectionIntentCellViewModel alloc] initWithLocalSearchCompletion:v20];
        v23 = [(DirectionIntentCellViewModel *)v22 titleCellString];
        v24 = [(DirectionIntentCellViewModel *)v22 subtitleCellString];
        if ([v24 length])
        {
          v25 = [NSString stringWithFormat:@"%@ %@", v23, v24];

          v23 = v25;
        }

        v26 = [v20 titleHighlightRanges];
        [(QuerySuggestionTableViewCell *)v13 setTitle:v23 highlightTitleRanges:v26 detailText:0 style:0];
      }

      else
      {
        v22 = [v20 title];
        v23 = [v20 titleHighlightRanges];
        [(QuerySuggestionTableViewCell *)v13 setTitle:v22 highlightTitleRanges:v23 detailText:0 style:0];
      }

      [(QuerySuggestionTableViewCell *)v13 setAccessoryViewDelegate:self];
      [(QuerySuggestionTableViewCell *)v13 setAccessoryViewObject:v20];
      [(QuerySuggestionTableViewCell *)v13 setAccessoryViewType:accessoryType];
      v6 = v50;
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

      v29 = [v20 clientResolved];
      if (v29)
      {
        v30 = v29;
        v31 = [v20 clientResolved];
        v32 = [v31 itemType];

        if (v32 == 4)
        {
          v33 = +[CustomLocationManager sharedManager];
          v34 = [(SearchDataSource *)self userLocationSearchResult];
          [v33 processSearchResult:v34 traits:0];
        }
      }

      if (v20 && [(SearchDataSource *)self useLegacyCellsForSearchAC])
      {
        v13 = [(SearchDataSource *)self tableView:v6 legacyCellFromSearchCompletion:v20 accessoryViewType:self->_accessoryType indexPath:v7];
      }

      else
      {
        v35 = [(SearchDataSource *)self placeSummaryTemplateForObject:v27 autocompleteClientSourceType:v11 atIndexPath:v7];
        if (v35)
        {
          if (_UISolariumEnabled())
          {
            if ([v20 _type] == 4)
            {
              v36 = [v27 collectionResult];
              v37 = [v36 collection];

              v38 = [[_TtC4Maps21CuratedGuideViewModel alloc] initWithPlaceCollection:v37 useRichLayout:0 isAutocompleteContext:1];
              v39 = +[_TtC4Maps25CuratedGuideTableViewCell reuseIdentifier];
              v13 = [v6 dequeueReusableCellWithIdentifier:v39];

              [(QuerySuggestionTableViewCell *)v13 configureWith:v38 delegate:self template:v35];
            }

            else
            {
              v45 = objc_opt_class();
              v46 = NSStringFromClass(v45);
              v13 = [v6 dequeueReusableCellWithIdentifier:v46];

              v47 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
              v48 = [v47 queryString];
              [(QuerySuggestionTableViewCell *)v13 configureWithTemplate:v35 query:v48 asyncDataManager:self->_placeSummaryAsyncDataManager delegate:self];
            }
          }

          else
          {
            v44 = +[_TtC4Maps25PlaceSummaryTableViewCell reuseIdentifier];
            v13 = [v6 dequeueReusableCellWithIdentifier:v44];

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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(SearchDataSource *)self sectionAtIndex:a4];
  v8 = [v7 title];
  if ([v8 length])
  {
    v9 = 0.0;
    if (!-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") && -[DataSource active](self, "active") && !-[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator") && ([v7 isQuerySuggestionsSection] & 1) == 0)
    {
      v10 = [v6 _maps_indexOfFirstNonEmptySection] == a4;
      [v6 bounds];
      Width = CGRectGetWidth(v16);
      v12 = [v6 traitCollection];
      [SectionHeaderTableViewHeaderFooterView heightWhenFirstNonEmptySection:v10 title:v8 actionTitle:0 availableWidth:v12 traitCollection:Width];
      v9 = v13;
    }
  }

  else if (a4)
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(SearchDataSource *)self shouldShowNoResultsCell]|| ![(DataSource *)self active]|| [(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    v7 = 0;
  }

  else
  {
    v9 = [(SearchDataSource *)self sectionAtIndex:a4];
    if (([v9 isQuerySuggestionsSection] & 1) != 0 || (objc_msgSend(v9, "title"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, !v11))
    {
      v7 = 0;
    }

    else
    {
      v12 = [v9 title];
      if ([v12 length])
      {
        v13 = [SectionHeaderTableViewHeaderFooterView alloc];
        v14 = [v9 title];
        v7 = -[SectionHeaderTableViewHeaderFooterView initWithTitle:isFirstNonEmptySection:](v13, "initWithTitle:isFirstNonEmptySection:", v14, [v6 _maps_indexOfFirstNonEmptySection] == a4);

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
  v2 = [(SearchDataSource *)self _contentFilteredIfNeeded];
  v3 = [v2 copy];

  return v3;
}

- (id)personalizedItemForQuickActionMenuWithCell:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  v6 = [v5 indexPathForCell:v4];

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
      v21 = [(SearchResult *)v20 historyEntry];
      v22 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
      objc_opt_class();
      v23 = v21;
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
        v26 = [v25 historyEntry];
        v27 = [v26 conformsToProtocol:v22];

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

      v45 = [(SearchResult *)v31 historyEntry];
      v33 = [v45 geoMapItem];

      v37 = [[SearchResult alloc] initWithGEOMapItem:v33];
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

        v33 = v48;

        if (v33 && ([(SearchResult *)v33 BOOLeanForKey:@"MapsSuggestionsIsNotADestinationKey" is:1]& 1) == 0)
        {
          v10 = [[SuggestionsItem alloc] initWithSuggestion:v33 order:0 sourceType:9 sourceSubtype:0 hasPriorityOverride:0 priorityOverride:0];
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

      v32 = [(SearchResult *)v31 geocodedMapItem];
      v33 = v32;
      if (!v32 || ([v32 _geoMapItem], v34 = objc_claimAutoreleasedReturnValue(), v34, !v34))
      {
        v35 = [MKMapItem alloc];
        v36 = [(SearchResult *)v31 addressDictionary];
        v11 = [v35 initWithAddressDictionary:v36];

        v33 = v11;
        if (!v11)
        {
          v10 = 0;
          goto LABEL_43;
        }
      }

      v37 = [[SearchResult alloc] initWithMapItem:v33 searchResultType:0 addressBookAddress:v31 retainedSearchMetadata:0 resultIndex:0];
    }

    v11 = v37;
    v10 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v37];
LABEL_42:

LABEL_43:
LABEL_45:

    goto LABEL_46;
  }

  v16 = [SearchResult alloc];
  v17 = [(SearchResult *)v14 mapItem];
  v11 = [(SearchResult *)v16 initWithMapItem:v17];

  v10 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v11];
LABEL_46:

LABEL_47:

  return v10;
}

- (void)didTapOnTappableEntryWithMapItemIdentifier:(id)a3 cell:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(DataSource *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(SearchDataSource *)self flattenedIndexPath:v8];
  v10 = [(SearchDataSource *)self flattenedArray];
  [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v9 fromContent:v10 childPlaceIndexPath:0 childItem:0 resultRefinement:0 containmentParent:0 tappableEntryIdentifier:v16 tappedAccessoryViewType:0];

  v11 = [(SearchDataProvider *)self->_searchDataProvider sections];
  v12 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v9 indexPathInSection:v8 sections:v11 context:v12];

  v13 = [(DataSource *)self delegate];
  LOBYTE(v12) = objc_opt_respondsToSelector();

  if (v12)
  {
    v14 = [(DataSource *)self delegate];
    v15 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:v8];
    [v14 dataSource:self itemTapped:v16 childItemParent:v15];
  }
}

- (void)didTapOnResultRefinement:(id)a3 cell:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(DataSource *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(SearchDataSource *)self flattenedIndexPath:v8];
  v10 = [(SearchDataSource *)self flattenedArray];
  [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v9 fromContent:v10 childPlaceIndexPath:0 childItem:0 resultRefinement:v16 containmentParent:0 tappableEntryIdentifier:0 tappedAccessoryViewType:0];

  v11 = [(SearchDataProvider *)self->_searchDataProvider sections];
  v12 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v9 indexPathInSection:v8 sections:v11 context:v12];

  v13 = [(DataSource *)self delegate];
  LOBYTE(v12) = objc_opt_respondsToSelector();

  if (v12)
  {
    v14 = [(DataSource *)self delegate];
    v15 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:v8];
    [v14 dataSource:self itemTapped:v16 childItemParent:v15];
  }
}

- (void)didTapOnContainmentParentMapItem:(id)a3 cell:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(DataSource *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(SearchDataSource *)self flattenedIndexPath:v8];
  v10 = [(SearchDataSource *)self flattenedArray];
  [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v9 fromContent:v10 childPlaceIndexPath:0 childItem:0 resultRefinement:0 containmentParent:v15 tappableEntryIdentifier:0 tappedAccessoryViewType:0];

  v11 = [(SearchDataProvider *)self->_searchDataProvider sections];
  v12 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v9 indexPathInSection:v8 sections:v11 context:v12];

  v13 = [(DataSource *)self delegate];
  LOBYTE(v12) = objc_opt_respondsToSelector();

  if (v12)
  {
    v14 = [(DataSource *)self delegate];
    [v14 dataSource:self itemTapped:v15 childItemParent:0];
  }
}

- (void)didTapOnAccessoryEntityQueryAcceleratorWithCell:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  v13 = [v5 indexPathForCell:v4];

  v6 = [(SearchDataSource *)self flattenedIndexPath:v13];
  v7 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:v13];
  v8 = [(SearchDataSource *)self flattenedArray];
  [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v6 fromContent:v8 childPlaceIndexPath:0 childItem:0 resultRefinement:0 containmentParent:0 tappableEntryIdentifier:0 tappedAccessoryViewType:2];

  v9 = [(SearchDataProvider *)self->_searchDataProvider sections];
  v10 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v6 indexPathInSection:v13 sections:v9 context:v10];

  v11 = [(DataSource *)self delegate];
  LOBYTE(v10) = objc_opt_respondsToSelector();

  if (v10)
  {
    v12 = [(DataSource *)self delegate];
    [v12 searchDataSource:self replaceQueryWithItem:v7];
  }
}

- (void)didTapOnItemInChildItems:(id)a3 cell:(id)a4 buttonIndex:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
  v21 = [WeakRetained indexPathForCell:v8];

  v11 = [(SearchDataSource *)self flattenedIndexPath:v21];
  v12 = [NSIndexPath indexPathForRow:a5 inSection:0];
  v13 = [v9 childItems];

  v14 = [v13 objectAtIndexedSubscript:a5];

  v15 = [(SearchDataSource *)self flattenedArray];
  [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v11 fromContent:v15 childPlaceIndexPath:v12 childItem:v14 resultRefinement:0 containmentParent:0 tappableEntryIdentifier:0 tappedAccessoryViewType:0];

  v16 = [(SearchDataProvider *)self->_searchDataProvider sections];
  v17 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v11 indexPathInSection:v21 sections:v16 context:v17 selectedChildItemIndexPath:v12 indexOfResultWithSelectedChildItem:v21];

  v18 = [(DataSource *)self delegate];
  LOBYTE(v17) = objc_opt_respondsToSelector();

  if (v17)
  {
    v19 = [(DataSource *)self delegate];
    v20 = [(SearchDataSource *)self autocompleteObjectAtIndexPath:v21];
    [v19 dataSource:self itemTapped:v14 childItemParent:v20];
  }
}

- (void)didTapOnUserGeneratedGuide:(id)a3 cell:(id)a4
{
  v17 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
  v8 = [WeakRetained indexPathForCell:v6];

  v9 = [(SearchDataSource *)self flattenedIndexPath:v8];
  v10 = [(SearchDataSource *)self flattenedArray];
  v11 = +[MapsAnalyticsHelper analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:](MapsAnalyticsHelper, "analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:", v10, [v9 row]);

  +[MapsAnalyticStateProvider updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:](MapsAnalyticStateProvider, "updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:", v11, self->_searchText, [v9 row], 1, -[SearchDataProvider searchRequestAnalyticsSequenceNumber](self->_searchDataProvider, "searchRequestAnalyticsSequenceNumber"));
  v12 = [(DataSource *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(DataSource *)self delegate];
    [v14 didTapOnUserGeneratedGuide:v17];

    [(AutocompleteAnalyticsManager *)self->_analyticsManager userGeneratedGuideUnitTapped];
  }

  v15 = [(SearchDataProvider *)self->_searchDataProvider sections];
  v16 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:0 indexPathInSection:0 sections:v15 context:v16];
}

- (void)didTapOnCuratedGuides:(id)a3 cell:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
  v28 = v7;
  v9 = [WeakRetained indexPathForCell:v7];

  v27 = v9;
  v10 = [(SearchDataSource *)self flattenedIndexPath:v9];
  v11 = [(SearchDataSource *)self flattenedArray];
  v12 = +[MapsAnalyticsHelper analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:](MapsAnalyticsHelper, "analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:", v11, [v10 row]);

  v26 = v12;
  +[MapsAnalyticStateProvider updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:](MapsAnalyticStateProvider, "updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:", v12, self->_searchText, [v10 row], 1, -[SearchDataProvider searchRequestAnalyticsSequenceNumber](self->_searchDataProvider, "searchRequestAnalyticsSequenceNumber"));
  v13 = [(DataSource *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(DataSource *)self delegate];
    [v15 didTapOnCuratedGuides:v6];
  }

  v16 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v6;
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

        v22 = [*(*(&v29 + 1) + 8 * i) collectionIdentifier];
        v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 muid]);
        [v16 addObject:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  -[AutocompleteAnalyticsManager placeContextMultipleCollectionsTappedWithMuids:verticalIndex:](self->_analyticsManager, "placeContextMultipleCollectionsTappedWithMuids:verticalIndex:", v16, [v10 row]);
  v24 = [(SearchDataProvider *)self->_searchDataProvider sections];
  v25 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v10 indexPathInSection:v27 sections:v24 context:v25];
}

- (void)didTapOnCuratedGuide:(id)a3 cell:(id)a4
{
  v21 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
  v8 = [WeakRetained indexPathForCell:v6];

  v9 = [(SearchDataSource *)self flattenedIndexPath:v8];
  v10 = [(SearchDataSource *)self flattenedArray];
  v11 = +[MapsAnalyticsHelper analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:](MapsAnalyticsHelper, "analyticsResultsInfoArrayFromAutoCompleteResultsArray:selectedIndex:", v10, [v9 row]);

  +[MapsAnalyticStateProvider updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:](MapsAnalyticStateProvider, "updateSuggestionSearchInformation:searchText:searchIndex:searchfieldType:suggestionsAcSequenceNumber:", v11, self->_searchText, [v9 row], 1, -[SearchDataProvider searchRequestAnalyticsSequenceNumber](self->_searchDataProvider, "searchRequestAnalyticsSequenceNumber"));
  v12 = [(DataSource *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(DataSource *)self delegate];
    [v14 didTapOnCuratedGuide:v21];
  }

  v15 = [v21 collectionIdentifier];
  v16 = [v15 muid];

  v17 = +[CuratedCollectionSyncManager sharedManager];
  v18 = [v17 collectionIsSaved:v21];

  -[AutocompleteAnalyticsManager placeContextSingleCollectionTappedWithMuid:isCurrentlySaved:verticalIndex:](self->_analyticsManager, "placeContextSingleCollectionTappedWithMuid:isCurrentlySaved:verticalIndex:", v16, v18, [v9 row]);
  v19 = [(SearchDataProvider *)self->_searchDataProvider sections];
  v20 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
  [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v9 indexPathInSection:v8 sections:v19 context:v20];
}

- (id)placeSummaryTemplateForObject:(id)a3 autocompleteClientSourceType:(int64_t)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_placeSummaryTemplateViewModels objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_placeSummaryTemplateViewModels objectForKeyedSubscript:v9];
    goto LABEL_70;
  }

  v12 = [(DataSource *)self tableView];
  [v12 frame];
  Width = CGRectGetWidth(v107);

  v14 = [_TtC4Maps29PlaceSummaryTextHighlightType alloc];
  v15 = [(SearchDataSource *)self searchDataProvider];
  v90 = -[PlaceSummaryTextHighlightType initWithHighlightType:](v14, "initWithHighlightType:", [v15 highlightType]);

  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = sub_1007400D8;
  v104 = sub_1007400E8;
  v105 = 0;
  v16 = v8;
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

  v88 = v8;
  v89 = v18;
  if (v18)
  {
    v19 = [(SearchDataSource *)self searchDataProvider];
    v20 = [v19 placeSummaryMetadata];
    v21 = [(DataSource *)self currentLocation];
    v22 = [(SearchDataSource *)self userLocationSearchResult];
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
    v24 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithCompletion:v89 metadata:v20 currentLocation:v21 userLocationSearchResult:v22 highlightType:v90 availableWidth:a4 clientSourceType:Width allowsTappableUnits:v83 searchAlongRoute:?];
    v25 = v101[5];
    v101[5] = v24;

    v8 = v88;
  }

  v26 = [_TtC4Maps38PlaceSummaryTextHighlightConfiguration alloc];
  v27 = [(SearchDataSource *)self searchDataProvider];
  v28 = [v27 autocompleteContext];
  v29 = [v28 queryString];
  v30 = [(PlaceSummaryTextHighlightConfiguration *)v26 initWithTypedAutocompleteQuery:v29 type:v90];

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

    v35 = [v33 historyEntry];
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_1007400F0;
    v96[3] = &unk_101627DC0;
    v99 = &v100;
    v97 = v30;
    v98 = self;
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_10074017C;
    v91[3] = &unk_101638308;
    v94 = &v100;
    v95 = Width;
    v92 = v97;
    v93 = self;
    [v35 ifSearch:v96 ifRoute:0 ifPlaceDisplay:v91 ifTransitLineItem:0];
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
    v54 = [(DataSource *)self currentLocation];
    v55 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithSearchResult:v53 highlightConfiguration:v30 currentLocation:v54 availableWidth:[(SearchDataSource *)self searchAlongRoute] searchAlongRoute:Width];
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
    v70 = [(DataSource *)self currentLocation];
    v71 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory viewModelWithUserRoute:v69 highlightConfiguration:v30 currentLocation:v70];
    v72 = v101[5];
    v101[5] = v71;

    v8 = v88;
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
      [(NSMutableDictionary *)self->_placeSummaryTemplateViewModels setObject:v101[5] forKeyedSubscript:v9];
      v11 = v101[5];

      v8 = v88;
      goto LABEL_69;
    }

    v75 = [(SearchDataSource *)self searchDataProvider];
    v76 = [v75 autocompleteContext];
    v77 = [v76 matchInfoForObject:v67];

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

- (void)didTapOnAccessoryView:(id)a3 withType:(int64_t)a4 object:(id)a5
{
  v23 = a3;
  v8 = a5;
  if (a4 != 4)
  {
    if (a4 == 2)
    {
      v16 = [(DataSource *)self tableView];
      v12 = [v16 indexPathForCell:v23];

      v17 = [(SearchDataSource *)self flattenedIndexPath:v12];
      v18 = [(SearchDataSource *)self flattenedArray];
      [(SearchDataSource *)self _sendAnalyticsForDataSelectedAtIndexPath:v17 fromContent:v18 childPlaceIndexPath:0 childItem:0 resultRefinement:0 containmentParent:0 tappableEntryIdentifier:0 tappedAccessoryViewType:2];

      v19 = [(SearchDataProvider *)self->_searchDataProvider sections];
      v20 = [(SearchDataProvider *)self->_searchDataProvider autocompleteContext];
      [(SearchDataSource *)self _sendSessionlessAnalyticsForSelectedAtFlattenedIndexPath:v17 indexPathInSection:v12 sections:v19 context:v20];

      v21 = [(DataSource *)self delegate];
      LOBYTE(v20) = objc_opt_respondsToSelector();

      if (v20)
      {
        v22 = [(DataSource *)self delegate];
        [v22 searchDataSource:self replaceQueryWithItem:v8];
      }

      goto LABEL_10;
    }

    if (a4 != 1)
    {
      goto LABEL_11;
    }
  }

  v9 = [(DataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(DataSource *)self delegate];
    [v11 searchDataSource:self addItem:v8];
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
  [v23 setAccessoryView:v12];
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

  v4 = [(SearchDataSource *)self searchDataProvider];
  v5 = [v4 autocompleteContext];
  v3 = v5 != 0;

  return v3;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  if ([(SearchDataSource *)self shouldShowNoResultsCell]|| [(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SearchDataSource *)self _contentFilteredIfNeeded];
    if ([v6 count] <= a3)
    {
      v5 = 0;
    }

    else
    {
      v5 = [v6 objectAtIndex:a3];
    }
  }

  return v5;
}

- (id)autocompleteObjectAtIndexPath:(id)a3
{
  v3 = [(SearchDataSource *)self objectAtIndexPath:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 autocompleteObject];

    v3 = v4;
  }

  return v3;
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  if (![v4 row] && (-[SearchDataSource shouldShowNoResultsCell](self, "shouldShowNoResultsCell") || -[SearchDataSource shouldShowLoadingIndicator](self, "shouldShowLoadingIndicator")))
  {
    v10 = 0;
  }

  else
  {
    v5 = -[SearchDataSource sectionAtIndex:](self, "sectionAtIndex:", [v4 section]);
    if (([v4 row] & 0x8000000000000000) != 0 || (v6 = objc_msgSend(v4, "row"), objc_msgSend(v5, "items"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 >= v8))
    {
      v10 = 0;
    }

    else
    {
      v9 = [v5 items];
      v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
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

- (void)configureAutocompleteOriginationTypeFromSource:(int)a3 inTraits:(id)a4
{
  v5 = a4;
  v7 = v5;
  if ((a3 - 13) > 3)
  {
    if (a3 == 21)
    {
      v6 = 3;
    }

    else if (a3 == 11)
    {
      if ([v5 navigating])
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

  else if ([v5 navigating])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v7 setAutocompleteOriginationType:v6];
}

- (void)setInputText:(id)a3 tappedQuerySuggestionCompletion:(id)a4 isRetainQuery:(BOOL)a5 traits:(id)a6 source:(int)a7
{
  v7 = *&a7;
  v9 = a5;
  v19 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [v19 isEqualToString:self->_searchText];
  if (v13 || (v15 & 1) == 0)
  {
    objc_storeStrong(&self->_searchText, a3);
    v16 = [(NSString *)self->_searchText _maps_stringByTrimmingLeadingWhitespace];
    v17 = [v16 length];

    if (v17 && [(SearchDataSource *)self shouldShowLoadingIndicator])
    {
      WeakRetained = objc_loadWeakRetained(&self->_contentTableView);
      [WeakRetained reloadData];
    }

    [(SearchDataSource *)self configureAutocompleteOriginationTypeFromSource:v7 inTraits:v14];
    [(SearchDataProvider *)self->_searchDataProvider setInputText:v19 tappedQuerySuggestionCompletion:v13 isRetainQuery:v9 traits:v14 source:v7];
  }
}

- (void)searchDataProviderDidUpdate:(id)a3
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
  v7 = [(DataSource *)self delegate];
  [v7 dataSourceUpdated:self];
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = SearchDataSource;
  [(DataSource *)&v8 setActive:?];
  if (v3)
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

  [(SearchDataProvider *)self->_searchDataProvider setActive:v3];
}

- (void)setResultTypes:(unint64_t)a3
{
  if (self->_resultTypes != a3)
  {
    self->_resultTypes = a3;
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
  v3 = [(DataSource *)self delegate];
  [v3 dataSourceUpdated:self];
}

- (void)_hoverGestureRecognizerStateDidChange:(id)a3
{
  v27 = a3;
  if ([(SearchDataSource *)self shouldShowNoResultsCell]|| [(SearchDataSource *)self shouldShowLoadingIndicator])
  {
    goto LABEL_23;
  }

  v4 = [(DataSource *)self tableView];
  v5 = [v4 dataSource];
  v6 = v5;
  if (v5 == self)
  {
    v8 = [v27 _maps_isHovering];

    v7 = v27;
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = [(DataSource *)self tableView];
    [v27 locationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = [(DataSource *)self tableView];
    v15 = [v14 indexPathForRowAtPoint:{v11, v13}];

    v16 = [(DataSource *)self tableView];
    v17 = [v16 cellForRowAtIndexPath:v15];

    if (v17 && ([v17 frame], v29.x = v11, v29.y = v13, CGRectContainsPoint(v30, v29)))
    {
      if (v15)
      {
        if ([v15 isEqual:self->_lastSelectedIndexPath])
        {
          v18 = 0;
LABEL_17:
          v23 = [(DataSource *)self tableView];
          [v23 selectRowAtIndexPath:v15 animated:0 scrollPosition:0];

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

  v7 = v27;
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
      v24 = [(DataSource *)self tableView];
      v25 = [v24 cellForRowAtIndexPath:v18];

      [v25 resignFirstResponder];
      v26 = [(DataSource *)self tableView];
      [v26 deselectRowAtIndexPath:v18 animated:0];
    }
  }

LABEL_23:
}

- (SearchDataSource)initWithTableView:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SearchDataSource;
  v5 = [(DataSource *)&v29 initWithTableView:v4 updateLocation:1];
  if (v5)
  {
    v6 = objc_alloc_init(AutocompleteAnalyticsManager);
    analyticsManager = v5->_analyticsManager;
    v5->_analyticsManager = v6;

    v8 = objc_storeWeak(&v5->_contentTableView, v4);
    v5->_originalHeaderAndFooterViewsFloat = [v4 _headerAndFooterViewsFloat];

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
    [v4 registerClass:v15 forCellReuseIdentifier:v16];

    v17 = objc_opt_class();
    v18 = +[SearchLoadingTableViewCell identifier];
    [v4 registerClass:v17 forCellReuseIdentifier:v18];

    v19 = objc_opt_class();
    v20 = +[_TtC4Maps25PlaceSummaryTableViewCell reuseIdentifier];
    [v4 registerClass:v19 forCellReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v4 registerClass:v21 forCellReuseIdentifier:v23];

    v24 = objc_opt_class();
    v25 = +[_TtC4Maps25CuratedGuideTableViewCell reuseIdentifier];
    [v4 registerClass:v24 forCellReuseIdentifier:v25];

    if (sub_10000FA08(v4) == 5)
    {
      v26 = [[UIHoverGestureRecognizer alloc] initWithTarget:v5 action:"_hoverGestureRecognizerStateDidChange:"];
      [v4 addGestureRecognizer:v26];
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