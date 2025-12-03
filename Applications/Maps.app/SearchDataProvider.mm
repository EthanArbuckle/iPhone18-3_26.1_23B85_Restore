@interface SearchDataProvider
- (BOOL)_shouldShowResults;
- (BOOL)hasResults;
- (BOOL)shouldShowRapCellWithResultsCount:(unint64_t)count;
- (SearchDataProvider)init;
- (SearchDataProviderDelegate)delegate;
- (id)autocompleteAnalyticsSuggestionsFromSections:(id)sections context:(id)context selectedChildItemIndexPath:(id)path indexOfResultWithSelectedChildItem:(id)item;
- (id)buildContent;
- (int)mifRankerResponseStatus:(int64_t)status;
- (void)_completerWasThrottled:(id)throttled queryFragment:(id)fragment;
- (void)_dataChanged;
- (void)_processNewAutocompleteItems:(id)items itemGroups:(id)groups;
- (void)autocompleteContext:(id)context didUpdateMatchInfo:(id)info;
- (void)clearAutocompleteResults;
- (void)completer:(id)completer didFailWithError:(id)error forQueryFragment:(id)fragment;
- (void)completer:(id)completer didUpdateResultsWithSections:(id)sections forQueryFragment:(id)fragment;
- (void)ensureTraitsHaveDefaultValues:(id)values;
- (void)populateContext;
- (void)receivedSearchResults:(id)results forContext:(id)context;
- (void)refreshAnalyticsState;
- (void)reset;
- (void)setActive:(BOOL)active;
- (void)setFinishedLocalCompletions:(BOOL)completions;
- (void)setFinishedServerCompletions:(BOOL)completions;
- (void)setInputText:(id)text tappedQuerySuggestionCompletion:(id)completion isRetainQuery:(BOOL)query traits:(id)traits source:(int)source;
- (void)setLastTicket:(id)ticket;
- (void)setLocalCompletionsItemSource:(id)source;
- (void)setMapPersonalizedItems:(id)items;
- (void)setResultTypes:(unint64_t)types;
- (void)setSearchMode:(unsigned int)mode;
- (void)setServerCompletionsItemSource:(id)source;
- (void)setUserLocationSearchResult:(id)result;
- (void)updateAnalyticsStateWithContext:(id)context suggestionEntries:(id)entries;
- (void)updateDeduper;
@end

@implementation SearchDataProvider

- (SearchDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int)mifRankerResponseStatus:(int64_t)status
{
  if ((status - 1) < 5)
  {
    return status;
  }

  else
  {
    return 0;
  }
}

- (void)_processNewAutocompleteItems:(id)items itemGroups:(id)groups
{
  itemsCopy = items;
  groupsCopy = groups;
  v8 = sub_100067540();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "SearchDataProvider - process new AC list", buf, 2u);
  }

  exclusiveIncrementAutocompleteChangeCounter = [(SearchDataProvider *)self exclusiveIncrementAutocompleteChangeCounter];
  v10 = dispatch_get_global_queue(25, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10060B0E4;
  v13[3] = &unk_101623EA0;
  v16 = exclusiveIncrementAutocompleteChangeCounter;
  v13[4] = self;
  v14 = itemsCopy;
  v15 = groupsCopy;
  v11 = groupsCopy;
  v12 = itemsCopy;
  dispatch_async(v10, v13);
}

- (void)_completerWasThrottled:(id)throttled queryFragment:(id)fragment
{
  throttledCopy = throttled;
  fragmentCopy = fragment;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MKLocalSearchCompleter was throttled", v9, 2u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SearchDataProvider *)self completerDidUpdateResults:throttledCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [(SearchDataProvider *)self completer:throttledCopy didUpdateResultsWithSections:&__NSArray0__struct forQueryFragment:fragmentCopy];
  }
}

- (void)completer:(id)completer didFailWithError:(id)error forQueryFragment:(id)fragment
{
  completerCopy = completer;
  errorCopy = error;
  fragmentCopy = fragment;
  domain = [errorCopy domain];
  if ([domain isEqualToString:MKErrorDomain])
  {
    code = [errorCopy code];

    if (code == 3)
    {
      [(SearchDataProvider *)self _completerWasThrottled:completerCopy queryFragment:fragmentCopy];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    localizedDescription = [errorCopy localizedDescription];
    v15 = 138412290;
    v16 = localizedDescription;
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

- (void)completer:(id)completer didUpdateResultsWithSections:(id)sections forQueryFragment:(id)fragment
{
  completerCopy = completer;
  sectionsCopy = sections;
  fragmentCopy = fragment;
  if (GEOConfigGetBOOL())
  {
    if (!fragmentCopy || ![(NSString *)self->_inputText hasPrefix:fragmentCopy])
    {
      v11 = sub_100067540();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        inputText = self->_inputText;
        v36 = 138412546;
        v37 = inputText;
        v38 = 2112;
        v39 = fragmentCopy;
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
      results = [completerCopy results];
      v36 = 134217984;
      v37 = [results count];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "MKLocalSearchCompleter didUpdateResults: with %lu result(s)", &v36, 0xCu);
    }

    [(SearchDataProvider *)self setFinishedServerCompletions:1];
    results2 = [completerCopy results];
    if ([results2 count] || self->_contentUpdatedOnNoResults)
    {
    }

    else
    {
      _shouldDisplayNoResults = [completerCopy _shouldDisplayNoResults];

      if ((_shouldDisplayNoResults & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v17 = [NSMutableArray alloc];
    results3 = [completerCopy results];
    v11 = [v17 initWithArray:results3];

    if (self->_searchMode == 2)
    {
      v19 = [NSPredicate predicateWithBlock:&stru_101623E78];
      [v11 filterUsingPredicate:v19];
    }

    _clientRankingModel = [completerCopy _clientRankingModel];
    if (_clientRankingModel)
    {
      _clientRankingModel2 = [completerCopy _clientRankingModel];
      v22 = [PersonalizedItemClientRankingFunction clientRankingFunctionForGEOClientRankingModel:_clientRankingModel2];
      p_deduplicator = &self->_deduplicator;
      [(PersonalizedItemManager *)self->_deduplicator setClientRankingFunction:v22];
    }

    else
    {
      p_deduplicator = &self->_deduplicator;
      [(PersonalizedItemManager *)self->_deduplicator setClientRankingFunction:0];
    }

    _sortPriorityMapping = [completerCopy _sortPriorityMapping];
    if (_sortPriorityMapping)
    {
      _sortPriorityMapping2 = [completerCopy _sortPriorityMapping];
      v27 = [PersonalizedItemPriorityFunction priorityFunctionForGEOSortPriorityMapping:_sortPriorityMapping2];
      [(AutocompleteItemManager *)*p_deduplicator setPriorityFunction:v27];
    }

    else
    {
      [(AutocompleteItemManager *)*p_deduplicator setPriorityFunction:0];
    }

    v28 = [sectionsCopy copy];
    [(AutocompleteItemManager *)self->_deduplicator setCompletionSections:v28];

    -[AutocompleteItemManager setTopSectionIsQuerySuggestions:](self->_deduplicator, "setTopSectionIsQuerySuggestions:", [completerCopy _autocompleteTopSectionIsQuerySuggestions]);
    -[AutocompleteItemManager setShouldUseDistanceFeatureServerResults:](self->_deduplicator, "setShouldUseDistanceFeatureServerResults:", [completerCopy _shouldUseDistanceFeatureServerResults]);
    v29 = [[AutocompleteItemSource alloc] initWithServerCompletions:v11 serverSections:sectionsCopy];
    [(SearchDataProvider *)self setServerCompletionsItemSource:v29];

    self->_showAutocompleteClientSource = [completerCopy _showAutocompleteClientSource];
    self->_hasShowAutocompleteClientSource = 1;
    self->_shouldEnableRAPForNoResults = [completerCopy _shouldEnableRAPForNoResults];
    self->_shouldEnableGrayscaleHighlighting = [completerCopy _shouldEnableGrayscaleHighlighting];
    self->_highlightType = [completerCopy _highlightType];
    _placeSummaryLayoutMetadata = [completerCopy _placeSummaryLayoutMetadata];
    if (_placeSummaryLayoutMetadata)
    {
      v31 = [[_TtC4Maps20PlaceSummaryMetadata alloc] initWithMetadata:_placeSummaryLayoutMetadata];
      placeSummaryMetadata = self->_placeSummaryMetadata;
      self->_placeSummaryMetadata = v31;
    }

    self->_enableStructuredRAPAffordance = [completerCopy _enableStructuredRAPAffordance];
    _recentAutocompleteSessionData = [completerCopy _recentAutocompleteSessionData];
    recentAutocompleteSessionData = self->_recentAutocompleteSessionData;
    self->_recentAutocompleteSessionData = _recentAutocompleteSessionData;

    [(SearchDataProvider *)self updateDeduper];
    goto LABEL_26;
  }

  if ([(NSString *)self->_inputText isEqualToString:fragmentCopy])
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
    v39 = fragmentCopy;
    v13 = "SearchDataProvider - Not showing results due to text mismatch. input text: %@, query: %@";
    goto LABEL_18;
  }

LABEL_26:

LABEL_27:
}

- (void)receivedSearchResults:(id)results forContext:(id)context
{
  resultsCopy = results;
  contextCopy = context;
  inputText = self->_inputText;
  queryString = [contextCopy queryString];
  LODWORD(inputText) = [(NSString *)inputText isEqualToString:queryString];

  if (inputText)
  {
    [(AutocompleteContext *)self->_autocompleteContext setDelegate:0];
    objc_storeStrong(&self->_autocompleteContext, context);
    [(AutocompleteContext *)self->_autocompleteContext setDelegate:self];
    [(AutocompleteItemManager *)self->_deduplicator setAutocompleteContext:self->_autocompleteContext];
    [(SearchDataProvider *)self setFinishedLocalCompletions:1];
    [(SearchDataProvider *)self setLocalCompletionsItemSource:resultsCopy];
    [(SearchDataProvider *)self updateDeduper];
  }
}

- (BOOL)shouldShowRapCellWithResultsCount:(unint64_t)count
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
        if (!count)
        {
          LOBYTE(IsEnabled_RAPSydney) = 0;
        }
      }
    }
  }

  return IsEnabled_RAPSydney;
}

- (void)ensureTraitsHaveDefaultValues:(id)values
{
  valuesCopy = values;
  if (![valuesCopy supportedAutocompleteResultCellTypesCount])
  {
    [valuesCopy addSupportedAutocompleteResultCellType:0];
    [valuesCopy addSupportedAutocompleteResultCellType:3];
  }

  v4 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v5 = [v4 updatedTraitsForCurrentGarageState:valuesCopy];
}

- (void)setLocalCompletionsItemSource:(id)source
{
  sourceCopy = source;
  localCompletionsItemSource = self->_localCompletionsItemSource;
  v7 = sourceCopy;
  if (localCompletionsItemSource != sourceCopy)
  {
    if (localCompletionsItemSource)
    {
      [(PersonalizedItemManager *)self->_deduplicator removeItemSource:?];
    }

    objc_storeStrong(&self->_localCompletionsItemSource, source);
    if (self->_localCompletionsItemSource)
    {
      [(PersonalizedItemManager *)self->_deduplicator addItemSource:?];
    }
  }
}

- (void)setServerCompletionsItemSource:(id)source
{
  sourceCopy = source;
  serverCompletionsItemSource = self->_serverCompletionsItemSource;
  v7 = sourceCopy;
  if (serverCompletionsItemSource != sourceCopy)
  {
    if (serverCompletionsItemSource)
    {
      [(PersonalizedItemManager *)self->_deduplicator removeItemSource:?];
    }

    objc_storeStrong(&self->_serverCompletionsItemSource, source);
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

- (void)updateAnalyticsStateWithContext:(id)context suggestionEntries:(id)entries
{
  entriesCopy = entries;
  contextCopy = context;
  queryString = [contextCopy queryString];
  v8 = queryString;
  v9 = &stru_1016631F0;
  if (queryString)
  {
    v9 = queryString;
  }

  v10 = v9;

  query = [contextCopy query];

  queryTerms = [query queryTerms];
  v13 = queryTerms;
  if (queryTerms)
  {
    v14 = queryTerms;
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  v15 = v14;

  if (entriesCopy)
  {
    v16 = entriesCopy;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  [(MKAutocompleteAnalyticsProvider *)self->_autocompleteAnalyticsState updateStateWithQuery:v10 queryTokens:v15 visibleSuggestionEntries:v16];
}

- (void)setInputText:(id)text tappedQuerySuggestionCompletion:(id)completion isRetainQuery:(BOOL)query traits:(id)traits source:(int)source
{
  v7 = *&source;
  textCopy = text;
  completionCopy = completion;
  traitsCopy = traits;
  if (self->_inputText == textCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v15 = [(NSString *)textCopy isEqualToString:?];
    if (!completionCopy && (v15 & 1) != 0)
    {
      goto LABEL_37;
    }
  }

  v16 = sub_100067540();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v30 = 138412290;
    v31 = textCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "SearchDataProvider starting collecting data for query %@", &v30, 0xCu);
  }

  self->_inputTextTimestamp = CFAbsoluteTimeGetCurrent();
  [(PersonalizedItemManager *)self->_deduplicator setUpdatesPaused:1];
  self->_lastRequestIsRetainQuery = query;
  [(SearchDataProvider *)self setFinishedLocalCompletions:0];
  [(SearchDataProvider *)self setFinishedServerCompletions:0];
  [(SearchBarSearchManager *)self->_localSearchManager cancelCurrentSearch];
  v17 = [(NSString *)textCopy copy];
  inputText = self->_inputText;
  self->_inputText = v17;

  _maps_stringByTrimmingLeadingWhitespace = [(NSString *)self->_inputText _maps_stringByTrimmingLeadingWhitespace];
  if (![_maps_stringByTrimmingLeadingWhitespace length])
  {

    _maps_stringByTrimmingLeadingWhitespace = 0;
  }

  objc_storeStrong(&self->_trimmedInputText, _maps_stringByTrimmingLeadingWhitespace);
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
  [(SearchDataProvider *)self ensureTraitsHaveDefaultValues:traitsCopy];
  objc_storeStrong(&self->_traits, traits);
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
    [(MKLocalSearchCompleter *)self->_searchCompleter _setTappedQuerySuggestionCompletion:completionCopy];
    if ([traitsCopy hasMapRegion])
    {
      mapRegion = [traitsCopy mapRegion];
      GEOMapRectForMapRegion();
      v33 = MKCoordinateRegionForMapRect(v32);
      [(MKLocalSearchCompleter *)self->_searchCompleter setRegion:v33.center.latitude, v33.center.longitude, v33.span.latitudeDelta, v33.span.longitudeDelta];
    }

    if ([traitsCopy hasMode])
    {
      v26 = [traitsCopy mode] - 1;
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

    if ([traitsCopy hasTimeSinceMapViewportChanged])
    {
      -[MKLocalSearchCompleter setTimeSinceLastInBoundingRegion:](self->_searchCompleter, "setTimeSinceLastInBoundingRegion:", [traitsCopy timeSinceMapViewportChanged]);
    }

    if ([traitsCopy hasSequenceNumber])
    {
      self->_searchRequestAnalyticsSequenceNumber = [traitsCopy sequenceNumber];
    }

    [(MKLocalSearchCompleter *)self->_searchCompleter setTraits:traitsCopy];
    if ([traitsCopy autocompleteOriginationEditingServerWaypoints])
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

      -[SearchBarSearchManager searchName:forSearchMode:backfill:context:originationType:](self->_localSearchManager, "searchName:forSearchMode:backfill:context:originationType:", self->_inputText, self->_searchMode, GEOConfigGetInteger(), self->_autocompleteInputContext, [traitsCopy autocompleteOriginationType]);
    }

    [(SearchDataProvider *)self updateDeduper];
  }

  else
  {
    captureNewMetrics = [(MKAutocompleteAnalyticsProvider *)self->_autocompleteAnalyticsState captureNewMetrics];
    [captureNewMetrics submitWithStatus:4];
  }

LABEL_37:
}

- (void)setFinishedServerCompletions:(BOOL)completions
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

  self->_finishedServerCompletions = completions;
  [(SearchDataProvider *)self incrementAutocompleteChangeCounter];
}

- (void)setFinishedLocalCompletions:(BOOL)completions
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

  self->_finishedLocalCompletions = completions;
  [(SearchDataProvider *)self incrementAutocompleteChangeCounter];
}

- (void)setLastTicket:(id)ticket
{
  ticketCopy = ticket;
  v7 = ticketCopy;
  if (self->_lastTicket != ticketCopy)
  {
    objc_storeStrong(&self->_lastTicket, ticket);
    ticketCopy = v7;
  }

  if (ticketCopy)
  {
    [(GEOMapServiceCompletionTicket *)ticketCopy retainSearchTime];
    ticketCopy = v7;
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
  delegate = [(SearchDataProvider *)self delegate];
  [delegate searchDataProviderDidUpdate:self];

  [(SearchDataProvider *)self updateAnalyticsStateWithContext:0 suggestionEntries:&__NSArray0__struct];
}

- (void)autocompleteContext:(id)context didUpdateMatchInfo:(id)info
{
  if (self->_autocompleteContext == context)
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

- (id)autocompleteAnalyticsSuggestionsFromSections:(id)sections context:(id)context selectedChildItemIndexPath:(id)path indexOfResultWithSelectedChildItem:(id)item
{
  v8 = &__NSArray0__struct;
  if (sections && context)
  {
    LOWORD(v10) = 1;
    v8 = [MapsAnalyticsHelper acSuggestionEntriesFromSections:"acSuggestionEntriesFromSections:personalizedItems:context:mapsSuggestionsInsights:skipReportASearchItems:selectedChildItemIndexPath:indexOfResultWithSelectedChildItem:traits:usedForLogging:shouldUseDistanceFeatureServerResults:placeSummaryMetadata:" personalizedItems:item context:self->_traits mapsSuggestionsInsights:v10 skipReportASearchItems:self->_placeSummaryMetadata selectedChildItemIndexPath:? indexOfResultWithSelectedChildItem:? traits:? usedForLogging:? shouldUseDistanceFeatureServerResults:? placeSummaryMetadata:?];
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
    buildContent = [(SearchDataProvider *)self buildContent];
    sections = self->_sections;
    self->_sections = buildContent;

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

    queryString = [(AutocompleteContext *)self->_autocompleteContext queryString];
    query = [(AutocompleteContext *)self->_autocompleteContext query];
    queryTerms = [query queryTerms];
    autocompleteAnalyticsSuggestions = self->_autocompleteAnalyticsSuggestions;
    v12 = [NSNumber numberWithBool:[(AutocompleteItemManager *)self->_deduplicator clientRankingScoreInfluencedResults]];
    v13 = [NSNumber numberWithBool:self->_lastRequestIsRetainQuery];
    [GEOAPPortal captureClientACResponseWithQuery:queryString queryTokens:queryTerms entries:autocompleteAnalyticsSuggestions shouldDifferentiateClientAndServerResults:v6 overallLatencyInMs:v7 isRerankerTriggered:v12 isRetainedQuery:v13];

    v14 = sub_100067540();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      queryString2 = [(AutocompleteContext *)self->_autocompleteContext queryString];
      *buf = 138412290;
      v25 = queryString2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "SearchDataProvider - Notify SearchDataSource of updated AC list for query %@", buf, 0xCu);
    }

    delegate = [(SearchDataProvider *)self delegate];
    [delegate searchDataProviderDidUpdate:self];

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
    localCompletionsItemSource = [(SearchDataProvider *)self localCompletionsItemSource];
    v4 = [localCompletionsItemSource count] != 0;

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
  selfCopy = self;
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
        items = [v8 items];
        v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items count]);

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        items2 = [v8 items];
        v12 = [items2 countByEnumeratingWithState:&v28 objects:v37 count:16];
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
                objc_enumerationMutation(items2);
              }

              if (*(*(&v28 + 1) + 8 * j))
              {
                [v10 addObject:?];
                ++v5;
              }
            }

            v13 = [items2 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v13);
        }

        if ([v10 count])
        {
          title = [v8 title];
          v17 = [v10 copy];
          v18 = +[AutocompleteSection sectionWithTitle:items:isQuerySuggestionsSection:](AutocompleteSection, "sectionWithTitle:items:isQuerySuggestionsSection:", title, v17, [v8 isQuerySuggestionsSection]);
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

  if ([(SearchDataProvider *)selfCopy shouldShowRapCellWithResultsCount:v5])
  {
    v19 = [ReportASearchAutocompleteResult alloc];
    queryString = [(AutocompleteContext *)selfCopy->_autocompleteContext queryString];
    v21 = [(ReportASearchAutocompleteResult *)v19 initWithTitle:queryString];
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
        items = [v6 items];
        v8 = [items countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(items);
              }

              v12 = *(*(&v22 + 1) + 8 * i);
              autocompleteObject = [v12 autocompleteObject];
              if (autocompleteObject)
              {
                matchInfo = [v12 matchInfo];
                v15 = [matchInfo copy];

                [v15 setShownToUser:0];
                if (v4)
                {
                  _priorityFunction = [(PersonalizedItemManager *)self->_deduplicator _priorityFunction];

                  if (_priorityFunction)
                  {
                    _priorityFunction2 = [(PersonalizedItemManager *)self->_deduplicator _priorityFunction];
                    [v15 setSortPriorityDebug:{objc_msgSend(_priorityFunction2, "priorityForPersonalizedAutocompleteItem:", v12)}];
                  }
                }

                if (v15)
                {
                  [(AutocompleteContext *)self->_autocompleteContext setMatchInfo:v15 forObject:autocompleteObject];
                }
              }
            }

            v9 = [items countByEnumeratingWithState:&v22 objects:v30 count:16];
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

        items = [*(*(&v9 + 1) + 8 * i) items];
        v7 = [items count];

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

- (void)setUserLocationSearchResult:(id)result
{
  resultCopy = result;
  if (self->_userLocationSearchResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_userLocationSearchResult, result);
    [(SearchDataProvider *)self _dataChanged];
    resultCopy = v6;
  }
}

- (void)setMapPersonalizedItems:(id)items
{
  itemsCopy = items;
  if (self->_mapPersonalizedItems != itemsCopy)
  {
    v6 = itemsCopy;
    objc_storeStrong(&self->_mapPersonalizedItems, items);
    [(PersonalizedItemAutocompleteFilter *)self->_personalizedItemsFilter setInputItems:self->_mapPersonalizedItems];
    itemsCopy = v6;
  }
}

- (void)setActive:(BOOL)active
{
  self->_active = active;
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

- (void)setResultTypes:(unint64_t)types
{
  if (self->_resultTypes != types)
  {
    self->_resultTypes = types;
    [(MKLocalSearchCompleter *)self->_searchCompleter setResultTypes:?];
  }
}

- (void)setSearchMode:(unsigned int)mode
{
  if (self->_searchMode != mode)
  {
    self->_searchMode = mode;
    [(PersonalizedItemAutocompleteFilter *)self->_personalizedItemsFilter setHasItemsWhenSearchStringIsEmpty:mode == 2];
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