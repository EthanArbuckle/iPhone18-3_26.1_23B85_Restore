@interface RAPInteractiveMapViewTableViewCell
- (RAPInteractiveMapViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 viewModel:(id)a5 report:(id)a6;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation RAPInteractiveMapViewTableViewCell

- (void)setupConstraints
{
  v3 = [(RAPInteractiveMapViewTableViewCell *)self contentView];
  v23 = [(RAPInlineMapViewController *)self->_mapViewController view];
  v22 = [v23 topAnchor];
  v21 = [v3 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v24[0] = v20;
  v19 = [(RAPInlineMapViewController *)self->_mapViewController view];
  v18 = [v19 bottomAnchor];
  v15 = v3;
  v17 = [v3 bottomAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v24[1] = v16;
  v14 = [(RAPInlineMapViewController *)self->_mapViewController view];
  v4 = [v14 leadingAnchor];
  v5 = [(RAPInteractiveMapViewTableViewCell *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  v24[2] = v6;
  v7 = [(RAPInlineMapViewController *)self->_mapViewController view];
  v8 = [v7 trailingAnchor];
  v9 = [(RAPInteractiveMapViewTableViewCell *)self trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v24[3] = v10;
  v11 = [v3 heightAnchor];
  v12 = [v11 constraintEqualToConstant:235.0];
  v24[4] = v12;
  v13 = [NSArray arrayWithObjects:v24 count:5];

  [NSLayoutConstraint activateConstraints:v13];
}

- (void)setupSubviews
{
  v3 = [(RAPInlineMapViewController *)self->_mapViewController view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(RAPInteractiveMapViewTableViewCell *)self contentView];
  v4 = [(RAPInlineMapViewController *)self->_mapViewController view];
  [v5 addSubview:v4];
}

- (RAPInteractiveMapViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 viewModel:(id)a5 report:(id)a6
{
  v11 = a5;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = RAPInteractiveMapViewTableViewCell;
  v13 = [(RAPInteractiveMapViewTableViewCell *)&v25 initWithStyle:a3 reuseIdentifier:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_report, a6);
    v15 = [RAPInlineMapViewController alloc];
    [v11 selectedCoordinate];
    v17 = v16;
    v19 = v18;
    v20 = [v11 markerViewAttributes];
    v21 = [(RAPInlineMapViewController *)v15 initWithReport:v12 coordinate:v20 markerViewAttributes:v17, v19];
    mapViewController = v14->_mapViewController;
    v14->_mapViewController = v21;

    [(RAPInlineMapViewController *)v14->_mapViewController setDelegate:v14];
    objc_storeStrong(&v14->_viewModel, a5);
    [(RAPInteractiveMapViewTableViewCell *)v14 setupSubviews];
    [(RAPInteractiveMapViewTableViewCell *)v14 setupConstraints];
    [(RAPInteractiveMapViewTableViewCell *)v14 setSelectionStyle:0];
    v23 = [(RAPInlineMapViewModel *)v14->_viewModel instructionalText];
    [(RAPInteractiveMapViewTableViewCell *)v14 setAccessibilityLabel:v23];
  }

  return v14;
}

@end