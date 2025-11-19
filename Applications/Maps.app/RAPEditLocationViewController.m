@interface RAPEditLocationViewController
- (NSString)navigationTitle;
- (RAPEditLocationViewController)initWithInitialCoordinates:(CLLocationCoordinate2D)a3 inMapRect:(id)a4 analyticsTarget:(int)a5 markerViewAttributes:(id)a6 allowEditingEntryPoints:(BOOL)a7 correctableEntryPoints:(id)a8 selectionHandler:(id)a9 cancelSelectionHandler:(id)a10;
- (id)userDidRequestCreationOfEntryPointWithCoordinates:(CLLocationCoordinate2D)a3 entryPointType:(int64_t)a4;
- (void)_presentEntryPointEditor:(id)a3;
- (void)addEntryPoint;
- (void)didTapCancel;
- (void)didTapDone;
- (void)editEntryPointController:(id)a3 willDismissWithViewMode:(int64_t)a4;
- (void)editLocationMapView:(id)a3 didChangeCenterCoordinate:(CLLocationCoordinate2D)a4;
- (void)editLocationMapView:(id)a3 didChangeViewMode:(int64_t)a4;
- (void)editLocationMapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)editLocationMapViewFinishedPanning:(id)a3;
- (void)editLocationMapViewFinishedZoomingIn:(id)a3;
- (void)editLocationMapViewFinishedZoomingOut:(id)a3;
- (void)reloadData;
- (void)selectedEditModeDidChange:(id)a3;
- (void)setupConstraints;
- (void)userDidRequestDeletionOfEntryPoint:(id)a3;
- (void)userDidRequestModificationOfEntryPoint:(id)a3 withCoordinates:(CLLocationCoordinate2D)a4 entryPointType:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation RAPEditLocationViewController

- (void)editLocationMapView:(id)a3 didChangeViewMode:(int64_t)a4
{
  v6 = a3;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    v7.receiver = self;
    v7.super_class = RAPEditLocationViewController;
    [(EditLocationViewController *)&v7 editLocationMapView:v6 didChangeViewMode:a4];
  }
}

- (void)editLocationMapViewFinishedZoomingOut:(id)a3
{
  v4 = a3;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    v5.receiver = self;
    v5.super_class = RAPEditLocationViewController;
    [(EditLocationViewController *)&v5 editLocationMapViewFinishedZoomingOut:v4];
  }
}

- (void)editLocationMapViewFinishedZoomingIn:(id)a3
{
  v4 = a3;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    v5.receiver = self;
    v5.super_class = RAPEditLocationViewController;
    [(EditLocationViewController *)&v5 editLocationMapViewFinishedZoomingIn:v4];
  }
}

- (void)editLocationMapViewFinishedPanning:(id)a3
{
  v4 = a3;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    v5.receiver = self;
    v5.super_class = RAPEditLocationViewController;
    [(EditLocationViewController *)&v5 editLocationMapViewFinishedPanning:v4];
  }
}

- (void)editLocationMapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v21 = a4;
  v5 = [v21 annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(EditLocationViewController *)self _captureUserAction:10188];
    v7 = [v21 annotation];
    v8 = [RAPEditEntryPointViewController alloc];
    v9 = [(EditLocationViewController *)self editLocationMapView];
    v10 = [v9 mapView];
    [v10 visibleMapRect];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(EditLocationViewController *)self editLocationMapView];
    v20 = -[RAPEditEntryPointViewController initWithMapRect:entryPoint:delegate:initialViewMode:](v8, "initWithMapRect:entryPoint:delegate:initialViewMode:", v7, self, [v19 viewMode], v12, v14, v16, v18);

    [(RAPEditLocationViewController *)self _presentEntryPointEditor:v20];
  }
}

- (void)editEntryPointController:(id)a3 willDismissWithViewMode:(int64_t)a4
{
  v5 = [(EditLocationViewController *)self editLocationMapView];
  [v5 setViewMode:a4];
}

- (void)userDidRequestModificationOfEntryPoint:(id)a3 withCoordinates:(CLLocationCoordinate2D)a4 entryPointType:(int64_t)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v9 = a3;
  v10 = [(RAPEditLocationViewController *)self correctableEntryPoints];
  [v10 modifyEntryPoint:v9 withCoordinates:a5 entryPointType:{latitude, longitude}];

  [(RAPEditLocationViewController *)self reloadData];
  v12 = [(RAPEditLocationViewController *)self navigationItem];
  v11 = [v12 rightBarButtonItem];
  [v11 setEnabled:1];
}

- (id)userDidRequestCreationOfEntryPointWithCoordinates:(CLLocationCoordinate2D)a3 entryPointType:(int64_t)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v8 = [(RAPEditLocationViewController *)self correctableEntryPoints];
  v9 = [v8 createEntryPointWithCoordinates:a4 entryPointType:{latitude, longitude}];

  [(RAPEditLocationViewController *)self reloadData];
  v10 = [(RAPEditLocationViewController *)self navigationItem];
  v11 = [v10 rightBarButtonItem];
  [v11 setEnabled:1];

  return v9;
}

- (void)userDidRequestDeletionOfEntryPoint:(id)a3
{
  v4 = a3;
  v5 = [(RAPEditLocationViewController *)self correctableEntryPoints];
  [v5 removeEntryPoint:v4];

  [(RAPEditLocationViewController *)self reloadData];
  v7 = [(RAPEditLocationViewController *)self navigationItem];
  v6 = [v7 rightBarButtonItem];
  [v6 setEnabled:1];
}

- (void)_presentEntryPointEditor:(id)a3
{
  v4 = a3;
  v7 = [[UINavigationController alloc] initWithRootViewController:v4];
  [v7 setModalPresentationStyle:2];
  [v7 setModalInPresentation:1];
  v5 = [(RAPEditLocationViewController *)self navigationController];
  [v7 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];

  v6 = [(RAPEditLocationViewController *)self navigationController];
  [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v6, "overrideUserInterfaceStyle")}];

  [(RAPEditLocationViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)addEntryPoint
{
  [(EditLocationViewController *)self _captureUserAction:10189];
  v3 = [RAPEditEntryPointViewController alloc];
  v4 = [(EditLocationViewController *)self editLocationMapView];
  v5 = [v4 mapView];
  [v5 visibleMapRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(EditLocationViewController *)self editLocationMapView];
  v15 = -[RAPEditEntryPointViewController initWithMapRect:entryPoint:delegate:initialViewMode:](v3, "initWithMapRect:entryPoint:delegate:initialViewMode:", 0, self, [v14 viewMode], v7, v9, v11, v13);

  [(RAPEditLocationViewController *)self _presentEntryPointEditor:v15];
}

- (void)selectedEditModeDidChange:(id)a3
{
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    v4 = [(EditLocationViewController *)self editLocationMapView];
    [v4 setCrosshairEnabled:1];

    v5 = [(EditLocationViewController *)self editLocationMapView];
    v6 = [v5 mapView];
    v7 = [(EditLocationViewController *)self editLocationMapView];
    v8 = [v7 mapView];
    v9 = [v8 annotations];
    [v6 removeAnnotations:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Pan & zoom map to refine location [Report an Issue]" value:@"localized string not found" table:0];
    v12 = [(EditLocationViewController *)self editLocationMapView];
    [v12 setPrompt:v11];

    [(BackgroundColorButton *)self->_addButton setHidden:1];
    v13 = [(EditLocationViewController *)self editLocationMapView];
    v14 = [v13 mapView];
    [v14 setCenterCoordinate:0 animated:{self->_lastEditLocationCoordinate.latitude, self->_lastEditLocationCoordinate.longitude}];
    v15 = 10184;
  }

  else
  {
    v16 = [(EditLocationViewController *)self editLocationMapView];
    v17 = [v16 mapView];
    [v17 centerCoordinate];
    self->_lastEditLocationCoordinate.latitude = v18;
    self->_lastEditLocationCoordinate.longitude = v19;

    v20 = [(EditLocationViewController *)self editLocationMapView];
    [v20 setCrosshairEnabled:0];

    [(RAPEditLocationViewController *)self reloadData];
    [(BackgroundColorButton *)self->_addButton setHidden:0];
    v21 = [(RAPEditLocationViewController *)self correctableEntryPoints];
    v22 = [v21 workingPoints];
    v23 = [v22 count];

    if (v23)
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Choose an entrance to edit [Report an Issue]" value:@"localized string not found" table:0];
      v24 = [(EditLocationViewController *)self editLocationMapView];
      [v24 setPrompt:v14];
    }

    else
    {
      v13 = +[NSString string];
      v14 = [(EditLocationViewController *)self editLocationMapView];
      [v14 setPrompt:v13];
    }

    v15 = 10187;
  }

  [(EditLocationViewController *)self _captureUserAction:v15];
}

- (void)reloadData
{
  v3 = [(EditLocationViewController *)self editLocationMapView];
  v13 = [v3 mapView];

  v4 = [v13 annotations];
  [v13 removeAnnotations:v4];

  v5 = [MKPointAnnotation alloc];
  v6 = [(EditLocationViewController *)self attributes];
  v7 = [v6 title];
  v8 = [v5 initWithCoordinate:v7 title:0 subtitle:{self->_lastEditLocationCoordinate.latitude, self->_lastEditLocationCoordinate.longitude}];

  v9 = [NSMutableArray alloc];
  v10 = [(RAPEditLocationViewController *)self correctableEntryPoints];
  v11 = [v10 workingPoints];
  v12 = [v9 initWithArray:v11];

  [v12 addObject:v8];
  [v13 showAnnotations:v12 animated:0];
}

- (void)didTapDone
{
  [(EditLocationViewController *)self _captureUserAction:41];
  v3 = [(RAPEditLocationViewController *)self _isInEditLocationMode];
  v4 = [(RAPEditLocationViewController *)self selectionHandler];
  if (v3)
  {
    v5 = [(EditLocationViewController *)self editLocationMapView];
    [v5 centerCoordinate];
    v7 = v6;
    v9 = v8;
    v10 = [(RAPEditLocationViewController *)self correctableEntryPoints];
    (v4)[2](v4, v10, v7, v9);
  }

  else
  {
    v5 = [(RAPEditLocationViewController *)self correctableEntryPoints];
    (v4)[2](v4, v5, self->_lastEditLocationCoordinate.latitude, self->_lastEditLocationCoordinate.longitude);
  }

  v12 = [(RAPEditLocationViewController *)self navigationController];
  v11 = [v12 popViewControllerAnimated:1];
}

- (void)didTapCancel
{
  [(EditLocationViewController *)self _captureUserAction:18];
  v3 = [(RAPEditLocationViewController *)self cancelSelectionHandler];

  if (v3)
  {
    v4 = [(RAPEditLocationViewController *)self cancelSelectionHandler];
    v4[2]();
  }

  v6 = [(RAPEditLocationViewController *)self navigationController];
  v5 = [v6 popViewControllerAnimated:1];
}

- (void)editLocationMapView:(id)a3 didChangeCenterCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    self->_lastEditLocationCoordinate.latitude = latitude;
    self->_lastEditLocationCoordinate.longitude = longitude;
    if (fabs(longitude) <= 180.0 && latitude >= -90.0 && latitude <= 90.0)
    {
      v8 = [(RAPEditLocationViewController *)self navigationItem];
      v7 = [v8 rightBarButtonItem];
      [v7 setEnabled:1];
    }
  }
}

- (NSString)navigationTitle
{
  navigationTitle = self->_navigationTitle;
  if (!navigationTitle)
  {
    allowEditingEntryPoints = self->_allowEditingEntryPoints;
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    if (allowEditingEntryPoints)
    {
      v7 = @"Location & Entrances [Report an Issue]";
    }

    else
    {
      v7 = @"Edit Location [Report an Issue]";
    }

    v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];
    v9 = self->_navigationTitle;
    self->_navigationTitle = v8;

    navigationTitle = self->_navigationTitle;
  }

  return navigationTitle;
}

- (void)setupConstraints
{
  v67 = objc_alloc_init(NSMutableArray);
  v65 = [(EditLocationViewController *)self editLocationMapView];
  v61 = [v65 leadingAnchor];
  v63 = [(RAPEditLocationViewController *)self view];
  v59 = [v63 leadingAnchor];
  v57 = [v61 constraintEqualToAnchor:v59];
  v69[0] = v57;
  v55 = [(EditLocationViewController *)self editLocationMapView];
  v53 = [v55 trailingAnchor];
  v3 = [(RAPEditLocationViewController *)self view];
  v4 = [v3 trailingAnchor];
  v5 = [v53 constraintEqualToAnchor:v4];
  v69[1] = v5;
  v6 = [(EditLocationViewController *)self editLocationMapView];
  v7 = [v6 bottomAnchor];
  v8 = [(RAPEditLocationViewController *)self view];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v69[2] = v10;
  v11 = [NSArray arrayWithObjects:v69 count:3];
  [v67 addObjectsFromArray:v11];

  if (self->_allowEditingEntryPoints)
  {
    v52 = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    v43 = [v52 leadingAnchor];
    v50 = [(RAPEditLocationViewController *)self view];
    v47 = [v50 layoutMarginsGuide];
    v44 = [v47 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v44 constant:8.0];
    v68[0] = v41;
    v66 = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    v62 = [v66 trailingAnchor];
    v64 = [(RAPEditLocationViewController *)self view];
    v60 = [v64 layoutMarginsGuide];
    v58 = [v60 trailingAnchor];
    v56 = [v62 constraintEqualToAnchor:v58 constant:-8.0];
    v68[1] = v56;
    v54 = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    v49 = [v54 topAnchor];
    v51 = [(RAPEditLocationViewController *)self view];
    v48 = [v51 safeAreaLayoutGuide];
    v46 = [v48 topAnchor];
    v45 = [v49 constraintEqualToAnchor:v46 constant:15.0];
    v68[2] = v45;
    v42 = [(EditLocationViewController *)self editLocationMapView];
    v39 = [v42 topAnchor];
    v40 = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    v38 = [v40 bottomAnchor];
    v37 = [v39 constraintEqualToAnchor:v38 constant:15.0];
    v68[3] = v37;
    v36 = [(RAPEditLocationViewController *)self addButton];
    v34 = [v36 leadingAnchor];
    v35 = [(EditLocationViewController *)self editLocationMapView];
    v33 = [v35 leadingContentGuide];
    v32 = [v34 constraintEqualToAnchor:v33];
    v68[4] = v32;
    v31 = [(RAPEditLocationViewController *)self addButton];
    v29 = [v31 trailingAnchor];
    v30 = [(EditLocationViewController *)self editLocationMapView];
    v28 = [v30 trailingContentGuide];
    v12 = [v29 constraintEqualToAnchor:v28];
    v68[5] = v12;
    v13 = [(RAPEditLocationViewController *)self addButton];
    v14 = [v13 bottomAnchor];
    v15 = [(EditLocationViewController *)self editLocationMapView];
    v16 = [v15 bottomContentGuide];
    v17 = [v14 constraintEqualToAnchor:v16 constant:-8.0];
    v68[6] = v17;
    v18 = [(RAPEditLocationViewController *)self addButton];
    v19 = [v18 heightAnchor];
    v20 = [v19 constraintEqualToConstant:45.0];
    v68[7] = v20;
    v21 = [NSArray arrayWithObjects:v68 count:8];
    [v67 addObjectsFromArray:v21];

    v22 = v41;
    v23 = v43;

    v24 = v44;
    v25 = v47;

    v26 = v50;
    v27 = v52;
  }

  else
  {
    v27 = [(EditLocationViewController *)self editLocationMapView];
    v23 = [v27 topAnchor];
    v26 = [(RAPEditLocationViewController *)self view];
    v25 = [v26 safeAreaLayoutGuide];
    v24 = [v25 topAnchor];
    v22 = [v23 constraintEqualToAnchor:v24];
    [v67 addObject:v22];
  }

  [NSLayoutConstraint activateConstraints:v67];
}

- (void)viewDidLoad
{
  v3 = [(RAPEditLocationViewController *)self navigationTitle];
  v4 = [(RAPEditLocationViewController *)self navigationItem];
  [v4 setTitle:v3];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
  v7 = [(RAPEditLocationViewController *)self navigationItem];
  v8 = [v7 backBarButtonItem];
  [v8 setTitle:v6];

  if (self->_allowEditingEntryPoints)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Location [Report an Issue]" value:@"localized string not found" table:0];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Entrances [Report an Issue]" value:@"localized string not found" table:0];

    v13 = [UISegmentedControl alloc];
    v51[0] = v10;
    v51[1] = v12;
    v14 = [NSArray arrayWithObjects:v51 count:2];
    v15 = [v13 initWithItems:v14];
    editModeSegmentedControl = self->_editModeSegmentedControl;
    self->_editModeSegmentedControl = v15;

    [(UISegmentedControl *)self->_editModeSegmentedControl setSelectedSegmentIndex:0];
    [(UISegmentedControl *)self->_editModeSegmentedControl addTarget:self action:"selectedEditModeDidChange:" forControlEvents:4096];
    v17 = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(RAPEditLocationViewController *)self view];
    v19 = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    [v18 addSubview:v19];
  }

  v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"didTapDone"];
  v21 = [(RAPEditLocationViewController *)self navigationItem];
  [v21 setRightBarButtonItem:v20];

  v22 = [(RAPEditLocationViewController *)self navigationItem];
  v23 = [v22 rightBarButtonItem];
  [v23 setEnabled:0];

  v24 = [(RAPEditLocationViewController *)self cancelSelectionHandler];

  if (v24)
  {
    v25 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didTapCancel"];
    v26 = [(RAPEditLocationViewController *)self navigationItem];
    [v26 setLeftBarButtonItem:v25];
  }

  v27 = [(EditLocationViewController *)self editLocationMapView];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = [(RAPEditLocationViewController *)self view];
  v29 = [(EditLocationViewController *)self editLocationMapView];
  [v28 addSubview:v29];

  if (self->_allowEditingEntryPoints)
  {
    v30 = [BackgroundColorButton buttonWithType:0];
    addButton = self->_addButton;
    self->_addButton = v30;

    v32 = self->_addButton;
    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"Add Entrance [Report an Issue]" value:@"localized string not found" table:0];
    [(BackgroundColorButton *)v32 setTitle:v34 forState:0];

    v35 = self->_addButton;
    v36 = +[UIColor systemBackgroundColor];
    [(BackgroundColorButton *)v35 setBackgroundColor:v36 forState:0];

    v37 = self->_addButton;
    v38 = +[UIColor systemBlueColor];
    [(BackgroundColorButton *)v37 setTitleColor:v38 forState:0];

    [(BackgroundColorButton *)self->_addButton addTarget:self action:"addEntryPoint" forControlEvents:64];
    v39 = +[UIScreen mainScreen];
    [v39 nativeScale];
    v41 = 1.0 / v40;

    v42 = [(BackgroundColorButton *)self->_addButton layer];
    [v42 setBorderWidth:v41];

    v43 = [(BackgroundColorButton *)self->_addButton theme];
    v44 = [v43 hairlineColor];
    v45 = [v44 CGColor];
    v46 = [(BackgroundColorButton *)self->_addButton layer];
    [v46 setBorderColor:v45];

    v47 = [(BackgroundColorButton *)self->_addButton traitCollection];
    [UISegmentedControl _cornerRadiusForTraitCollection:v47 size:0];
    [(BackgroundColorButton *)self->_addButton _setContinuousCornerRadius:?];

    [(BackgroundColorButton *)self->_addButton setHidden:1];
    [(BackgroundColorButton *)self->_addButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v48 = [(RAPEditLocationViewController *)self view];
    [v48 addSubview:self->_addButton];
  }

  v50.receiver = self;
  v50.super_class = RAPEditLocationViewController;
  [(EditLocationViewController *)&v50 viewDidLoad];
  v49 = [(RAPEditLocationViewController *)self view];
  [v49 bringSubviewToFront:self->_addButton];
}

- (RAPEditLocationViewController)initWithInitialCoordinates:(CLLocationCoordinate2D)a3 inMapRect:(id)a4 analyticsTarget:(int)a5 markerViewAttributes:(id)a6 allowEditingEntryPoints:(BOOL)a7 correctableEntryPoints:(id)a8 selectionHandler:(id)a9 cancelSelectionHandler:(id)a10
{
  v14 = *&a5;
  var1 = a4.var1.var1;
  var0 = a4.var1.var0;
  v17 = a4.var0.var1;
  v18 = a4.var0.var0;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v33.receiver = self;
  v33.super_class = RAPEditLocationViewController;
  v25 = [(EditLocationViewController *)&v33 initWithInitialCoordinates:v14 inMapRect:a6 analyticsTarget:latitude markerViewAttributes:longitude, v18, v17, var0, var1];
  if (v25)
  {
    v26 = [v23 copy];
    selectionHandler = v25->_selectionHandler;
    v25->_selectionHandler = v26;

    v28 = [v24 copy];
    cancelSelectionHandler = v25->_cancelSelectionHandler;
    v25->_cancelSelectionHandler = v28;

    v30 = [v22 copy];
    correctableEntryPoints = v25->_correctableEntryPoints;
    v25->_correctableEntryPoints = v30;

    v25->_allowEditingEntryPoints = a7;
  }

  return v25;
}

@end