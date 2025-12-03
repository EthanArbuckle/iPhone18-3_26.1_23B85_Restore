@interface SearchStringWaypointRequest
- (BOOL)isEquivalentToOtherRequest:(id)request;
- (CLLocationCoordinate2D)coordinate;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)waypointName;
- (SearchStringWaypointRequest)init;
- (SearchStringWaypointRequest)initWithSearchString:(id)string completionItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)recordRAPInformation:(id)information;
@end

@implementation SearchStringWaypointRequest

- (void)recordRAPInformation:(id)information
{
  informationCopy = information;
  v4 = [(NSString *)self->_searchString copy];
  [informationCopy setSearchString:v4];

  if (self->_completionItem)
  {
    v5 = [GEOStorageCompletion storageForCompletionItem:?];
    [informationCopy setCompletionStorage:v5];
  }
}

- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler
{
  searchString = self->_searchString;
  completionItem = self->_completionItem;
  activityHandlerCopy = activityHandler;
  handlerCopy = handler;
  traitsCopy = traits;
  v14 = sub_100C2093C(completionHandler);
  v15 = [GEOComposedWaypoint composedWaypointForSearchString:searchString completionItem:completionItem traits:traitsCopy clientAttributes:0 clientResolvedCompletionHandler:handlerCopy completionHandler:v14 networkActivityHandler:activityHandlerCopy];

  return v15;
}

- (BOOL)isEquivalentToOtherRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = requestCopy;
    _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
    _geoMapItem2 = [v5[3] _geoMapItem];
    v8 = _geoMapItem2;
    if (_geoMapItem && _geoMapItem2)
    {
      if (![_geoMapItem _hasMUID] || !objc_msgSend(v8, "_hasMUID") || (v9 = objc_msgSend(_geoMapItem, "_muid"), v9 == objc_msgSend(v8, "_muid")))
      {
        IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v11 = v5[1];
      v12 = self->_searchString;
      v13 = v11;
      if (!(v12 | v13) || (v14 = v13, v15 = [v12 isEqual:v13], v14, v12, v15))
      {
        completionItem = self->_completionItem;
        v17 = v5[2];
        v18 = completionItem;
        v19 = v18;
        if (v18 | v17)
        {
          IsEqualToMapItemForPurpose = [v18 isEqual:v17];
        }

        else
        {
          IsEqualToMapItemForPurpose = 1;
        }

        goto LABEL_16;
      }
    }

    IsEqualToMapItemForPurpose = 0;
    goto LABEL_16;
  }

  IsEqualToMapItemForPurpose = 0;
LABEL_17:

  return IsEqualToMapItemForPurpose;
}

- (NSString)waypointName
{
  displayLines = [(GEOCompletionItem *)self->_completionItem displayLines];
  firstObject = [displayLines firstObject];

  if ([firstObject length])
  {
    v5 = firstObject;
  }

  else
  {
    name = [(MKMapItem *)self->_mapItem name];
    searchString = name;
    if (!name)
    {
      searchString = self->_searchString;
    }

    v5 = searchString;
  }

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  v5 = 0.0;
  v6 = 0.0;
  if ([(GEOCompletionItem *)self->_completionItem getCoordinate:&v5]&& (fabs(v6 + 180.0) >= 0.00000001 || fabs(v5 + 180.0) >= 0.00000001))
  {
    v4 = CLLocationCoordinate2DMake(v5, v6);
    longitude = v4.longitude;
    latitude = v4.latitude;
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

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, @"completionItem", self->_completionItem);
  (*v4)(blockCopy, @"mapItem", self->_mapItem);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1007825FC;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(SearchStringWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(SearchStringWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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
  v16 = sub_10078284C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(SearchStringWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(SearchStringWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  searchString = self->_searchString;
  completionItem = self->_completionItem;

  return [v4 initWithSearchString:searchString completionItem:completionItem];
}

- (SearchStringWaypointRequest)init
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"[%@ %@] not implemented", v5, v6];

  return 0;
}

- (SearchStringWaypointRequest)initWithSearchString:(id)string completionItem:(id)item
{
  stringCopy = string;
  itemCopy = item;
  if ([stringCopy length])
  {
    v17.receiver = self;
    v17.super_class = SearchStringWaypointRequest;
    v8 = [(SearchStringWaypointRequest *)&v17 init];
    if (v8)
    {
      v9 = [stringCopy copy];
      searchString = v8->_searchString;
      v8->_searchString = v9;

      objc_storeStrong(&v8->_completionItem, item);
      if (v8->_completionItem)
      {
        v11 = [MKMapItem alloc];
        geoMapItem = [(GEOCompletionItem *)v8->_completionItem geoMapItem];
        v13 = [v11 initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];
        mapItem = v8->_mapItem;
        v8->_mapItem = v13;
      }
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end