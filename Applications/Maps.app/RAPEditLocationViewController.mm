@interface RAPEditLocationViewController
- (NSString)navigationTitle;
- (RAPEditLocationViewController)initWithInitialCoordinates:(CLLocationCoordinate2D)coordinates inMapRect:(id)rect analyticsTarget:(int)target markerViewAttributes:(id)attributes allowEditingEntryPoints:(BOOL)points correctableEntryPoints:(id)entryPoints selectionHandler:(id)handler cancelSelectionHandler:(id)self0;
- (id)userDidRequestCreationOfEntryPointWithCoordinates:(CLLocationCoordinate2D)coordinates entryPointType:(int64_t)type;
- (void)_presentEntryPointEditor:(id)editor;
- (void)addEntryPoint;
- (void)didTapCancel;
- (void)didTapDone;
- (void)editEntryPointController:(id)controller willDismissWithViewMode:(int64_t)mode;
- (void)editLocationMapView:(id)view didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)editLocationMapView:(id)view didChangeViewMode:(int64_t)mode;
- (void)editLocationMapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)editLocationMapViewFinishedPanning:(id)panning;
- (void)editLocationMapViewFinishedZoomingIn:(id)in;
- (void)editLocationMapViewFinishedZoomingOut:(id)out;
- (void)reloadData;
- (void)selectedEditModeDidChange:(id)change;
- (void)setupConstraints;
- (void)userDidRequestDeletionOfEntryPoint:(id)point;
- (void)userDidRequestModificationOfEntryPoint:(id)point withCoordinates:(CLLocationCoordinate2D)coordinates entryPointType:(int64_t)type;
- (void)viewDidLoad;
@end

@implementation RAPEditLocationViewController

- (void)editLocationMapView:(id)view didChangeViewMode:(int64_t)mode
{
  viewCopy = view;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    v7.receiver = self;
    v7.super_class = RAPEditLocationViewController;
    [(EditLocationViewController *)&v7 editLocationMapView:viewCopy didChangeViewMode:mode];
  }
}

- (void)editLocationMapViewFinishedZoomingOut:(id)out
{
  outCopy = out;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    v5.receiver = self;
    v5.super_class = RAPEditLocationViewController;
    [(EditLocationViewController *)&v5 editLocationMapViewFinishedZoomingOut:outCopy];
  }
}

- (void)editLocationMapViewFinishedZoomingIn:(id)in
{
  inCopy = in;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    v5.receiver = self;
    v5.super_class = RAPEditLocationViewController;
    [(EditLocationViewController *)&v5 editLocationMapViewFinishedZoomingIn:inCopy];
  }
}

- (void)editLocationMapViewFinishedPanning:(id)panning
{
  panningCopy = panning;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    v5.receiver = self;
    v5.super_class = RAPEditLocationViewController;
    [(EditLocationViewController *)&v5 editLocationMapViewFinishedPanning:panningCopy];
  }
}

- (void)editLocationMapView:(id)view didSelectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  annotation = [annotationViewCopy annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(EditLocationViewController *)self _captureUserAction:10188];
    annotation2 = [annotationViewCopy annotation];
    v8 = [RAPEditEntryPointViewController alloc];
    editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
    mapView = [editLocationMapView mapView];
    [mapView visibleMapRect];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    editLocationMapView2 = [(EditLocationViewController *)self editLocationMapView];
    v20 = -[RAPEditEntryPointViewController initWithMapRect:entryPoint:delegate:initialViewMode:](v8, "initWithMapRect:entryPoint:delegate:initialViewMode:", annotation2, self, [editLocationMapView2 viewMode], v12, v14, v16, v18);

    [(RAPEditLocationViewController *)self _presentEntryPointEditor:v20];
  }
}

- (void)editEntryPointController:(id)controller willDismissWithViewMode:(int64_t)mode
{
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  [editLocationMapView setViewMode:mode];
}

- (void)userDidRequestModificationOfEntryPoint:(id)point withCoordinates:(CLLocationCoordinate2D)coordinates entryPointType:(int64_t)type
{
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  pointCopy = point;
  correctableEntryPoints = [(RAPEditLocationViewController *)self correctableEntryPoints];
  [correctableEntryPoints modifyEntryPoint:pointCopy withCoordinates:type entryPointType:{latitude, longitude}];

  [(RAPEditLocationViewController *)self reloadData];
  navigationItem = [(RAPEditLocationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];
}

- (id)userDidRequestCreationOfEntryPointWithCoordinates:(CLLocationCoordinate2D)coordinates entryPointType:(int64_t)type
{
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  correctableEntryPoints = [(RAPEditLocationViewController *)self correctableEntryPoints];
  v9 = [correctableEntryPoints createEntryPointWithCoordinates:type entryPointType:{latitude, longitude}];

  [(RAPEditLocationViewController *)self reloadData];
  navigationItem = [(RAPEditLocationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  return v9;
}

- (void)userDidRequestDeletionOfEntryPoint:(id)point
{
  pointCopy = point;
  correctableEntryPoints = [(RAPEditLocationViewController *)self correctableEntryPoints];
  [correctableEntryPoints removeEntryPoint:pointCopy];

  [(RAPEditLocationViewController *)self reloadData];
  navigationItem = [(RAPEditLocationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];
}

- (void)_presentEntryPointEditor:(id)editor
{
  editorCopy = editor;
  v7 = [[UINavigationController alloc] initWithRootViewController:editorCopy];
  [v7 setModalPresentationStyle:2];
  [v7 setModalInPresentation:1];
  navigationController = [(RAPEditLocationViewController *)self navigationController];
  [v7 setOverrideUserInterfaceStyle:{objc_msgSend(navigationController, "overrideUserInterfaceStyle")}];

  navigationController2 = [(RAPEditLocationViewController *)self navigationController];
  [editorCopy setOverrideUserInterfaceStyle:{objc_msgSend(navigationController2, "overrideUserInterfaceStyle")}];

  [(RAPEditLocationViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)addEntryPoint
{
  [(EditLocationViewController *)self _captureUserAction:10189];
  v3 = [RAPEditEntryPointViewController alloc];
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  mapView = [editLocationMapView mapView];
  [mapView visibleMapRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  editLocationMapView2 = [(EditLocationViewController *)self editLocationMapView];
  v15 = -[RAPEditEntryPointViewController initWithMapRect:entryPoint:delegate:initialViewMode:](v3, "initWithMapRect:entryPoint:delegate:initialViewMode:", 0, self, [editLocationMapView2 viewMode], v7, v9, v11, v13);

  [(RAPEditLocationViewController *)self _presentEntryPointEditor:v15];
}

- (void)selectedEditModeDidChange:(id)change
{
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
    [editLocationMapView setCrosshairEnabled:1];

    editLocationMapView2 = [(EditLocationViewController *)self editLocationMapView];
    mapView = [editLocationMapView2 mapView];
    editLocationMapView3 = [(EditLocationViewController *)self editLocationMapView];
    mapView2 = [editLocationMapView3 mapView];
    annotations = [mapView2 annotations];
    [mapView removeAnnotations:annotations];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Pan & zoom map to refine location [Report an Issue]" value:@"localized string not found" table:0];
    editLocationMapView4 = [(EditLocationViewController *)self editLocationMapView];
    [editLocationMapView4 setPrompt:v11];

    [(BackgroundColorButton *)self->_addButton setHidden:1];
    editLocationMapView5 = [(EditLocationViewController *)self editLocationMapView];
    mapView3 = [editLocationMapView5 mapView];
    [mapView3 setCenterCoordinate:0 animated:{self->_lastEditLocationCoordinate.latitude, self->_lastEditLocationCoordinate.longitude}];
    v15 = 10184;
  }

  else
  {
    editLocationMapView6 = [(EditLocationViewController *)self editLocationMapView];
    mapView4 = [editLocationMapView6 mapView];
    [mapView4 centerCoordinate];
    self->_lastEditLocationCoordinate.latitude = v18;
    self->_lastEditLocationCoordinate.longitude = v19;

    editLocationMapView7 = [(EditLocationViewController *)self editLocationMapView];
    [editLocationMapView7 setCrosshairEnabled:0];

    [(RAPEditLocationViewController *)self reloadData];
    [(BackgroundColorButton *)self->_addButton setHidden:0];
    correctableEntryPoints = [(RAPEditLocationViewController *)self correctableEntryPoints];
    workingPoints = [correctableEntryPoints workingPoints];
    v23 = [workingPoints count];

    if (v23)
    {
      editLocationMapView5 = +[NSBundle mainBundle];
      mapView3 = [editLocationMapView5 localizedStringForKey:@"Choose an entrance to edit [Report an Issue]" value:@"localized string not found" table:0];
      editLocationMapView8 = [(EditLocationViewController *)self editLocationMapView];
      [editLocationMapView8 setPrompt:mapView3];
    }

    else
    {
      editLocationMapView5 = +[NSString string];
      mapView3 = [(EditLocationViewController *)self editLocationMapView];
      [mapView3 setPrompt:editLocationMapView5];
    }

    v15 = 10187;
  }

  [(EditLocationViewController *)self _captureUserAction:v15];
}

- (void)reloadData
{
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  mapView = [editLocationMapView mapView];

  annotations = [mapView annotations];
  [mapView removeAnnotations:annotations];

  v5 = [MKPointAnnotation alloc];
  attributes = [(EditLocationViewController *)self attributes];
  title = [attributes title];
  v8 = [v5 initWithCoordinate:title title:0 subtitle:{self->_lastEditLocationCoordinate.latitude, self->_lastEditLocationCoordinate.longitude}];

  v9 = [NSMutableArray alloc];
  correctableEntryPoints = [(RAPEditLocationViewController *)self correctableEntryPoints];
  workingPoints = [correctableEntryPoints workingPoints];
  v12 = [v9 initWithArray:workingPoints];

  [v12 addObject:v8];
  [mapView showAnnotations:v12 animated:0];
}

- (void)didTapDone
{
  [(EditLocationViewController *)self _captureUserAction:41];
  _isInEditLocationMode = [(RAPEditLocationViewController *)self _isInEditLocationMode];
  selectionHandler = [(RAPEditLocationViewController *)self selectionHandler];
  if (_isInEditLocationMode)
  {
    editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
    [editLocationMapView centerCoordinate];
    v7 = v6;
    v9 = v8;
    correctableEntryPoints = [(RAPEditLocationViewController *)self correctableEntryPoints];
    (selectionHandler)[2](selectionHandler, correctableEntryPoints, v7, v9);
  }

  else
  {
    editLocationMapView = [(RAPEditLocationViewController *)self correctableEntryPoints];
    (selectionHandler)[2](selectionHandler, editLocationMapView, self->_lastEditLocationCoordinate.latitude, self->_lastEditLocationCoordinate.longitude);
  }

  navigationController = [(RAPEditLocationViewController *)self navigationController];
  v11 = [navigationController popViewControllerAnimated:1];
}

- (void)didTapCancel
{
  [(EditLocationViewController *)self _captureUserAction:18];
  cancelSelectionHandler = [(RAPEditLocationViewController *)self cancelSelectionHandler];

  if (cancelSelectionHandler)
  {
    cancelSelectionHandler2 = [(RAPEditLocationViewController *)self cancelSelectionHandler];
    cancelSelectionHandler2[2]();
  }

  navigationController = [(RAPEditLocationViewController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];
}

- (void)editLocationMapView:(id)view didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if ([(RAPEditLocationViewController *)self _isInEditLocationMode])
  {
    self->_lastEditLocationCoordinate.latitude = latitude;
    self->_lastEditLocationCoordinate.longitude = longitude;
    if (fabs(longitude) <= 180.0 && latitude >= -90.0 && latitude <= 90.0)
    {
      navigationItem = [(RAPEditLocationViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      [rightBarButtonItem setEnabled:1];
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
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  leadingAnchor = [editLocationMapView leadingAnchor];
  view = [(RAPEditLocationViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v69[0] = v57;
  editLocationMapView2 = [(EditLocationViewController *)self editLocationMapView];
  trailingAnchor = [editLocationMapView2 trailingAnchor];
  view2 = [(RAPEditLocationViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v69[1] = v5;
  editLocationMapView3 = [(EditLocationViewController *)self editLocationMapView];
  bottomAnchor = [editLocationMapView3 bottomAnchor];
  view3 = [(RAPEditLocationViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v69[2] = v10;
  v11 = [NSArray arrayWithObjects:v69 count:3];
  [v67 addObjectsFromArray:v11];

  if (self->_allowEditingEntryPoints)
  {
    editModeSegmentedControl = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    leadingAnchor3 = [editModeSegmentedControl leadingAnchor];
    view4 = [(RAPEditLocationViewController *)self view];
    layoutMarginsGuide = [view4 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
    v68[0] = v41;
    editModeSegmentedControl2 = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    trailingAnchor3 = [editModeSegmentedControl2 trailingAnchor];
    view5 = [(RAPEditLocationViewController *)self view];
    layoutMarginsGuide2 = [view5 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
    v56 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-8.0];
    v68[1] = v56;
    editModeSegmentedControl3 = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    topAnchor = [editModeSegmentedControl3 topAnchor];
    view6 = [(RAPEditLocationViewController *)self view];
    safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
    v68[2] = v45;
    editLocationMapView4 = [(EditLocationViewController *)self editLocationMapView];
    topAnchor3 = [editLocationMapView4 topAnchor];
    editModeSegmentedControl4 = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    bottomAnchor3 = [editModeSegmentedControl4 bottomAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:15.0];
    v68[3] = v37;
    addButton = [(RAPEditLocationViewController *)self addButton];
    leadingAnchor5 = [addButton leadingAnchor];
    editLocationMapView5 = [(EditLocationViewController *)self editLocationMapView];
    leadingContentGuide = [editLocationMapView5 leadingContentGuide];
    v32 = [leadingAnchor5 constraintEqualToAnchor:leadingContentGuide];
    v68[4] = v32;
    addButton2 = [(RAPEditLocationViewController *)self addButton];
    trailingAnchor5 = [addButton2 trailingAnchor];
    editLocationMapView6 = [(EditLocationViewController *)self editLocationMapView];
    trailingContentGuide = [editLocationMapView6 trailingContentGuide];
    v12 = [trailingAnchor5 constraintEqualToAnchor:trailingContentGuide];
    v68[5] = v12;
    addButton3 = [(RAPEditLocationViewController *)self addButton];
    bottomAnchor4 = [addButton3 bottomAnchor];
    editLocationMapView7 = [(EditLocationViewController *)self editLocationMapView];
    bottomContentGuide = [editLocationMapView7 bottomContentGuide];
    v17 = [bottomAnchor4 constraintEqualToAnchor:bottomContentGuide constant:-8.0];
    v68[6] = v17;
    addButton4 = [(RAPEditLocationViewController *)self addButton];
    heightAnchor = [addButton4 heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:45.0];
    v68[7] = v20;
    v21 = [NSArray arrayWithObjects:v68 count:8];
    [v67 addObjectsFromArray:v21];

    v22 = v41;
    topAnchor4 = leadingAnchor3;

    topAnchor5 = leadingAnchor4;
    safeAreaLayoutGuide2 = layoutMarginsGuide;

    view7 = view4;
    editLocationMapView8 = editModeSegmentedControl;
  }

  else
  {
    editLocationMapView8 = [(EditLocationViewController *)self editLocationMapView];
    topAnchor4 = [editLocationMapView8 topAnchor];
    view7 = [(RAPEditLocationViewController *)self view];
    safeAreaLayoutGuide2 = [view7 safeAreaLayoutGuide];
    topAnchor5 = [safeAreaLayoutGuide2 topAnchor];
    v22 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v67 addObject:v22];
  }

  [NSLayoutConstraint activateConstraints:v67];
}

- (void)viewDidLoad
{
  navigationTitle = [(RAPEditLocationViewController *)self navigationTitle];
  navigationItem = [(RAPEditLocationViewController *)self navigationItem];
  [navigationItem setTitle:navigationTitle];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
  navigationItem2 = [(RAPEditLocationViewController *)self navigationItem];
  backBarButtonItem = [navigationItem2 backBarButtonItem];
  [backBarButtonItem setTitle:v6];

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
    editModeSegmentedControl = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    [editModeSegmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(RAPEditLocationViewController *)self view];
    editModeSegmentedControl2 = [(RAPEditLocationViewController *)self editModeSegmentedControl];
    [view addSubview:editModeSegmentedControl2];
  }

  v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"didTapDone"];
  navigationItem3 = [(RAPEditLocationViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v20];

  navigationItem4 = [(RAPEditLocationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem4 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  cancelSelectionHandler = [(RAPEditLocationViewController *)self cancelSelectionHandler];

  if (cancelSelectionHandler)
  {
    v25 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didTapCancel"];
    navigationItem5 = [(RAPEditLocationViewController *)self navigationItem];
    [navigationItem5 setLeftBarButtonItem:v25];
  }

  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  [editLocationMapView setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(RAPEditLocationViewController *)self view];
  editLocationMapView2 = [(EditLocationViewController *)self editLocationMapView];
  [view2 addSubview:editLocationMapView2];

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

    layer = [(BackgroundColorButton *)self->_addButton layer];
    [layer setBorderWidth:v41];

    theme = [(BackgroundColorButton *)self->_addButton theme];
    hairlineColor = [theme hairlineColor];
    cGColor = [hairlineColor CGColor];
    layer2 = [(BackgroundColorButton *)self->_addButton layer];
    [layer2 setBorderColor:cGColor];

    traitCollection = [(BackgroundColorButton *)self->_addButton traitCollection];
    [UISegmentedControl _cornerRadiusForTraitCollection:traitCollection size:0];
    [(BackgroundColorButton *)self->_addButton _setContinuousCornerRadius:?];

    [(BackgroundColorButton *)self->_addButton setHidden:1];
    [(BackgroundColorButton *)self->_addButton setTranslatesAutoresizingMaskIntoConstraints:0];
    view3 = [(RAPEditLocationViewController *)self view];
    [view3 addSubview:self->_addButton];
  }

  v50.receiver = self;
  v50.super_class = RAPEditLocationViewController;
  [(EditLocationViewController *)&v50 viewDidLoad];
  view4 = [(RAPEditLocationViewController *)self view];
  [view4 bringSubviewToFront:self->_addButton];
}

- (RAPEditLocationViewController)initWithInitialCoordinates:(CLLocationCoordinate2D)coordinates inMapRect:(id)rect analyticsTarget:(int)target markerViewAttributes:(id)attributes allowEditingEntryPoints:(BOOL)points correctableEntryPoints:(id)entryPoints selectionHandler:(id)handler cancelSelectionHandler:(id)self0
{
  v14 = *&target;
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v17 = rect.var0.var1;
  v18 = rect.var0.var0;
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  entryPointsCopy = entryPoints;
  handlerCopy = handler;
  selectionHandlerCopy = selectionHandler;
  v33.receiver = self;
  v33.super_class = RAPEditLocationViewController;
  var1 = [(EditLocationViewController *)&v33 initWithInitialCoordinates:v14 inMapRect:attributes analyticsTarget:latitude markerViewAttributes:longitude, v18, v17, var0, var1];
  if (var1)
  {
    v26 = [handlerCopy copy];
    selectionHandler = var1->_selectionHandler;
    var1->_selectionHandler = v26;

    v28 = [selectionHandlerCopy copy];
    cancelSelectionHandler = var1->_cancelSelectionHandler;
    var1->_cancelSelectionHandler = v28;

    v30 = [entryPointsCopy copy];
    correctableEntryPoints = var1->_correctableEntryPoints;
    var1->_correctableEntryPoints = v30;

    var1->_allowEditingEntryPoints = points;
  }

  return var1;
}

@end