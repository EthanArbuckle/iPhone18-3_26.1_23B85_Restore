@interface URLQueryWaypointRequest
- (BOOL)isEquivalentToOtherRequest:(id)request;
- (CLLocationCoordinate2D)coordinate;
- (NSString)waypointName;
- (URLQueryWaypointRequest)initWithURLQuery:(id)query title:(id)title;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler;
@end

@implementation URLQueryWaypointRequest

- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler
{
  query = self->_query;
  activityHandlerCopy = activityHandler;
  completionHandlerCopy = completionHandler;
  traitsCopy = traits;
  muid = [(ExternalURLQuery *)query muid];
  v14 = self->_query;
  if (muid)
  {
    muid2 = [(ExternalURLQuery *)v14 muid];
    resultProviderId = [(ExternalURLQuery *)self->_query resultProviderId];
    contentProvider = [(ExternalURLQuery *)self->_query contentProvider];
    v18 = sub_100C2093C(completionHandlerCopy);

    [GEOComposedWaypoint composedWaypointForID:muid2 resultsProviderID:resultProviderId contentProvider:contentProvider traits:traitsCopy clientAttributes:0 completionHandler:v18 networkActivityHandler:activityHandlerCopy];
  }

  else
  {
    contentProvider = [(ExternalURLQuery *)v14 query];
    v18 = sub_100C2093C(completionHandlerCopy);

    [GEOComposedWaypoint composedWaypointForSearchString:contentProvider completionItem:0 traits:traitsCopy clientAttributes:0 completionHandler:v18 networkActivityHandler:activityHandlerCopy];
  }
  v19 = ;

  return v19;
}

- (BOOL)isEquivalentToOtherRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ExternalURLQuery *)self->_query isEqual:requestCopy[1]];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  query = self->_query;
  title = self->_title;

  return [v4 initWithURLQuery:query title:title];
}

- (URLQueryWaypointRequest)initWithURLQuery:(id)query title:(id)title
{
  queryCopy = query;
  titleCopy = title;
  if ([queryCopy muid] || (objc_msgSend(queryCopy, "query"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
  {
    v17.receiver = self;
    v17.super_class = URLQueryWaypointRequest;
    v11 = [(URLQueryWaypointRequest *)&v17 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_query, query);
      v13 = [titleCopy copy];
      title = v12->_title;
      v12->_title = v13;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end