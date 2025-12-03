@interface DirectionsElevationSummaryCollectionViewCell
- (DirectionsElevationSummaryCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)accessibilityIdentifier;
- (void)_updateLabels;
- (void)setRoute:(id)route;
@end

@implementation DirectionsElevationSummaryCollectionViewCell

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_updateLabels
{
  elevationProfile = [(GEOComposedRoute *)self->_route elevationProfile];

  if (elevationProfile)
  {
    elevationProfile2 = [(GEOComposedRoute *)self->_route elevationProfile];
    v5 = [elevationProfile2 sumElevationGainCm] * 0.01;

    elevationProfile3 = [(GEOComposedRoute *)self->_route elevationProfile];
    v7 = [elevationProfile3 sumElevationLossCm] * 0.01;
  }

  else
  {
    v7 = 0.0;
    v5 = 0.0;
  }

  v8 = sub_1007993AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(DirectionsElevationSummaryCollectionViewCell *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_10;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_10:

    *buf = 138412290;
    v23 = selfCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ | Will update labels for gain/loss", buf, 0xCu);
  }

  labelSummaryView = self->_labelSummaryView;
  v16 = [NSMeasurement alloc];
  v17 = +[NSUnitLength meters];
  v18 = [v16 initWithDoubleValue:v17 unit:v5];
  v19 = [NSMeasurement alloc];
  v20 = +[NSUnitLength meters];
  v21 = [v19 initWithDoubleValue:v20 unit:v7];
  [(DirectionsElevationLabelSummaryView *)labelSummaryView setAscent:v18 descent:v21];
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    v6 = routeCopy;
    objc_storeStrong(&self->_route, route);
    [(DirectionsElevationSummaryCollectionViewCell *)self _updateLabels];
    routeCopy = v6;
  }
}

- (DirectionsElevationSummaryCollectionViewCell)initWithFrame:(CGRect)frame
{
  v61.receiver = self;
  v61.super_class = DirectionsElevationSummaryCollectionViewCell;
  v3 = [(DirectionsElevationSummaryCollectionViewCell *)&v61 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(DirectionsElevationSummaryCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = +[UIColor clearColor];
    contentView = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    [contentView setBackgroundColor:v5];

    v60 = objc_alloc_init(NSMutableArray);
    v7 = [DirectionsElevationLabelSummaryView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(DirectionsElevationLabelSummaryView *)v7 initWithFrame:CGRectZero.origin.x, y, width, height];
    labelSummaryView = v3->_labelSummaryView;
    v3->_labelSummaryView = height;

    [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_labelSummaryView];

    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v14 setAccessibilityIdentifier:@"TitleLabel"];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (sub_10000FA08(v3) == 5)
    {
      v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [v14 setFont:v15];

      v16 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
      v17 = [v16 fontDescriptorWithSymbolicTraits:2];

      v18 = [UIFont fontWithDescriptor:v17 size:0.0];
      v19 = v3->_labelSummaryView;
      v20 = +[UIColor labelColor];
      [(DirectionsElevationLabelSummaryView *)v19 setFont:v18 color:v20];
    }

    else
    {
      v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      [v14 setFont:v17];
    }

    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"Total Elevation [Chart Header]" value:@"localized string not found" table:0];
    [v14 setText:v22];

    v23 = +[UIColor secondaryLabelColor];
    [v14 setTextColor:v23];

    LODWORD(v24) = 1148846080;
    [v14 setContentCompressionResistancePriority:1 forAxis:v24];
    LODWORD(v25) = 1148829696;
    [v14 setContentCompressionResistancePriority:0 forAxis:v25];
    contentView3 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    [contentView3 addSubview:v14];

    v27 = sub_10000FA08(v3);
    if (v27 == 5)
    {
      v28 = 14.0;
    }

    else
    {
      v28 = 12.0;
    }

    if (v27 == 5)
    {
      v29 = 10.0;
    }

    else
    {
      v29 = 12.0;
    }

    if (v27 == 5)
    {
      v30 = 16.0;
    }

    else
    {
      v30 = 12.0;
    }

    topAnchor = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView topAnchor];
    contentView4 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v56 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v28];
    v62[0] = v56;
    leadingAnchor = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView leadingAnchor];
    contentView5 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    leadingAnchor2 = [contentView5 leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v30];
    v62[1] = v52;
    contentView6 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    trailingAnchor = [contentView6 trailingAnchor];
    trailingAnchor2 = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView trailingAnchor];
    v48 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:v30];
    v62[2] = v48;
    topAnchor3 = [v14 topAnchor];
    bottomAnchor = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView bottomAnchor];
    v45 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:5.0];
    v62[3] = v45;
    leadingAnchor3 = [v14 leadingAnchor];
    contentView7 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    leadingAnchor4 = [contentView7 leadingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v30];
    v62[4] = v41;
    contentView8 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    trailingAnchor3 = [contentView8 trailingAnchor];
    trailingAnchor4 = [v14 trailingAnchor];
    v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v30];
    v62[5] = v33;
    contentView9 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    bottomAnchor2 = [contentView9 bottomAnchor];
    bottomAnchor3 = [v14 bottomAnchor];
    v37 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v29];
    v62[6] = v37;
    v38 = [NSArray arrayWithObjects:v62 count:7];
    [v60 addObjectsFromArray:v38];

    [NSLayoutConstraint activateConstraints:v60];
    [RoutingAppearanceManager configureBackgroundViewForStepCell:v3];
  }

  return v3;
}

@end