@interface RAPMapViewTableViewCell
- (RAPMapViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier viewModel:(id)model;
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
  userInterfaceLayoutDirection = [v5 userInterfaceLayoutDirection];

  mapView = self->_mapView;
  [(RAPMapViewTableViewCell *)self safeAreaInsets];
  v9 = v8;
  if (userInterfaceLayoutDirection == 1)
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
  contentView = [(RAPMapViewTableViewCell *)self contentView];
  leadingAnchor = [(BlurredBackgroundLabel *)self->_descriptionBackgroundView leadingAnchor];
  leadingAnchor2 = [(RAPMapViewTableViewCell *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[0] = v6;
  trailingAnchor = [(BlurredBackgroundLabel *)self->_descriptionBackgroundView trailingAnchor];
  trailingAnchor2 = [(RAPMapViewTableViewCell *)self trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[1] = v9;
  v10 = [NSArray arrayWithObjects:v36 count:2];

  allowsEditing = [(RAPInlineMapViewModel *)self->_viewModel allowsEditing];
  descriptionBackgroundView = self->_descriptionBackgroundView;
  if (allowsEditing)
  {
    topAnchor = [(BlurredBackgroundLabel *)descriptionBackgroundView topAnchor];
    [contentView topAnchor];
  }

  else
  {
    topAnchor = [(BlurredBackgroundLabel *)descriptionBackgroundView bottomAnchor];
    [contentView bottomAnchor];
  }
  v14 = ;
  v15 = [topAnchor constraintEqualToAnchor:v14];

  v34 = [v10 arrayByAddingObject:v15];

  [NSLayoutConstraint activateConstraints:v34];
  topAnchor2 = [(MKMapView *)self->_mapView topAnchor];
  topAnchor3 = [contentView topAnchor];
  v31 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v35[0] = v31;
  bottomAnchor = [(MKMapView *)self->_mapView bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v35[1] = v27;
  [(MKMapView *)self->_mapView leadingAnchor];
  v16 = contentView;
  v17 = v28 = contentView;
  leadingAnchor3 = [(RAPMapViewTableViewCell *)self leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:leadingAnchor3];
  v35[2] = v19;
  trailingAnchor3 = [(MKMapView *)self->_mapView trailingAnchor];
  trailingAnchor4 = [(RAPMapViewTableViewCell *)self trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v35[3] = v22;
  heightAnchor = [v16 heightAnchor];
  heightAnchor2 = [(BlurredBackgroundLabel *)self->_descriptionBackgroundView heightAnchor];
  v25 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:235.0];
  v35[4] = v25;
  v26 = [NSArray arrayWithObjects:v35 count:5];

  [NSLayoutConstraint activateConstraints:v26];
}

- (void)setupSubviews
{
  [(MKMapView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(RAPMapViewTableViewCell *)self contentView];
  [contentView addSubview:self->_mapView];

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
  instructionalText = [(RAPInlineMapViewModel *)self->_viewModel instructionalText];
  [(BlurredBackgroundLabel *)self->_descriptionBackgroundView setText:instructionalText];

  contentView2 = [(RAPMapViewTableViewCell *)self contentView];
  [contentView2 addSubview:self->_mapView];

  mapView = self->_mapView;
  v11 = self->_descriptionBackgroundView;

  [(MKMapView *)mapView addSubview:v11];
}

- (RAPMapViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier viewModel:(id)model
{
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = RAPMapViewTableViewCell;
  v10 = [(RAPMapViewTableViewCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_viewModel, model);
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
    instructionalText = [(RAPInlineMapViewModel *)v11->_viewModel instructionalText];
    [(RAPMapViewTableViewCell *)v11 setAccessibilityLabel:instructionalText];
  }

  return v11;
}

@end