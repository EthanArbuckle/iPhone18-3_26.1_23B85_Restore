@interface MarkedLocationRefinementViewController
- (MarkedLocationRefinementViewController)initWithCamera:(id)a3 crosshairType:(unint64_t)a4;
- (MarkedLocationRefinementViewController)initWithMarkedLocation:(id)a3;
- (UIViewController)originalPresenterViewController;
- (double)footerHeight;
- (void)_cancel:(id)a3;
- (void)_done:(id)a3;
- (void)_removeMarkedLocation:(id)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation MarkedLocationRefinementViewController

- (UIViewController)originalPresenterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_originalPresenterViewController);

  return WeakRetained;
}

- (void)_removeMarkedLocation:(id)a3
{
  v4 = [(LocationRefinementViewController *)self delegate];
  [v4 markedLocationRefinementViewControllerSelectedRemoveMarkedLocation:self];

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:6005 onTarget:623 eventValue:0];
}

- (void)_cancel:(id)a3
{
  v4 = [(LocationRefinementViewController *)self delegate];
  [v4 markedLocationRefinementViewControllerDidCancel:self];

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:18 onTarget:623 eventValue:0];
}

- (void)_done:(id)a3
{
  v4 = [(LocationRefinementViewController *)self delegate];
  [(LocationRefinementViewController *)self selectedCoordinate];
  [v4 locationRefinementViewController:self didSelectCoordinate:?];

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:1030 onTarget:623 eventValue:0];
}

- (double)footerHeight
{
  v2 = [(MarkedLocationRefinementViewController *)self view];
  [v2 safeAreaInsets];
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
  v4 = [v3 isUsingOfflineMaps];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(LocationRefinementViewController *)self mapView];
  [v6 setMapType:v5];

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
  v13 = [(MarkedLocationRefinementViewController *)self navigationItem];
  [v13 setTitle:v12];

  v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_done:"];
  v15 = [(MarkedLocationRefinementViewController *)self navigationItem];
  [v15 setRightBarButtonItem:v14];

  v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel:"];
  v17 = [(MarkedLocationRefinementViewController *)self navigationItem];
  [v17 setLeftBarButtonItem:v16];

  v74 = objc_alloc_init(UINavigationBarAppearance);
  [v74 configureWithDefaultBackground];
  v18 = [(MarkedLocationRefinementViewController *)self navigationItem];
  [v18 setScrollEdgeAppearance:v74];

  v19 = [(LocationRefinementViewController *)self userLocationButtonBottomConstraint];
  [v19 setActive:0];

  v78 = +[NSMutableArray array];
  v20 = [(MarkedLocationRefinementViewController *)self view];
  v21 = [MapsTheme visualEffectViewAllowingBlur:1];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 addSubview:v21];
  v22 = [v21 heightAnchor];
  [(MarkedLocationRefinementViewController *)self footerHeight];
  v23 = [v22 constraintEqualToConstant:?];
  heightBarConstraint = self->_heightBarConstraint;
  self->_heightBarConstraint = v23;
  v79 = self;

  v83[0] = self->_heightBarConstraint;
  v25 = v21;
  v76 = [v21 leadingAnchor];
  v26 = [v20 leadingAnchor];
  v27 = [v76 constraintEqualToAnchor:v26];
  v83[1] = v27;
  v28 = [v21 trailingAnchor];
  v29 = v20;
  v73 = v20;
  v30 = [v20 trailingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v83[2] = v31;
  v32 = [v25 bottomAnchor];
  v33 = [v29 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  v83[3] = v34;
  v35 = [NSArray arrayWithObjects:v83 count:4];
  [v78 addObjectsFromArray:v35];

  v36 = objc_alloc_init(MKViewWithHairline);
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setTopHairlineHidden:0];
  [v36 setBottomHairlineHidden:1];
  v37 = +[UIColor _barHairlineShadowColor];
  [v36 setHairlineColor:v37];

  v38 = [(MarkedLocationRefinementViewController *)v79 view];
  [v38 addSubview:v36];

  v39 = v25;
  v71 = [v25 topAnchor];
  v69 = [v36 topAnchor];
  v68 = [v71 constraintEqualToAnchor:v69];
  v82[0] = v68;
  v40 = [v25 leadingAnchor];
  v41 = v36;
  v42 = [v36 leadingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  v82[1] = v43;
  v75 = v25;
  v44 = [v25 trailingAnchor];
  v45 = v41;
  v77 = v41;
  v46 = [v41 trailingAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  v82[2] = v47;
  v48 = [v39 bottomAnchor];
  v49 = [v45 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
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
  [v52 addTarget:v79 action:"_removeMarkedLocation:" forControlEvents:64];
  [v77 addSubview:v52];
  v70 = [v52 heightAnchor];
  v56 = [v70 constraintEqualToConstant:49.0];
  v81[0] = v56;
  v57 = [v75 centerXAnchor];
  v58 = [v52 centerXAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];
  v81[1] = v59;
  v60 = [v75 topAnchor];
  v61 = [v52 topAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  v81[2] = v62;
  v63 = [NSArray arrayWithObjects:v81 count:3];
  [v78 addObjectsFromArray:v63];

  v64 = [(LocationRefinementViewController *)v79 snapToUserLocationContainerView];
  v65 = [v64 bottomAnchor];
  v66 = [v75 topAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:-12.0];
  [v78 addObject:v67];

  [NSLayoutConstraint activateConstraints:v78];
}

- (MarkedLocationRefinementViewController)initWithMarkedLocation:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MKMapCamera);
  [v5 coordinate];
  [v6 setCenterCoordinate:?];
  [v6 setAltitude:941.0];
  v10.receiver = self;
  v10.super_class = MarkedLocationRefinementViewController;
  v7 = [(LocationRefinementViewController *)&v10 initWithCamera:v6 crosshairType:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_originalMarkedLocation, a3);
  }

  return v8;
}

- (MarkedLocationRefinementViewController)initWithCamera:(id)a3 crosshairType:(unint64_t)a4
{
  [NSException raise:NSInternalInconsistencyException format:@"not supported"];

  return 0;
}

@end