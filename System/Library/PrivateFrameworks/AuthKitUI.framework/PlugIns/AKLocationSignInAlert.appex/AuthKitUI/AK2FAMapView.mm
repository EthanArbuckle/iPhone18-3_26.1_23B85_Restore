@interface AK2FAMapView
- (AK2FAMapView)initWithCoordinate:(CLLocationCoordinate2D)a3 size:(CGSize)a4;
- (CGSize)size;
- (CLLocationCoordinate2D)coordinate;
- (void)_onqueue_setImageForSnapshot:(id)a3;
- (void)_setImageForSnapshot:(id)a3;
- (void)startLoadingImage;
- (void)viewDidLoad;
@end

@implementation AK2FAMapView

- (AK2FAMapView)initWithCoordinate:(CLLocationCoordinate2D)a3 size:(CGSize)a4
{
  v10 = a3;
  v9 = a4;
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AK2FAMapView;
  v8 = [(AK2FAMapView *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v8->_coordinate = v10;
    v8->_size = v9;
  }

  v5 = v8;
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)viewDidLoad
{
  v39 = self;
  v38 = a2;
  v37.receiver = self;
  v37.super_class = AK2FAMapView;
  [(AK2FAMapView *)&v37 viewDidLoad];
  v2 = objc_alloc_init(UIImageView);
  mapView = v39->_mapView;
  v39->_mapView = v2;

  [(UIImageView *)v39->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  spinner = v39->_spinner;
  v39->_spinner = v4;

  [(UIActivityIndicatorView *)v39->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)v39->_mapView center];
  [(UIActivityIndicatorView *)v39->_spinner setCenter:v6, v7];
  [(UIActivityIndicatorView *)v39->_spinner setHidesWhenStopped:1];
  [(UIImageView *)v39->_mapView addSubview:v39->_spinner];
  v18 = [(UIActivityIndicatorView *)v39->_spinner centerXAnchor];
  v17 = [(UIImageView *)v39->_mapView centerXAnchor];
  v16 = [v18 constraintEqualToAnchor:?];
  v41[0] = v16;
  v15 = [(UIActivityIndicatorView *)v39->_spinner centerYAnchor];
  v14 = [(UIImageView *)v39->_mapView centerYAnchor];
  v13 = [v15 constraintEqualToAnchor:?];
  v41[1] = v13;
  v12 = [(UIActivityIndicatorView *)v39->_spinner heightAnchor];
  v11 = [v12 constraintEqualToConstant:?];
  v41[2] = v11;
  v10 = [(UIActivityIndicatorView *)v39->_spinner widthAnchor];
  v9 = [v10 constraintEqualToConstant:32.0];
  v41[3] = v9;
  v8 = [NSArray arrayWithObjects:v41 count:?];
  [NSLayoutConstraint activateConstraints:?];

  v19 = [(AK2FAMapView *)v39 view];
  [v19 addSubview:v39->_mapView];

  v36 = [(UIImageView *)v39->_mapView topAnchor];
  v35 = [(AK2FAMapView *)v39 view];
  v34 = [v35 topAnchor];
  v33 = [v36 constraintEqualToAnchor:?];
  v40[0] = v33;
  v32 = [(UIImageView *)v39->_mapView leadingAnchor];
  v31 = [(AK2FAMapView *)v39 view];
  v30 = [v31 leadingAnchor];
  v29 = [v32 constraintEqualToAnchor:?];
  v40[1] = v29;
  v28 = [(UIImageView *)v39->_mapView trailingAnchor];
  v27 = [(AK2FAMapView *)v39 view];
  v26 = [v27 trailingAnchor];
  v25 = [v28 constraintEqualToAnchor:?];
  v40[2] = v25;
  v24 = [(UIImageView *)v39->_mapView bottomAnchor];
  v23 = [(AK2FAMapView *)v39 view];
  v22 = [v23 bottomAnchor];
  v21 = [v24 constraintEqualToAnchor:?];
  v40[3] = v21;
  v20 = [NSArray arrayWithObjects:v40 count:4];
  [NSLayoutConstraint activateConstraints:?];

  [(AK2FAMapView *)v39 startLoadingImage];
}

- (void)startLoadingImage
{
  v27 = self;
  v26[1] = a2;
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  v26[0] = objc_alloc_init(MKMapSnapshotOptions);
  width = v27->_size.width;
  height = v27->_size.height;
  sub_1000059A4();
  *&v25 = v4;
  *(&v25 + 1) = v5;
  v24 = v25;
  [v26[0] setSize:{v4, v5}];
  [v26[0] setMapType:?];
  coordinate = v27->_coordinate;
  *&v23 = 0x3FD999999999999ALL;
  *(&v23 + 1) = 0x3FD999999999999ALL;
  v20 = coordinate;
  v21 = v23;
  [v26[0] setRegion:{coordinate, 0.4, 0.4}];
  v8 = [(AK2FAMapView *)v27 view];
  v7 = [v8 traitCollection];
  [v26[0] setTraitCollection:?];

  v6 = [MKMapSnapshotter alloc];
  v19 = [v6 initWithOptions:v26[0]];
  objc_initWeak(&location, v27);
  queue = dispatch_get_global_queue(25, 0);
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000059D8;
  v14 = &unk_10000C3F0;
  v15 = v19;
  objc_copyWeak(&v17, &location);
  v16 = v27;
  dispatch_async(queue, &v10);

  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&v17);
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&location);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v26, 0);
}

- (void)_setImageForSnapshot:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v10 = v15;
  v11 = location[0];
  dispatch_async(queue, &v5);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_onqueue_setImageForSnapshot:(id)a3
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000496C(v27, location[0]);
    _os_log_impl(&_mh_execute_header, v24, v23, "[main queue] Setting image for snapshot %@", v27, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  [(UIActivityIndicatorView *)v26->_spinner stopAnimating];
  v13 = [location[0] image];
  [(UIImageView *)v26->_mapView setImage:?];

  v22 = objc_opt_new();
  [(UIImageView *)v26->_mapView bounds];
  *&v20 = v3;
  *(&v20 + 1) = v4;
  *&v21 = v5;
  *(&v21 + 1) = v6;
  v18 = v20;
  v19 = v21;
  [v22 setFrame:{v3, v4, v5, v6}];
  [(UIImageView *)v26->_mapView bounds];
  v17 = [UIBezierPath bezierPathWithRoundedRect:v7 cornerRadius:v8, v9, v10, 12.0];
  v14 = v17;
  v11 = v17;
  v12 = [v14 CGPath];
  [v22 setPath:v12];
  v15 = v22;
  v16 = [(UIImageView *)v26->_mapView layer];
  [v16 setMask:v15];

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