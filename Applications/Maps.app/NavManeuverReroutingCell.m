@interface NavManeuverReroutingCell
- (NavManeuverReroutingCell)initWithFrame:(CGRect)a3;
- (void)setSelectedWithLayoutProgress:(double)a3;
- (void)startAnimating;
@end

@implementation NavManeuverReroutingCell

- (void)setSelectedWithLayoutProgress:(double)a3
{
  v6 = sub_1000808D8();
  v5 = [v6 colorWithAlphaComponent:a3 * 0.239999995];
  [(UIView *)self->_mapsBackgroundView setBackgroundColor:v5];
}

- (void)startAnimating
{
  [(UIActivityIndicatorView *)self->_spinnerView setHidden:0];
  spinnerView = self->_spinnerView;

  [(UIActivityIndicatorView *)spinnerView startAnimating];
}

- (NavManeuverReroutingCell)initWithFrame:(CGRect)a3
{
  v74.receiver = self;
  v74.super_class = NavManeuverReroutingCell;
  v3 = [(NavManeuverReroutingCell *)&v74 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavManeuverReroutingCell *)v3 setAccessibilityIdentifier:v5];

    v6 = objc_opt_new();
    mapsBackgroundView = v3->_mapsBackgroundView;
    v3->_mapsBackgroundView = v6;

    [(UIView *)v3->_mapsBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(NavManeuverReroutingCell *)v3 contentView];
    [v8 addSubview:v3->_mapsBackgroundView];

    v9 = objc_opt_new();
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setAccessibilityIdentifier:@"SignContainerView"];
    v10 = [(NavManeuverReroutingCell *)v3 contentView];
    [v10 addSubview:v9];

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
    v72 = [(UIView *)v3->_mapsBackgroundView leadingAnchor];
    v73 = [(NavManeuverReroutingCell *)v3 contentView];
    v71 = [v73 leadingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71];
    v75[0] = v70;
    v68 = [(UIView *)v3->_mapsBackgroundView trailingAnchor];
    v69 = [(NavManeuverReroutingCell *)v3 contentView];
    v67 = [v69 trailingAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v75[1] = v66;
    v64 = [(UIView *)v3->_mapsBackgroundView topAnchor];
    v65 = [(NavManeuverReroutingCell *)v3 contentView];
    v63 = [v65 topAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v75[2] = v62;
    v60 = [(UIView *)v3->_mapsBackgroundView bottomAnchor];
    v61 = [(NavManeuverReroutingCell *)v3 contentView];
    v59 = [v61 bottomAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v75[3] = v58;
    v57 = [(UIActivityIndicatorView *)v3->_spinnerView leadingAnchor];
    v56 = [v9 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v75[4] = v55;
    v54 = [(UIActivityIndicatorView *)v3->_spinnerView centerYAnchor];
    v53 = [v9 centerYAnchor];
    v51 = [v54 constraintEqualToAnchor:v53];
    v75[5] = v51;
    v50 = [(UIActivityIndicatorView *)v3->_spinnerView widthAnchor];
    v49 = [v50 constraintEqualToConstant:30.0];
    v75[6] = v49;
    v48 = [(UIActivityIndicatorView *)v3->_spinnerView heightAnchor];
    v47 = [v48 constraintEqualToConstant:30.0];
    v75[7] = v47;
    v45 = [v14 leadingAnchor];
    v44 = [(UIActivityIndicatorView *)v3->_spinnerView trailingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:16.0];
    v75[8] = v43;
    v42 = [v14 trailingAnchor];
    v41 = [v9 trailingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v75[9] = v40;
    v52 = v14;
    v39 = [v14 topAnchor];
    v38 = [v9 topAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v75[10] = v37;
    v36 = [v14 bottomAnchor];
    v35 = [v9 bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v75[11] = v34;
    v32 = [v9 centerXAnchor];
    v33 = [(NavManeuverReroutingCell *)v3 contentView];
    v31 = [v33 centerXAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v75[12] = v30;
    v19 = v9;
    v46 = v9;
    v20 = [v9 centerYAnchor];
    v21 = [(NavManeuverReroutingCell *)v3 contentView];
    v22 = [v21 centerYAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v75[13] = v23;
    v24 = [v19 widthAnchor];
    v25 = [(NavManeuverReroutingCell *)v3 contentView];
    v26 = [v25 widthAnchor];
    v27 = [v24 constraintLessThanOrEqualToAnchor:v26];
    v75[14] = v27;
    v28 = [NSArray arrayWithObjects:v75 count:15];
    [NSLayoutConstraint activateConstraints:v28];
  }

  return v3;
}

@end