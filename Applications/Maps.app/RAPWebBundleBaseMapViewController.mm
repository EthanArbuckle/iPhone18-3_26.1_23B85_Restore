@interface RAPWebBundleBaseMapViewController
- (CLLocationCoordinate2D)startingCoordinateForMapPicker;
- (RAPWebBundleBaseMapViewController)initWithReport:(id)a3;
- (void)_updateMapViewWithUpdateMapPickerViewDictionary:(id)a3;
- (void)didReceiveMessageFromUserContentController:(id)a3 message:(id)a4 replyHandler:(id)a5;
- (void)rapWebBundleMapViewController:(id)a3 marker:(id)a4 didUpdateLocationTo:(CLLocationCoordinate2D)a5;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)viewDidLoad;
@end

@implementation RAPWebBundleBaseMapViewController

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_mapViews allValues:a3];
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

- (void)scrollViewWillBeginDragging:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_mapViews allValues:a3];
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

- (void)rapWebBundleMapViewController:(id)a3 marker:(id)a4 didUpdateLocationTo:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v37 = a3;
  v8 = a4;
  v35 = objc_alloc_init(NSMutableDictionary);
  v39 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = v8;
  obj = [v8 featureHandles];
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

  v22 = [(NSMutableDictionary *)self->_mapViews allKeysForObject:v37];
  v23 = [v22 firstObject];

  if (v23)
  {
    [v35 setObject:v23 forKeyedSubscript:@"id"];
  }

  v24 = [NSNumber numberWithDouble:latitude];
  [v35 setObject:v24 forKeyedSubscript:@"latitude"];

  v25 = [NSNumber numberWithDouble:longitude];
  [v35 setObject:v25 forKeyedSubscript:@"longitude"];

  [v35 setObject:v39 forKeyedSubscript:@"featureHandle"];
  v26 = [v36 name];
  [v35 setObject:v26 forKeyedSubscript:@"featureName"];

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
  v32 = [(RAPWebBundleBaseViewController *)self webView];
  v33 = +[WKContentWorld pageWorld];
  [v32 callAsyncJavaScript:v31 arguments:&__NSDictionary0__struct inFrame:0 inContentWorld:v33 completionHandler:&stru_101627848];
}

- (void)didReceiveMessageFromUserContentController:(id)a3 message:(id)a4 replyHandler:(id)a5
{
  v8 = a4;
  v10.receiver = self;
  v10.super_class = RAPWebBundleBaseMapViewController;
  [(RAPWebBundleBaseViewController *)&v10 didReceiveMessageFromUserContentController:a3 message:v8 replyHandler:a5];
  v9 = [v8 objectForKeyedSubscript:@"name"];
  LODWORD(a3) = [v9 isEqualToString:@"updateMapPickerView"];

  if (a3)
  {
    [(RAPWebBundleBaseMapViewController *)self _updateMapViewWithUpdateMapPickerViewDictionary:v8];
  }
}

- (void)_updateMapViewWithUpdateMapPickerViewDictionary:(id)a3
{
  v86 = a3;
  v4 = [v86 objectForKeyedSubscript:@"start"];
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
    v7 = [v86 objectForKeyedSubscript:@"end"];
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
      v11 = [v86 objectForKeyedSubscript:@"duration"];
      v82 = [v11 integerValue];

      mapViews = self->_mapViews;
      v13 = [(RAPWebBundleMapViewPosition *)v10 mapId];
      v14 = [(NSMutableDictionary *)mapViews objectForKeyedSubscript:v13];

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
        v18 = [(RAPWebBundleMapViewPosition *)v10 mapId];
        v78 = [(NSMutableDictionary *)mapViewConstraints objectForKeyedSubscript:v18];

        [NSLayoutConstraint deactivateConstraints:v78];
        v19 = [(RAPWebBundleMapViewController *)v16 view];
        v20 = [v19 heightAnchor];
        [(RAPWebBundleMapViewPosition *)v10 height];
        v77 = [v20 constraintEqualToConstant:?];

        v21 = [(RAPWebBundleMapViewController *)v16 view];
        v22 = [v21 topAnchor];
        v23 = [(RAPWebBundleBaseViewController *)self webView];
        v24 = [v23 scrollView];
        v25 = [v24 topAnchor];
        [(RAPWebBundleMapViewPosition *)v10 yPosition];
        v80 = [v22 constraintEqualToAnchor:v25 constant:?];

        v26 = [(RAPWebBundleMapViewController *)v16 view];
        v27 = [v26 leadingAnchor];
        v28 = [(RAPWebBundleBaseViewController *)self webView];
        v29 = [v28 safeAreaLayoutGuide];
        v30 = [v29 leadingAnchor];
        [(RAPWebBundleMapViewPosition *)v10 xPosition];
        v31 = [v27 constraintEqualToAnchor:v30 constant:?];

        v32 = v80;
        v33 = [(RAPWebBundleMapViewController *)v16 view];
        v34 = [v33 trailingAnchor];
        v35 = [(RAPWebBundleBaseViewController *)self webView];
        v36 = [v35 safeAreaLayoutGuide];
        v37 = [v36 trailingAnchor];
        [(RAPWebBundleMapViewPosition *)v10 xPosition];
        v39 = [v34 constraintEqualToAnchor:v37 constant:-v38];

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
        v45 = [(RAPWebBundleMapViewController *)v14 view];
        [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

        [(RAPWebBundleMapViewController *)v14 setDelegate:self];
        v46 = self->_mapViews;
        v47 = [(RAPWebBundleMapViewPosition *)v10 mapId];
        [(NSMutableDictionary *)v46 setObject:v14 forKeyedSubscript:v47];

        [(RAPWebBundleBaseMapViewController *)self addChildViewController:v14];
        v48 = [(RAPWebBundleBaseViewController *)self webView];
        v49 = [v48 scrollView];
        v50 = [(RAPWebBundleMapViewController *)v14 view];
        [v49 addSubview:v50];

        [(RAPWebBundleMapViewController *)v14 didMoveToParentViewController:self];
        v51 = [(RAPWebBundleMapViewController *)v14 view];
        v52 = [v51 heightAnchor];
        [(RAPWebBundleMapViewPosition *)v10 height];
        v53 = [v52 constraintEqualToConstant:?];

        v54 = [(RAPWebBundleMapViewController *)v14 view];
        v55 = [v54 topAnchor];
        v56 = [(RAPWebBundleBaseViewController *)self webView];
        v57 = [v56 scrollView];
        v58 = [v57 topAnchor];
        [(RAPWebBundleMapViewPosition *)v10 yPosition];
        v81 = [v55 constraintEqualToAnchor:v58 constant:?];

        v40 = v53;
        v59 = [(RAPWebBundleMapViewController *)v14 view];
        v60 = [v59 leadingAnchor];
        v61 = [(RAPWebBundleBaseViewController *)self webView];
        v62 = [v61 leadingAnchor];
        v31 = [v60 constraintEqualToAnchor:v62];

        v63 = [(RAPWebBundleMapViewController *)v14 view];
        v64 = [v63 trailingAnchor];
        v65 = [(RAPWebBundleBaseViewController *)self webView];
        v66 = [v65 trailingAnchor];
        v39 = [v64 constraintEqualToAnchor:v66];

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
      v68 = [(RAPWebBundleMapViewPosition *)v10 mapId];
      [(NSMutableDictionary *)v67 setObject:v41 forKeyedSubscript:v68];

      [(RAPWebBundleMapViewPosition *)v10 opacity];
      v70 = v69;
      v71 = [(RAPWebBundleMapViewController *)v14 view];
      [v71 setAlpha:v70];

      v72 = [(RAPWebBundleMapViewController *)v14 view];
      [v72 layoutIfNeeded];

      [(RAPWebBundleMapViewPosition *)v83 height];
      [v40 setConstant:?];
      [(RAPWebBundleMapViewPosition *)v83 yPosition];
      [v32 setConstant:?];
      [(RAPWebBundleMapViewPosition *)v83 xPosition];
      [v31 setConstant:?];
      [(RAPWebBundleMapViewPosition *)v83 xPosition];
      [v39 setConstant:-v73];
      v74 = [(RAPWebBundleMapViewController *)v14 view];
      [v74 layoutIfNeeded];

      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_1007212D0;
      v87[3] = &unk_101661A90;
      v88 = v14;
      v89 = v83;
      v75 = v83;
      v76 = v14;
      [UIView animateWithDuration:v87 animations:(v82 / 1000)];
      [(RAPWebBundleMapViewController *)v76 setMapViewEnabled:1];

      v9 = v84;
      v6 = v85;
    }
  }
}

- (CLLocationCoordinate2D)startingCoordinateForMapPicker
{
  v3 = [(RAPReport *)self->_report initialQuestion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 reportedPlace];
    v7 = [v6 mapItem];

    if (v7)
    {
      v8 = [v5 reportedPlace];
      v9 = [v8 mapItem];
      v10 = [v9 location];
      [v10 coordinate];
      latitude = v11;
      longitude = v13;
    }

    else
    {
      v8 = [(RAPReport *)self->_report _context];
      v9 = [v8 mapCamera];
      [v9 centerCoordinate];
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

- (RAPWebBundleBaseMapViewController)initWithReport:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RAPWebBundleBaseMapViewController;
  v6 = [(RAPWebBundleBaseViewController *)&v9 initWithReport:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_report, a3);
  }

  return v7;
}

@end