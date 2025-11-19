@interface CLAuthWithNumberedMapCalloutViewController
- (id)demandCreateLocationManager;
- (void)configureCallouts;
- (void)configureMapSubLabels;
- (void)configureMapView;
- (void)loadView;
- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4;
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
  v3 = [(CLAuthBaseViewController *)self extensionInputItems];
  v4 = [v3 firstObject];

  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"kTCCNotificationExtensionClientDataKey"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"kTCCNotificationExtensionDaemonDataKey"];

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
    v12 = [(CLAuthBaseViewController *)self locManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000045EC;
    v17[3] = &unk_1000103B0;
    v17[4] = self;
    v13 = [v12 liveUpdaterWithQueue:&_dispatch_main_q handler:v17];
    [(CLAuthWithNumberedMapCalloutViewController *)self setUpdater:v13];

    v14 = [(CLAuthWithNumberedMapCalloutViewController *)self updater];
    [v14 resume];
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
  v3 = [(CLAuthWithNumberedMapCalloutViewController *)self annotationViews];

  if (!v3)
  {
    v4 = +[NSMutableArray array];
    [(CLAuthWithNumberedMapCalloutViewController *)self setAnnotationViews:v4];

    v5 = [(CLAuthBaseViewController *)self mapView];
    v6 = [(CLAuthBaseViewController *)self mapView];
    [v6 region];
    v8 = v7;
    v10 = v9;
    v11 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    [v5 convertCoordinate:v11 toPointToView:{v8, v10}];
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
    v19 = [v17 CGColor];
    v20 = +[UIColor systemBlueColor];
    v21 = [v20 colorWithAlphaComponent:0.15];
    v22 = v21;
    v23 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v19, [v21 CGColor], 0);
    v60 = [UIImage getFadedCircleWithDiameter:v23 withFillColors:160.0];

    v24 = v15 + -3.0;
    v61 = [[UIImageView alloc] initWithImage:v60];
    [v61 setCenter:{v13, v15 + -3.0}];
    [v61 setClipsToBounds:1];
    [v61 setContentMode:1];
    v25 = [v61 layer];
    [v25 setCornerRadius:80.0];

    v26 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    [v26 addSubview:v61];

    [(CLAuthWithNumberedMapCalloutViewController *)self setHudCircleView:v61];
    v27 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    [v27 bringSubviewToFront:v61];

    v28 = v15 + -80.0 + -3.0;
    v62 = [[UIImageView alloc] initWithFrame:{v13 + -80.0, v28, 12.0, 12.0}];
    [v62 setCenter:{v13, v24}];
    v29 = +[UIColor systemBlueColor];
    v30 = [UIImage getCircleWithDiameter:v29 withFillColor:12.0];
    [v62 setImage:v30];

    [v62 setClipsToBounds:1];
    [v62 setContentMode:1];
    v31 = [v62 layer];
    [v31 setCornerRadius:6.0];

    v32 = +[UIColor whiteColor];
    v33 = v32;
    v34 = [v32 CGColor];
    v35 = [v62 layer];
    [v35 setBorderColor:v34];

    v36 = [v62 layer];
    [v36 setBorderWidth:1.5];

    v37 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    [v37 addSubview:v62];

    [(CLAuthWithNumberedMapCalloutViewController *)self setBlueDotView:v62];
    v38 = +[NSMutableArray array];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v39 = [(CLAuthWithNumberedMapCalloutViewController *)self annotationDict];
    v40 = [v39 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v40)
    {
      v41 = *v65;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v65 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = *(*(&v64 + 1) + 8 * i);
          v44 = [v43 objectForKeyedSubscript:@"mapLabelCalloutTitleKey"];
          if ([v44 length])
          {
            [v38 addObject:v43];
          }
        }

        v40 = [v39 countByEnumeratingWithState:&v64 objects:v74 count:16];
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
        v54 = [(CLAuthWithNumberedMapCalloutViewController *)self annotationViews];
        [v54 addObject:v53];

        v55 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
        [v55 addSubview:v53];

        v56 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
        [v56 bringSubviewToFront:v53];

        v57 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
        [v57 bringSubviewToFront:v62];

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

- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a4;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)configureMapSubLabels
{
  v3 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
  if (v3)
  {
  }

  else
  {
    v4 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubMessageString];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(CLAuthWithNumberedMapCalloutViewController *)self setMapSubLabel:v6];

      v7 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

      v8 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [v8 setLineBreakStrategy:1];

      v9 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [v9 setNumberOfLines:0];

      v10 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [v10 setTextAlignment:4];

      v11 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [v11 setAdjustsFontForContentSizeCategory:1];

      v79 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
      v12 = [UIFont fontWithDescriptor:v79 size:0.0];
      v13 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [v13 setFont:v12];

      v14 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubMessageString];
      v15 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [v15 setText:v14];

      v16 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
      v17 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      [v16 addSubview:v17];

      v71 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      v76 = [v71 bottomAnchor];
      v70 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
      v69 = [v70 bottomAnchor];
      v68 = [v76 constraintEqualToAnchor:-8.0 constant:?];
      v89[0] = v68;
      v67 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      v73 = [v67 leadingAnchor];
      v66 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
      v18 = [v66 leadingAnchor];
      v19 = [v73 constraintEqualToAnchor:v18 constant:10.0];
      v89[1] = v19;
      v20 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      v21 = [v20 trailingAnchor];
      v22 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
      v23 = [v22 trailingAnchor];
      v24 = [v21 constraintEqualToAnchor:v23 constant:-10.0];
      v89[2] = v24;
      v25 = [NSArray arrayWithObjects:v89 count:3];
      [NSLayoutConstraint activateConstraints:v25];
    }
  }

  v26 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
  if (v26)
  {
    goto LABEL_8;
  }

  v27 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountLabelString];
  v28 = [v27 length] == 0;

  if (!v28)
  {
    v29 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CLAuthWithNumberedMapCalloutViewController *)self setMapCountSubLabel:v29];

    v30 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [v31 setLineBreakStrategy:1];

    v32 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [v32 setNumberOfLines:0];

    v33 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [v33 setTextAlignment:4];

    v34 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [v34 setAdjustsFontForContentSizeCategory:1];

    v35 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
    v87 = UIFontDescriptorTraitsAttribute;
    v85 = UIFontWeightTrait;
    v36 = [NSNumber numberWithDouble:UIFontWeightSemibold];
    v86 = v36;
    v37 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    v88 = v37;
    v38 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v26 = [v35 fontDescriptorByAddingAttributes:v38];

    v39 = [UIFont fontWithDescriptor:v26 size:0.0];
    v40 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [v40 setFont:v39];

    v41 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountLabelString];
    v42 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [v42 setText:v41];

    v43 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    v44 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [v43 addSubview:v44];

    v77 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    v80 = [v77 leadingAnchor];
    v74 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    v72 = [v74 leadingAnchor];
    v45 = [v80 constraintEqualToAnchor:10.0 constant:?];
    v84[0] = v45;
    v46 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    v47 = [v46 trailingAnchor];
    v48 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
    v49 = [v48 trailingAnchor];
    v50 = [v47 constraintEqualToAnchor:v49 constant:-10.0];
    v84[1] = v50;
    v51 = [NSArray arrayWithObjects:v84 count:2];
    [NSLayoutConstraint activateConstraints:v51];

LABEL_8:
  }

  v52 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
  if (v52)
  {
    v53 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
    v54 = v53 == 0;

    if (!v54)
    {
      v55 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
      v81 = [v55 bottomAnchor];
      v78 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
      v75 = [v78 topAnchor];
      v56 = [v81 constraintEqualToAnchor:-8.0 constant:?];
      v83[0] = v56;
      v57 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
      v58 = [v57 topAnchor];
      v59 = [(CLAuthBaseViewController *)self mapView];
      v60 = [v59 bottomAnchor];
      v61 = [v58 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v60 multiplier:1.0];
      v83[1] = v61;
      v62 = [NSArray arrayWithObjects:v83 count:2];
      [NSLayoutConstraint activateConstraints:v62];

LABEL_15:
      goto LABEL_16;
    }
  }

  v55 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
  if (v55)
  {
LABEL_16:

    goto LABEL_17;
  }

  v63 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
  v64 = v63 == 0;

  if (!v64)
  {
    v55 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
    v81 = [v55 topAnchor];
    v78 = [(CLAuthBaseViewController *)self mapView];
    v75 = [v78 bottomAnchor];
    v56 = [v81 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
    v82 = v56;
    v57 = [NSArray arrayWithObjects:&v82 count:1];
    [NSLayoutConstraint activateConstraints:v57];
    goto LABEL_15;
  }

LABEL_17:
  v65 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
  [v65 layoutIfNeeded];
}

- (void)configureMapView
{
  v11.receiver = self;
  v11.super_class = CLAuthWithNumberedMapCalloutViewController;
  [(CLAuthBaseViewController *)&v11 configureMapViewWithHeightOverride:220.0];
  v3 = [(CLAuthBaseViewController *)self mapView];
  [v3 setHidden:1];

  v4 = [(CLAuthBaseViewController *)self mapView];
  v5 = [v4 mapType];

  if (v5 == 105)
  {
    v6 = [(CLAuthBaseViewController *)self mapView];
    [v6 setMapType:5];
  }

  v7 = [(CLAuthBaseViewController *)self mapView];
  [v7 setUserTrackingMode:0];

  v8 = +[MKPointOfInterestFilter filterExcludingAllCategories];
  v9 = [(CLAuthBaseViewController *)self mapView];
  [v9 setPointOfInterestFilter:v8];

  v10 = [(CLAuthBaseViewController *)self mapView];
  [v10 _setShowsLabels:0];
}

- (void)updateMapLayout
{
  v3 = [(CLAuthBaseViewController *)self mapView];
  [v3 setHidden:0];

  v4 = [(CLAuthBaseViewController *)self mapView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = [(CLAuthBaseViewController *)self mapView];
  v30 = [v31 topAnchor];
  v28 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
  v27 = [v28 topAnchor];
  v26 = [v30 constraintEqualToAnchor:?];
  v32[0] = v26;
  v25 = [(CLAuthBaseViewController *)self mapView];
  v29 = [v25 leadingAnchor];
  v24 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
  v23 = [v24 leadingAnchor];
  v22 = [v29 constraintEqualToAnchor:?];
  v32[1] = v22;
  v21 = [(CLAuthBaseViewController *)self mapView];
  v5 = [v21 trailingAnchor];
  v6 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
  v7 = [v6 trailingAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v32[2] = v8;
  v9 = [(CLAuthBaseViewController *)self mapView];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintEqualToConstant:220.0];
  v32[3] = v11;
  v12 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  v13 = [(CLAuthWithNumberedMapCalloutViewController *)self currentLocation];
  [v13 coordinate];
  v15 = v14;
  v17 = v16;

  v18 = [(CLAuthBaseViewController *)self mapView];
  [v18 setRegion:{v15, v17, 0.0014, 0.0014}];

  [(CLAuthWithNumberedMapCalloutViewController *)self configureCallouts];
  v19 = [(CLAuthBaseViewController *)self mapView];
  [v19 layoutIfNeeded];

  v20 = [(CLAuthWithNumberedMapCalloutViewController *)self updater];
  [v20 pause];
}

- (void)viewWillLayoutSubviews
{
  v33.receiver = self;
  v33.super_class = CLAuthWithNumberedMapCalloutViewController;
  [(CLAuthBaseViewController *)&v33 viewWillLayoutSubviews];
  v3 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];

  if (v3)
  {
    v4 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    [v4 intrinsicContentSize];
    v6 = v5 + 8.0;
  }

  else
  {
    v6 = 0.0;
  }

  if ([(CLAuthWithNumberedMapCalloutViewController *)self showMapView])
  {
    v7 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    v8 = v6 + dbl_10000AFF0[v7 == 0];
  }

  v9 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];

  if (v9)
  {
    v10 = [(CLAuthWithNumberedMapCalloutViewController *)self mapSubLabel];
    [v10 intrinsicContentSize];
    v11 = [(CLAuthWithNumberedMapCalloutViewController *)self mapCountSubLabel];
    if (!v11)
    {
      [(CLAuthWithNumberedMapCalloutViewController *)self showMapView];
    }
  }

  [(CLAuthWithNumberedMapCalloutViewController *)self preferredContentSize];
  [(CLAuthWithNumberedMapCalloutViewController *)self setPreferredContentSize:?];
  v12 = [(CLAuthBaseViewController *)self mapView];
  v13 = [(CLAuthBaseViewController *)self mapView];
  [v13 region];
  v15 = v14;
  v17 = v16;
  v18 = [(CLAuthWithNumberedMapCalloutViewController *)self view];
  [v12 convertCoordinate:v18 toPointToView:{v15, v17}];
  v20 = v19;
  v22 = v21;

  v23 = [(CLAuthWithNumberedMapCalloutViewController *)self blueDotView];
  [v23 setCenter:{v20, v22 + -3.0}];

  v24 = [(CLAuthWithNumberedMapCalloutViewController *)self hudCircleView];
  [v24 setCenter:{v20, v22 + -3.0}];

  v25 = [(CLAuthWithNumberedMapCalloutViewController *)self annotationViews];
  sub_10000560C([v25 count], __p);

  for (i = 0; ; ++i)
  {
    v27 = [(CLAuthWithNumberedMapCalloutViewController *)self annotationViews];
    v28 = [v27 count];

    if (i >= v28)
    {
      break;
    }

    v29 = __sincos_stret(*(__p[0] + i) * -3.14159265 / 180.0);
    v30 = [(CLAuthWithNumberedMapCalloutViewController *)self annotationViews];
    v31 = [v30 objectAtIndexedSubscript:i];
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
  v3 = [objc_opt_class() effectiveBundlePath];
  v4 = [v2 initWithEffectiveBundlePath:v3];

  return v4;
}

@end