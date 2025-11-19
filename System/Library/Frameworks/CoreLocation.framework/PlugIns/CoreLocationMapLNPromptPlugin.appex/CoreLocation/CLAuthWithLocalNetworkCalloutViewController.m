@interface CLAuthWithLocalNetworkCalloutViewController
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)configureCallouts;
- (void)configureMapSubLabels;
- (void)configureMapView;
- (void)loadView;
- (void)updateMapLayout;
- (void)viewWillLayoutSubviews;
@end

@implementation CLAuthWithLocalNetworkCalloutViewController

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = CLAuthWithLocalNetworkCalloutViewController;
  [(CLAuthBaseViewController *)&v16 loadView];
  [(CLAuthWithLocalNetworkCalloutViewController *)self setShowMapView:0];
  [(CLAuthWithLocalNetworkCalloutViewController *)self setMapSubLabel:0];
  v3 = [(CLAuthBaseViewController *)self extensionInputItems];
  v4 = [v3 firstObject];

  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"kTCCNotificationExtensionClientDataKey"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"kTCCNotificationExtensionDaemonDataKey"];

  if (qword_100015B10 != -1)
  {
    sub_10000937C();
  }

  v9 = qword_100015B18;
  if (os_log_type_enabled(qword_100015B18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    v18 = 0;
    v19 = 2082;
    v20 = &unk_10000C9FD;
    v21 = 2113;
    v22 = v8;
    v23 = 2113;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:loadView, daemonDictionary:%{private, location:escape_only}@, clientDictionary:%{private, location:escape_only}@}", buf, 0x26u);
  }

  v10 = [v6 objectForKeyedSubscript:@"mapLabelArrayForCalloutsKey"];
  [(CLAuthWithLocalNetworkCalloutViewController *)self setAnnotationDict:v10];

  v11 = [v8 objectForKeyedSubscript:@"kTCCNotificationExtensionDaemonDataInfoString"];
  [(CLAuthWithLocalNetworkCalloutViewController *)self setMapSubMessageString:v11];

  [(CLAuthWithLocalNetworkCalloutViewController *)self configureMapSubLabels];
  v12 = [(CLAuthWithLocalNetworkCalloutViewController *)self annotationDict];
  v13 = [v12 count] == 0;

  if (!v13)
  {
    if ((+[CLLocationManager authorizationPromptMapDisplayEnabled]& 1) != 0)
    {
      [(CLAuthWithLocalNetworkCalloutViewController *)self setShowMapView:1];
      [(CLAuthWithLocalNetworkCalloutViewController *)self updateMapLayout];
    }

    else
    {
      if (qword_100015B10 != -1)
      {
        sub_10000937C();
      }

      v14 = qword_100015B18;
      if (os_log_type_enabled(qword_100015B18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = &unk_10000C9FD;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:can't show prompt because authorizationPromptMapDisplayEnabled == false}", buf, 0x12u);
      }

      if (qword_100015B10 != -1)
      {
        sub_10000937C();
      }

      v15 = qword_100015B18;
      if (os_signpost_enabled(qword_100015B18))
      {
        *buf = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = &unk_10000C9FD;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "can't show prompt because authorizationPromptMapDisplayEnabled == false", "{msg%{public}.0s:can't show prompt because authorizationPromptMapDisplayEnabled == false}", buf, 0x12u);
      }
    }
  }
}

- (void)configureCallouts
{
  v2 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];

  if (!v2)
  {
    v3 = +[NSMutableArray array];
    [(CLAuthWithLocalNetworkCalloutViewController *)self setCallouts:v3];
  }

  v4 = [(CLAuthWithLocalNetworkCalloutViewController *)self locationCoordinates];

  if (!v4)
  {
    v5 = +[NSMutableArray array];
    [(CLAuthWithLocalNetworkCalloutViewController *)self setLocationCoordinates:v5];
  }

  v6 = +[NSMutableArray array];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v7 = [(CLAuthWithLocalNetworkCalloutViewController *)self annotationDict];
  v8 = [v7 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v8)
  {
    v9 = *v98;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v98 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v97 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"mapLabelCalloutTitleKey"];
        if ([v12 length])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v97 objects:v110 count:16];
    }

    while (v8);
  }

  v85 = +[NSMutableArray array];
  v13 = self;
  if ([v6 count] <= 2)
  {
    v84 = [v6 count];
  }

  else
  {
    v84 = 3;
  }

  if (qword_100015B10 != -1)
  {
    sub_10000937C();
    v13 = self;
  }

  v14 = qword_100015B18;
  if (os_log_type_enabled(qword_100015B18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v102 = 2082;
    v103 = &unk_10000C9FD;
    v104 = 1026;
    LODWORD(latitude) = v84;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:showing callouts, calloutsToShow:%{public}u}", buf, 0x18u);
  }

  x = MKMapRectNull.origin.x;
  y = MKMapRectNull.origin.y;
  width = MKMapRectNull.size.width;
  height = MKMapRectNull.size.height;
  __src = 0;
  v95 = 0;
  v96 = 0;
  if (v84)
  {
    for (j = 0; j != v84; ++j)
    {
      v18 = [v6 objectAtIndexedSubscript:j];
      v89 = [v18 objectForKeyedSubscript:@"mapLabelCalloutLocationKey"];

      v19 = [v89 objectForKeyedSubscript:@"mapLabelCalloutLatKey"];
      [v19 doubleValue];
      v21 = v20;

      v22 = [v89 objectForKeyedSubscript:@"mapLabelCalloutLngKey"];
      [v22 doubleValue];
      v24 = v23;

      v25 = CLLocationCoordinate2DMake(v21, v24);
      v26 = self;
      v27 = [[MKPointAnnotation alloc] initWithCoordinate:{v25.latitude, v25.longitude}];
      if (qword_100015B10 != -1)
      {
        sub_10000937C();
        v26 = self;
      }

      v28 = qword_100015B18;
      if (os_log_type_enabled(qword_100015B18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v102 = 2082;
        v103 = &unk_10000C9FD;
        v104 = 2053;
        latitude = v25.latitude;
        v106 = 2053;
        longitude = v25.longitude;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:callout with coordinate, lat:%{sensitive}.08f, lon:%{sensitive}.08f}", buf, 0x26u);
      }

      v29 = [(CLAuthBaseViewController *)v26 mapView];
      v30 = [(CLAuthWithLocalNetworkCalloutViewController *)v26 view];
      [v29 convertCoordinate:v30 toPointToView:{v25.latitude, v25.longitude}];
      v32 = v31;
      v34 = v33;

      v35 = v95;
      if (v95 >= v96)
      {
        v38 = __src;
        v39 = v95 - __src;
        v40 = (v95 - __src) >> 4;
        v41 = v40 + 1;
        v37 = self;
        if ((v40 + 1) >> 60)
        {
          sub_100007FA0();
        }

        v42 = v96 - __src;
        if ((v96 - __src) >> 3 > v41)
        {
          v41 = v42 >> 3;
        }

        v43 = v42 >= 0x7FFFFFFFFFFFFFF0;
        v44 = 0xFFFFFFFFFFFFFFFLL;
        if (!v43)
        {
          v44 = v41;
        }

        if (v44)
        {
          sub_100009224(&__src, v44);
        }

        *(16 * v40) = v25;
        v36 = (16 * v40 + 16);
        memcpy(0, v38, v39);
        v45 = __src;
        __src = 0;
        v95 = v36;
        v96 = 0;
        if (v45)
        {
          operator delete(v45);
        }
      }

      else
      {
        *v95 = v25.latitude;
        v35[1] = v25.longitude;
        v36 = v35 + 2;
        v37 = self;
      }

      v95 = v36;
      v88 = [[CLLocation alloc] initWithLatitude:v21 longitude:v24];
      v46 = [(CLAuthWithLocalNetworkCalloutViewController *)v37 locationCoordinates];
      [v46 addObject:v88];

      v47 = [v6 objectAtIndexedSubscript:j];
      [v47 objectForKeyedSubscript:@"mapLabelCalloutTitleKey"];
      v48 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      v49 = [v6 objectAtIndexedSubscript:j];
      v50 = [v49 objectForKeyedSubscript:@"mapLabelCalloutSubtitleKey"];

      v51 = [v6 objectAtIndexedSubscript:j];
      v52 = [v51 objectForKeyedSubscript:@"mapLabelCalloutSubtitle2Key"];

      if (qword_100015B10 != -1)
      {
        sub_10000937C();
      }

      v53 = qword_100015B18;
      if (os_log_type_enabled(qword_100015B18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289795;
        *&buf[4] = 0;
        v102 = 2082;
        v103 = &unk_10000C9FD;
        v104 = 2113;
        latitude = v48;
        v106 = 2049;
        longitude = v32;
        v108 = 2049;
        v109 = v34;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting up callout, title:%{private, location:escape_only}@, x:%{private}.5f, y:%{private}.5f}", buf, 0x30u);
      }

      v54 = [UIImageSymbolConfiguration configurationWithWeight:7];
      v55 = [UIImage systemImageNamed:@"wifi" withConfiguration:v54];

      v56 = [CLCalloutOverlay alloc];
      v57 = +[UIColor secondaryLabelColor];
      v58 = +[UIColor secondaryLabelColor];
      LOBYTE(v83) = 0;
      LODWORD(v82) = 1;
      v59 = [(CLCalloutOverlay *)v56 initWithFrame:*&v48 title:v50 subtitle:v52 subtitle2:v57 subtitleColor:v58 subtitle2Color:v55 image:v32 imageSize:v34 titleFontSize:200.0 titleNumberOfLines:220.0 titleFontWeight:15.0 titleLineBreakMode:15.0 showBackgroundPlatters:9.0, UIFontWeightSemibold, v82, 4, v83];

      [(CLCalloutOverlay *)v59 setCenter:v32, v34];
      [(CLCalloutOverlay *)v59 setAnnotation:v27];
      v60 = MKMapPointForCoordinate(v25);
      v61 = [[MapRect alloc] initWithRectA:x rectB:y, width, height, v60.x, v60.y, 0.0, 0.0];
      [(MapRect *)v61 rect];
      width = v62;
      height = v63;
      x = v64;
      y = v65;

      v66 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
      [v66 addObject:v59];

      v67 = [(CLAuthBaseViewController *)self mapView];
      [v67 addAnnotation:v27];

      [v85 addObject:v27];
      v68 = self;
    }

    __p = 0;
    v92 = 0;
    v93 = 0;
    sub_1000092C4(&__p, __src, v95, (v95 - __src) >> 4);
    v69 = sub_100006178(&__p);
    v71 = v70;
    if (__p)
    {
      v92 = __p;
      operator delete(__p);
    }

    if (qword_100015B10 != -1)
    {
      sub_10000937C();
      v68 = self;
    }

    v72 = qword_100015B18;
    if (os_log_type_enabled(qword_100015B18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v102 = 2082;
      v103 = &unk_10000C9FD;
      v104 = 2053;
      latitude = v69;
      v106 = 2053;
      longitude = v71;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:centering map view at, lat:%{sensitive}.08f, lon:%{sensitive}.08f}", buf, 0x26u);
    }

    v73 = [(CLAuthBaseViewController *)v68 mapView];
    [v73 setCenterCoordinate:{v69, v71}];

    v13 = self;
  }

  v74 = [(CLAuthBaseViewController *)v13 mapView];
  [v74 setVisibleMapRect:0 animated:{x, y, width, height}];

  if (v84)
  {
    for (k = 0; k != v84; ++k)
    {
      v76 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
      v77 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
      v78 = [v77 objectAtIndexedSubscript:k];
      [v76 addSubview:v78];

      v79 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
      v80 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
      v81 = [v80 objectAtIndexedSubscript:k];
      [v79 bringSubviewToFront:v81];
    }
  }

  if (__src)
  {
    v95 = __src;
    operator delete(__src);
  }
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 annotation];
        v12 = [v11 isEqual:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)configureMapSubLabels
{
  v3 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
  if (v3)
  {
  }

  else
  {
    v4 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubMessageString];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(CLAuthWithLocalNetworkCalloutViewController *)self setMapSubLabel:v6];

      v7 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

      v8 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      [v8 setLineBreakStrategy:1];

      v9 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      [v9 setNumberOfLines:0];

      v10 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      [v10 setTextAlignment:4];

      v11 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      [v11 setAdjustsFontForContentSizeCategory:1];

      v40 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
      v12 = [UIFont fontWithDescriptor:v40 size:0.0];
      v13 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      [v13 setFont:v12];

      v14 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubMessageString];
      v15 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      [v15 setText:v14];

      v16 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
      v17 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      [v16 addSubview:v17];

      v36 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      v39 = [v36 topAnchor];
      v35 = [(CLAuthBaseViewController *)self mapView];
      v34 = [v35 bottomAnchor];
      v33 = [v39 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
      v41[0] = v33;
      v32 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      v38 = [v32 bottomAnchor];
      v31 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
      v30 = [v31 bottomAnchor];
      v29 = [v38 constraintEqualToAnchor:-8.0 constant:?];
      v41[1] = v29;
      v28 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      v37 = [v28 leadingAnchor];
      v27 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
      v18 = [v27 leadingAnchor];
      v19 = [v37 constraintEqualToAnchor:v18 constant:10.0];
      v41[2] = v19;
      v20 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
      v21 = [v20 trailingAnchor];
      v22 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
      v23 = [v22 trailingAnchor];
      v24 = [v21 constraintEqualToAnchor:v23 constant:-10.0];
      v41[3] = v24;
      v25 = [NSArray arrayWithObjects:v41 count:4];
      [NSLayoutConstraint activateConstraints:v25];
    }
  }

  v26 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
  [v26 layoutIfNeeded];
}

- (void)configureMapView
{
  v10.receiver = self;
  v10.super_class = CLAuthWithLocalNetworkCalloutViewController;
  [(CLAuthBaseViewController *)&v10 configureMapViewWithHeightOverride:220.0];
  v3 = [(CLAuthBaseViewController *)self mapView];
  [v3 setHidden:1];

  v4 = [(CLAuthBaseViewController *)self mapView];
  [v4 setShowsUserLocation:0];

  v5 = [(CLAuthBaseViewController *)self mapView];
  v6 = [v5 mapType];

  if (v6 == 105)
  {
    v7 = [(CLAuthBaseViewController *)self mapView];
    [v7 setMapType:5];
  }

  v8 = [(CLAuthBaseViewController *)self mapView];
  [v8 setUserTrackingMode:0];

  v9 = [(CLAuthBaseViewController *)self mapView];
  [v9 _setShowsLabels:1];
}

- (void)updateMapLayout
{
  v3 = [(CLAuthBaseViewController *)self mapView];
  [v3 setHidden:0];

  v4 = [(CLAuthBaseViewController *)self mapView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(CLAuthBaseViewController *)self mapView];
  v23 = [v24 topAnchor];
  v21 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
  v20 = [v21 topAnchor];
  v19 = [v23 constraintEqualToAnchor:?];
  v25[0] = v19;
  v18 = [(CLAuthBaseViewController *)self mapView];
  v22 = [v18 leadingAnchor];
  v17 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
  v16 = [v17 leadingAnchor];
  v15 = [v22 constraintEqualToAnchor:?];
  v25[1] = v15;
  v14 = [(CLAuthBaseViewController *)self mapView];
  v5 = [v14 trailingAnchor];
  v6 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
  v7 = [v6 trailingAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v25[2] = v8;
  v9 = [(CLAuthBaseViewController *)self mapView];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintEqualToConstant:220.0];
  v25[3] = v11;
  v12 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  [(CLAuthWithLocalNetworkCalloutViewController *)self configureCallouts];
  v13 = [(CLAuthBaseViewController *)self mapView];
  [v13 layoutIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v132.receiver = self;
  v132.super_class = CLAuthWithLocalNetworkCalloutViewController;
  [(CLAuthBaseViewController *)&v132 viewWillLayoutSubviews];
  [(CLAuthWithLocalNetworkCalloutViewController *)self showMapView];
  v3 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
  v4 = v3 == 0;

  if (!v4)
  {
    v5 = [(CLAuthWithLocalNetworkCalloutViewController *)self mapSubLabel];
    [v5 intrinsicContentSize];
    [(CLAuthWithLocalNetworkCalloutViewController *)self showMapView];
  }

  [(CLAuthWithLocalNetworkCalloutViewController *)self preferredContentSize];
  [(CLAuthWithLocalNetworkCalloutViewController *)self setPreferredContentSize:?];
  for (i = 0; ; ++i)
  {
    v7 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
    v8 = i < [v7 count];

    if (!v8)
    {
      break;
    }

    v9 = [(CLAuthWithLocalNetworkCalloutViewController *)self locationCoordinates];
    v10 = [v9 objectAtIndexedSubscript:i];
    [v10 coordinate];
    v12 = v11;
    v14 = v13;

    v15 = [(CLAuthBaseViewController *)self mapView];
    v16 = [(CLAuthWithLocalNetworkCalloutViewController *)self view];
    [v15 convertCoordinate:v16 toPointToView:{v12, v14}];
    v18 = v17;
    v20 = v19;

    v21 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
    v22 = [v21 objectAtIndexedSubscript:i];
    [v22 setFrame:{v18, v20, 200.0, 220.0}];
  }

  v23 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
  v24 = [v23 count] == 1;

  if (v24)
  {
    v25 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
    v26 = [v25 firstObject];

    v27 = [(CLAuthBaseViewController *)self mapView];
    v28 = [v26 annotation];
    [v28 coordinate];
    [v27 setCenterCoordinate:0 zoomLevel:? animated:?];
    v29 = v26;
  }

  else
  {
    v29 = +[NSMutableArray array];
    y = MKMapRectNull.origin.y;
    x = MKMapRectNull.origin.x;
    height = MKMapRectNull.size.height;
    width = MKMapRectNull.size.width;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    obj = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
    v120 = [obj countByEnumeratingWithState:&v128 objects:v146 count:16];
    if (v120)
    {
      v118 = *v129;
      v112 = 0.0;
      *&v30 = 68289539;
      v109 = v30;
      v31 = 0.0;
      do
      {
        v122 = 0;
        do
        {
          if (*v129 != v118)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v128 + 1) + 8 * v122);
          if (([v29 containsObject:{v32, v109}] & 1) == 0)
          {
            if (qword_100015B10 != -1)
            {
              sub_10000937C();
            }

            v33 = qword_100015B18;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = [v32 annotation];
              [v34 coordinate];
              v36 = v35;
              v37 = [v32 annotation];
              [v37 coordinate];
              *buf = v109;
              v134 = 0;
              v135 = 2082;
              v136 = &unk_10000C9FD;
              v137 = 2053;
              v138 = v36;
              v139 = 2053;
              v140 = v38;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:processing callout at given coordinate, lat:%{sensitive}.08f, lon:%{sensitive}.08f}", buf, 0x26u);
            }

            [v32 calloutFrame];
            if (v39 > 0.0 || ([v32 calloutFrame], v40 > 0.0))
            {
              [v32 calloutFrame];
              if (v41 * 0.5 >= v31)
              {
                v31 = v41 * 0.5;
              }

              [v32 calloutFrame];
              v43 = v112;
              if (v42 * 0.5 >= v112)
              {
                v43 = v42 * 0.5;
              }

              v112 = v43;
              [v32 frame];
              v45 = v44;
              [v32 frame];
              v47 = v46;
              [v32 calloutFrame];
              v49 = v48;
              [v32 calloutFrame];
              v51 = v50;
              v126 = 0u;
              v127 = 0u;
              v124 = 0u;
              v125 = 0u;
              v52 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
              v53 = [v52 countByEnumeratingWithState:&v124 objects:v145 count:16];
              if (v53)
              {
                v54 = *v125;
                do
                {
                  for (j = 0; j != v53; j = j + 1)
                  {
                    if (*v125 != v54)
                    {
                      objc_enumerationMutation(v52);
                    }

                    v56 = *(*(&v124 + 1) + 8 * j);
                    if (v32 != v56)
                    {
                      [*(*(&v124 + 1) + 8 * j) frame];
                      v58 = v57;
                      [v56 frame];
                      v60 = v59;
                      [v56 calloutFrame];
                      v62 = v61;
                      [v56 calloutFrame];
                      v151.size.height = v63;
                      v148.origin.x = v45;
                      v148.origin.y = v47;
                      v148.size.width = v49;
                      v148.size.height = v51;
                      v151.origin.x = v58;
                      v151.origin.y = v60;
                      v151.size.width = v62;
                      if (CGRectIntersectsRect(v148, v151))
                      {
                        [v56 removeFromSuperview];
                        v64 = [(CLAuthBaseViewController *)self mapView];
                        v65 = [v56 annotation];
                        [v64 removeAnnotation:v65];

                        [v29 addObject:v56];
                      }
                    }
                  }

                  v53 = [v52 countByEnumeratingWithState:&v124 objects:v145 count:16];
                }

                while (v53);
              }

              v66 = [v32 annotation];
              [v66 coordinate];
              v67 = MKMapPointForCoordinate(v147);

              [v32 calloutFrame];
              v69 = v68;
              [v32 calloutFrame];
              v71 = [[MapRect alloc] initWithRectA:x rectB:y, width, height, v67.x, v67.y, v69, v70];
              [(MapRect *)v71 rect];
              y = v73;
              x = v72;
              height = v75;
              width = v74;
            }
          }

          v122 = v122 + 1;
        }

        while (v122 != v120);
        v120 = [obj countByEnumeratingWithState:&v128 objects:v146 count:16];
      }

      while (v120);
      v123 = v31 + 5.0;
      v76 = v112 + 5.0;
    }

    else
    {
      v76 = 5.0;
      v123 = 5.0;
    }

    v77 = [(CLAuthBaseViewController *)self mapView];
    [v77 region];
    MKMapRectForCoordinateRegion();
    v119 = v79;
    v121 = v78;
    obja = v81;
    v113 = v80;

    v149.origin.y = y;
    v149.origin.x = x;
    v149.size.height = height;
    v149.size.width = width;
    v150 = MKCoordinateRegionForMapRect(v149);
    latitude = v150.center.latitude;
    latitudeDelta = v150.span.latitudeDelta;
    if (v150.span.latitudeDelta < 0.000000001 || (longitudeDelta = v150.span.longitudeDelta, v150.span.longitudeDelta < 0.000000001))
    {
      if (qword_100015B10 != -1)
      {
        sub_10000937C();
      }

      v87 = qword_100015B18;
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        v88 = [(CLAuthBaseViewController *)self mapView];
        [v88 region];
        v90 = v89;
        v91 = [(CLAuthBaseViewController *)self mapView];
        [v91 region];
        v93 = v92;
        v94 = [(CLAuthBaseViewController *)self mapView];
        [v94 region];
        v96 = v95;
        v97 = [(CLAuthBaseViewController *)self mapView];
        [v97 region];
        *buf = 68290051;
        v134 = 0;
        v135 = 2082;
        v136 = &unk_10000C9FD;
        v137 = 2053;
        v138 = v90;
        v139 = 2053;
        v140 = v93;
        v141 = 2053;
        v142 = v96;
        v143 = 2053;
        v144 = v98;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting mapView to existing mapView region because recomputed rect is invalid, lat:%{sensitive}.08f, lon:%{sensitive}.08f, latitudeDelta:%{sensitive}.2f, longitudeDelta:%{sensitive}.2f}", buf, 0x3Au);
      }

      v27 = [(CLAuthBaseViewController *)self mapView];
      [v27 setVisibleMapRect:0 edgePadding:v121 animated:{v119, v113, *&obja, v76, v123, v76, v123}];
      goto LABEL_54;
    }

    if (v150.span.latitudeDelta <= 25.0 && v150.span.longitudeDelta <= 65.0)
    {
      longitude = v150.center.longitude;
      if (qword_100015B10 != -1)
      {
        sub_10000937C();
      }

      v86 = qword_100015B18;
      if (os_log_type_enabled(qword_100015B18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290051;
        v134 = 0;
        v135 = 2082;
        v136 = &unk_10000C9FD;
        v137 = 2053;
        v138 = latitude;
        v139 = 2053;
        v140 = longitude;
        v141 = 2053;
        v142 = latitudeDelta;
        v143 = 2053;
        v144 = longitudeDelta;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting mapView to given center and span, lat:%{sensitive}.08f, lon:%{sensitive}.08f, latitudeDelta:%{sensitive}.2f, longitudeDelta:%{sensitive}.2f}", buf, 0x3Au);
      }

      v27 = [(CLAuthBaseViewController *)self mapView];
      [v27 setVisibleMapRect:0 edgePadding:x animated:{y, width, height, v76, v123, v76, v123}];
      goto LABEL_54;
    }

    v99 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
    v100 = [v99 count] == 0;

    if (v100)
    {
      goto LABEL_55;
    }

    v101 = [(CLAuthWithLocalNetworkCalloutViewController *)self callouts];
    v27 = [v101 firstObject];

    v102 = [(CLAuthBaseViewController *)self mapView];
    v103 = [v27 annotation];
    [v103 coordinate];
    [v102 setCenterCoordinate:0 zoomLevel:? animated:?];

    if (qword_100015B10 != -1)
    {
      sub_10000937C();
    }

    v28 = qword_100015B18;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v104 = [v27 annotation];
      [v104 coordinate];
      v106 = v105;
      v107 = [v27 annotation];
      [v107 coordinate];
      *buf = 68289539;
      v134 = 0;
      v135 = 2082;
      v136 = &unk_10000C9FD;
      v137 = 2053;
      v138 = v106;
      v139 = 2053;
      v140 = v108;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:callouts too far apart, showing only first callout at center, lat:%{sensitive}.08f, lon:%{sensitive}.08f}", buf, 0x26u);
    }
  }

LABEL_54:
LABEL_55:
}

@end