@interface SearchFieldItem
+ (SearchFieldItem)searchFieldItemWithObject:(id)a3 expandRecentsItem:(BOOL)a4 preserveContact:(BOOL)a5;
+ (SearchFieldItem)searchFieldItemWithWaypointRequest:(id)a3 resolvedWaypoint:(id)a4;
+ (id)searchFieldItemsForRouteHistoryEntry:(id)a3;
+ (id)searchFieldItemsForRouteInSuggestionsEntry:(id)a3 excludeCurrentLocationOrigin:(BOOL)a4;
- (AddressBookAddress)_maps_address;
- (BOOL)behavesAsAtom;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSearchFieldItem:(id)a3;
- (BOOL)isEquivalentAsWaypointToSearchFieldItem:(id)a3;
- (BOOL)isFindMyPerson;
- (BOOL)matchesWaypoint:(id)a3;
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
- (id)copyWithZone:(_NSZone *)a3;
- (id)waypointIconWithScale:(double)a3;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)clear;
- (void)dealloc;
- (void)setAddress:(id)a3;
- (void)setAddressString:(id)a3;
- (void)setAutocompletePerson:(id)a3;
- (void)setChildPlace:(id)a3;
- (void)setCompletion:(id)a3;
- (void)setComposedWaypoint:(id)a3;
- (void)setCoreRecentContact:(id)a3;
- (void)setExternalURLQuery:(id)a3;
- (void)setFavoriteItem:(id)a3;
- (void)setFindMyHandle:(id)a3;
- (void)setHistoryItem:(id)a3;
- (void)setMapKitHandle:(id)a3;
- (void)setPlaceCategoryItem:(id)a3;
- (void)setPunchInDetails:(id)a3 searchString:(id)a4;
- (void)setRoutePlanningWaypointRequest:(id)a3;
- (void)setSearchCategory:(id)a3;
- (void)setSearchResult:(id)a3;
- (void)setSearchString:(id)a3;
- (void)setSearchString:(id)a3 forCompletedQuery:(id)a4;
- (void)setSuggestion:(id)a3;
- (void)setUserTypedStringForRAP:(id)a3;
- (void)setVenueCategoryItem:(id)a3;
@end

@implementation SearchFieldItem

- (NSString)searchString
{
  searchResult = self->_searchResult;
  if (searchResult)
  {
    if ([(SearchResult *)searchResult behavesAsAtom])
    {
      v4 = 0;
    }

    else
    {
      v7 = [(SearchResult *)self->_searchResult mapItem];
      if ([v7 _hasTransitDisplayName])
      {
        v4 = 0;
      }

      else
      {
        v4 = [(SearchResult *)self->_searchResult singleLineAddress];
      }
    }

    if ([v4 length])
    {
      v8 = v4;
LABEL_14:
      v9 = v8;
LABEL_15:
      v10 = v8;
LABEL_16:

      goto LABEL_20;
    }

    v9 = [(SearchResult *)self->_searchResult title];

    if ([v9 length])
    {
      v8 = v9;
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
    v6 = [(GEOSearchCategory *)searchCategory displayString];
LABEL_19:
    v10 = v6;
    goto LABEL_20;
  }

  suggestion = self->_suggestion;
  if (suggestion)
  {
    v6 = [(GEORelatedSearchSuggestion *)suggestion searchBarDisplayToken];
    goto LABEL_19;
  }

  v17 = [(MKLocalSearchCompletion *)self->_completion category];

  completion = self->_completion;
  if (v17)
  {
    v9 = [(MKLocalSearchCompletion *)completion category];
    v8 = [v9 displayString];
    goto LABEL_15;
  }

  if (completion)
  {
    v19 = [(MKLocalSearchCompletion *)completion _type];
    autocompletePerson = self->_completion;
    if (!v19 || ([autocompletePerson title], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "length"), v21, autocompletePerson = self->_completion, !v22))
    {
      v6 = [autocompletePerson queryLine];
      goto LABEL_19;
    }

    goto LABEL_33;
  }

  coreRecentContact = self->_coreRecentContact;
  if (coreRecentContact)
  {
    v9 = [(CRRecentContact *)coreRecentContact displayName];
    v24 = [v9 length];
    v25 = self->_coreRecentContact;
    if (v24)
    {
      [(CRRecentContact *)v25 displayName];
    }

    else
    {
      [(CRRecentContact *)v25 address];
    }
    v8 = ;
    goto LABEL_15;
  }

  address = self->_address;
  if (address)
  {
    v6 = [(AddressBookAddress *)address compositeName];
    goto LABEL_19;
  }

  autocompletePerson = self->_autocompletePerson;
  if (autocompletePerson)
  {
LABEL_33:
    v6 = [autocompletePerson title];
    goto LABEL_19;
  }

  findMyHandle = self->_findMyHandle;
  if (findMyHandle)
  {
    v6 = [(MapsFindMyHandle *)findMyHandle displayName];
    goto LABEL_19;
  }

  historyItem = self->_historyItem;
  if (!historyItem)
  {
    externalURLQuery = self->_externalURLQuery;
    if (externalURLQuery)
    {
      v6 = [(ExternalURLQuery *)externalURLQuery query];
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
            v9 = [(RoutePlanningWaypointRequest *)routePlanningWaypointRequest waypointPlaceholder];
            v52 = [v9 name];
            v15 = v52;
            if (!v52)
            {
              v54 = [(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest waypointRequest];
              v10 = [v54 waypointName];

              goto LABEL_27;
            }

            v16 = v52;
LABEL_26:
            v10 = v16;
LABEL_27:

            goto LABEL_16;
          }

          favoriteItem = self->_favoriteItem;
          if (favoriteItem)
          {
            v6 = [(MapsFavoriteItem *)favoriteItem shortAddress];
            goto LABEL_19;
          }

LABEL_77:
          addressString = self->_searchString;
          goto LABEL_78;
        }

LABEL_68:
        v6 = [(GEOMapItemChildPlace *)childPlace name];
        goto LABEL_19;
      }

      addressString = self->_mapKitHandleTitle;
    }

LABEL_78:
    v6 = addressString;
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
    v37 = [(HistoryEntryRecentsItem *)v36 historyEntry];
    v10 = [v37 query];

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

  v47 = [(HistoryEntryRecentsItem *)v46 historyEntry];
  v48 = [v47 geoMapItem];
  v10 = [v48 name];

LABEL_20:

  return v10;
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
  v5 = self;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1009D73B8;
  v31 = sub_1009D73C8;
  v32 = 0;
  v6 = [(SearchFieldItem *)self searchResult];

  if (v6)
  {
    v7 = [v5 searchResult];
    v8 = [v7 isDynamicCurrentLocation];
    if (v8)
    {
      v2 = +[MKLocationManager sharedLocationManager];
      if ([v2 hasLocation])
      {
        v9 = +[MKMapItem mapItemForCurrentLocation];
        v10 = v8;
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }
    }

    else
    {
      v4 = [v5 searchResult];
      v9 = [v4 mapItem];
      v10 = 0;
    }

    objc_storeStrong(v28 + 5, v9);
    if ((v8 & 1) == 0)
    {
    }

    if (v10)
    {
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v11 = [v5 historyItem];

  if (v11)
  {
    v7 = [v5 historyItem];
    v2 = [v7 historyEntry];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1009D73D0;
    v26[3] = &unk_101661C68;
    v26[4] = &v27;
    [v2 ifSearch:0 ifRoute:0 ifPlaceDisplay:v26 ifTransitLineItem:0];
  }

  else
  {
    v12 = [v5 address];

    if (v12)
    {
      v7 = [v5 address];
      v13 = [v7 geocodedMapItem];
    }

    else
    {
      v14 = [v5 coreRecentContact];

      if (v14)
      {
        v7 = +[Recents sharedRecents];
        v2 = [v5 coreRecentContact];
        v15 = [v7 cachedMapItemForContactID:{objc_msgSend(v2, "contactID")}];
        v16 = v28[5];
        v28[5] = v15;

        goto LABEL_20;
      }

      v21 = [v5 completion];

      if (v21)
      {
        v7 = [v5 completion];
        v13 = [v7 mapItem];
      }

      else
      {
        v22 = [v5 composedWaypoint];

        if (v22)
        {
          v7 = [v5 composedWaypoint];
          v2 = [v7 geoMapItem];
          if (v2)
          {
            v23 = [MKMapItem alloc];
            v5 = [v5 composedWaypoint];
            v3 = [v5 geoMapItem];
            v24 = [v23 initWithGeoMapItem:v3 isPlaceHolderPlace:0];
          }

          else
          {
            v24 = 0;
          }

          objc_storeStrong(v28 + 5, v24);
          if (v2)
          {
          }

          goto LABEL_20;
        }

        v25 = [v5 favoriteItem];

        if (!v25)
        {
          goto LABEL_22;
        }

        v7 = [v5 favoriteItem];
        v13 = [v7 mkMapItem];
      }
    }

    v2 = v28[5];
    v28[5] = v13;
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

- (BOOL)matchesWaypoint:(id)a3
{
  v4 = a3;
  v5 = [(SearchFieldItem *)self searchResult];

  if (!v5)
  {
    v11 = [(SearchFieldItem *)self address];

    if (v11)
    {
      v6 = [(SearchFieldItem *)self address];
      v12 = [v4 requestAddress];
    }

    else
    {
      v14 = [(SearchFieldItem *)self coreRecentContact];

      if (v14)
      {
        v6 = [(SearchFieldItem *)self coreRecentContact];
        v7 = [v6 address];
        v9 = [v4 requestSearchString];
        v10 = [v7 isEqualToString:v9];
        goto LABEL_12;
      }

      v16 = [(SearchFieldItem *)self completion];

      if (!v16)
      {
        v17 = [(SearchFieldItem *)self externalURLQuery];

        if (!v17)
        {
          v6 = [(SearchFieldItem *)self searchString];
          if (![v6 length])
          {
            v8 = 0;
            goto LABEL_15;
          }

          v18 = [(SearchFieldItem *)self completedQuery];

          v7 = [v4 requestSearchString];
          v19 = [v6 isEqualToString:v7];
          if (v18)
          {
            if (v19)
            {
              v9 = [(SearchFieldItem *)self completedQuery];
              v20 = [v4 suggestionsPrefix];
              v8 = [v9 isEqualToString:v20];

              goto LABEL_13;
            }
          }

          else if (v19)
          {
            v9 = [v4 suggestionsPrefix];
            v8 = v9 == 0;
            goto LABEL_13;
          }

          v8 = 0;
          goto LABEL_14;
        }

        v6 = [(SearchFieldItem *)self externalURLQuery];
        v7 = [v4 externalURLQuery];
        v13 = [v6 isEqualToExternalURLQuery:v7];
        goto LABEL_8;
      }

      v6 = [(SearchFieldItem *)self completion];
      v12 = [v4 completion];
    }

    v7 = v12;
    v13 = [v6 isEqual:v12];
LABEL_8:
    v8 = v13;
    goto LABEL_14;
  }

  v6 = [(SearchFieldItem *)self searchResult];
  v7 = [v4 requestSearch];
  v8 = 1;
  if (([v6 isEqualToSearchResult:v7 forPurpose:1] & 1) == 0)
  {
    v9 = [(SearchFieldItem *)self searchResult];
    if (![v9 isDynamicCurrentLocation])
    {
      v8 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v10 = [v4 isDynamicCurrentLocation];
LABEL_12:
    v8 = v10;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
  return v8;
}

- (DirectionsWaypoint)personalizedDirectionsWaypoint
{
  v3 = [(SearchFieldItem *)self mapItemIfGeocoded];

  if (v3)
  {
    v4 = [(SearchFieldItem *)self waypoint];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (DirectionsWaypoint)waypoint
{
  v3 = objc_alloc_init(DirectionsWaypoint);
  v4 = [(SearchFieldItem *)self searchResult];
  if (!v4)
  {
    v7 = [(SearchFieldItem *)self address];

    if (v7)
    {
      v5 = [(SearchFieldItem *)self address];
      [(DirectionsWaypoint *)v3 setRequestAddress:v5];
      goto LABEL_18;
    }

    v8 = [(SearchFieldItem *)self coreRecentContact];

    if (v8)
    {
      v5 = [(SearchFieldItem *)self coreRecentContact];
      v9 = [v5 address];
      [(DirectionsWaypoint *)v3 setRequestSearchString:v9];
    }

    else
    {
      v10 = [(SearchFieldItem *)self completion];

      if (v10)
      {
        v5 = [(SearchFieldItem *)self completion];
        [(DirectionsWaypoint *)v3 setCompletion:v5];
        goto LABEL_18;
      }

      v11 = [(SearchFieldItem *)self externalURLQuery];

      if (v11)
      {
        v5 = [(SearchFieldItem *)self externalURLQuery];
        [(DirectionsWaypoint *)v3 setExternalURLQuery:v5];
        goto LABEL_18;
      }

      v12 = [(SearchFieldItem *)self routePlanningWaypointRequest];
      if (!v12 || (v13 = v12, -[SearchFieldItem routePlanningWaypointRequest](self, "routePlanningWaypointRequest"), v14 = objc_claimAutoreleasedReturnValue(), [v14 waypointRequest], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "mapItemForLocationComparison"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v13, !v16))
      {
        v19 = [(SearchFieldItem *)self searchString];
        [(DirectionsWaypoint *)v3 setRequestSearchString:v19];

        v5 = [(SearchFieldItem *)self completedQuery];
        [(DirectionsWaypoint *)v3 setSuggestionsPrefix:v5];
        goto LABEL_18;
      }

      v17 = [(SearchFieldItem *)self routePlanningWaypointRequest];
      v18 = [v17 waypointRequest];
      v5 = [v18 mapItemForLocationComparison];

      v9 = [[SearchResult alloc] initWithMapItem:v5];
      [(DirectionsWaypoint *)v3 setRequestSearch:v9];
    }

    goto LABEL_18;
  }

  v5 = v4;
  if ([v4 type] == 4)
  {
    v6 = +[SearchResult currentLocationSearchResult];

    v5 = v6;
  }

  [(DirectionsWaypoint *)v3 setRequestSearch:v5];
LABEL_18:

  v20 = [(SearchFieldItem *)self composedWaypoint];

  if (v20)
  {
    v21 = [(SearchFieldItem *)self composedWaypoint];
    [(DirectionsWaypoint *)v3 updateFromGEOComposedWaypoint:v21];
  }

  return v3;
}

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v3 = a3;
  v9 = a3;
  v5 = [(SearchFieldItem *)self title];
  v6 = v3[2];
  v3 += 2;
  v6(v9, @"title", v5);

  (*v3)(v9, @"searchString", self->_searchString);
  (*v3)(v9, @"searchResult", self->_searchResult);
  (*v3)(v9, @"completion", &self->_completion->super.isa);
  (*v3)(v9, @"addressBookAddress", self->_address);
  (*v3)(v9, @"searchCategory", self->_searchCategory);
  (*v3)(v9, @"venueCategoryItem", &self->_venueCategoryItem->super.isa);
  (*v3)(v9, @"placeCategoryItem", &self->_placeCategoryItem->super.isa);
  (*v3)(v9, @"historyItem", &self->_historyItem->super.isa);
  (*v3)(v9, @"coreRecentContact", self->_coreRecentContact);
  (*v3)(v9, @"addressString", self->_addressString);
  (*v3)(v9, @"childPlace", self->_childPlace);
  (*v3)(v9, @"routePlanningWaypointRequest", &self->_routePlanningWaypointRequest->super.isa);
  (*v3)(v9, @"suggestion", self->_suggestion);
  v7 = [(GEOComposedWaypoint *)self->_composedWaypoint shortDescription];
  (*v3)(v9, @"composedWaypoint", v7);

  v8 = [(MapsAutocompletePerson *)self->_autocompletePerson description];
  (*v3)(v9, @"autocompletePerson", v8);

  (*v3)(v9, @"favoriteItem", self->_favoriteItem);
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1009D7DE0;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(SearchFieldItem *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1009D8030;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(SearchFieldItem *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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
  v2 = [(SearchFieldItem *)self composedWaypoint];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v3 = [(SearchFieldItem *)self searchString];
  v4 = [(SearchFieldItem *)self searchResult];
  v5 = [v4 name];

  if (v5)
  {
    v6 = [(SearchFieldItem *)self searchResult];
    v7 = [v6 name];

    v3 = v7;
  }

  v8 = [(SearchFieldItem *)self address];

  if (v8)
  {
    v9 = [(SearchFieldItem *)self address];
    v10 = +[AddressBookManager sharedManager];
    v11 = [v10 meCardHomeAddress];

    if (v9 == v11)
    {
      v18 = @"Home";
    }

    else
    {
      v12 = [(SearchFieldItem *)self address];
      v13 = +[AddressBookManager sharedManager];
      v14 = [v13 meCardWorkAddress];

      if (v12 == v14)
      {
        v18 = @"Work";
      }

      else
      {
        v15 = [(SearchFieldItem *)self address];
        v16 = +[AddressBookManager sharedManager];
        v17 = [v16 meCardSchoolAddress];

        if (v15 != v17)
        {
          goto LABEL_11;
        }

        v18 = @"School";
      }
    }

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:v18 value:@"localized string not found" table:0];

    v3 = v20;
  }

LABEL_11:

  return v3;
}

- (GEOSearchCategory)currentCategory
{
  searchCategory = self->_searchCategory;
  if (searchCategory)
  {
    v3 = searchCategory;
  }

  else
  {
    v3 = [(MKLocalSearchCompletion *)self->_completion category];
  }

  return v3;
}

- (void)setFavoriteItem:(id)a3
{
  v5 = a3;
  favoriteItem = self->_favoriteItem;
  v10 = v5;
  v7 = favoriteItem;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      [(SearchFieldItem *)self clear];
      objc_storeStrong(&self->_favoriteItem, a3);
      v8 = v10;
    }
  }
}

- (void)setPunchInDetails:(id)a3 searchString:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (self->_punchInDetails != v8 || self->_searchString != v7)
  {
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_punchInDetails, a3);
    objc_storeStrong(&self->_searchString, a4);
  }
}

- (void)setFindMyHandle:(id)a3
{
  v5 = a3;
  findMyHandle = self->_findMyHandle;
  v10 = v5;
  v7 = findMyHandle;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      [(SearchFieldItem *)self clear];
      objc_storeStrong(&self->_findMyHandle, a3);
      v8 = v10;
    }
  }
}

- (void)setAutocompletePerson:(id)a3
{
  v5 = a3;
  if (self->_autocompletePerson != v5)
  {
    v6 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_autocompletePerson, a3);
    v5 = v6;
  }
}

- (void)setComposedWaypoint:(id)a3
{
  v5 = a3;
  composedWaypoint = self->_composedWaypoint;
  v17 = v5;
  v7 = composedWaypoint;
  if (v17 | v7)
  {
    v8 = [v17 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [(SearchFieldItem *)self clear];
      objc_storeStrong(&self->_composedWaypoint, a3);
      v9 = [v17 latLng];

      if (v9)
      {
        v10 = [v17 latLng];
        latLng = self->_latLng;
        self->_latLng = v10;
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

- (void)setRoutePlanningWaypointRequest:(id)a3
{
  v5 = a3;
  routePlanningWaypointRequest = self->_routePlanningWaypointRequest;
  if (routePlanningWaypointRequest != v5)
  {
    v13 = v5;
    v7 = [(RoutePlanningWaypointRequest *)routePlanningWaypointRequest isEqual:v5];
    v5 = v13;
    if ((v7 & 1) == 0)
    {
      [(SearchFieldItem *)self clear];
      objc_storeStrong(&self->_routePlanningWaypointRequest, a3);
      v8 = objc_alloc_init(GEOLatLng);
      latLng = self->_latLng;
      self->_latLng = v8;

      v10 = [(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest waypointRequest];
      [v10 coordinate];
      [(GEOLatLng *)self->_latLng setLat:?];

      v11 = [(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest waypointRequest];
      [v11 coordinate];
      [(GEOLatLng *)self->_latLng setLng:v12];

      v5 = v13;
    }
  }
}

- (void)setMapKitHandle:(id)a3
{
  if (self->_mapKitHandle != a3)
  {
    v5 = a3;
    [(SearchFieldItem *)self clear];
    v6 = [v5 copy];

    mapKitHandle = self->_mapKitHandle;
    self->_mapKitHandle = v6;
  }
}

- (void)setChildPlace:(id)a3
{
  v5 = a3;
  if (self->_childPlace != v5)
  {
    v11 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_childPlace, a3);
    v6 = objc_alloc_init(GEOLatLng);
    latLng = self->_latLng;
    self->_latLng = v6;

    v8 = [(GEOMapItemChildPlace *)v11 identifier];
    [v8 coordinate];
    [(GEOLatLng *)self->_latLng setLat:?];

    v9 = [(GEOMapItemChildPlace *)v11 identifier];
    [v9 coordinate];
    [(GEOLatLng *)self->_latLng setLng:v10];

    v5 = v11;
  }
}

- (void)setExternalURLQuery:(id)a3
{
  v5 = a3;
  if (self->_externalURLQuery != v5)
  {
    v6 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_externalURLQuery, a3);
    v5 = v6;
  }
}

- (void)setHistoryItem:(id)a3
{
  v5 = a3;
  if (self->_historyItem != v5)
  {
    v6 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_historyItem, a3);
    v5 = v6;
  }
}

- (void)setAddress:(id)a3
{
  v5 = a3;
  if (self->_address != v5)
  {
    v10 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_address, a3);
    v6 = [(AddressBookAddress *)v10 geocodedMapItem];
    v7 = [v6 place];
    v8 = [v7 center];
    latLng = self->_latLng;
    self->_latLng = v8;

    v5 = v10;
  }
}

- (void)setCoreRecentContact:(id)a3
{
  v4 = a3;
  coreRecentContact = self->_coreRecentContact;
  v6 = v4;
  v11 = v6;
  if (coreRecentContact == v6)
  {
    goto LABEL_7;
  }

  v7 = coreRecentContact;
  v8 = [v11 contactID];
  v9 = [v7 contactID];

  if (v8 != v9)
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

- (void)setUserTypedStringForRAP:(id)a3
{
  if (self->_userTypedStringForRAP != a3)
  {
    v5 = [a3 copy];
    userTypedStringForRAP = self->_userTypedStringForRAP;
    self->_userTypedStringForRAP = v5;
  }
}

- (void)setCompletion:(id)a3
{
  v5 = a3;
  if (self->_completion != v5)
  {
    v10 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_completion, a3);
    v6 = [(MKLocalSearchCompletion *)v10 mapItem];
    v7 = [v6 place];
    v8 = [v7 center];
    latLng = self->_latLng;
    self->_latLng = v8;

    v5 = v10;
  }
}

- (void)setSearchResult:(id)a3
{
  v5 = a3;
  if (!v5 || self->_searchResult != v5)
  {
    v9 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_searchResult, a3);
    v6 = objc_alloc_init(GEOLatLng);
    latLng = self->_latLng;
    self->_latLng = v6;

    [(SearchResult *)v9 coordinate];
    [(GEOLatLng *)self->_latLng setLat:?];
    [(SearchResult *)v9 coordinate];
    [(GEOLatLng *)self->_latLng setLng:v8];
    v5 = v9;
  }
}

- (void)setSearchString:(id)a3 forCompletedQuery:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!v11 || self->_searchString != v11 || self->_completedQuery != v6)
  {
    [(SearchFieldItem *)self clear];
    v7 = [(NSString *)v11 copy];
    searchString = self->_searchString;
    self->_searchString = v7;

    v9 = [(NSString *)v6 copy];
    completedQuery = self->_completedQuery;
    self->_completedQuery = v9;
  }
}

- (void)setSuggestion:(id)a3
{
  v5 = a3;
  if (!v5 || self->_suggestion != v5)
  {
    v6 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_suggestion, a3);
    v5 = v6;
  }
}

- (void)setPlaceCategoryItem:(id)a3
{
  v5 = a3;
  if (!v5 || self->_placeCategoryItem != v5)
  {
    v6 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_placeCategoryItem, a3);
    v5 = v6;
  }
}

- (void)setVenueCategoryItem:(id)a3
{
  v5 = a3;
  if (!v5 || self->_venueCategoryItem != v5)
  {
    v6 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_venueCategoryItem, a3);
    v5 = v6;
  }
}

- (void)setSearchCategory:(id)a3
{
  v5 = a3;
  if (!v5 || self->_searchCategory != v5)
  {
    v6 = v5;
    [(SearchFieldItem *)self clear];
    objc_storeStrong(&self->_searchCategory, a3);
    v5 = v6;
  }
}

- (void)setAddressString:(id)a3
{
  v4 = a3;
  if (!v4 || self->_addressString != v4)
  {
    v7 = v4;
    [(SearchFieldItem *)self clear];
    v5 = [(NSString *)v7 copy];
    addressString = self->_addressString;
    self->_addressString = v5;

    v4 = v7;
  }
}

- (void)setSearchString:(id)a3
{
  v4 = a3;
  if (!v4 || self->_searchString != v4)
  {
    v7 = v4;
    [(SearchFieldItem *)self clear];
    v5 = [(NSString *)v7 copy];
    searchString = self->_searchString;
    self->_searchString = v5;

    v4 = v7;
  }
}

- (BOOL)isEquivalentAsWaypointToSearchFieldItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [(SearchFieldItem *)self autocompletePerson];
  v6 = [v4 autocompletePerson];
  v7 = v6;
  if (v5 && v6)
  {
    goto LABEL_4;
  }

  if (v5 | v7)
  {
    goto LABEL_7;
  }

  v5 = [(SearchFieldItem *)self findMyHandle];
  v10 = [v4 findMyHandle];
  v7 = v10;
  if (v5 && v10)
  {
LABEL_4:
    IsEqualToMapItemForPurpose = [v5 isEqual:v7];
LABEL_5:

    goto LABEL_8;
  }

  if (v5 | v7)
  {
LABEL_7:
    IsEqualToMapItemForPurpose = 0;
    goto LABEL_8;
  }

  if ([(SearchFieldItem *)self isEqualToSearchFieldItem:v4])
  {
    IsEqualToMapItemForPurpose = 1;
    goto LABEL_8;
  }

  searchResult = self->_searchResult;
  if (searchResult)
  {
    v12 = v4[6];
    if (v12)
    {
      v13 = [(SearchResult *)searchResult isEqualToSearchResult:v12 forPurpose:1];
LABEL_17:
      IsEqualToMapItemForPurpose = v13;
      goto LABEL_8;
    }
  }

  historyItem = self->_historyItem;
  if (!historyItem || !v4[12] || ((v52 = 0, v53 = &v52, v54 = 0x3032000000, v55 = sub_1009D73B8, v56 = sub_1009D73C8, v57 = 0, v46 = 0, v47 = &v46, v48 = 0x3032000000, v49 = sub_1009D73B8, v50 = sub_1009D73C8, v51 = 0, -[HistoryEntryRecentsItem historyEntry](historyItem, "historyEntry"), v15 = objc_claimAutoreleasedReturnValue(), v45[0] = _NSConcreteStackBlock, v45[1] = 3221225472, v45[2] = sub_1009D9898, v45[3] = &unk_101661C68, v45[4] = &v52, [v15 ifSearch:0 ifRoute:0 ifPlaceDisplay:v45 ifTransitLineItem:0], v15, objc_msgSend(v4[12], "historyEntry"), v16 = objc_claimAutoreleasedReturnValue(), v44[0] = _NSConcreteStackBlock, v44[1] = 3221225472, v44[2] = sub_1009D98E4, v44[3] = &unk_101661C68, v44[4] = &v46, objc_msgSend(v16, "ifSearch:ifRoute:ifPlaceDisplay:ifTransitLineItem:", 0, 0, v44, 0), v16, !v53[5]) || !v47[5] ? (IsEqualToMapItemForPurpose = 0, v17 = 1) : (IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose(), v17 = 0), _Block_object_dispose(&v46, 8), v51, _Block_object_dispose(&v52, 8), v57, v17))
  {
    routePlanningWaypointRequest = self->_routePlanningWaypointRequest;
    if (routePlanningWaypointRequest && v4[22])
    {
      v19 = [(RoutePlanningWaypointRequest *)routePlanningWaypointRequest waypointRequest];
      v20 = [v4[22] waypointRequest];
      v21 = v19;
      v22 = v20;
      v23 = v22;
      IsEqualToMapItemForPurpose = 0;
      if (v21 && v22)
      {
        if (v21 == v22 || [v21 isCurrentLocation] && (objc_msgSend(v23, "isCurrentLocation") & 1) != 0 || (objc_msgSend(v21, "coordinate"), v34 = v33, v36 = v35, objc_msgSend(v23, "coordinate"), v38 = v37, v40 = v39, v58.latitude = v34, v58.longitude = v36, CLLocationCoordinate2DIsValid(v58)) && (v59.latitude = v38, v59.longitude = v40, CLLocationCoordinate2DIsValid(v59)) && vabdd_f64(v34, v38) < 0.00000000999999994 && vabdd_f64(v36, v40) < 0.00000000999999994)
        {
          IsEqualToMapItemForPurpose = 1;
        }

        else
        {
          v41 = [v21 mapItemForLocationComparison];
          v42 = [v23 mapItemForLocationComparison];
          v43 = v42;
          IsEqualToMapItemForPurpose = v41 && v42 && ([v41 _isEquivalentURLRepresentationTo:v42] & 1) != 0;
        }
      }
    }

    else
    {
      v24 = [(SearchFieldItem *)self evStopWaypoint];
      if (v24)
      {
        v25 = v24;
        v26 = [v4 evStopWaypoint];

        if (v26)
        {
          v5 = [(SearchFieldItem *)self evStopWaypoint];
          v27 = [v5 muid];
          v7 = [v4 evStopWaypoint];
          if (v27 == [v7 muid])
          {
            v28 = [(SearchFieldItem *)self evStopWaypoint];
            v29 = [v28 latLng];
            v30 = [v4 evStopWaypoint];
            v31 = [v30 latLng];
            if (v29 | v31)
            {
              IsEqualToMapItemForPurpose = [v29 isEqual:v31];
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
      if (composedWaypoint && v4[23])
      {
        v13 = [(GEOComposedWaypoint *)composedWaypoint isEqual:?];
        goto LABEL_17;
      }

      v21 = [(SearchFieldItem *)self waypoint];
      v23 = [v4 waypoint];
      if ([v21 isValid] && objc_msgSend(v23, "isValid"))
      {
        IsEqualToMapItemForPurpose = [v21 isEqual:v23];
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

- (BOOL)isEqualToSearchFieldItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_83;
  }

  if (v4 != self)
  {
    if (![(NSString *)self->_searchString isEqualToString:v4->_searchString]&& (self->_searchString || v5->_searchString) || ![(SearchResult *)self->_searchResult isEqual:v5->_searchResult]&& (self->_searchResult || v5->_searchResult) || ([(MKLocalSearchCompletion *)self->_completion isEqual:v5->_completion]& 1) == 0 && (self->_completion || v5->_completion) || ![(NSString *)self->_userTypedStringForRAP isEqualToString:v5->_userTypedStringForRAP]&& (self->_userTypedStringForRAP || v5->_userTypedStringForRAP) || ([(GEORetainedSearchMetadata *)self->_retainedSearchMetadata isEqual:v5->_retainedSearchMetadata]& 1) == 0 && (self->_retainedSearchMetadata || v5->_retainedSearchMetadata) || ([(NSString *)self->_completedQuery isEqual:v5->_completedQuery]& 1) == 0 && (self->_completedQuery || v5->_completedQuery) || ![(AddressBookAddress *)self->_address isEqual:v5->_address]&& (self->_address || v5->_address) || ![(MapsFindMyHandle *)self->_findMyHandle isEqual:v5->_findMyHandle]&& (self->_findMyHandle || v5->_findMyHandle) || ![(MapsAutocompletePerson *)self->_autocompletePerson isEqual:v5->_autocompletePerson]&& (self->_autocompletePerson || v5->_autocompletePerson) || ([(GEOSearchCategory *)self->_searchCategory isEqual:v5->_searchCategory]& 1) == 0 && (self->_searchCategory || v5->_searchCategory) || ![(VenueCategoryItem *)self->_venueCategoryItem isEqual:v5->_venueCategoryItem]&& (self->_venueCategoryItem || v5->_venueCategoryItem) || ([(PlaceCategoryItem *)self->_placeCategoryItem isEqual:v5->_placeCategoryItem]& 1) == 0 && (self->_placeCategoryItem || v5->_placeCategoryItem) || ([(GEORelatedSearchSuggestion *)self->_suggestion isEqual:v5->_suggestion]& 1) == 0 && (self->_suggestion || v5->_suggestion) || ![(HistoryEntryRecentsItem *)self->_historyItem isEqual:v5->_historyItem]&& (self->_historyItem || v5->_historyItem) || ![(ExternalURLQuery *)self->_externalURLQuery isEqualToExternalURLQuery:v5->_externalURLQuery]&& (self->_externalURLQuery || v5->_externalURLQuery) || ([(GEOMapItemChildPlace *)self->_childPlace isEqual:v5->_childPlace]& 1) == 0 && (self->_childPlace || v5->_childPlace) || ([(NSData *)self->_mapKitHandle isEqual:v5->_mapKitHandle]& 1) == 0 && (self->_mapKitHandle || v5->_mapKitHandle) || ![(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest isEqual:v5->_routePlanningWaypointRequest]&& (self->_routePlanningWaypointRequest || v5->_routePlanningWaypointRequest) || ([(GEOComposedWaypoint *)self->_composedWaypoint isEqual:v5->_composedWaypoint]& 1) == 0 && (self->_composedWaypoint || v5->_composedWaypoint))
    {
      goto LABEL_83;
    }

    coreRecentContact = v5->_coreRecentContact;
    v7 = self->_coreRecentContact;
    v8 = v7;
    if (v7 == coreRecentContact)
    {

      goto LABEL_86;
    }

    v9 = coreRecentContact;
    v10 = [v8 contactID];
    v11 = [v9 contactID];

    if (v10 != v11)
    {
      goto LABEL_91;
    }

    if (v8 | v9)
    {
LABEL_86:
      punchInDetails = self->_punchInDetails;
      v8 = [(SearchFieldItem *)v5 punchInDetails];
      if (([(GEOSpotlightSearchPunchIn *)punchInDetails isEqual:v8]& 1) != 0 || !self->_punchInDetails && !v5->_punchInDetails)
      {
        favoriteItem = self->_favoriteItem;
        v16 = [(SearchFieldItem *)v5 favoriteItem];
        if (([(MapsFavoriteItem *)favoriteItem isEqual:v16]& 1) != 0)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_searchString copyWithZone:a3];
  v7 = *(v5 + 3);
  *(v5 + 3) = v6;

  objc_storeStrong(v5 + 6, self->_searchResult);
  objc_storeStrong(v5 + 7, self->_completion);
  v8 = [(NSString *)self->_userTypedStringForRAP copyWithZone:a3];
  v9 = *(v5 + 27);
  *(v5 + 27) = v8;

  v10 = [(GEORetainedSearchMetadata *)self->_retainedSearchMetadata copyWithZone:a3];
  v11 = *(v5 + 28);
  *(v5 + 28) = v10;

  v12 = [(NSString *)self->_completedQuery copyWithZone:a3];
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

- (id)waypointIconWithScale:(double)a3
{
  v5 = [(SearchFieldItem *)self searchResult];
  v6 = [v5 isDynamicCurrentLocation];

  if (v6)
  {
    v7 = +[GEOFeatureStyleAttributes currentLocationStyleAttributes];
    v8 = [MKIconManager imageForStyle:v7 size:0 forScale:0 format:a3];

    if (v8)
    {
      goto LABEL_59;
    }
  }

  v9 = [(SearchFieldItem *)self composedWaypoint];
  v10 = [v9 findMyHandleID];
  if (v10)
  {
    v11 = v10;
    v12 = [(SearchFieldItem *)self routePlanningWaypointRequest];

    if (v12)
    {
      v13 = [(SearchFieldItem *)self routePlanningWaypointRequest];
      v14 = [v13 waypointRequest];
      v8 = [v14 waypointIconWithScale:a3];

      if (v8)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
  }

  v15 = [(SearchFieldItem *)self composedWaypoint];
  v16 = [v15 addressBookAddress];
  if (v16)
  {
    v17 = v16;
    v18 = [(SearchFieldItem *)self routePlanningWaypointRequest];

    if (v18)
    {
      v19 = [(SearchFieldItem *)self routePlanningWaypointRequest];
      v20 = [v19 waypointRequest];
      v8 = [v20 waypointIconWithScale:a3];

      if (v8)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
  }

  v21 = [(SearchFieldItem *)self composedWaypoint];
  if (v21)
  {
    v22 = v21;
    v23 = [(SearchFieldItem *)self composedWaypoint];
    v24 = [v23 styleAttributes];

    if (v24)
    {
      v25 = [(SearchFieldItem *)self composedWaypoint];
      v26 = [v25 styleAttributes];
      v8 = [(SearchFieldItem *)self _iconWithStyleAttributes:v26 scale:a3];

      if (v8)
      {
        goto LABEL_59;
      }
    }
  }

  v27 = [(SearchFieldItem *)self mapItemIfGeocoded];

  if (v27)
  {
    v28 = [(SearchFieldItem *)self mapItemIfGeocoded];
    v8 = [MKMapItem _maps_markerImageForMapItem:v28 scale:2 size:0 useMarkerFallback:a3];

    if (v8)
    {
      goto LABEL_59;
    }
  }

  v29 = [(SearchFieldItem *)self routePlanningWaypointRequest];

  if (v29)
  {
    v30 = [(SearchFieldItem *)self routePlanningWaypointRequest];
    v31 = [v30 waypointRequest];
    v8 = [v31 waypointIconWithScale:a3];

    if (v8)
    {
      goto LABEL_59;
    }
  }

  v32 = [(SearchFieldItem *)self evStopWaypoint];

  if (v32)
  {
    v33 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    v8 = [MKIconManager imageForStyle:v33 size:2 forScale:0 format:a3];

    if (v8)
    {
      goto LABEL_59;
    }
  }

  v34 = [(SearchFieldItem *)self completion];

  if (v34)
  {
    v35 = [(SearchFieldItem *)self completion];
    v36 = [v35 iconStyleAttributes];

    if (v36)
    {
      v37 = [GEOFeatureStyleAttributes alloc];
      v38 = [(SearchFieldItem *)self completion];
      v39 = [v38 iconStyleAttributes];
      v40 = [v37 initWithGEOStyleAttributes:v39];

      goto LABEL_35;
    }

    v41 = [(SearchFieldItem *)self completion];
    v42 = [v41 clientResolved];
    v43 = [v42 itemType];

    v40 = 0;
    if (v43 > 2)
    {
      if (v43 == 3)
      {
        v44 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
      }

      else
      {
        if (v43 != 6)
        {
          goto LABEL_35;
        }

        v44 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
      }
    }

    else if (v43 == 1)
    {
      v44 = +[GEOFeatureStyleAttributes homeStyleAttributes];
    }

    else
    {
      if (v43 != 2)
      {
        goto LABEL_35;
      }

      v44 = +[GEOFeatureStyleAttributes workStyleAttributes];
    }

    v40 = v44;
LABEL_35:
    v8 = [(SearchFieldItem *)self _iconWithStyleAttributes:v40 scale:a3];

    if (v8)
    {
      goto LABEL_59;
    }
  }

  v45 = [(SearchFieldItem *)self address];

  if (v45)
  {
    v46 = [(SearchFieldItem *)self address];
    v47 = [v46 addressType];

    switch(v47)
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
        v8 = [(SearchFieldItem *)self _iconWithStyleAttributes:v49 scale:a3];

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
  v50 = [(SearchFieldItem *)self venueCategoryItem];
  if (!v50 || (v51 = v50, -[SearchFieldItem venueCategoryItem](self, "venueCategoryItem"), v52 = objc_claimAutoreleasedReturnValue(), [v52 searchCategory], v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v53, "styleAttributes"), v54 = objc_claimAutoreleasedReturnValue(), v54, v53, v52, v51, !v54) || (-[SearchFieldItem venueCategoryItem](self, "venueCategoryItem"), v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "searchCategory"), v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v56, "styleAttributes"), v57 = objc_claimAutoreleasedReturnValue(), -[SearchFieldItem _iconWithStyleAttributes:scale:](self, "_iconWithStyleAttributes:scale:", v57, a3), v8 = objc_claimAutoreleasedReturnValue(), v57, v56, v55, !v8))
  {
    v58 = [(SearchFieldItem *)self placeCategoryItem];
    if (!v58 || (v59 = v58, -[SearchFieldItem placeCategoryItem](self, "placeCategoryItem"), v60 = objc_claimAutoreleasedReturnValue(), [v60 searchCategory], v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "styleAttributes"), v62 = objc_claimAutoreleasedReturnValue(), v62, v61, v60, v59, !v62) || (-[SearchFieldItem placeCategoryItem](self, "placeCategoryItem"), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v63, "searchCategory"), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "styleAttributes"), v65 = objc_claimAutoreleasedReturnValue(), -[SearchFieldItem _iconWithStyleAttributes:scale:](self, "_iconWithStyleAttributes:scale:", v65, a3), v8 = objc_claimAutoreleasedReturnValue(), v65, v64, v63, !v8))
    {
      v66 = [(SearchFieldItem *)self searchCategory];
      if (!v66 || (v67 = v66, -[SearchFieldItem searchCategory](self, "searchCategory"), v68 = objc_claimAutoreleasedReturnValue(), [v68 styleAttributes], v69 = objc_claimAutoreleasedReturnValue(), v69, v68, v67, !v69) || (-[SearchFieldItem searchCategory](self, "searchCategory"), v70 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v70, "styleAttributes"), v71 = objc_claimAutoreleasedReturnValue(), -[SearchFieldItem _iconWithStyleAttributes:scale:](self, "_iconWithStyleAttributes:scale:", v71, a3), v8 = objc_claimAutoreleasedReturnValue(), v71, v70, !v8))
      {
        if (self->_searchString && ([UIImage systemImageNamed:@"magnifyingglass.circle.fill"], (v72 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v8 = v72;
        }

        else
        {
          v73 = +[GEOFeatureStyleAttributes genericMarkerStyleAttributes];
          v8 = [(SearchFieldItem *)self _iconWithStyleAttributes:v73 scale:a3];
        }
      }
    }
  }

LABEL_59:

  return v8;
}

- (NSString)waypointName
{
  v3 = [(SearchFieldItem *)self searchResult];
  v4 = [v3 isDynamicCurrentLocation];

  if (v4)
  {
    v5 = [(SearchFieldItem *)self searchResult];
    v6 = [v5 title];
LABEL_5:

    goto LABEL_6;
  }

  v7 = [(SearchFieldItem *)self routePlanningWaypointRequest];

  if (v7)
  {
    v5 = [(SearchFieldItem *)self routePlanningWaypointRequest];
    v8 = [(SearchFieldItem *)self composedWaypoint];
    v6 = [v5 nameWithResolvedWaypoint:v8 allowCurrentLocation:1];

    goto LABEL_5;
  }

  v6 = [(SearchFieldItem *)self title];
LABEL_6:

  return v6;
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
    v4 = searchString;
    goto LABEL_6;
  }

  coreRecentContact = self->_coreRecentContact;
  if (coreRecentContact)
  {
    v9 = [(CRRecentContact *)coreRecentContact displayName];
    v10 = [v9 length];
    v11 = self->_coreRecentContact;
    if (v10)
    {
      [(CRRecentContact *)v11 displayName];
    }

    else
    {
      [(CRRecentContact *)v11 address];
    }
    v12 = ;
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
    v9 = [venueCategoryItem searchCategory];
    v12 = [v9 displayString];
LABEL_20:
    v6 = v12;
LABEL_21:

    goto LABEL_7;
  }

  searchCategory = self->_suggestion;
  if (searchCategory)
  {
LABEL_15:
    v4 = [(GEOSearchCategory *)searchCategory displayString];
    goto LABEL_6;
  }

  address = self->_address;
  if (address)
  {
    v4 = [(AddressBookAddress *)address compositeName];
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
    v4 = [(MapsFindMyHandle *)findMyHandle displayName];
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
      v9 = [(RoutePlanningWaypointRequest *)routePlanningWaypointRequest waypointPlaceholder];
      v39 = [v9 name];
      v40 = v39;
      if (v39)
      {
        v6 = v39;
      }

      else
      {
        v41 = [(RoutePlanningWaypointRequest *)self->_routePlanningWaypointRequest waypointRequest];
        v6 = [v41 waypointName];
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
        v4 = [(GEOMapItemChildPlace *)childPlace name];
        goto LABEL_6;
      }

      searchResult = self->_favoriteItem;
      if (!searchResult)
      {
        goto LABEL_58;
      }
    }

LABEL_2:
    v4 = [searchResult title];
LABEL_6:
    v6 = v4;
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
    v26 = [(HistoryEntryRecentsItem *)v25 historyEntry];
    v6 = [v26 query];

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
    v36 = [(HistoryEntryRecentsItem *)v35 historyEntry];
    v37 = [v36 geoMapItem];
    v6 = [v37 name];

    goto LABEL_7;
  }

LABEL_58:
  v6 = 0;
LABEL_7:

  return v6;
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

+ (SearchFieldItem)searchFieldItemWithWaypointRequest:(id)a3 resolvedWaypoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && ![v7 isCurrentLocation])
  {
    v9 = objc_alloc_init(a1);
    [v9 setRoutePlanningWaypointRequest:v6];
    objc_storeStrong(v9 + 23, a4);
  }

  else
  {
    v9 = [a1 searchFieldItemWithObject:v8];
  }

  return v9;
}

+ (SearchFieldItem)searchFieldItemWithObject:(id)a3 expandRecentsItem:(BOOL)a4 preserveContact:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
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
        [v44[5] setSearchCategory:v8];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [[SearchResult alloc] initWithMapItem:v8];
          [v44[5] setSearchResult:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v44[5] setSearchResult:v8];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v44[5] setCompletion:v8];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v44[5] setAutocompletePerson:v8];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v44[5] setFindMyHandle:v8];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v44[5] setAddress:v8];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if (v6)
                      {
                        v12 = v8;
                        v13 = [v12 historyEntry];
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
                        [v13 ifSearch:v42 ifRoute:v41 ifPlaceDisplay:v40 ifTransitLineItem:0];
                      }

                      else
                      {
                        [v44[5] setHistoryItem:v8];
                      }
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        if (v5)
                        {
                          [v44[5] setCoreRecentContact:v8];
                        }

                        else
                        {
                          v15 = [v8 address];
                          [v44[5] setAddressString:v15];
                        }
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v14 = [v8 searchResult];
                          [v44[5] setSearchResult:v14];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [v44[5] setVenueCategoryItem:v8];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [v44[5] setPlaceCategoryItem:v8];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [v44[5] setChildPlace:v8];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  [v44[5] setRoutePlanningWaypointRequest:v8];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    [v44[5] setSuggestion:v8];
                                  }

                                  else if ([v8 conformsToProtocol:&OBJC_PROTOCOL___GEOMapItem])
                                  {
                                    v16 = [[SearchResult alloc] initWithGEOMapItem:v8];
                                    [v44[5] setSearchResult:v16];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      objc_storeStrong(v44 + 5, a3);
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v17 = [v8 pin];
                                        [v44[5] setSearchResult:v17];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v18 = v8;
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
                                            [v44[5] setSearchString:v8];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v20 = v8;
                                              if ([v20 type] == 24)
                                              {
                                                v21 = [v20 findMyWaypoint];
                                                if (!v21)
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

                                                v22 = [[SearchResult alloc] initWithComposedWaypoint:v21];
                                                [v44[5] setSearchResult:v22];
                                              }

                                              else
                                              {
                                                v25 = [v20 MKMapItem];

                                                if (v25)
                                                {
                                                  v26 = [SearchResult alloc];
                                                  v27 = [v20 MKMapItem];
                                                  v21 = [(SearchResult *)v26 initWithMapItem:v27];

                                                  [v44[5] setSearchResult:v21];
                                                }

                                                else
                                                {
                                                  v21 = v44[5];
                                                  v44[5] = 0;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                [v44[5] setFavoriteItem:v8];
                                                v23 = [v44[5] favoriteItem];
                                                v24 = [SearchResult searchResultFromFavoriteItem:v23];
                                                [v44[5] setSearchResult:v24];
                                              }

                                              else
                                              {
                                                v28 = sub_10006D178();
                                                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                                                {
                                                  if (v6)
                                                  {
                                                    v29 = @"YES";
                                                  }

                                                  else
                                                  {
                                                    v29 = @"NO";
                                                  }

                                                  v30 = v29;
                                                  if (v5)
                                                  {
                                                    v31 = @"YES";
                                                  }

                                                  else
                                                  {
                                                    v31 = @"NO";
                                                  }

                                                  v32 = v31;
                                                  v33 = [NSString stringWithFormat:@"Unable to create item from object (expand recents: %@, preserve contact: %@): %@", v30, v32, v8];
                                                  *buf = 136315906;
                                                  v50 = "+[SearchFieldItem searchFieldItemWithObject:expandRecentsItem:preserveContact:]";
                                                  v51 = 2080;
                                                  v52 = "SearchFieldItem.m";
                                                  v53 = 1024;
                                                  v54 = 1005;
                                                  v55 = 2112;
                                                  v56 = v33;
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

+ (id)searchFieldItemsForRouteInSuggestionsEntry:(id)a3 excludeCurrentLocationOrigin:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!v5)
  {
    v32 = 0;
    goto LABEL_34;
  }

  v6 = objc_alloc_init(NSMutableArray);
  if ([v5 containsKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"])
  {
    v7 = [v5 routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 waypointsCount];
      v36 = v5;
      v10 = [v5 uint64ForKey:@"MapsSuggestionsResumeRouteWaypointIndex"];
      if (v10 < v9)
      {
        v11 = v10;
        v12 = 0;
        p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
        v37 = v9;
        do
        {
          v14 = objc_alloc_init((p_cache + 88));
          v15 = [v8 waypointsAtIndex:v11];
          if (![v15 isCurrentLocation] || !v4 || v12)
          {
            v16 = v6;
            v17 = [SearchResult alloc];
            [v8 waypointsAtIndex:v11];
            v18 = p_cache;
            v20 = v19 = v8;
            v21 = [(SearchResult *)v17 initWithComposedWaypoint:v20];
            [v14 setSearchResult:v21];

            v6 = v16;
            v9 = v37;

            v8 = v19;
            p_cache = v18;
            [v6 addObject:v14];
          }

          ++v11;
          --v12;
        }

        while (v9 != v11);
      }

      if (![v6 count])
      {
        v34 = sub_1009D851C();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v39 = [v8 waypointsCount];
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unable to extract any items from MSG entry (expected %lu)", buf, 0xCu);
        }

        v32 = 0;
        goto LABEL_32;
      }

      v22 = [v6 count];
      v23 = sub_1009D851C();
      v24 = v23;
      if (v22 >= v9)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v39 = [v6 count];
          v40 = 2048;
          v41 = v9;
          v25 = v24;
          v26 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_30;
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v39 = [v6 count];
        v40 = 2048;
        v41 = v9;
        v25 = v24;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_30:
        _os_log_impl(&_mh_execute_header, v25, v26, "Extracted %lu items from MSG entry (expected %lu)", buf, 0x16u);
      }

      v32 = v6;
LABEL_32:
      v5 = v36;
      goto LABEL_33;
    }
  }

  v8 = [v5 MKMapItem];
  v27 = [v5 findMyWaypoint];
  if (v27)
  {
    v28 = objc_alloc_init(SearchFieldItem);
    v29 = [[SearchResult alloc] initWithComposedWaypoint:v27];
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
    if (!v8)
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
    v33 = [[SearchResult alloc] initWithMapItem:v8];
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

+ (id)searchFieldItemsForRouteHistoryEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 endWaypoint];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = +[SearchResult currentLocationSearchResult];
    v7 = [SearchFieldItem searchFieldItemWithObject:v6];
    v37[0] = v7;
    v8 = [v3 endWaypoint];
    v9 = [SearchFieldItem searchFieldItemWithObject:v8];
    v37[1] = v9;
    v10 = [NSArray arrayWithObjects:v37 count:2];

LABEL_3:
    goto LABEL_13;
  }

  if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) == 0 && (MapsFeature_IsEnabled_Maps420() & 1) == 0 && !MapsFeature_IsEnabled_Maps182())
  {
    v22 = [v3 startWaypoint];
    v23 = [SearchFieldItem searchFieldItemWithObject:v22];
    v24 = v23;
    if (v23)
    {
      v6 = v23;
    }

    else
    {
      v25 = +[SearchResult currentLocationSearchResult];
      v6 = [SearchFieldItem searchFieldItemWithObject:v25];
    }

    v26 = [v3 endWaypoint];
    v27 = [SearchFieldItem searchFieldItemWithObject:v26];
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

    v30[0] = v6;
    v30[1] = v7;
    v10 = [NSArray arrayWithObjects:v30 count:2];
    v8 = sub_1009D851C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Created items from non-MPR history entry: %@", buf, 0xCu);
    }

    goto LABEL_3;
  }

  v6 = [v3 waypoints];
  v10 = sub_100021DB0(v6, &stru_101631488);
  v11 = [v10 count];
  v12 = [v6 count];
  v13 = sub_1009D851C();
  v7 = v13;
  if (v11 >= v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v19 = [v10 count];
    v20 = [v6 count];
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
    v15 = [v6 count];
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
  v3 = [(SearchFieldItem *)self _maps_autoCompletePerson];
  v4 = [(SearchFieldItem *)self _maps_findMyHandle];
  v5 = [v3 handle];
  v6 = (v5 | v4) != 0;

  return v6;
}

- (AddressBookAddress)_maps_address
{
  v3 = [(SearchFieldItem *)self address];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SearchFieldItem *)self searchResult];
    v5 = [v6 address];
  }

  return v5;
}

- (_TtC4Maps16MapsFindMyHandle)_maps_findMyHandle
{
  v3 = [(SearchFieldItem *)self findMyHandle];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SearchFieldItem *)self searchResult];
    v5 = [v6 findMyHandle];
  }

  return v5;
}

- (_TtC4Maps22MapsAutocompletePerson)_maps_autoCompletePerson
{
  v3 = [(SearchFieldItem *)self autocompletePerson];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SearchFieldItem *)self searchResult];
    v5 = [v6 autocompletePerson];
  }

  return v5;
}

@end