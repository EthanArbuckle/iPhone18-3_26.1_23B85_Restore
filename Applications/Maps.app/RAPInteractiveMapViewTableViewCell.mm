@interface RAPInteractiveMapViewTableViewCell
- (RAPInteractiveMapViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier viewModel:(id)model report:(id)report;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation RAPInteractiveMapViewTableViewCell

- (void)setupConstraints
{
  contentView = [(RAPInteractiveMapViewTableViewCell *)self contentView];
  view = [(RAPInlineMapViewController *)self->_mapViewController view];
  topAnchor = [view topAnchor];
  topAnchor2 = [contentView topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v20;
  view2 = [(RAPInlineMapViewController *)self->_mapViewController view];
  bottomAnchor = [view2 bottomAnchor];
  v15 = contentView;
  bottomAnchor2 = [contentView bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[1] = v16;
  view3 = [(RAPInlineMapViewController *)self->_mapViewController view];
  leadingAnchor = [view3 leadingAnchor];
  leadingAnchor2 = [(RAPInteractiveMapViewTableViewCell *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[2] = v6;
  view4 = [(RAPInlineMapViewController *)self->_mapViewController view];
  trailingAnchor = [view4 trailingAnchor];
  trailingAnchor2 = [(RAPInteractiveMapViewTableViewCell *)self trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[3] = v10;
  heightAnchor = [contentView heightAnchor];
  v12 = [heightAnchor constraintEqualToConstant:235.0];
  v24[4] = v12;
  v13 = [NSArray arrayWithObjects:v24 count:5];

  [NSLayoutConstraint activateConstraints:v13];
}

- (void)setupSubviews
{
  view = [(RAPInlineMapViewController *)self->_mapViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(RAPInteractiveMapViewTableViewCell *)self contentView];
  view2 = [(RAPInlineMapViewController *)self->_mapViewController view];
  [contentView addSubview:view2];
}

- (RAPInteractiveMapViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier viewModel:(id)model report:(id)report
{
  modelCopy = model;
  reportCopy = report;
  v25.receiver = self;
  v25.super_class = RAPInteractiveMapViewTableViewCell;
  v13 = [(RAPInteractiveMapViewTableViewCell *)&v25 initWithStyle:style reuseIdentifier:identifier];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_report, report);
    v15 = [RAPInlineMapViewController alloc];
    [modelCopy selectedCoordinate];
    v17 = v16;
    v19 = v18;
    markerViewAttributes = [modelCopy markerViewAttributes];
    v21 = [(RAPInlineMapViewController *)v15 initWithReport:reportCopy coordinate:markerViewAttributes markerViewAttributes:v17, v19];
    mapViewController = v14->_mapViewController;
    v14->_mapViewController = v21;

    [(RAPInlineMapViewController *)v14->_mapViewController setDelegate:v14];
    objc_storeStrong(&v14->_viewModel, model);
    [(RAPInteractiveMapViewTableViewCell *)v14 setupSubviews];
    [(RAPInteractiveMapViewTableViewCell *)v14 setupConstraints];
    [(RAPInteractiveMapViewTableViewCell *)v14 setSelectionStyle:0];
    instructionalText = [(RAPInlineMapViewModel *)v14->_viewModel instructionalText];
    [(RAPInteractiveMapViewTableViewCell *)v14 setAccessibilityLabel:instructionalText];
  }

  return v14;
}

@end