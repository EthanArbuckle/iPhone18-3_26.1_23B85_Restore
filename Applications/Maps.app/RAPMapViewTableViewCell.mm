@interface RAPMapViewTableViewCell
- (RAPMapViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 viewModel:(id)a5;
- (void)layoutSubviews;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation RAPMapViewTableViewCell

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = RAPMapViewTableViewCell;
  [(RAPMapViewTableViewCell *)&v12 layoutSubviews];
  [(BlurredBackgroundLabel *)self->_descriptionBackgroundView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v4 = v3;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 userInterfaceLayoutDirection];

  mapView = self->_mapView;
  [(RAPMapViewTableViewCell *)self safeAreaInsets];
  v9 = v8;
  if (v6 == 1)
  {
    v9 = v8 + 8.0;
    [(RAPMapViewTableViewCell *)self safeAreaInsets];
  }

  else
  {
    [(RAPMapViewTableViewCell *)self safeAreaInsets];
    v10 = v11 + 8.0;
  }

  [(MKMapView *)mapView _setAttributionInsets:0.0, v9, v4, v10];
}

- (void)setupConstraints
{
  v3 = [(RAPMapViewTableViewCell *)self contentView];
  v4 = [(BlurredBackgroundLabel *)self->_descriptionBackgroundView leadingAnchor];
  v5 = [(RAPMapViewTableViewCell *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  v36[0] = v6;
  v7 = [(BlurredBackgroundLabel *)self->_descriptionBackgroundView trailingAnchor];
  v8 = [(RAPMapViewTableViewCell *)self trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v36[1] = v9;
  v10 = [NSArray arrayWithObjects:v36 count:2];

  v11 = [(RAPInlineMapViewModel *)self->_viewModel allowsEditing];
  descriptionBackgroundView = self->_descriptionBackgroundView;
  if (v11)
  {
    v13 = [(BlurredBackgroundLabel *)descriptionBackgroundView topAnchor];
    [v3 topAnchor];
  }

  else
  {
    v13 = [(BlurredBackgroundLabel *)descriptionBackgroundView bottomAnchor];
    [v3 bottomAnchor];
  }
  v14 = ;
  v15 = [v13 constraintEqualToAnchor:v14];

  v34 = [v10 arrayByAddingObject:v15];

  [NSLayoutConstraint activateConstraints:v34];
  v33 = [(MKMapView *)self->_mapView topAnchor];
  v32 = [v3 topAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v35[0] = v31;
  v30 = [(MKMapView *)self->_mapView bottomAnchor];
  v29 = [v3 bottomAnchor];
  v27 = [v30 constraintEqualToAnchor:v29];
  v35[1] = v27;
  [(MKMapView *)self->_mapView leadingAnchor];
  v16 = v3;
  v17 = v28 = v3;
  v18 = [(RAPMapViewTableViewCell *)self leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v35[2] = v19;
  v20 = [(MKMapView *)self->_mapView trailingAnchor];
  v21 = [(RAPMapViewTableViewCell *)self trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v35[3] = v22;
  v23 = [v16 heightAnchor];
  v24 = [(BlurredBackgroundLabel *)self->_descriptionBackgroundView heightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:235.0];
  v35[4] = v25;
  v26 = [NSArray arrayWithObjects:v35 count:5];

  [NSLayoutConstraint activateConstraints:v26];
}

- (void)setupSubviews
{
  [(MKMapView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(RAPMapViewTableViewCell *)self contentView];
  [v3 addSubview:self->_mapView];

  [(RAPInlineMapViewModel *)self->_viewModel selectedCoordinate];
  v14 = MKCoordinateRegionMakeWithDistance(v13, 200.0, 200.0);
  [(MKMapView *)self->_mapView setRegion:1 animated:v14.center.latitude, v14.center.longitude, v14.span.latitudeDelta, v14.span.longitudeDelta];
  [(MKMapView *)self->_mapView setShowsUserLocation:1];
  [(MKMapView *)self->_mapView setUserTrackingMode:1 animated:1];
  v4 = [[BlurredBackgroundLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  descriptionBackgroundView = self->_descriptionBackgroundView;
  self->_descriptionBackgroundView = v4;

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [(BlurredBackgroundLabel *)self->_descriptionBackgroundView setGroupName:v7];

  [(BlurredBackgroundLabel *)self->_descriptionBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(RAPInlineMapViewModel *)self->_viewModel instructionalText];
  [(BlurredBackgroundLabel *)self->_descriptionBackgroundView setText:v8];

  v9 = [(RAPMapViewTableViewCell *)self contentView];
  [v9 addSubview:self->_mapView];

  mapView = self->_mapView;
  v11 = self->_descriptionBackgroundView;

  [(MKMapView *)mapView addSubview:v11];
}

- (RAPMapViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 viewModel:(id)a5
{
  v9 = a5;
  v18.receiver = self;
  v18.super_class = RAPMapViewTableViewCell;
  v10 = [(RAPMapViewTableViewCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_viewModel, a5);
    v12 = objc_alloc_init(MKMapView);
    mapView = v11->_mapView;
    v11->_mapView = v12;

    [(MKMapView *)v11->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RAPInlineMapViewModel *)v11->_viewModel setMapView:v11->_mapView];
    v14 = [[MKMarkerAnnotationView alloc] initWithAnnotation:0 reuseIdentifier:0];
    v15 = +[GEOFeatureStyleAttributes homeStyleAttributes];
    [v14 _setStyleAttributes:v15];

    [(RAPMapViewTableViewCell *)v11 setupSubviews];
    [(RAPMapViewTableViewCell *)v11 setupConstraints];
    [(RAPMapViewTableViewCell *)v11 setSelectionStyle:0];
    v16 = [(RAPInlineMapViewModel *)v11->_viewModel instructionalText];
    [(RAPMapViewTableViewCell *)v11 setAccessibilityLabel:v16];
  }

  return v11;
}

@end