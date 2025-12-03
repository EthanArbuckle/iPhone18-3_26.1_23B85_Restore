@interface EditLocationViewController
- (CLLocationCoordinate2D)featureCoordinate;
- (CLLocationCoordinate2D)selectedCoordinate;
- (EditLocationViewController)initWithInitialCoordinates:(CLLocationCoordinate2D)coordinates inMapRect:(id)rect analyticsTarget:(int)target markerViewAttributes:(id)attributes;
- (void)_captureUserAction:(int)action;
- (void)editLocationMapView:(id)view didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)editLocationMapView:(id)view didChangeViewMode:(int64_t)mode;
- (void)setupConstraints;
- (void)viewDidLoad;
@end

@implementation EditLocationViewController

- (CLLocationCoordinate2D)featureCoordinate
{
  latitude = self->_featureCoordinate.latitude;
  longitude = self->_featureCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)editLocationMapView:(id)view didChangeViewMode:(int64_t)mode
{
  viewCopy = view;
  if (mode <= 2)
  {
    v7 = viewCopy;
    [(EditLocationViewController *)self _captureUserAction:dword_1012161E0[mode]];
    viewCopy = v7;
  }
}

- (void)editLocationMapView:(id)view didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  navigationItem = [(EditLocationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  changeHandler = [(EditLocationViewController *)self changeHandler];

  if (changeHandler)
  {
    changeHandler2 = [(EditLocationViewController *)self changeHandler];
    changeHandler2[2](latitude, longitude);
  }
}

- (void)_captureUserAction:(int)action
{
  if (action)
  {
    v3 = *&action;
    analyticsTarget = [(EditLocationViewController *)self analyticsTarget];

    [GEOAPPortal captureUserAction:v3 target:analyticsTarget value:0];
  }
}

- (CLLocationCoordinate2D)selectedCoordinate
{
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  [editLocationMapView centerCoordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (void)setupConstraints
{
  editLocationMapView = [(EditLocationViewController *)self editLocationMapView];
  leadingAnchor = [editLocationMapView leadingAnchor];
  view = [(EditLocationViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[0] = v20;
  editLocationMapView2 = [(EditLocationViewController *)self editLocationMapView];
  trailingAnchor = [editLocationMapView2 trailingAnchor];
  view2 = [(EditLocationViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[1] = v15;
  editLocationMapView3 = [(EditLocationViewController *)self editLocationMapView];
  topAnchor = [editLocationMapView3 topAnchor];
  view3 = [(EditLocationViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[2] = v6;
  editLocationMapView4 = [(EditLocationViewController *)self editLocationMapView];
  bottomAnchor = [editLocationMapView4 bottomAnchor];
  view4 = [(EditLocationViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[3] = v11;
  v12 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = EditLocationViewController;
  [(EditLocationViewController *)&v22 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(EditLocationViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [RAPEditLocationMapView alloc];
  if ([(EditLocationViewController *)self isShowingTraffic])
  {
    v6 = 7;
  }

  else
  {
    mapType = [(EditLocationViewController *)self mapType];
    v8 = 3;
    v9 = 7;
    if (mapType != 108)
    {
      v9 = 0;
    }

    if (mapType != 104)
    {
      v8 = v9;
    }

    v10 = 5;
    v11 = -1;
    if (mapType != 103)
    {
      v11 = 0;
    }

    if (mapType != 4)
    {
      v10 = v11;
    }

    if (mapType <= 103)
    {
      v8 = v10;
    }

    v12 = 2;
    v13 = 1;
    v14 = 6;
    if (mapType != 3)
    {
      v14 = 0;
    }

    if (mapType != 2)
    {
      v13 = v14;
    }

    if (mapType != 1)
    {
      v12 = v13;
    }

    if (mapType <= 3)
    {
      v6 = v12;
    }

    else
    {
      v6 = v8;
    }
  }

  v15 = [(RAPEditLocationMapView *)v5 initWithMapRect:v6 viewMode:self->_attributes markerViewAttributes:self->_mapRect.origin.x, self->_mapRect.origin.y, self->_mapRect.size.width, self->_mapRect.size.height];
  editLocationMapView = self->_editLocationMapView;
  self->_editLocationMapView = v15;

  [(RAPEditLocationMapView *)self->_editLocationMapView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RAPEditLocationMapView *)self->_editLocationMapView setDelegate:self];
  [(RAPEditLocationMapView *)self->_editLocationMapView setCrosshairEnabled:1];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Pan & zoom map to refine location [Report an Issue]" value:@"localized string not found" table:0];
  [(RAPEditLocationMapView *)self->_editLocationMapView setPrompt:v18];

  view2 = [(EditLocationViewController *)self view];
  [view2 addSubview:self->_editLocationMapView];

  [(EditLocationViewController *)self setupConstraints];
  navigationItem = [(EditLocationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];
}

- (EditLocationViewController)initWithInitialCoordinates:(CLLocationCoordinate2D)coordinates inMapRect:(id)rect analyticsTarget:(int)target markerViewAttributes:(id)attributes
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v9 = rect.var0.var1;
  v10 = rect.var0.var0;
  longitude = coordinates.longitude;
  latitude = coordinates.latitude;
  attributesCopy = attributes;
  v20.receiver = self;
  v20.super_class = EditLocationViewController;
  v15 = [(EditLocationViewController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_mapRect.origin.x = v10;
    v15->_mapRect.origin.y = v9;
    v15->_mapRect.size.width = var0;
    v15->_mapRect.size.height = var1;
    v15->_featureCoordinate.latitude = latitude;
    v15->_featureCoordinate.longitude = longitude;
    v15->_analyticsTarget = target;
    v17 = [attributesCopy copy];
    attributes = v16->_attributes;
    v16->_attributes = v17;
  }

  return v16;
}

@end