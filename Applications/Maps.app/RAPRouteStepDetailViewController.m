@interface RAPRouteStepDetailViewController
- (CLLocationCoordinate2D)startingCoordinateForMapPicker;
- (RAPRouteStepDetailViewController)initWithReport:(id)a3 step:(id)a4 userPath:(id)a5 routeIndex:(unint64_t)a6 delegate:(id)a7;
- (id)context;
- (void)_dismiss;
- (void)_saveManeuverIconWithCompletion:(id)a3;
- (void)_saveMapImageWithCompletion:(id)a3;
- (void)_submit;
- (void)_submitPressed:(id)a3;
- (void)_takeSnapshots;
- (void)_updateAggregatedDataWithCompletion:(id)a3;
- (void)_uploadForm:(id)a3;
- (void)didReceiveMessageFromUserContentController:(id)a3 message:(id)a4 replyHandler:(id)a5;
- (void)setupViews;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation RAPRouteStepDetailViewController

- (void)didReceiveMessageFromUserContentController:(id)a3 message:(id)a4 replyHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = sub_100798874();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "didReceiveMessageFromUserContentController:message:replyHandler called with message: %@", buf, 0xCu);
  }

  v21.receiver = self;
  v21.super_class = RAPRouteStepDetailViewController;
  [(RAPWebBundleBaseMapViewController *)&v21 didReceiveMessageFromUserContentController:v10 message:v8 replyHandler:v9];

  v12 = [v8 objectForKeyedSubscript:@"name"];
  v13 = [v12 isEqualToString:@"context"];

  if (v13)
  {
    v14 = [v8 objectForKeyedSubscript:@"supportedLocales"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = +[NSArray array];

      v14 = v15;
    }

    locales = self->_locales;
    self->_locales = v14;

    v17 = [(RAPRouteStepDetailViewController *)self context];
    v18 = [v17 context];
    v9[2](v9, v18, 0);
  }

  else
  {
    v19 = [v8 objectForKeyedSubscript:@"name"];
    v20 = [v19 isEqualToString:@"setValid"];

    if (v20)
    {
      [(RAPRouteStepDetailViewController *)self _updateAggregatedDataWithCompletion:0];
    }
  }
}

- (CLLocationCoordinate2D)startingCoordinateForMapPicker
{
  [(GEOComposedRouteStep *)self->_step endGeoCoordinate];
  v4 = v3;
  [(GEOComposedRouteStep *)self->_step endGeoCoordinate];

  v8 = CLLocationCoordinate2DMake(v4, v5);
  longitude = v8.longitude;
  latitude = v8.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_uploadForm:(id)a3
{
  v4 = a3;
  v5 = [(RAPReport *)self->_report initialQuestion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 setDynamicForm:v4];
    [v7 setReportedUserPath:self->_userPath];
    if (self->_mapSnapshot)
    {
      v8 = [RAPPhoto alloc];
      mapSnapshot = self->_mapSnapshot;
      v10 = +[NSDate date];
      v11 = [(RAPPhoto *)v8 initWithPhoto:mapSnapshot date:v10 location:0];

      v12 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:v11 photoType:3];
      [(RAPReport *)self->_report addPhotoWithMetadata:v12];
    }

    else
    {
      v14 = sub_100798874();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Couldn't append photo because the snapshot was nil.", buf, 2u);
      }
    }

    v15 = sub_100BD9980();
    objc_initWeak(buf, self);
    report = self->_report;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1006285DC;
    v21[3] = &unk_10162F4D0;
    objc_copyWeak(&v23, buf);
    v17 = v15;
    v22 = v17;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1006286C8;
    v18[3] = &unk_101657410;
    objc_copyWeak(&v20, buf);
    v13 = v17;
    v19 = v13;
    [(RAPReport *)report submitWithPrivacyRequestHandler:&stru_101624440 willStartSubmitting:v21 didFinishSubmitting:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = sub_100798874();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v25 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Failed to upload form, question was of unsupported type: %@", buf, 0xCu);
    }
  }
}

- (void)_submit
{
  v3 = sub_100798874();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    aggregatedData = self->_aggregatedData;
    v7 = 138412290;
    v8 = aggregatedData;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "_submit: will try to submit RAP with aggregatedData: %@", &v7, 0xCu);
  }

  v5 = [[NSData alloc] initWithBase64EncodedString:self->_aggregatedData options:0];
  v6 = [[GEORPFeedbackDynamicForm alloc] initWithData:v5];
  [(RAPRouteStepDetailViewController *)self _uploadForm:v6];
}

- (void)_dismiss
{
  v3 = sub_100798874();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_cancelPressed, will pop to previous VC", v6, 2u);
  }

  v4 = [(RAPRouteStepDetailViewController *)self navigationController];
  v5 = [v4 popViewControllerAnimated:1];

  [RAPAnalyticsManager captureRAPCancelActionFromReport:self->_report forMuid:0];
}

- (void)_updateAggregatedDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100798874();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_updateAggregatedDataWithCompletion will fetch latest aggregatedData.", buf, 2u);
  }

  v6 = [(RAPWebBundleBaseViewController *)self webView];
  v7 = +[WKContentWorld pageWorld];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100628CF8;
  v9[3] = &unk_101624420;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v6 callAsyncJavaScript:@"return rapGetData()" arguments:0 inFrame:0 inContentWorld:v7 completionHandler:v9];
}

- (void)_submitPressed:(id)a3
{
  v4 = a3;
  v5 = sub_100798874();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "User pressed submit, will dismiss viewController", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100628FC8;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, buf);
  [(RAPRouteStepDetailViewController *)self _updateAggregatedDataWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_saveMapImageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MKMapSnapshotOptions);
  v6 = [(RAPRouteStepDetailViewController *)self view];
  [v6 frame];
  v8 = v7 + -32.0;

  v69 = v8 * 0.453999996;
  v70 = v8;
  [v5 setSize:v8];
  [v5 setMapType:0];
  v9 = [(GEOComposedRouteStep *)self->_step composedRoute];
  [v5 _setComposedRouteForRouteLine:v9];

  if ([(GEOComposedRouteStep *)self->_step isArrivalStep])
  {
    v10 = [(GEOComposedRouteStep *)self->_step composedRoute];
    v11 = [v10 legIndexForStepIndex:{-[GEOComposedRouteStep stepIndex](self->_step, "stepIndex")}];

    v12 = [(GEOComposedRouteStep *)self->_step composedRoute];
    v13 = [v12 legs];
    v14 = [v13 count];

    if (v11 < v14)
    {
      [(GEOComposedRouteStep *)self->_step endGeoCoordinate];
      v16 = v15;
      [(GEOComposedRouteStep *)self->_step endGeoCoordinate];
      v18 = v17;
      v19 = [[VKCustomFeature alloc] initWithCoordinate:{v16, v17}];
      v20 = [(GEOComposedRouteStep *)self->_step composedRoute];
      v21 = [v20 legs];
      v22 = [v21 objectAtIndexedSubscript:v11];
      v23 = [v22 destination];

      v24 = [v23 styleAttributes];
      if (([v24 hasAttributes] & 1) == 0)
      {
        v25 = +[GEOFeatureStyleAttributes markerStyleAttributes];

        v24 = v25;
      }

      v26 = [v24 copy];

      *buf = xmmword_101212BE0;
      [v26 replaceAttributes:buf count:2];
      [v19 setStyleAttributes:v26];
      v27 = [[MKMapSnapshotCustomFeatureAnnotation alloc] initWithCustomFeature:v19 coordinate:{v16, v18}];
      v74 = v27;
      v28 = [NSArray arrayWithObjects:&v74 count:1];
      [v5 _setCustomFeatureAnnotations:v28];
    }
  }

  step = self->_step;
  if (step)
  {
    v30 = step;
    v31 = [(GEOComposedRouteStep *)v30 composedRoute];
    [v31 pointAtRouteCoordinate:{-[GEOComposedRouteStep maneuverStartRouteCoordinate](v30, "maneuverStartRouteCoordinate")}];
    v68 = v32;
    v34 = v33;
    v36 = v35;

    v37 = [(GEOComposedRouteStep *)v30 composedRoute];
    v38 = [(GEOComposedRouteStep *)v30 endRouteCoordinate];

    [v37 pointAtRouteCoordinate:v38];
    v67 = v39;
    v41 = v40;
    v43 = v42;

    v44 = CLLocationCoordinate2DMake(v34, v36);
    v45 = CLLocationCoordinate2DMake(v41, v43);
    *buf = MKMapPointForCoordinate(v44);
    v76 = MKMapPointForCoordinate(v45);
    MKMapRectBoundingMapPoints();
    x = v46;
    y = v48;
    width = v50;
    height = v52;
    GEOCalculateDistance();
    if (sqrt((v68 - v67) * (v68 - v67) + v54 * v54) < 150.0)
    {
      v77.x = x + width * 0.5;
      v77.y = y + height * 0.5;
      MKCoordinateForMapPoint(v77);
      MKMapRectMakeWithRadialDistance();
      x = v55;
      y = v56;
      width = v57;
      height = v58;
    }
  }

  else
  {
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
  }

  v59 = [MKMapCamera _cameraLookingAtMapRect:x forViewSize:y, width, height, v70, v69, *&v67];
  [v59 centerCoordinateDistance];
  [v59 setCenterCoordinateDistance:v60 * 1.2];
  [v5 setCamera:v59];
  [v5 _setSearchResultsType:1];
  v61 = [[MKMapSnapshotter alloc] initWithOptions:v5];
  mapSnapshotter = self->_mapSnapshotter;
  self->_mapSnapshotter = v61;

  v63 = [(GEOComposedRouteStep *)self->_step stepIndex];
  v64 = sub_100798874();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v63;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "Will create a snapshot of step with stepInde: %lu", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v65 = self->_mapSnapshotter;
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1006295E4;
  v71[3] = &unk_1016243F8;
  objc_copyWeak(v73, buf);
  v73[1] = v63;
  v66 = v4;
  v72 = v66;
  [(MKMapSnapshotter *)v65 startWithCompletionHandler:v71];

  objc_destroyWeak(v73);
  objc_destroyWeak(buf);
}

- (void)_saveManeuverIconWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(33, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100629860;
  block[3] = &unk_101660648;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_takeSnapshots
{
  v3 = sub_100798874();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Started capturing snapshots.", buf, 2u);
  }

  v4 = dispatch_group_create();
  objc_initWeak(buf, self);
  dispatch_group_enter(v4);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10062A138;
  v11[3] = &unk_101661B18;
  v5 = v4;
  v12 = v5;
  [(RAPRouteStepDetailViewController *)self _saveManeuverIconWithCompletion:v11];
  dispatch_group_enter(v5);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10062A1AC;
  v9[3] = &unk_101661B18;
  v6 = v5;
  v10 = v6;
  [(RAPRouteStepDetailViewController *)self _saveMapImageWithCompletion:v9];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062A220;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v8, buf);
  dispatch_group_notify(v6, &_dispatch_main_q, block);
  objc_destroyWeak(&v8);

  objc_destroyWeak(buf);
}

- (id)context
{
  context = self->_context;
  if (!context)
  {
    if (!self->_mapSnapshotId)
    {
      v4 = sub_100798874();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Map snapshot should be ready by now.", v8, 2u);
      }
    }

    v5 = [[RAPWebBundleRouteStepContext alloc] initWithRouteStep:self->_step isMissedStep:self->_isMissedStep aggregatedData:self->_aggregatedData locales:self->_locales mapSnapshotId:self->_mapSnapshotId routeIndex:self->_routeIndex];
    v6 = self->_context;
    self->_context = v5;

    context = self->_context;
  }

  return context;
}

- (void)setupViews
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_submitPressed:"];
  v4 = [(RAPRouteStepDetailViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelPressed:"];
  v6 = [(RAPRouteStepDetailViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[RAP Web UI] Report an Issue" value:@"localized string not found" table:0];
  v9 = [(RAPRouteStepDetailViewController *)self navigationItem];
  [v9 setTitle:v8];

  v10.receiver = self;
  v10.super_class = RAPRouteStepDetailViewController;
  [(RAPWebBundleBaseViewController *)&v10 setupViews];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RAPRouteStepDetailViewController;
  [(RAPRouteStepDetailViewController *)&v4 viewDidDisappear:a3];
  if ([(RAPRouteStepDetailViewController *)self isMovingFromParentViewController])
  {
    [(RAPRouteStepDetailViewController *)self _updateAggregatedDataWithCompletion:0];
    [GEOAPPortal captureUserAction:10111 target:31 value:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RAPRouteStepDetailViewController;
  [(RAPRouteStepDetailViewController *)&v4 viewDidAppear:a3];
  [RAPAnalyticsManager captureRAPRevealActionFromReport:self->_report forMuid:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RAPRouteStepDetailViewController;
  [(RAPWebBundleBaseMapViewController *)&v3 viewDidLoad];
  [(RAPRouteStepDetailViewController *)self _takeSnapshots];
}

- (RAPRouteStepDetailViewController)initWithReport:(id)a3 step:(id)a4 userPath:(id)a5 routeIndex:(unint64_t)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = RAPRouteStepDetailViewController;
  v17 = [(RAPWebBundleBaseMapViewController *)&v20 initWithReport:v13];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_report, a3);
    objc_storeStrong(&v18->_step, a4);
    objc_storeStrong(&v18->_userPath, a5);
    v18->_isMissedStep = [v15 traversal] == 2;
    v18->_routeIndex = a6;
    objc_storeWeak(&v18->_delegate, v16);
  }

  return v18;
}

@end