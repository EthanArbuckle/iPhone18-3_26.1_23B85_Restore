@interface SearchDataProvider
- (BOOL)_shouldShowResults;
- (BOOL)hasResults;
- (BOOL)shouldShowRapCellWithResultsCount:(unint64_t)a3;
- (SearchDataProvider)init;
- (SearchDataProviderDelegate)delegate;
- (id)autocompleteAnalyticsSuggestionsFromSections:(id)a3 context:(id)a4 selectedChildItemIndexPath:(id)a5 indexOfResultWithSelectedChildItem:(id)a6;
- (id)buildContent;
- (int)mifRankerResponseStatus:(int64_t)a3;
- (void)_completerWasThrottled:(id)a3 queryFragment:(id)a4;
- (void)_dataChanged;
- (void)_processNewAutocompleteItems:(id)a3 itemGroups:(id)a4;
- (void)autocompleteContext:(id)a3 didUpdateMatchInfo:(id)a4;
- (void)clearAutocompleteResults;
- (void)completer:(id)a3 didFailWithError:(id)a4 forQueryFragment:(id)a5;
- (void)completer:(id)a3 didUpdateResultsWithSections:(id)a4 forQueryFragment:(id)a5;
- (void)ensureTraitsHaveDefaultValues:(id)a3;
- (void)populateContext;
- (void)receivedSearchResults:(id)a3 forContext:(id)a4;
- (void)refreshAnalyticsState;
- (void)reset;
- (void)setActive:(BOOL)a3;
- (void)setFinishedLocalCompletions:(BOOL)a3;
- (void)setFinishedServerCompletions:(BOOL)a3;
- (void)setInputText:(id)a3 tappedQuerySuggestionCompletion:(id)a4 isRetainQuery:(BOOL)a5 traits:(id)a6 source:(int)a7;
- (void)setLastTicket:(id)a3;
- (void)setLocalCompletionsItemSource:(id)a3;
- (void)setMapPersonalizedItems:(id)a3;
- (void)setResultTypes:(unint64_t)a3;
- (void)setSearchMode:(unsigned int)a3;
- (void)setServerCompletionsItemSource:(id)a3;
- (void)setUserLocationSearchResult:(id)a3;
- (void)updateAnalyticsStateWithContext:(id)a3 suggestionEntries:(id)a4;
- (void)updateDeduper;
@end

@implementation SearchDataProvider

- (SearchDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int)mifRankerResponseStatus:(int64_t)a3
{
  if ((a3 - 1) < 5)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (void)_processNewAutocompleteItems:(id)a3 itemGroups:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100067540();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "SearchDataProvider - process new AC list", buf, 2u);
  }

  v9 = [(SearchDataProvider *)self exclusiveIncrementAutocompleteChangeCounter];
  v10 = dispatch_get_global_queue(25, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10060B0E4;
  v13[3] = &unk_101623EA0;
  v16 = v9;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(v10, v13);
}

- (void)_completerWasThrottled:(id)a3 queryFragment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MKLocalSearchCompleter was throttled", v9, 2u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SearchDataProvider *)self completerDidUpdateResults:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    [(SearchDataProvider *)self completer:v6 didUpdateResultsWithSections:&__NSArray0__struct forQueryFragment:v7];
  }
}

- (void)completer:(id)a3 didFailWithError:(id)a4 forQueryFragment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 domain];
  if ([v11 isEqualToString:MKErrorDomain])
  {
    v12 = [v9 code];

    if (v12 == 3)
    {
      [(SearchDataProvider *)self _completerWasThrottled:v8 queryFragment:v10];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v9 localizedDescription];
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MKLocalSearchCompleter didFailWithError: %@", &v15, 0xCu);
  }

  [(SearchDataProvider *)self setFinishedServerCompletions:1];
  [(SearchDataProvider *)self setServerCompletionsItemSource:0];
  *&self->_showAutocompleteClientSource = 0;
  self->_shouldEnableRAPForNoResults = 0;
  self->_shouldEnableGrayscaleHighlighting = 0;
  [(PersonalizedItemManager *)self->_deduplicator setClientRankingFunction:0];
  [(AutocompleteItemManager *)self->_deduplicator setPriorityFunction:0];
  [(AutocompleteItemManager *)self->_deduplicator setCompletionSections:0];
  [(AutocompleteItemManager *)self->_deduplicator setTopSectionIsQuerySuggestions:0];
  [(AutocompleteItemManager *)self->_deduplicator setShouldUseDistanceFeatureServerResults:0];
  self->_enableStructuredRAPAffordance = 0;
  self->_lastTicketRetainSearchTime = 0.0;
LABEL_8:
}

- (void)completer:(id)a3 didUpdateResultsWithSections:(id)a4 forQueryFragment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (GEOConfigGetBOOL())
  {
    if (!v10 || ![(NSString *)self->_inputText hasPrefix:v10])
    {
      v11 = sub_100067540();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        inputText = self->_inputText;
        v36 = 138412546;
        v37 = inputText;
        v38 = 2112;
        v39 = v10;
        v13 = "SearchDataProvider - Not showing results as they are too old. input text: %@, query: %@";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v13, &v36, 0x16u);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

LABEL_7:
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v8 results];
      v36 = 134217984;
      v37 = [v15 count];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "MKLocalSearchCompleter didUpdateResults: with %lu result(s)", &v36, 0xCu);
    }

    [(SearchDataProvider *)self setFinishedServerCompletions:1];
    v16 = [v8 results];
    if ([v16 count] || self->_contentUpdatedOnNoResults)
    {
    }

    else
    {
      v35 = [v8 _shouldDisplayNoResults];

      if ((v35 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v17 = [NSMutableArray alloc];
    v18 = [v8 results];
    v11 = [v17 initWithArray:v18];

    if (self->_searchMode == 2)
    {
      v19 = [NSPredicate predicateWithBlock:&stru_101623E78];
      [v11 filterUsingPredicate:v19];
    }

    v20 = [v8 _clientRankingModel];
    if (v20)
    {
      v21 = [v8 _clientRankingModel];
      v22 = [PersonalizedItemClientRankingFunction clientRankingFunctionForGEOClientRankingModel:v21];
      p_deduplicator = &self->_deduplicator;
      [(PersonalizedItemManager *)self->_deduplicator setClientRankingFunction:v22];
    }

    else
    {
      p_deduplicator = &self->_deduplicator;
      [(PersonalizedItemManager *)self->_deduplicator setClientRankingFunction:0];
    }

    v25 = [v8 _sortPriorityMapping];
    if (v25)
    {
      v26 = [v8 _sortPriorityMapping];
      v27 = [PersonalizedItemPriorityFunction priorityFunctionForGEOSortPriorityMapping:v26];
      [(AutocompleteItemManager *)*p_deduplicator setPriorityFunction:v27];
    }

    else
    {
      [(AutocompleteItemManager *)*p_deduplicator setPriorityFunction:0];
    }

    v28 = [v9 copy];
    [(AutocompleteItemManager *)self->_deduplicator setCompletionSections:v28];

    -[AutocompleteItemManager setTopSectionIsQuerySuggestions:](self->_deduplicator, "setTopSectionIsQuerySuggestions:", [v8 _autocompleteTopSectionIsQuerySuggestions]);
    -[AutocompleteItemManager setShouldUseDistanceFeatureServerResults:](self->_deduplicator, "setShouldUseDistanceFeatureServerResults:", [v8 _shouldUseDistanceFeatureServerResults]);
    v29 = [[AutocompleteItemSource alloc] initWithServerCompletions:v11 serverSections:v9];
    [(SearchDataProvider *)self setServerCompletionsItemSource:v29];

    self->_showAutocompleteClientSource = [v8 _showAutocompleteClientSource];
    self->_hasShowAutocompleteClientSource = 1;
    self->_shouldEnableRAPForNoResults = [v8 _shouldEnableRAPForNoResults];
    self->_shouldEnableGrayscaleHighlighting = [v8 _shouldEnableGrayscaleHighlighting];
    self->_highlightType = [v8 _highlightType];
    v30 = [v8 _placeSummaryLayoutMetadata];
    if (v30)
    {
      v31 = [[_TtC4Maps20PlaceSummaryMetadata alloc] initWithMetadata:v30];
      placeSummaryMetadata = self->_placeSummaryMetadata;
      self->_placeSummaryMetadata = v31;
    }

    self->_enableStructuredRAPAffordance = [v8 _enableStructuredRAPAffordance];
    v33 = [v8 _recentAutocompleteSessionData];
    recentAutocompleteSessionData = self->_recentAutocompleteSessionData;
    self->_recentAutocompleteSessionData = v33;

    [(SearchDataProvider *)self updateDeduper];
    goto LABEL_26;
  }

  if ([(NSString *)self->_inputText isEqualToString:v10])
  {
    goto LABEL_7;
  }

  v11 = sub_100067540();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v24 = self->_inputText;
    v36 = 138412546;
    v37 = v24;
    v38 = 2112;
    v39 = v10;
    v13 = "SearchDataProvider - Not showing results due to text mismatch. input text: %@, query: %@";
    goto LABEL_18;
  }

LABEL_26:

LABEL_27:
}

- (void)receivedSearchResults:(id)a3 forContext:(id)a4
{
  v9 = a3;
  v6 = a4;
  inputText = self->_inputText;
  v8 = [v6 queryString];
  LODWORD(inputText) = [(NSString *)inputText isEqualToString:v8];

  if (inputText)
  {
    [(AutocompleteContext *)self->_autocompleteContext setDelegate:0];
    objc_storeStrong(&self->_autocompleteContext, a4);
    [(AutocompleteContext *)self->_autocompleteContext setDelegate:self];
    [(AutocompleteItemManager *)self->_deduplicator setAutocompleteContext:self->_autocompleteContext];
    [(SearchDataProvider *)self setFinishedLocalCompletions:1];
    [(SearchDataProvider *)self setLocalCompletionsItemSource:v9];
    [(SearchDataProvider *)self updateDeduper];
  }
}

- (BOOL)shouldShowRapCellWithResultsCount:(unint64_t)a3
{
  IsEnabled_RAPSydney = _MKRAPIsAvailable();
  if (IsEnabled_RAPSydney)
  {
    IsEnabled_RAPSydney = [(SearchDataProvider *)self shouldEnableRAPIfAvailable];
    if (IsEnabled_RAPSydney)
    {
      IsEnabled_RAPSydney = MapsFeature_IsEnabled_RAPSydney();
      if (IsEnabled_RAPSydney)
      {
        LOBYTE(IsEnabled_RAPSydney) = [(SearchDataProvider *)self enableStructuredRAPAffordance];
        if (!a3)
        {
          LOBYTE(IsEnabled_RAPSydney) = 0;
        }
      }
    }
  }

  return IsEnabled_RAPSydney;
}

- (void)ensureTraitsHaveDefaultValues:(id)a3
{
  v3 = a3;
  if (![v3 supportedAutocompleteResultCellTypesCount])
  {
    [v3 addSupportedAutocompleteResultCellType:0];
    [v3 addSupportedAutocompleteResultCellType:3];
  }

  v4 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v5 = [v4 updatedTraitsForCurrentGarageState:v3];
}

- (void)setLocalCompletionsItemSource:(id)a3
{
  v5 = a3;
  localCompletionsItemSource = self->_localCompletionsItemSource;
  v7 = v5;
  if (localCompletionsItemSource != v5)
  {
    if (localCompletionsItemSource)
    {
      [(PersonalizedItemManager *)self->_deduplicator removeItemSource:?];
    }

    objc_storeStrong(&self->_localCompletionsItemSource, a3);
    if (self->_localCompletionsItemSource)
    {
      [(PersonalizedItemManager *)self->_deduplicator addItemSource:?];
    }
  }
}

- (void)setServerCompletionsItemSource:(id)a3
{
  v5 = a3;
  serverCompletionsItemSource = self->_serverCompletionsItemSource;
  v7 = v5;
  if (serverCompletionsItemSource != v5)
  {
    if (serverCompletionsItemSource)
    {
      [(PersonalizedItemManager *)self->_deduplicator removeItemSource:?];
    }

    objc_storeStrong(&self->_serverCompletionsItemSource, a3);
    if (self->_serverCompletionsItemSource)
    {
      [(PersonalizedItemManager *)self->_deduplicator addItemSource:?];
    }
  }
}

- (void)reset
{
  [(SearchDataProvider *)self setFinishedLocalCompletions:0];
  [(SearchDataProvider *)self setFinishedServerCompletions:0];
  sortedCombinedResults = self->_sortedCombinedResults;
  self->_sortedCombinedResults = &__NSArray0__struct;

  sections = self->_sections;
  self->_sections = &__NSArray0__struct;

  inputText = self->_inputText;
  self->_inputText = 0;

  autocompleteInputContext = self->_autocompleteInputContext;
  self->_autocompleteInputContext = 0;

  autocompleteContext = self->_autocompleteContext;
  self->_autocompleteContext = 0;

  autocompleteAnalyticsSuggestions = self->_autocompleteAnalyticsSuggestions;
  self->_autocompleteAnalyticsSuggestions = &__NSArray0__struct;

  *&self->_showAutocompleteClientSource = 0;
  self->_shouldEnableRAPForNoResults = 0;
  self->_shouldEnableGrayscaleHighlighting = 0;
  [(SearchDataProvider *)self setServerCompletionsItemSource:0];
  [(SearchDataProvider *)self setLocalCompletionsItemSource:0];
  [(PersonalizedItemManager *)self->_deduplicator setClientRankingFunction:0];
  [(AutocompleteItemManager *)self->_deduplicator setPriorityFunction:0];
  [(AutocompleteItemManager *)self->_deduplicator setCompletionSections:0];
  [(AutocompleteItemManager *)self->_deduplicator setTopSectionIsQuerySuggestions:0];
  [(AutocompleteItemManager *)self->_deduplicator setShouldUseDistanceFeatureServerResults:0];
  [(AutocompleteItemManager *)self->_deduplicator setAutocompleteContext:0];
  [(AutocompleteItemManager *)self->_deduplicator setTraits:0];
  self->_enableStructuredRAPAffordance = 0;
  [(SearchDataProvider *)self setLastTicket:0];

  [(SearchDataProvider *)self updateAnalyticsStateWithContext:0 suggestionEntries:&__NSArray0__struct];
}

- (void)updateDeduper
{
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchDataProvider - Dedupe if necessary", buf, 2u);
  }

  if ([(SearchDataProvider *)self _shouldShowResults])
  {
    v4 = sub_100067540();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SearchDataProvider - Dedupe results", v5, 2u);
    }

    [(PersonalizedItemAutocompleteFilter *)self->_personalizedItemsFilter setSearchString:self->_trimmedInputText];
    [(AutocompleteItemManager *)self->_deduplicator setTraits:self->_traits];
    [(PersonalizedItemManager *)self->_deduplicator setUpdatesPaused:0];
  }
}

- (void)updateAnalyticsStateWithContext:(id)a3 suggestionEntries:(id)a4
{
  v17 = a4;
  v6 = a3;
  v7 = [v6 queryString];
  v8 = v7;
  v9 = &stru_1016631F0;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v6 query];

  v12 = [v11 queryTerms];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  v15 = v14;

  if (v17)
  {
    v16 = v17;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  [(MKAutocompleteAnalyticsProvider *)self->_autocompleteAnalyticsState updateStateWithQuery:v10 queryTokens:v15 visibleSuggestionEntries:v16];
}

- (void)setInputText:(id)a3 tappedQuerySuggestionCompletion:(id)a4 isRetainQuery:(BOOL)a5 traits:(id)a6 source:(int)a7
{
  v7 = *&a7;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (self->_inputText == v12)
  {
    if (!v13)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v15 = [(NSString *)v12 isEqualToString:?];
    if (!v13 && (v15 & 1) != 0)
    {
      goto LABEL_37;
    }
  }

  v16 = sub_100067540();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v30 = 138412290;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "SearchDataProvider starting collecting data for query %@", &v30, 0xCu);
  }

  self->_inputTextTimestamp = CFAbsoluteTimeGetCurrent();
  [(PersonalizedItemManager *)self->_deduplicator setUpdatesPaused:1];
  self->_lastRequestIsRetainQuery = a5;
  [(SearchDataProvider *)self setFinishedLocalCompletions:0];
  [(SearchDataProvider *)self setFinishedServerCompletions:0];
  [(SearchBarSearchManager *)self->_localSearchManager cancelCurrentSearch];
  v17 = [(NSString *)v12 copy];
  inputText = self->_inputText;
  self->_inputText = v17;

  v19 = [(NSString *)self->_inputText _maps_stringByTrimmingLeadingWhitespace];
  if (![v19 length])
  {

    v19 = 0;
  }

  objc_storeStrong(&self->_trimmedInputText, v19);
  v20 = [AutocompleteContext alloc];
  if (self->_inputText)
  {
    v21 = self->_inputText;
  }

  else
  {
    v21 = &stru_1016631F0;
  }

  v22 = [(AutocompleteContext *)v20 initWithQueryString:v21];
  autocompleteInputContext = self->_autocompleteInputContext;
  self->_autocompleteInputContext = v22;

  [(SearchDataProvider *)self updateAnalyticsStateWithContext:self->_autocompleteInputContext suggestionEntries:self->_autocompleteAnalyticsSuggestions];
  [(SearchDataProvider *)self ensureTraitsHaveDefaultValues:v14];
  objc_storeStrong(&self->_traits, a6);
  if ([(NSString *)self->_trimmedInputText length])
  {
    [(SearchDataProvider *)self setFinishedServerCompletions:self->_trimmedInputText == 0];
    [(MKLocalSearchCompleter *)self->_searchCompleter setSource:v7];
    [(MKLocalSearchCompleter *)self->_searchCompleter setRetainedSearchMetadata:self->_retainedSearchMetadata];
    if (self->_trimmedInputText)
    {
      trimmedInputText = self->_trimmedInputText;
    }

    else
    {
      trimmedInputText = &stru_1016631F0;
    }

    [(MKLocalSearchCompleter *)self->_searchCompleter setQueryFragment:trimmedInputText];
    [(MKLocalSearchCompleter *)self->_searchCompleter _setTappedQuerySuggestionCompletion:v13];
    if ([v14 hasMapRegion])
    {
      v25 = [v14 mapRegion];
      GEOMapRectForMapRegion();
      v33 = MKCoordinateRegionForMapRect(v32);
      [(MKLocalSearchCompleter *)self->_searchCompleter setRegion:v33.center.latitude, v33.center.longitude, v33.span.latitudeDelta, v33.span.longitudeDelta];
    }

    if ([v14 hasMode])
    {
      v26 = [v14 mode] - 1;
      if (v26 > 3)
      {
        v27 = 103;
      }

      else
      {
        v27 = qword_101215FB0[v26];
      }

      [(MKLocalSearchCompleter *)self->_searchCompleter setMapType:v27];
    }

    if ([v14 hasTimeSinceMapViewportChanged])
    {
      -[MKLocalSearchCompleter setTimeSinceLastInBoundingRegion:](self->_searchCompleter, "setTimeSinceLastInBoundingRegion:", [v14 timeSinceMapViewportChanged]);
    }

    if ([v14 hasSequenceNumber])
    {
      self->_searchRequestAnalyticsSequenceNumber = [v14 sequenceNumber];
    }

    [(MKLocalSearchCompleter *)self->_searchCompleter setTraits:v14];
    if ([v14 autocompleteOriginationEditingServerWaypoints])
    {
      [(PersonalizedItemManager *)self->_deduplicator removeItemSource:self->_personalizedItemsFilter];
      objc_storeStrong(&self->_autocompleteContext, self->_autocompleteInputContext);
      [(AutocompleteContext *)self->_autocompleteContext setDelegate:self];
      [(AutocompleteItemManager *)self->_deduplicator setAutocompleteContext:self->_autocompleteContext];
      [(SearchDataProvider *)self setLocalCompletionsItemSource:0];
      [(SearchDataProvider *)self setFinishedLocalCompletions:1];
    }

    else
    {
      [(SearchDataProvider *)self setFinishedLocalCompletions:0];
      [(PersonalizedItemManager *)self->_deduplicator addItemSource:self->_personalizedItemsFilter];
      Integer = GEOConfigGetInteger();
      if ((Integer & 0x8000000000000000) == 0 && [(NSString *)self->_trimmedInputText length]<= Integer)
      {
        [(NSString *)self->_trimmedInputText _navigation_isCJK];
      }

      -[SearchBarSearchManager searchName:forSearchMode:backfill:context:originationType:](self->_localSearchManager, "searchName:forSearchMode:backfill:context:originationType:", self->_inputText, self->_searchMode, GEOConfigGetInteger(), self->_autocompleteInputContext, [v14 autocompleteOriginationType]);
    }

    [(SearchDataProvider *)self updateDeduper];
  }

  else
  {
    v28 = [(MKAutocompleteAnalyticsProvider *)self->_autocompleteAnalyticsState captureNewMetrics];
    [v28 submitWithStatus:4];
  }

LABEL_37:
}

- (void)setFinishedServerCompletions:(BOOL)a3
{
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromBOOL();
    inputText = self->_inputText;
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = inputText;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Finished collecting server results: %@ for query %@", &v8, 0x16u);
  }

  self->_finishedServerCompletions = a3;
  [(SearchDataProvider *)self incrementAutocompleteChangeCounter];
}

- (void)setFinishedLocalCompletions:(BOOL)a3
{
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromBOOL();
    inputText = self->_inputText;
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = inputText;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Finished collecting local results: %@ for query : %@", &v8, 0x16u);
  }

  self->_finishedLocalCompletions = a3;
  [(SearchDataProvider *)self incrementAutocompleteChangeCounter];
}

- (void)setLastTicket:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (self->_lastTicket != v5)
  {
    objc_storeStrong(&self->_lastTicket, a3);
    v5 = v7;
  }

  if (v5)
  {
    [(GEOMapServiceCompletionTicket *)v5 retainSearchTime];
    v5 = v7;
    self->_lastTicketRetainSearchTime = v6;
  }
}

- (void)clearAutocompleteResults
{
  sections = self->_sections;
  self->_sections = &__NSArray0__struct;

  sortedCombinedResults = self->_sortedCombinedResults;
  self->_sortedCombinedResults = &__NSArray0__struct;

  autocompleteContext = self->_autocompleteContext;
  self->_autocompleteContext = 0;

  autocompleteInputContext = self->_autocompleteInputContext;
  self->_autocompleteInputContext = 0;

  *&self->_showAutocompleteClientSource = 0;
  self->_shouldEnableRAPForNoResults = 0;
  self->_shouldEnableGrayscaleHighlighting = 0;
  [(SearchDataProvider *)self setLocalCompletionsItemSource:0];
  [(SearchDataProvider *)self setServerCompletionsItemSource:0];
  [(PersonalizedItemManager *)self->_deduplicator setClientRankingFunction:0];
  [(AutocompleteItemManager *)self->_deduplicator setPriorityFunction:0];
  [(AutocompleteItemManager *)self->_deduplicator setCompletionSections:0];
  [(AutocompleteItemManager *)self->_deduplicator setTopSectionIsQuerySuggestions:0];
  [(AutocompleteItemManager *)self->_deduplicator setShouldUseDistanceFeatureServerResults:0];
  [(AutocompleteItemManager *)self->_deduplicator setAutocompleteContext:0];
  [(AutocompleteItemManager *)self->_deduplicator setTraits:0];
  self->_enableStructuredRAPAffordance = 0;
  v7 = [(SearchDataProvider *)self delegate];
  [v7 searchDataProviderDidUpdate:self];

  [(SearchDataProvider *)self updateAnalyticsStateWithContext:0 suggestionEntries:&__NSArray0__struct];
}

- (void)autocompleteContext:(id)a3 didUpdateMatchInfo:(id)a4
{
  if (self->_autocompleteContext == a3)
  {
    [(SearchDataProvider *)self refreshAnalyticsState];
  }
}

- (void)refreshAnalyticsState
{
  v3 = [(SearchDataProvider *)self autocompleteAnalyticsSuggestionsFromSections:self->_sections context:self->_autocompleteContext];
  autocompleteAnalyticsSuggestions = self->_autocompleteAnalyticsSuggestions;
  self->_autocompleteAnalyticsSuggestions = v3;

  autocompleteContext = self->_autocompleteContext;
  v6 = self->_autocompleteAnalyticsSuggestions;

  [(SearchDataProvider *)self updateAnalyticsStateWithContext:autocompleteContext suggestionEntries:v6];
}

- (id)autocompleteAnalyticsSuggestionsFromSections:(id)a3 context:(id)a4 selectedChildItemIndexPath:(id)a5 indexOfResultWithSelectedChildItem:(id)a6
{
  v8 = &__NSArray0__struct;
  if (a3 && a4)
  {
    LOWORD(v10) = 1;
    v8 = [MapsAnalyticsHelper acSuggestionEntriesFromSections:"acSuggestionEntriesFromSections:personalizedItems:context:mapsSuggestionsInsights:skipReportASearchItems:selectedChildItemIndexPath:indexOfResultWithSelectedChildItem:traits:usedForLogging:shouldUseDistanceFeatureServerResults:placeSummaryMetadata:" personalizedItems:a6 context:self->_traits mapsSuggestionsInsights:v10 skipReportASearchItems:self->_placeSummaryMetadata selectedChildItemIndexPath:? indexOfResultWithSelectedChildItem:? traits:? usedForLogging:? shouldUseDistanceFeatureServerResults:? placeSummaryMetadata:?];
    v6 = vars8;
  }

  return v8;
}

- (void)_dataChanged
{
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchDataProvider - Data changed", buf, 2u);
  }

  if ([(SearchDataProvider *)self _shouldShowResults])
  {
    v4 = [(SearchDataProvider *)self buildContent];
    sections = self->_sections;
    self->_sections = v4;

    [(SearchDataProvider *)self refreshAnalyticsState];
    if (self->_hasShowAutocompleteClientSource)
    {
      v6 = [NSNumber numberWithBool:[(SearchDataProvider *)self showAutocompleteClientSource]];
    }

    else
    {
      v6 = 0;
    }

    if (self->_inputTextTimestamp <= 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = [NSNumber numberWithDouble:(CFAbsoluteTimeGetCurrent() - self->_inputTextTimestamp) * 1000.0];
    }

    v8 = [(AutocompleteContext *)self->_autocompleteContext queryString];
    v9 = [(AutocompleteContext *)self->_autocompleteContext query];
    v10 = [v9 queryTerms];
    autocompleteAnalyticsSuggestions = self->_autocompleteAnalyticsSuggestions;
    v12 = [NSNumber numberWithBool:[(AutocompleteItemManager *)self->_deduplicator clientRankingScoreInfluencedResults]];
    v13 = [NSNumber numberWithBool:self->_lastRequestIsRetainQuery];
    [GEOAPPortal captureClientACResponseWithQuery:v8 queryTokens:v10 entries:autocompleteAnalyticsSuggestions shouldDifferentiateClientAndServerResults:v6 overallLatencyInMs:v7 isRerankerTriggered:v12 isRetainedQuery:v13];

    v14 = sub_100067540();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(AutocompleteContext *)self->_autocompleteContext queryString];
      *buf = 138412290;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "SearchDataProvider - Notify SearchDataSource of updated AC list for query %@", buf, 0xCu);
    }

    v16 = [(SearchDataProvider *)self delegate];
    [v16 searchDataProviderDidUpdate:self];

    if (self->_inputText)
    {
      sortedCombinedResults = self->_sortedCombinedResults;
      if (!sortedCombinedResults)
      {
        sortedCombinedResults = &__NSArray0__struct;
      }

      v18 = sortedCombinedResults;
      v19 = +[NSNotificationCenter defaultCenter];
      inputText = self->_inputText;
      v22[0] = @"SearchDataProviderQueryKey";
      v22[1] = @"SearchDataProviderQueryResultGroupsKey";
      v23[0] = inputText;
      v23[1] = v18;
      v21 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
      [v19 postNotificationName:@"SearchDataProviderDidChangeDataNotification" object:self userInfo:v21];
    }
  }
}

- (BOOL)_shouldShowResults
{
  if (self->_finishedLocalCompletions && self->_finishedServerCompletions)
  {
    v3 = sub_100067540();
    v4 = 1;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      inputText = self->_inputText;
      v9 = 138412290;
      v10 = inputText;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchDataProvider - Client and Server results are done for query %@", &v9, 0xCu);
    }
  }

  else if (GEOConfigGetBOOL() && self->_finishedLocalCompletions && [(NSString *)self->_trimmedInputText length]== 1)
  {
    v6 = [(SearchDataProvider *)self localCompletionsItemSource];
    v4 = [v6 count] != 0;

    v3 = sub_100067540();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromBOOL();
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchDataProvider - Should show results: %@", &v9, 0xCu);
    }
  }

  else
  {
    v3 = sub_100067540();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SearchDataProvider - Not showing autocomplete results since we are still processing or showing search results.", &v9, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)buildContent
{
  [(SearchDataProvider *)self populateContext];
  v27 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_sortedCombinedResults count]];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = self;
  obj = self->_sortedCombinedResults;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v33;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = [v8 items];
        v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = [v8 items];
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if (*(*(&v28 + 1) + 8 * j))
              {
                [v10 addObject:?];
                ++v5;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v13);
        }

        if ([v10 count])
        {
          v16 = [v8 title];
          v17 = [v10 copy];
          v18 = +[AutocompleteSection sectionWithTitle:items:isQuerySuggestionsSection:](AutocompleteSection, "sectionWithTitle:items:isQuerySuggestionsSection:", v16, v17, [v8 isQuerySuggestionsSection]);
          [v27 addObject:v18];
        }
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if ([(SearchDataProvider *)v25 shouldShowRapCellWithResultsCount:v5])
  {
    v19 = [ReportASearchAutocompleteResult alloc];
    v20 = [(AutocompleteContext *)v25->_autocompleteContext queryString];
    v21 = [(ReportASearchAutocompleteResult *)v19 initWithTitle:v20];
    v36 = v21;
    v22 = [NSArray arrayWithObjects:&v36 count:1];

    v23 = [AutocompleteSection sectionWithTitle:0 items:v22 isQuerySuggestionsSection:0];
    [v27 addObject:v23];
  }

  return v27;
}

- (void)populateContext
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"EnableSearchDebug"];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_sortedCombinedResults;
  v20 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v19 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v5;
        v6 = *(*(&v26 + 1) + 8 * v5);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = [v6 items];
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * i);
              v13 = [v12 autocompleteObject];
              if (v13)
              {
                v14 = [v12 matchInfo];
                v15 = [v14 copy];

                [v15 setShownToUser:0];
                if (v4)
                {
                  v16 = [(PersonalizedItemManager *)self->_deduplicator _priorityFunction];

                  if (v16)
                  {
                    v17 = [(PersonalizedItemManager *)self->_deduplicator _priorityFunction];
                    [v15 setSortPriorityDebug:{objc_msgSend(v17, "priorityForPersonalizedAutocompleteItem:", v12)}];
                  }
                }

                if (v15)
                {
                  [(AutocompleteContext *)self->_autocompleteContext setMatchInfo:v15 forObject:v13];
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }

        v5 = v21 + 1;
      }

      while ((v21 + 1) != v20);
      v20 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }
}

- (BOOL)hasResults
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_sections;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) items];
        v7 = [v6 count];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setUserLocationSearchResult:(id)a3
{
  v5 = a3;
  if (self->_userLocationSearchResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_userLocationSearchResult, a3);
    [(SearchDataProvider *)self _dataChanged];
    v5 = v6;
  }
}

- (void)setMapPersonalizedItems:(id)a3
{
  v5 = a3;
  if (self->_mapPersonalizedItems != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mapPersonalizedItems, a3);
    [(PersonalizedItemAutocompleteFilter *)self->_personalizedItemsFilter setInputItems:self->_mapPersonalizedItems];
    v5 = v6;
  }
}

- (void)setActive:(BOOL)a3
{
  self->_active = a3;
  if ([(SearchDataProvider *)self isActive])
  {

    [(SearchDataProvider *)self _dataChanged];
  }

  else
  {
    [(SearchDataProvider *)self setLastTicket:0];
    [(SearchDataProvider *)self setFinishedLocalCompletions:0];
    [(SearchDataProvider *)self setFinishedServerCompletions:0];
    autocompleteInputContext = self->_autocompleteInputContext;
    self->_autocompleteInputContext = 0;

    autocompleteContext = self->_autocompleteContext;
    self->_autocompleteContext = 0;

    [(AutocompleteItemManager *)self->_deduplicator setAutocompleteContext:0];
    [(AutocompleteItemManager *)self->_deduplicator autocompleteSessionDidEnd];
    [(AutocompleteItemManager *)self->_deduplicator setTraits:0];

    [(SearchDataProvider *)self updateAnalyticsStateWithContext:0 suggestionEntries:&__NSArray0__struct];
  }
}

- (void)setResultTypes:(unint64_t)a3
{
  if (self->_resultTypes != a3)
  {
    self->_resultTypes = a3;
    [(MKLocalSearchCompleter *)self->_searchCompleter setResultTypes:?];
  }
}

- (void)setSearchMode:(unsigned int)a3
{
  if (self->_searchMode != a3)
  {
    self->_searchMode = a3;
    [(PersonalizedItemAutocompleteFilter *)self->_personalizedItemsFilter setHasItemsWhenSearchStringIsEmpty:a3 == 2];
  }
}

- (SearchDataProvider)init
{
  v17.receiver = self;
  v17.super_class = SearchDataProvider;
  v2 = [(SearchDataProvider *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_searchMode = 1;
    v2->_enableRAPIfAvailable = 1;
    v4 = [[SearchBarSearchManager alloc] initWithDelegate:v2];
    localSearchManager = v3->_localSearchManager;
    v3->_localSearchManager = v4;

    v6 = objc_alloc_init(MKLocalSearchCompleter);
    searchCompleter = v3->_searchCompleter;
    v3->_searchCompleter = v6;

    [(MKLocalSearchCompleter *)v3->_searchCompleter _setPrivateFilterType:1001];
    [(MKLocalSearchCompleter *)v3->_searchCompleter _setShouldPreloadTransitInfo:1];
    [(MKLocalSearchCompleter *)v3->_searchCompleter setDelegate:v3];
    [(MKLocalSearchCompleter *)v3->_searchCompleter setStatefulQueriesEnabled:1];
    v8 = objc_alloc_init(MKAutocompleteAnalyticsProvider);
    autocompleteAnalyticsState = v3->_autocompleteAnalyticsState;
    v3->_autocompleteAnalyticsState = v8;

    [(MKLocalSearchCompleter *)v3->_searchCompleter setAnalyticsProvider:v3->_autocompleteAnalyticsState];
    v10 = objc_alloc_init(AutocompleteItemManager);
    deduplicator = v3->_deduplicator;
    v3->_deduplicator = v10;

    v12 = objc_alloc_init(PersonalizedItemAutocompleteFilter);
    personalizedItemsFilter = v3->_personalizedItemsFilter;
    v3->_personalizedItemsFilter = v12;

    v3->_highlightType = 0;
    v3->_shouldEnableGrayscaleHighlighting = 0;
    [(PersonalizedItemManager *)v3->_deduplicator addItemSource:v3->_personalizedItemsFilter];
    [(PersonalizedItemManager *)v3->_deduplicator addObserver:v3];
    if (MapsFeature_IsEnabled_PersonalizedAutocompleteRanker())
    {
      v14 = objc_alloc_init(_TtC4Maps30PersonalizedAutocompleteRanker);
      personalizedRanker = v3->personalizedRanker;
      v3->personalizedRanker = v14;
    }
  }

  return v3;
}

@end