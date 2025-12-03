@interface MarkedLocationRefinementViewController
- (MarkedLocationRefinementViewController)initWithCamera:(id)camera crosshairType:(unint64_t)type;
- (MarkedLocationRefinementViewController)initWithMarkedLocation:(id)location;
- (UIViewController)originalPresenterViewController;
- (double)footerHeight;
- (void)_cancel:(id)_cancel;
- (void)_done:(id)_done;
- (void)_removeMarkedLocation:(id)location;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation MarkedLocationRefinementViewController

- (UIViewController)originalPresenterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_originalPresenterViewController);

  return WeakRetained;
}

- (void)_removeMarkedLocation:(id)location
{
  delegate = [(LocationRefinementViewController *)self delegate];
  [delegate markedLocationRefinementViewControllerSelectedRemoveMarkedLocation:self];

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:6005 onTarget:623 eventValue:0];
}

- (void)_cancel:(id)_cancel
{
  delegate = [(LocationRefinementViewController *)self delegate];
  [delegate markedLocationRefinementViewControllerDidCancel:self];

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:18 onTarget:623 eventValue:0];
}

- (void)_done:(id)_done
{
  delegate = [(LocationRefinementViewController *)self delegate];
  [(LocationRefinementViewController *)self selectedCoordinate];
  [delegate locationRefinementViewController:self didSelectCoordinate:?];

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:1030 onTarget:623 eventValue:0];
}

- (double)footerHeight
{
  view = [(MarkedLocationRefinementViewController *)self view];
  [view safeAreaInsets];
  v4 = v3 + 49.0;

  return v4;
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = MarkedLocationRefinementViewController;
  [(MarkedLocationRefinementViewController *)&v3 viewLayoutMarginsDidChange];
  [(MarkedLocationRefinementViewController *)self footerHeight];
  [(NSLayoutConstraint *)self->_heightBarConstraint setConstant:?];
}

- (void)viewDidLoad
{
  v80.receiver = self;
  v80.super_class = MarkedLocationRefinementViewController;
  [(LocationRefinementViewController *)&v80 viewDidLoad];
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
  v8 = [v7 localizedStringForKey:@"Edit Location Instructions [Marked Location]" value:@"localized string not found" table:0];
  [(LocationRefinementViewController *)self setInstructionsText:v8];

  LODWORD(v7) = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v9 = +[NSBundle mainBundle];
  v10 = v9;
  if (v7)
  {
    v11 = @"Move Location [Marked Location][Title]";
  }

  else
  {
    v11 = @"Move Pin [Dropped Pin][Title]";
  }

  v12 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];
  navigationItem = [(MarkedLocationRefinementViewController *)self navigationItem];
  [navigationItem setTitle:v12];

  v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_done:"];
  navigationItem2 = [(MarkedLocationRefinementViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v14];

  v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel:"];
  navigationItem3 = [(MarkedLocationRefinementViewController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:v16];

  v74 = objc_alloc_init(UINavigationBarAppearance);
  [v74 configureWithDefaultBackground];
  navigationItem4 = [(MarkedLocationRefinementViewController *)self navigationItem];
  [navigationItem4 setScrollEdgeAppearance:v74];

  userLocationButtonBottomConstraint = [(LocationRefinementViewController *)self userLocationButtonBottomConstraint];
  [userLocationButtonBottomConstraint setActive:0];

  v78 = +[NSMutableArray array];
  view = [(MarkedLocationRefinementViewController *)self view];
  v21 = [MapsTheme visualEffectViewAllowingBlur:1];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v21];
  heightAnchor = [v21 heightAnchor];
  [(MarkedLocationRefinementViewController *)self footerHeight];
  v23 = [heightAnchor constraintEqualToConstant:?];
  heightBarConstraint = self->_heightBarConstraint;
  self->_heightBarConstraint = v23;
  selfCopy = self;

  v83[0] = self->_heightBarConstraint;
  v25 = v21;
  leadingAnchor = [v21 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v83[1] = v27;
  trailingAnchor = [v21 trailingAnchor];
  v29 = view;
  v73 = view;
  trailingAnchor2 = [view trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v83[2] = v31;
  bottomAnchor = [v25 bottomAnchor];
  bottomAnchor2 = [v29 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v83[3] = v34;
  v35 = [NSArray arrayWithObjects:v83 count:4];
  [v78 addObjectsFromArray:v35];

  v36 = objc_alloc_init(MKViewWithHairline);
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setTopHairlineHidden:0];
  [v36 setBottomHairlineHidden:1];
  v37 = +[UIColor _barHairlineShadowColor];
  [v36 setHairlineColor:v37];

  view2 = [(MarkedLocationRefinementViewController *)selfCopy view];
  [view2 addSubview:v36];

  v39 = v25;
  topAnchor = [v25 topAnchor];
  topAnchor2 = [v36 topAnchor];
  v68 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v82[0] = v68;
  leadingAnchor3 = [v25 leadingAnchor];
  v41 = v36;
  leadingAnchor4 = [v36 leadingAnchor];
  v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v82[1] = v43;
  v75 = v25;
  trailingAnchor3 = [v25 trailingAnchor];
  v45 = v41;
  v77 = v41;
  trailingAnchor4 = [v41 trailingAnchor];
  v47 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v82[2] = v47;
  bottomAnchor3 = [v39 bottomAnchor];
  bottomAnchor4 = [v45 bottomAnchor];
  v50 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v82[3] = v50;
  v51 = [NSArray arrayWithObjects:v82 count:4];
  [v78 addObjectsFromArray:v51];

  v52 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v52 _mapkit_addPointerInteraction];
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v53 = @"Remove Location [Marked Location]";
  }

  else
  {
    v53 = @"Remove Pin [Dropped Pin]";
  }

  v54 = +[NSBundle mainBundle];
  v72 = [v54 localizedStringForKey:v53 value:@"localized string not found" table:0];

  v55 = +[UIColor systemRedColor];
  [v52 setTitleColor:v55 forState:0];

  [v52 setTitle:v72 forState:0];
  [v52 addTarget:selfCopy action:"_removeMarkedLocation:" forControlEvents:64];
  [v77 addSubview:v52];
  heightAnchor2 = [v52 heightAnchor];
  v56 = [heightAnchor2 constraintEqualToConstant:49.0];
  v81[0] = v56;
  centerXAnchor = [v75 centerXAnchor];
  centerXAnchor2 = [v52 centerXAnchor];
  v59 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v81[1] = v59;
  topAnchor3 = [v75 topAnchor];
  topAnchor4 = [v52 topAnchor];
  v62 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v81[2] = v62;
  v63 = [NSArray arrayWithObjects:v81 count:3];
  [v78 addObjectsFromArray:v63];

  snapToUserLocationContainerView = [(LocationRefinementViewController *)selfCopy snapToUserLocationContainerView];
  bottomAnchor5 = [snapToUserLocationContainerView bottomAnchor];
  topAnchor5 = [v75 topAnchor];
  v67 = [bottomAnchor5 constraintEqualToAnchor:topAnchor5 constant:-12.0];
  [v78 addObject:v67];

  [NSLayoutConstraint activateConstraints:v78];
}

- (MarkedLocationRefinementViewController)initWithMarkedLocation:(id)location
{
  locationCopy = location;
  v6 = objc_alloc_init(MKMapCamera);
  [locationCopy coordinate];
  [v6 setCenterCoordinate:?];
  [v6 setAltitude:941.0];
  v10.receiver = self;
  v10.super_class = MarkedLocationRefinementViewController;
  v7 = [(LocationRefinementViewController *)&v10 initWithCamera:v6 crosshairType:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_originalMarkedLocation, location);
  }

  return v8;
}

- (MarkedLocationRefinementViewController)initWithCamera:(id)camera crosshairType:(unint64_t)type
{
  [NSException raise:NSInternalInconsistencyException format:@"not supported"];

  return 0;
}

@end