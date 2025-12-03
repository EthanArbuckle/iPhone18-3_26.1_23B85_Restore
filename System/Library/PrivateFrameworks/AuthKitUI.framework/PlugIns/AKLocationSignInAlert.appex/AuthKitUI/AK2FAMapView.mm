@interface AK2FAMapView
- (AK2FAMapView)initWithCoordinate:(CLLocationCoordinate2D)coordinate size:(CGSize)size;
- (CGSize)size;
- (CLLocationCoordinate2D)coordinate;
- (void)_onqueue_setImageForSnapshot:(id)snapshot;
- (void)_setImageForSnapshot:(id)snapshot;
- (void)startLoadingImage;
- (void)viewDidLoad;
@end

@implementation AK2FAMapView

- (AK2FAMapView)initWithCoordinate:(CLLocationCoordinate2D)coordinate size:(CGSize)size
{
  coordinateCopy = coordinate;
  sizeCopy = size;
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AK2FAMapView;
  v8 = [(AK2FAMapView *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v8->_coordinate = coordinateCopy;
    v8->_size = sizeCopy;
  }

  v5 = v8;
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v38 = a2;
  v37.receiver = self;
  v37.super_class = AK2FAMapView;
  [(AK2FAMapView *)&v37 viewDidLoad];
  v2 = objc_alloc_init(UIImageView);
  mapView = selfCopy->_mapView;
  selfCopy->_mapView = v2;

  [(UIImageView *)selfCopy->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  spinner = selfCopy->_spinner;
  selfCopy->_spinner = v4;

  [(UIActivityIndicatorView *)selfCopy->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)selfCopy->_mapView center];
  [(UIActivityIndicatorView *)selfCopy->_spinner setCenter:v6, v7];
  [(UIActivityIndicatorView *)selfCopy->_spinner setHidesWhenStopped:1];
  [(UIImageView *)selfCopy->_mapView addSubview:selfCopy->_spinner];
  centerXAnchor = [(UIActivityIndicatorView *)selfCopy->_spinner centerXAnchor];
  centerXAnchor2 = [(UIImageView *)selfCopy->_mapView centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:?];
  v41[0] = v16;
  centerYAnchor = [(UIActivityIndicatorView *)selfCopy->_spinner centerYAnchor];
  centerYAnchor2 = [(UIImageView *)selfCopy->_mapView centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:?];
  v41[1] = v13;
  heightAnchor = [(UIActivityIndicatorView *)selfCopy->_spinner heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:?];
  v41[2] = v11;
  widthAnchor = [(UIActivityIndicatorView *)selfCopy->_spinner widthAnchor];
  v9 = [widthAnchor constraintEqualToConstant:32.0];
  v41[3] = v9;
  v8 = [NSArray arrayWithObjects:v41 count:?];
  [NSLayoutConstraint activateConstraints:?];

  view = [(AK2FAMapView *)selfCopy view];
  [view addSubview:selfCopy->_mapView];

  topAnchor = [(UIImageView *)selfCopy->_mapView topAnchor];
  view2 = [(AK2FAMapView *)selfCopy view];
  topAnchor2 = [view2 topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:?];
  v40[0] = v33;
  leadingAnchor = [(UIImageView *)selfCopy->_mapView leadingAnchor];
  view3 = [(AK2FAMapView *)selfCopy view];
  leadingAnchor2 = [view3 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:?];
  v40[1] = v29;
  trailingAnchor = [(UIImageView *)selfCopy->_mapView trailingAnchor];
  view4 = [(AK2FAMapView *)selfCopy view];
  trailingAnchor2 = [view4 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:?];
  v40[2] = v25;
  bottomAnchor = [(UIImageView *)selfCopy->_mapView bottomAnchor];
  view5 = [(AK2FAMapView *)selfCopy view];
  bottomAnchor2 = [view5 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:?];
  v40[3] = v21;
  v20 = [NSArray arrayWithObjects:v40 count:4];
  [NSLayoutConstraint activateConstraints:?];

  [(AK2FAMapView *)selfCopy startLoadingImage];
}

- (void)startLoadingImage
{
  selfCopy = self;
  v26[1] = a2;
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  v26[0] = objc_alloc_init(MKMapSnapshotOptions);
  width = selfCopy->_size.width;
  height = selfCopy->_size.height;
  sub_1000059A4();
  *&v25 = v4;
  *(&v25 + 1) = v5;
  v24 = v25;
  [v26[0] setSize:{v4, v5}];
  [v26[0] setMapType:?];
  coordinate = selfCopy->_coordinate;
  *&v23 = 0x3FD999999999999ALL;
  *(&v23 + 1) = 0x3FD999999999999ALL;
  v20 = coordinate;
  v21 = v23;
  [v26[0] setRegion:{coordinate, 0.4, 0.4}];
  view = [(AK2FAMapView *)selfCopy view];
  traitCollection = [view traitCollection];
  [v26[0] setTraitCollection:?];

  v6 = [MKMapSnapshotter alloc];
  v19 = [v6 initWithOptions:v26[0]];
  objc_initWeak(&location, selfCopy);
  queue = dispatch_get_global_queue(25, 0);
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000059D8;
  v14 = &unk_10000C3F0;
  v15 = v19;
  objc_copyWeak(&v17, &location);
  v16 = selfCopy;
  dispatch_async(queue, &v10);

  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&v17);
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&location);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v26, 0);
}

- (void)_setImageForSnapshot:(id)snapshot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, snapshot);
  v13 = _AKLogSystem();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000496C(v16, location[0]);
    _os_log_impl(&_mh_execute_header, v13, v12, "Setting image for snapshot %@", v16, 0xCu);
  }

  objc_storeStrong(&v13, 0);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100005F3C;
  v9 = &unk_10000C418;
  v10 = selfCopy;
  v11 = location[0];
  dispatch_async(queue, &v5);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_setImageForSnapshot:(id)snapshot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, snapshot);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000496C(v27, location[0]);
    _os_log_impl(&_mh_execute_header, v24, v23, "[main queue] Setting image for snapshot %@", v27, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  [(UIActivityIndicatorView *)selfCopy->_spinner stopAnimating];
  image = [location[0] image];
  [(UIImageView *)selfCopy->_mapView setImage:?];

  v22 = objc_opt_new();
  [(UIImageView *)selfCopy->_mapView bounds];
  *&v20 = v3;
  *(&v20 + 1) = v4;
  *&v21 = v5;
  *(&v21 + 1) = v6;
  v18 = v20;
  v19 = v21;
  [v22 setFrame:{v3, v4, v5, v6}];
  [(UIImageView *)selfCopy->_mapView bounds];
  v17 = [UIBezierPath bezierPathWithRoundedRect:v7 cornerRadius:v8, v9, v10, 12.0];
  v14 = v17;
  v11 = v17;
  cGPath = [v14 CGPath];
  [v22 setPath:cGPath];
  v15 = v22;
  layer = [(UIImageView *)selfCopy->_mapView layer];
  [layer setMask:v15];

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (CLLocationCoordinate2D)coordinate
{
  longitude = self->_coordinate.longitude;
  latitude = self->_coordinate.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CGSize)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.height = height;
  result.width = width;
  return result;
}

@end