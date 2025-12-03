@interface SearchFieldItem
+ (SearchFieldItem)searchFieldItemWithObject:(id)object expandRecentsItem:(BOOL)item preserveContact:(BOOL)contact;
+ (SearchFieldItem)searchFieldItemWithWaypointRequest:(id)request resolvedWaypoint:(id)waypoint;
+ (id)searchFieldItemsForRouteHistoryEntry:(id)entry;
+ (id)searchFieldItemsForRouteInSuggestionsEntry:(id)entry excludeCurrentLocationOrigin:(BOOL)origin;
- (AddressBookAddress)_maps_address;
- (BOOL)behavesAsAtom;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSearchFieldItem:(id)item;
- (BOOL)isEquivalentAsWaypointToSearchFieldItem:(id)item;
- (BOOL)isFindMyPerson;
- (BOOL)matchesWaypoint:(id)waypoint;
- (CLLocationCoordinate2D)coordinateHint;
- (DirectionsWaypoint)personalizedDirectionsWaypoint;
- (DirectionsWaypoint)waypoint;
- (GEOComposedWaypointEVStop)evStopWaypoint;
- (GEOSearchCategory)currentCategory;
- (MKMapItem)mapItemIfGeocoded;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)personalizedAddressName;
- (NSString)searchString;
- (NSString)title;
- (NSString)waypointName;
- (_TtC4Maps16MapsFindMyHandle)_maps_findMyHandle;
- (_TtC4Maps22MapsAutocompletePerson)_maps_autoCompletePerson;
- (id)copyWithZone:(_NSZone *)zone;
- (id)waypointIconWithScale:(double)scale;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)clear;
- (void)dealloc;
- (void)setAddress:(id)address;
- (void)setAddressString:(id)string;
- (void)setAutocompletePerson:(id)person;
- (void)setChildPlace:(id)place;
- (void)setCompletion:(id)completion;
- (void)setComposedWaypoint:(id)waypoint;
- (void)setCoreRecentContact:(id)contact;
- (void)setExternalURLQuery:(id)query;
- (void)setFavoriteItem:(id)item;
- (void)setFindMyHandle:(id)handle;
- (void)setHistoryItem:(id)item;
- (void)setMapKitHandle:(id)handle;
- (void)setPlaceCategoryItem:(id)item;
- (void)setPunchInDetails:(id)details searchString:(id)string;
- (void)setRoutePlanningWaypointRequest:(id)request;
- (void)setSearchCategory:(id)category;
- (void)setSearchResult:(id)result;
- (void)setSearchString:(id)string;
- (void)setSearchString:(id)string forCompletedQuery:(id)query;
- (void)setSuggestion:(id)suggestion;
- (void)setUserTypedStringForRAP:(id)p;
- (void)setVenueCategoryItem:(id)item;
@end

@implementation SearchFieldItem

- (NSString)searchString
{
  searchResult = self->_searchResult;
  if (searchResult)
  {
    if ([(SearchResult *)searchResult behavesAsAtom])
    {
      singleLineAddress = 0;
    }

    else
    {
      mapItem = [(SearchResult *)self->_searchResult mapItem];
      if ([mapItem _hasTransitDisplayName])
      {
        singleLineAddress = 0;
      }

      else
      {
        singleLineAddress = [(SearchResult *)self->_searchResult singleLineAddress];
      }
    }

    if ([singleLineAddress length])
    {
      displayString2 = singleLineAddress;
LABEL_14:
      title = displayString2;
LABEL_15:
      waypointName = displayString2;
LABEL_16:

      goto LABEL_20;
    }

    title = [(SearchResult *)self->_searchResult title];

    if ([title length])
    {
      displayString2 = title;
      goto LABEL_14;
    }

    v13 = sub_1009D851C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_searchResult;
      v55 = 138412290;
      v56 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to generate search string from search result: %@", &v55, 0xCu);
    }

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"SearchFieldItem_UnknownLocation" value:@"localized string not found" table:0];
    goto LABEL_26;
  }

  searchCategory = self->_searchCategory;
  if (searchCategory)
  {
    displayString = [(GEOSearchCategory *)searchCategory displayString];
LABEL_19:
    waypointName = displayString;
    goto LABEL_20;
  }

  suggestion = self->_suggestion;
  if (suggestion)
  {
    displayString = [(GEORelatedSearchSuggestion *)suggestion searchBarDisplayToken];
    goto LABEL_19;
  }

  category = [(MKLocalSearchCompletion *)self->_completion category];

  completion = self->_completion;
  if (category)
  {
    title = [(MKLocalSearchCompletion *)completion category];
    displayString2 = [title displayString];
    goto LABEL_15;
  }

  if (completion)
  {
    _type = [(MKLocalSearchCompletion *)completion _type];
    autocompletePerson = self->_completion;
    if (!_type || ([autocompletePerson title], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "length"), v21, autocompletePerson = self->_completion, !v22))
    {
      displayString = [autocompletePerson queryLine];
      goto LABEL_19;
    }

    goto LABEL_33;
  }

  coreRecentContact = self->_coreRecentContact;
  if (coreRecentContact)
  {
    title = [(CRRecentContact *)coreRecentContact displayName];
    v24 = [title length];
    v25 = self->_coreRecentContact;
    if (v24)
    {
      [(CRRecentContact *)v25 displayName];
    }

    else
    {
      [(CRRecentContact *)v25 address];
    }
    displayString2 = ;
    goto LABEL_15;
  }

  address = self->_address;
  if (address)
  {
    displayString = [(AddressBookAddress *)address compositeName];
    goto LABEL_19;
  }

  autocompletePerson = self->_autocompletePerson;
  if (autocompletePerson)
  {
LABEL_33:
    displayString = [autocompletePerson title];
    goto LABEL_19;
  }

  findMyHandle = self->_findMyHandle;
  if (findMyHandle)
  {
    displayString = [(MapsFindMyHandle *)findMyHandle displayName];
    goto LABEL_19;
  }

  historyItem = self->_historyItem;
  if (!historyItem)
  {
    externalURLQuery = self->_externalURLQuery;
    if (externalURLQuery)
    {
      displayString = [(ExternalURLQuery *)externalURLQuery query];
      goto LABEL_19;
    }

    addressString = self->_addressString;
    if (!addressString)
    {
      childPlace = self->_childPlace;
      if (childPlace)
      {
        goto LABEL_68;
      }

      if (!self->_mapKitHandle)
      {
        childPlace = self->_composedWaypoint;
        if (!childPlace)
        {
          routePlanningWaypointRequest = self->_routePlanningWaypointRequest;
          if (routePlanningWaypointRequest)
          {
            title = [(RoutePlanningWaypointRequest *)routePlanningWaypointRequest waypointPlaceholder];
            name = [title name];
            v15 = name;
            if (!name)
            {
              waypointRequest = [(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest waypointRequest];
              waypointName = [waypointRequest waypointName];

              goto LABEL_27;
            }

            v16 = name;
LABEL_26:
            waypointName = v16;
LABEL_27:

            goto LABEL_16;
          }

          favoriteItem = self->_favoriteItem;
          if (favoriteItem)
          {
            displayString = [(MapsFavoriteItem *)favoriteItem shortAddress];
            goto LABEL_19;
          }

LABEL_77:
          addressString = self->_searchString;
          goto LABEL_78;
        }

LABEL_68:
        displayString = [(GEOMapItemChildPlace *)childPlace name];
        goto LABEL_19;
      }

      addressString = self->_mapKitHandleTitle;
    }

LABEL_78:
    displayString = addressString;
    goto LABEL_19;
  }

  v29 = historyItem;
  v30 = &OBJC_PROTOCOL___MSPHistoryEntrySearch;
  objc_opt_class();
  v31 = v29;
  if (objc_opt_isKindOfClass())
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  if (v33 && (-[HistoryEntryRecentsItem historyEntry](v33, "historyEntry"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 conformsToProtocol:v30], v34, v35))
  {
    v36 = v31;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    historyEntry = [(HistoryEntryRecentsItem *)v36 historyEntry];
    waypointName = [historyEntry query];

    goto LABEL_20;
  }

  v39 = self->_historyItem;
  v40 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
  objc_opt_class();
  v41 = v39;
  if (objc_opt_isKindOfClass())
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;

  if (v43 && (-[HistoryEntryRecentsItem historyEntry](v43, "historyEntry"), v44 = objc_claimAutoreleasedReturnValue(), v45 = [v44 conformsToProtocol:v40], v44, v45))
  {
    v46 = v41;
  }

  else
  {
    v46 = 0;
  }

  if (!v46)
  {
    goto LABEL_77;
  }

  historyEntry2 = [(HistoryEntryRecentsItem *)v46 historyEntry];
  geoMapItem = [historyEntry2 geoMapItem];
  waypointName = [geoMapItem name];

LABEL_20:

  return waypointName;
}

- (CLLocationCoordinate2D)coordinateHint
{
  latitude = self->_coordinateHint.latitude;
  longitude = self->_coordinateHint.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MKMapItem)mapItemIfGeocoded
{
  selfCopy = self;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1009D73B8;
  v31 = sub_1009D73C8;
  v32 = 0;
  searchResult = [(SearchFieldItem *)self searchResult];

  if (searchResult)
  {
    searchResult2 = [selfCopy searchResult];
    isDynamicCurrentLocation = [searchResult2 isDynamicCurrentLocation];
    if (isDynamicCurrentLocation)
    {
      historyEntry = +[MKLocationManager sharedLocationManager];
      if ([historyEntry hasLocation])
      {
        mapItem = +[MKMapItem mapItemForCurrentLocation];
        v10 = isDynamicCurrentLocation;
      }

      else
      {
        v10 = 0;
        mapItem = 0;
      }
    }

    else
    {
      searchResult3 = [selfCopy searchResult];
      mapItem = [searchResult3 mapItem];
      v10 = 0;
    }

    objc_storeStrong(v28 + 5, mapItem);
    if ((isDynamicCurrentLocation & 1) == 0)
    {
    }

    if (v10)
    {
    }

    if ((isDynamicCurrentLocation & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  historyItem = [selfCopy historyItem];

  if (historyItem)
  {
    searchResult2 = [selfCopy historyItem];
    historyEntry = [searchResult2 historyEntry];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1009D73D0;
    v26[3] = &unk_101661C68;
    v26[4] = &v27;
    [historyEntry ifSearch:0 ifRoute:0 ifPlaceDisplay:v26 ifTransitLineItem:0];
  }

  else
  {
    address = [selfCopy address];

    if (address)
    {
      searchResult2 = [selfCopy address];
      geocodedMapItem = [searchResult2 geocodedMapItem];
    }

    else
    {
      coreRecentContact = [selfCopy coreRecentContact];

      if (coreRecentContact)
      {
        searchResult2 = +[Recents sharedRecents];
        historyEntry = [selfCopy coreRecentContact];
        v15 = [searchResult2 cachedMapItemForContactID:{objc_msgSend(historyEntry, "contactID")}];
        v16 = v28[5];
        v28[5] = v15;

        goto LABEL_20;
      }

      completion = [selfCopy completion];

      if (completion)
      {
        searchResult2 = [selfCopy completion];
        geocodedMapItem = [searchResult2 mapItem];
      }

      else
      {
        composedWaypoint = [selfCopy composedWaypoint];

        if (composedWaypoint)
        {
          searchResult2 = [selfCopy composedWaypoint];
          historyEntry = [searchResult2 geoMapItem];
          if (historyEntry)
          {
            v23 = [MKMapItem alloc];
            selfCopy = [selfCopy composedWaypoint];
            geoMapItem = [selfCopy geoMapItem];
            v24 = [v23 initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];
          }

          else
          {
            v24 = 0;
          }

          objc_storeStrong(v28 + 5, v24);
          if (historyEntry)
          {
          }

          goto LABEL_20;
        }

        favoriteItem = [selfCopy favoriteItem];

        if (!favoriteItem)
        {
          goto LABEL_22;
        }

        searchResult2 = [selfCopy favoriteItem];
        geocodedMapItem = [searchResult2 mkMapItem];
      }
    }

    historyEntry = v28[5];
    v28[5] = geocodedMapItem;
  }

LABEL_20:

LABEL_21:
LABEL_22:
  v17 = v28[5];
  if (v17 && ([v17 _coordinate], CLLocationCoordinate2DIsValid(v34)))
  {
    v18 = v28[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  _Block_object_dispose(&v27, 8);

  return v19;
}

- (BOOL)matchesWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  searchResult = [(SearchFieldItem *)self searchResult];

  if (!searchResult)
  {
    address = [(SearchFieldItem *)self address];

    if (address)
    {
      address2 = [(SearchFieldItem *)self address];
      requestAddress = [waypointCopy requestAddress];
    }

    else
    {
      coreRecentContact = [(SearchFieldItem *)self coreRecentContact];

      if (coreRecentContact)
      {
        address2 = [(SearchFieldItem *)self coreRecentContact];
        v6Address = [address2 address];
        requestSearchString = [waypointCopy requestSearchString];
        isDynamicCurrentLocation = [v6Address isEqualToString:requestSearchString];
        goto LABEL_12;
      }

      completion = [(SearchFieldItem *)self completion];

      if (!completion)
      {
        externalURLQuery = [(SearchFieldItem *)self externalURLQuery];

        if (!externalURLQuery)
        {
          address2 = [(SearchFieldItem *)self searchString];
          if (![address2 length])
          {
            v8 = 0;
            goto LABEL_15;
          }

          completedQuery = [(SearchFieldItem *)self completedQuery];

          v6Address = [waypointCopy requestSearchString];
          v19 = [address2 isEqualToString:v6Address];
          if (completedQuery)
          {
            if (v19)
            {
              requestSearchString = [(SearchFieldItem *)self completedQuery];
              suggestionsPrefix = [waypointCopy suggestionsPrefix];
              v8 = [requestSearchString isEqualToString:suggestionsPrefix];

              goto LABEL_13;
            }
          }

          else if (v19)
          {
            requestSearchString = [waypointCopy suggestionsPrefix];
            v8 = requestSearchString == 0;
            goto LABEL_13;
          }

          v8 = 0;
          goto LABEL_14;
        }

        address2 = [(SearchFieldItem *)self externalURLQuery];
        v6Address = [waypointCopy externalURLQuery];
        v13 = [address2 isEqualToExternalURLQuery:v6Address];
        goto LABEL_8;
      }

      address2 = [(SearchFieldItem *)self completion];
      requestAddress = [waypointCopy completion];
    }

    v6Address = requestAddress;
    v13 = [address2 isEqual:requestAddress];
LABEL_8:
    v8 = v13;
    goto LABEL_14;
  }

  address2 = [(SearchFieldItem *)self searchResult];
  v6Address = [waypointCopy requestSearch];
  v8 = 1;
  if (([address2 isEqualToSearchResult:v6Address forPurpose:1] & 1) == 0)
  {
    requestSearchString = [(SearchFieldItem *)self searchResult];
    if (![requestSearchString isDynamicCurrentLocation])
    {
      v8 = 0;
LABEL_13:

      goto LABEL_14;
    }

    isDynamicCurrentLocation = [waypointCopy isDynamicCurrentLocation];
LABEL_12:
    v8 = isDynamicCurrentLocation;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
  return v8;
}

- (DirectionsWaypoint)personalizedDirectionsWaypoint
{
  mapItemIfGeocoded = [(SearchFieldItem *)self mapItemIfGeocoded];

  if (mapItemIfGeocoded)
  {
    waypoint = [(SearchFieldItem *)self waypoint];
  }

  else
  {
    waypoint = 0;
  }

  return waypoint;
}

- (DirectionsWaypoint)waypoint
{
  v3 = objc_alloc_init(DirectionsWaypoint);
  searchResult = [(SearchFieldItem *)self searchResult];
  if (!searchResult)
  {
    address = [(SearchFieldItem *)self address];

    if (address)
    {
      address2 = [(SearchFieldItem *)self address];
      [(DirectionsWaypoint *)v3 setRequestAddress:address2];
      goto LABEL_18;
    }

    coreRecentContact = [(SearchFieldItem *)self coreRecentContact];

    if (coreRecentContact)
    {
      address2 = [(SearchFieldItem *)self coreRecentContact];
      v5Address = [address2 address];
      [(DirectionsWaypoint *)v3 setRequestSearchString:v5Address];
    }

    else
    {
      completion = [(SearchFieldItem *)self completion];

      if (completion)
      {
        address2 = [(SearchFieldItem *)self completion];
        [(DirectionsWaypoint *)v3 setCompletion:address2];
        goto LABEL_18;
      }

      externalURLQuery = [(SearchFieldItem *)self externalURLQuery];

      if (externalURLQuery)
      {
        address2 = [(SearchFieldItem *)self externalURLQuery];
        [(DirectionsWaypoint *)v3 setExternalURLQuery:address2];
        goto LABEL_18;
      }

      routePlanningWaypointRequest = [(SearchFieldItem *)self routePlanningWaypointRequest];
      if (!routePlanningWaypointRequest || (v13 = routePlanningWaypointRequest, -[SearchFieldItem routePlanningWaypointRequest](self, "routePlanningWaypointRequest"), v14 = objc_claimAutoreleasedReturnValue(), [v14 waypointRequest], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "mapItemForLocationComparison"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v13, !v16))
      {
        searchString = [(SearchFieldItem *)self searchString];
        [(DirectionsWaypoint *)v3 setRequestSearchString:searchString];

        address2 = [(SearchFieldItem *)self completedQuery];
        [(DirectionsWaypoint *)v3 setSuggestionsPrefix:address2];
        goto LABEL_18;
      }

      routePlanningWaypointRequest2 = [(SearchFieldItem *)self routePlanningWaypointRequest];
      waypointRequest = [routePlanningWaypointRequest2 waypointRequest];
      address2 = [waypointRequest mapItemForLocationComparison];

      v5Address = [[SearchResult alloc] initWithMapItem:address2];
      [(DirectionsWaypoint *)v3 setRequestSearch:v5Address];
    }

    goto LABEL_18;
  }

  address2 = searchResult;
  if ([searchResult type] == 4)
  {
    v6 = +[SearchResult currentLocationSearchResult];

    address2 = v6;
  }

  [(DirectionsWaypoint *)v3 setRequestSearch:address2];
LABEL_18:

  composedWaypoint = [(SearchFieldItem *)self composedWaypoint];

  if (composedWaypoint)
  {
    composedWaypoint2 = [(SearchFieldItem *)self composedWaypoint];
    [(DirectionsWaypoint *)v3 updateFromGEOComposedWaypoint:composedWaypoint2];
  }

  return v3;
}

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  blockCopy = block;
  blockCopy2 = block;
  title = [(SearchFieldItem *)self title];
  v6 = blockCopy[2];
  blockCopy += 2;
  v6(blockCopy2, @"title", title);

  (*blockCopy)(blockCopy2, @"searchString", self->_searchString);
  (*blockCopy)(blockCopy2, @"searchResult", self->_searchResult);
  (*blockCopy)(blockCopy2, @"completion", &self->_completion->super.isa);
  (*blockCopy)(blockCopy2, @"addressBookAddress", self->_address);
  (*blockCopy)(blockCopy2, @"searchCategory", self->_searchCategory);
  (*blockCopy)(blockCopy2, @"venueCategoryItem", &self->_venueCategoryItem->super.isa);
  (*blockCopy)(blockCopy2, @"placeCategoryItem", &self->_placeCategoryItem->super.isa);
  (*blockCopy)(blockCopy2, @"historyItem", &self->_historyItem->super.isa);
  (*blockCopy)(blockCopy2, @"coreRecentContact", self->_coreRecentContact);
  (*blockCopy)(blockCopy2, @"addressString", self->_addressString);
  (*blockCopy)(blockCopy2, @"childPlace", self->_childPlace);
  (*blockCopy)(blockCopy2, @"routePlanningWaypointRequest", &self->_routePlanningWaypointRequest->super.isa);
  (*blockCopy)(blockCopy2, @"suggestion", self->_suggestion);
  shortDescription = [(GEOComposedWaypoint *)self->_composedWaypoint shortDescription];
  (*blockCopy)(blockCopy2, @"composedWaypoint", shortDescription);

  v8 = [(MapsAutocompletePerson *)self->_autocompletePerson description];
  (*blockCopy)(blockCopy2, @"autocompletePerson", v8);

  (*blockCopy)(blockCopy2, @"favoriteItem", self->_favoriteItem);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1009D7DE0;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(SearchFieldItem *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(SearchFieldItem *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:@"\n"];
  v12 = [NSString stringWithFormat:@"%@ {\n%@\n}", v10, v11];

  return v12;
}

- (NSString)description
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1009D8030;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(SearchFieldItem *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(SearchFieldItem *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"%@ (%@)", v10, v11];

  return v12;
}

- (GEOComposedWaypointEVStop)evStopWaypoint
{
  composedWaypoint = [(SearchFieldItem *)self composedWaypoint];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = composedWaypoint;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)behavesAsAtom
{
  if ([(SearchResult *)self->_searchResult behavesAsAtom]|| self->_searchCategory || self->_address || self->_coreRecentContact)
  {
    return 1;
  }

  v5 = self->_historyItem;
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

  if (v9 && (-[HistoryEntryRecentsItem historyEntry](v9, "historyEntry"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 conformsToProtocol:v6], v10, v11))
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v3 = 1;
  }

  else
  {
    v3 = self->_routePlanningWaypointRequest != 0;
  }

  return v3;
}

- (NSString)personalizedAddressName
{
  searchString = [(SearchFieldItem *)self searchString];
  searchResult = [(SearchFieldItem *)self searchResult];
  name = [searchResult name];

  if (name)
  {
    searchResult2 = [(SearchFieldItem *)self searchResult];
    name2 = [searchResult2 name];

    searchString = name2;
  }

  address = [(SearchFieldItem *)self address];

  if (address)
  {
    address2 = [(SearchFieldItem *)self address];
    v10 = +[AddressBookManager sharedManager];
    meCardHomeAddress = [v10 meCardHomeAddress];

    if (address2 == meCardHomeAddress)
    {
      v18 = @"Home";
    }

    else
    {
      address3 = [(SearchFieldItem *)self address];
      v13 = +[AddressBookManager sharedManager];
      meCardWorkAddress = [v13 meCardWorkAddress];

      if (address3 == meCardWorkAddress)
      {
        v18 = @"Work";
      }

      else
      {
        address4 = [(SearchFieldItem *)self address];
        v16 = +[AddressBookManager sharedManager];
        meCardSchoolAddress = [v16 meCardSchoolAddress];

        if (address4 != meCardSchoolAddress)
        {
          goto LABEL_11;
        }

        v18 = @"School";
      }
    }

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:v18 value:@"localized string not found" table:0];

    searchString = v20;
  }

LABEL_11:

  return searchString;
}

- (GEOSearchCategory)currentCategory
{
  searchCategory = self->_searchCategory;
  if (searchCategory)
  {
    category = searchCategory;
  }

  else
  {
    category = [(MKLocalSearchCompletion *)self->_completion category];
  }

  return category;
}

- (void)setFavoriteItem:(id)item
{
  itemCopy = item;
  favoriteItem = self->_favoriteItem;
  v10 = itemCopy;
  v7 = favoriteItem;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      [(SearchFieldItem *)self clear];
      objc_storeStrong(&self->_favoriteItem, item);
      v8 = v10;
    }
  }
}

- (void)setPunchInDetails:(id)details searchString:(id)string
{
  detailsCopy = details;
  stringCopy = string;
  if (self->_punchInDetails != detailsCopy || self->_searchString != stringCopy)
  {
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_punchInDetails, details);
    objc_storeStrong(&self->_searchString, string);
  }
}

- (void)setFindMyHandle:(id)handle
{
  handleCopy = handle;
  findMyHandle = self->_findMyHandle;
  v10 = handleCopy;
  v7 = findMyHandle;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      [(SearchFieldItem *)self clear];
      objc_storeStrong(&self->_findMyHandle, handle);
      v8 = v10;
    }
  }
}

- (void)setAutocompletePerson:(id)person
{
  personCopy = person;
  if (self->_autocompletePerson != personCopy)
  {
    v6 = personCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_autocompletePerson, person);
    personCopy = v6;
  }
}

- (void)setComposedWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  composedWaypoint = self->_composedWaypoint;
  v17 = waypointCopy;
  v7 = composedWaypoint;
  if (v17 | v7)
  {
    v8 = [v17 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [(SearchFieldItem *)self clear];
      objc_storeStrong(&self->_composedWaypoint, waypoint);
      latLng = [v17 latLng];

      if (latLng)
      {
        latLng2 = [v17 latLng];
        latLng = self->_latLng;
        self->_latLng = latLng2;
      }

      else
      {
        [v17 coordinate];
        if (v12 != -180.0)
        {
          [v17 coordinate];
          if (v13 != -180.0)
          {
            v14 = objc_alloc_init(GEOLatLng);
            v15 = self->_latLng;
            self->_latLng = v14;

            [v17 coordinate];
            [(GEOLatLng *)self->_latLng setLat:?];
            [v17 coordinate];
            [(GEOLatLng *)self->_latLng setLng:v16];
          }
        }
      }
    }
  }
}

- (void)setRoutePlanningWaypointRequest:(id)request
{
  requestCopy = request;
  routePlanningWaypointRequest = self->_routePlanningWaypointRequest;
  if (routePlanningWaypointRequest != requestCopy)
  {
    v13 = requestCopy;
    v7 = [(RoutePlanningWaypointRequest *)routePlanningWaypointRequest isEqual:requestCopy];
    requestCopy = v13;
    if ((v7 & 1) == 0)
    {
      [(SearchFieldItem *)self clear];
      objc_storeStrong(&self->_routePlanningWaypointRequest, request);
      v8 = objc_alloc_init(GEOLatLng);
      latLng = self->_latLng;
      self->_latLng = v8;

      waypointRequest = [(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest waypointRequest];
      [waypointRequest coordinate];
      [(GEOLatLng *)self->_latLng setLat:?];

      waypointRequest2 = [(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest waypointRequest];
      [waypointRequest2 coordinate];
      [(GEOLatLng *)self->_latLng setLng:v12];

      requestCopy = v13;
    }
  }
}

- (void)setMapKitHandle:(id)handle
{
  if (self->_mapKitHandle != handle)
  {
    handleCopy = handle;
    [(SearchFieldItem *)self clear];
    v6 = [handleCopy copy];

    mapKitHandle = self->_mapKitHandle;
    self->_mapKitHandle = v6;
  }
}

- (void)setChildPlace:(id)place
{
  placeCopy = place;
  if (self->_childPlace != placeCopy)
  {
    v11 = placeCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_childPlace, place);
    v6 = objc_alloc_init(GEOLatLng);
    latLng = self->_latLng;
    self->_latLng = v6;

    identifier = [(GEOMapItemChildPlace *)v11 identifier];
    [identifier coordinate];
    [(GEOLatLng *)self->_latLng setLat:?];

    identifier2 = [(GEOMapItemChildPlace *)v11 identifier];
    [identifier2 coordinate];
    [(GEOLatLng *)self->_latLng setLng:v10];

    placeCopy = v11;
  }
}

- (void)setExternalURLQuery:(id)query
{
  queryCopy = query;
  if (self->_externalURLQuery != queryCopy)
  {
    v6 = queryCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_externalURLQuery, query);
    queryCopy = v6;
  }
}

- (void)setHistoryItem:(id)item
{
  itemCopy = item;
  if (self->_historyItem != itemCopy)
  {
    v6 = itemCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_historyItem, item);
    itemCopy = v6;
  }
}

- (void)setAddress:(id)address
{
  addressCopy = address;
  if (self->_address != addressCopy)
  {
    v10 = addressCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_address, address);
    geocodedMapItem = [(AddressBookAddress *)v10 geocodedMapItem];
    place = [geocodedMapItem place];
    center = [place center];
    latLng = self->_latLng;
    self->_latLng = center;

    addressCopy = v10;
  }
}

- (void)setCoreRecentContact:(id)contact
{
  contactCopy = contact;
  coreRecentContact = self->_coreRecentContact;
  v6 = contactCopy;
  v11 = v6;
  if (coreRecentContact == v6)
  {
    goto LABEL_7;
  }

  v7 = coreRecentContact;
  contactID = [v11 contactID];
  contactID2 = [v7 contactID];

  if (contactID != contactID2)
  {

    goto LABEL_6;
  }

  if (!(v11 | v7))
  {
LABEL_6:
    [(SearchFieldItem *)self clear];
    v10 = v11;
    v6 = self->_coreRecentContact;
    self->_coreRecentContact = v10;
LABEL_7:
  }
}

- (void)setUserTypedStringForRAP:(id)p
{
  if (self->_userTypedStringForRAP != p)
  {
    v5 = [p copy];
    userTypedStringForRAP = self->_userTypedStringForRAP;
    self->_userTypedStringForRAP = v5;
  }
}

- (void)setCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_completion != completionCopy)
  {
    v10 = completionCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_completion, completion);
    mapItem = [(MKLocalSearchCompletion *)v10 mapItem];
    place = [mapItem place];
    center = [place center];
    latLng = self->_latLng;
    self->_latLng = center;

    completionCopy = v10;
  }
}

- (void)setSearchResult:(id)result
{
  resultCopy = result;
  if (!resultCopy || self->_searchResult != resultCopy)
  {
    v9 = resultCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_searchResult, result);
    v6 = objc_alloc_init(GEOLatLng);
    latLng = self->_latLng;
    self->_latLng = v6;

    [(SearchResult *)v9 coordinate];
    [(GEOLatLng *)self->_latLng setLat:?];
    [(SearchResult *)v9 coordinate];
    [(GEOLatLng *)self->_latLng setLng:v8];
    resultCopy = v9;
  }
}

- (void)setSearchString:(id)string forCompletedQuery:(id)query
{
  stringCopy = string;
  queryCopy = query;
  if (!stringCopy || self->_searchString != stringCopy || self->_completedQuery != queryCopy)
  {
    [(SearchFieldItem *)self clear];
    v7 = [(NSString *)stringCopy copy];
    searchString = self->_searchString;
    self->_searchString = v7;

    v9 = [(NSString *)queryCopy copy];
    completedQuery = self->_completedQuery;
    self->_completedQuery = v9;
  }
}

- (void)setSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (!suggestionCopy || self->_suggestion != suggestionCopy)
  {
    v6 = suggestionCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_suggestion, suggestion);
    suggestionCopy = v6;
  }
}

- (void)setPlaceCategoryItem:(id)item
{
  itemCopy = item;
  if (!itemCopy || self->_placeCategoryItem != itemCopy)
  {
    v6 = itemCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_placeCategoryItem, item);
    itemCopy = v6;
  }
}

- (void)setVenueCategoryItem:(id)item
{
  itemCopy = item;
  if (!itemCopy || self->_venueCategoryItem != itemCopy)
  {
    v6 = itemCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_venueCategoryItem, item);
    itemCopy = v6;
  }
}

- (void)setSearchCategory:(id)category
{
  categoryCopy = category;
  if (!categoryCopy || self->_searchCategory != categoryCopy)
  {
    v6 = categoryCopy;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_searchCategory, category);
    categoryCopy = v6;
  }
}

- (void)setAddressString:(id)string
{
  stringCopy = string;
  if (!stringCopy || self->_addressString != stringCopy)
  {
    v7 = stringCopy;
    [(SearchFieldItem *)self clear];
    v5 = [(NSString *)v7 copy];
    addressString = self->_addressString;
    self->_addressString = v5;

    stringCopy = v7;
  }
}

- (void)setSearchString:(id)string
{
  stringCopy = string;
  if (!stringCopy || self->_searchString != stringCopy)
  {
    v7 = stringCopy;
    [(SearchFieldItem *)self clear];
    v5 = [(NSString *)v7 copy];
    searchString = self->_searchString;
    self->_searchString = v5;

    stringCopy = v7;
  }
}

- (BOOL)isEquivalentAsWaypointToSearchFieldItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_7;
  }

  autocompletePerson = [(SearchFieldItem *)self autocompletePerson];
  autocompletePerson2 = [itemCopy autocompletePerson];
  evStopWaypoint3 = autocompletePerson2;
  if (autocompletePerson && autocompletePerson2)
  {
    goto LABEL_4;
  }

  if (autocompletePerson | evStopWaypoint3)
  {
    goto LABEL_7;
  }

  autocompletePerson = [(SearchFieldItem *)self findMyHandle];
  findMyHandle = [itemCopy findMyHandle];
  evStopWaypoint3 = findMyHandle;
  if (autocompletePerson && findMyHandle)
  {
LABEL_4:
    IsEqualToMapItemForPurpose = [autocompletePerson isEqual:evStopWaypoint3];
LABEL_5:

    goto LABEL_8;
  }

  if (autocompletePerson | evStopWaypoint3)
  {
LABEL_7:
    IsEqualToMapItemForPurpose = 0;
    goto LABEL_8;
  }

  if ([(SearchFieldItem *)self isEqualToSearchFieldItem:itemCopy])
  {
    IsEqualToMapItemForPurpose = 1;
    goto LABEL_8;
  }

  searchResult = self->_searchResult;
  if (searchResult)
  {
    v12 = itemCopy[6];
    if (v12)
    {
      v13 = [(SearchResult *)searchResult isEqualToSearchResult:v12 forPurpose:1];
LABEL_17:
      IsEqualToMapItemForPurpose = v13;
      goto LABEL_8;
    }
  }

  historyItem = self->_historyItem;
  if (!historyItem || !itemCopy[12] || ((v52 = 0, v53 = &v52, v54 = 0x3032000000, v55 = sub_1009D73B8, v56 = sub_1009D73C8, v57 = 0, v46 = 0, v47 = &v46, v48 = 0x3032000000, v49 = sub_1009D73B8, v50 = sub_1009D73C8, v51 = 0, -[HistoryEntryRecentsItem historyEntry](historyItem, "historyEntry"), v15 = objc_claimAutoreleasedReturnValue(), v45[0] = _NSConcreteStackBlock, v45[1] = 3221225472, v45[2] = sub_1009D9898, v45[3] = &unk_101661C68, v45[4] = &v52, [v15 ifSearch:0 ifRoute:0 ifPlaceDisplay:v45 ifTransitLineItem:0], v15, objc_msgSend(itemCopy[12], "historyEntry"), v16 = objc_claimAutoreleasedReturnValue(), v44[0] = _NSConcreteStackBlock, v44[1] = 3221225472, v44[2] = sub_1009D98E4, v44[3] = &unk_101661C68, v44[4] = &v46, objc_msgSend(v16, "ifSearch:ifRoute:ifPlaceDisplay:ifTransitLineItem:", 0, 0, v44, 0), v16, !v53[5]) || !v47[5] ? (IsEqualToMapItemForPurpose = 0, v17 = 1) : (IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose(), v17 = 0), _Block_object_dispose(&v46, 8), v51, _Block_object_dispose(&v52, 8), v57, v17))
  {
    routePlanningWaypointRequest = self->_routePlanningWaypointRequest;
    if (routePlanningWaypointRequest && itemCopy[22])
    {
      waypointRequest = [(RoutePlanningWaypointRequest *)routePlanningWaypointRequest waypointRequest];
      waypointRequest2 = [itemCopy[22] waypointRequest];
      waypoint = waypointRequest;
      v22 = waypointRequest2;
      waypoint2 = v22;
      IsEqualToMapItemForPurpose = 0;
      if (waypoint && v22)
      {
        if (waypoint == v22 || [waypoint isCurrentLocation] && (objc_msgSend(waypoint2, "isCurrentLocation") & 1) != 0 || (objc_msgSend(waypoint, "coordinate"), v34 = v33, v36 = v35, objc_msgSend(waypoint2, "coordinate"), v38 = v37, v40 = v39, v58.latitude = v34, v58.longitude = v36, CLLocationCoordinate2DIsValid(v58)) && (v59.latitude = v38, v59.longitude = v40, CLLocationCoordinate2DIsValid(v59)) && vabdd_f64(v34, v38) < 0.00000000999999994 && vabdd_f64(v36, v40) < 0.00000000999999994)
        {
          IsEqualToMapItemForPurpose = 1;
        }

        else
        {
          mapItemForLocationComparison = [waypoint mapItemForLocationComparison];
          mapItemForLocationComparison2 = [waypoint2 mapItemForLocationComparison];
          v43 = mapItemForLocationComparison2;
          IsEqualToMapItemForPurpose = mapItemForLocationComparison && mapItemForLocationComparison2 && ([mapItemForLocationComparison _isEquivalentURLRepresentationTo:mapItemForLocationComparison2] & 1) != 0;
        }
      }
    }

    else
    {
      evStopWaypoint = [(SearchFieldItem *)self evStopWaypoint];
      if (evStopWaypoint)
      {
        v25 = evStopWaypoint;
        evStopWaypoint2 = [itemCopy evStopWaypoint];

        if (evStopWaypoint2)
        {
          autocompletePerson = [(SearchFieldItem *)self evStopWaypoint];
          muid = [autocompletePerson muid];
          evStopWaypoint3 = [itemCopy evStopWaypoint];
          if (muid == [evStopWaypoint3 muid])
          {
            evStopWaypoint4 = [(SearchFieldItem *)self evStopWaypoint];
            latLng = [evStopWaypoint4 latLng];
            evStopWaypoint5 = [itemCopy evStopWaypoint];
            latLng2 = [evStopWaypoint5 latLng];
            if (latLng | latLng2)
            {
              IsEqualToMapItemForPurpose = [latLng isEqual:latLng2];
            }

            else
            {
              IsEqualToMapItemForPurpose = 1;
            }
          }

          else
          {
            IsEqualToMapItemForPurpose = 0;
          }

          goto LABEL_5;
        }
      }

      composedWaypoint = self->_composedWaypoint;
      if (composedWaypoint && itemCopy[23])
      {
        v13 = [(GEOComposedWaypoint *)composedWaypoint isEqual:?];
        goto LABEL_17;
      }

      waypoint = [(SearchFieldItem *)self waypoint];
      waypoint2 = [itemCopy waypoint];
      if ([waypoint isValid] && objc_msgSend(waypoint2, "isValid"))
      {
        IsEqualToMapItemForPurpose = [waypoint isEqual:waypoint2];
      }

      else
      {
        IsEqualToMapItemForPurpose = 0;
      }
    }
  }

LABEL_8:

  return IsEqualToMapItemForPurpose;
}

- (BOOL)isEqualToSearchFieldItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    goto LABEL_83;
  }

  if (itemCopy != self)
  {
    if (![(NSString *)self->_searchString isEqualToString:itemCopy->_searchString]&& (self->_searchString || v5->_searchString) || ![(SearchResult *)self->_searchResult isEqual:v5->_searchResult]&& (self->_searchResult || v5->_searchResult) || ([(MKLocalSearchCompletion *)self->_completion isEqual:v5->_completion]& 1) == 0 && (self->_completion || v5->_completion) || ![(NSString *)self->_userTypedStringForRAP isEqualToString:v5->_userTypedStringForRAP]&& (self->_userTypedStringForRAP || v5->_userTypedStringForRAP) || ([(GEORetainedSearchMetadata *)self->_retainedSearchMetadata isEqual:v5->_retainedSearchMetadata]& 1) == 0 && (self->_retainedSearchMetadata || v5->_retainedSearchMetadata) || ([(NSString *)self->_completedQuery isEqual:v5->_completedQuery]& 1) == 0 && (self->_completedQuery || v5->_completedQuery) || ![(AddressBookAddress *)self->_address isEqual:v5->_address]&& (self->_address || v5->_address) || ![(MapsFindMyHandle *)self->_findMyHandle isEqual:v5->_findMyHandle]&& (self->_findMyHandle || v5->_findMyHandle) || ![(MapsAutocompletePerson *)self->_autocompletePerson isEqual:v5->_autocompletePerson]&& (self->_autocompletePerson || v5->_autocompletePerson) || ([(GEOSearchCategory *)self->_searchCategory isEqual:v5->_searchCategory]& 1) == 0 && (self->_searchCategory || v5->_searchCategory) || ![(VenueCategoryItem *)self->_venueCategoryItem isEqual:v5->_venueCategoryItem]&& (self->_venueCategoryItem || v5->_venueCategoryItem) || ([(PlaceCategoryItem *)self->_placeCategoryItem isEqual:v5->_placeCategoryItem]& 1) == 0 && (self->_placeCategoryItem || v5->_placeCategoryItem) || ([(GEORelatedSearchSuggestion *)self->_suggestion isEqual:v5->_suggestion]& 1) == 0 && (self->_suggestion || v5->_suggestion) || ![(HistoryEntryRecentsItem *)self->_historyItem isEqual:v5->_historyItem]&& (self->_historyItem || v5->_historyItem) || ![(ExternalURLQuery *)self->_externalURLQuery isEqualToExternalURLQuery:v5->_externalURLQuery]&& (self->_externalURLQuery || v5->_externalURLQuery) || ([(GEOMapItemChildPlace *)self->_childPlace isEqual:v5->_childPlace]& 1) == 0 && (self->_childPlace || v5->_childPlace) || ([(NSData *)self->_mapKitHandle isEqual:v5->_mapKitHandle]& 1) == 0 && (self->_mapKitHandle || v5->_mapKitHandle) || ![(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest isEqual:v5->_routePlanningWaypointRequest]&& (self->_routePlanningWaypointRequest || v5->_routePlanningWaypointRequest) || ([(GEOComposedWaypoint *)self->_composedWaypoint isEqual:v5->_composedWaypoint]& 1) == 0 && (self->_composedWaypoint || v5->_composedWaypoint))
    {
      goto LABEL_83;
    }

    coreRecentContact = v5->_coreRecentContact;
    v7 = self->_coreRecentContact;
    punchInDetails = v7;
    if (v7 == coreRecentContact)
    {

      goto LABEL_86;
    }

    v9 = coreRecentContact;
    contactID = [punchInDetails contactID];
    contactID2 = [v9 contactID];

    if (contactID != contactID2)
    {
      goto LABEL_91;
    }

    if (punchInDetails | v9)
    {
LABEL_86:
      punchInDetails = self->_punchInDetails;
      punchInDetails = [(SearchFieldItem *)v5 punchInDetails];
      if (([(GEOSpotlightSearchPunchIn *)punchInDetails isEqual:punchInDetails]& 1) != 0 || !self->_punchInDetails && !v5->_punchInDetails)
      {
        favoriteItem = self->_favoriteItem;
        favoriteItem = [(SearchFieldItem *)v5 favoriteItem];
        if (([(MapsFavoriteItem *)favoriteItem isEqual:favoriteItem]& 1) != 0)
        {
          v12 = 1;
        }

        else if (self->_favoriteItem)
        {
          v12 = 0;
        }

        else
        {
          v12 = v5->_favoriteItem == 0;
        }

        goto LABEL_96;
      }

LABEL_91:
      v12 = 0;
LABEL_96:

      goto LABEL_84;
    }

LABEL_83:
    v12 = 0;
    goto LABEL_84;
  }

  v12 = 1;
LABEL_84:

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SearchFieldItem *)self isEqualToSearchFieldItem:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_searchString copyWithZone:zone];
  v7 = *(v5 + 3);
  *(v5 + 3) = v6;

  objc_storeStrong(v5 + 6, self->_searchResult);
  objc_storeStrong(v5 + 7, self->_completion);
  v8 = [(NSString *)self->_userTypedStringForRAP copyWithZone:zone];
  v9 = *(v5 + 27);
  *(v5 + 27) = v8;

  v10 = [(GEORetainedSearchMetadata *)self->_retainedSearchMetadata copyWithZone:zone];
  v11 = *(v5 + 28);
  *(v5 + 28) = v10;

  v12 = [(NSString *)self->_completedQuery copyWithZone:zone];
  v13 = *(v5 + 5);
  *(v5 + 5) = v12;

  objc_storeStrong(v5 + 8, self->_address);
  objc_storeStrong(v5 + 9, self->_searchCategory);
  objc_storeStrong(v5 + 10, self->_venueCategoryItem);
  objc_storeStrong(v5 + 11, self->_placeCategoryItem);
  objc_storeStrong(v5 + 16, self->_suggestion);
  objc_storeStrong(v5 + 12, self->_historyItem);
  objc_storeStrong(v5 + 13, self->_coreRecentContact);
  objc_storeStrong(v5 + 17, self->_externalURLQuery);
  objc_storeStrong(v5 + 19, self->_childPlace);
  v14 = [(NSData *)self->_mapKitHandle copy];
  v15 = *(v5 + 20);
  *(v5 + 20) = v14;

  v16 = [(NSString *)self->_mapKitHandleTitle copy];
  v17 = *(v5 + 21);
  *(v5 + 21) = v16;

  v18 = [(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest copy];
  v19 = *(v5 + 22);
  *(v5 + 22) = v18;

  objc_storeStrong(v5 + 23, self->_composedWaypoint);
  v20 = [(GEOLatLng *)self->_latLng copy];
  v21 = *(v5 + 4);
  *(v5 + 4) = v20;

  v22 = [(GEOSpotlightSearchPunchIn *)self->_punchInDetails copy];
  v23 = *(v5 + 1);
  *(v5 + 1) = v22;

  v24 = [(MapsAutocompletePerson *)self->_autocompletePerson copy];
  v25 = *(v5 + 24);
  *(v5 + 24) = v24;

  v26 = [(MapsFindMyHandle *)self->_findMyHandle copy];
  v27 = *(v5 + 25);
  *(v5 + 25) = v26;

  v28 = [(MapsFavoriteItem *)self->_favoriteItem copy];
  v29 = *(v5 + 26);
  *(v5 + 26) = v28;

  return v5;
}

- (void)clear
{
  addressString = self->_addressString;
  self->_addressString = 0;

  coreRecentContact = self->_coreRecentContact;
  self->_coreRecentContact = 0;

  searchResult = self->_searchResult;
  self->_searchResult = 0;

  searchCategory = self->_searchCategory;
  self->_searchCategory = 0;

  suggestion = self->_suggestion;
  self->_suggestion = 0;

  searchString = self->_searchString;
  self->_searchString = 0;

  completedQuery = self->_completedQuery;
  self->_completedQuery = 0;

  completion = self->_completion;
  self->_completion = 0;

  userTypedStringForRAP = self->_userTypedStringForRAP;
  self->_userTypedStringForRAP = 0;

  retainedSearchMetadata = self->_retainedSearchMetadata;
  self->_retainedSearchMetadata = 0;

  address = self->_address;
  self->_address = 0;

  autocompletePerson = self->_autocompletePerson;
  self->_autocompletePerson = 0;

  findMyHandle = self->_findMyHandle;
  self->_findMyHandle = 0;

  historyItem = self->_historyItem;
  self->_historyItem = 0;

  externalURLQuery = self->_externalURLQuery;
  self->_externalURLQuery = 0;

  venueCategoryItem = self->_venueCategoryItem;
  self->_venueCategoryItem = 0;

  placeCategoryItem = self->_placeCategoryItem;
  self->_placeCategoryItem = 0;

  childPlace = self->_childPlace;
  self->_childPlace = 0;

  mapKitHandle = self->_mapKitHandle;
  self->_mapKitHandle = 0;

  mapKitHandleTitle = self->_mapKitHandleTitle;
  self->_mapKitHandleTitle = 0;

  routePlanningWaypointRequest = self->_routePlanningWaypointRequest;
  self->_routePlanningWaypointRequest = 0;

  composedWaypoint = self->_composedWaypoint;
  self->_composedWaypoint = 0;

  latLng = self->_latLng;
  self->_latLng = 0;

  punchInDetails = self->_punchInDetails;
  self->_punchInDetails = 0;

  favoriteItem = self->_favoriteItem;
  self->_favoriteItem = 0;
}

- (void)dealloc
{
  [(SearchFieldItem *)self clear];
  v3.receiver = self;
  v3.super_class = SearchFieldItem;
  [(SearchFieldItem *)&v3 dealloc];
}

- (id)waypointIconWithScale:(double)scale
{
  searchResult = [(SearchFieldItem *)self searchResult];
  isDynamicCurrentLocation = [searchResult isDynamicCurrentLocation];

  if (isDynamicCurrentLocation)
  {
    v7 = +[GEOFeatureStyleAttributes currentLocationStyleAttributes];
    v8 = [MKIconManager imageForStyle:v7 size:0 forScale:0 format:scale];

    if (v8)
    {
      goto LABEL_59;
    }
  }

  composedWaypoint = [(SearchFieldItem *)self composedWaypoint];
  findMyHandleID = [composedWaypoint findMyHandleID];
  if (findMyHandleID)
  {
    v11 = findMyHandleID;
    routePlanningWaypointRequest = [(SearchFieldItem *)self routePlanningWaypointRequest];

    if (routePlanningWaypointRequest)
    {
      routePlanningWaypointRequest2 = [(SearchFieldItem *)self routePlanningWaypointRequest];
      waypointRequest = [routePlanningWaypointRequest2 waypointRequest];
      v8 = [waypointRequest waypointIconWithScale:scale];

      if (v8)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
  }

  composedWaypoint2 = [(SearchFieldItem *)self composedWaypoint];
  addressBookAddress = [composedWaypoint2 addressBookAddress];
  if (addressBookAddress)
  {
    v17 = addressBookAddress;
    routePlanningWaypointRequest3 = [(SearchFieldItem *)self routePlanningWaypointRequest];

    if (routePlanningWaypointRequest3)
    {
      routePlanningWaypointRequest4 = [(SearchFieldItem *)self routePlanningWaypointRequest];
      waypointRequest2 = [routePlanningWaypointRequest4 waypointRequest];
      v8 = [waypointRequest2 waypointIconWithScale:scale];

      if (v8)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
  }

  composedWaypoint3 = [(SearchFieldItem *)self composedWaypoint];
  if (composedWaypoint3)
  {
    v22 = composedWaypoint3;
    composedWaypoint4 = [(SearchFieldItem *)self composedWaypoint];
    styleAttributes = [composedWaypoint4 styleAttributes];

    if (styleAttributes)
    {
      composedWaypoint5 = [(SearchFieldItem *)self composedWaypoint];
      styleAttributes2 = [composedWaypoint5 styleAttributes];
      v8 = [(SearchFieldItem *)self _iconWithStyleAttributes:styleAttributes2 scale:scale];

      if (v8)
      {
        goto LABEL_59;
      }
    }
  }

  mapItemIfGeocoded = [(SearchFieldItem *)self mapItemIfGeocoded];

  if (mapItemIfGeocoded)
  {
    mapItemIfGeocoded2 = [(SearchFieldItem *)self mapItemIfGeocoded];
    v8 = [MKMapItem _maps_markerImageForMapItem:mapItemIfGeocoded2 scale:2 size:0 useMarkerFallback:scale];

    if (v8)
    {
      goto LABEL_59;
    }
  }

  routePlanningWaypointRequest5 = [(SearchFieldItem *)self routePlanningWaypointRequest];

  if (routePlanningWaypointRequest5)
  {
    routePlanningWaypointRequest6 = [(SearchFieldItem *)self routePlanningWaypointRequest];
    waypointRequest3 = [routePlanningWaypointRequest6 waypointRequest];
    v8 = [waypointRequest3 waypointIconWithScale:scale];

    if (v8)
    {
      goto LABEL_59;
    }
  }

  evStopWaypoint = [(SearchFieldItem *)self evStopWaypoint];

  if (evStopWaypoint)
  {
    v33 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    v8 = [MKIconManager imageForStyle:v33 size:2 forScale:0 format:scale];

    if (v8)
    {
      goto LABEL_59;
    }
  }

  completion = [(SearchFieldItem *)self completion];

  if (completion)
  {
    completion2 = [(SearchFieldItem *)self completion];
    iconStyleAttributes = [completion2 iconStyleAttributes];

    if (iconStyleAttributes)
    {
      v37 = [GEOFeatureStyleAttributes alloc];
      completion3 = [(SearchFieldItem *)self completion];
      iconStyleAttributes2 = [completion3 iconStyleAttributes];
      v40 = [v37 initWithGEOStyleAttributes:iconStyleAttributes2];

      goto LABEL_35;
    }

    completion4 = [(SearchFieldItem *)self completion];
    clientResolved = [completion4 clientResolved];
    itemType = [clientResolved itemType];

    v40 = 0;
    if (itemType > 2)
    {
      if (itemType == 3)
      {
        v44 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
      }

      else
      {
        if (itemType != 6)
        {
          goto LABEL_35;
        }

        v44 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
      }
    }

    else if (itemType == 1)
    {
      v44 = +[GEOFeatureStyleAttributes homeStyleAttributes];
    }

    else
    {
      if (itemType != 2)
      {
        goto LABEL_35;
      }

      v44 = +[GEOFeatureStyleAttributes workStyleAttributes];
    }

    v40 = v44;
LABEL_35:
    v8 = [(SearchFieldItem *)self _iconWithStyleAttributes:v40 scale:scale];

    if (v8)
    {
      goto LABEL_59;
    }
  }

  address = [(SearchFieldItem *)self address];

  if (address)
  {
    address2 = [(SearchFieldItem *)self address];
    addressType = [address2 addressType];

    switch(addressType)
    {
      case 3u:
        v48 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
        break;
      case 2u:
        v48 = +[GEOFeatureStyleAttributes workStyleAttributes];
        break;
      case 1u:
        v48 = +[GEOFeatureStyleAttributes homeStyleAttributes];
        break;
      default:
        v49 = 0;
LABEL_45:
        v8 = [(SearchFieldItem *)self _iconWithStyleAttributes:v49 scale:scale];

        if (v8)
        {
          goto LABEL_59;
        }

        goto LABEL_46;
    }

    v49 = v48;
    goto LABEL_45;
  }

LABEL_46:
  venueCategoryItem = [(SearchFieldItem *)self venueCategoryItem];
  if (!venueCategoryItem || (v51 = venueCategoryItem, -[SearchFieldItem venueCategoryItem](self, "venueCategoryItem"), v52 = objc_claimAutoreleasedReturnValue(), [v52 searchCategory], v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v53, "styleAttributes"), v54 = objc_claimAutoreleasedReturnValue(), v54, v53, v52, v51, !v54) || (-[SearchFieldItem venueCategoryItem](self, "venueCategoryItem"), v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "searchCategory"), v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v56, "styleAttributes"), v57 = objc_claimAutoreleasedReturnValue(), -[SearchFieldItem _iconWithStyleAttributes:scale:](self, "_iconWithStyleAttributes:scale:", v57, scale), v8 = objc_claimAutoreleasedReturnValue(), v57, v56, v55, !v8))
  {
    placeCategoryItem = [(SearchFieldItem *)self placeCategoryItem];
    if (!placeCategoryItem || (v59 = placeCategoryItem, -[SearchFieldItem placeCategoryItem](self, "placeCategoryItem"), v60 = objc_claimAutoreleasedReturnValue(), [v60 searchCategory], v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "styleAttributes"), v62 = objc_claimAutoreleasedReturnValue(), v62, v61, v60, v59, !v62) || (-[SearchFieldItem placeCategoryItem](self, "placeCategoryItem"), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v63, "searchCategory"), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "styleAttributes"), v65 = objc_claimAutoreleasedReturnValue(), -[SearchFieldItem _iconWithStyleAttributes:scale:](self, "_iconWithStyleAttributes:scale:", v65, scale), v8 = objc_claimAutoreleasedReturnValue(), v65, v64, v63, !v8))
    {
      searchCategory = [(SearchFieldItem *)self searchCategory];
      if (!searchCategory || (v67 = searchCategory, -[SearchFieldItem searchCategory](self, "searchCategory"), v68 = objc_claimAutoreleasedReturnValue(), [v68 styleAttributes], v69 = objc_claimAutoreleasedReturnValue(), v69, v68, v67, !v69) || (-[SearchFieldItem searchCategory](self, "searchCategory"), v70 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v70, "styleAttributes"), v71 = objc_claimAutoreleasedReturnValue(), -[SearchFieldItem _iconWithStyleAttributes:scale:](self, "_iconWithStyleAttributes:scale:", v71, scale), v8 = objc_claimAutoreleasedReturnValue(), v71, v70, !v8))
      {
        if (self->_searchString && ([UIImage systemImageNamed:@"magnifyingglass.circle.fill"], (v72 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v8 = v72;
        }

        else
        {
          v73 = +[GEOFeatureStyleAttributes genericMarkerStyleAttributes];
          v8 = [(SearchFieldItem *)self _iconWithStyleAttributes:v73 scale:scale];
        }
      }
    }
  }

LABEL_59:

  return v8;
}

- (NSString)waypointName
{
  searchResult = [(SearchFieldItem *)self searchResult];
  isDynamicCurrentLocation = [searchResult isDynamicCurrentLocation];

  if (isDynamicCurrentLocation)
  {
    searchResult2 = [(SearchFieldItem *)self searchResult];
    title = [searchResult2 title];
LABEL_5:

    goto LABEL_6;
  }

  routePlanningWaypointRequest = [(SearchFieldItem *)self routePlanningWaypointRequest];

  if (routePlanningWaypointRequest)
  {
    searchResult2 = [(SearchFieldItem *)self routePlanningWaypointRequest];
    composedWaypoint = [(SearchFieldItem *)self composedWaypoint];
    title = [searchResult2 nameWithResolvedWaypoint:composedWaypoint allowCurrentLocation:1];

    goto LABEL_5;
  }

  title = [(SearchFieldItem *)self title];
LABEL_6:

  return title;
}

- (NSString)title
{
  searchResult = self->_searchResult;
  if (searchResult)
  {
    goto LABEL_2;
  }

  searchString = self->_searchString;
  if (searchString || (searchString = self->_addressString) != 0)
  {
LABEL_5:
    displayString2 = searchString;
    goto LABEL_6;
  }

  coreRecentContact = self->_coreRecentContact;
  if (coreRecentContact)
  {
    displayName = [(CRRecentContact *)coreRecentContact displayName];
    v10 = [displayName length];
    v11 = self->_coreRecentContact;
    if (v10)
    {
      [(CRRecentContact *)v11 displayName];
    }

    else
    {
      [(CRRecentContact *)v11 address];
    }
    displayString = ;
    goto LABEL_20;
  }

  searchCategory = self->_searchCategory;
  if (searchCategory)
  {
    goto LABEL_15;
  }

  venueCategoryItem = self->_venueCategoryItem;
  if (venueCategoryItem || (venueCategoryItem = self->_placeCategoryItem) != 0)
  {
    displayName = [venueCategoryItem searchCategory];
    displayString = [displayName displayString];
LABEL_20:
    waypointName = displayString;
LABEL_21:

    goto LABEL_7;
  }

  searchCategory = self->_suggestion;
  if (searchCategory)
  {
LABEL_15:
    displayString2 = [(GEOSearchCategory *)searchCategory displayString];
    goto LABEL_6;
  }

  address = self->_address;
  if (address)
  {
    displayString2 = [(AddressBookAddress *)address compositeName];
    goto LABEL_6;
  }

  searchResult = self->_autocompletePerson;
  if (searchResult)
  {
    goto LABEL_2;
  }

  findMyHandle = self->_findMyHandle;
  if (findMyHandle)
  {
    displayString2 = [(MapsFindMyHandle *)findMyHandle displayName];
    goto LABEL_6;
  }

  historyItem = self->_historyItem;
  if (!historyItem)
  {
    childPlace = self->_childPlace;
    if (childPlace)
    {
      goto LABEL_39;
    }

    if (self->_mapKitHandle)
    {
      searchString = self->_mapKitHandleTitle;
      goto LABEL_5;
    }

    routePlanningWaypointRequest = self->_routePlanningWaypointRequest;
    if (routePlanningWaypointRequest)
    {
      displayName = [(RoutePlanningWaypointRequest *)routePlanningWaypointRequest waypointPlaceholder];
      name = [displayName name];
      v40 = name;
      if (name)
      {
        waypointName = name;
      }

      else
      {
        waypointRequest = [(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest waypointRequest];
        waypointName = [waypointRequest waypointName];
      }

      goto LABEL_21;
    }

    searchResult = self->_completion;
    if (!searchResult)
    {
      searchString = self->_completedQuery;
      if (searchString)
      {
        goto LABEL_5;
      }

      childPlace = self->_composedWaypoint;
      if (childPlace)
      {
LABEL_39:
        displayString2 = [(GEOMapItemChildPlace *)childPlace name];
        goto LABEL_6;
      }

      searchResult = self->_favoriteItem;
      if (!searchResult)
      {
        goto LABEL_58;
      }
    }

LABEL_2:
    displayString2 = [searchResult title];
LABEL_6:
    waypointName = displayString2;
    goto LABEL_7;
  }

  v18 = historyItem;
  v19 = &OBJC_PROTOCOL___MSPHistoryEntrySearch;
  objc_opt_class();
  v20 = v18;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22 && (-[HistoryEntryRecentsItem historyEntry](v22, "historyEntry"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 conformsToProtocol:v19], v23, v24))
  {
    v25 = v20;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    historyEntry = [(HistoryEntryRecentsItem *)v25 historyEntry];
    waypointName = [historyEntry query];

    goto LABEL_7;
  }

  v28 = self->_historyItem;
  v29 = &OBJC_PROTOCOL___MSPHistoryEntryPlaceDisplay;
  objc_opt_class();
  v30 = v28;
  if (objc_opt_isKindOfClass())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (v32 && (-[HistoryEntryRecentsItem historyEntry](v32, "historyEntry"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 conformsToProtocol:v29], v33, v34))
  {
    v35 = v30;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    historyEntry2 = [(HistoryEntryRecentsItem *)v35 historyEntry];
    geoMapItem = [historyEntry2 geoMapItem];
    waypointName = [geoMapItem name];

    goto LABEL_7;
  }

LABEL_58:
  waypointName = 0;
LABEL_7:

  return waypointName;
}

- (BOOL)isEmpty
{
  if (qword_10195E088 != -1)
  {
    dispatch_once(&qword_10195E088, &stru_101631448);
  }

  v3 = qword_10195E080;

  return [(SearchFieldItem *)self isEqual:v3];
}

+ (SearchFieldItem)searchFieldItemWithWaypointRequest:(id)request resolvedWaypoint:(id)waypoint
{
  requestCopy = request;
  waypointCopy = waypoint;
  v8 = waypointCopy;
  if (requestCopy && ![waypointCopy isCurrentLocation])
  {
    v9 = objc_alloc_init(self);
    [v9 setRoutePlanningWaypointRequest:requestCopy];
    objc_storeStrong(v9 + 23, waypoint);
  }

  else
  {
    v9 = [self searchFieldItemWithObject:v8];
  }

  return v9;
}

+ (SearchFieldItem)searchFieldItemWithObject:(id)object expandRecentsItem:(BOOL)item preserveContact:(BOOL)contact
{
  contactCopy = contact;
  itemCopy = item;
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objectCopy copy];
    }

    else
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = sub_1009D73B8;
      v47 = sub_1009D73C8;
      v48 = objc_alloc_init(SearchFieldItem);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v44[5] setSearchCategory:objectCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [[SearchResult alloc] initWithMapItem:objectCopy];
          [v44[5] setSearchResult:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v44[5] setSearchResult:objectCopy];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v44[5] setCompletion:objectCopy];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v44[5] setAutocompletePerson:objectCopy];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v44[5] setFindMyHandle:objectCopy];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v44[5] setAddress:objectCopy];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if (itemCopy)
                      {
                        v12 = objectCopy;
                        historyEntry = [v12 historyEntry];
                        v42[0] = _NSConcreteStackBlock;
                        v42[1] = 3221225472;
                        v42[2] = sub_1009DB8AC;
                        v42[3] = &unk_101656AE8;
                        v42[4] = &v43;
                        v40[4] = &v43;
                        v41[0] = _NSConcreteStackBlock;
                        v41[1] = 3221225472;
                        v41[2] = sub_1009DB90C;
                        v41[3] = &unk_1016508A0;
                        v41[4] = &v43;
                        v40[0] = _NSConcreteStackBlock;
                        v40[1] = 3221225472;
                        v40[2] = sub_1009DB920;
                        v40[3] = &unk_101661C68;
                        [historyEntry ifSearch:v42 ifRoute:v41 ifPlaceDisplay:v40 ifTransitLineItem:0];
                      }

                      else
                      {
                        [v44[5] setHistoryItem:objectCopy];
                      }
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        if (contactCopy)
                        {
                          [v44[5] setCoreRecentContact:objectCopy];
                        }

                        else
                        {
                          address = [objectCopy address];
                          [v44[5] setAddressString:address];
                        }
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          searchResult = [objectCopy searchResult];
                          [v44[5] setSearchResult:searchResult];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [v44[5] setVenueCategoryItem:objectCopy];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [v44[5] setPlaceCategoryItem:objectCopy];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [v44[5] setChildPlace:objectCopy];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  [v44[5] setRoutePlanningWaypointRequest:objectCopy];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    [v44[5] setSuggestion:objectCopy];
                                  }

                                  else if ([objectCopy conformsToProtocol:&OBJC_PROTOCOL___GEOMapItem])
                                  {
                                    v16 = [[SearchResult alloc] initWithGEOMapItem:objectCopy];
                                    [v44[5] setSearchResult:v16];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      objc_storeStrong(v44 + 5, object);
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v17 = [objectCopy pin];
                                        [v44[5] setSearchResult:v17];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v18 = objectCopy;
                                          if ([v18 isCurrentLocation])
                                          {
                                            v19 = +[SearchResult currentLocationSearchResult];
                                            [v44[5] setSearchResult:v19];
                                          }

                                          else
                                          {
                                            [v44[5] setComposedWaypoint:v18];
                                          }
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            [v44[5] setSearchString:objectCopy];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v20 = objectCopy;
                                              if ([v20 type] == 24)
                                              {
                                                findMyWaypoint = [v20 findMyWaypoint];
                                                if (!findMyWaypoint)
                                                {
                                                  v37 = sub_10006D178();
                                                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                                                  {
                                                    *buf = 136315906;
                                                    v50 = "+[SearchFieldItem searchFieldItemWithObject:expandRecentsItem:preserveContact:]";
                                                    v51 = 2080;
                                                    v52 = "SearchFieldItem.m";
                                                    v53 = 1024;
                                                    v54 = 992;
                                                    v55 = 2080;
                                                    v56 = "waypoint != nil";
                                                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
                                                  }

                                                  if (sub_100E03634())
                                                  {
                                                    v38 = sub_10006D178();
                                                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                                                    {
                                                      v39 = +[NSThread callStackSymbols];
                                                      *buf = 138412290;
                                                      v50 = v39;
                                                      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                                                    }
                                                  }
                                                }

                                                v22 = [[SearchResult alloc] initWithComposedWaypoint:findMyWaypoint];
                                                [v44[5] setSearchResult:v22];
                                              }

                                              else
                                              {
                                                mKMapItem = [v20 MKMapItem];

                                                if (mKMapItem)
                                                {
                                                  v26 = [SearchResult alloc];
                                                  mKMapItem2 = [v20 MKMapItem];
                                                  findMyWaypoint = [(SearchResult *)v26 initWithMapItem:mKMapItem2];

                                                  [v44[5] setSearchResult:findMyWaypoint];
                                                }

                                                else
                                                {
                                                  findMyWaypoint = v44[5];
                                                  v44[5] = 0;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                [v44[5] setFavoriteItem:objectCopy];
                                                favoriteItem = [v44[5] favoriteItem];
                                                v24 = [SearchResult searchResultFromFavoriteItem:favoriteItem];
                                                [v44[5] setSearchResult:v24];
                                              }

                                              else
                                              {
                                                v28 = sub_10006D178();
                                                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                                                {
                                                  if (itemCopy)
                                                  {
                                                    v29 = @"YES";
                                                  }

                                                  else
                                                  {
                                                    v29 = @"NO";
                                                  }

                                                  v30 = v29;
                                                  if (contactCopy)
                                                  {
                                                    v31 = @"YES";
                                                  }

                                                  else
                                                  {
                                                    v31 = @"NO";
                                                  }

                                                  v32 = v31;
                                                  objectCopy = [NSString stringWithFormat:@"Unable to create item from object (expand recents: %@, preserve contact: %@): %@", v30, v32, objectCopy];
                                                  *buf = 136315906;
                                                  v50 = "+[SearchFieldItem searchFieldItemWithObject:expandRecentsItem:preserveContact:]";
                                                  v51 = 2080;
                                                  v52 = "SearchFieldItem.m";
                                                  v53 = 1024;
                                                  v54 = 1005;
                                                  v55 = 2112;
                                                  v56 = objectCopy;
                                                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
                                                }

                                                if (sub_100E03634())
                                                {
                                                  v34 = sub_10006D178();
                                                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                                                  {
                                                    v35 = +[NSThread callStackSymbols];
                                                    *buf = 138412290;
                                                    v50 = v35;
                                                    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                                                  }
                                                }

                                                v36 = v44[5];
                                                v44[5] = 0;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v9 = v44[5];
      _Block_object_dispose(&v43, 8);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)searchFieldItemsForRouteInSuggestionsEntry:(id)entry excludeCurrentLocationOrigin:(BOOL)origin
{
  originCopy = origin;
  entryCopy = entry;
  if (!entryCopy)
  {
    v32 = 0;
    goto LABEL_34;
  }

  v6 = objc_alloc_init(NSMutableArray);
  if ([entryCopy containsKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"])
  {
    v7 = [entryCopy routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
    if (v7)
    {
      mKMapItem = v7;
      waypointsCount = [v7 waypointsCount];
      v36 = entryCopy;
      v10 = [entryCopy uint64ForKey:@"MapsSuggestionsResumeRouteWaypointIndex"];
      if (v10 < waypointsCount)
      {
        v11 = v10;
        v12 = 0;
        p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
        v37 = waypointsCount;
        do
        {
          v14 = objc_alloc_init((p_cache + 88));
          v15 = [mKMapItem waypointsAtIndex:v11];
          if (![v15 isCurrentLocation] || !originCopy || v12)
          {
            v16 = v6;
            v17 = [SearchResult alloc];
            [mKMapItem waypointsAtIndex:v11];
            v18 = p_cache;
            v20 = v19 = mKMapItem;
            v21 = [(SearchResult *)v17 initWithComposedWaypoint:v20];
            [v14 setSearchResult:v21];

            v6 = v16;
            waypointsCount = v37;

            mKMapItem = v19;
            p_cache = v18;
            [v6 addObject:v14];
          }

          ++v11;
          --v12;
        }

        while (waypointsCount != v11);
      }

      if (![v6 count])
      {
        v34 = sub_1009D851C();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          waypointsCount2 = [mKMapItem waypointsCount];
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unable to extract any items from MSG entry (expected %lu)", buf, 0xCu);
        }

        v32 = 0;
        goto LABEL_32;
      }

      v22 = [v6 count];
      v23 = sub_1009D851C();
      v24 = v23;
      if (v22 >= waypointsCount)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          waypointsCount2 = [v6 count];
          v40 = 2048;
          v41 = waypointsCount;
          v25 = v24;
          v26 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_30;
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        waypointsCount2 = [v6 count];
        v40 = 2048;
        v41 = waypointsCount;
        v25 = v24;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_30:
        _os_log_impl(&_mh_execute_header, v25, v26, "Extracted %lu items from MSG entry (expected %lu)", buf, 0x16u);
      }

      v32 = v6;
LABEL_32:
      entryCopy = v36;
      goto LABEL_33;
    }
  }

  mKMapItem = [entryCopy MKMapItem];
  findMyWaypoint = [entryCopy findMyWaypoint];
  if (findMyWaypoint)
  {
    v28 = objc_alloc_init(SearchFieldItem);
    v29 = [[SearchResult alloc] initWithComposedWaypoint:findMyWaypoint];
    [(SearchFieldItem *)v28 setSearchResult:v29];

    [v6 addObject:v28];
    v30 = sub_1009D851C();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v31 = "Extracted item from findMyWaypoint in MSG entry";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, v31, buf, 2u);
    }
  }

  else
  {
    if (!mKMapItem)
    {
      v28 = sub_1009D851C();
      if (os_log_type_enabled(&v28->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v28->super, OS_LOG_TYPE_ERROR, "Unable to extract any items from MSG entry (no route storage, no find my info, no map item)", buf, 2u);
      }

      v32 = 0;
      goto LABEL_24;
    }

    v28 = objc_alloc_init(SearchFieldItem);
    v33 = [[SearchResult alloc] initWithMapItem:mKMapItem];
    [(SearchFieldItem *)v28 setSearchResult:v33];

    [v6 addObject:v28];
    v30 = sub_1009D851C();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v31 = "Extracted item from MapItem in MSG entry";
      goto LABEL_22;
    }
  }

  v32 = v6;
LABEL_24:

LABEL_33:
LABEL_34:

  return v32;
}

+ (id)searchFieldItemsForRouteHistoryEntry:(id)entry
{
  entryCopy = entry;
  endWaypoint = [entryCopy endWaypoint];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    waypoints = +[SearchResult currentLocationSearchResult];
    v7 = [SearchFieldItem searchFieldItemWithObject:waypoints];
    v37[0] = v7;
    endWaypoint2 = [entryCopy endWaypoint];
    v9 = [SearchFieldItem searchFieldItemWithObject:endWaypoint2];
    v37[1] = v9;
    v10 = [NSArray arrayWithObjects:v37 count:2];

LABEL_3:
    goto LABEL_13;
  }

  if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) == 0 && (MapsFeature_IsEnabled_Maps420() & 1) == 0 && !MapsFeature_IsEnabled_Maps182())
  {
    startWaypoint = [entryCopy startWaypoint];
    v23 = [SearchFieldItem searchFieldItemWithObject:startWaypoint];
    v24 = v23;
    if (v23)
    {
      waypoints = v23;
    }

    else
    {
      v25 = +[SearchResult currentLocationSearchResult];
      waypoints = [SearchFieldItem searchFieldItemWithObject:v25];
    }

    endWaypoint3 = [entryCopy endWaypoint];
    v27 = [SearchFieldItem searchFieldItemWithObject:endWaypoint3];
    v28 = v27;
    if (v27)
    {
      v7 = v27;
    }

    else
    {
      v29 = +[SearchResult currentLocationSearchResult];
      v7 = [SearchFieldItem searchFieldItemWithObject:v29];
    }

    v30[0] = waypoints;
    v30[1] = v7;
    v10 = [NSArray arrayWithObjects:v30 count:2];
    endWaypoint2 = sub_1009D851C();
    if (os_log_type_enabled(endWaypoint2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, endWaypoint2, OS_LOG_TYPE_DEFAULT, "Created items from non-MPR history entry: %@", buf, 0xCu);
    }

    goto LABEL_3;
  }

  waypoints = [entryCopy waypoints];
  v10 = sub_100021DB0(waypoints, &stru_101631488);
  v11 = [v10 count];
  v12 = [waypoints count];
  v13 = sub_1009D851C();
  v7 = v13;
  if (v11 >= v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v19 = [v10 count];
    v20 = [waypoints count];
    v16 = sub_100021DB0(v10, &stru_1016314E8);
    *buf = 134218499;
    v32 = v19;
    v33 = 2048;
    v34 = v20;
    v35 = 2113;
    v36 = v16;
    v17 = v7;
    v18 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = [v10 count];
    v15 = [waypoints count];
    v16 = sub_100021DB0(v10, &stru_1016314C8);
    *buf = 134218499;
    v32 = v14;
    v33 = 2048;
    v34 = v15;
    v35 = 2113;
    v36 = v16;
    v17 = v7;
    v18 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v17, v18, "Extracted %lu items from history entry (expected %lu): %{private}@", buf, 0x20u);

LABEL_13:

  return v10;
}

- (BOOL)isFindMyPerson
{
  _maps_autoCompletePerson = [(SearchFieldItem *)self _maps_autoCompletePerson];
  _maps_findMyHandle = [(SearchFieldItem *)self _maps_findMyHandle];
  handle = [_maps_autoCompletePerson handle];
  v6 = (handle | _maps_findMyHandle) != 0;

  return v6;
}

- (AddressBookAddress)_maps_address
{
  address = [(SearchFieldItem *)self address];
  v4 = address;
  if (address)
  {
    address2 = address;
  }

  else
  {
    searchResult = [(SearchFieldItem *)self searchResult];
    address2 = [searchResult address];
  }

  return address2;
}

- (_TtC4Maps16MapsFindMyHandle)_maps_findMyHandle
{
  findMyHandle = [(SearchFieldItem *)self findMyHandle];
  v4 = findMyHandle;
  if (findMyHandle)
  {
    findMyHandle2 = findMyHandle;
  }

  else
  {
    searchResult = [(SearchFieldItem *)self searchResult];
    findMyHandle2 = [searchResult findMyHandle];
  }

  return findMyHandle2;
}

- (_TtC4Maps22MapsAutocompletePerson)_maps_autoCompletePerson
{
  autocompletePerson = [(SearchFieldItem *)self autocompletePerson];
  v4 = autocompletePerson;
  if (autocompletePerson)
  {
    autocompletePerson2 = autocompletePerson;
  }

  else
  {
    searchResult = [(SearchFieldItem *)self searchResult];
    autocompletePerson2 = [searchResult autocompletePerson];
  }

  return autocompletePerson2;
}

@end