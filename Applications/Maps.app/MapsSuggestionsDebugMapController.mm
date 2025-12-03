@interface MapsSuggestionsDebugMapController
- (id)_currentlySelectedAnnotation;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_setupMapView;
- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)viewDidLoad;
@end

@implementation MapsSuggestionsDebugMapController

- (id)_currentlySelectedAnnotation
{
  selectedAnnotations = [(MKMapView *)self->_mapView selectedAnnotations];
  v4 = [selectedAnnotations count];

  if (v4)
  {
    selectedAnnotations2 = [(MKMapView *)self->_mapView selectedAnnotations];
    firstObject = [selectedAnnotations2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MapsSuggestionsDebugMapController *)self _currentlySelectedAnnotation:view];
  v5 = v4;
  if (v4)
  {
    entriesDictionaries = [v4 entriesDictionaries];
    v7 = [entriesDictionaries count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  _currentlySelectedAnnotation = [(MapsSuggestionsDebugMapController *)self _currentlySelectedAnnotation];
  v9 = _currentlySelectedAnnotation;
  if (_currentlySelectedAnnotation)
  {
    entriesDictionaries = [_currentlySelectedAnnotation entriesDictionaries];
    v11 = [entriesDictionaries objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    v12 = [v11 objectForKey:@"title"];
    v13 = [v11 objectForKey:@"type"];
    v14 = [viewCopy dequeueReusableCellWithIdentifier:@"entryCell"];
    if (!v14)
    {
      v14 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"entryCell"];
    }

    textLabel = [v14 textLabel];
    [textLabel setText:v12];

    detailTextLabel = [v14 detailTextLabel];
    [detailTextLabel setText:v13];
  }

  else
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v19 = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDebugMapController.m";
      v21 = 1024;
      v22 = 136;
      v23 = 2082;
      v24 = "[MapsSuggestionsDebugMapController tableView:cellForRowAtIndexPath:]";
      v25 = 2082;
      v26 = "nil == (selectedAnnotation)";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. selectedAnnotation cannot be nil, something must have changed in numberOfRowsInSection", &v19, 0x26u);
    }

    v14 = objc_alloc_init(UITableViewCell);
  }

  return v14;
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  if ([annotationViewCopy isSelected])
  {
    [annotationViewCopy hideCalloutView];
  }

  else
  {
    [annotationViewCopy showCalloutView];
  }

  [annotationViewCopy setCalloutTableViewDataSource:self];
  [annotationViewCopy setCalloutTableViewDelegate:self];
  [annotationViewCopy reloadCalloutTableView];
  layer = [annotationViewCopy layer];
  [layer setZPosition:9.22337204e18];
}

- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  if ([annotationViewCopy isSelected])
  {
    [annotationViewCopy hideCalloutView];
  }

  else
  {
    [annotationViewCopy showCalloutView];
  }
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  overlayCopy = overlay;
  if (overlayCopy)
  {
    v6 = [[MKPolylineRenderer alloc] initWithOverlay:overlayCopy];
    v7 = -[NSArray objectAtIndexedSubscript:](self->_possibleOverlayColors, "objectAtIndexedSubscript:", [overlayCopy index] % -[NSArray count](self->_possibleOverlayColors, "count"));
    [v6 setStrokeColor:v7];
    [v6 setLineWidth:3.0];
  }

  else
  {
    v6 = objc_alloc_init(MKOverlayRenderer);
  }

  return v6;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v6 = [view dequeueReusableAnnotationViewWithIdentifier:@"entryCell"];
  if (!v6)
  {
    v6 = [[MapsSuggestionsDGVAnnotationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:@"entryCell"];
    [(MapsSuggestionsDGVAnnotationView *)v6 setCanShowCallout:1];
  }

  LODWORD(v7) = 1148846080;
  [(MapsSuggestionsDGVAnnotationView *)v6 setDisplayPriority:v7];

  return v6;
}

- (void)_setupMapView
{
  view = [(MapsSuggestionsDebugMapController *)self view];
  [view addSubview:self->_mapView];

  [(MKMapView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(MKMapView *)self->_mapView topAnchor];
  view2 = [(MapsSuggestionsDebugMapController *)self view];
  topAnchor2 = [view2 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v7 setActive:1];

  bottomAnchor = [(MKMapView *)self->_mapView bottomAnchor];
  view3 = [(MapsSuggestionsDebugMapController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v11 setActive:1];

  leftAnchor = [(MKMapView *)self->_mapView leftAnchor];
  view4 = [(MapsSuggestionsDebugMapController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v15 setActive:1];

  rightAnchor = [(MKMapView *)self->_mapView rightAnchor];
  view5 = [(MapsSuggestionsDebugMapController *)self view];
  rightAnchor2 = [view5 rightAnchor];
  v18 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v18 setActive:1];
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = MapsSuggestionsDebugMapController;
  [(MapsSuggestionsDebugMapController *)&v31 viewDidLoad];
  v3 = [NSArray alloc];
  v4 = +[UIColor blueColor];
  v5 = +[UIColor greenColor];
  v6 = +[UIColor cyanColor];
  v7 = +[UIColor orangeColor];
  v8 = +[UIColor purpleColor];
  v9 = [v3 initWithObjects:{v4, v5, v6, v7, v8, 0}];
  possibleOverlayColors = self->_possibleOverlayColors;
  self->_possibleOverlayColors = v9;

  v11 = [NSString alloc];
  v12 = MapsSuggestionsDefaultCacheDirectory();
  v13 = [v12 stringByAppendingPathComponent:@"destinationGraph.txt"];

  v30 = 0;
  v14 = [v11 initWithContentsOfFile:v13 usedEncoding:0 error:&v30];
  v15 = v30;

  if (![v14 length])
  {
    annotations2 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(annotations2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v26 = MapsSuggestionsDefaultCacheDirectory();
    v27 = [v26 stringByAppendingPathComponent:@"destinationGraph.txt"];

    *buf = 138412290;
    v33 = v27;
    v28 = "Could not read %@";
LABEL_8:
    _os_log_impl(&_mh_execute_header, annotations2, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);

    goto LABEL_9;
  }

  v16 = [[MapsSuggestionsDGVDataSource alloc] initWithJSONString:v14];
  dataSource = self->_dataSource;
  self->_dataSource = v16;

  if (!self->_dataSource)
  {
    annotations2 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(annotations2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v29 = MapsSuggestionsDefaultCacheDirectory();
    v27 = [v29 stringByAppendingPathComponent:@"destinationGraph.txt"];

    *buf = 138412290;
    v33 = v27;
    v28 = "Could not parse %@";
    goto LABEL_8;
  }

  v18 = objc_alloc_init(MKMapView);
  mapView = self->_mapView;
  self->_mapView = v18;

  [(MapsSuggestionsDebugMapController *)self _setupMapView];
  [(MKMapView *)self->_mapView setDelegate:self];
  v20 = self->_mapView;
  annotations = [(MapsSuggestionsDGVDataSource *)self->_dataSource annotations];
  [(MKMapView *)v20 addAnnotations:annotations];

  v22 = self->_mapView;
  linkOverlays = [(MapsSuggestionsDGVDataSource *)self->_dataSource linkOverlays];
  [(MKMapView *)v22 addOverlays:linkOverlays];

  v24 = self->_mapView;
  annotations2 = [(MKMapView *)v24 annotations];
  [(MKMapView *)v24 showAnnotations:annotations2 animated:1];
LABEL_9:
}

@end