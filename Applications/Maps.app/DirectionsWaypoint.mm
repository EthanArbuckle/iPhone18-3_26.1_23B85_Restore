@interface DirectionsWaypoint
+ (DirectionsWaypoint)directionsWaypointWithNanoDirectionWaypoint:(id)waypoint;
- ($873BFAB23BBB6E2F0B0288ED2F935688)bounds;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (CLLocationCoordinate2D)coordinate;
- (NSString)hawkQueryRepresentation;
- (NSString)location;
- (NSString)singleLineAddress;
- (SearchResult)pin;
- (id)description;
- (id)nanoDirectionWaypoint;
- (unint64_t)hash;
- (void)setResponseSearch:(id)search;
- (void)updateFromGEOComposedWaypoint:(id)waypoint;
@end

@implementation DirectionsWaypoint

- (id)nanoDirectionWaypoint
{
  v3 = objc_alloc_init(NanoDirectionWaypoint);
  requestSearch = [(DirectionsWaypoint *)self requestSearch];

  if (requestSearch)
  {
    requestSearch2 = [(DirectionsWaypoint *)self requestSearch];
    isDynamicCurrentLocation = [requestSearch2 isDynamicCurrentLocation];

    if (isDynamicCurrentLocation)
    {
      requestSearch3 = [(DirectionsWaypoint *)self requestSearch];
      [requestSearch3 coordinate];
      v9 = v8;
      v11 = v10;

      requestSearch4 = 0;
      if (fabs(v11) <= 180.0 && v9 >= -90.0 && v9 <= 90.0)
      {
        requestSearch4 = [[GEOLocation alloc] initWithGEOCoordinate:1 isUserLocation:{v9, v11}];
      }

      v13 = [NanoDirectionWaypoint directionWaypointForCurrentLocation:requestSearch4];
      goto LABEL_10;
    }

    requestSearch4 = [(DirectionsWaypoint *)self requestSearch];
    mapItem = [requestSearch4 mapItem];
    _geoMapItem = [(NanoDirectionWaypoint *)mapItem _geoMapItem];
    v15 = [NanoDirectionWaypoint directionWaypointWithGEOMapItem:_geoMapItem];

LABEL_14:
    v3 = mapItem;
    goto LABEL_15;
  }

  requestSearchString = [(DirectionsWaypoint *)self requestSearchString];

  if (!requestSearchString)
  {
    externalURLQuery = [(DirectionsWaypoint *)self externalURLQuery];

    if (!externalURLQuery)
    {
      goto LABEL_16;
    }

    requestSearch4 = [(DirectionsWaypoint *)self externalURLQuery];
    mapItem = [requestSearch4 query];
    _geoMapItem = [(DirectionsWaypoint *)self externalURLQuery];
    muid = [_geoMapItem muid];
    externalURLQuery2 = [(DirectionsWaypoint *)self externalURLQuery];
    v15 = +[NanoDirectionWaypoint directionWaypointWithLabel:muid:providerID:](NanoDirectionWaypoint, "directionWaypointWithLabel:muid:providerID:", mapItem, muid, [externalURLQuery2 resultProviderId]);

    goto LABEL_14;
  }

  requestSearch4 = [(DirectionsWaypoint *)self requestSearchString];
  v13 = [NanoDirectionWaypoint directionWaypointWithSearchString:requestSearch4];
LABEL_10:
  v15 = v13;
LABEL_15:

  v3 = v15;
LABEL_16:
  responseSearch = [(DirectionsWaypoint *)self responseSearch];

  if (responseSearch)
  {
    responseSearch2 = [(DirectionsWaypoint *)self responseSearch];
    composedWaypoint = [responseSearch2 composedWaypoint];
    [(NanoDirectionWaypoint *)v3 setComposedWaypoint:composedWaypoint];
  }

  return v3;
}

+ (DirectionsWaypoint)directionsWaypointWithNanoDirectionWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v4 = objc_alloc_init(DirectionsWaypoint);
  if ([waypointCopy isCurrentLocation])
  {
    searchString2 = +[SearchResult currentLocationSearchResult];
    [(DirectionsWaypoint *)v4 setRequestSearch:searchString2];
LABEL_8:

    goto LABEL_9;
  }

  searchString = [waypointCopy searchString];

  if (searchString)
  {
    searchString2 = [waypointCopy searchString];
    [(DirectionsWaypoint *)v4 setRequestSearchString:searchString2];
    goto LABEL_8;
  }

  geoMapItem = [waypointCopy geoMapItem];

  if (geoMapItem)
  {
    v8 = [SearchResult alloc];
    searchString2 = [waypointCopy geoMapItem];
    v9 = [(SearchResult *)v8 initWithGEOMapItem:searchString2];
    [(DirectionsWaypoint *)v4 setRequestSearch:v9];
LABEL_7:

    goto LABEL_8;
  }

  if ([waypointCopy muid] && objc_msgSend(waypointCopy, "providerID") >= 1)
  {
    v13 = [ExternalURLQuery alloc];
    searchString2 = [waypointCopy searchString];
    v9 = -[ExternalURLQuery initWithQuery:coordinate:muid:resultProviderId:contentProvider:](v13, "initWithQuery:coordinate:muid:resultProviderId:contentProvider:", searchString2, [waypointCopy muid], objc_msgSend(waypointCopy, "providerID"), 0, kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude);
    [(DirectionsWaypoint *)v4 setExternalURLQuery:v9];
    goto LABEL_7;
  }

LABEL_9:
  composedWaypoint = [waypointCopy composedWaypoint];

  if (composedWaypoint)
  {
    composedWaypoint2 = [waypointCopy composedWaypoint];
    [(DirectionsWaypoint *)v4 updateFromGEOComposedWaypoint:composedWaypoint2];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = @"YES";
  if ([(DirectionsWaypoint *)self isValid])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (![(DirectionsWaypoint *)self isDynamicCurrentLocation])
  {
    v4 = @"NO";
  }

  location = [(DirectionsWaypoint *)self location];
  v7 = [NSMutableString stringWithFormat:@"<%@: %p isValid=%@ isDynamicCurrentLocation=%@ location=%@", v3, self, v5, v4, location];

  requestSearchString = [(DirectionsWaypoint *)self requestSearchString];

  if (requestSearchString)
  {
    requestSearchString2 = [(DirectionsWaypoint *)self requestSearchString];
    [v7 appendFormat:@" requestSearchString=%@", requestSearchString2];
  }

  requestSearch = [(DirectionsWaypoint *)self requestSearch];

  if (requestSearch)
  {
    requestSearch2 = [(DirectionsWaypoint *)self requestSearch];
    [v7 appendFormat:@" requestSearch=%@", requestSearch2];
  }

  requestAddress = [(DirectionsWaypoint *)self requestAddress];

  if (requestAddress)
  {
    requestAddress2 = [(DirectionsWaypoint *)self requestAddress];
    [v7 appendFormat:@" requestAddress=%@", requestAddress2];
  }

  suggestionsPrefix = [(DirectionsWaypoint *)self suggestionsPrefix];

  if (suggestionsPrefix)
  {
    suggestionsPrefix2 = [(DirectionsWaypoint *)self suggestionsPrefix];
    [v7 appendFormat:@" suggestionsPrefix=%@", suggestionsPrefix2];
  }

  responseSearch = [(DirectionsWaypoint *)self responseSearch];

  if (responseSearch)
  {
    responseSearch2 = [(DirectionsWaypoint *)self responseSearch];
    [v7 appendFormat:@" responseSearch=%@", responseSearch2];
  }

  completion = [(DirectionsWaypoint *)self completion];

  if (completion)
  {
    completion2 = [(DirectionsWaypoint *)self completion];
    [v7 appendFormat:@" completion=%@", completion2];
  }

  mapItemIfLoaded = [(DirectionsWaypoint *)self mapItemIfLoaded];

  if (mapItemIfLoaded)
  {
    mapItemIfLoaded2 = [(DirectionsWaypoint *)self mapItemIfLoaded];
    [v7 appendFormat:@" mapItemIfLoaded=%@", mapItemIfLoaded2];
  }

  [v7 appendString:@">"];

  return v7;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  location = [(DirectionsWaypoint *)self location];
  v5 = [location hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(DirectionsWaypoint *)v5 pin];
      v7 = [(DirectionsWaypoint *)self pin];
      v8 = v7;
      if (v6 && v7)
      {
        v9 = [v6 isEqualToSearchResult:v7 forPurpose:1];
LABEL_19:

        goto LABEL_20;
      }

      location = [(DirectionsWaypoint *)v5 location];
      if (location && (v11 = location, [(DirectionsWaypoint *)self location], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
      {
        location2 = [(DirectionsWaypoint *)v5 location];
        location3 = [(DirectionsWaypoint *)self location];
      }

      else
      {
        requestSearchString = [(DirectionsWaypoint *)v5 requestSearchString];
        if (requestSearchString)
        {
          v18 = requestSearchString;
          requestSearchString2 = [(DirectionsWaypoint *)self requestSearchString];

          if (requestSearchString2)
          {
            location2 = [(DirectionsWaypoint *)v5 requestSearchString];
            requestSearchString3 = [(DirectionsWaypoint *)self requestSearchString];
            v16 = [location2 isEqualToString:requestSearchString3];
            goto LABEL_18;
          }
        }

        externalURLQuery = [(DirectionsWaypoint *)v5 externalURLQuery];
        if (externalURLQuery)
        {
          v21 = externalURLQuery;
          externalURLQuery2 = [(DirectionsWaypoint *)self externalURLQuery];

          if (externalURLQuery2)
          {
            location2 = [(DirectionsWaypoint *)v5 externalURLQuery];
            requestSearchString3 = [(DirectionsWaypoint *)self externalURLQuery];
            v16 = [location2 isEqualToExternalURLQuery:requestSearchString3];
            goto LABEL_18;
          }
        }

        requestAddress = [(DirectionsWaypoint *)v5 requestAddress];
        if (!requestAddress || (v25 = requestAddress, [(DirectionsWaypoint *)self requestAddress], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, !v26))
        {
          v9 = 0;
          goto LABEL_19;
        }

        location2 = [(DirectionsWaypoint *)v5 requestAddress];
        location3 = [(DirectionsWaypoint *)self requestAddress];
      }

      requestSearchString3 = location3;
      v16 = [location2 isEqual:location3];
LABEL_18:
      v9 = v16;

      goto LABEL_19;
    }

    v9 = 0;
  }

LABEL_20:

  return v9;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)bounds
{
  v2 = [(DirectionsWaypoint *)self pin];
  [v2 coordinate];
  if (v2 && fabs(v4) <= 180.0 && v3 >= -90.0 && v3 <= 90.0)
  {
    v5 = MKMapPointForCoordinate(*&v3);
    x = v5.x;
    y = v5.y;
    width = 0.0;
    height = 0.0;
  }

  else
  {
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.var1.var1 = v13;
  result.var1.var0 = v12;
  result.var0.var1 = v11;
  result.var0.var0 = v10;
  return result;
}

- (CLLocationCoordinate2D)coordinate
{
  v3 = [(DirectionsWaypoint *)self pin];
  if (v3)
  {
    v4 = [(DirectionsWaypoint *)self pin];
    [v4 coordinate];
    latitude = v5;
    longitude = v7;
  }

  else
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  v9 = latitude;
  v10 = longitude;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

- (SearchResult)pin
{
  requestSearch = self->_requestSearch;
  if (!requestSearch)
  {
    requestSearch = self->_responseSearch;
  }

  return requestSearch;
}

- (NSString)singleLineAddress
{
  singleLineAddress = [(SearchResult *)self->_requestSearch singleLineAddress];
  if ([singleLineAddress length])
  {
    singleLineAddress2 = singleLineAddress;
  }

  else
  {
    singleLineAddress2 = [(SearchResult *)self->_responseSearch singleLineAddress];
  }

  v5 = singleLineAddress2;

  return v5;
}

- (NSString)hawkQueryRepresentation
{
  if ([(DirectionsWaypoint *)self isValid])
  {
    mapItemIfLoaded = [(DirectionsWaypoint *)self mapItemIfLoaded];
    _identifier = [mapItemIfLoaded _identifier];

    if (_identifier)
    {
      location = [(DirectionsWaypoint *)self location];
    }

    else
    {
      [(DirectionsWaypoint *)self coordinate];
      v6 = [NSNumber numberWithDouble:?];
      [(DirectionsWaypoint *)self coordinate];
      v8 = [NSNumber numberWithDouble:v7];
      location = [NSString stringWithFormat:@"%@, %@", v6, v8];
    }
  }

  else
  {
    location = @"<invalid>";
  }

  return location;
}

- (NSString)location
{
  if ([(DirectionsWaypoint *)self isValid])
  {
    requestSearch = self->_requestSearch;
    if (requestSearch)
    {
      routableAddress = [(SearchResult *)requestSearch routableAddress];
LABEL_4:
      v5 = routableAddress;
      goto LABEL_6;
    }

    completion = self->_completion;
    if (!completion)
    {
      externalURLQuery = self->_externalURLQuery;
      if (externalURLQuery)
      {
        routableAddress = [(ExternalURLQuery *)externalURLQuery query];
      }

      else if ([(AddressBookAddress *)self->_requestAddress isValid])
      {
        routableAddress = [(AddressBookAddress *)self->_requestAddress singleLineAddress];
      }

      else
      {
        routableAddress = self->_requestSearchString;
      }

      goto LABEL_4;
    }

    displayLines = [(MKLocalSearchCompletion *)completion displayLines];
    v5 = [displayLines componentsJoinedByString:{@", "}];

    if (![v5 length])
    {
      v13 = 0.0;
      v14 = 0.0;
      if ([(MKLocalSearchCompletion *)self->_completion getCoordinate:&v13])
      {
        v9 = [NSNumber numberWithDouble:v13];
        v10 = [NSNumber numberWithDouble:v14];
        v11 = [NSString stringWithFormat:@"%@, %@", v9, v10];

        v5 = v11;
      }
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_6:

  return v5;
}

- (BOOL)isValid
{
  completion = self->_completion;
  if (completion)
  {
    category = [(MKLocalSearchCompletion *)completion category];
    if (category)
    {

      return 1;
    }

    queryLine = [(MKLocalSearchCompletion *)self->_completion queryLine];
    if ([queryLine length])
    {

      return 1;
    }

    title = [(MKLocalSearchCompletion *)self->_completion title];
    v7 = [title length];

    if (v7)
    {
      return 1;
    }
  }

  if (self->_responseSearch || self->_externalURLQuery || self->_requestSearch || self->_requestAddress)
  {
    return 1;
  }

  return [(NSString *)self->_requestSearchString length]!= 0;
}

- (void)setResponseSearch:(id)search
{
  searchCopy = search;
  p_responseSearch = &self->_responseSearch;
  if (self->_responseSearch != searchCopy)
  {
    v9 = searchCopy;
    objc_storeStrong(&self->_responseSearch, search);
    searchCopy = v9;
    requestSearch = self->_requestSearch;
    p_requestSearch = &self->_requestSearch;
    if (!requestSearch)
    {
      objc_storeStrong(p_requestSearch, *p_responseSearch);
      searchCopy = v9;
    }
  }
}

- (void)updateFromGEOComposedWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  responseSearch = [(DirectionsWaypoint *)self responseSearch];

  v5 = waypointCopy;
  if (!responseSearch)
  {
    geoMapItem = [waypointCopy geoMapItem];
    requestSearch = [(DirectionsWaypoint *)self requestSearch];

    if (requestSearch)
    {
      requestSearch2 = [(DirectionsWaypoint *)self requestSearch];
      v9 = [requestSearch2 copy];
      [(DirectionsWaypoint *)self setResponseSearch:v9];

      responseSearch2 = [(DirectionsWaypoint *)self responseSearch];
      [responseSearch2 updateWithGEOMapItem:geoMapItem];
    }

    else
    {
      if ([waypointCopy hasFindMyHandleID])
      {
        v11 = [[SearchResult alloc] initWithComposedWaypoint:waypointCopy];
      }

      else
      {
        isCurrentLocation = [waypointCopy isCurrentLocation];
        if (geoMapItem)
        {
          if ((isCurrentLocation & 1) == 0 && ![waypointCopy isLocationWaypointType])
          {
            v13 = [SearchResult alloc];
            responseSearch2 = [MKMapItem _itemWithGeoMapItem:geoMapItem];
            v14 = [(SearchResult *)v13 initWithMapItem:responseSearch2];
            [(DirectionsWaypoint *)self setResponseSearch:v14];

            goto LABEL_13;
          }

          v11 = [[SearchResult alloc] initWithComposedWaypoint:waypointCopy preserveLocationInfo:1];
        }

        else
        {
          if (!isCurrentLocation)
          {
LABEL_14:

            v5 = waypointCopy;
            goto LABEL_15;
          }

          v11 = +[SearchResult currentLocationSearchResult];
        }
      }

      responseSearch2 = v11;
      [(DirectionsWaypoint *)self setResponseSearch:v11];
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
}

@end