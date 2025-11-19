@interface DirectionsWaypoint
+ (DirectionsWaypoint)directionsWaypointWithNanoDirectionWaypoint:(id)a3;
- ($873BFAB23BBB6E2F0B0288ED2F935688)bounds;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (CLLocationCoordinate2D)coordinate;
- (NSString)hawkQueryRepresentation;
- (NSString)location;
- (NSString)singleLineAddress;
- (SearchResult)pin;
- (id)description;
- (id)nanoDirectionWaypoint;
- (unint64_t)hash;
- (void)setResponseSearch:(id)a3;
- (void)updateFromGEOComposedWaypoint:(id)a3;
@end

@implementation DirectionsWaypoint

- (id)nanoDirectionWaypoint
{
  v3 = objc_alloc_init(NanoDirectionWaypoint);
  v4 = [(DirectionsWaypoint *)self requestSearch];

  if (v4)
  {
    v5 = [(DirectionsWaypoint *)self requestSearch];
    v6 = [v5 isDynamicCurrentLocation];

    if (v6)
    {
      v7 = [(DirectionsWaypoint *)self requestSearch];
      [v7 coordinate];
      v9 = v8;
      v11 = v10;

      v12 = 0;
      if (fabs(v11) <= 180.0 && v9 >= -90.0 && v9 <= 90.0)
      {
        v12 = [[GEOLocation alloc] initWithGEOCoordinate:1 isUserLocation:{v9, v11}];
      }

      v13 = [NanoDirectionWaypoint directionWaypointForCurrentLocation:v12];
      goto LABEL_10;
    }

    v12 = [(DirectionsWaypoint *)self requestSearch];
    v16 = [v12 mapItem];
    v17 = [(NanoDirectionWaypoint *)v16 _geoMapItem];
    v15 = [NanoDirectionWaypoint directionWaypointWithGEOMapItem:v17];

LABEL_14:
    v3 = v16;
    goto LABEL_15;
  }

  v14 = [(DirectionsWaypoint *)self requestSearchString];

  if (!v14)
  {
    v18 = [(DirectionsWaypoint *)self externalURLQuery];

    if (!v18)
    {
      goto LABEL_16;
    }

    v12 = [(DirectionsWaypoint *)self externalURLQuery];
    v16 = [v12 query];
    v17 = [(DirectionsWaypoint *)self externalURLQuery];
    v19 = [v17 muid];
    v20 = [(DirectionsWaypoint *)self externalURLQuery];
    v15 = +[NanoDirectionWaypoint directionWaypointWithLabel:muid:providerID:](NanoDirectionWaypoint, "directionWaypointWithLabel:muid:providerID:", v16, v19, [v20 resultProviderId]);

    goto LABEL_14;
  }

  v12 = [(DirectionsWaypoint *)self requestSearchString];
  v13 = [NanoDirectionWaypoint directionWaypointWithSearchString:v12];
LABEL_10:
  v15 = v13;
LABEL_15:

  v3 = v15;
LABEL_16:
  v21 = [(DirectionsWaypoint *)self responseSearch];

  if (v21)
  {
    v22 = [(DirectionsWaypoint *)self responseSearch];
    v23 = [v22 composedWaypoint];
    [(NanoDirectionWaypoint *)v3 setComposedWaypoint:v23];
  }

  return v3;
}

+ (DirectionsWaypoint)directionsWaypointWithNanoDirectionWaypoint:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(DirectionsWaypoint);
  if ([v3 isCurrentLocation])
  {
    v5 = +[SearchResult currentLocationSearchResult];
    [(DirectionsWaypoint *)v4 setRequestSearch:v5];
LABEL_8:

    goto LABEL_9;
  }

  v6 = [v3 searchString];

  if (v6)
  {
    v5 = [v3 searchString];
    [(DirectionsWaypoint *)v4 setRequestSearchString:v5];
    goto LABEL_8;
  }

  v7 = [v3 geoMapItem];

  if (v7)
  {
    v8 = [SearchResult alloc];
    v5 = [v3 geoMapItem];
    v9 = [(SearchResult *)v8 initWithGEOMapItem:v5];
    [(DirectionsWaypoint *)v4 setRequestSearch:v9];
LABEL_7:

    goto LABEL_8;
  }

  if ([v3 muid] && objc_msgSend(v3, "providerID") >= 1)
  {
    v13 = [ExternalURLQuery alloc];
    v5 = [v3 searchString];
    v9 = -[ExternalURLQuery initWithQuery:coordinate:muid:resultProviderId:contentProvider:](v13, "initWithQuery:coordinate:muid:resultProviderId:contentProvider:", v5, [v3 muid], objc_msgSend(v3, "providerID"), 0, kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude);
    [(DirectionsWaypoint *)v4 setExternalURLQuery:v9];
    goto LABEL_7;
  }

LABEL_9:
  v10 = [v3 composedWaypoint];

  if (v10)
  {
    v11 = [v3 composedWaypoint];
    [(DirectionsWaypoint *)v4 updateFromGEOComposedWaypoint:v11];
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

  v6 = [(DirectionsWaypoint *)self location];
  v7 = [NSMutableString stringWithFormat:@"<%@: %p isValid=%@ isDynamicCurrentLocation=%@ location=%@", v3, self, v5, v4, v6];

  v8 = [(DirectionsWaypoint *)self requestSearchString];

  if (v8)
  {
    v9 = [(DirectionsWaypoint *)self requestSearchString];
    [v7 appendFormat:@" requestSearchString=%@", v9];
  }

  v10 = [(DirectionsWaypoint *)self requestSearch];

  if (v10)
  {
    v11 = [(DirectionsWaypoint *)self requestSearch];
    [v7 appendFormat:@" requestSearch=%@", v11];
  }

  v12 = [(DirectionsWaypoint *)self requestAddress];

  if (v12)
  {
    v13 = [(DirectionsWaypoint *)self requestAddress];
    [v7 appendFormat:@" requestAddress=%@", v13];
  }

  v14 = [(DirectionsWaypoint *)self suggestionsPrefix];

  if (v14)
  {
    v15 = [(DirectionsWaypoint *)self suggestionsPrefix];
    [v7 appendFormat:@" suggestionsPrefix=%@", v15];
  }

  v16 = [(DirectionsWaypoint *)self responseSearch];

  if (v16)
  {
    v17 = [(DirectionsWaypoint *)self responseSearch];
    [v7 appendFormat:@" responseSearch=%@", v17];
  }

  v18 = [(DirectionsWaypoint *)self completion];

  if (v18)
  {
    v19 = [(DirectionsWaypoint *)self completion];
    [v7 appendFormat:@" completion=%@", v19];
  }

  v20 = [(DirectionsWaypoint *)self mapItemIfLoaded];

  if (v20)
  {
    v21 = [(DirectionsWaypoint *)self mapItemIfLoaded];
    [v7 appendFormat:@" mapItemIfLoaded=%@", v21];
  }

  [v7 appendString:@">"];

  return v7;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = [(DirectionsWaypoint *)self location];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DirectionsWaypoint *)v5 pin];
      v7 = [(DirectionsWaypoint *)self pin];
      v8 = v7;
      if (v6 && v7)
      {
        v9 = [v6 isEqualToSearchResult:v7 forPurpose:1];
LABEL_19:

        goto LABEL_20;
      }

      v10 = [(DirectionsWaypoint *)v5 location];
      if (v10 && (v11 = v10, [(DirectionsWaypoint *)self location], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
      {
        v13 = [(DirectionsWaypoint *)v5 location];
        v14 = [(DirectionsWaypoint *)self location];
      }

      else
      {
        v17 = [(DirectionsWaypoint *)v5 requestSearchString];
        if (v17)
        {
          v18 = v17;
          v19 = [(DirectionsWaypoint *)self requestSearchString];

          if (v19)
          {
            v13 = [(DirectionsWaypoint *)v5 requestSearchString];
            v15 = [(DirectionsWaypoint *)self requestSearchString];
            v16 = [v13 isEqualToString:v15];
            goto LABEL_18;
          }
        }

        v20 = [(DirectionsWaypoint *)v5 externalURLQuery];
        if (v20)
        {
          v21 = v20;
          v22 = [(DirectionsWaypoint *)self externalURLQuery];

          if (v22)
          {
            v13 = [(DirectionsWaypoint *)v5 externalURLQuery];
            v15 = [(DirectionsWaypoint *)self externalURLQuery];
            v16 = [v13 isEqualToExternalURLQuery:v15];
            goto LABEL_18;
          }
        }

        v24 = [(DirectionsWaypoint *)v5 requestAddress];
        if (!v24 || (v25 = v24, [(DirectionsWaypoint *)self requestAddress], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, !v26))
        {
          v9 = 0;
          goto LABEL_19;
        }

        v13 = [(DirectionsWaypoint *)v5 requestAddress];
        v14 = [(DirectionsWaypoint *)self requestAddress];
      }

      v15 = v14;
      v16 = [v13 isEqual:v14];
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
  v3 = [(SearchResult *)self->_requestSearch singleLineAddress];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = [(SearchResult *)self->_responseSearch singleLineAddress];
  }

  v5 = v4;

  return v5;
}

- (NSString)hawkQueryRepresentation
{
  if ([(DirectionsWaypoint *)self isValid])
  {
    v3 = [(DirectionsWaypoint *)self mapItemIfLoaded];
    v4 = [v3 _identifier];

    if (v4)
    {
      v5 = [(DirectionsWaypoint *)self location];
    }

    else
    {
      [(DirectionsWaypoint *)self coordinate];
      v6 = [NSNumber numberWithDouble:?];
      [(DirectionsWaypoint *)self coordinate];
      v8 = [NSNumber numberWithDouble:v7];
      v5 = [NSString stringWithFormat:@"%@, %@", v6, v8];
    }
  }

  else
  {
    v5 = @"<invalid>";
  }

  return v5;
}

- (NSString)location
{
  if ([(DirectionsWaypoint *)self isValid])
  {
    requestSearch = self->_requestSearch;
    if (requestSearch)
    {
      v4 = [(SearchResult *)requestSearch routableAddress];
LABEL_4:
      v5 = v4;
      goto LABEL_6;
    }

    completion = self->_completion;
    if (!completion)
    {
      externalURLQuery = self->_externalURLQuery;
      if (externalURLQuery)
      {
        v4 = [(ExternalURLQuery *)externalURLQuery query];
      }

      else if ([(AddressBookAddress *)self->_requestAddress isValid])
      {
        v4 = [(AddressBookAddress *)self->_requestAddress singleLineAddress];
      }

      else
      {
        v4 = self->_requestSearchString;
      }

      goto LABEL_4;
    }

    v8 = [(MKLocalSearchCompletion *)completion displayLines];
    v5 = [v8 componentsJoinedByString:{@", "}];

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
    v4 = [(MKLocalSearchCompletion *)completion category];
    if (v4)
    {

      return 1;
    }

    v5 = [(MKLocalSearchCompletion *)self->_completion queryLine];
    if ([v5 length])
    {

      return 1;
    }

    v6 = [(MKLocalSearchCompletion *)self->_completion title];
    v7 = [v6 length];

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

- (void)setResponseSearch:(id)a3
{
  v5 = a3;
  p_responseSearch = &self->_responseSearch;
  if (self->_responseSearch != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_responseSearch, a3);
    v5 = v9;
    requestSearch = self->_requestSearch;
    p_requestSearch = &self->_requestSearch;
    if (!requestSearch)
    {
      objc_storeStrong(p_requestSearch, *p_responseSearch);
      v5 = v9;
    }
  }
}

- (void)updateFromGEOComposedWaypoint:(id)a3
{
  v15 = a3;
  v4 = [(DirectionsWaypoint *)self responseSearch];

  v5 = v15;
  if (!v4)
  {
    v6 = [v15 geoMapItem];
    v7 = [(DirectionsWaypoint *)self requestSearch];

    if (v7)
    {
      v8 = [(DirectionsWaypoint *)self requestSearch];
      v9 = [v8 copy];
      [(DirectionsWaypoint *)self setResponseSearch:v9];

      v10 = [(DirectionsWaypoint *)self responseSearch];
      [v10 updateWithGEOMapItem:v6];
    }

    else
    {
      if ([v15 hasFindMyHandleID])
      {
        v11 = [[SearchResult alloc] initWithComposedWaypoint:v15];
      }

      else
      {
        v12 = [v15 isCurrentLocation];
        if (v6)
        {
          if ((v12 & 1) == 0 && ![v15 isLocationWaypointType])
          {
            v13 = [SearchResult alloc];
            v10 = [MKMapItem _itemWithGeoMapItem:v6];
            v14 = [(SearchResult *)v13 initWithMapItem:v10];
            [(DirectionsWaypoint *)self setResponseSearch:v14];

            goto LABEL_13;
          }

          v11 = [[SearchResult alloc] initWithComposedWaypoint:v15 preserveLocationInfo:1];
        }

        else
        {
          if (!v12)
          {
LABEL_14:

            v5 = v15;
            goto LABEL_15;
          }

          v11 = +[SearchResult currentLocationSearchResult];
        }
      }

      v10 = v11;
      [(DirectionsWaypoint *)self setResponseSearch:v11];
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
}

@end