@interface RAPRouteCell
- (RAPRouteCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_cellBackgroundColor;
- (id)_formattedTimeStringSinceDirectionsWereTaken:(double)taken;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)configureWithRequest:(id)request;
@end

@implementation RAPRouteCell

- (id)_formattedTimeStringSinceDirectionsWereTaken:(double)taken
{
  v3 = CFAbsoluteTimeGetCurrent() - taken;
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

- (void)configureWithRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = requestCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  historyItem = [v6 historyItem];
  v8 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
  objc_opt_class();
  v9 = historyItem;
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
    historyEntry = [v14 historyEntry];
    [SearchResult newStartWaypointSearchResult:&v26 endWaypointSearchResult:&v25 forRouteHistoryEntry:historyEntry];
    v16 = v26;
    v17 = v25;

    name = [v17 name];
    [(UILabel *)self->_titleLabel setText:name];

    [v14 timestamp];
    v19 = [(RAPRouteCell *)self _formattedTimeStringSinceDirectionsWereTaken:?];
    [(UILabel *)self->_subtitleLabel setText:v19];

    historyEntry2 = [v14 historyEntry];
    transportType = [historyEntry2 transportType];

    v22 = @"rp_drive";
    if (transportType == 2)
    {
      v22 = @"rp_walk";
    }

    if (transportType == 5)
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
      v28 = requestCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create a historyEntryRecentsItem from request: %@", buf, 0xCu);
    }
  }
}

- (void)_setupStyling
{
  _cellBackgroundColor = [(RAPRouteCell *)self _cellBackgroundColor];
  [(RAPRouteCell *)self setBackgroundColor:_cellBackgroundColor];

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
  heightAnchor = [(UIView *)self->_iconImageContainerView heightAnchor];
  v56 = [heightAnchor constraintEqualToConstant:25.0];
  v58[0] = v56;
  widthAnchor = [(UIView *)self->_iconImageContainerView widthAnchor];
  v54 = [widthAnchor constraintEqualToConstant:25.0];
  v58[1] = v54;
  leadingAnchor = [(UIView *)self->_iconImageContainerView leadingAnchor];
  contentView = [(RAPRouteCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v58[2] = v50;
  centerYAnchor = [(UIView *)self->_iconImageContainerView centerYAnchor];
  contentView2 = [(RAPRouteCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v58[3] = v46;
  centerXAnchor = [(UIImageView *)self->_iconImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_iconImageContainerView centerXAnchor];
  v43 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v58[4] = v43;
  centerYAnchor3 = [(UIImageView *)self->_iconImageView centerYAnchor];
  centerYAnchor4 = [(UIView *)self->_iconImageContainerView centerYAnchor];
  v40 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v58[5] = v40;
  widthAnchor2 = [(UIImageView *)self->_iconImageView widthAnchor];
  v38 = [widthAnchor2 constraintLessThanOrEqualToConstant:25.0];
  v58[6] = v38;
  heightAnchor2 = [(UIImageView *)self->_iconImageView heightAnchor];
  v36 = [heightAnchor2 constraintLessThanOrEqualToConstant:25.0];
  v58[7] = v36;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  trailingAnchor = [(UIView *)self->_iconImageContainerView trailingAnchor];
  v33 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v58[8] = v33;
  contentView3 = [(RAPRouteCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  v29 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:16.0];
  v58[9] = v29;
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  contentView4 = [(RAPRouteCell *)self contentView];
  topAnchor = [contentView4 topAnchor];
  v25 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:40.0];
  v58[10] = v25;
  topAnchor2 = [(UILabel *)self->_titleLabel topAnchor];
  contentView5 = [(RAPRouteCell *)self contentView];
  topAnchor3 = [contentView5 topAnchor];
  v21 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:14.0];
  v58[11] = v21;
  leadingAnchor4 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor5 = [(UILabel *)self->_titleLabel leadingAnchor];
  v18 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v58[12] = v18;
  trailingAnchor4 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor5 = [(UILabel *)self->_titleLabel trailingAnchor];
  v15 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v58[13] = v15;
  topAnchor4 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v4 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor];
  v58[14] = v4;
  firstBaselineAnchor2 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  LODWORD(v7) = 1144750080;
  v8 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:20.0 priority:v7];
  v58[15] = v8;
  contentView6 = [(RAPRouteCell *)self contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  bottomAnchor3 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v12 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:14.0];
  v58[16] = v12;
  v13 = [NSArray arrayWithObjects:v58 count:17];
  [NSLayoutConstraint activateConstraints:v13];
}

- (RAPRouteCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v25.receiver = self;
  v25.super_class = RAPRouteCell;
  v4 = [(RAPRouteCell *)&v25 initWithStyle:style reuseIdentifier:identifier];
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
    contentView = [(RAPRouteCell *)v5 contentView];
    [contentView addSubview:v5->_iconImageContainerView];

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
    contentView2 = [(RAPRouteCell *)v5 contentView];
    [contentView2 addSubview:v5->_titleLabel];

    v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v20;

    [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v22) = 1148846080;
    [(UILabel *)v5->_subtitleLabel setContentHuggingPriority:1 forAxis:v22];
    contentView3 = [(RAPRouteCell *)v5 contentView];
    [contentView3 addSubview:v5->_subtitleLabel];

    [(RAPRouteCell *)v5 _setupConstraints];
    [(RAPRouteCell *)v5 _setupStyling];
  }

  return v5;
}

@end