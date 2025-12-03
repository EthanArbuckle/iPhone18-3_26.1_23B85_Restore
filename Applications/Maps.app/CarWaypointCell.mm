@interface CarWaypointCell
- (CarWaypointCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupConstraints;
- (void)_setupStyles;
- (void)_setupSubviews;
- (void)_updateLabelColors:(BOOL)colors;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setupWithWaypoint:(id)waypoint etaInfo:(id)info isRemovable:(BOOL)removable;
@end

@implementation CarWaypointCell

- (void)_updateLabelColors:(BOOL)colors
{
  if (colors)
  {
    v4 = +[UIColor _carSystemFocusLabelColor];
    [(UILabel *)self->_titleLabel setTextColor:v4];

    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    v5 = +[UIColor labelColor];
    [(UILabel *)self->_titleLabel setTextColor:v5];

    +[UIColor _carSystemPrimaryColor];
  }
  v6 = ;
  [(UILabel *)self->_arrivalLabel setTextColor:v6];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = CarWaypointCell;
  [(CarWaypointCell *)&v6 setHighlighted:highlighted animated:animated];
  [(CarWaypointCell *)self _updateLabelColors:highlightedCopy];
}

- (void)setupWithWaypoint:(id)waypoint etaInfo:(id)info isRemovable:(BOOL)removable
{
  removableCopy = removable;
  waypointCopy = waypoint;
  infoCopy = info;
  name = [waypointCopy name];
  [(UILabel *)self->_titleLabel setText:name];

  if (!removableCopy)
  {
    [(UILabel *)self->_tapToRemoveLabel setText:0];
    if (!infoCopy)
    {
      goto LABEL_8;
    }

LABEL_18:
    v28 = [GuidanceETA etaStringFromEtaLegInfo:infoCopy includingAMPMSymbols:0];
    [(UILabel *)self->_arrivalLabel setText:v28];

    goto LABEL_22;
  }

  v11 = +[CarDisplayController sharedInstance];
  supportsTouchInteractionModel = [v11 supportsTouchInteractionModel];

  v13 = +[NSBundle mainBundle];
  v14 = v13;
  if (supportsTouchInteractionModel)
  {
    v15 = @"Car_Waypoint_TapToRemove";
  }

  else
  {
    v15 = @"Car_Waypoint_SelectToRemove";
  }

  v16 = [v13 localizedStringForKey:v15 value:@"localized string not found" table:0];
  [(UILabel *)self->_tapToRemoveLabel setText:v16];

  if (infoCopy)
  {
    goto LABEL_18;
  }

LABEL_8:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = +[MNNavigationService sharedService];
  displayEtaInfo = [v17 displayEtaInfo];
  legInfos = [displayEtaInfo legInfos];

  v20 = [legInfos countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
LABEL_10:
    v23 = 0;
    while (1)
    {
      if (*v32 != v22)
      {
        objc_enumerationMutation(legInfos);
      }

      v24 = *(*(&v31 + 1) + 8 * v23);
      waypointID = [v24 waypointID];
      uniqueID = [waypointCopy uniqueID];
      v27 = [waypointID isEqual:uniqueID];

      if (v27)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [legInfos countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v21)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    infoCopy = v24;

    if (!infoCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_16:

LABEL_19:
  v29 = sub_100006E1C();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    shortDescription = [waypointCopy shortDescription];
    *buf = 138412290;
    v36 = shortDescription;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to get etaInfo for waypoint: %@", buf, 0xCu);
  }

  [(UILabel *)self->_arrivalLabel setText:0];
LABEL_22:
}

- (void)_setupStyles
{
  v3 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v4];

  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:0];
  v5 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:3 grade:UIFontWeightRegular];
  [(UILabel *)self->_arrivalLabel setFont:v5];

  v6 = +[UIColor _carSystemPrimaryColor];
  [(UILabel *)self->_arrivalLabel setTextColor:v6];

  v7 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
  [(UILabel *)self->_tapToRemoveLabel setFont:v7];

  v8 = +[UIColor externalSystemRedColor];
  [(UILabel *)self->_tapToRemoveLabel setTextColor:v8];
}

- (void)_setupConstraints
{
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  contentView = [(CarWaypointCell *)self contentView];
  topAnchor = [contentView topAnchor];
  v34 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:20.0];
  v38[0] = v34;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  contentView2 = [(CarWaypointCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-6.0];
  v38[1] = v30;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  contentView3 = [(CarWaypointCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
  v38[2] = v26;
  firstBaselineAnchor2 = [(UILabel *)self->_arrivalLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v23 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:14.0];
  v38[3] = v23;
  trailingAnchor3 = [(UILabel *)self->_arrivalLabel trailingAnchor];
  contentView4 = [(CarWaypointCell *)self contentView];
  trailingAnchor4 = [contentView4 trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-6.0];
  v38[4] = v19;
  leadingAnchor3 = [(UILabel *)self->_arrivalLabel leadingAnchor];
  contentView5 = [(CarWaypointCell *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v15 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:6.0];
  v38[5] = v15;
  firstBaselineAnchor3 = [(UILabel *)self->_tapToRemoveLabel firstBaselineAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_arrivalLabel lastBaselineAnchor];
  v3 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:14.0];
  v38[6] = v3;
  trailingAnchor5 = [(UILabel *)self->_tapToRemoveLabel trailingAnchor];
  contentView6 = [(CarWaypointCell *)self contentView];
  trailingAnchor6 = [contentView6 trailingAnchor];
  v7 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-6.0];
  v38[7] = v7;
  leadingAnchor5 = [(UILabel *)self->_tapToRemoveLabel leadingAnchor];
  contentView7 = [(CarWaypointCell *)self contentView];
  leadingAnchor6 = [contentView7 leadingAnchor];
  v11 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:6.0];
  v38[8] = v11;
  v12 = [NSArray arrayWithObjects:v38 count:9];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupSubviews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v7;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CarWaypointCell *)self contentView];
  [contentView addSubview:self->_titleLabel];

  v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  arrivalLabel = self->_arrivalLabel;
  self->_arrivalLabel = v10;

  [(UILabel *)self->_arrivalLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(CarWaypointCell *)self contentView];
  [contentView2 addSubview:self->_arrivalLabel];

  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  tapToRemoveLabel = self->_tapToRemoveLabel;
  self->_tapToRemoveLabel = v13;

  [(UILabel *)self->_tapToRemoveLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView3 = [(CarWaypointCell *)self contentView];
  [contentView3 addSubview:self->_tapToRemoveLabel];
}

- (CarWaypointCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CarWaypointCell;
  v4 = [(CarWaypointCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(CarWaypointCell *)v4 contentView];
    [contentView setClipsToBounds:1];

    [(CarWaypointCell *)v5 _setupSubviews];
    [(CarWaypointCell *)v5 _setupConstraints];
    [(CarWaypointCell *)v5 _setupStyles];
  }

  return v5;
}

@end