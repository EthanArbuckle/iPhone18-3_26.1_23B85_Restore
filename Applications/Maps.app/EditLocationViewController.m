@interface EditLocationViewController
- (CLLocationCoordinate2D)featureCoordinate;
- (CLLocationCoordinate2D)selectedCoordinate;
- (EditLocationViewController)initWithInitialCoordinates:(CLLocationCoordinate2D)a3 inMapRect:(id)a4 analyticsTarget:(int)a5 markerViewAttributes:(id)a6;
- (void)_captureUserAction:(int)a3;
- (void)editLocationMapView:(id)a3 didChangeCenterCoordinate:(CLLocationCoordinate2D)a4;
- (void)editLocationMapView:(id)a3 didChangeViewMode:(int64_t)a4;
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

- (void)editLocationMapView:(id)a3 didChangeViewMode:(int64_t)a4
{
  v6 = a3;
  if (a4 <= 2)
  {
    v7 = v6;
    [(EditLocationViewController *)self _captureUserAction:dword_1012161E0[a4]];
    v6 = v7;
  }
}

- (void)editLocationMapView:(id)a3 didChangeCenterCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = [(EditLocationViewController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:1];

  v9 = [(EditLocationViewController *)self changeHandler];

  if (v9)
  {
    v10 = [(EditLocationViewController *)self changeHandler];
    v10[2](latitude, longitude);
  }
}

- (void)_captureUserAction:(int)a3
{
  if (a3)
  {
    v3 = *&a3;
    v4 = [(EditLocationViewController *)self analyticsTarget];

    [GEOAPPortal captureUserAction:v3 target:v4 value:0];
  }
}

- (CLLocationCoordinate2D)selectedCoordinate
{
  v2 = [(EditLocationViewController *)self editLocationMapView];
  [v2 centerCoordinate];
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
  v24 = [(EditLocationViewController *)self editLocationMapView];
  v22 = [v24 leadingAnchor];
  v23 = [(EditLocationViewController *)self view];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v19 = [(EditLocationViewController *)self editLocationMapView];
  v17 = [v19 trailingAnchor];
  v18 = [(EditLocationViewController *)self view];
  v16 = [v18 trailingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v25[1] = v15;
  v14 = [(EditLocationViewController *)self editLocationMapView];
  v13 = [v14 topAnchor];
  v3 = [(EditLocationViewController *)self view];
  v4 = [v3 safeAreaLayoutGuide];
  v5 = [v4 topAnchor];
  v6 = [v13 constraintEqualToAnchor:v5];
  v25[2] = v6;
  v7 = [(EditLocationViewController *)self editLocationMapView];
  v8 = [v7 bottomAnchor];
  v9 = [(EditLocationViewController *)self view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
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
  v4 = [(EditLocationViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [RAPEditLocationMapView alloc];
  if ([(EditLocationViewController *)self isShowingTraffic])
  {
    v6 = 7;
  }

  else
  {
    v7 = [(EditLocationViewController *)self mapType];
    v8 = 3;
    v9 = 7;
    if (v7 != 108)
    {
      v9 = 0;
    }

    if (v7 != 104)
    {
      v8 = v9;
    }

    v10 = 5;
    v11 = -1;
    if (v7 != 103)
    {
      v11 = 0;
    }

    if (v7 != 4)
    {
      v10 = v11;
    }

    if (v7 <= 103)
    {
      v8 = v10;
    }

    v12 = 2;
    v13 = 1;
    v14 = 6;
    if (v7 != 3)
    {
      v14 = 0;
    }

    if (v7 != 2)
    {
      v13 = v14;
    }

    if (v7 != 1)
    {
      v12 = v13;
    }

    if (v7 <= 3)
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

  v19 = [(EditLocationViewController *)self view];
  [v19 addSubview:self->_editLocationMapView];

  [(EditLocationViewController *)self setupConstraints];
  v20 = [(EditLocationViewController *)self navigationItem];
  v21 = [v20 rightBarButtonItem];
  [v21 setEnabled:0];
}

- (EditLocationViewController)initWithInitialCoordinates:(CLLocationCoordinate2D)a3 inMapRect:(id)a4 analyticsTarget:(int)a5 markerViewAttributes:(id)a6
{
  var1 = a4.var1.var1;
  var0 = a4.var1.var0;
  v9 = a4.var0.var1;
  v10 = a4.var0.var0;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v14 = a6;
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
    v15->_analyticsTarget = a5;
    v17 = [v14 copy];
    attributes = v16->_attributes;
    v16->_attributes = v17;
  }

  return v16;
}

@end