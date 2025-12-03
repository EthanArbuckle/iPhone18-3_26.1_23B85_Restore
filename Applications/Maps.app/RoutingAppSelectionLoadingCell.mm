@interface RoutingAppSelectionLoadingCell
- (RoutingAppSelectionLoadingCell)initWithMode:(unint64_t)mode reuseIdentifier:(id)identifier;
- (void)_configureViewsForMode:(unint64_t)mode;
- (void)setMode:(unint64_t)mode;
@end

@implementation RoutingAppSelectionLoadingCell

- (void)_configureViewsForMode:(unint64_t)mode
{
  if (mode == 1)
  {
    if (!self->_noAppsLabel)
    {
      v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      noAppsLabel = self->_noAppsLabel;
      self->_noAppsLabel = v15;

      [(UILabel *)self->_noAppsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = [UIFont boldSystemFontOfSize:14.0];
      [(UILabel *)self->_noAppsLabel setFont:v17];

      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"No Matches for Routing Apps" value:@"localized string not found" table:0];
      [(UILabel *)self->_noAppsLabel setText:v19];

      v20 = +[UIColor secondaryLabelColor];
      [(UILabel *)self->_noAppsLabel setTextColor:v20];
    }

    [(LoadingModeView *)self->_loadingView removeFromSuperview];
    contentView = [(RoutingAppSelectionLoadingCell *)self contentView];
    [contentView addSubview:self->_noAppsLabel];

    topAnchor = [(UILabel *)self->_noAppsLabel topAnchor];
    contentView2 = [(RoutingAppSelectionLoadingCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v40[0] = v35;
    leadingAnchor = [(UILabel *)self->_noAppsLabel leadingAnchor];
    contentView3 = [(RoutingAppSelectionLoadingCell *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v40[1] = v22;
    contentView4 = [(RoutingAppSelectionLoadingCell *)self contentView];
    bottomAnchor = [contentView4 bottomAnchor];
    bottomAnchor2 = [(UILabel *)self->_noAppsLabel bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v40[2] = v26;
    contentView5 = [(RoutingAppSelectionLoadingCell *)self contentView];
    trailingAnchor = [contentView5 trailingAnchor];
    trailingAnchor2 = [(UILabel *)self->_noAppsLabel trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
    v40[3] = v30;
    v31 = [NSArray arrayWithObjects:v40 count:4];
    [NSLayoutConstraint activateConstraints:v31];
  }

  else if (!mode)
  {
    if (!self->_loadingView)
    {
      v4 = [LoadingModeView alloc];
      v5 = +[NSBundle mainBundle];
      v6 = [v5 localizedStringForKey:@"Loading Text for Routing Apps" value:@"localized string not found" table:0];
      v7 = [(LoadingModeView *)v4 initWithTitle:v6 axis:0];
      loadingView = self->_loadingView;
      self->_loadingView = v7;

      [(LoadingModeView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    [(UILabel *)self->_noAppsLabel removeFromSuperview];
    contentView6 = [(RoutingAppSelectionLoadingCell *)self contentView];
    [contentView6 addSubview:self->_loadingView];

    v10 = self->_loadingView;
    contentView7 = [(RoutingAppSelectionLoadingCell *)self contentView];
    LODWORD(v12) = 1148846080;
    v38 = contentView7;
    v13 = [(LoadingModeView *)v10 _maps_constraintsEqualToEdgesOfView:v12 priority:?];
    allConstraints = [v13 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(RoutingAppSelectionLoadingCell *)self _configureViewsForMode:?];
  }
}

- (RoutingAppSelectionLoadingCell)initWithMode:(unint64_t)mode reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = RoutingAppSelectionLoadingCell;
  v5 = [(RoutingAppSelectionLoadingCell *)&v15 initWithStyle:0 reuseIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    v5->_mode = mode;
    [(RoutingAppSelectionLoadingCell *)v5 _configureViewsForMode:mode];
    v7 = +[UIColor clearColor];
    [(RoutingAppSelectionLoadingCell *)v6 setBackgroundColor:v7];

    v8 = +[UIColor clearColor];
    contentView = [(RoutingAppSelectionLoadingCell *)v6 contentView];
    [contentView setBackgroundColor:v8];

    [(RoutingAppSelectionLoadingCell *)v6 setUserInteractionEnabled:0];
    contentView2 = [(RoutingAppSelectionLoadingCell *)v6 contentView];
    heightAnchor = [contentView2 heightAnchor];
    v12 = [heightAnchor constraintGreaterThanOrEqualToConstant:50.0];
    v16 = v12;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    [NSLayoutConstraint activateConstraints:v13];
  }

  return v6;
}

@end