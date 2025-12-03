@interface DefaultTransportTypeFinder
- (DefaultTransportTypeFinder)initWithMapTypeSource:(id)source;
- (MapTypeSource)mapTypeSource;
- (int)geoIdealTransportTypeForCoordinates:(CLLocationCoordinate2D *)coordinates count:(unint64_t)count ignoreMapType:(BOOL)type;
- (int)geoIdealTransportTypeForOrigin:(CLLocationCoordinate2D)origin destination:(CLLocationCoordinate2D)destination ignoreMapType:(BOOL)type;
- (void)findDirectionsTypeForOriginCoordinate:(CLLocationCoordinate2D)coordinate destinationCoordinate:(CLLocationCoordinate2D)destinationCoordinate handler:(id)handler;
- (void)mkDirectionsTypeForOrigin:(CLLocationCoordinate2D)origin destination:(CLLocationCoordinate2D)destination ignoreMapType:(BOOL)type completion:(id)completion;
- (void)transportTypeForCoordinates:(CLLocationCoordinate2D *)coordinates count:(unint64_t)count ignoreMapType:(BOOL)type completion:(id)completion;
- (void)transportTypeForDirectionItem:(id)item ignoreMapType:(BOOL)type completion:(id)completion;
- (void)transportTypeForOrigin:(CLLocationCoordinate2D)origin destination:(CLLocationCoordinate2D)destination ignoreMapType:(BOOL)type completion:(id)completion;
@end

@implementation DefaultTransportTypeFinder

- (void)transportTypeForDirectionItem:(id)item ignoreMapType:(BOOL)type completion:(id)completion
{
  typeCopy = type;
  selfCopy = self;
  completionCopy = completion;
  items = [item items];
  v8 = [items count];
  v9 = v8;
  v10 = &v19 - 2 * v8;
  if (v8)
  {
    v11 = 0;
    v12 = (&v19 - 2 * v8);
    do
    {
      v13 = [items objectAtIndexedSubscript:v11];
      waypoint = [v13 waypoint];
      [waypoint coordinate];
      if (waypoint && (v17 = v15, v18 = v16, CLLocationCoordinate2DIsValid(*&v15)))
      {
        v12->latitude = v17;
        v12->longitude = v18;
      }

      else
      {
        *v12 = kCLLocationCoordinate2DInvalid;
      }

      ++v11;
      ++v12;
    }

    while (v9 != v11);
  }

  [(DefaultTransportTypeFinder *)selfCopy transportTypeForCoordinates:v10 count:v9 ignoreMapType:typeCopy completion:completionCopy];
}

- (MapTypeSource)mapTypeSource
{
  WeakRetained = objc_loadWeakRetained(&self->_mapTypeSource);

  return WeakRetained;
}

- (void)findDirectionsTypeForOriginCoordinate:(CLLocationCoordinate2D)coordinate destinationCoordinate:(CLLocationCoordinate2D)destinationCoordinate handler:(id)handler
{
  longitude = destinationCoordinate.longitude;
  latitude = destinationCoordinate.latitude;
  v7 = coordinate.longitude;
  v8 = coordinate.latitude;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (handlerCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100EC0190;
    v12[3] = &unk_101657E40;
    v13 = handlerCopy;
    [(DefaultTransportTypeFinder *)self mkDirectionsTypeForOrigin:0 destination:v12 ignoreMapType:v8 completion:v7, latitude, longitude];
  }
}

- (void)transportTypeForCoordinates:(CLLocationCoordinate2D *)coordinates count:(unint64_t)count ignoreMapType:(BOOL)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100EC05DC;
    v44[3] = &unk_101657DF0;
    v45 = completionCopy;
    v12 = objc_retainBlock(v44);
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Will determine transport type...", buf, 2u);
    }

    v14 = &kCLLocationCoordinate2DInvalid;
    v15 = &coordinates[count];
    v16 = v15 - 1;
    p_longitude = &v15[-1].longitude;
    if (count)
    {
      coordinatesCopy = coordinates;
    }

    else
    {
      coordinatesCopy = &kCLLocationCoordinate2DInvalid;
    }

    latitude = coordinatesCopy->latitude;
    longitude = coordinatesCopy->longitude;
    if (count)
    {
      v14 = v16;
    }

    else
    {
      p_longitude = &kCLLocationCoordinate2DInvalid.longitude;
    }

    v21 = v14->latitude;
    v22 = *p_longitude;
    v23 = CLLocationCoordinate2DIsValid(*coordinatesCopy);
    v50.latitude = v21;
    v50.longitude = v22;
    v24 = CLLocationCoordinate2DIsValid(v50);
    v25 = v24;
    if (v23 && v24)
    {
      v26 = [(DefaultTransportTypeFinder *)self geoIdealTransportTypeForCoordinates:coordinates count:count ignoreMapType:typeCopy];
      v27 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        if (v26 >= 7)
        {
          v28 = [NSString stringWithFormat:@"(unknown: %i)", v26];
        }

        else
        {
          v28 = off_101657E98[v26];
        }

        *buf = 138543362;
        v47 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "\tFetched Geo ideal default transport mode %{public}@", buf, 0xCu);
      }

      v33 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "\tWill fetch MSg default transport mode", buf, 2u);
      }

      v34 = objc_opt_class();
      transportTypeFinderQueue = self->_transportTypeFinderQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100EC0664;
      block[3] = &unk_101657E18;
      v38 = latitude;
      v39 = longitude;
      v40 = v21;
      v41 = v22;
      v43 = v26;
      v42 = v34;
      v37 = v12;
      dispatch_async(transportTypeFinderQueue, block);
    }

    else
    {
      v30 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = "invalid";
        if (v23)
        {
          v32 = "valid";
        }

        else
        {
          v32 = "invalid";
        }

        if (v25)
        {
          v31 = "valid";
        }

        *buf = 136315394;
        v47 = v32;
        v48 = 2080;
        v49 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "\tWill return Undefined transport type for invalid origin (%s) or destination (%s)", buf, 0x16u);
      }

      (v12[2])(v12, 4);
    }

    v29 = v45;
  }

  else
  {
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Completion block missing for async transport type finder", buf, 2u);
    }
  }
}

- (void)transportTypeForOrigin:(CLLocationCoordinate2D)origin destination:(CLLocationCoordinate2D)destination ignoreMapType:(BOOL)type completion:(id)completion
{
  v6[0] = origin;
  v6[1] = destination;
  [(DefaultTransportTypeFinder *)self transportTypeForCoordinates:v6 count:2 ignoreMapType:type completion:completion];
}

- (void)mkDirectionsTypeForOrigin:(CLLocationCoordinate2D)origin destination:(CLLocationCoordinate2D)destination ignoreMapType:(BOOL)type completion:(id)completion
{
  typeCopy = type;
  longitude = destination.longitude;
  latitude = destination.latitude;
  v9 = origin.longitude;
  v10 = origin.latitude;
  completionCopy = completion;
  v13 = completionCopy;
  if (completionCopy)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100EC0B08;
    v14[3] = &unk_101657DA0;
    v15 = completionCopy;
    [(DefaultTransportTypeFinder *)self transportTypeForOrigin:typeCopy destination:v14 ignoreMapType:v10 completion:v9, latitude, longitude];
  }
}

- (int)geoIdealTransportTypeForCoordinates:(CLLocationCoordinate2D *)coordinates count:(unint64_t)count ignoreMapType:(BOOL)type
{
  if (type)
  {
    displayedMapType = 0;
  }

  else
  {
    mapTypeSource = [(DefaultTransportTypeFinder *)self mapTypeSource];
    displayedMapType = [mapTypeSource displayedMapType];
  }

  v9 = __chkstk_darwin(self);
  if (count)
  {
    p_longitude = &coordinates->longitude;
    v11 = (&v16 - 2 * count);
    countCopy = count;
    do
    {
      v13 = *(p_longitude - 1);
      v14 = *p_longitude;
      v17.latitude = v13;
      v17.longitude = *p_longitude;
      if (CLLocationCoordinate2DIsValid(v17))
      {
        *v11 = v13;
        v11[1] = v14;
      }

      else
      {
        v9 = -180.0;
        *v11 = xmmword_101215F80;
      }

      v11 += 2;
      p_longitude += 2;
      --countCopy;
    }

    while (countCopy);
  }

  [GEOIdealTransportTypeFinder idealTransportTypeForCoordinates:&v16 - 2 * count count:count mapType:displayedMapType, v9];
  return GEOTransportTypeFromGEOTransportTypePreference();
}

- (int)geoIdealTransportTypeForOrigin:(CLLocationCoordinate2D)origin destination:(CLLocationCoordinate2D)destination ignoreMapType:(BOOL)type
{
  v6[0] = origin;
  v6[1] = destination;
  return [(DefaultTransportTypeFinder *)self geoIdealTransportTypeForCoordinates:v6 count:2 ignoreMapType:type];
}

- (DefaultTransportTypeFinder)initWithMapTypeSource:(id)source
{
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = DefaultTransportTypeFinder;
  v5 = [(DefaultTransportTypeFinder *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mapTypeSource, sourceCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("transportTypeFinderQueue", v7);
    transportTypeFinderQueue = v6->_transportTypeFinderQueue;
    v6->_transportTypeFinderQueue = v8;

    v10 = v6;
  }

  return v6;
}

@end