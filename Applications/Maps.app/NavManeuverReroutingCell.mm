@interface NavManeuverReroutingCell
- (NavManeuverReroutingCell)initWithFrame:(CGRect)frame;
- (void)setSelectedWithLayoutProgress:(double)progress;
- (void)startAnimating;
@end

@implementation NavManeuverReroutingCell

- (void)setSelectedWithLayoutProgress:(double)progress
{
  v6 = sub_1000808D8();
  v5 = [v6 colorWithAlphaComponent:progress * 0.239999995];
  [(UIView *)self->_mapsBackgroundView setBackgroundColor:v5];
}

- (void)startAnimating
{
  [(UIActivityIndicatorView *)self->_spinnerView setHidden:0];
  spinnerView = self->_spinnerView;

  [(UIActivityIndicatorView *)spinnerView startAnimating];
}

- (NavManeuverReroutingCell)initWithFrame:(CGRect)frame
{
  v74.receiver = self;
  v74.super_class = NavManeuverReroutingCell;
  v3 = [(NavManeuverReroutingCell *)&v74 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavManeuverReroutingCell *)v3 setAccessibilityIdentifier:v5];

    v6 = objc_opt_new();
    mapsBackgroundView = v3->_mapsBackgroundView;
    v3->_mapsBackgroundView = v6;

    [(UIView *)v3->_mapsBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(NavManeuverReroutingCell *)v3 contentView];
    [contentView addSubview:v3->_mapsBackgroundView];

    v9 = objc_opt_new();
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setAccessibilityIdentifier:@"SignContainerView"];
    contentView2 = [(NavManeuverReroutingCell *)v3 contentView];
    [contentView2 addSubview:v9];

    v11 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
    spinnerView = v3->_spinnerView;
    v3->_spinnerView = v11;

    [(UIActivityIndicatorView *)v3->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = +[UIColor whiteColor];
    [(UIActivityIndicatorView *)v3->_spinnerView setColor:v13];

    [(UIActivityIndicatorView *)v3->_spinnerView setAccessibilityIdentifier:@"NavManeuverReroutingSpinner"];
    [v9 addSubview:v3->_spinnerView];
    v14 = objc_opt_new();
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = +[UIColor whiteColor];
    [v14 setTextColor:v15];

    [v14 setNumberOfLines:2];
    [v14 setMinimumScaleFactor:0.699999988];
    [v14 setAdjustsFontSizeToFitWidth:1];
    v16 = [UIFont systemFontOfSize:30.0 weight:UIFontWeightHeavy];
    [v14 setFont:v16];

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"[NavSign] Rerouting..." value:@"localized string not found" table:0];
    [v14 setText:v18];

    [v14 setAccessibilityIdentifier:@"MessageLabel"];
    [v9 addSubview:v14];
    leadingAnchor = [(UIView *)v3->_mapsBackgroundView leadingAnchor];
    contentView3 = [(NavManeuverReroutingCell *)v3 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v70 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v75[0] = v70;
    trailingAnchor = [(UIView *)v3->_mapsBackgroundView trailingAnchor];
    contentView4 = [(NavManeuverReroutingCell *)v3 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v66 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v75[1] = v66;
    topAnchor = [(UIView *)v3->_mapsBackgroundView topAnchor];
    contentView5 = [(NavManeuverReroutingCell *)v3 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v62 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v75[2] = v62;
    bottomAnchor = [(UIView *)v3->_mapsBackgroundView bottomAnchor];
    contentView6 = [(NavManeuverReroutingCell *)v3 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v75[3] = v58;
    leadingAnchor3 = [(UIActivityIndicatorView *)v3->_spinnerView leadingAnchor];
    leadingAnchor4 = [v9 leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v75[4] = v55;
    centerYAnchor = [(UIActivityIndicatorView *)v3->_spinnerView centerYAnchor];
    centerYAnchor2 = [v9 centerYAnchor];
    v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v75[5] = v51;
    widthAnchor = [(UIActivityIndicatorView *)v3->_spinnerView widthAnchor];
    v49 = [widthAnchor constraintEqualToConstant:30.0];
    v75[6] = v49;
    heightAnchor = [(UIActivityIndicatorView *)v3->_spinnerView heightAnchor];
    v47 = [heightAnchor constraintEqualToConstant:30.0];
    v75[7] = v47;
    leadingAnchor5 = [v14 leadingAnchor];
    trailingAnchor3 = [(UIActivityIndicatorView *)v3->_spinnerView trailingAnchor];
    v43 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:16.0];
    v75[8] = v43;
    trailingAnchor4 = [v14 trailingAnchor];
    trailingAnchor5 = [v9 trailingAnchor];
    v40 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v75[9] = v40;
    v52 = v14;
    topAnchor3 = [v14 topAnchor];
    topAnchor4 = [v9 topAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v75[10] = v37;
    bottomAnchor3 = [v14 bottomAnchor];
    bottomAnchor4 = [v9 bottomAnchor];
    v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v75[11] = v34;
    centerXAnchor = [v9 centerXAnchor];
    contentView7 = [(NavManeuverReroutingCell *)v3 contentView];
    centerXAnchor2 = [contentView7 centerXAnchor];
    v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v75[12] = v30;
    v19 = v9;
    v46 = v9;
    centerYAnchor3 = [v9 centerYAnchor];
    contentView8 = [(NavManeuverReroutingCell *)v3 contentView];
    centerYAnchor4 = [contentView8 centerYAnchor];
    v23 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v75[13] = v23;
    widthAnchor2 = [v19 widthAnchor];
    contentView9 = [(NavManeuverReroutingCell *)v3 contentView];
    widthAnchor3 = [contentView9 widthAnchor];
    v27 = [widthAnchor2 constraintLessThanOrEqualToAnchor:widthAnchor3];
    v75[14] = v27;
    v28 = [NSArray arrayWithObjects:v75 count:15];
    [NSLayoutConstraint activateConstraints:v28];
  }

  return v3;
}

@end