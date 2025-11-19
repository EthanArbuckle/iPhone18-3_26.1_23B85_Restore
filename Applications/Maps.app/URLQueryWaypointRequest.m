@interface URLQueryWaypointRequest
- (BOOL)isEquivalentToOtherRequest:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (NSString)waypointName;
- (URLQueryWaypointRequest)initWithURLQuery:(id)a3 title:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6;
@end

@implementation URLQueryWaypointRequest

- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6
{
  query = self->_query;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(ExternalURLQuery *)query muid];
  v14 = self->_query;
  if (v13)
  {
    v15 = [(ExternalURLQuery *)v14 muid];
    v16 = [(ExternalURLQuery *)self->_query resultProviderId];
    v17 = [(ExternalURLQuery *)self->_query contentProvider];
    v18 = sub_100C2093C(v11);

    [GEOComposedWaypoint composedWaypointForID:v15 resultsProviderID:v16 contentProvider:v17 traits:v12 clientAttributes:0 completionHandler:v18 networkActivityHandler:v10];
  }

  else
  {
    v17 = [(ExternalURLQuery *)v14 query];
    v18 = sub_100C2093C(v11);

    [GEOComposedWaypoint composedWaypointForSearchString:v17 completionItem:0 traits:v12 clientAttributes:0 completionHandler:v18 networkActivityHandler:v10];
  }
  v19 = ;

  return v19;
}

- (BOOL)isEquivalentToOtherRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ExternalURLQuery *)self->_query isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)waypointName
{
  title = self->_title;
  if (title)
  {
    v3 = title;
  }

  else
  {
    v3 = MKLocalizedStringForUnknownLocation();
  }

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  query = self->_query;
  if (query)
  {
    [(ExternalURLQuery *)query coordinate];
  }

  else
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  query = self->_query;
  title = self->_title;

  return [v4 initWithURLQuery:query title:title];
}

- (URLQueryWaypointRequest)initWithURLQuery:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 muid] || (objc_msgSend(v7, "query"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
  {
    v17.receiver = self;
    v17.super_class = URLQueryWaypointRequest;
    v11 = [(URLQueryWaypointRequest *)&v17 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_query, a3);
      v13 = [v8 copy];
      title = v12->_title;
      v12->_title = v13;
    }

    self = v12;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end