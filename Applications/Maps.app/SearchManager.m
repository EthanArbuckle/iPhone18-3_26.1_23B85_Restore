@interface SearchManager
- (BOOL)_shouldEnableRAPForNoResultsWithError:(id)a3;
- (SearchManagerDelegate)delegate;
- (id)closestSearchResultOfType:(unsigned int)a3 fromSearchResults:(id)a4;
- (id)correctedSearchResultsFrom:(id)a3;
- (id)orderedSearchResults:(id)a3 itemsToFrame:(id)a4;
- (void)_forwardGeocodeAddress:(id)a3 addressString:(id)a4 addressBookAddress:(id)a5 label:(id)a6 defaultSearchResultType:(unsigned int)a7 traits:(id)a8 source:(int)a9;
- (void)_handleGeocoderError:(id)a3;
- (void)_resolveRefinementForSearch:(id)a3 atIndex:(unint64_t)a4;
- (void)_searchCanceled;
- (void)_searchFailedWithError:(id)a3;
- (void)_searchFailedWithError:(id)a3 ticket:(id)a4 enableStructuredRAPAffordance:(BOOL)a5;
- (void)_searchForAddress:(id)a3 completedQuery:(id)a4 traits:(id)a5 source:(int)a6;
- (void)_searchForAutocompletePerson:(id)a3 traits:(id)a4 source:(int)a5;
- (void)_searchForBookmarkSearchResult:(id)a3 origin:(int64_t)a4;
- (void)_searchForCategory:(id)a3 traits:(id)a4 defaultSearchResultType:(unsigned int)a5 source:(int)a6 maxResults:(unsigned int)a7;
- (void)_searchForChildPlace:(id)a3 traits:(id)a4 source:(int)a5;
- (void)_searchForCompletion:(id)a3 traits:(id)a4 source:(int)a5;
- (void)_searchForContactAddressedForAutocompletePerson:(id)a3 searchResults:(id)a4 traits:(id)a5 source:(int)a6;
- (void)_searchForExternalURLQuery:(id)a3 coordinate:(CLLocationCoordinate2D)a4 muid:(unint64_t)a5 resultProviderId:(int)a6 contentProvider:(id)a7 traits:(id)a8 source:(int)a9;
- (void)_searchForHistoryItem:(id)a3 completedQuery:(id)a4 traits:(id)a5 source:(int)a6 isRedoOrAutoRedoSearch:(BOOL)a7;
- (void)_searchForMapKitHandle:(id)a3 traits:(id)a4 source:(int)a5;
- (void)_searchForPlaceCategoryItem:(id)a3 traits:(id)a4 source:(int)a5;
- (void)_searchForSearchInfo:(id)a3 completedQuery:(id)a4;
- (void)_searchForSearchResults:(id)a3 completedQuery:(id)a4;
- (void)_searchForString:(id)a3 traits:(id)a4 defaultSearchResultType:(unsigned int)a5 completedQuery:(id)a6 retainedSearchMetadata:(id)a7 source:(int)a8;
- (void)_searchForSuggestion:(id)a3 traits:(id)a4 source:(int)a5;
- (void)_searchForVenueCategoryItem:(id)a3 traits:(id)a4 source:(int)a5;
- (void)_searchReceivedResults:(id)a3;
- (void)_submitCategorySearchTicket:(id)a3 defaultSearchResultType:(unsigned int)a4 origin:(int64_t)a5;
- (void)_submitSearchTicket:(id)a3 defaultSearchResultType:(unsigned int)a4 saveToHistory:(BOOL)a5 origin:(int64_t)a6 completionTitle:(id)a7;
- (void)_submitTicket:(id)a3 defaultSearchResultType:(unsigned int)a4 origin:(int64_t)a5;
- (void)_submitTicketForSearchForCategory:(id)a3 searchQuery:(id)a4 completionItem:(id)a5 traits:(id)a6 defaultSearchResultType:(unsigned int)a7 source:(int)a8 maxResults:(unsigned int)a9;
- (void)cancelSearch;
- (void)dealloc;
- (void)reset;
- (void)searchForSearchFieldItem:(id)a3 traits:(id)a4 source:(int)a5 isRedoOrAutoRedoSearch:(BOOL)a6 searchSessionData:(id)a7;
@end

@implementation SearchManager

- (SearchManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldEnableRAPForNoResultsWithError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:GEOErrorShouldEnableRAPForNoResultsKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_searchReceivedResults:(id)a3
{
  v4 = a3;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 results];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Search received %@: Search Info: %@", &v11, 0x16u);
  }

  v7 = [(SearchManager *)self searchFieldItem];
  [v4 setSearchFieldItem:v7];

  v8 = [(SearchManager *)self activeTraits];
  [v4 setSearchAlongRoute:{objc_msgSend(v8, "navigating")}];

  v9 = [(SearchManager *)self delegate];
  v10 = [v4 searchSessionData];
  [v9 searchManager:self didReceiveSearchInfo:v4 searchSessionData:v10 error:0];

  [(SearchManager *)self setActiveSearchTicket:0];
}

- (void)_searchCanceled
{
  [(SearchManager *)self setActiveSearchTicket:0];
  v3 = [(SearchManager *)self delegate];
  [v3 searchManager:self didReceiveSearchInfo:0 searchSessionData:0 error:0];
}

- (void)_searchFailedWithError:(id)a3 ticket:(id)a4 enableStructuredRAPAffordance:(BOOL)a5
{
  IsEnabled_RAPSydney = a5;
  v17 = a4;
  v8 = a3;
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

  v9 = [v17 searchAutoRedoThreshold];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v17 searchRedoButtonThreshold];
    v10 = v11 != 0;
  }

  v12 = [v17 resultRefinementGroup];
  if ((v12 != 0) | IsEnabled_RAPSydney & 1 || v10)
  {
    v13 = [SearchInfo searchInfoWithResults:&__NSArray0__struct ticket:v17];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v17 resultRefinementGroup];
  [v13 setResultRefinementGroup:v14];

  [v13 setEnableStructuredRAPAffordance:IsEnabled_RAPSydney];
  v15 = [(SearchManager *)self delegate];
  v16 = [v13 searchSessionData];
  [v15 searchManager:self didReceiveSearchInfo:v13 searchSessionData:v16 error:v8];
}

- (void)_searchFailedWithError:(id)a3
{
  v4 = a3;
  [(SearchManager *)self _searchFailedWithError:v4 ticket:0 enableStructuredRAPAffordance:[(SearchManager *)self _shouldEnableRAPForNoResultsWithError:v4]];
}

- (void)_handleGeocoderError:(id)a3
{
  v4 = a3;
  v5 = [(SearchManager *)self delegate];
  [v5 searchManager:self didReceiveSearchInfo:0 searchSessionData:0 error:v4];
}

- (void)cancelSearch
{
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(SearchManager *)self activeSearchTicket];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Search is being cancelled, ticket %@:", &v6, 0xCu);
  }

  v5 = [(SearchManager *)self activeSearchTicket];
  [v5 cancel];
}

- (void)_searchForBookmarkSearchResult:(id)a3 origin:(int64_t)a4
{
  v5 = a3;
  if ([v5 originalType] == 3)
  {
    v21 = v5;
    v6 = [NSArray arrayWithObjects:&v21 count:1];
    [(SearchManager *)self _searchForSearchResults:v6 completedQuery:0];
  }

  else
  {
    [(SearchManager *)self reset];
    [(SearchManager *)self setActiveSearchTicket:0];
    v7 = [(SearchManager *)self delegate];
    v8 = [(SearchManager *)self searchFieldItem];
    [v7 searchManager:self willProcessSearchFieldItem:v8];

    v6 = +[MKMapService sharedService];
    v9 = [v6 defaultTraits];
    [v9 setSource:17];
    v10 = [v5 mapItem];
    v11 = [v6 ticketForMapItemToRefine:v10 traits:v9];

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
    v15 = v5;
    v13 = v11;
    v16 = v13;
    v17 = self;
    [v13 submitWithRefinedHandler:v14 networkActivity:v12];

    _Block_object_dispose(v19, 8);
  }
}

- (void)_resolveRefinementForSearch:(id)a3 atIndex:(unint64_t)a4
{
  v5 = [SearchInfo searchInfoWithSearchInfo:a3 refinedIndex:a4];
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

- (void)_searchForHistoryItem:(id)a3 completedQuery:(id)a4 traits:(id)a5 source:(int)a6 isRedoOrAutoRedoSearch:(BOOL)a7
{
  v8 = *&a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  objc_opt_class();
  v15 = v12;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v17 historyEntry];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1005ECB68;
  v42[3] = &unk_1016238D0;
  v45 = &v48;
  v46 = v8;
  v47 = a7;
  v43 = v14;
  v44 = self;
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_1005ECC24;
  v36 = &unk_101623918;
  v40 = &v48;
  v37 = self;
  v19 = v43;
  v38 = v19;
  v41 = v8;
  v20 = v13;
  v39 = v20;
  [v18 ifSearch:v42 ifRoute:&stru_1016238F0 ifPlaceDisplay:&v33 ifTransitLineItem:&stru_101623938];

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
    v24 = [v23 searchResult];
    v52 = v24;
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
    v32 = [v31 address];
    [(SearchManager *)self _searchForAddressString:v32 label:0 defaultSearchResultType:0 traits:v19 source:v8];
  }

  _Block_object_dispose(&v48, 8);
}

- (void)_searchForSearchResults:(id)a3 completedQuery:(id)a4
{
  v6 = a4;
  v7 = [SearchInfo searchInfoWithResults:a3];
  [(SearchManager *)self _searchForSearchInfo:v7 completedQuery:v6];
}

- (void)_searchForSearchInfo:(id)a3 completedQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v9 = [v6 selectedResult];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [v6 results];
      v11 = [v12 firstObject];
    }

    v13 = [v11 title];

    if (v13)
    {
      [v11 title];
    }

    else
    {
      [v11 singleLineAddress];
    }
    v8 = ;
  }

  if (([v6 shouldPreserveResults] & 1) == 0)
  {
    [(SearchManager *)self reset];
    [(SearchManager *)self setActiveSearchTicket:0];
    v14 = [(SearchManager *)self delegate];
    v15 = [(SearchManager *)self searchFieldItem];
    [v14 searchManager:self willProcessSearchFieldItem:v15];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1005ED02C;
  v17[3] = &unk_101661A90;
  v17[4] = self;
  v18 = v6;
  v16 = v6;
  dispatch_async(&_dispatch_main_q, v17);
}

- (void)_searchForAddress:(id)a3 completedQuery:(id)a4 traits:(id)a5 source:(int)a6
{
  v19 = a5;
  v9 = a3;
  v10 = [v9 contact];
  v11 = [v10 _maps_mapsData];

  v12 = [(SearchManager *)self delegate];
  v13 = [(SearchManager *)self searchFieldItem];
  [v12 searchManager:self willProcessSearchFieldItem:v13];

  if (v11)
  {
    v14 = [v9 contact];
    v15 = [v14 _maps_mapsData];
    v16 = [v9 compositeName];

    v17 = [MKMapItem ticketForMapsDataString:v15 name:v16];

    [(SearchManager *)self _submitSearchTicket:v17 defaultSearchResultType:0 saveToHistory:0 origin:0];
  }

  else
  {
    v17 = [[GEOAddress alloc] initWithAddressBookAddress:v9];
    LODWORD(v18) = a6;
    [(SearchManager *)self _forwardGeocodeAddress:v17 addressString:0 addressBookAddress:v9 label:0 defaultSearchResultType:0 traits:v19 source:v18];
  }
}

- (void)_forwardGeocodeAddress:(id)a3 addressString:(id)a4 addressBookAddress:(id)a5 label:(id)a6 defaultSearchResultType:(unsigned int)a7 traits:(id)a8 source:(int)a9
{
  v16 = a3;
  v35 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  [(SearchManager *)self reset];
  v20 = [(SearchManager *)self delegate];
  v21 = [(SearchManager *)self searchFieldItem];
  [v20 searchManager:self willProcessSearchFieldItem:v21];

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
  v22 = v17;
  v45 = v22;
  v49 = a7;
  v23 = v18;
  v46 = v23;
  v24 = objc_retainBlock(v44);
  [v19 setSource:a9];
  if (!v22 || ![v22 isValid] || !objc_msgSend(v22, "isMeCard"))
  {
    if (v16)
    {
      v29 = +[MKMapService sharedService];
      v30 = [v29 ticketForForwardGeocodeAddress:v16 traits:v19];
    }

    else
    {
      if (!v35 || ![v35 length])
      {
        goto LABEL_9;
      }

      v29 = +[MKMapService sharedService];
      v30 = [v29 ticketForForwardGeocodeString:v35 traits:v19];
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

  v33 = v16;
  v34 = +[AddressBookManager sharedManager];
  v25 = [v22 addressValue];
  v26 = [v25 identifier];
  v27 = [v34 addressForIdentifier:v26];

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
  v43 = a7;
  v22 = v22;
  v40 = v22;
  [v22 forwardGeocodeAddress:v39];

  v16 = v33;
LABEL_10:

  _Block_object_dispose(&v50, 8);
}

- (void)_searchForMapKitHandle:(id)a3 traits:(id)a4 source:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  [a4 setSource:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005EDB1C;
  v9[3] = &unk_101630438;
  v9[4] = self;
  [MKMapItem _mapItemFromHandle:v8 completionHandler:v9];
}

- (void)_searchForChildPlace:(id)a3 traits:(id)a4 source:(int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = a3;
  [v8 setSource:v5];
  v10 = +[MKMapService sharedService];
  v11 = [v10 ticketForChildPlace:v9 traits:v8];

  [(SearchManager *)self _submitTicket:v11 defaultSearchResultType:0 origin:((v5 - 6) & 0xFFFFFFF9) == 0];
}

- (void)_searchForExternalURLQuery:(id)a3 coordinate:(CLLocationCoordinate2D)a4 muid:(unint64_t)a5 resultProviderId:(int)a6 contentProvider:(id)a7 traits:(id)a8 source:(int)a9
{
  v9 = *&a9;
  v11 = *&a6;
  longitude = a4.longitude;
  latitude = a4.latitude;
  v17 = a8;
  v18 = a7;
  v19 = a3;
  v20 = +[MKMapService sharedService];
  v21 = [[MKMapItemIdentifier alloc] initWithMUID:a5 resultProviderID:v11 coordinate:{latitude, longitude}];
  v22 = [v20 ticketForURLQuery:v19 identifier:v21 resultProviderId:v11 contentProvider:v18 traits:v17 source:v9];

  LODWORD(v9) = [v17 navigating];
  [(SearchManager *)self _submitSearchTicket:v22 defaultSearchResultType:0 saveToHistory:v9 ^ 1 origin:0];
}

- (void)_searchForCompletion:(id)a3 traits:(id)a4 source:(int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = a3;
  [v8 setSource:v5];
  v10 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v16 = [v10 updatedTraitsForCurrentGarageState:v8];

  v11 = +[MKMapService sharedService];
  v12 = [v9 queryLine];
  v13 = [v9 geoCompletionItem];
  v14 = [v11 ticketForSearchQuery:v12 completionItem:v13 traits:v16 searchSessionData:self->_searchSessionData];

  LODWORD(v11) = [v16 navigating];
  v15 = [v9 title];

  [(SearchManager *)self _submitSearchTicket:v14 defaultSearchResultType:0 saveToHistory:v11 ^ 1 origin:((v5 - 6) & 0xFFFFFFF9) == 0 completionTitle:v15];
}

- (void)_searchForPlaceCategoryItem:(id)a3 traits:(id)a4 source:(int)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[MKMapService sharedService];
  v11 = [v9 searchCategory];
  v12 = [v9 parentMuid];

  v13 = [v10 ticketForPlaceLookupWithSearchCategory:v11 parentMuid:v12 traits:v8];

  [(SearchManager *)self _submitCategorySearchTicket:v13 defaultSearchResultType:0 origin:((a5 - 6) & 0xFFFFFFF9) == 0];
}

- (void)_searchForVenueCategoryItem:(id)a3 traits:(id)a4 source:(int)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[MKMapService sharedService];
  v11 = [v9 searchCategory];
  v12 = [v9 venueIdentifier];

  v13 = [v10 ticketForSearchCategory:v11 venueIdentifier:v12 maxResults:+[MKMapService venuesCategorySearchMaxResults](MKMapService traits:{"venuesCategorySearchMaxResults"), v8}];

  [(SearchManager *)self _submitCategorySearchTicket:v13 defaultSearchResultType:0 origin:((a5 - 6) & 0xFFFFFFF9) == 0];
}

- (void)_submitTicketForSearchForCategory:(id)a3 searchQuery:(id)a4 completionItem:(id)a5 traits:(id)a6 defaultSearchResultType:(unsigned int)a7 source:(int)a8 maxResults:(unsigned int)a9
{
  v9 = *&a8;
  v34 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a3;
  if ([v15 navigating])
  {
    v17 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
    v33 = [v17 updatedTraitsForCurrentGarageState:v15];

    v18 = [NavigationRouteHistoryInfoProvider alloc];
    v19 = +[MNNavigationService sharedService];
    v20 = [(NavigationRouteHistoryInfoProvider *)v18 initWithNavigationService:v19];

    [v33 setSource:v9];
    v30 = +[MKMapService sharedService];
    v21 = [v14 geoCompletionItem];
    v22 = [(NavigationRouteHistoryInfoProvider *)v20 originalWaypointRouteRepresentation];
    v23 = [(NavigationRouteHistoryInfoProvider *)v20 legacyRouteRepresentation];
    [(NavigationRouteHistoryInfoProvider *)v20 sessionState];
    v32 = v9;
    v24 = v9 = self;
    [(NavigationRouteHistoryInfoProvider *)v20 routeId];
    v25 = v31 = v14;
    v26 = [(NavigationRouteHistoryInfoProvider *)v20 routeAttributes];
    LODWORD(v29) = +[MKMapService searchMaxResults];
    v27 = v23;
    v28 = [v30 ticketForSearchAlongRouteWithCategory:v16 searchQuery:v34 completionItem:v21 originalWaypointRouteData:v22 zilchData:v23 sessionState:v24 routeId:v25 routeAttributes:v26 maxResults:v29 traits:v33 searchSessionData:v9->_searchSessionData];

    v14 = v31;
    self = v9;
    LODWORD(v9) = v32;

    v16 = v30;
    v15 = v33;
  }

  else
  {
    v20 = +[MKMapService sharedService];
    v28 = [(NavigationRouteHistoryInfoProvider *)v20 ticketForCategory:v16 maxResults:a9 traits:v15 searchSessionData:self->_searchSessionData];
  }

  [(SearchManager *)self _submitCategorySearchTicket:v28 defaultSearchResultType:0 origin:((v9 - 6) & 0xFFFFFFF9) == 0];
}

- (void)_searchForCategory:(id)a3 traits:(id)a4 defaultSearchResultType:(unsigned int)a5 source:(int)a6 maxResults:(unsigned int)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v12 = a4;
  v13 = a3;
  [(SearchManager *)self reset];
  [v12 setSource:v8];
  v14 = [v12 searchOriginationType];
  if (v14 <= 3)
  {
    v15 = 1u >> (v14 & 0xF);
    [v12 setSupportDirectionIntentSearch:v15];
    [v12 setSupportUnresolvedDirectionIntent:v15];
    [v12 setSupportStructuredRapAffordance:v15];
  }

  v16 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v18 = [v16 updatedTraitsForCurrentGarageState:v12];

  LODWORD(v17) = a7;
  [(SearchManager *)self _submitTicketForSearchForCategory:v13 searchQuery:0 completionItem:0 traits:v18 defaultSearchResultType:v9 source:v8 maxResults:v17];
}

- (void)_searchForSuggestion:(id)a3 traits:(id)a4 source:(int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = a3;
  [(SearchManager *)self reset];
  [v8 setSource:v5];
  v10 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v13 = [v10 updatedTraitsForCurrentGarageState:v8];

  v11 = +[MKMapService sharedService];
  v12 = [v11 ticketForSearchQuery:&stru_1016631F0 completionItem:0 relatedSearchSuggestion:v9 maxResults:+[MKMapService searchMaxResults](MKMapService traits:"searchMaxResults") searchSessionData:{v13, self->_searchSessionData}];

  [(SearchManager *)self _submitCategorySearchTicket:v12 defaultSearchResultType:0 origin:((v5 - 6) & 0xFFFFFFF9) == 0];
}

- (void)_searchForString:(id)a3 traits:(id)a4 defaultSearchResultType:(unsigned int)a5 completedQuery:(id)a6 retainedSearchMetadata:(id)a7 source:(int)a8
{
  v8 = *&a8;
  v12 = a4;
  v13 = a7;
  v14 = a3;
  [v12 setSource:v8];
  v15 = [v12 navigating];
  v16 = [v12 searchOriginationType];
  if (v16 <= 3)
  {
    v17 = 1u >> (v16 & 0xF);
    [v12 setSupportDirectionIntentSearch:v17];
    [v12 setSupportUnresolvedDirectionIntent:v17];
    [v12 setSupportStructuredRapAffordance:v17];
  }

  v18 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v21 = [v18 updatedTraitsForCurrentGarageState:v12];

  v19 = +[MKMapService sharedService];
  v20 = [v19 ticketForSearchQuery:v14 completionItem:0 retainedSearch:v13 traits:v21 searchSessionData:self->_searchSessionData];

  [(SearchManager *)self _submitSearchTicket:v20 defaultSearchResultType:0 saveToHistory:v15 ^ 1 origin:((v8 - 6) & 0xFFFFFFF9) == 0];
}

- (id)closestSearchResultOfType:(unsigned int)a3 fromSearchResults:(id)a4
{
  v5 = a4;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1005EEA38;
  v23[3] = &unk_101623830;
  v24 = a3;
  v6 = sub_1000282CC(v5, v23);
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
      v8 = [v6 firstObject];
      v9 = v18[5];
      v18[5] = v8;

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

- (id)orderedSearchResults:(id)a3 itemsToFrame:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  while (1)
  {
    if ([v6 count] == 4 || objc_msgSend(v6, "count") == 4)
    {
      v12 = v6;
      goto LABEL_26;
    }

    v8 = [(SearchManager *)self closestSearchResultOfType:1 fromSearchResults:v7];
    if (v8 && ([v6 containsObject:v8] & 1) == 0)
    {
      [v7 removeObject:v8];
      [v6 addObject:v8];
    }

    if ([v6 count] == 4)
    {
      v13 = v6;
      goto LABEL_25;
    }

    v9 = [(SearchManager *)self closestSearchResultOfType:2 fromSearchResults:v7];
    if (v9 && ([v6 containsObject:v9] & 1) == 0)
    {
      [v7 removeObject:v9];
      [v6 addObject:v9];
    }

    if ([v6 count] == 4)
    {
      v14 = v6;
      goto LABEL_24;
    }

    v10 = [(SearchManager *)self closestSearchResultOfType:3 fromSearchResults:v7];
    if (v10 && ([v6 containsObject:v10] & 1) == 0)
    {
      [v7 removeObject:v10];
      [v6 addObject:v10];
    }

    if ([v6 count] == 4)
    {
      break;
    }

    v11 = [(SearchManager *)self closestSearchResultOfType:0 fromSearchResults:v7];
    if (v11)
    {
      if (([v6 containsObject:v11] & 1) == 0)
      {
        [v7 removeObject:v11];
        [v6 addObject:v11];
      }
    }
  }

  v15 = v6;

LABEL_24:
LABEL_25:

LABEL_26:

  return v6;
}

- (id)correctedSearchResultsFrom:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = sub_1000282CC(v3, &stru_101623790);
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    [v4 addObject:v6];
  }

  v7 = sub_1000282CC(v3, &stru_1016237B0);
  if ([v7 count])
  {
    [v4 addObjectsFromArray:v7];
  }

  v8 = sub_1000282CC(v3, &stru_1016237D0);
  if ([v8 count])
  {
    [v4 addObjectsFromArray:v8];
  }

  v9 = sub_1000282CC(v3, &stru_1016237F0);
  if ([v9 count])
  {
    [v4 addObjectsFromArray:v9];
  }

  v10 = sub_1000282CC(v3, &stru_101623810);
  if ([v10 count])
  {
    [v4 addObjectsFromArray:v10];
  }

  return v4;
}

- (void)_searchForContactAddressedForAutocompletePerson:(id)a3 searchResults:(id)a4 traits:(id)a5 source:(int)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_100798AD4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v9 contact];
    v14 = [v13 identifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Rev geo addresses for ContactIdentifier:%@", &buf, 0xCu);
  }

  v15 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = sub_1005EC4D0;
  v57 = sub_1005EC4E0;
  v58 = [v9 contact];
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
  if ([v10 count])
  {
    v16 = [v10 firstObject];
    v17 = [v16 mapItem];
    v18 = v49[5];
    v49[5] = v17;
  }

  v19 = objc_alloc_init(CNPostalAddressFormatter);
  v20 = [*(*(&buf + 1) + 40) postalAddresses];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1005EF3E0;
  v36[3] = &unk_1016236C8;
  v21 = v15;
  v37 = v21;
  v22 = v19;
  v38 = v22;
  p_buf = &buf;
  v23 = v11;
  v44 = v46;
  v39 = v23;
  v40 = self;
  v24 = v9;
  v41 = v24;
  v45 = &v48;
  v25 = v10;
  v42 = v25;
  [v20 enumerateObjectsUsingBlock:v36];

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

- (void)_searchForAutocompletePerson:(id)a3 traits:(id)a4 source:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  [(SearchManager *)self reset];
  v10 = [(SearchManager *)self delegate];
  v11 = [(SearchManager *)self searchFieldItem];
  [v10 searchManager:self willProcessSearchFieldItem:v11];

  v12 = objc_alloc_init(NSMutableArray);
  v13 = +[MapsOfflineUIHelper sharedHelper];
  v14 = [v13 isUsingOfflineMaps];

  if (v14)
  {
    v15 = sub_100067540();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Maps is offline, will only build contacts even though we have handle.", buf, 2u);
    }

    goto LABEL_7;
  }

  v16 = [v8 handle];

  if (!v16)
  {
LABEL_7:
    [(SearchManager *)self _searchForContactAddressedForAutocompletePerson:v8 searchResults:v12 traits:v9 source:v5];
    goto LABEL_8;
  }

  v17 = [_TtC4Maps33SearchFindMyFriendshipCoordinator alloc];
  v18 = [v8 handle];
  v19 = [v18 handle];
  v20 = [v19 handleIdentifier];
  v21 = [(SearchFindMyFriendshipCoordinator *)v17 initWith:v20];
  searchFriendshipCoordinator = self->_searchFriendshipCoordinator;
  self->_searchFriendshipCoordinator = v21;

  v23 = self->_searchFriendshipCoordinator;
  v24 = [v8 handle];
  v25 = [v24 handle];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1005F0230;
  v26[3] = &unk_101623678;
  v27 = v8;
  v28 = self;
  v29 = v12;
  v30 = v9;
  v31 = v5;
  [(SearchFindMyFriendshipCoordinator *)v23 getLatestLocationsFor:v25 completion:v26];

LABEL_8:
}

- (void)searchForSearchFieldItem:(id)a3 traits:(id)a4 source:(int)a5 isRedoOrAutoRedoSearch:(BOOL)a6 searchSessionData:(id)a7
{
  v9 = *&a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v66 = [v12 address];
  v65 = [v12 searchResult];
  v69 = [v12 completion];
  v73 = [v12 suggestion];
  v72 = [v12 currentCategory];
  v15 = [v12 historyItem];
  v74 = [v12 externalURLQuery];
  v71 = [v12 venueCategoryItem];
  v70 = [v12 placeCategoryItem];
  v68 = [v12 childPlace];
  v67 = [v12 mapKitHandle];
  v64 = [v12 addressString];
  v63 = [v12 autocompletePerson];
  [(SearchManager *)self setSearchFieldItem:v12];
  objc_storeStrong(&self->_searchSessionData, a7);
  if (MapsFeature_IsEnabled_OptimizeSearchResultComponents())
  {
    v16 = sub_100067540();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v9;
      v18 = v14;
      searchSessionData = self->_searchSessionData;
      v20 = [v13 recentAutocompleteSessionData];
      *buf = 138412802;
      v86 = v12;
      v87 = 2112;
      v88 = searchSessionData;
      v14 = v18;
      v9 = v17;
      v89 = 2112;
      v90 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Performing optimized search request for: %@, searchSessionData: %@, acSessionData: %@", buf, 0x20u);
    }

    [v13 setOptimizeSearchRequestComponents:1];
  }

  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v21 = +[SearchSessionAnalyticsAggregator sharedAggregator];
    v22 = [v21 collectedAnalytics];
    [v13 setUserActionMetadata:v22];

    v23 = sub_100067540();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v13 userActionMetadata];
      *buf = 138412546;
      v86 = v12;
      v87 = 2112;
      v88 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Adding search session user action data for %@. \nActions: %@", buf, 0x16u);
    }
  }

  if (!v15)
  {
    v27 = v73;
    if (v73)
    {
      [(SearchManager *)self _searchForSuggestion:v73 traits:v13 source:v9];
      v26 = v65;
      goto LABEL_17;
    }

    v26 = v65;
    if (v74)
    {
      v28 = [v74 query];
      [v74 coordinate];
      v30 = v29;
      v32 = v31;
      v33 = [v74 muid];
      v34 = [v74 resultProviderId];
      v35 = [v74 contentProvider];
      v36 = v33;
      v27 = 0;
      [(SearchManager *)self _searchForExternalURLQuery:v28 coordinate:v36 muid:v34 resultProviderId:v35 contentProvider:v13 traits:1 source:v30, v32];

      goto LABEL_17;
    }

    if (v72)
    {
      v38 = [v13 navigating];
      v39 = +[MKMapService searchMaxResults];
      if (v38)
      {
        LODWORD(v61) = v39;
        [(SearchManager *)self _submitTicketForSearchForCategory:v72 searchQuery:0 completionItem:0 traits:v13 defaultSearchResultType:0 source:v9 maxResults:v61];
      }

      else
      {
        [(SearchManager *)self _searchForCategory:v72 traits:v13 defaultSearchResultType:0 source:v9 maxResults:v39];
      }

      goto LABEL_12;
    }

    if (v71)
    {
      if (![v71 isAutoCompleteCategory])
      {
        [(SearchManager *)self _searchForVenueCategoryItem:v71 traits:v13 source:v9];
        goto LABEL_17;
      }

      v40 = [v71 searchCategory];
      [(SearchManager *)self _searchForCategory:v40 traits:v13 defaultSearchResultType:0 source:v9 maxResults:+[MKMapService venuesCategorySearchMaxResults]];
      goto LABEL_24;
    }

    if (v70)
    {
      [(SearchManager *)self _searchForPlaceCategoryItem:v70 traits:v13 source:v9];
      goto LABEL_17;
    }

    if (v69)
    {
      if (![v13 navigating])
      {
        [(SearchManager *)self _searchForCompletion:v69 traits:v13 source:v9];
        goto LABEL_17;
      }

      v40 = [v69 queryLine];
      LODWORD(v61) = +[MKMapService searchMaxResults];
      [(SearchManager *)self _submitTicketForSearchForCategory:0 searchQuery:v40 completionItem:v69 traits:v13 defaultSearchResultType:0 source:v9 maxResults:v61];
LABEL_24:

      goto LABEL_12;
    }

    if (v68)
    {
      [(SearchManager *)self _searchForChildPlace:v68 traits:v13 source:v9];
      goto LABEL_17;
    }

    if (v67)
    {
      [(SearchManager *)self _searchForMapKitHandle:v67 traits:v13 source:v9];
      goto LABEL_17;
    }

    if (v65)
    {
      goto LABEL_17;
    }

    v62 = v14;
    if (v66)
    {
      [(SearchManager *)self _searchForAddress:v66 traits:v13 source:v9];
    }

    else
    {
      v41 = [v12 coreRecentContact];

      if (v41)
      {
        v42 = [v12 coreRecentContact];
        v43 = [v42 address];

        [(SearchManager *)self _searchForAddressString:v43 label:0 defaultSearchResultType:0 traits:v13 source:v9];
      }

      else
      {
        if (v64)
        {
          v44 = [v12 addressStringLabel];
          [(SearchManager *)self _searchForAddressString:v64 label:v44 defaultSearchResultType:0 traits:v13 source:v9];

          goto LABEL_45;
        }

        if (!v63)
        {
          v48 = [v12 searchString];
          if (v48 || ([v13 searchImplicitFilterInfo], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
          {
          }

          else
          {
            v26 = 0;
            v27 = 0;
            if (([v12 isSpotlightSearch] & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v49 = [v12 searchString];
          if ([v13 navigating])
          {
            v50 = [NavigationRouteHistoryInfoProvider alloc];
            v51 = +[MNNavigationService sharedService];
            v52 = [(NavigationRouteHistoryInfoProvider *)v50 initWithNavigationService:v51];

            v53 = objc_alloc_init(GEOAddStopRouteInfo);
            v54 = [(NavigationRouteHistoryInfoProvider *)v52 originalWaypointRouteRepresentation];
            [v53 setOriginalWaypointRouteRepresentation:v54];

            v55 = [(NavigationRouteHistoryInfoProvider *)v52 legacyRouteRepresentation];
            [v53 setZilchData:v55];

            v56 = [(NavigationRouteHistoryInfoProvider *)v52 sessionState];
            [v53 setSessionState:v56];

            v57 = [(NavigationRouteHistoryInfoProvider *)v52 routeId];
            [v53 setRouteId:v57];

            v58 = [(NavigationRouteHistoryInfoProvider *)v52 routeAttributes];
            [v53 setRouteAttributes:v58];

            [v13 setAddStopRouteInfo:v53];
          }

          v59 = [v12 completedQuery];
          v60 = [v12 retainedSearchMetadata];
          [(SearchManager *)self _searchForString:v49 traits:v13 defaultSearchResultType:0 completedQuery:v59 retainedSearchMetadata:v60 source:v9];

          goto LABEL_45;
        }

        v45 = [v63 contact];
        v46 = [v45 _maps_mapsData];

        if (!v46)
        {
          [(SearchManager *)self _searchForAutocompletePerson:v63 traits:v13 source:v9];
          goto LABEL_45;
        }

        v43 = [v63 contact];
        v47 = [AddressBookAddress singleAddressForContact:v43];
        [(SearchManager *)self _searchForAddress:v47 traits:v13 source:v9];
      }
    }

LABEL_45:
    v14 = v62;
    v15 = 0;
    goto LABEL_11;
  }

  v25 = [v15 historyEntry];
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_1005F12A0;
  v80[3] = &unk_1016235C0;
  v80[4] = self;
  v81 = v15;
  v82 = v13;
  v83 = v9;
  v84 = a6;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_1005F12BC;
  v75[3] = &unk_101623608;
  v75[4] = self;
  v76 = v81;
  v77 = v82;
  v78 = v9;
  v79 = a6;
  [v25 ifSearch:v80 ifRoute:&stru_1016235E0 ifPlaceDisplay:v75 ifTransitLineItem:&stru_101623628];

LABEL_11:
  v26 = v65;
LABEL_12:
  v27 = v73;
LABEL_17:
  v37 = [v13 copy];
  [(SearchManager *)self setActiveTraits:v37];
}

- (void)_submitSearchTicket:(id)a3 defaultSearchResultType:(unsigned int)a4 saveToHistory:(BOOL)a5 origin:(int64_t)a6 completionTitle:(id)a7
{
  v12 = a3;
  v13 = a7;
  [(SearchManager *)self reset];
  v14 = [(SearchManager *)self delegate];
  v15 = [(SearchManager *)self searchFieldItem];
  [v14 searchManager:self willProcessSearchFieldItem:v15];

  [(SearchManager *)self setActiveSearchTicket:v12];
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
  v17 = v12;
  v21 = v17;
  v24 = a4;
  v25 = a5;
  v18 = v13;
  v22 = v18;
  v23[1] = a6;
  [v17 submitWithRefinedHandler:v20 networkActivity:v16];
  v19 = +[NSNotificationCenter defaultCenter];
  [v19 postNotificationName:@"SearchManagerSearchForStringRequestSentNotification" object:0];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(v28, 8);
}

- (void)_submitTicket:(id)a3 defaultSearchResultType:(unsigned int)a4 origin:(int64_t)a5
{
  v7 = a3;
  [(SearchManager *)self reset];
  v8 = [(SearchManager *)self delegate];
  v9 = [(SearchManager *)self searchFieldItem];
  [v8 searchManager:self willProcessSearchFieldItem:v9];

  [(SearchManager *)self setActiveSearchTicket:v7];
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
  v17 = self;
  v11 = v7;
  v18 = v11;
  v19 = a4;
  [v11 submitWithHandler:&v13 networkActivity:v10];
  v12 = [NSNotificationCenter defaultCenter:v13];
  [v12 postNotificationName:@"SearchManagerSearchForStringRequestSentNotification" object:0];

  _Block_object_dispose(v21, 8);
}

- (void)_submitCategorySearchTicket:(id)a3 defaultSearchResultType:(unsigned int)a4 origin:(int64_t)a5
{
  v7 = a3;
  v8 = [(SearchManager *)self delegate];
  v9 = [(SearchManager *)self searchFieldItem];
  [v8 searchManager:self willProcessSearchFieldItem:v9];

  [(SearchManager *)self setActiveSearchTicket:v7];
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
  v11 = v7;
  v14 = v11;
  v16 = a4;
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
    v6 = [(SearchManager *)self searchFieldItem];
    v7 = [(SearchManager *)self activeSearchTicket];
    v9 = 138413058;
    v10 = v4;
    v11 = 2112;
    v12 = searchSessionData;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
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
    v5 = [(SearchManager *)self activeSearchTicket];
    v6 = [(SearchManager *)self searchFieldItem];
    *buf = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Dealloc is called. %@: SearchFieldItem: %@: ", buf, 0x16u);
  }

  [(SearchManager *)self cancelSearch];
  [(SearchManager *)self reset];
  v7.receiver = self;
  v7.super_class = SearchManager;
  [(SearchManager *)&v7 dealloc];
}

@end