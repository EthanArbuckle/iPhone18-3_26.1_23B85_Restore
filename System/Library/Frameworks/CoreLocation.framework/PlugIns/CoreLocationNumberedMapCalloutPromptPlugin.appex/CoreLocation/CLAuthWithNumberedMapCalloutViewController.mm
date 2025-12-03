@interface CLAuthWithNumberedMapCalloutViewController
- (id)demandCreateLocationManager;
- (void)configureCallouts;
- (void)configureMapSubLabels;
- (void)configureMapView;
- (void)loadView;
- (void)mapView:(id)view didAddAnnotationViews:(id)views;
- (void)updateMapLayout;
- (void)viewWillLayoutSubviews;
@end

@implementation CLAuthWithNumberedMapCalloutViewController

- (void)loadView
{
  v18.receiver = self;
  v18.super_class = CLAuthWithNumberedMapCalloutViewController;
  [(CLAuthBaseViewController *)&v18 loadView];
  [(CLAuthWithNumberedMapCalloutViewController *)self setShowMapView:0];
  [(CLAuthWithNumberedMapCalloutViewController *)self setCurrentLocation:0];
  [(CLAuthWithNumberedMapCalloutViewController *)self setMapSubLabel:0];
  [(CLAuthWithNumberedMapCalloutViewController *)self setMapCountSubLabel:0];
  extensionInputItems = [(CLAuthBaseViewController *)self extensionInputItems];
  firstObject = [extensionInputItems firstObject];

  userInfo = [firstObject userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"kTCCNotificationExtensionClientDataKey"];

  userInfo2 = [firstObject userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"kTCCNotificationExtensionDaemonDataKey"];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20[0] = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "daemonDictionary %{private}@", buf, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20[0] = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "clientDictionary %{private}@", buf, 0xCu);
  }

  v9 = [v6 objectForKeyedSubscript:@"mapLabelArrayForCalloutsKey"];
  [(CLAuthWithNumberedMapCalloutViewController *)self setAnnotationDict:v9];

  v10 = [v8 objectForKeyedSubscript:@"kTCCNotificationExtensionDaemonDataInfoString"];
  [(CLAuthWithNumberedMapCalloutViewController *)self setMapSubMessageString:v10];

  v11 = [v6 objectForKeyedSubscript:@"mapCentralLabelStringKey"];
  [(CLAuthWithNumberedMapCalloutViewController *)self setMapCountLabelString:v11];

  [(CLAuthWithNumberedMapCalloutViewController *)self setAnnotationViews:0];
  [(CLAuthWithNumberedMapCalloutViewController *)self setCurrentLocation:0];
  [(CLAuthWithNumberedMapCalloutViewController *)self configureMapSubLabels];
  if ((+[CLLocationManager authorizationPromptMapDisplayEnabled]& 1) != 0)
  {
    locManager = [(CLAuthBaseViewController *)self locManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000045EC;
    v17[3] = &unk_1000103B0;
    v17[4] = self;
    v13 = [locManager liveUpdaterWithQueue:&_dispatch_main_q handler:v17];
    [(CLAuthWithNumberedMapCalloutViewController *)self setUpdater:v13];

    updater = [(CLAuthWithNumberedMapCalloutViewController *)self updater];
    [updater resume];
  }

  else
  {
    if (qword_100015A70 != -1)
    {
      sub_100008ACC();
    }

    v15 = qword_100015A78;
    if (os_log_type_enabled(qword_100015A78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      LODWORD(v20[0]) = 0;
      WORD2(v20[0]) = 2082;
      *(v20 + 6) = &unk_10000C551;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:can't show prompt because authorizationPromptMapDisplayEnabled == false}", buf, 0x12u);
    }

    if (qword_100015A70 != -1)
    {
      sub_100008ACC();
    }

    v16 = qword_100015A78;
    if (os_signpost_enabled(qword_100015A78))
    {
      *buf = 68289026;
      LODWORD(v20[0]) = 0;
      WORD2(v20[0]) = 2082;
      *(v20 + 6) = &unk_10000C551;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "can't show prompt because authorizationPromptMapDisplayEnabled == false", "{msg%{public}.0s:can't show prompt because authorizationPromptMapDisplayEnabled == false}", buf, 0x12u);
    }
  }
}

- (void)configureCallouts
{
  annotationViews = [(CLAuthWithNumberedMapCalloutViewController *)self annotationViews];

  if (!annotationViews)
  {
    v4 = +[NSMutableArray array];
    [(CLAuthWithNumberedMapCalloutViewController *)self setAnnotationViews:v4];

    mapView = [(CLAuthBaseViewController *)self mapView];
    mapView2 = [(CLAuthBaseViewController *)self mapView];
    [mapView2 region];
    v8 = v7;
    v10 = v9;
    view = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    [mapView convertCoordinate:view toPointToView:{v8, v10}];
    v13 = v12;
    v15 = v14;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67174657;
      v69 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "callout debug mode? %{private}u", buf, 8u);
    }

    v16 = +[UIColor systemBlueColor];
    v17 = [v16 colorWithAlphaComponent:0.7];
    v18 = v17;
    cGColor = [v17 CGColor];
    v20 = +[UIColor systemBlueColor];
    v21 = [v20 colorWithAlphaComponent:0.15];
    v22 = v21;
    v23 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor, [v21 CGColor], 0);
    v60 = [UIImage getFadedCircleWithDiameter:v23 withFillColors:160.0];

    v24 = v15 + -3.0;
    v61 = [[UIImageView alloc] initWithImage:v60];
    [v61 setCenter:{v13, v15 + -3.0}];
    [v61 setClipsToBounds:1];
    [v61 setContentMode:1];
    layer = [v61 layer];
    [layer setCornerRadius:80.0];

    view2 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    [view2 addSubview:v61];

    [(CLAuthWithNumberedMapCalloutViewController *)self setHudCircleView:v61];
    view3 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    [view3 bringSubviewToFront:v61];

    v28 = v15 + -80.0 + -3.0;
    v62 = [[UIImageView alloc] initWithFrame:{v13 + -80.0, v28, 12.0, 12.0}];
    [v62 setCenter:{v13, v24}];
    v29 = +[UIColor systemBlueColor];
    v30 = [UIImage getCircleWithDiameter:v29 withFillColor:12.0];
    [v62 setImage:v30];

    [v62 setClipsToBounds:1];
    [v62 setContentMode:1];
    layer2 = [v62 layer];
    [layer2 setCornerRadius:6.0];

    v32 = +[UIColor whiteColor];
    v33 = v32;
    cGColor2 = [v32 CGColor];
    layer3 = [v62 layer];
    [layer3 setBorderColor:cGColor2];

    layer4 = [v62 layer];
    [layer4 setBorderWidth:1.5];

    view4 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    [view4 addSubview:v62];

    [(CLAuthWithNumberedMapCalloutViewController *)self setBlueDotView:v62];
    v38 = +[NSMutableArray array];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    annotationDict = [(CLAuthWithNumberedMapCalloutViewController *)self annotationDict];
    v40 = [annotationDict countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v40)
    {
      v41 = *v65;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v65 != v41)
          {
            objc_enumerationMutation(annotationDict);
          }

          v43 = *(*(&v64 + 1) + 8 * i);
          v44 = [v43 objectForKeyedSubscript:@"mapLabelCalloutTitleKey"];
          if ([v44 length])
          {
            [v38 addObject:v43];
          }
        }

        v40 = [annotationDict countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v40);
    }

    if ([v38 count] <= 3)
    {
      v45 = [v38 count];
    }

    else
    {
      v45 = 4;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v69 = v45;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "showing %ul callouts", buf, 8u);
    }

    v46 = v45;
    sub_10000560C(v45, __p);
    if (v45)
    {
      v47 = 0;
      do
      {
        v48 = __sincos_stret(*(__p[0] + v47) * -3.14159265 / 180.0);
        v49 = [v38 objectAtIndexedSubscript:v47];
        v50 = [v49 objectForKeyedSubscript:@"mapLabelCalloutTitleKey"];

        if (qword_100015A70 != -1)
        {
          sub_100008ACC();
        }

        v51 = qword_100015A78;
        if (os_log_type_enabled(qword_100015A78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          v69 = 0;
          v70 = 2082;
          v71 = &unk_10000C551;
          v72 = 2113;
          v73 = v50;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setting up callout, title:%{private, location:escape_only}@}", buf, 0x1Cu);
        }

        v52 = [UIImage _systemImageNamed:@"bluetooth"];
        LOBYTE(v59) = 1;
        LODWORD(v58) = 1;
        v53 = [[CLCalloutOverlay alloc] initWithFrame:v50 title:0 subtitle:0 subtitle2:0 subtitleColor:0 subtitle2Color:v52 image:v13 + -80.0 + 80.0 + v48.__cosval * 80.0 + -80.0 imageSize:v28 + 80.0 + v48.__sinval * 80.0 + -80.0 titleFontSize:160.0 titleNumberOfLines:160.0 titleFontWeight:15.0 titleLineBreakMode:15.0 showBackgroundPlatters:9.0, UIFontWeightSemibold, v58, 4, v59];
        annotationViews2 = [(CLAuthWithNumberedMapCalloutViewController *)self annotationViews];
        [annotationViews2 addObject:v53];

        view5 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
        [view5 addSubview:v53];

        view6 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
        [view6 bringSubviewToFront:v53];

        view7 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
        [view7 bringSubviewToFront:v62];

        ++v47;
      }

      while (v46 != v47);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

- (void)mapView:(id)view didAddAnnotationViews:(id)views
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  viewsCopy = views;
  v5 = [viewsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(viewsCopy);
        }

        [*(*(&v8 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [viewsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)configureMapSubLabels
{
  mapSubLabel = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
  if (mapSubLabel)
  {
  }

  else
  {
    mapSubMessageString = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubMessageString];
    v5 = [mapSubMessageString length];

    if (v5)
    {
      v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(CLAuthWithNumberedMapCalloutViewController *)self setMapSubLabel:v6];

      mapSubLabel2 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [mapSubLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

      mapSubLabel3 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [mapSubLabel3 setLineBreakStrategy:1];

      mapSubLabel4 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [mapSubLabel4 setNumberOfLines:0];

      mapSubLabel5 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [mapSubLabel5 setTextAlignment:4];

      mapSubLabel6 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [mapSubLabel6 setAdjustsFontForContentSizeCategory:1];

      v79 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
      v12 = [UIFont fontWithDescriptor:v79 size:0.0];
      mapSubLabel7 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [mapSubLabel7 setFont:v12];

      mapSubMessageString2 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubMessageString];
      mapSubLabel8 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [mapSubLabel8 setText:mapSubMessageString2];

      view = [(CLAuthWithNumberedMapCalloutViewController *)self view];
      mapSubLabel9 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [view addSubview:mapSubLabel9];

      mapSubLabel10 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      bottomAnchor = [mapSubLabel10 bottomAnchor];
      view2 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
      bottomAnchor2 = [view2 bottomAnchor];
      v68 = [bottomAnchor constraintEqualToAnchor:-8.0 constant:?];
      v89[0] = v68;
      mapSubLabel11 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      leadingAnchor = [mapSubLabel11 leadingAnchor];
      view3 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
      leadingAnchor2 = [view3 leadingAnchor];
      v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
      v89[1] = v19;
      mapSubLabel12 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      trailingAnchor = [mapSubLabel12 trailingAnchor];
      view4 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
      trailingAnchor2 = [view4 trailingAnchor];
      v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
      v89[2] = v24;
      v25 = [NSArray arrayWithObjects:v89 count:3];
      [NSLayoutConstraint activateConstraints:v25];
    }
  }

  mapCountSubLabel = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
  if (mapCountSubLabel)
  {
    goto LABEL_8;
  }

  mapCountLabelString = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountLabelString];
  v28 = [mapCountLabelString length] == 0;

  if (!v28)
  {
    v29 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CLAuthWithNumberedMapCalloutViewController *)self setMapCountSubLabel:v29];

    mapCountSubLabel2 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [mapCountSubLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    mapCountSubLabel3 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [mapCountSubLabel3 setLineBreakStrategy:1];

    mapCountSubLabel4 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [mapCountSubLabel4 setNumberOfLines:0];

    mapCountSubLabel5 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [mapCountSubLabel5 setTextAlignment:4];

    mapCountSubLabel6 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [mapCountSubLabel6 setAdjustsFontForContentSizeCategory:1];

    v35 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
    v87 = UIFontDescriptorTraitsAttribute;
    v85 = UIFontWeightTrait;
    v36 = [NSNumber numberWithDouble:UIFontWeightSemibold];
    v86 = v36;
    v37 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    v88 = v37;
    v38 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    mapCountSubLabel = [v35 fontDescriptorByAddingAttributes:v38];

    v39 = [UIFont fontWithDescriptor:mapCountSubLabel size:0.0];
    mapCountSubLabel7 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [mapCountSubLabel7 setFont:v39];

    mapCountLabelString2 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountLabelString];
    mapCountSubLabel8 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [mapCountSubLabel8 setText:mapCountLabelString2];

    view5 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    mapCountSubLabel9 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [view5 addSubview:mapCountSubLabel9];

    mapCountSubLabel10 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    leadingAnchor3 = [mapCountSubLabel10 leadingAnchor];
    view6 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    leadingAnchor4 = [view6 leadingAnchor];
    v45 = [leadingAnchor3 constraintEqualToAnchor:10.0 constant:?];
    v84[0] = v45;
    mapCountSubLabel11 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    trailingAnchor3 = [mapCountSubLabel11 trailingAnchor];
    view7 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    trailingAnchor4 = [view7 trailingAnchor];
    v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
    v84[1] = v50;
    v51 = [NSArray arrayWithObjects:v84 count:2];
    [NSLayoutConstraint activateConstraints:v51];

LABEL_8:
  }

  mapCountSubLabel12 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
  if (mapCountSubLabel12)
  {
    mapSubLabel13 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
    v54 = mapSubLabel13 == 0;

    if (!v54)
    {
      mapCountSubLabel13 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
      bottomAnchor3 = [mapCountSubLabel13 bottomAnchor];
      mapSubLabel14 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      topAnchor = [mapSubLabel14 topAnchor];
      v56 = [bottomAnchor3 constraintEqualToAnchor:-8.0 constant:?];
      v83[0] = v56;
      mapCountSubLabel14 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
      topAnchor2 = [mapCountSubLabel14 topAnchor];
      mapView = [(CLAuthBaseViewController *)self mapView];
      bottomAnchor4 = [mapView bottomAnchor];
      v61 = [topAnchor2 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:1.0];
      v83[1] = v61;
      v62 = [NSArray arrayWithObjects:v83 count:2];
      [NSLayoutConstraint activateConstraints:v62];

LABEL_15:
      goto LABEL_16;
    }
  }

  mapCountSubLabel13 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
  if (mapCountSubLabel13)
  {
LABEL_16:

    goto LABEL_17;
  }

  mapSubLabel15 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
  v64 = mapSubLabel15 == 0;

  if (!v64)
  {
    mapCountSubLabel13 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
    bottomAnchor3 = [mapCountSubLabel13 topAnchor];
    mapSubLabel14 = [(CLAuthBaseViewController *)self mapView];
    topAnchor = [mapSubLabel14 bottomAnchor];
    v56 = [bottomAnchor3 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
    v82 = v56;
    mapCountSubLabel14 = [NSArray arrayWithObjects:&v82 count:1];
    [NSLayoutConstraint activateConstraints:mapCountSubLabel14];
    goto LABEL_15;
  }

LABEL_17:
  view8 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
  [view8 layoutIfNeeded];
}

- (void)configureMapView
{
  v11.receiver = self;
  v11.super_class = CLAuthWithNumberedMapCalloutViewController;
  [(CLAuthBaseViewController *)&v11 configureMapViewWithHeightOverride:220.0];
  mapView = [(CLAuthBaseViewController *)self mapView];
  [mapView setHidden:1];

  mapView2 = [(CLAuthBaseViewController *)self mapView];
  mapType = [mapView2 mapType];

  if (mapType == 105)
  {
    mapView3 = [(CLAuthBaseViewController *)self mapView];
    [mapView3 setMapType:5];
  }

  mapView4 = [(CLAuthBaseViewController *)self mapView];
  [mapView4 setUserTrackingMode:0];

  v8 = +[MKPointOfInterestFilter filterExcludingAllCategories];
  mapView5 = [(CLAuthBaseViewController *)self mapView];
  [mapView5 setPointOfInterestFilter:v8];

  mapView6 = [(CLAuthBaseViewController *)self mapView];
  [mapView6 _setShowsLabels:0];
}

- (void)updateMapLayout
{
  mapView = [(CLAuthBaseViewController *)self mapView];
  [mapView setHidden:0];

  mapView2 = [(CLAuthBaseViewController *)self mapView];
  [mapView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  mapView3 = [(CLAuthBaseViewController *)self mapView];
  topAnchor = [mapView3 topAnchor];
  view = [(CLAuthWithNumberedMapCalloutViewController *)self view];
  topAnchor2 = [view topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:?];
  v32[0] = v26;
  mapView4 = [(CLAuthBaseViewController *)self mapView];
  leadingAnchor = [mapView4 leadingAnchor];
  view2 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:?];
  v32[1] = v22;
  mapView5 = [(CLAuthBaseViewController *)self mapView];
  trailingAnchor = [mapView5 trailingAnchor];
  view3 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[2] = v8;
  mapView6 = [(CLAuthBaseViewController *)self mapView];
  heightAnchor = [mapView6 heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:220.0];
  v32[3] = v11;
  v12 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  currentLocation = [(CLAuthWithNumberedMapCalloutViewController *)self currentLocation];
  [currentLocation coordinate];
  v15 = v14;
  v17 = v16;

  mapView7 = [(CLAuthBaseViewController *)self mapView];
  [mapView7 setRegion:{v15, v17, 0.0014, 0.0014}];

  [(CLAuthWithNumberedMapCalloutViewController *)self configureCallouts];
  mapView8 = [(CLAuthBaseViewController *)self mapView];
  [mapView8 layoutIfNeeded];

  updater = [(CLAuthWithNumberedMapCalloutViewController *)self updater];
  [updater pause];
}

- (void)viewWillLayoutSubviews
{
  v33.receiver = self;
  v33.super_class = CLAuthWithNumberedMapCalloutViewController;
  [(CLAuthBaseViewController *)&v33 viewWillLayoutSubviews];
  mapCountSubLabel = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];

  if (mapCountSubLabel)
  {
    mapCountSubLabel2 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [mapCountSubLabel2 intrinsicContentSize];
    v6 = v5 + 8.0;
  }

  else
  {
    v6 = 0.0;
  }

  if ([(CLAuthWithNumberedMapCalloutViewController *)self showMapView])
  {
    mapCountSubLabel3 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    v8 = v6 + dbl_10000AFF0[mapCountSubLabel3 == 0];
  }

  mapSubLabel = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];

  if (mapSubLabel)
  {
    mapSubLabel2 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
    [mapSubLabel2 intrinsicContentSize];
    mapCountSubLabel4 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    if (!mapCountSubLabel4)
    {
      [(CLAuthWithNumberedMapCalloutViewController *)self showMapView];
    }
  }

  [(CLAuthWithNumberedMapCalloutViewController *)self preferredContentSize];
  [(CLAuthWithNumberedMapCalloutViewController *)self setPreferredContentSize:?];
  mapView = [(CLAuthBaseViewController *)self mapView];
  mapView2 = [(CLAuthBaseViewController *)self mapView];
  [mapView2 region];
  v15 = v14;
  v17 = v16;
  view = [(CLAuthWithNumberedMapCalloutViewController *)self view];
  [mapView convertCoordinate:view toPointToView:{v15, v17}];
  v20 = v19;
  v22 = v21;

  blueDotView = [(CLAuthWithNumberedMapCalloutViewController *)self blueDotView];
  [blueDotView setCenter:{v20, v22 + -3.0}];

  hudCircleView = [(CLAuthWithNumberedMapCalloutViewController *)self hudCircleView];
  [hudCircleView setCenter:{v20, v22 + -3.0}];

  annotationViews = [(CLAuthWithNumberedMapCalloutViewController *)self annotationViews];
  sub_10000560C([annotationViews count], __p);

  for (i = 0; ; ++i)
  {
    annotationViews2 = [(CLAuthWithNumberedMapCalloutViewController *)self annotationViews];
    v28 = [annotationViews2 count];

    if (i >= v28)
    {
      break;
    }

    v29 = __sincos_stret(*(__p[0] + i) * -3.14159265 / 180.0);
    annotationViews3 = [(CLAuthWithNumberedMapCalloutViewController *)self annotationViews];
    v31 = [annotationViews3 objectAtIndexedSubscript:i];
    [v31 setFrame:{v20 + -80.0 + 80.0 + v29.__cosval * 80.0 + -80.0, v22 + -80.0 + -3.0 + 80.0 + v29.__sinval * 80.0 + -80.0, 160.0, 160.0}];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (id)demandCreateLocationManager
{
  v2 = [CLLocationManager alloc];
  effectiveBundlePath = [objc_opt_class() effectiveBundlePath];
  v4 = [v2 initWithEffectiveBundlePath:effectiveBundlePath];

  return v4;
}

@end