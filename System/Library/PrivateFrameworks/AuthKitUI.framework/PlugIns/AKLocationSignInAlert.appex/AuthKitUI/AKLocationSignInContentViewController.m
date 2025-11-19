@interface AKLocationSignInContentViewController
+ (void)initialize;
- (BOOL)_hasLocationInformation;
- (CLLocationCoordinate2D)_deviceLocation;
- (void)_configureMapView;
- (void)_configureTitleHeaderView;
- (void)_snapshotMapLocation;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation AKLocationSignInContentViewController

+ (void)initialize
{
  if (a1 == objc_opt_class())
  {
    sub_100003180();
  }
}

- (CLLocationCoordinate2D)_deviceLocation
{
  v7 = [(AKAppleIDAuthenticationContext *)self->_authenticationContext latitude];
  [v7 doubleValue];
  v9 = v2;
  v6 = [(AKAppleIDAuthenticationContext *)self->_authenticationContext longitude];
  [v6 doubleValue];
  v10 = v3;

  v4 = v9;
  v5 = v10;
  result.longitude = v5;
  result.latitude = v4;
  return result;
}

- (BOOL)_hasLocationInformation
{
  v3 = [(AKLocationSignInContentViewController *)self authenticationContext];
  v4 = [(AKAppleIDAuthenticationContext *)v3 latitude];
  v8 = 0;
  v6 = 0;
  v5 = 1;
  if (!v4)
  {
    v9 = [(AKLocationSignInContentViewController *)self authenticationContext];
    v8 = 1;
    v7 = [(AKAppleIDAuthenticationContext *)v9 longitude];
    v6 = 1;
    v5 = v7 != 0;
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
  v19 = self;
  location[1] = a2;
  v2 = [objc_alloc(sub_100003358()) initWithNibName:0 bundle:?];
  titleHeaderViewController = v19->_titleHeaderViewController;
  v19->_titleHeaderViewController = v2;

  v10 = [(AKAppleIDAuthenticationContext *)v19->_authenticationContext _message];
  v9 = [(AKAppleIDAuthenticationContext *)v19->_authenticationContext username];
  v8 = [AKUsernameFormatter formattedUsernameFromUsername:?];
  v7 = [NSString stringWithFormat:@"%@\n%@", v10, v8];
  v6 = [(AKBasicLoginContentViewController *)v19->_titleHeaderViewController contentContainerView];
  [v6 setTitleText:v7];

  v12 = [(AKAppleIDAuthenticationContext *)v19->_authenticationContext _interpolatedReason];
  v11 = [(AKBasicLoginContentViewController *)v19->_titleHeaderViewController contentContainerView];
  [v11 setMessageText:v12];

  [(AKLocationSignInContentViewController *)v19 addChildViewController:v19->_titleHeaderViewController];
  location[0] = [(AKBasicLoginContentViewController *)v19->_titleHeaderViewController view];
  [location[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(AKLocationSignInContentViewController *)v19 view];
  [v13 addSubview:location[0]];

  v15 = [(AKLocationSignInContentViewController *)v19 view];
  v14 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:location[0] relatedBy:7 toItem:? attribute:? multiplier:? constant:?];
  [(NSLayoutConstraint *)v14 setActive:1];

  v17 = [(AKLocationSignInContentViewController *)v19 view];
  v16 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:location[0] relatedBy:3 toItem:0 attribute:1.0 multiplier:0.0 constant:?];
  [(NSLayoutConstraint *)v16 setActive:1];

  if (![(AKLocationSignInContentViewController *)v19 _hasLocationInformation])
  {
    v5 = [(AKLocationSignInContentViewController *)v19 view];
    v4 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:1.0 relatedBy:0.0 toItem:? attribute:? multiplier:? constant:?];
    [(NSLayoutConstraint *)v4 setActive:1];
  }

  objc_storeStrong(location, 0);
}

- (void)_configureMapView
{
  v53 = self;
  v52[1] = a2;
  v52[0] = [(AKLocationSignInContentViewController *)self view];
  v2 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v47 = &AKCodeGenerationView__metaData;
  mapView = v53->_mapView;
  v53->_mapView = v2;

  [*(&v53->super.super.super.isa + v47[55].ivar_base_size) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(&v53->super.super.super.isa + v47[55].ivar_base_size) setAlpha:0.0];
  v48 = +[AKFeatureManager sharedManager];
  v49 = [v48 isAuthKitSolariumFeatureEnabled];

  if (v49)
  {
    v45 = &AKCodeGenerationView__metaData;
    v44 = [(UIImageView *)v53->_mapView layer];
    [v44 setCornerRadius:26.0];

    v46 = [(UIImageView *)v53->_mapView layer];
    [v46 setMasksToBounds:1];
  }

  v42 = v52;
  v21 = &AKCodeGenerationView__metaData;
  [v52[0] addSubview:v53->_mapView];
  v32 = &_AKLogSystem_ptr;
  v14 = NSLayoutConstraint;
  v4 = v53->_mapView;
  v43 = 0;
  v15 = _NSDictionaryOfVariableBindings(@"_mapView", v4, 0);
  v34 = 0;
  v5 = [v14 constraintsWithVisualFormat:@"|[_mapView]|" options:? metrics:? views:?];
  v41 = &v51;
  v51 = v5;

  [v32[60] activateConstraints:v51];
  v17 = v32[60];
  v16 = *(&v53->super.super.super.isa + v21[55].ivar_base_size);
  v25 = &AKCodeGenerationView__metaData;
  v19 = [(AKBasicLoginContentViewController *)v53->_titleHeaderViewController view];
  v27 = 3;
  v28 = 11;
  v36 = 1.0;
  v18 = [v17 constraintWithItem:v16 attribute:? relatedBy:? toItem:? attribute:? multiplier:? constant:?];
  v38 = 1;
  [v18 setActive:1];

  v6 = v32[60];
  v7 = *(&v53->super.super.super.isa + v21[55].ivar_base_size);
  v35 = 4;
  v37 = 0.0;
  v20 = [v6 constraintWithItem:v7 attribute:4 relatedBy:v34 toItem:v52[0] attribute:v36 multiplier:? constant:?];
  [v20 setActive:v38 & 1];

  v8 = [v32[60] constraintWithItem:*(&v53->super.super.super.isa + v21[55].ivar_base_size) attribute:8 relatedBy:v34 toItem:v43 attribute:v36 multiplier:120.0 constant:?];
  v40 = &v50;
  v50 = v8;
  LODWORD(v9) = 1148846080;
  [v8 setPriority:v9];
  [v50 setActive:v38 & 1];
  v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  v33 = &AKCodeGenerationView__metaData;
  spinnerView = v53->_spinnerView;
  v53->_spinnerView = v10;

  v22 = +[UIColor grayColor];
  [*(&v53->super.super.super.isa + v33[55].reserved) setColor:?];

  [*(&v53->super.super.super.isa + v33[55].reserved) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(&v53->super.super.super.isa + v33[55].reserved) startAnimating];
  [v52[0] addSubview:*(&v53->super.super.super.isa + v33[55].reserved)];
  v23 = v32[60];
  v24 = _NSDictionaryOfVariableBindings(@"_spinnerView", *(&v53->super.super.super + v33[55].reserved), 0);
  v12 = [v23 constraintsWithVisualFormat:@"|[_spinnerView]|" options:v34 metrics:v43 views:?];
  v13 = v51;
  v51 = v12;

  [v32[60] activateConstraints:v51];
  v29 = v32[60];
  v26 = *(&v53->super.super.super.isa + v33[55].reserved);
  v31 = [*(&v53->super.super.super.isa + v25[55].ivar_base_start) view];
  v30 = [v29 constraintWithItem:v26 attribute:v27 relatedBy:v34 toItem:v36 attribute:v37 multiplier:? constant:?];
  [v30 setActive:v38 & 1];

  v39 = [v32[60] constraintWithItem:*(&v53->super.super.super.isa + v33[55].reserved) attribute:v35 relatedBy:v34 toItem:v52[0] attribute:v36 multiplier:v37 constant:?];
  [v39 setActive:v38 & 1];

  [(AKLocationSignInContentViewController *)v53 _snapshotMapLocation];
  objc_storeStrong(v40, v43);
  objc_storeStrong(v41, v43);
  objc_storeStrong(v42, v43);
}

- (void)_snapshotMapLocation
{
  v25 = self;
  v24[1] = a2;
  v24[0] = objc_alloc_init(MKMapSnapshotOptions);
  sub_10000452C();
  *&v23 = v2;
  *(&v23 + 1) = v3;
  v22 = v23;
  [v24[0] setSize:{v2, v3}];
  [v24[0] setMapType:0];
  [(AKLocationSignInContentViewController *)v25 _deviceLocation];
  *&v20 = v4;
  *(&v20 + 1) = v5;
  *&v21 = 0x3FD999999999999ALL;
  *(&v21 + 1) = 0x3FD999999999999ALL;
  v18 = v20;
  v19 = v21;
  [v24[0] setRegion:{v4, v5, 0.4, 0.4}];
  v10 = [(AKLocationSignInContentViewController *)v25 view];
  v9 = [v10 traitCollection];
  [v24[0] setTraitCollection:?];

  v6 = [MKMapSnapshotter alloc];
  v7 = [v6 initWithOptions:v24[0]];
  mapSnapshotter = v25->_mapSnapshotter;
  v25->_mapSnapshotter = v7;

  v11 = v25->_mapSnapshotter;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_100004560;
  v16 = &unk_10000C3A0;
  v17 = v25;
  [(MKMapSnapshotter *)v11 startWithCompletionHandler:?];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v24, 0);
}

- (void)loadView
{
  v11 = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = AKLocationSignInContentViewController;
  [(AKLocationSignInContentViewController *)&v9 loadView];
  v5 = [(AKLocationSignInContentViewController *)v11 extensionContext];
  v4 = [v5 inputItems];
  location = [v4 firstObject];

  v6 = [location ak_context];
  [(AKLocationSignInContentViewController *)v11 setAuthenticationContext:?];

  [(AKLocationSignInContentViewController *)v11 _configureTitleHeaderView];
  if ([(AKLocationSignInContentViewController *)v11 _hasLocationInformation])
  {
    [(AKLocationSignInContentViewController *)v11 _configureMapView];
  }

  v3 = [(AKLocationSignInContentViewController *)v11 view];
  [v3 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v7 = v2;

  [(AKLocationSignInContentViewController *)v11 setPreferredContentSize:270.0, v7];
  objc_storeStrong(&location, 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKLocationSignInContentViewController;
  [(AKLocationSignInContentViewController *)&v3 viewDidDisappear:1];
  [(MKMapSnapshotter *)v6->_mapSnapshotter cancel];
  objc_storeStrong(&v6->_mapSnapshotter, 0);
}

@end