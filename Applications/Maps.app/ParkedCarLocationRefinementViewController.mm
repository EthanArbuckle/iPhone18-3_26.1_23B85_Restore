@interface ParkedCarLocationRefinementViewController
- (ParkedCarLocationRefinementViewController)initWithCamera:(id)camera parkedCar:(id)car;
- (void)_cancel:(id)_cancel;
- (void)_done:(id)_done;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ParkedCarLocationRefinementViewController

- (void)_cancel:(id)_cancel
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:18 onTarget:623 eventValue:0];

  presentingViewController = [(ParkedCarLocationRefinementViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_done:(id)_done
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:17 onTarget:623 eventValue:0];

  mapView = [(LocationRefinementViewController *)self mapView];
  [(MKMarkerAnnotationView *)self->_annotationView center];
  v7 = v6;
  v9 = v8;
  view = [(ParkedCarLocationRefinementViewController *)self view];
  [mapView convertPoint:view toCoordinateFromView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  delegate = [(LocationRefinementViewController *)self delegate];
  [delegate locationRefinementViewController:self didSelectCoordinate:{v12, v14}];

  presentingViewController = [(ParkedCarLocationRefinementViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLayoutSubviews
{
  if ([(LocationRefinementViewController *)self needsInitialCameraPosition])
  {
    instructionsContainer = [(LocationRefinementViewController *)self instructionsContainer];
    [instructionsContainer frame];
    MaxY = CGRectGetMaxY(v28);
    mapView = [(LocationRefinementViewController *)self mapView];
    [mapView frame];
    v6 = MaxY - CGRectGetMinY(v29);
    mapView2 = [(LocationRefinementViewController *)self mapView];
    [mapView2 _setEdgeInsets:{v6, 0.0, 0.0, 0.0}];

    mapView3 = [(LocationRefinementViewController *)self mapView];
    [mapView3 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    mapView4 = [(LocationRefinementViewController *)self mapView];
    [mapView4 _edgeInsets];
    v19 = v18 + v10;
    v21 = v20 + v12;
    v23 = v14 - (v18 + v22);
    v25 = v16 - (v20 + v24);

    v30.origin.x = v19;
    v30.origin.y = v21;
    v30.size.width = v23;
    v30.size.height = v25;
    MidX = CGRectGetMidX(v30);
    v31.origin.x = v19;
    v31.origin.y = v21;
    v31.size.width = v23;
    v31.size.height = v25;
    [(MKMarkerAnnotationView *)self->_annotationView setCenter:MidX, CGRectGetMidY(v31)];
    [(MKMarkerAnnotationView *)self->_annotationView setHidden:0];
  }

  v27.receiver = self;
  v27.super_class = ParkedCarLocationRefinementViewController;
  [(LocationRefinementViewController *)&v27 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)appear
{
  v20.receiver = self;
  v20.super_class = ParkedCarLocationRefinementViewController;
  [(LocationRefinementViewController *)&v20 viewWillAppear:appear];
  presentingViewController = [(ParkedCarLocationRefinementViewController *)self presentingViewController];
  view = [presentingViewController view];
  window = [view window];
  screen = [window screen];
  [screen scale];
  v9 = v8;

  v10 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
  v11 = [GEOFeatureStyleAttributes styleAttributesForCalloutWithAttributes:v10];

  mapView = [(LocationRefinementViewController *)self mapView];
  _mapLayer = [mapView _mapLayer];
  v14 = [_mapLayer iconForStyleAttributes:v11 contentScale:8 size:1 transparent:v9];

  if (v14)
  {
    v15 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v14 fillColor]);
    [(MKMarkerAnnotationView *)self->_annotationView setMarkerTintColor:v15];

    v16 = CGImageRetain([v14 image]);
    v17 = (CGImageGetWidth(v16) - v9 * 40.0) * 0.5;
    v21.origin.y = (CGImageGetHeight(v16) - v9 * 40.0) * 0.5;
    v21.origin.x = v17;
    v21.size.width = v9 * 40.0;
    v21.size.height = v9 * 40.0;
    v18 = CGImageCreateWithImageInRect(v16, v21);
    CGImageRelease(v16);
    v19 = [UIImage imageWithCGImage:v18 scale:0 orientation:v9];
    [(MKMarkerAnnotationView *)self->_annotationView setGlyphImage:v19];

    CGImageRelease(v18);
    [(MKMarkerAnnotationView *)self->_annotationView prepareForDisplay];
  }
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = ParkedCarLocationRefinementViewController;
  [(LocationRefinementViewController *)&v20 viewDidLoad];
  v3 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v3 isUsingOfflineMaps];

  if (isUsingOfflineMaps)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  mapView = [(LocationRefinementViewController *)self mapView];
  [mapView setMapType:v5];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Parked Car [Location Refinement]" value:@"localized string not found" table:0];
  [(ParkedCarLocationRefinementViewController *)self setTitle:v8];

  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel:"];
  navigationItem = [(ParkedCarLocationRefinementViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v9];

  v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_done:"];
  navigationItem2 = [(ParkedCarLocationRefinementViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v11];

  v13 = objc_alloc_init(UINavigationBarAppearance);
  [v13 configureWithDefaultBackground];
  navigationItem3 = [(ParkedCarLocationRefinementViewController *)self navigationItem];
  [navigationItem3 setScrollEdgeAppearance:v13];

  v15 = [[MKMarkerAnnotationView alloc] initWithAnnotation:0 reuseIdentifier:0];
  annotationView = self->_annotationView;
  self->_annotationView = v15;

  [(MKMarkerAnnotationView *)self->_annotationView setHidden:1];
  [(MKMarkerAnnotationView *)self->_annotationView setSelected:1];
  view = [(ParkedCarLocationRefinementViewController *)self view];
  [view addSubview:self->_annotationView];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"ParkedCar_LocationRefinement_Instructions" value:@"localized string not found" table:0];
  [(LocationRefinementViewController *)self setInstructionsText:v19];
}

- (ParkedCarLocationRefinementViewController)initWithCamera:(id)camera parkedCar:(id)car
{
  carCopy = car;
  v12.receiver = self;
  v12.super_class = ParkedCarLocationRefinementViewController;
  v8 = [(LocationRefinementViewController *)&v12 initWithCamera:camera crosshairType:4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parkedCar, car);
    v10 = v9;
  }

  return v9;
}

@end