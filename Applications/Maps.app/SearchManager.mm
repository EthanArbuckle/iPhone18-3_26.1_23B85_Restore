@interface SearchManager
- (BOOL)_shouldEnableRAPForNoResultsWithError:(id)error;
- (SearchManagerDelegate)delegate;
- (id)closestSearchResultOfType:(unsigned int)type fromSearchResults:(id)results;
- (id)correctedSearchResultsFrom:(id)from;
- (id)orderedSearchResults:(id)results itemsToFrame:(id)frame;
- (void)_forwardGeocodeAddress:(id)address addressString:(id)string addressBookAddress:(id)bookAddress label:(id)label defaultSearchResultType:(unsigned int)type traits:(id)traits source:(int)source;
- (void)_handleGeocoderError:(id)error;
- (void)_resolveRefinementForSearch:(id)search atIndex:(unint64_t)index;
- (void)_searchCanceled;
- (void)_searchFailedWithError:(id)error;
- (void)_searchFailedWithError:(id)error ticket:(id)ticket enableStructuredRAPAffordance:(BOOL)affordance;
- (void)_searchForAddress:(id)address completedQuery:(id)query traits:(id)traits source:(int)source;
- (void)_searchForAutocompletePerson:(id)person traits:(id)traits source:(int)source;
- (void)_searchForBookmarkSearchResult:(id)result origin:(int64_t)origin;
- (void)_searchForCategory:(id)category traits:(id)traits defaultSearchResultType:(unsigned int)type source:(int)source maxResults:(unsigned int)results;
- (void)_searchForChildPlace:(id)place traits:(id)traits source:(int)source;
- (void)_searchForCompletion:(id)completion traits:(id)traits source:(int)source;
- (void)_searchForContactAddressedForAutocompletePerson:(id)person searchResults:(id)results traits:(id)traits source:(int)source;
- (void)_searchForExternalURLQuery:(id)query coordinate:(CLLocationCoordinate2D)coordinate muid:(unint64_t)muid resultProviderId:(int)id contentProvider:(id)provider traits:(id)traits source:(int)source;
- (void)_searchForHistoryItem:(id)item completedQuery:(id)query traits:(id)traits source:(int)source isRedoOrAutoRedoSearch:(BOOL)search;
- (void)_searchForMapKitHandle:(id)handle traits:(id)traits source:(int)source;
- (void)_searchForPlaceCategoryItem:(id)item traits:(id)traits source:(int)source;
- (void)_searchForSearchInfo:(id)info completedQuery:(id)query;
- (void)_searchForSearchResults:(id)results completedQuery:(id)query;
- (void)_searchForString:(id)string traits:(id)traits defaultSearchResultType:(unsigned int)type completedQuery:(id)query retainedSearchMetadata:(id)metadata source:(int)source;
- (void)_searchForSuggestion:(id)suggestion traits:(id)traits source:(int)source;
- (void)_searchForVenueCategoryItem:(id)item traits:(id)traits source:(int)source;
- (void)_searchReceivedResults:(id)results;
- (void)_submitCategorySearchTicket:(id)ticket defaultSearchResultType:(unsigned int)type origin:(int64_t)origin;
- (void)_submitSearchTicket:(id)ticket defaultSearchResultType:(unsigned int)type saveToHistory:(BOOL)history origin:(int64_t)origin completionTitle:(id)title;
- (void)_submitTicket:(id)ticket defaultSearchResultType:(unsigned int)type origin:(int64_t)origin;
- (void)_submitTicketForSearchForCategory:(id)category searchQuery:(id)query completionItem:(id)item traits:(id)traits defaultSearchResultType:(unsigned int)type source:(int)source maxResults:(unsigned int)results;
- (void)cancelSearch;
- (void)dealloc;
- (void)reset;
- (void)searchForSearchFieldItem:(id)item traits:(id)traits source:(int)source isRedoOrAutoRedoSearch:(BOOL)search searchSessionData:(id)data;
@end

@implementation SearchManager

- (SearchManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldEnableRAPForNoResultsWithError:(id)error
{
  userInfo = [error userInfo];
  v4 = [userInfo objectForKeyedSubscript:GEOErrorShouldEnableRAPForNoResultsKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_searchReceivedResults:(id)results
{
  resultsCopy = results;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    results = [resultsCopy results];
    v11 = 138412546;
    v12 = results;
    v13 = 2112;
    v14 = resultsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Search received %@: Search Info: %@", &v11, 0x16u);
  }

  searchFieldItem = [(SearchManager *)self searchFieldItem];
  [resultsCopy setSearchFieldItem:searchFieldItem];

  activeTraits = [(SearchManager *)self activeTraits];
  [resultsCopy setSearchAlongRoute:{objc_msgSend(activeTraits, "navigating")}];

  delegate = [(SearchManager *)self delegate];
  searchSessionData = [resultsCopy searchSessionData];
  [delegate searchManager:self didReceiveSearchInfo:resultsCopy searchSessionData:searchSessionData error:0];

  [(SearchManager *)self setActiveSearchTicket:0];
}

- (void)_searchCanceled
{
  [(SearchManager *)self setActiveSearchTicket:0];
  delegate = [(SearchManager *)self delegate];
  [delegate searchManager:self didReceiveSearchInfo:0 searchSessionData:0 error:0];
}

- (void)_searchFailedWithError:(id)error ticket:(id)ticket enableStructuredRAPAffordance:(BOOL)affordance
{
  IsEnabled_RAPSydney = affordance;
  ticketCopy = ticket;
  errorCopy = error;
  [(SearchManager *)self setActiveSearchTicket:0];
  if (IsEnabled_RAPSydney)
  {
    if (_MKRAPIsAvailable() && (sub_1007413D0() & 1) == 0)
    {
      IsEnabled_RAPSydney = MapsFeature_IsEnabled_RAPSydney();
    }

    else
    {
      IsEnabled_RAPSydney = 0;
    }
  }

  searchAutoRedoThreshold = [ticketCopy searchAutoRedoThreshold];
  if (searchAutoRedoThreshold)
  {
    v10 = 1;
  }

  else
  {
    searchRedoButtonThreshold = [ticketCopy searchRedoButtonThreshold];
    v10 = searchRedoButtonThreshold != 0;
  }

  resultRefinementGroup = [ticketCopy resultRefinementGroup];
  if ((resultRefinementGroup != 0) | IsEnabled_RAPSydney & 1 || v10)
  {
    v13 = [SearchInfo searchInfoWithResults:&__NSArray0__struct ticket:ticketCopy];
  }

  else
  {
    v13 = 0;
  }

  resultRefinementGroup2 = [ticketCopy resultRefinementGroup];
  [v13 setResultRefinementGroup:resultRefinementGroup2];

  [v13 setEnableStructuredRAPAffordance:IsEnabled_RAPSydney];
  delegate = [(SearchManager *)self delegate];
  searchSessionData = [v13 searchSessionData];
  [delegate searchManager:self didReceiveSearchInfo:v13 searchSessionData:searchSessionData error:errorCopy];
}

- (void)_searchFailedWithError:(id)error
{
  errorCopy = error;
  [(SearchManager *)self _searchFailedWithError:errorCopy ticket:0 enableStructuredRAPAffordance:[(SearchManager *)self _shouldEnableRAPForNoResultsWithError:errorCopy]];
}

- (void)_handleGeocoderError:(id)error
{
  errorCopy = error;
  delegate = [(SearchManager *)self delegate];
  [delegate searchManager:self didReceiveSearchInfo:0 searchSessionData:0 error:errorCopy];
}

- (void)cancelSearch
{
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    activeSearchTicket = [(SearchManager *)self activeSearchTicket];
    v6 = 138412290;
    v7 = activeSearchTicket;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Search is being cancelled, ticket %@:", &v6, 0xCu);
  }

  activeSearchTicket2 = [(SearchManager *)self activeSearchTicket];
  [activeSearchTicket2 cancel];
}

- (void)_searchForBookmarkSearchResult:(id)result origin:(int64_t)origin
{
  resultCopy = result;
  if ([resultCopy originalType] == 3)
  {
    v21 = resultCopy;
    v6 = [NSArray arrayWithObjects:&v21 count:1];
    [(SearchManager *)self _searchForSearchResults:v6 completedQuery:0];
  }

  else
  {
    [(SearchManager *)self reset];
    [(SearchManager *)self setActiveSearchTicket:0];
    delegate = [(SearchManager *)self delegate];
    searchFieldItem = [(SearchManager *)self searchFieldItem];
    [delegate searchManager:self willProcessSearchFieldItem:searchFieldItem];

    v6 = +[MKMapService sharedService];
    defaultTraits = [v6 defaultTraits];
    [defaultTraits setSource:17];
    mapItem = [resultCopy mapItem];
    v11 = [v6 ticketForMapItemToRefine:mapItem traits:defaultTraits];

    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = sub_1005EC4D0;
    v19[4] = sub_1005EC4E0;
    v20 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1005EC4E8;
    v18[3] = &unk_10165F5C8;
    v18[4] = v19;
    v12 = objc_retainBlock(v18);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1005EC584;
    v14[3] = &unk_101623960;
    v15 = resultCopy;
    v13 = v11;
    v16 = v13;
    selfCopy = self;
    [v13 submitWithRefinedHandler:v14 networkActivity:v12];

    _Block_object_dispose(v19, 8);
  }
}

- (void)_resolveRefinementForSearch:(id)search atIndex:(unint64_t)index
{
  v5 = [SearchInfo searchInfoWithSearchInfo:search refinedIndex:index];
  if (v5)
  {
    [(SearchManager *)self reset];
    [(SearchManager *)self _searchReceivedResults:v5];
  }

  else
  {
    [(SearchManager *)self _searchFailedWithError:0];
  }
}

- (void)_searchForHistoryItem:(id)item completedQuery:(id)query traits:(id)traits source:(int)source isRedoOrAutoRedoSearch:(BOOL)search
{
  v8 = *&source;
  itemCopy = item;
  queryCopy = query;
  traitsCopy = traits;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  objc_opt_class();
  v15 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  historyEntry = [v17 historyEntry];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1005ECB68;
  v42[3] = &unk_1016238D0;
  v45 = &v48;
  v46 = v8;
  searchCopy = search;
  v43 = traitsCopy;
  selfCopy = self;
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_1005ECC24;
  v36 = &unk_101623918;
  v40 = &v48;
  selfCopy2 = self;
  v19 = v43;
  v38 = v19;
  v41 = v8;
  v20 = queryCopy;
  v39 = v20;
  [historyEntry ifSearch:v42 ifRoute:&stru_1016238F0 ifPlaceDisplay:&v33 ifTransitLineItem:&stru_101623938];

  objc_opt_class();
  v21 = v15;
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  if (v23)
  {
    *(v49 + 24) = 1;
    searchResult = [v23 searchResult];
    v52 = searchResult;
    v25 = [NSArray arrayWithObjects:&v52 count:1];
    [(SearchManager *)self _searchForSearchResults:v25 completedQuery:v20];
  }

  objc_opt_class();
  v26 = v21;
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  if (v28)
  {
    *(v49 + 24) = 1;
    [(SearchManager *)self _searchForAddress:v28 completedQuery:v20 traits:v19 source:v8];
  }

  objc_opt_class();
  v29 = v26;
  if (objc_opt_isKindOfClass())
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  if (v31)
  {
    *(v49 + 24) = 1;
    address = [v31 address];
    [(SearchManager *)self _searchForAddressString:address label:0 defaultSearchResultType:0 traits:v19 source:v8];
  }

  _Block_object_dispose(&v48, 8);
}

- (void)_searchForSearchResults:(id)results completedQuery:(id)query
{
  queryCopy = query;
  v7 = [SearchInfo searchInfoWithResults:results];
  [(SearchManager *)self _searchForSearchInfo:v7 completedQuery:queryCopy];
}

- (void)_searchForSearchInfo:(id)info completedQuery:(id)query
{
  infoCopy = info;
  queryCopy = query;
  v8 = queryCopy;
  if (!queryCopy)
  {
    selectedResult = [infoCopy selectedResult];
    v10 = selectedResult;
    if (selectedResult)
    {
      firstObject = selectedResult;
    }

    else
    {
      results = [infoCopy results];
      firstObject = [results firstObject];
    }

    title = [firstObject title];

    if (title)
    {
      [firstObject title];
    }

    else
    {
      [firstObject singleLineAddress];
    }
    v8 = ;
  }

  if (([infoCopy shouldPreserveResults] & 1) == 0)
  {
    [(SearchManager *)self reset];
    [(SearchManager *)self setActiveSearchTicket:0];
    delegate = [(SearchManager *)self delegate];
    searchFieldItem = [(SearchManager *)self searchFieldItem];
    [delegate searchManager:self willProcessSearchFieldItem:searchFieldItem];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1005ED02C;
  v17[3] = &unk_101661A90;
  v17[4] = self;
  v18 = infoCopy;
  v16 = infoCopy;
  dispatch_async(&_dispatch_main_q, v17);
}

- (void)_searchForAddress:(id)address completedQuery:(id)query traits:(id)traits source:(int)source
{
  traitsCopy = traits;
  addressCopy = address;
  contact = [addressCopy contact];
  _maps_mapsData = [contact _maps_mapsData];

  delegate = [(SearchManager *)self delegate];
  searchFieldItem = [(SearchManager *)self searchFieldItem];
  [delegate searchManager:self willProcessSearchFieldItem:searchFieldItem];

  if (_maps_mapsData)
  {
    contact2 = [addressCopy contact];
    _maps_mapsData2 = [contact2 _maps_mapsData];
    compositeName = [addressCopy compositeName];

    v17 = [MKMapItem ticketForMapsDataString:_maps_mapsData2 name:compositeName];

    [(SearchManager *)self _submitSearchTicket:v17 defaultSearchResultType:0 saveToHistory:0 origin:0];
  }

  else
  {
    v17 = [[GEOAddress alloc] initWithAddressBookAddress:addressCopy];
    LODWORD(v18) = source;
    [(SearchManager *)self _forwardGeocodeAddress:v17 addressString:0 addressBookAddress:addressCopy label:0 defaultSearchResultType:0 traits:traitsCopy source:v18];
  }
}

- (void)_forwardGeocodeAddress:(id)address addressString:(id)string addressBookAddress:(id)bookAddress label:(id)label defaultSearchResultType:(unsigned int)type traits:(id)traits source:(int)source
{
  addressCopy = address;
  stringCopy = string;
  bookAddressCopy = bookAddress;
  labelCopy = label;
  traitsCopy = traits;
  [(SearchManager *)self reset];
  delegate = [(SearchManager *)self delegate];
  searchFieldItem = [(SearchManager *)self searchFieldItem];
  [delegate searchManager:self willProcessSearchFieldItem:searchFieldItem];

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_1005EC4D0;
  v54 = sub_1005EC4E0;
  v55 = 0;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1005ED694;
  v44[3] = &unk_101623880;
  v47 = &v50;
  v48 = a2;
  v44[4] = self;
  v22 = bookAddressCopy;
  v45 = v22;
  typeCopy = type;
  v23 = labelCopy;
  v46 = v23;
  v24 = objc_retainBlock(v44);
  [traitsCopy setSource:source];
  if (!v22 || ![v22 isValid] || !objc_msgSend(v22, "isMeCard"))
  {
    if (addressCopy)
    {
      v29 = +[MKMapService sharedService];
      v30 = [v29 ticketForForwardGeocodeAddress:addressCopy traits:traitsCopy];
    }

    else
    {
      if (!stringCopy || ![stringCopy length])
      {
        goto LABEL_9;
      }

      v29 = +[MKMapService sharedService];
      v30 = [v29 ticketForForwardGeocodeString:stringCopy traits:traitsCopy];
    }

    v31 = v51[5];
    v51[5] = v30;

LABEL_9:
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = sub_1005EC4D0;
    v37[4] = sub_1005EC4E0;
    v38 = 0;
    v32 = v51[5];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1005ED93C;
    v36[3] = &unk_10165F5C8;
    v36[4] = v37;
    [v32 submitWithRefinedHandler:v24 networkActivity:v36];
    _Block_object_dispose(v37, 8);

    goto LABEL_10;
  }

  v33 = addressCopy;
  v34 = +[AddressBookManager sharedManager];
  addressValue = [v22 addressValue];
  identifier = [addressValue identifier];
  v27 = [v34 addressForIdentifier:identifier];

  if (v27)
  {
    v28 = v27;

    v22 = v28;
  }

  else
  {
    v27 = 0;
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1005ED7FC;
  v39[3] = &unk_1016238A8;
  v41 = &v50;
  v42 = a2;
  v39[4] = self;
  typeCopy2 = type;
  v22 = v22;
  v40 = v22;
  [v22 forwardGeocodeAddress:v39];

  addressCopy = v33;
LABEL_10:

  _Block_object_dispose(&v50, 8);
}

- (void)_searchForMapKitHandle:(id)handle traits:(id)traits source:(int)source
{
  v5 = *&source;
  handleCopy = handle;
  [traits setSource:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005EDB1C;
  v9[3] = &unk_101630438;
  v9[4] = self;
  [MKMapItem _mapItemFromHandle:handleCopy completionHandler:v9];
}

- (void)_searchForChildPlace:(id)place traits:(id)traits source:(int)source
{
  v5 = *&source;
  traitsCopy = traits;
  placeCopy = place;
  [traitsCopy setSource:v5];
  v10 = +[MKMapService sharedService];
  v11 = [v10 ticketForChildPlace:placeCopy traits:traitsCopy];

  [(SearchManager *)self _submitTicket:v11 defaultSearchResultType:0 origin:((v5 - 6) & 0xFFFFFFF9) == 0];
}

- (void)_searchForExternalURLQuery:(id)query coordinate:(CLLocationCoordinate2D)coordinate muid:(unint64_t)muid resultProviderId:(int)id contentProvider:(id)provider traits:(id)traits source:(int)source
{
  v9 = *&source;
  v11 = *&id;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  traitsCopy = traits;
  providerCopy = provider;
  queryCopy = query;
  v20 = +[MKMapService sharedService];
  v21 = [[MKMapItemIdentifier alloc] initWithMUID:muid resultProviderID:v11 coordinate:{latitude, longitude}];
  v22 = [v20 ticketForURLQuery:queryCopy identifier:v21 resultProviderId:v11 contentProvider:providerCopy traits:traitsCopy source:v9];

  LODWORD(v9) = [traitsCopy navigating];
  [(SearchManager *)self _submitSearchTicket:v22 defaultSearchResultType:0 saveToHistory:v9 ^ 1 origin:0];
}

- (void)_searchForCompletion:(id)completion traits:(id)traits source:(int)source
{
  v5 = *&source;
  traitsCopy = traits;
  completionCopy = completion;
  [traitsCopy setSource:v5];
  v10 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v16 = [v10 updatedTraitsForCurrentGarageState:traitsCopy];

  v11 = +[MKMapService sharedService];
  queryLine = [completionCopy queryLine];
  geoCompletionItem = [completionCopy geoCompletionItem];
  v14 = [v11 ticketForSearchQuery:queryLine completionItem:geoCompletionItem traits:v16 searchSessionData:self->_searchSessionData];

  LODWORD(v11) = [v16 navigating];
  title = [completionCopy title];

  [(SearchManager *)self _submitSearchTicket:v14 defaultSearchResultType:0 saveToHistory:v11 ^ 1 origin:((v5 - 6) & 0xFFFFFFF9) == 0 completionTitle:title];
}

- (void)_searchForPlaceCategoryItem:(id)item traits:(id)traits source:(int)source
{
  traitsCopy = traits;
  itemCopy = item;
  v10 = +[MKMapService sharedService];
  searchCategory = [itemCopy searchCategory];
  parentMuid = [itemCopy parentMuid];

  v13 = [v10 ticketForPlaceLookupWithSearchCategory:searchCategory parentMuid:parentMuid traits:traitsCopy];

  [(SearchManager *)self _submitCategorySearchTicket:v13 defaultSearchResultType:0 origin:((source - 6) & 0xFFFFFFF9) == 0];
}

- (void)_searchForVenueCategoryItem:(id)item traits:(id)traits source:(int)source
{
  traitsCopy = traits;
  itemCopy = item;
  v10 = +[MKMapService sharedService];
  searchCategory = [itemCopy searchCategory];
  venueIdentifier = [itemCopy venueIdentifier];

  v13 = [v10 ticketForSearchCategory:searchCategory venueIdentifier:venueIdentifier maxResults:+[MKMapService venuesCategorySearchMaxResults](MKMapService traits:{"venuesCategorySearchMaxResults"), traitsCopy}];

  [(SearchManager *)self _submitCategorySearchTicket:v13 defaultSearchResultType:0 origin:((source - 6) & 0xFFFFFFF9) == 0];
}

- (void)_submitTicketForSearchForCategory:(id)category searchQuery:(id)query completionItem:(id)item traits:(id)traits defaultSearchResultType:(unsigned int)type source:(int)source maxResults:(unsigned int)results
{
  v9 = *&source;
  queryCopy = query;
  itemCopy = item;
  traitsCopy = traits;
  categoryCopy = category;
  if ([traitsCopy navigating])
  {
    v17 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
    v33 = [v17 updatedTraitsForCurrentGarageState:traitsCopy];

    v18 = [NavigationRouteHistoryInfoProvider alloc];
    v19 = +[MNNavigationService sharedService];
    v20 = [(NavigationRouteHistoryInfoProvider *)v18 initWithNavigationService:v19];

    [v33 setSource:v9];
    v30 = +[MKMapService sharedService];
    geoCompletionItem = [itemCopy geoCompletionItem];
    originalWaypointRouteRepresentation = [(NavigationRouteHistoryInfoProvider *)v20 originalWaypointRouteRepresentation];
    legacyRouteRepresentation = [(NavigationRouteHistoryInfoProvider *)v20 legacyRouteRepresentation];
    [(NavigationRouteHistoryInfoProvider *)v20 sessionState];
    v32 = v9;
    v24 = v9 = self;
    [(NavigationRouteHistoryInfoProvider *)v20 routeId];
    v25 = v31 = itemCopy;
    routeAttributes = [(NavigationRouteHistoryInfoProvider *)v20 routeAttributes];
    LODWORD(v29) = +[MKMapService searchMaxResults];
    v27 = legacyRouteRepresentation;
    v28 = [v30 ticketForSearchAlongRouteWithCategory:categoryCopy searchQuery:queryCopy completionItem:geoCompletionItem originalWaypointRouteData:originalWaypointRouteRepresentation zilchData:legacyRouteRepresentation sessionState:v24 routeId:v25 routeAttributes:routeAttributes maxResults:v29 traits:v33 searchSessionData:v9->_searchSessionData];

    itemCopy = v31;
    self = v9;
    LODWORD(v9) = v32;

    categoryCopy = v30;
    traitsCopy = v33;
  }

  else
  {
    v20 = +[MKMapService sharedService];
    v28 = [(NavigationRouteHistoryInfoProvider *)v20 ticketForCategory:categoryCopy maxResults:results traits:traitsCopy searchSessionData:self->_searchSessionData];
  }

  [(SearchManager *)self _submitCategorySearchTicket:v28 defaultSearchResultType:0 origin:((v9 - 6) & 0xFFFFFFF9) == 0];
}

- (void)_searchForCategory:(id)category traits:(id)traits defaultSearchResultType:(unsigned int)type source:(int)source maxResults:(unsigned int)results
{
  v8 = *&source;
  v9 = *&type;
  traitsCopy = traits;
  categoryCopy = category;
  [(SearchManager *)self reset];
  [traitsCopy setSource:v8];
  searchOriginationType = [traitsCopy searchOriginationType];
  if (searchOriginationType <= 3)
  {
    v15 = 1u >> (searchOriginationType & 0xF);
    [traitsCopy setSupportDirectionIntentSearch:v15];
    [traitsCopy setSupportUnresolvedDirectionIntent:v15];
    [traitsCopy setSupportStructuredRapAffordance:v15];
  }

  v16 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v18 = [v16 updatedTraitsForCurrentGarageState:traitsCopy];

  LODWORD(v17) = results;
  [(SearchManager *)self _submitTicketForSearchForCategory:categoryCopy searchQuery:0 completionItem:0 traits:v18 defaultSearchResultType:v9 source:v8 maxResults:v17];
}

- (void)_searchForSuggestion:(id)suggestion traits:(id)traits source:(int)source
{
  v5 = *&source;
  traitsCopy = traits;
  suggestionCopy = suggestion;
  [(SearchManager *)self reset];
  [traitsCopy setSource:v5];
  v10 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v13 = [v10 updatedTraitsForCurrentGarageState:traitsCopy];

  v11 = +[MKMapService sharedService];
  v12 = [v11 ticketForSearchQuery:&stru_1016631F0 completionItem:0 relatedSearchSuggestion:suggestionCopy maxResults:+[MKMapService searchMaxResults](MKMapService traits:"searchMaxResults") searchSessionData:{v13, self->_searchSessionData}];

  [(SearchManager *)self _submitCategorySearchTicket:v12 defaultSearchResultType:0 origin:((v5 - 6) & 0xFFFFFFF9) == 0];
}

- (void)_searchForString:(id)string traits:(id)traits defaultSearchResultType:(unsigned int)type completedQuery:(id)query retainedSearchMetadata:(id)metadata source:(int)source
{
  v8 = *&source;
  traitsCopy = traits;
  metadataCopy = metadata;
  stringCopy = string;
  [traitsCopy setSource:v8];
  navigating = [traitsCopy navigating];
  searchOriginationType = [traitsCopy searchOriginationType];
  if (searchOriginationType <= 3)
  {
    v17 = 1u >> (searchOriginationType & 0xF);
    [traitsCopy setSupportDirectionIntentSearch:v17];
    [traitsCopy setSupportUnresolvedDirectionIntent:v17];
    [traitsCopy setSupportStructuredRapAffordance:v17];
  }

  v18 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v21 = [v18 updatedTraitsForCurrentGarageState:traitsCopy];

  v19 = +[MKMapService sharedService];
  v20 = [v19 ticketForSearchQuery:stringCopy completionItem:0 retainedSearch:metadataCopy traits:v21 searchSessionData:self->_searchSessionData];

  [(SearchManager *)self _submitSearchTicket:v20 defaultSearchResultType:0 saveToHistory:navigating ^ 1 origin:((v8 - 6) & 0xFFFFFFF9) == 0];
}

- (id)closestSearchResultOfType:(unsigned int)type fromSearchResults:(id)results
{
  resultsCopy = results;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1005EEA38;
  v23[3] = &unk_101623830;
  typeCopy = type;
  v6 = sub_1000282CC(resultsCopy, v23);
  if ([v6 count])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1005EC4D0;
    v21 = sub_1005EC4E0;
    v22 = 0;
    v7 = +[SearchResult currentLocationSearchResult];
    if ([v6 count])
    {
      firstObject = [v6 firstObject];
      v9 = v18[5];
      v18[5] = firstObject;

      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2020000000;
      v16[3] = 0x43E0000000000000;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1005EEA6C;
      v12[3] = &unk_101623858;
      v13 = v7;
      v14 = v16;
      v15 = &v17;
      [v6 enumerateObjectsUsingBlock:v12];

      _Block_object_dispose(v16, 8);
    }

    v10 = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)orderedSearchResults:(id)results itemsToFrame:(id)frame
{
  frameCopy = frame;
  v7 = [results mutableCopy];
  while (1)
  {
    if ([frameCopy count] == 4 || objc_msgSend(frameCopy, "count") == 4)
    {
      v12 = frameCopy;
      goto LABEL_26;
    }

    v8 = [(SearchManager *)self closestSearchResultOfType:1 fromSearchResults:v7];
    if (v8 && ([frameCopy containsObject:v8] & 1) == 0)
    {
      [v7 removeObject:v8];
      [frameCopy addObject:v8];
    }

    if ([frameCopy count] == 4)
    {
      v13 = frameCopy;
      goto LABEL_25;
    }

    v9 = [(SearchManager *)self closestSearchResultOfType:2 fromSearchResults:v7];
    if (v9 && ([frameCopy containsObject:v9] & 1) == 0)
    {
      [v7 removeObject:v9];
      [frameCopy addObject:v9];
    }

    if ([frameCopy count] == 4)
    {
      v14 = frameCopy;
      goto LABEL_24;
    }

    v10 = [(SearchManager *)self closestSearchResultOfType:3 fromSearchResults:v7];
    if (v10 && ([frameCopy containsObject:v10] & 1) == 0)
    {
      [v7 removeObject:v10];
      [frameCopy addObject:v10];
    }

    if ([frameCopy count] == 4)
    {
      break;
    }

    v11 = [(SearchManager *)self closestSearchResultOfType:0 fromSearchResults:v7];
    if (v11)
    {
      if (([frameCopy containsObject:v11] & 1) == 0)
      {
        [v7 removeObject:v11];
        [frameCopy addObject:v11];
      }
    }
  }

  v15 = frameCopy;

LABEL_24:
LABEL_25:

LABEL_26:

  return frameCopy;
}

- (id)correctedSearchResultsFrom:(id)from
{
  fromCopy = from;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(fromCopy, "count")}];
  v5 = sub_1000282CC(fromCopy, &stru_101623790);
  if ([v5 count])
  {
    firstObject = [v5 firstObject];
    [v4 addObject:firstObject];
  }

  v7 = sub_1000282CC(fromCopy, &stru_1016237B0);
  if ([v7 count])
  {
    [v4 addObjectsFromArray:v7];
  }

  v8 = sub_1000282CC(fromCopy, &stru_1016237D0);
  if ([v8 count])
  {
    [v4 addObjectsFromArray:v8];
  }

  v9 = sub_1000282CC(fromCopy, &stru_1016237F0);
  if ([v9 count])
  {
    [v4 addObjectsFromArray:v9];
  }

  v10 = sub_1000282CC(fromCopy, &stru_101623810);
  if ([v10 count])
  {
    [v4 addObjectsFromArray:v10];
  }

  return v4;
}

- (void)_searchForContactAddressedForAutocompletePerson:(id)person searchResults:(id)results traits:(id)traits source:(int)source
{
  personCopy = person;
  resultsCopy = results;
  traitsCopy = traits;
  v12 = sub_100798AD4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    contact = [personCopy contact];
    identifier = [contact identifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Rev geo addresses for ContactIdentifier:%@", &buf, 0xCu);
  }

  v15 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = sub_1005EC4D0;
  v57 = sub_1005EC4E0;
  contact2 = [personCopy contact];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_1005EC4D0;
  v52 = sub_1005EC4E0;
  v53 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = sub_1005EC4D0;
  v46[4] = sub_1005EC4E0;
  v47 = 0;
  if ([resultsCopy count])
  {
    firstObject = [resultsCopy firstObject];
    mapItem = [firstObject mapItem];
    v18 = v49[5];
    v49[5] = mapItem;
  }

  v19 = objc_alloc_init(CNPostalAddressFormatter);
  postalAddresses = [*(*(&buf + 1) + 40) postalAddresses];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1005EF3E0;
  v36[3] = &unk_1016236C8;
  v21 = v15;
  v37 = v21;
  v22 = v19;
  v38 = v22;
  p_buf = &buf;
  v23 = traitsCopy;
  v44 = v46;
  v39 = v23;
  selfCopy = self;
  v24 = personCopy;
  v41 = v24;
  v45 = &v48;
  v25 = resultsCopy;
  v42 = v25;
  [postalAddresses enumerateObjectsUsingBlock:v36];

  objc_initWeak(&location, self);
  v26 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005EF638;
  block[3] = &unk_101623750;
  objc_copyWeak(&v34, &location);
  v30 = v25;
  v31 = v24;
  v32 = v46;
  v33 = &v48;
  v27 = v24;
  v28 = v25;
  dispatch_group_notify(v21, v26, block);

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&buf, 8);
}

- (void)_searchForAutocompletePerson:(id)person traits:(id)traits source:(int)source
{
  v5 = *&source;
  personCopy = person;
  traitsCopy = traits;
  [(SearchManager *)self reset];
  delegate = [(SearchManager *)self delegate];
  searchFieldItem = [(SearchManager *)self searchFieldItem];
  [delegate searchManager:self willProcessSearchFieldItem:searchFieldItem];

  v12 = objc_alloc_init(NSMutableArray);
  v13 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v13 isUsingOfflineMaps];

  if (isUsingOfflineMaps)
  {
    v15 = sub_100067540();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Maps is offline, will only build contacts even though we have handle.", buf, 2u);
    }

    goto LABEL_7;
  }

  handle = [personCopy handle];

  if (!handle)
  {
LABEL_7:
    [(SearchManager *)self _searchForContactAddressedForAutocompletePerson:personCopy searchResults:v12 traits:traitsCopy source:v5];
    goto LABEL_8;
  }

  v17 = [_TtC4Maps33SearchFindMyFriendshipCoordinator alloc];
  handle2 = [personCopy handle];
  v18Handle = [handle2 handle];
  handleIdentifier = [v18Handle handleIdentifier];
  v21 = [(SearchFindMyFriendshipCoordinator *)v17 initWith:handleIdentifier];
  searchFriendshipCoordinator = self->_searchFriendshipCoordinator;
  self->_searchFriendshipCoordinator = v21;

  v23 = self->_searchFriendshipCoordinator;
  handle3 = [personCopy handle];
  v24Handle = [handle3 handle];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1005F0230;
  v26[3] = &unk_101623678;
  v27 = personCopy;
  selfCopy = self;
  v29 = v12;
  v30 = traitsCopy;
  v31 = v5;
  [(SearchFindMyFriendshipCoordinator *)v23 getLatestLocationsFor:v24Handle completion:v26];

LABEL_8:
}

- (void)searchForSearchFieldItem:(id)item traits:(id)traits source:(int)source isRedoOrAutoRedoSearch:(BOOL)search searchSessionData:(id)data
{
  v9 = *&source;
  itemCopy = item;
  traitsCopy = traits;
  dataCopy = data;
  address = [itemCopy address];
  searchResult = [itemCopy searchResult];
  completion = [itemCopy completion];
  suggestion = [itemCopy suggestion];
  currentCategory = [itemCopy currentCategory];
  historyItem = [itemCopy historyItem];
  externalURLQuery = [itemCopy externalURLQuery];
  venueCategoryItem = [itemCopy venueCategoryItem];
  placeCategoryItem = [itemCopy placeCategoryItem];
  childPlace = [itemCopy childPlace];
  mapKitHandle = [itemCopy mapKitHandle];
  addressString = [itemCopy addressString];
  autocompletePerson = [itemCopy autocompletePerson];
  [(SearchManager *)self setSearchFieldItem:itemCopy];
  objc_storeStrong(&self->_searchSessionData, data);
  if (MapsFeature_IsEnabled_OptimizeSearchResultComponents())
  {
    v16 = sub_100067540();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v9;
      v18 = dataCopy;
      searchSessionData = self->_searchSessionData;
      recentAutocompleteSessionData = [traitsCopy recentAutocompleteSessionData];
      *buf = 138412802;
      v86 = itemCopy;
      v87 = 2112;
      v88 = searchSessionData;
      dataCopy = v18;
      v9 = v17;
      v89 = 2112;
      v90 = recentAutocompleteSessionData;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Performing optimized search request for: %@, searchSessionData: %@, acSessionData: %@", buf, 0x20u);
    }

    [traitsCopy setOptimizeSearchRequestComponents:1];
  }

  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v21 = +[SearchSessionAnalyticsAggregator sharedAggregator];
    collectedAnalytics = [v21 collectedAnalytics];
    [traitsCopy setUserActionMetadata:collectedAnalytics];

    v23 = sub_100067540();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      userActionMetadata = [traitsCopy userActionMetadata];
      *buf = 138412546;
      v86 = itemCopy;
      v87 = 2112;
      v88 = userActionMetadata;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Adding search session user action data for %@. \nActions: %@", buf, 0x16u);
    }
  }

  if (!historyItem)
  {
    v27 = suggestion;
    if (suggestion)
    {
      [(SearchManager *)self _searchForSuggestion:suggestion traits:traitsCopy source:v9];
      v26 = searchResult;
      goto LABEL_17;
    }

    v26 = searchResult;
    if (externalURLQuery)
    {
      query = [externalURLQuery query];
      [externalURLQuery coordinate];
      v30 = v29;
      v32 = v31;
      muid = [externalURLQuery muid];
      resultProviderId = [externalURLQuery resultProviderId];
      contentProvider = [externalURLQuery contentProvider];
      v36 = muid;
      v27 = 0;
      [(SearchManager *)self _searchForExternalURLQuery:query coordinate:v36 muid:resultProviderId resultProviderId:contentProvider contentProvider:traitsCopy traits:1 source:v30, v32];

      goto LABEL_17;
    }

    if (currentCategory)
    {
      navigating = [traitsCopy navigating];
      v39 = +[MKMapService searchMaxResults];
      if (navigating)
      {
        LODWORD(v61) = v39;
        [(SearchManager *)self _submitTicketForSearchForCategory:currentCategory searchQuery:0 completionItem:0 traits:traitsCopy defaultSearchResultType:0 source:v9 maxResults:v61];
      }

      else
      {
        [(SearchManager *)self _searchForCategory:currentCategory traits:traitsCopy defaultSearchResultType:0 source:v9 maxResults:v39];
      }

      goto LABEL_12;
    }

    if (venueCategoryItem)
    {
      if (![venueCategoryItem isAutoCompleteCategory])
      {
        [(SearchManager *)self _searchForVenueCategoryItem:venueCategoryItem traits:traitsCopy source:v9];
        goto LABEL_17;
      }

      searchCategory = [venueCategoryItem searchCategory];
      [(SearchManager *)self _searchForCategory:searchCategory traits:traitsCopy defaultSearchResultType:0 source:v9 maxResults:+[MKMapService venuesCategorySearchMaxResults]];
      goto LABEL_24;
    }

    if (placeCategoryItem)
    {
      [(SearchManager *)self _searchForPlaceCategoryItem:placeCategoryItem traits:traitsCopy source:v9];
      goto LABEL_17;
    }

    if (completion)
    {
      if (![traitsCopy navigating])
      {
        [(SearchManager *)self _searchForCompletion:completion traits:traitsCopy source:v9];
        goto LABEL_17;
      }

      searchCategory = [completion queryLine];
      LODWORD(v61) = +[MKMapService searchMaxResults];
      [(SearchManager *)self _submitTicketForSearchForCategory:0 searchQuery:searchCategory completionItem:completion traits:traitsCopy defaultSearchResultType:0 source:v9 maxResults:v61];
LABEL_24:

      goto LABEL_12;
    }

    if (childPlace)
    {
      [(SearchManager *)self _searchForChildPlace:childPlace traits:traitsCopy source:v9];
      goto LABEL_17;
    }

    if (mapKitHandle)
    {
      [(SearchManager *)self _searchForMapKitHandle:mapKitHandle traits:traitsCopy source:v9];
      goto LABEL_17;
    }

    if (searchResult)
    {
      goto LABEL_17;
    }

    v62 = dataCopy;
    if (address)
    {
      [(SearchManager *)self _searchForAddress:address traits:traitsCopy source:v9];
    }

    else
    {
      coreRecentContact = [itemCopy coreRecentContact];

      if (coreRecentContact)
      {
        coreRecentContact2 = [itemCopy coreRecentContact];
        address2 = [coreRecentContact2 address];

        [(SearchManager *)self _searchForAddressString:address2 label:0 defaultSearchResultType:0 traits:traitsCopy source:v9];
      }

      else
      {
        if (addressString)
        {
          addressStringLabel = [itemCopy addressStringLabel];
          [(SearchManager *)self _searchForAddressString:addressString label:addressStringLabel defaultSearchResultType:0 traits:traitsCopy source:v9];

          goto LABEL_45;
        }

        if (!autocompletePerson)
        {
          searchString = [itemCopy searchString];
          if (searchString || ([traitsCopy searchImplicitFilterInfo], (searchString = objc_claimAutoreleasedReturnValue()) != 0))
          {
          }

          else
          {
            v26 = 0;
            v27 = 0;
            if (([itemCopy isSpotlightSearch] & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          searchString2 = [itemCopy searchString];
          if ([traitsCopy navigating])
          {
            v50 = [NavigationRouteHistoryInfoProvider alloc];
            v51 = +[MNNavigationService sharedService];
            v52 = [(NavigationRouteHistoryInfoProvider *)v50 initWithNavigationService:v51];

            v53 = objc_alloc_init(GEOAddStopRouteInfo);
            originalWaypointRouteRepresentation = [(NavigationRouteHistoryInfoProvider *)v52 originalWaypointRouteRepresentation];
            [v53 setOriginalWaypointRouteRepresentation:originalWaypointRouteRepresentation];

            legacyRouteRepresentation = [(NavigationRouteHistoryInfoProvider *)v52 legacyRouteRepresentation];
            [v53 setZilchData:legacyRouteRepresentation];

            sessionState = [(NavigationRouteHistoryInfoProvider *)v52 sessionState];
            [v53 setSessionState:sessionState];

            routeId = [(NavigationRouteHistoryInfoProvider *)v52 routeId];
            [v53 setRouteId:routeId];

            routeAttributes = [(NavigationRouteHistoryInfoProvider *)v52 routeAttributes];
            [v53 setRouteAttributes:routeAttributes];

            [traitsCopy setAddStopRouteInfo:v53];
          }

          completedQuery = [itemCopy completedQuery];
          retainedSearchMetadata = [itemCopy retainedSearchMetadata];
          [(SearchManager *)self _searchForString:searchString2 traits:traitsCopy defaultSearchResultType:0 completedQuery:completedQuery retainedSearchMetadata:retainedSearchMetadata source:v9];

          goto LABEL_45;
        }

        contact = [autocompletePerson contact];
        _maps_mapsData = [contact _maps_mapsData];

        if (!_maps_mapsData)
        {
          [(SearchManager *)self _searchForAutocompletePerson:autocompletePerson traits:traitsCopy source:v9];
          goto LABEL_45;
        }

        address2 = [autocompletePerson contact];
        v47 = [AddressBookAddress singleAddressForContact:address2];
        [(SearchManager *)self _searchForAddress:v47 traits:traitsCopy source:v9];
      }
    }

LABEL_45:
    dataCopy = v62;
    historyItem = 0;
    goto LABEL_11;
  }

  historyEntry = [historyItem historyEntry];
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_1005F12A0;
  v80[3] = &unk_1016235C0;
  v80[4] = self;
  v81 = historyItem;
  v82 = traitsCopy;
  v83 = v9;
  searchCopy = search;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_1005F12BC;
  v75[3] = &unk_101623608;
  v75[4] = self;
  v76 = v81;
  v77 = v82;
  v78 = v9;
  searchCopy2 = search;
  [historyEntry ifSearch:v80 ifRoute:&stru_1016235E0 ifPlaceDisplay:v75 ifTransitLineItem:&stru_101623628];

LABEL_11:
  v26 = searchResult;
LABEL_12:
  v27 = suggestion;
LABEL_17:
  v37 = [traitsCopy copy];
  [(SearchManager *)self setActiveTraits:v37];
}

- (void)_submitSearchTicket:(id)ticket defaultSearchResultType:(unsigned int)type saveToHistory:(BOOL)history origin:(int64_t)origin completionTitle:(id)title
{
  ticketCopy = ticket;
  titleCopy = title;
  [(SearchManager *)self reset];
  delegate = [(SearchManager *)self delegate];
  searchFieldItem = [(SearchManager *)self searchFieldItem];
  [delegate searchManager:self willProcessSearchFieldItem:searchFieldItem];

  [(SearchManager *)self setActiveSearchTicket:ticketCopy];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_1005EC4D0;
  v28[4] = sub_1005EC4E0;
  v29 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1005F1548;
  v27[3] = &unk_10165F5C8;
  v27[4] = v28;
  v16 = objc_retainBlock(v27);
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1005F15E4;
  v20[3] = &unk_101623598;
  objc_copyWeak(v23, &location);
  v17 = ticketCopy;
  v21 = v17;
  typeCopy = type;
  historyCopy = history;
  v18 = titleCopy;
  v22 = v18;
  v23[1] = origin;
  [v17 submitWithRefinedHandler:v20 networkActivity:v16];
  v19 = +[NSNotificationCenter defaultCenter];
  [v19 postNotificationName:@"SearchManagerSearchForStringRequestSentNotification" object:0];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(v28, 8);
}

- (void)_submitTicket:(id)ticket defaultSearchResultType:(unsigned int)type origin:(int64_t)origin
{
  ticketCopy = ticket;
  [(SearchManager *)self reset];
  delegate = [(SearchManager *)self delegate];
  searchFieldItem = [(SearchManager *)self searchFieldItem];
  [delegate searchManager:self willProcessSearchFieldItem:searchFieldItem];

  [(SearchManager *)self setActiveSearchTicket:ticketCopy];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1005EC4D0;
  v21[4] = sub_1005EC4E0;
  v22 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1005F1B14;
  v20[3] = &unk_10165F5C8;
  v20[4] = v21;
  v10 = objc_retainBlock(v20);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1005F1BB0;
  v16 = &unk_101623570;
  selfCopy = self;
  v11 = ticketCopy;
  v18 = v11;
  typeCopy = type;
  [v11 submitWithHandler:&v13 networkActivity:v10];
  v12 = [NSNotificationCenter defaultCenter:v13];
  [v12 postNotificationName:@"SearchManagerSearchForStringRequestSentNotification" object:0];

  _Block_object_dispose(v21, 8);
}

- (void)_submitCategorySearchTicket:(id)ticket defaultSearchResultType:(unsigned int)type origin:(int64_t)origin
{
  ticketCopy = ticket;
  delegate = [(SearchManager *)self delegate];
  searchFieldItem = [(SearchManager *)self searchFieldItem];
  [delegate searchManager:self willProcessSearchFieldItem:searchFieldItem];

  [(SearchManager *)self setActiveSearchTicket:ticketCopy];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_1005EC4D0;
  v19[4] = sub_1005EC4E0;
  v20 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1005F1EE8;
  v18[3] = &unk_10165F5C8;
  v18[4] = v19;
  v10 = objc_retainBlock(v18);
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1005F1F84;
  v13[3] = &unk_101623548;
  objc_copyWeak(&v15, &location);
  v11 = ticketCopy;
  v14 = v11;
  typeCopy = type;
  [v11 submitWithRefinedHandler:v13 networkActivity:v10];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 postNotificationName:@"SearchManagerSearchForStringRequestSentNotification" object:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  _Block_object_dispose(v19, 8);
}

- (void)reset
{
  self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = +[NSThread callStackSymbols];
    searchSessionData = self->_searchSessionData;
    searchFieldItem = [(SearchManager *)self searchFieldItem];
    activeSearchTicket = [(SearchManager *)self activeSearchTicket];
    v9 = 138413058;
    v10 = v4;
    v11 = 2112;
    v12 = searchSessionData;
    v13 = 2112;
    v14 = searchFieldItem;
    v15 = 2112;
    v16 = activeSearchTicket;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Reset is called. Call stack: %@. Search Session: %@, Search field: %@, active ticket: %@", &v9, 0x2Au);
  }

  activeTraits = self->_activeTraits;
  self->_activeTraits = 0;

  [(SearchManager *)self cancelSearch];
  [(SearchManager *)self setSearchFieldItem:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    activeSearchTicket = [(SearchManager *)self activeSearchTicket];
    searchFieldItem = [(SearchManager *)self searchFieldItem];
    *buf = 138412546;
    v9 = activeSearchTicket;
    v10 = 2112;
    v11 = searchFieldItem;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Dealloc is called. %@: SearchFieldItem: %@: ", buf, 0x16u);
  }

  [(SearchManager *)self cancelSearch];
  [(SearchManager *)self reset];
  v7.receiver = self;
  v7.super_class = SearchManager;
  [(SearchManager *)&v7 dealloc];
}

@end