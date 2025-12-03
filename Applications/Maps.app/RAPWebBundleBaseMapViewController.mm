@interface RAPWebBundleBaseMapViewController
- (CLLocationCoordinate2D)startingCoordinateForMapPicker;
- (RAPWebBundleBaseMapViewController)initWithReport:(id)report;
- (void)_updateMapViewWithUpdateMapPickerViewDictionary:(id)dictionary;
- (void)didReceiveMessageFromUserContentController:(id)controller message:(id)message replyHandler:(id)handler;
- (void)rapWebBundleMapViewController:(id)controller marker:(id)marker didUpdateLocationTo:(CLLocationCoordinate2D)to;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)viewDidLoad;
@end

@implementation RAPWebBundleBaseMapViewController

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_mapViews allValues:dragging];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setMapViewEnabled:1];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_mapViews allValues:dragging];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setMapViewEnabled:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)rapWebBundleMapViewController:(id)controller marker:(id)marker didUpdateLocationTo:(CLLocationCoordinate2D)to
{
  longitude = to.longitude;
  latitude = to.latitude;
  controllerCopy = controller;
  markerCopy = marker;
  v35 = objc_alloc_init(NSMutableDictionary);
  v39 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = markerCopy;
  obj = [markerCopy featureHandles];
  v9 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = objc_alloc_init(NSMutableDictionary);
        v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 featureIndex]);
        [v14 setObject:v15 forKeyedSubscript:@"featureIndex"];

        v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 tileX]);
        [v14 setObject:v16 forKeyedSubscript:@"featureTileX"];

        v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 tileY]);
        [v14 setObject:v17 forKeyedSubscript:@"featureTileY"];

        v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 tileZ]);
        [v14 setObject:v18 forKeyedSubscript:@"featureTileZ"];

        v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 tileStyle]);
        [v14 setObject:v19 forKeyedSubscript:@"style"];

        v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 featureType]);
        [v14 setObject:v20 forKeyedSubscript:@"type"];

        v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 tileVersion]);
        [v14 setObject:v21 forKeyedSubscript:@"identifier"];

        [v39 addObject:v14];
      }

      v10 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v10);
  }

  v22 = [(NSMutableDictionary *)self->_mapViews allKeysForObject:controllerCopy];
  firstObject = [v22 firstObject];

  if (firstObject)
  {
    [v35 setObject:firstObject forKeyedSubscript:@"id"];
  }

  v24 = [NSNumber numberWithDouble:latitude];
  [v35 setObject:v24 forKeyedSubscript:@"latitude"];

  v25 = [NSNumber numberWithDouble:longitude];
  [v35 setObject:v25 forKeyedSubscript:@"longitude"];

  [v35 setObject:v39 forKeyedSubscript:@"featureHandle"];
  name = [v36 name];
  [v35 setObject:name forKeyedSubscript:@"featureName"];

  v40 = 0;
  v27 = [NSJSONSerialization dataWithJSONObject:v35 options:0 error:&v40];
  v28 = v40;
  if (![v27 length] || v28)
  {
    v29 = sub_100038318();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v46 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Error serializing json into string: %@", buf, 0xCu);
    }
  }

  v30 = [[NSString alloc] initWithData:v27 encoding:4];
  v31 = [NSString stringWithFormat:@"return rapSetMapPickerValue(%@)", v30];
  webView = [(RAPWebBundleBaseViewController *)self webView];
  v33 = +[WKContentWorld pageWorld];
  [webView callAsyncJavaScript:v31 arguments:&__NSDictionary0__struct inFrame:0 inContentWorld:v33 completionHandler:&stru_101627848];
}

- (void)didReceiveMessageFromUserContentController:(id)controller message:(id)message replyHandler:(id)handler
{
  messageCopy = message;
  v10.receiver = self;
  v10.super_class = RAPWebBundleBaseMapViewController;
  [(RAPWebBundleBaseViewController *)&v10 didReceiveMessageFromUserContentController:controller message:messageCopy replyHandler:handler];
  v9 = [messageCopy objectForKeyedSubscript:@"name"];
  LODWORD(controller) = [v9 isEqualToString:@"updateMapPickerView"];

  if (controller)
  {
    [(RAPWebBundleBaseMapViewController *)self _updateMapViewWithUpdateMapPickerViewDictionary:messageCopy];
  }
}

- (void)_updateMapViewWithUpdateMapPickerViewDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"start"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"end"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v85 = v6;
      v10 = [[RAPWebBundleMapViewPosition alloc] initWithDictionary:v6];
      v84 = v9;
      v83 = [[RAPWebBundleMapViewPosition alloc] initWithDictionary:v9];
      v11 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
      integerValue = [v11 integerValue];

      mapViews = self->_mapViews;
      mapId = [(RAPWebBundleMapViewPosition *)v10 mapId];
      v14 = [(NSMutableDictionary *)mapViews objectForKeyedSubscript:mapId];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16)
      {
        p_mapViewConstraints = &self->_mapViewConstraints;
        mapViewConstraints = self->_mapViewConstraints;
        mapId2 = [(RAPWebBundleMapViewPosition *)v10 mapId];
        v78 = [(NSMutableDictionary *)mapViewConstraints objectForKeyedSubscript:mapId2];

        [NSLayoutConstraint deactivateConstraints:v78];
        view = [(RAPWebBundleMapViewController *)v16 view];
        heightAnchor = [view heightAnchor];
        [(RAPWebBundleMapViewPosition *)v10 height];
        v77 = [heightAnchor constraintEqualToConstant:?];

        view2 = [(RAPWebBundleMapViewController *)v16 view];
        topAnchor = [view2 topAnchor];
        webView = [(RAPWebBundleBaseViewController *)self webView];
        scrollView = [webView scrollView];
        topAnchor2 = [scrollView topAnchor];
        [(RAPWebBundleMapViewPosition *)v10 yPosition];
        v80 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];

        view3 = [(RAPWebBundleMapViewController *)v16 view];
        leadingAnchor = [view3 leadingAnchor];
        webView2 = [(RAPWebBundleBaseViewController *)self webView];
        safeAreaLayoutGuide = [webView2 safeAreaLayoutGuide];
        leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
        [(RAPWebBundleMapViewPosition *)v10 xPosition];
        v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];

        v32 = v80;
        view4 = [(RAPWebBundleMapViewController *)v16 view];
        trailingAnchor = [view4 trailingAnchor];
        webView3 = [(RAPWebBundleBaseViewController *)self webView];
        safeAreaLayoutGuide2 = [webView3 safeAreaLayoutGuide];
        trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
        [(RAPWebBundleMapViewPosition *)v10 xPosition];
        v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v38];

        v40 = v77;
        v90[0] = v77;
        v90[1] = v80;
        v90[2] = v31;
        v90[3] = v39;
        v41 = [NSArray arrayWithObjects:v90 count:4];

        [NSLayoutConstraint activateConstraints:v41];
        v42 = p_mapViewConstraints;
      }

      else
      {
        [(RAPWebBundleBaseMapViewController *)self startingCoordinateForMapPicker];
        v14 = [[RAPWebBundleMapViewController alloc] initWithReport:self->_report coordinate:v43, v44];
        view5 = [(RAPWebBundleMapViewController *)v14 view];
        [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

        [(RAPWebBundleMapViewController *)v14 setDelegate:self];
        v46 = self->_mapViews;
        mapId3 = [(RAPWebBundleMapViewPosition *)v10 mapId];
        [(NSMutableDictionary *)v46 setObject:v14 forKeyedSubscript:mapId3];

        [(RAPWebBundleBaseMapViewController *)self addChildViewController:v14];
        webView4 = [(RAPWebBundleBaseViewController *)self webView];
        scrollView2 = [webView4 scrollView];
        view6 = [(RAPWebBundleMapViewController *)v14 view];
        [scrollView2 addSubview:view6];

        [(RAPWebBundleMapViewController *)v14 didMoveToParentViewController:self];
        view7 = [(RAPWebBundleMapViewController *)v14 view];
        heightAnchor2 = [view7 heightAnchor];
        [(RAPWebBundleMapViewPosition *)v10 height];
        v53 = [heightAnchor2 constraintEqualToConstant:?];

        view8 = [(RAPWebBundleMapViewController *)v14 view];
        topAnchor3 = [view8 topAnchor];
        webView5 = [(RAPWebBundleBaseViewController *)self webView];
        scrollView3 = [webView5 scrollView];
        topAnchor4 = [scrollView3 topAnchor];
        [(RAPWebBundleMapViewPosition *)v10 yPosition];
        v81 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];

        v40 = v53;
        view9 = [(RAPWebBundleMapViewController *)v14 view];
        leadingAnchor3 = [view9 leadingAnchor];
        webView6 = [(RAPWebBundleBaseViewController *)self webView];
        leadingAnchor4 = [webView6 leadingAnchor];
        v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

        view10 = [(RAPWebBundleMapViewController *)v14 view];
        trailingAnchor3 = [view10 trailingAnchor];
        webView7 = [(RAPWebBundleBaseViewController *)self webView];
        trailingAnchor4 = [webView7 trailingAnchor];
        v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

        v32 = v81;
        v91[0] = v40;
        v91[1] = v81;
        v91[2] = v31;
        v91[3] = v39;
        v41 = [NSArray arrayWithObjects:v91 count:4];
        [NSLayoutConstraint activateConstraints:v41];
        v42 = &self->_mapViewConstraints;
      }

      v67 = *v42;
      mapId4 = [(RAPWebBundleMapViewPosition *)v10 mapId];
      [(NSMutableDictionary *)v67 setObject:v41 forKeyedSubscript:mapId4];

      [(RAPWebBundleMapViewPosition *)v10 opacity];
      v70 = v69;
      view11 = [(RAPWebBundleMapViewController *)v14 view];
      [view11 setAlpha:v70];

      view12 = [(RAPWebBundleMapViewController *)v14 view];
      [view12 layoutIfNeeded];

      [(RAPWebBundleMapViewPosition *)v83 height];
      [v40 setConstant:?];
      [(RAPWebBundleMapViewPosition *)v83 yPosition];
      [v32 setConstant:?];
      [(RAPWebBundleMapViewPosition *)v83 xPosition];
      [v31 setConstant:?];
      [(RAPWebBundleMapViewPosition *)v83 xPosition];
      [v39 setConstant:-v73];
      view13 = [(RAPWebBundleMapViewController *)v14 view];
      [view13 layoutIfNeeded];

      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_1007212D0;
      v87[3] = &unk_101661A90;
      v88 = v14;
      v89 = v83;
      v75 = v83;
      v76 = v14;
      [UIView animateWithDuration:v87 animations:(integerValue / 1000)];
      [(RAPWebBundleMapViewController *)v76 setMapViewEnabled:1];

      v9 = v84;
      v6 = v85;
    }
  }
}

- (CLLocationCoordinate2D)startingCoordinateForMapPicker
{
  initialQuestion = [(RAPReport *)self->_report initialQuestion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = initialQuestion;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    reportedPlace = [v5 reportedPlace];
    mapItem = [reportedPlace mapItem];

    if (mapItem)
    {
      reportedPlace2 = [v5 reportedPlace];
      mapItem2 = [reportedPlace2 mapItem];
      location = [mapItem2 location];
      [location coordinate];
      latitude = v11;
      longitude = v13;
    }

    else
    {
      reportedPlace2 = [(RAPReport *)self->_report _context];
      mapItem2 = [reportedPlace2 mapCamera];
      [mapItem2 centerCoordinate];
      latitude = v15;
      longitude = v16;
    }
  }

  else
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  v17 = latitude;
  v18 = longitude;
  result.longitude = v18;
  result.latitude = v17;
  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = RAPWebBundleBaseMapViewController;
  [(RAPWebBundleBaseViewController *)&v7 viewDidLoad];
  v3 = objc_alloc_init(NSMutableDictionary);
  mapViews = self->_mapViews;
  self->_mapViews = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  mapViewConstraints = self->_mapViewConstraints;
  self->_mapViewConstraints = v5;
}

- (RAPWebBundleBaseMapViewController)initWithReport:(id)report
{
  reportCopy = report;
  v9.receiver = self;
  v9.super_class = RAPWebBundleBaseMapViewController;
  v6 = [(RAPWebBundleBaseViewController *)&v9 initWithReport:reportCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_report, report);
  }

  return v7;
}

@end