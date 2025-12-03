@interface CLVisitHistoryAuthPromptPluginViewController
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)mostRecentUniqueVisitsFrom:(id)from;
- (void)configureMapView;
- (void)configureMapViewUsing:(id)using;
- (void)constructAnnotationsFrom:(id)from completionHandler:(id)handler;
- (void)fetchVisitedPlacesAndConfigureMapView;
- (void)viewDidLoad;
@end

@implementation CLVisitHistoryAuthPromptPluginViewController

- (void)viewDidLoad
{
  if (qword_100011820 != -1)
  {
    sub_100005710();
  }

  v3 = qword_100011828;
  if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v11 = "[CLVisitHistoryAuthPromptPluginViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = CLVisitHistoryAuthPromptPluginViewController;
  [(CLVisitHistoryAuthPromptPluginViewController *)&v9 viewDidLoad];
  v4 = objc_alloc_init(NSRelativeDateTimeFormatter);
  [(CLVisitHistoryAuthPromptPluginViewController *)self setFormatter:v4];

  formatter = [(CLVisitHistoryAuthPromptPluginViewController *)self formatter];
  [formatter setDateTimeStyle:1];

  formatter2 = [(CLVisitHistoryAuthPromptPluginViewController *)self formatter];
  [formatter2 setUnitsStyle:2];

  if (+[CLLocationManager authorizationPromptMapDisplayEnabled])
  {
    if (qword_100011820 != -1)
    {
      sub_100005724();
    }

    v7 = qword_100011828;
    if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Fetching visited places and configuring map view.", buf, 2u);
    }

    [(CLVisitHistoryAuthPromptPluginViewController *)self fetchVisitedPlacesAndConfigureMapView];
  }

  else
  {
    if (qword_100011820 != -1)
    {
      sub_100005724();
    }

    v8 = qword_100011828;
    if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Not fetching visit history because Show Map in Location Alerts is turned off.", buf, 2u);
    }
  }
}

- (void)fetchVisitedPlacesAndConfigureMapView
{
  if (qword_100011820 != -1)
  {
    sub_100005710();
  }

  v3 = qword_100011828;
  if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[CLVisitHistoryAuthPromptPluginViewController fetchVisitedPlacesAndConfigureMapView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v4 = +[RTRoutineManager defaultManager];
  v5 = [NSDate dateWithTimeIntervalSinceNow:-2419200.0];
  v6 = [NSDateInterval alloc];
  v7 = +[NSDate now];
  v8 = [v6 initWithStartDate:v5 endDate:v7];

  v9 = [NSSet setWithObject:&off_10000C798];
  v10 = [RTStoredVisitFetchOptions alloc];
  v11 = [NSNumber numberWithDouble:RTVisitConfidenceHigh];
  LOBYTE(v13) = 1;
  v12 = [v10 initWithAscending:0 confidence:v11 dateInterval:v8 labelVisit:1 limit:0 sources:v9 redact:v13];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000322C;
  v14[3] = &unk_10000C380;
  v14[4] = self;
  [v4 fetchStoredVisitsWithOptions:v12 handler:v14];
}

- (id)mostRecentUniqueVisitsFrom:(id)from
{
  fromCopy = from;
  if (qword_100011820 != -1)
  {
    sub_100005710();
  }

  v3 = qword_100011828;
  if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v25 = "[CLVisitHistoryAuthPromptPluginViewController mostRecentUniqueVisitsFrom:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v4 = +[NSMutableSet set];
  v5 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v17;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
LABEL_7:
    v8 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v19 + 1) + 8 * v8);
      placeInference = [v9 placeInference];
      mapItem = [placeInference mapItem];
      v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [mapItem muid]);

      if (([v4 containsObject:v12] & 1) == 0)
      {
        [v4 addObject:v12];
        [v5 addObject:v9];
      }

      v13 = [v5 count] == 3;

      if (v13)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v14 = [v5 copy];

  return v14;
}

- (void)configureMapViewUsing:(id)using
{
  usingCopy = using;
  if (qword_100011820 != -1)
  {
    sub_100005710();
  }

  v5 = qword_100011828;
  if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v14 = "[CLVisitHistoryAuthPromptPluginViewController configureMapViewUsing:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v6 = [usingCopy count];
  v7 = v6;
  if (v6)
  {
    if (v6 < 4)
    {
      [(CLVisitHistoryAuthPromptPluginViewController *)self setVisits:usingCopy];
    }

    else
    {
      if (qword_100011820 != -1)
      {
        sub_100005724();
      }

      v8 = qword_100011828;
      if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unexpectedly got more than three visits (%lu); recovering by showing just the last three", buf, 0xCu);
      }

      v9 = [usingCopy subarrayWithRange:{v7 - 3, 3}];
      [(CLVisitHistoryAuthPromptPluginViewController *)self setVisits:v9];
    }

    visits = [(CLVisitHistoryAuthPromptPluginViewController *)self visits];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003938;
    v12[3] = &unk_10000C3A8;
    v12[4] = self;
    [(CLVisitHistoryAuthPromptPluginViewController *)self constructAnnotationsFrom:visits completionHandler:v12];
  }

  else
  {
    if (qword_100011820 != -1)
    {
      sub_100005724();
    }

    v10 = qword_100011828;
    if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No visits; map view will be blank.", buf, 2u);
    }
  }
}

- (void)configureMapView
{
  if (qword_100011820 != -1)
  {
    sub_100005710();
  }

  v3 = qword_100011828;
  if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v28 = "[CLVisitHistoryAuthPromptPluginViewController configureMapView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ((+[CLLocationManager authorizationPromptMapDisplayEnabled]& 1) != 0)
  {
    v26.receiver = self;
    v26.super_class = CLVisitHistoryAuthPromptPluginViewController;
    [(CLAuthBaseViewController *)&v26 configureMapView];
    if ([(CLVisitHistoryAuthPromptPluginViewController *)self didInitializationFinish]&& ![(CLVisitHistoryAuthPromptPluginViewController *)self didConfigureMapView])
    {
      mapView = [(CLAuthBaseViewController *)self mapView];
      v5 = [mapView mapType] == 105;

      if (v5)
      {
        mapView2 = [(CLAuthBaseViewController *)self mapView];
        [mapView2 setMapType:0];
      }

      mapView3 = [(CLAuthBaseViewController *)self mapView];
      [mapView3 registerClass:objc_opt_class() forAnnotationViewWithReuseIdentifier:@"place"];

      mapView4 = [(CLAuthBaseViewController *)self mapView];
      annotations = [(CLVisitHistoryAuthPromptPluginViewController *)self annotations];
      [mapView4 addAnnotations:annotations];

      mapView5 = [(CLAuthBaseViewController *)self mapView];
      annotations2 = [(CLVisitHistoryAuthPromptPluginViewController *)self annotations];
      [mapView5 showAnnotations:annotations2 animated:0];

      mapView6 = [(CLAuthBaseViewController *)self mapView];
      [mapView6 visibleMapRect];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      mapView7 = [(CLAuthBaseViewController *)self mapView];
      [mapView7 setVisibleMapRect:0 edgePadding:v14 animated:{v16, v18, v20, -38.0, 0.0, 38.0, 0.0}];

      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"Your Recent Visits" value:&stru_10000C6F8 table:0];
      [(CLAuthWithFootnoteViewController *)self setUpFootnoteLabelWithText:v23];

      [(CLVisitHistoryAuthPromptPluginViewController *)self setConfiguredMapView:1];
    }
  }

  else
  {
    if (qword_100011820 != -1)
    {
      sub_100005724();
    }

    v24 = qword_100011828;
    if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Hiding map view and footnote label because Show Map in Location Alerts is turned on.", buf, 2u);
    }

    footnoteLabelContainer = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
    [footnoteLabelContainer setHidden:1];
  }
}

- (void)constructAnnotationsFrom:(id)from completionHandler:(id)handler
{
  fromCopy = from;
  handlerCopy = handler;
  if (qword_100011820 != -1)
  {
    sub_100005710();
  }

  v6 = qword_100011828;
  if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v63 = "[CLVisitHistoryAuthPromptPluginViewController constructAnnotationsFrom:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v46 = +[NSMutableArray array];
  group = dispatch_group_create();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = fromCopy;
  v7 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v7)
  {
    v45 = *v58;
    do
    {
      v47 = v7;
      for (i = 0; i != v47; i = i + 1)
      {
        if (*v58 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * i);
        placeInference = [v9 placeInference];
        preferredName = [placeInference preferredName];

        if (qword_100011820 != -1)
        {
          sub_100005724();
        }

        v12 = qword_100011828;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [v9 confidence];
          *buf = 134217984;
          v63 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Confidence: %f", buf, 0xCu);
        }

        if (qword_100011820 != -1)
        {
          sub_100005724();
        }

        v14 = qword_100011828;
        if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138739971;
          v63 = preferredName;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Title: %{sensitive}@", buf, 0xCu);
        }

        if (!preferredName || [preferredName isEqualToString:&stru_10000C6F8])
        {
          if (qword_100011820 != -1)
          {
            sub_100005724();
          }

          v15 = qword_100011828;
          if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "name is nil or empty; falling back to generic “Visited Places” marker title", buf, 2u);
          }

          v16 = +[NSBundle mainBundle];
          v17 = [v16 localizedStringForKey:@"Visited Place" value:&stru_10000C6F8 table:0];

          preferredName = v17;
        }

        date = [v9 date];
        if (date)
        {
          if (qword_100011820 != -1)
          {
            sub_100005724();
          }

          v19 = qword_100011828;
          if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138739971;
            v63 = date;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Date: %{sensitive}@", buf, 0xCu);
          }

          v20 = +[NSCalendar currentCalendar];
          v21 = [v20 startOfDayForDate:date];

          formatter = [(CLVisitHistoryAuthPromptPluginViewController *)self formatter];
          v23 = +[NSDate now];
          v24 = [formatter localizedStringForDate:v21 relativeToDate:v23];

          if (qword_100011820 != -1)
          {
            sub_100005724();
          }

          v25 = qword_100011828;
          if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138739971;
            v63 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Subtitle: %{sensitive}@", buf, 0xCu);
          }
        }

        else
        {
          if (qword_100011820 != -1)
          {
            sub_100005724();
          }

          v26 = qword_100011828;
          if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_ERROR))
          {
            *buf = 138739971;
            v63 = preferredName;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Date is null for %{sensitive}@, subtitle will be hidden.", buf, 0xCu);
          }

          v24 = 0;
        }

        location = [v9 location];
        [location latitude];
        v29 = v28;
        location2 = [v9 location];
        [location2 longitude];
        v32 = CLLocationCoordinate2DMake(v29, v31);

        placeInference2 = [v9 placeInference];
        mapItem = [placeInference2 mapItem];
        geoMapItemHandle = [mapItem geoMapItemHandle];

        if (geoMapItemHandle)
        {
          if (qword_100011820 != -1)
          {
            sub_100005724();
          }

          v36 = qword_100011828;
          if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Resolving map item…", buf, 2u);
          }

          v37 = +[GEOMapService sharedService];
          dispatch_group_enter(group);
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_100004650;
          v51[3] = &unk_10000C3D0;
          v52 = v46;
          v56 = v32;
          v53 = preferredName;
          v54 = v24;
          v55 = group;
          [v37 resolveMapItemFromHandle:geoMapItemHandle completionHandler:v51];
        }

        else
        {
          if (qword_100011820 != -1)
          {
            sub_100005724();
          }

          v38 = qword_100011828;
          if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Map item handle is nil; marker will be a generic red icon!", buf, 2u);
          }

          v37 = [[MKPointAnnotation alloc] initWithCoordinate:preferredName title:v24 subtitle:{v32.latitude, v32.longitude}];
          [v46 addObject:v37];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v7);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000487C;
  block[3] = &unk_10000C3F8;
  v49 = v46;
  v50 = handlerCopy;
  v39 = v46;
  v40 = handlerCopy;
  dispatch_group_notify(group, &_dispatch_main_q, block);
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  if (qword_100011820 != -1)
  {
    sub_100005710();
  }

  v8 = qword_100011828;
  if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "[CLVisitHistoryAuthPromptPluginViewController mapView:viewForAnnotation:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s", &v18, 0xCu);
  }

  mapView = [(CLAuthBaseViewController *)self mapView];
  v10 = [mapView dequeueReusableAnnotationViewWithIdentifier:@"place"];

  LODWORD(v11) = 1132068864;
  [v10 setDisplayPriority:v11];
  [v10 setTitleVisibility:2];
  [v10 setSubtitleVisibility:2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = annotationCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = v13;
  if (v13)
  {
    styleAttributes = [v13 styleAttributes];
    [v10 _setStyleAttributes:styleAttributes];
  }

  else
  {
    if (qword_100011820 != -1)
    {
      sub_100005724();
    }

    v16 = qword_100011828;
    if (os_log_type_enabled(qword_100011828, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to convert MKAnnotation to proper type; marker will be a generic red icon!", &v18, 2u);
    }
  }

  return v10;
}

@end