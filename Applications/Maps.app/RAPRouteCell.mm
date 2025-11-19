@interface RAPRouteCell
- (RAPRouteCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_cellBackgroundColor;
- (id)_formattedTimeStringSinceDirectionsWereTaken:(double)a3;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)configureWithRequest:(id)a3;
@end

@implementation RAPRouteCell

- (id)_formattedTimeStringSinceDirectionsWereTaken:(double)a3
{
  v3 = CFAbsoluteTimeGetCurrent() - a3;
  if (v3 < 60.0)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Just now [DirectionsHistoryItemCell]" value:@"localized string not found" table:0];
LABEL_3:
    v6 = v5;
    goto LABEL_9;
  }

  if (v3 < 86400.0)
  {
    v4 = [NSDateComponentsFormatter _maps_stringLongFromTimeInterval:?];
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"%@ ago [DirectionsHistoryItemCell]";
LABEL_8:
    v11 = [v7 localizedStringForKey:v9 value:@"localized string not found" table:0];
    v6 = [NSString stringWithFormat:v11, v4];

    goto LABEL_9;
  }

  if (v3 < 172800.0)
  {
    v10 = [NSDate dateWithTimeIntervalSinceNow:-v3];
    v4 = [NSDateFormatter _maps_timeForDate:v10];

    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"Yesterday %@ [DirectionsHistoryItemCell]";
    goto LABEL_8;
  }

  if (v3 >= 604800.0)
  {
    v4 = [NSDate dateWithTimeIntervalSinceNow:-v3];
    v5 = [NSDateFormatter _maps_dateStringWithoutYearForDate:v4];
    goto LABEL_3;
  }

  v13 = -v3;
  v14 = [NSDate dateWithTimeIntervalSinceNow:-v3];
  v4 = [NSDateFormatter _maps_weekdayForDate:v14];

  v15 = [NSDate dateWithTimeIntervalSinceNow:v13];
  v16 = [NSDateFormatter _maps_timeForDate:v15];

  v6 = [NSString stringWithFormat:@"%@ %@", v4, v16];

LABEL_9:

  return v6;
}

- (void)configureWithRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 historyItem];
  v8 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
  objc_opt_class();
  v9 = v7;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11 && ([v11 historyEntry], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "conformsToProtocol:", v8), v12, v13))
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v25 = 0;
    v26 = 0;
    v15 = [v14 historyEntry];
    [SearchResult newStartWaypointSearchResult:&v26 endWaypointSearchResult:&v25 forRouteHistoryEntry:v15];
    v16 = v26;
    v17 = v25;

    v18 = [v17 name];
    [(UILabel *)self->_titleLabel setText:v18];

    [v14 timestamp];
    v19 = [(RAPRouteCell *)self _formattedTimeStringSinceDirectionsWereTaken:?];
    [(UILabel *)self->_subtitleLabel setText:v19];

    v20 = [v14 historyEntry];
    v21 = [v20 transportType];

    v22 = @"rp_drive";
    if (v21 == 2)
    {
      v22 = @"rp_walk";
    }

    if (v21 == 5)
    {
      v23 = @"rp_cycle";
    }

    else
    {
      v23 = v22;
    }

    v24 = [UIImage imageNamed:v23];
    [(UIImageView *)self->_iconImageView setImage:v24];
  }

  else
  {
    v16 = sub_100798874();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create a historyEntryRecentsItem from request: %@", buf, 0xCu);
    }
  }
}

- (void)_setupStyling
{
  v3 = [(RAPRouteCell *)self _cellBackgroundColor];
  [(RAPRouteCell *)self setBackgroundColor:v3];

  v4 = +[UIColor darkGrayColor];
  [(UIImageView *)self->_iconImageView setTintColor:v4];

  v5 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v5];

  [(UILabel *)self->_titleLabel setAllowsDefaultTighteningForTruncation:1];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleHeadline weight:UIFontWeightBold];
  [(UILabel *)self->_titleLabel setFont:v6];

  v7 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v7];

  [(UILabel *)self->_subtitleLabel setAllowsDefaultTighteningForTruncation:1];
  v8 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline];
  [(UILabel *)self->_subtitleLabel setFont:v8];
}

- (id)_cellBackgroundColor
{
  v2 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v3 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
  v9[0] = v2;
  v4 = +[UIColor secondarySystemBackgroundColor];
  v9[1] = v3;
  v10[0] = v4;
  v5 = +[UIColor systemWhiteColor];
  v10[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [UIColor _dynamicColorWithColorsByTraitCollection:v6];

  return v7;
}

- (void)_setupConstraints
{
  v57 = [(UIView *)self->_iconImageContainerView heightAnchor];
  v56 = [v57 constraintEqualToConstant:25.0];
  v58[0] = v56;
  v55 = [(UIView *)self->_iconImageContainerView widthAnchor];
  v54 = [v55 constraintEqualToConstant:25.0];
  v58[1] = v54;
  v52 = [(UIView *)self->_iconImageContainerView leadingAnchor];
  v53 = [(RAPRouteCell *)self contentView];
  v51 = [v53 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:16.0];
  v58[2] = v50;
  v48 = [(UIView *)self->_iconImageContainerView centerYAnchor];
  v49 = [(RAPRouteCell *)self contentView];
  v47 = [v49 centerYAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v58[3] = v46;
  v45 = [(UIImageView *)self->_iconImageView centerXAnchor];
  v44 = [(UIView *)self->_iconImageContainerView centerXAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v58[4] = v43;
  v42 = [(UIImageView *)self->_iconImageView centerYAnchor];
  v41 = [(UIView *)self->_iconImageContainerView centerYAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v58[5] = v40;
  v39 = [(UIImageView *)self->_iconImageView widthAnchor];
  v38 = [v39 constraintLessThanOrEqualToConstant:25.0];
  v58[6] = v38;
  v37 = [(UIImageView *)self->_iconImageView heightAnchor];
  v36 = [v37 constraintLessThanOrEqualToConstant:25.0];
  v58[7] = v36;
  v35 = [(UILabel *)self->_titleLabel leadingAnchor];
  v34 = [(UIView *)self->_iconImageContainerView trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:10.0];
  v58[8] = v33;
  v32 = [(RAPRouteCell *)self contentView];
  v31 = [v32 trailingAnchor];
  v30 = [(UILabel *)self->_titleLabel trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:16.0];
  v58[9] = v29;
  v27 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v28 = [(RAPRouteCell *)self contentView];
  v26 = [v28 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:40.0];
  v58[10] = v25;
  v23 = [(UILabel *)self->_titleLabel topAnchor];
  v24 = [(RAPRouteCell *)self contentView];
  v22 = [v24 topAnchor];
  v21 = [v23 constraintEqualToAnchor:v22 constant:14.0];
  v58[11] = v21;
  v20 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v19 = [(UILabel *)self->_titleLabel leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v58[12] = v18;
  v17 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v16 = [(UILabel *)self->_titleLabel trailingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v58[13] = v15;
  v14 = [(UILabel *)self->_subtitleLabel topAnchor];
  v3 = [(UILabel *)self->_titleLabel bottomAnchor];
  v4 = [v14 constraintGreaterThanOrEqualToAnchor:v3];
  v58[14] = v4;
  v5 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
  v6 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  LODWORD(v7) = 1144750080;
  v8 = [v5 constraintEqualToAnchor:v6 constant:20.0 priority:v7];
  v58[15] = v8;
  v9 = [(RAPRouteCell *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:14.0];
  v58[16] = v12;
  v13 = [NSArray arrayWithObjects:v58 count:17];
  [NSLayoutConstraint activateConstraints:v13];
}

- (RAPRouteCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v25.receiver = self;
  v25.super_class = RAPRouteCell;
  v4 = [(RAPRouteCell *)&v25 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(RAPRouteCell *)v4 setSelectionStyle:0];
    v6 = +[UIColor clearColor];
    [(RAPRouteCell *)v5 setBackgroundColor:v6];

    v7 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconImageContainerView = v5->_iconImageContainerView;
    v5->_iconImageContainerView = v11;

    [(UIView *)v5->_iconImageContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(RAPRouteCell *)v5 contentView];
    [v13 addSubview:v5->_iconImageContainerView];

    v14 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconImageView = v5->_iconImageView;
    v5->_iconImageView = v14;

    [(UIImageView *)v5->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v5->_iconImageView setContentMode:1];
    [(UIView *)v5->_iconImageContainerView addSubview:v5->_iconImageView];
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v16;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v18) = 1148846080;
    [(UILabel *)v5->_titleLabel setContentHuggingPriority:1 forAxis:v18];
    v19 = [(RAPRouteCell *)v5 contentView];
    [v19 addSubview:v5->_titleLabel];

    v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v20;

    [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v22) = 1148846080;
    [(UILabel *)v5->_subtitleLabel setContentHuggingPriority:1 forAxis:v22];
    v23 = [(RAPRouteCell *)v5 contentView];
    [v23 addSubview:v5->_subtitleLabel];

    [(RAPRouteCell *)v5 _setupConstraints];
    [(RAPRouteCell *)v5 _setupStyling];
  }

  return v5;
}

@end