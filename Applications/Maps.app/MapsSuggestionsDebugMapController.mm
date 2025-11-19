@interface MapsSuggestionsDebugMapController
- (id)_currentlySelectedAnnotation;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_setupMapView;
- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)viewDidLoad;
@end

@implementation MapsSuggestionsDebugMapController

- (id)_currentlySelectedAnnotation
{
  v3 = [(MKMapView *)self->_mapView selectedAnnotations];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MKMapView *)self->_mapView selectedAnnotations];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MapsSuggestionsDebugMapController *)self _currentlySelectedAnnotation:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 entriesDictionaries];
    v7 = [v6 count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MapsSuggestionsDebugMapController *)self _currentlySelectedAnnotation];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 entriesDictionaries];
    v11 = [v10 objectAtIndex:{objc_msgSend(v7, "row")}];

    v12 = [v11 objectForKey:@"title"];
    v13 = [v11 objectForKey:@"type"];
    v14 = [v6 dequeueReusableCellWithIdentifier:@"entryCell"];
    if (!v14)
    {
      v14 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"entryCell"];
    }

    v15 = [v14 textLabel];
    [v15 setText:v12];

    v16 = [v14 detailTextLabel];
    [v16 setText:v13];
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

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v6 = a4;
  if ([v6 isSelected])
  {
    [v6 hideCalloutView];
  }

  else
  {
    [v6 showCalloutView];
  }

  [v6 setCalloutTableViewDataSource:self];
  [v6 setCalloutTableViewDelegate:self];
  [v6 reloadCalloutTableView];
  v5 = [v6 layer];
  [v5 setZPosition:9.22337204e18];
}

- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4
{
  v4 = a4;
  if ([v4 isSelected])
  {
    [v4 hideCalloutView];
  }

  else
  {
    [v4 showCalloutView];
  }
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [[MKPolylineRenderer alloc] initWithOverlay:v5];
    v7 = -[NSArray objectAtIndexedSubscript:](self->_possibleOverlayColors, "objectAtIndexedSubscript:", [v5 index] % -[NSArray count](self->_possibleOverlayColors, "count"));
    [v6 setStrokeColor:v7];
    [v6 setLineWidth:3.0];
  }

  else
  {
    v6 = objc_alloc_init(MKOverlayRenderer);
  }

  return v6;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a4;
  v6 = [a3 dequeueReusableAnnotationViewWithIdentifier:@"entryCell"];
  if (!v6)
  {
    v6 = [[MapsSuggestionsDGVAnnotationView alloc] initWithAnnotation:v5 reuseIdentifier:@"entryCell"];
    [(MapsSuggestionsDGVAnnotationView *)v6 setCanShowCallout:1];
  }

  LODWORD(v7) = 1148846080;
  [(MapsSuggestionsDGVAnnotationView *)v6 setDisplayPriority:v7];

  return v6;
}

- (void)_setupMapView
{
  v3 = [(MapsSuggestionsDebugMapController *)self view];
  [v3 addSubview:self->_mapView];

  [(MKMapView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(MKMapView *)self->_mapView topAnchor];
  v5 = [(MapsSuggestionsDebugMapController *)self view];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [(MKMapView *)self->_mapView bottomAnchor];
  v9 = [(MapsSuggestionsDebugMapController *)self view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(MKMapView *)self->_mapView leftAnchor];
  v13 = [(MapsSuggestionsDebugMapController *)self view];
  v14 = [v13 leftAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v19 = [(MKMapView *)self->_mapView rightAnchor];
  v16 = [(MapsSuggestionsDebugMapController *)self view];
  v17 = [v16 rightAnchor];
  v18 = [v19 constraintEqualToAnchor:v17];
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
    v25 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v26 = MapsSuggestionsDefaultCacheDirectory();
    v27 = [v26 stringByAppendingPathComponent:@"destinationGraph.txt"];

    *buf = 138412290;
    v33 = v27;
    v28 = "Could not read %@";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);

    goto LABEL_9;
  }

  v16 = [[MapsSuggestionsDGVDataSource alloc] initWithJSONString:v14];
  dataSource = self->_dataSource;
  self->_dataSource = v16;

  if (!self->_dataSource)
  {
    v25 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
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
  v21 = [(MapsSuggestionsDGVDataSource *)self->_dataSource annotations];
  [(MKMapView *)v20 addAnnotations:v21];

  v22 = self->_mapView;
  v23 = [(MapsSuggestionsDGVDataSource *)self->_dataSource linkOverlays];
  [(MKMapView *)v22 addOverlays:v23];

  v24 = self->_mapView;
  v25 = [(MKMapView *)v24 annotations];
  [(MKMapView *)v24 showAnnotations:v25 animated:1];
LABEL_9:
}

@end