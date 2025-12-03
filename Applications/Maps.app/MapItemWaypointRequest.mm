@interface MapItemWaypointRequest
- (BOOL)isEquivalentToOtherRequest:(id)request;
- (CLLocationCoordinate2D)coordinate;
- (MapItemWaypointRequest)init;
- (MapItemWaypointRequest)initWithMapItem:(id)item;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)waypointName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)recordRAPInformation:(id)information;
@end

@implementation MapItemWaypointRequest

- (void)recordRAPInformation:(id)information
{
  informationCopy = information;
  if ([(MKMapItem *)self->_mapItem isCurrentLocation])
  {
    [informationCopy setOrigin:2];
  }

  _geoMapItemStorageForPersistence = [(MKMapItem *)self->_mapItem _geoMapItemStorageForPersistence];
  [informationCopy setPlaceMapItemStorage:_geoMapItemStorageForPersistence];
}

- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler
{
  completionHandlerCopy = completionHandler;
  mapItem = self->_mapItem;
  activityHandlerCopy = activityHandler;
  traitsCopy = traits;
  _geoMapItem = [(MKMapItem *)mapItem _geoMapItem];
  _clientAttributes = [_geoMapItem _clientAttributes];

  needsAdditionalNavData = [(MKMapItem *)self->_mapItem needsAdditionalNavData];
  v16 = sub_100798F84();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (needsAdditionalNavData)
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Map item needs additional information.", buf, 2u);
    }

    _geoMapItem2 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100D4C1CC;
    v27[3] = &unk_1016529D0;
    v19 = &v28;
    v28 = completionHandlerCopy;
    v20 = completionHandlerCopy;
    v21 = [GEOComposedWaypoint composedWaypointForIncompleteMapItem:_geoMapItem2 traits:traitsCopy clientAttributes:_clientAttributes completionHandler:v27 networkActivityHandler:activityHandlerCopy];
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Map item has all the necessary information.", buf, 2u);
    }

    _geoMapItem2 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100D4C2A0;
    v25[3] = &unk_1016529D0;
    v19 = &v26;
    v26 = completionHandlerCopy;
    v22 = completionHandlerCopy;
    v21 = [GEOComposedWaypoint composedWaypointForMapItem:_geoMapItem2 traits:traitsCopy clientAttributes:_clientAttributes completionHandler:v25 networkActivityHandler:activityHandlerCopy];
  }

  v23 = v21;

  return v23;
}

- (BOOL)isEquivalentToOtherRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = requestCopy;
    _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
    _geoMapItem2 = [v5[1] _geoMapItem];
    v8 = _geoMapItem2;
    IsEqualToMapItemForPurpose = 0;
    if (_geoMapItem && _geoMapItem2)
    {
      IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();
    }
  }

  else
  {
    IsEqualToMapItemForPurpose = 0;
  }

  return IsEqualToMapItemForPurpose;
}

- (NSString)waypointName
{
  name = [(MKMapItem *)self->_mapItem name];
  v3 = name;
  if (name)
  {
    v4 = name;
  }

  else
  {
    v4 = MKLocalizedStringForUnknownLocation();
  }

  v5 = v4;

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  [(MKMapItem *)self->_mapItem _coordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  v7 = [NSNumber numberWithBool:[(MKMapItem *)self->_mapItem needsAdditionalNavData]];
  (*v4)(blockCopy, @"needsAdditionalNavData", v7);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100D4C750;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapItemWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapItemWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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
  v16 = sub_100D4C9A0;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapItemWaypointRequest *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapItemWaypointRequest *)v5 performSelector:"accessibilityIdentifier"];
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
  mapItem = self->_mapItem;

  return [v4 initWithMapItem:mapItem];
}

- (MapItemWaypointRequest)init
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"[%@ %@] not implemented", v5, v6];

  return 0;
}

- (MapItemWaypointRequest)initWithMapItem:(id)item
{
  itemCopy = item;
  if (-[MapItemWaypointRequest isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()) && [itemCopy _hasCorrectedHomeWorkCoordinate])
  {
    v6 = sub_100798F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "This map item has corrected coordinates. Should %@ have been used instead?", buf, 0xCu);
    }
  }

  v12.receiver = self;
  v12.super_class = MapItemWaypointRequest;
  v9 = [(MapItemWaypointRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, item);
  }

  return v10;
}

@end