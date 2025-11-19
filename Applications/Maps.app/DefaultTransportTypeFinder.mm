@interface DefaultTransportTypeFinder
- (DefaultTransportTypeFinder)initWithMapTypeSource:(id)a3;
- (MapTypeSource)mapTypeSource;
- (int)geoIdealTransportTypeForCoordinates:(CLLocationCoordinate2D *)a3 count:(unint64_t)a4 ignoreMapType:(BOOL)a5;
- (int)geoIdealTransportTypeForOrigin:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 ignoreMapType:(BOOL)a5;
- (void)findDirectionsTypeForOriginCoordinate:(CLLocationCoordinate2D)a3 destinationCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5;
- (void)mkDirectionsTypeForOrigin:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 ignoreMapType:(BOOL)a5 completion:(id)a6;
- (void)transportTypeForCoordinates:(CLLocationCoordinate2D *)a3 count:(unint64_t)a4 ignoreMapType:(BOOL)a5 completion:(id)a6;
- (void)transportTypeForDirectionItem:(id)a3 ignoreMapType:(BOOL)a4 completion:(id)a5;
- (void)transportTypeForOrigin:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 ignoreMapType:(BOOL)a5 completion:(id)a6;
@end

@implementation DefaultTransportTypeFinder

- (void)transportTypeForDirectionItem:(id)a3 ignoreMapType:(BOOL)a4 completion:(id)a5
{
  v21 = a4;
  v20 = self;
  v6 = a5;
  v7 = [a3 items];
  v8 = [v7 count];
  v9 = v8;
  v10 = &v19 - 2 * v8;
  if (v8)
  {
    v11 = 0;
    v12 = (&v19 - 2 * v8);
    do
    {
      v13 = [v7 objectAtIndexedSubscript:v11];
      v14 = [v13 waypoint];
      [v14 coordinate];
      if (v14 && (v17 = v15, v18 = v16, CLLocationCoordinate2DIsValid(*&v15)))
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

  [(DefaultTransportTypeFinder *)v20 transportTypeForCoordinates:v10 count:v9 ignoreMapType:v21 completion:v6];
}

- (MapTypeSource)mapTypeSource
{
  WeakRetained = objc_loadWeakRetained(&self->_mapTypeSource);

  return WeakRetained;
}

- (void)findDirectionsTypeForOriginCoordinate:(CLLocationCoordinate2D)a3 destinationCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3.longitude;
  v8 = a3.latitude;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100EC0190;
    v12[3] = &unk_101657E40;
    v13 = v10;
    [(DefaultTransportTypeFinder *)self mkDirectionsTypeForOrigin:0 destination:v12 ignoreMapType:v8 completion:v7, latitude, longitude];
  }
}

- (void)transportTypeForCoordinates:(CLLocationCoordinate2D *)a3 count:(unint64_t)a4 ignoreMapType:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = v10;
  if (v10)
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100EC05DC;
    v44[3] = &unk_101657DF0;
    v45 = v10;
    v12 = objc_retainBlock(v44);
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Will determine transport type...", buf, 2u);
    }

    v14 = &kCLLocationCoordinate2DInvalid;
    v15 = &a3[a4];
    v16 = v15 - 1;
    p_longitude = &v15[-1].longitude;
    if (a4)
    {
      v18 = a3;
    }

    else
    {
      v18 = &kCLLocationCoordinate2DInvalid;
    }

    latitude = v18->latitude;
    longitude = v18->longitude;
    if (a4)
    {
      v14 = v16;
    }

    else
    {
      p_longitude = &kCLLocationCoordinate2DInvalid.longitude;
    }

    v21 = v14->latitude;
    v22 = *p_longitude;
    v23 = CLLocationCoordinate2DIsValid(*v18);
    v50.latitude = v21;
    v50.longitude = v22;
    v24 = CLLocationCoordinate2DIsValid(v50);
    v25 = v24;
    if (v23 && v24)
    {
      v26 = [(DefaultTransportTypeFinder *)self geoIdealTransportTypeForCoordinates:a3 count:a4 ignoreMapType:v6];
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

- (void)transportTypeForOrigin:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 ignoreMapType:(BOOL)a5 completion:(id)a6
{
  v6[0] = a3;
  v6[1] = a4;
  [(DefaultTransportTypeFinder *)self transportTypeForCoordinates:v6 count:2 ignoreMapType:a5 completion:a6];
}

- (void)mkDirectionsTypeForOrigin:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 ignoreMapType:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  longitude = a4.longitude;
  latitude = a4.latitude;
  v9 = a3.longitude;
  v10 = a3.latitude;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100EC0B08;
    v14[3] = &unk_101657DA0;
    v15 = v12;
    [(DefaultTransportTypeFinder *)self transportTypeForOrigin:v6 destination:v14 ignoreMapType:v10 completion:v9, latitude, longitude];
  }
}

- (int)geoIdealTransportTypeForCoordinates:(CLLocationCoordinate2D *)a3 count:(unint64_t)a4 ignoreMapType:(BOOL)a5
{
  if (a5)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(DefaultTransportTypeFinder *)self mapTypeSource];
    v7 = [v8 displayedMapType];
  }

  v9 = __chkstk_darwin(self);
  if (a4)
  {
    p_longitude = &a3->longitude;
    v11 = (&v16 - 2 * a4);
    v12 = a4;
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
      --v12;
    }

    while (v12);
  }

  [GEOIdealTransportTypeFinder idealTransportTypeForCoordinates:&v16 - 2 * a4 count:a4 mapType:v7, v9];
  return GEOTransportTypeFromGEOTransportTypePreference();
}

- (int)geoIdealTransportTypeForOrigin:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 ignoreMapType:(BOOL)a5
{
  v6[0] = a3;
  v6[1] = a4;
  return [(DefaultTransportTypeFinder *)self geoIdealTransportTypeForCoordinates:v6 count:2 ignoreMapType:a5];
}

- (DefaultTransportTypeFinder)initWithMapTypeSource:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DefaultTransportTypeFinder;
  v5 = [(DefaultTransportTypeFinder *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mapTypeSource, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("transportTypeFinderQueue", v7);
    transportTypeFinderQueue = v6->_transportTypeFinderQueue;
    v6->_transportTypeFinderQueue = v8;

    v10 = v6;
  }

  return v6;
}

@end