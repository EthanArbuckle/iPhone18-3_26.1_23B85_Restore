@interface CLLearnedRouteAuthPromptPluginViewController
- (BOOL)parseUserInfo:(id)info error:(id *)error;
- (BOOL)validateCoordinateDictionary:(id)dictionary;
- (BOOL)validateRoute:(id)route;
- (CLLocationCoordinate2D)coordinateFromDictionary:(id)dictionary;
- (CLLocationCoordinate2D)destinationCoordinate;
- (CLLocationCoordinate2D)originCoordinate;
- (id)errorWithReason:(id)reason;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)configureMapView;
- (void)configureProperties;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation CLLearnedRouteAuthPromptPluginViewController

- (void)loadView
{
  if (qword_1000118A8 != -1)
  {
    sub_100005E0C();
  }

  v3 = qword_1000118B0;
  if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v9 = "[CLLearnedRouteAuthPromptPluginViewController loadView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = CLLearnedRouteAuthPromptPluginViewController;
  [(CLAuthBaseViewController *)&v7 loadView];
  if ((+[CLLocationManager authorizationPromptMapDisplayEnabled]& 1) != 0)
  {
    v4 = +[CLAuthPromptPayloadProvider provider];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100002F14;
    v6[3] = &unk_10000C3F8;
    v6[4] = self;
    [v4 createLearnedRouteAuthPromptPayloadWithBundlePath:@"/System/Library/LocationBundles/LocationPromptUI.bundle" completionHandler:v6];
  }

  else
  {
    if (qword_1000118A8 != -1)
    {
      sub_100005E20();
    }

    v5 = qword_1000118B0;
    if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Not fetching learned routes because Show Map in Location Alerts is turned off.", buf, 2u);
    }
  }
}

- (void)viewDidLoad
{
  if (qword_1000118A8 != -1)
  {
    sub_100005E0C();
  }

  v3 = qword_1000118B0;
  if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v6 = "[CLLearnedRouteAuthPromptPluginViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CLLearnedRouteAuthPromptPluginViewController;
  [(CLLearnedRouteAuthPromptPluginViewController *)&v4 viewDidLoad];
}

- (void)configureProperties
{
  if (qword_1000118A8 != -1)
  {
    sub_100005E0C();
  }

  v3 = qword_1000118B0;
  if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *v27 = "[CLLearnedRouteAuthPromptPluginViewController configureProperties]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  extensionInputItems = [(CLAuthBaseViewController *)self extensionInputItems];
  firstObject = [extensionInputItems firstObject];

  userInfo = [firstObject userInfo];
  if (userInfo)
  {
    v25 = 0;
    v7 = [(CLLearnedRouteAuthPromptPluginViewController *)self parseUserInfo:userInfo error:&v25];
    v8 = v25;
    if (v7)
    {
      [(CLLearnedRouteAuthPromptPluginViewController *)self setInitializationSucceeded:1];
      if (qword_1000118A8 != -1)
      {
        sub_100005E20();
      }

      v9 = qword_1000118B0;
      if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Successfully parsed prompt payload dictionary; properties can now be assumed non-null.", buf, 2u);
      }

      if (qword_1000118A8 != -1)
      {
        sub_100005E20();
      }

      v10 = qword_1000118B0;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(CLLearnedRouteAuthPromptPluginViewController *)self originCoordinate];
        v12 = v11;
        [(CLLearnedRouteAuthPromptPluginViewController *)self originCoordinate];
        *buf = 68289539;
        *v27 = 0;
        *&v27[4] = 2082;
        *&v27[6] = "";
        v28 = 2053;
        v29 = v12;
        v30 = 2053;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:originCoordinate:, lat:%{sensitive}.08f, lon:%{sensitive}.08f}", buf, 0x26u);
      }

      if (qword_1000118A8 != -1)
      {
        sub_100005E20();
      }

      v14 = qword_1000118B0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [(CLLearnedRouteAuthPromptPluginViewController *)self destinationCoordinate];
        v16 = v15;
        [(CLLearnedRouteAuthPromptPluginViewController *)self destinationCoordinate];
        *buf = 68289539;
        *v27 = 0;
        *&v27[4] = 2082;
        *&v27[6] = "";
        v28 = 2053;
        v29 = v16;
        v30 = 2053;
        v31 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:destinationCoordinate:, lat:%{sensitive}.08f, lon:%{sensitive}.08f}", buf, 0x26u);
      }

      if (qword_1000118A8 != -1)
      {
        sub_100005E20();
      }

      v18 = qword_1000118B0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        route = [(CLLearnedRouteAuthPromptPluginViewController *)self route];
        v20 = [route count];
        *buf = 134545665;
        *v27 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "route: %{sensitive}lu locations", buf, 0xCu);
      }
    }

    else
    {
      if (qword_1000118A8 != -1)
      {
        sub_100005E20();
      }

      v18 = qword_1000118B0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v8 localizedDescription];
        v23 = localizedDescription;
        v24 = @"unknown error";
        if (localizedDescription)
        {
          v24 = localizedDescription;
        }

        *buf = 138412290;
        *v27 = v24;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@; map will be blank", buf, 0xCu);
      }
    }
  }

  else
  {
    if (qword_1000118A8 != -1)
    {
      sub_100005E20();
    }

    v21 = qword_1000118B0;
    if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to retrieve user info dictionary", buf, 2u);
    }
  }
}

- (BOOL)parseUserInfo:(id)info error:(id *)error
{
  infoCopy = info;
  if (qword_1000118A8 != -1)
  {
    sub_100005E0C();
  }

  v7 = qword_1000118B0;
  if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
  {
    v23 = 136315138;
    *v24 = "[CLLearnedRouteAuthPromptPluginViewController parseUserInfo:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s", &v23, 0xCu);
  }

  if (qword_1000118A8 != -1)
  {
    sub_100005E20();
  }

  v8 = qword_1000118B0;
  if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
  {
    v23 = 68289283;
    *v24 = 0;
    *&v24[4] = 2082;
    *&v24[6] = "";
    v25 = 2117;
    v26 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:parsing dictionary:, payloadDictionary:%{sensitive, location:escape_only}@}", &v23, 0x1Cu);
  }

  v9 = [infoCopy objectForKeyedSubscript:@"originCoordinate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [infoCopy objectForKeyedSubscript:@"originCoordinate"];

    if (v10)
    {
      v11 = [infoCopy objectForKeyedSubscript:@"destinationCoordinate"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [infoCopy objectForKeyedSubscript:@"destinationCoordinate"];

        if (v12)
        {
          if ([(CLLearnedRouteAuthPromptPluginViewController *)self validateCoordinateDictionary:v10])
          {
            if ([(CLLearnedRouteAuthPromptPluginViewController *)self validateCoordinateDictionary:v12])
            {
              [(CLLearnedRouteAuthPromptPluginViewController *)self coordinateFromDictionary:v10];
              [(CLLearnedRouteAuthPromptPluginViewController *)self setOriginCoordinate:?];
              [(CLLearnedRouteAuthPromptPluginViewController *)self coordinateFromDictionary:v12];
              [(CLLearnedRouteAuthPromptPluginViewController *)self setDestinationCoordinate:?];
              v13 = [infoCopy objectForKeyedSubscript:@"route"];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                v15 = [infoCopy objectForKeyedSubscript:@"route"];
              }

              else
              {
                v15 = 0;
              }

              [(CLLearnedRouteAuthPromptPluginViewController *)self setRoute:v15];
              if (isKindOfClass)
              {
              }

              v19 = [infoCopy objectForKeyedSubscript:@"isMockRoute"];
              -[CLLearnedRouteAuthPromptPluginViewController setIsMockRoute:](self, "setIsMockRoute:", [v19 BOOLValue]);

              route = [(CLLearnedRouteAuthPromptPluginViewController *)self route];
              v21 = [(CLLearnedRouteAuthPromptPluginViewController *)self validateRoute:route];

              if (v21)
              {
                v16 = 1;
LABEL_38:

                goto LABEL_39;
              }

              if (error)
              {
                v18 = @"route is missing or invalid";
                goto LABEL_35;
              }

LABEL_37:
              v16 = 0;
              goto LABEL_38;
            }

            if (!error)
            {
              goto LABEL_37;
            }

            v18 = @"destination dictionary format is invalid";
          }

          else
          {
            if (!error)
            {
              goto LABEL_37;
            }

            v18 = @"origin dictionary format is invalid";
          }

LABEL_35:
          v17 = [(CLLearnedRouteAuthPromptPluginViewController *)self errorWithReason:v18];
          goto LABEL_36;
        }
      }

      else
      {
      }

      v12 = 0;
      if (error)
      {
        v17 = [(CLLearnedRouteAuthPromptPluginViewController *)self errorWithReason:@"destination dictionary is missing or invalid"];
LABEL_36:
        v16 = 0;
        *error = v17;
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else
  {
  }

  if (error)
  {
    [(CLLearnedRouteAuthPromptPluginViewController *)self errorWithReason:@"origin dictionary is missing or invalid"];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_39:

  return v16;
}

- (id)errorWithReason:(id)reason
{
  reasonCopy = reason;
  v7 = NSLocalizedDescriptionKey;
  v8 = reasonCopy;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v4];

  return v5;
}

- (BOOL)validateCoordinateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  return isKindOfClass & v7 & 1;
}

- (BOOL)validateRoute:(id)route
{
  routeCopy = route;
  if ([routeCopy count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = routeCopy;
    v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = *v19;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        objc_opt_class();
        v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
        v9 = v8;
        v10 = v9;
        if (!v9)
        {
          break;
        }

        v11 = [v9 objectForKeyedSubscript:@"latitude"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v10 objectForKeyedSubscript:@"latitude"];
        }

        else
        {
          v12 = 0;
        }

        v13 = [v10 objectForKeyedSubscript:@"longitude"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v10 objectForKeyedSubscript:@"longitude"];

          v15 = v14 != 0;
        }

        else
        {
          v15 = 0;
        }

        if (v12 == 0 || !v15)
        {
          LOBYTE(v10) = 0;
          break;
        }

        if (v4 == ++v6)
        {
          v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
          LOBYTE(v10) = 1;
          if (v4)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (CLLocationCoordinate2D)coordinateFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  v9 = CLLocationCoordinate2DMake(v7, v8);

  latitude = v9.latitude;
  longitude = v9.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)configureMapView
{
  if (qword_1000118A8 != -1)
  {
    sub_100005E0C();
  }

  v2 = qword_1000118B0;
  if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CLLearnedRouteAuthPromptPluginViewController configureMapView]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  if ((+[CLLocationManager authorizationPromptMapDisplayEnabled]& 1) == 0)
  {
    selfCopy2 = self;
    if (qword_1000118A8 != -1)
    {
      sub_100005E20();
      selfCopy2 = self;
    }

    v64 = qword_1000118B0;
    if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "Hiding map view and footnote label because Show Map in Location Alerts is turned off.", &buf, 2u);
    }

    footnoteLabelContainer = [(CLAuthWithFootnoteViewController *)selfCopy2 footnoteLabelContainer];
    [footnoteLabelContainer setHidden:1];
    goto LABEL_40;
  }

  v74.receiver = self;
  v74.super_class = CLLearnedRouteAuthPromptPluginViewController;
  [(CLAuthBaseViewController *)&v74 configureMapView];
  originAnnotation = [(CLLearnedRouteAuthPromptPluginViewController *)self originAnnotation];
  if (!originAnnotation || ([(CLLearnedRouteAuthPromptPluginViewController *)self destinationAnnotation], v4 = objc_claimAutoreleasedReturnValue(), v5 = v4 == 0, v4, originAnnotation, v5))
  {
    if ([(CLLearnedRouteAuthPromptPluginViewController *)self didInitializationSucceed])
    {
      mapView = [(CLAuthBaseViewController *)self mapView];
      v7 = [mapView mapType] == 105;

      if (v7)
      {
        mapView2 = [(CLAuthBaseViewController *)self mapView];
        [mapView2 setMapType:0];
      }

      mapView3 = [(CLAuthBaseViewController *)self mapView];
      [mapView3 registerClass:objc_opt_class() forAnnotationViewWithReuseIdentifier:@"Start"];

      mapView4 = [(CLAuthBaseViewController *)self mapView];
      [mapView4 registerClass:objc_opt_class() forAnnotationViewWithReuseIdentifier:@"End"];

      mapView5 = [(CLAuthBaseViewController *)self mapView];
      [mapView5 registerClass:objc_opt_class() forAnnotationViewWithReuseIdentifier:@"Other"];

      v12 = +[NSBundle mainBundle];
      v65 = [v12 localizedStringForKey:@"Start" value:&stru_10000C838 table:0];

      v13 = +[NSBundle mainBundle];
      v66 = [v13 localizedStringForKey:@"End" value:&stru_10000C838 table:0];

      v14 = [MKPointAnnotation alloc];
      [(CLLearnedRouteAuthPromptPluginViewController *)self originCoordinate];
      v15 = [v14 initWithCoordinate:v65 title:0 subtitle:?];
      [(CLLearnedRouteAuthPromptPluginViewController *)self setOriginAnnotation:v15];

      v16 = [MKPointAnnotation alloc];
      [(CLLearnedRouteAuthPromptPluginViewController *)self destinationCoordinate];
      v17 = [v16 initWithCoordinate:v66 title:0 subtitle:?];
      [(CLLearnedRouteAuthPromptPluginViewController *)self setDestinationAnnotation:v17];

      originAnnotation2 = [(CLLearnedRouteAuthPromptPluginViewController *)self originAnnotation];
      v78[0] = originAnnotation2;
      destinationAnnotation = [(CLLearnedRouteAuthPromptPluginViewController *)self destinationAnnotation];
      v78[1] = destinationAnnotation;
      v67 = [NSArray arrayWithObjects:v78 count:2];

      mapView6 = [(CLAuthBaseViewController *)self mapView];
      [mapView6 addAnnotations:v67];

      buf = 0uLL;
      v77 = 0;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      route = [(CLLearnedRouteAuthPromptPluginViewController *)self route];
      v22 = [route countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v22)
      {
        v23 = *v71;
        v69 = route;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v71 != v23)
            {
              objc_enumerationMutation(route);
            }

            v25 = *(*(&v70 + 1) + 8 * i);
            v26 = [v25 objectForKeyedSubscript:@"latitude"];
            v27 = [v25 objectForKeyedSubscript:@"longitude"];
            [v26 doubleValue];
            v29 = v28;
            [v27 doubleValue];
            v31 = CLLocationCoordinate2DMake(v29, v30);
            v32 = *(&buf + 1);
            if (*(&buf + 1) >= v77)
            {
              v34 = buf;
              v35 = *(&buf + 1) - buf;
              v36 = (*(&buf + 1) - buf) >> 4;
              v37 = v36 + 1;
              if ((v36 + 1) >> 60)
              {
                sub_100005250();
              }

              v38 = v77 - buf;
              if ((v77 - buf) >> 3 > v37)
              {
                v37 = v38 >> 3;
              }

              v39 = v38 >= 0x7FFFFFFFFFFFFFF0;
              v40 = 0xFFFFFFFFFFFFFFFLL;
              if (!v39)
              {
                v40 = v37;
              }

              if (v40)
              {
                sub_1000052F8(&buf, v40);
              }

              *(16 * v36) = v31;
              v33 = 16 * v36 + 16;
              memcpy(0, v34, v35);
              v41 = buf;
              *&buf = 0;
              *(&buf + 1) = v33;
              v77 = 0;
              if (v41)
              {
                operator delete(v41);
              }

              route = v69;
            }

            else
            {
              **(&buf + 1) = v31;
              v33 = v32 + 16;
            }

            *(&buf + 1) = v33;
          }

          v22 = [route countByEnumeratingWithState:&v70 objects:v75 count:16];
        }

        while (v22);
      }

      v42 = [MKPolyline polylineWithCoordinates:"polylineWithCoordinates:count:" count:?];
      v43 = [MKPolyline polylineWithCoordinates:"polylineWithCoordinates:count:" count:?];
      [v42 setTitle:@"border"];
      [v43 setTitle:@"stroke"];
      mapView7 = [(CLAuthBaseViewController *)self mapView];
      [mapView7 addOverlay:v42];

      mapView8 = [(CLAuthBaseViewController *)self mapView];
      [mapView8 addOverlay:v43];

      mapView9 = [(CLAuthBaseViewController *)self mapView];
      [mapView9 showAnnotations:v67 animated:0];

      mapView10 = [(CLAuthBaseViewController *)self mapView];
      [mapView10 visibleMapRect];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      mapView11 = [(CLAuthBaseViewController *)self mapView];
      [mapView11 setVisibleMapRect:0 edgePadding:v49 animated:{v51, v53, v55, -38.0, 0.0, 38.0, 0.0}];

      isMockRoute = [(CLLearnedRouteAuthPromptPluginViewController *)self isMockRoute];
      v58 = @"Your Route";
      if (isMockRoute)
      {
        v58 = @"Sample Route";
      }

      v59 = v58;
      v60 = +[NSBundle mainBundle];
      v61 = [v60 localizedStringForKey:v59 value:&stru_10000C838 table:0];
      [(CLAuthWithFootnoteViewController *)self setUpFootnoteLabelWithText:v61];

      if (buf)
      {
        *(&buf + 1) = buf;
        operator delete(buf);
      }

      footnoteLabelContainer = v65;
LABEL_40:
    }
  }
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  if (qword_1000118A8 != -1)
  {
    sub_100005E0C();
  }

  v8 = qword_1000118B0;
  if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315138;
    v20 = "[CLLearnedRouteAuthPromptPluginViewController mapView:viewForAnnotation:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s", &v19, 0xCu);
  }

  originAnnotation = [(CLLearnedRouteAuthPromptPluginViewController *)self originAnnotation];
  v10 = originAnnotation == annotationCopy;

  if (v10)
  {
    v15 = @"Start";
  }

  else
  {
    destinationAnnotation = [(CLLearnedRouteAuthPromptPluginViewController *)self destinationAnnotation];
    v12 = destinationAnnotation == annotationCopy;

    if (v12)
    {
      v15 = @"End";
    }

    else
    {
      if (qword_1000118A8 != -1)
      {
        sub_100005E20();
      }

      v13 = qword_1000118B0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        title = [annotationCopy title];
        v19 = 138412290;
        v20 = title;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unexpected annotation: %@", &v19, 0xCu);
      }

      v15 = @"Other";
    }
  }

  mapView = [(CLAuthBaseViewController *)self mapView];
  v17 = [mapView dequeueReusableAnnotationViewWithIdentifier:v15 forAnnotation:annotationCopy];

  return v17;
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  overlayCopy = overlay;
  if (qword_1000118A8 != -1)
  {
    sub_100005E0C();
  }

  v7 = qword_1000118B0;
  if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315138;
    v26 = "[CLLearnedRouteAuthPromptPluginViewController mapView:rendererForOverlay:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s", &v25, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = overlayCopy;
    v9 = [[MKPolylineRenderer alloc] initWithPolyline:v8];
    v10 = +[UITraitCollection currentTraitCollection];
    userInterfaceStyle = [v10 userInterfaceStyle];

    title = [v8 title];
    v13 = [title isEqualToString:@"border"];

    if (v13)
    {
      if (userInterfaceStyle == 2)
      {
        [UIColor colorWithHue:0.580555556 saturation:0.79 brightness:1.0 alpha:1.0];
      }

      else
      {
        [UIColor colorWithHue:0.611111111 saturation:1.0 brightness:0.91 alpha:1.0];
      }
      v18 = ;
      [v9 setStrokeColor:v18];
      v19 = v18;
      v20 = 6.0;
LABEL_26:

      [v9 setLineWidth:v20];
      goto LABEL_27;
    }

    title2 = [v8 title];
    v17 = [title2 isEqualToString:@"stroke"];

    if (v17)
    {
      if (userInterfaceStyle == 2)
      {
        [UIColor colorWithHue:0.591666667 saturation:0.9 brightness:1.0 alpha:1.0];
      }

      else
      {
        [UIColor colorWithHue:0.561111111 saturation:1.0 brightness:1.0 alpha:1.0];
      }
      v23 = ;
      [v9 setStrokeColor:v23];
      v19 = v23;
      v20 = 3.0;
      goto LABEL_26;
    }

    if (qword_1000118A8 != -1)
    {
      sub_100005E20();
    }

    v21 = qword_1000118B0;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      title3 = [v8 title];
      v25 = 138412290;
      v26 = title3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "unknown overlay (%@), default renderer style will apply", &v25, 0xCu);
    }
  }

  else
  {
    if (qword_1000118A8 != -1)
    {
      sub_100005E20();
    }

    v8 = qword_1000118B0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v25 = 138412290;
      v26 = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to draw route because overlay was wrong type: %@", &v25, 0xCu);
    }

    v9 = 0;
  }

LABEL_27:

  return v9;
}

- (CLLocationCoordinate2D)originCoordinate
{
  latitude = self->_originCoordinate.latitude;
  longitude = self->_originCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocationCoordinate2D)destinationCoordinate
{
  latitude = self->_destinationCoordinate.latitude;
  longitude = self->_destinationCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end