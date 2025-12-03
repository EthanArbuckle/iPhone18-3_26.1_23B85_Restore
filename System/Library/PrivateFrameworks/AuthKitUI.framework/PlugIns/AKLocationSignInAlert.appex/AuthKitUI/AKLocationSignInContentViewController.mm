@interface AKLocationSignInContentViewController
+ (void)initialize;
- (BOOL)_hasLocationInformation;
- (CLLocationCoordinate2D)_deviceLocation;
- (void)_configureMapView;
- (void)_configureTitleHeaderView;
- (void)_snapshotMapLocation;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation AKLocationSignInContentViewController

+ (void)initialize
{
  if (self == objc_opt_class())
  {
    sub_100003180();
  }
}

- (CLLocationCoordinate2D)_deviceLocation
{
  latitude = [(AKAppleIDAuthenticationContext *)self->_authenticationContext latitude];
  [latitude doubleValue];
  v9 = v2;
  longitude = [(AKAppleIDAuthenticationContext *)self->_authenticationContext longitude];
  [longitude doubleValue];
  v10 = v3;

  v4 = v9;
  v5 = v10;
  result.longitude = v5;
  result.latitude = v4;
  return result;
}

- (BOOL)_hasLocationInformation
{
  authenticationContext = [(AKLocationSignInContentViewController *)self authenticationContext];
  latitude = [(AKAppleIDAuthenticationContext *)authenticationContext latitude];
  v8 = 0;
  v6 = 0;
  v5 = 1;
  if (!latitude)
  {
    authenticationContext2 = [(AKLocationSignInContentViewController *)self authenticationContext];
    v8 = 1;
    longitude = [(AKAppleIDAuthenticationContext *)authenticationContext2 longitude];
    v6 = 1;
    v5 = longitude != 0;
  }

  if (v6)
  {
  }

  if (v8)
  {
  }

  return v5;
}

- (void)_configureTitleHeaderView
{
  selfCopy = self;
  location[1] = a2;
  v2 = [objc_alloc(sub_100003358()) initWithNibName:0 bundle:?];
  titleHeaderViewController = selfCopy->_titleHeaderViewController;
  selfCopy->_titleHeaderViewController = v2;

  _message = [(AKAppleIDAuthenticationContext *)selfCopy->_authenticationContext _message];
  username = [(AKAppleIDAuthenticationContext *)selfCopy->_authenticationContext username];
  v8 = [AKUsernameFormatter formattedUsernameFromUsername:?];
  v7 = [NSString stringWithFormat:@"%@\n%@", _message, v8];
  contentContainerView = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
  [contentContainerView setTitleText:v7];

  _interpolatedReason = [(AKAppleIDAuthenticationContext *)selfCopy->_authenticationContext _interpolatedReason];
  contentContainerView2 = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController contentContainerView];
  [contentContainerView2 setMessageText:_interpolatedReason];

  [(AKLocationSignInContentViewController *)selfCopy addChildViewController:selfCopy->_titleHeaderViewController];
  location[0] = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
  [location[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(AKLocationSignInContentViewController *)selfCopy view];
  [view addSubview:location[0]];

  view2 = [(AKLocationSignInContentViewController *)selfCopy view];
  v14 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:location[0] relatedBy:7 toItem:? attribute:? multiplier:? constant:?];
  [(NSLayoutConstraint *)v14 setActive:1];

  view3 = [(AKLocationSignInContentViewController *)selfCopy view];
  v16 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:location[0] relatedBy:3 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
  [(NSLayoutConstraint *)v16 setActive:1];

  if (![(AKLocationSignInContentViewController *)selfCopy _hasLocationInformation])
  {
    view4 = [(AKLocationSignInContentViewController *)selfCopy view];
    v4 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:1.0 relatedBy:0.0 toItem:? attribute:? multiplier:? constant:?];
    [(NSLayoutConstraint *)v4 setActive:1];
  }

  objc_storeStrong(location, 0);
}

- (void)_configureMapView
{
  selfCopy = self;
  v52[1] = a2;
  v52[0] = [(AKLocationSignInContentViewController *)self view];
  v2 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v47 = &AKCodeGenerationView__metaData;
  mapView = selfCopy->_mapView;
  selfCopy->_mapView = v2;

  [*(&selfCopy->super.super.super.isa + v47[55].ivar_base_size) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(&selfCopy->super.super.super.isa + v47[55].ivar_base_size) setAlpha:0.0];
  v48 = +[AKFeatureManager sharedManager];
  isAuthKitSolariumFeatureEnabled = [v48 isAuthKitSolariumFeatureEnabled];

  if (isAuthKitSolariumFeatureEnabled)
  {
    v45 = &AKCodeGenerationView__metaData;
    layer = [(UIImageView *)selfCopy->_mapView layer];
    [layer setCornerRadius:26.0];

    layer2 = [(UIImageView *)selfCopy->_mapView layer];
    [layer2 setMasksToBounds:1];
  }

  v42 = v52;
  v21 = &AKCodeGenerationView__metaData;
  [v52[0] addSubview:selfCopy->_mapView];
  v32 = &_AKLogSystem_ptr;
  v14 = NSLayoutConstraint;
  v4 = selfCopy->_mapView;
  v43 = 0;
  v15 = _NSDictionaryOfVariableBindings(@"_mapView", v4, 0);
  v34 = 0;
  v5 = [v14 constraintsWithVisualFormat:@"|[_mapView]|" options:? metrics:? views:?];
  v41 = &v51;
  v51 = v5;

  [v32[60] activateConstraints:v51];
  v17 = v32[60];
  v16 = *(&selfCopy->super.super.super.isa + v21[55].ivar_base_size);
  v25 = &AKCodeGenerationView__metaData;
  view = [(AKBasicLoginContentViewController *)selfCopy->_titleHeaderViewController view];
  v27 = 3;
  v28 = 11;
  v36 = 1.0;
  v18 = [v17 constraintWithItem:v16 attribute:? relatedBy:? toItem:? attribute:? multiplier:? constant:?];
  v38 = 1;
  [v18 setActive:1];

  v6 = v32[60];
  v7 = *(&selfCopy->super.super.super.isa + v21[55].ivar_base_size);
  v35 = 4;
  v37 = 0.0;
  v20 = [v6 constraintWithItem:v7 attribute:4 relatedBy:v34 toItem:v52[0] attribute:v36 multiplier:? constant:?];
  [v20 setActive:v38 & 1];

  v8 = [v32[60] constraintWithItem:*(&selfCopy->super.super.super.isa + v21[55].ivar_base_size) attribute:8 relatedBy:v34 toItem:v43 attribute:v36 multiplier:120.0 constant:?];
  v40 = &v50;
  v50 = v8;
  LODWORD(v9) = 1148846080;
  [v8 setPriority:v9];
  [v50 setActive:v38 & 1];
  v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  v33 = &AKCodeGenerationView__metaData;
  spinnerView = selfCopy->_spinnerView;
  selfCopy->_spinnerView = v10;

  v22 = +[UIColor grayColor];
  [*(&selfCopy->super.super.super.isa + v33[55].reserved) setColor:?];

  [*(&selfCopy->super.super.super.isa + v33[55].reserved) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(&selfCopy->super.super.super.isa + v33[55].reserved) startAnimating];
  [v52[0] addSubview:*(&selfCopy->super.super.super.isa + v33[55].reserved)];
  v23 = v32[60];
  v24 = _NSDictionaryOfVariableBindings(@"_spinnerView", *(&selfCopy->super.super.super + v33[55].reserved), 0);
  v12 = [v23 constraintsWithVisualFormat:@"|[_spinnerView]|" options:v34 metrics:v43 views:?];
  v13 = v51;
  v51 = v12;

  [v32[60] activateConstraints:v51];
  v29 = v32[60];
  v26 = *(&selfCopy->super.super.super.isa + v33[55].reserved);
  view2 = [*(&selfCopy->super.super.super.isa + v25[55].ivar_base_start) view];
  v30 = [v29 constraintWithItem:v26 attribute:v27 relatedBy:v34 toItem:v36 attribute:v37 multiplier:? constant:?];
  [v30 setActive:v38 & 1];

  v39 = [v32[60] constraintWithItem:*(&selfCopy->super.super.super.isa + v33[55].reserved) attribute:v35 relatedBy:v34 toItem:v52[0] attribute:v36 multiplier:v37 constant:?];
  [v39 setActive:v38 & 1];

  [(AKLocationSignInContentViewController *)selfCopy _snapshotMapLocation];
  objc_storeStrong(v40, v43);
  objc_storeStrong(v41, v43);
  objc_storeStrong(v42, v43);
}

- (void)_snapshotMapLocation
{
  selfCopy = self;
  v24[1] = a2;
  v24[0] = objc_alloc_init(MKMapSnapshotOptions);
  sub_10000452C();
  *&v23 = v2;
  *(&v23 + 1) = v3;
  v22 = v23;
  [v24[0] setSize:{v2, v3}];
  [v24[0] setMapType:0];
  [(AKLocationSignInContentViewController *)selfCopy _deviceLocation];
  *&v20 = v4;
  *(&v20 + 1) = v5;
  *&v21 = 0x3FD999999999999ALL;
  *(&v21 + 1) = 0x3FD999999999999ALL;
  v18 = v20;
  v19 = v21;
  [v24[0] setRegion:{v4, v5, 0.4, 0.4}];
  view = [(AKLocationSignInContentViewController *)selfCopy view];
  traitCollection = [view traitCollection];
  [v24[0] setTraitCollection:?];

  v6 = [MKMapSnapshotter alloc];
  v7 = [v6 initWithOptions:v24[0]];
  mapSnapshotter = selfCopy->_mapSnapshotter;
  selfCopy->_mapSnapshotter = v7;

  v11 = selfCopy->_mapSnapshotter;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_100004560;
  v16 = &unk_10000C3A0;
  v17 = selfCopy;
  [(MKMapSnapshotter *)v11 startWithCompletionHandler:?];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v24, 0);
}

- (void)loadView
{
  selfCopy = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = AKLocationSignInContentViewController;
  [(AKLocationSignInContentViewController *)&v9 loadView];
  extensionContext = [(AKLocationSignInContentViewController *)selfCopy extensionContext];
  inputItems = [extensionContext inputItems];
  location = [inputItems firstObject];

  ak_context = [location ak_context];
  [(AKLocationSignInContentViewController *)selfCopy setAuthenticationContext:?];

  [(AKLocationSignInContentViewController *)selfCopy _configureTitleHeaderView];
  if ([(AKLocationSignInContentViewController *)selfCopy _hasLocationInformation])
  {
    [(AKLocationSignInContentViewController *)selfCopy _configureMapView];
  }

  view = [(AKLocationSignInContentViewController *)selfCopy view];
  [view systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v7 = v2;

  [(AKLocationSignInContentViewController *)selfCopy setPreferredContentSize:270.0, v7];
  objc_storeStrong(&location, 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  v3.receiver = self;
  v3.super_class = AKLocationSignInContentViewController;
  [(AKLocationSignInContentViewController *)&v3 viewDidDisappear:1];
  [(MKMapSnapshotter *)selfCopy->_mapSnapshotter cancel];
  objc_storeStrong(&selfCopy->_mapSnapshotter, 0);
}

@end