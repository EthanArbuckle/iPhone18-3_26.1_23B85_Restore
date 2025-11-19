@interface DirectionsElevationSummaryCollectionViewCell
- (DirectionsElevationSummaryCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)accessibilityIdentifier;
- (void)_updateLabels;
- (void)setRoute:(id)a3;
@end

@implementation DirectionsElevationSummaryCollectionViewCell

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_updateLabels
{
  v3 = [(GEOComposedRoute *)self->_route elevationProfile];

  if (v3)
  {
    v4 = [(GEOComposedRoute *)self->_route elevationProfile];
    v5 = [v4 sumElevationGainCm] * 0.01;

    v6 = [(GEOComposedRoute *)self->_route elevationProfile];
    v7 = [v6 sumElevationLossCm] * 0.01;
  }

  else
  {
    v7 = 0.0;
    v5 = 0.0;
  }

  v8 = sub_1007993AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = self;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(DirectionsElevationSummaryCollectionViewCell *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_10;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_10:

    *buf = 138412290;
    v23 = v14;
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

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_route, a3);
    [(DirectionsElevationSummaryCollectionViewCell *)self _updateLabels];
    v5 = v6;
  }
}

- (DirectionsElevationSummaryCollectionViewCell)initWithFrame:(CGRect)a3
{
  v61.receiver = self;
  v61.super_class = DirectionsElevationSummaryCollectionViewCell;
  v3 = [(DirectionsElevationSummaryCollectionViewCell *)&v61 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(DirectionsElevationSummaryCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = +[UIColor clearColor];
    v6 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    [v6 setBackgroundColor:v5];

    v60 = objc_alloc_init(NSMutableArray);
    v7 = [DirectionsElevationLabelSummaryView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [(DirectionsElevationLabelSummaryView *)v7 initWithFrame:CGRectZero.origin.x, y, width, height];
    labelSummaryView = v3->_labelSummaryView;
    v3->_labelSummaryView = v11;

    [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    [v13 addSubview:v3->_labelSummaryView];

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
    v26 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    [v26 addSubview:v14];

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

    v58 = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView topAnchor];
    v59 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    v57 = [v59 topAnchor];
    v56 = [v58 constraintEqualToAnchor:v57 constant:v28];
    v62[0] = v56;
    v54 = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView leadingAnchor];
    v55 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    v53 = [v55 leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53 constant:v30];
    v62[1] = v52;
    v51 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    v50 = [v51 trailingAnchor];
    v49 = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView trailingAnchor];
    v48 = [v50 constraintGreaterThanOrEqualToAnchor:v49 constant:v30];
    v62[2] = v48;
    v47 = [v14 topAnchor];
    v46 = [(DirectionsElevationLabelSummaryView *)v3->_labelSummaryView bottomAnchor];
    v45 = [v47 constraintEqualToAnchor:v46 constant:5.0];
    v62[3] = v45;
    v43 = [v14 leadingAnchor];
    v44 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    v42 = [v44 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42 constant:v30];
    v62[4] = v41;
    v40 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    v31 = [v40 trailingAnchor];
    v32 = [v14 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:v30];
    v62[5] = v33;
    v34 = [(DirectionsElevationSummaryCollectionViewCell *)v3 contentView];
    v35 = [v34 bottomAnchor];
    v36 = [v14 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:v29];
    v62[6] = v37;
    v38 = [NSArray arrayWithObjects:v62 count:7];
    [v60 addObjectsFromArray:v38];

    [NSLayoutConstraint activateConstraints:v60];
    [RoutingAppearanceManager configureBackgroundViewForStepCell:v3];
  }

  return v3;
}

@end