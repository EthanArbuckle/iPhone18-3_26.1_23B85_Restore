@interface CarWaypointCell
- (CarWaypointCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupConstraints;
- (void)_setupStyles;
- (void)_setupSubviews;
- (void)_updateLabelColors:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setupWithWaypoint:(id)a3 etaInfo:(id)a4 isRemovable:(BOOL)a5;
@end

@implementation CarWaypointCell

- (void)_updateLabelColors:(BOOL)a3
{
  if (a3)
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

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CarWaypointCell;
  [(CarWaypointCell *)&v6 setHighlighted:a3 animated:a4];
  [(CarWaypointCell *)self _updateLabelColors:v4];
}

- (void)setupWithWaypoint:(id)a3 etaInfo:(id)a4 isRemovable:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 name];
  [(UILabel *)self->_titleLabel setText:v10];

  if (!v5)
  {
    [(UILabel *)self->_tapToRemoveLabel setText:0];
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_18:
    v28 = [GuidanceETA etaStringFromEtaLegInfo:v9 includingAMPMSymbols:0];
    [(UILabel *)self->_arrivalLabel setText:v28];

    goto LABEL_22;
  }

  v11 = +[CarDisplayController sharedInstance];
  v12 = [v11 supportsTouchInteractionModel];

  v13 = +[NSBundle mainBundle];
  v14 = v13;
  if (v12)
  {
    v15 = @"Car_Waypoint_TapToRemove";
  }

  else
  {
    v15 = @"Car_Waypoint_SelectToRemove";
  }

  v16 = [v13 localizedStringForKey:v15 value:@"localized string not found" table:0];
  [(UILabel *)self->_tapToRemoveLabel setText:v16];

  if (v9)
  {
    goto LABEL_18;
  }

LABEL_8:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = +[MNNavigationService sharedService];
  v18 = [v17 displayEtaInfo];
  v19 = [v18 legInfos];

  v20 = [v19 countByEnumeratingWithState:&v31 objects:v37 count:16];
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
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v31 + 1) + 8 * v23);
      v25 = [v24 waypointID];
      v26 = [v8 uniqueID];
      v27 = [v25 isEqual:v26];

      if (v27)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v21)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v9 = v24;

    if (!v9)
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
    v30 = [v8 shortDescription];
    *buf = 138412290;
    v36 = v30;
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
  v36 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v37 = [(CarWaypointCell *)self contentView];
  v35 = [v37 topAnchor];
  v34 = [v36 constraintEqualToAnchor:v35 constant:20.0];
  v38[0] = v34;
  v32 = [(UILabel *)self->_titleLabel trailingAnchor];
  v33 = [(CarWaypointCell *)self contentView];
  v31 = [v33 trailingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31 constant:-6.0];
  v38[1] = v30;
  v28 = [(UILabel *)self->_titleLabel leadingAnchor];
  v29 = [(CarWaypointCell *)self contentView];
  v27 = [v29 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27 constant:6.0];
  v38[2] = v26;
  v25 = [(UILabel *)self->_arrivalLabel firstBaselineAnchor];
  v24 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:14.0];
  v38[3] = v23;
  v21 = [(UILabel *)self->_arrivalLabel trailingAnchor];
  v22 = [(CarWaypointCell *)self contentView];
  v20 = [v22 trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:-6.0];
  v38[4] = v19;
  v17 = [(UILabel *)self->_arrivalLabel leadingAnchor];
  v18 = [(CarWaypointCell *)self contentView];
  v16 = [v18 leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16 constant:6.0];
  v38[5] = v15;
  v14 = [(UILabel *)self->_tapToRemoveLabel firstBaselineAnchor];
  v13 = [(UILabel *)self->_arrivalLabel lastBaselineAnchor];
  v3 = [v14 constraintEqualToAnchor:v13 constant:14.0];
  v38[6] = v3;
  v4 = [(UILabel *)self->_tapToRemoveLabel trailingAnchor];
  v5 = [(CarWaypointCell *)self contentView];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:-6.0];
  v38[7] = v7;
  v8 = [(UILabel *)self->_tapToRemoveLabel leadingAnchor];
  v9 = [(CarWaypointCell *)self contentView];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:6.0];
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
  v9 = [(CarWaypointCell *)self contentView];
  [v9 addSubview:self->_titleLabel];

  v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  arrivalLabel = self->_arrivalLabel;
  self->_arrivalLabel = v10;

  [(UILabel *)self->_arrivalLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(CarWaypointCell *)self contentView];
  [v12 addSubview:self->_arrivalLabel];

  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  tapToRemoveLabel = self->_tapToRemoveLabel;
  self->_tapToRemoveLabel = v13;

  [(UILabel *)self->_tapToRemoveLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [(CarWaypointCell *)self contentView];
  [v15 addSubview:self->_tapToRemoveLabel];
}

- (CarWaypointCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CarWaypointCell;
  v4 = [(CarWaypointCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CarWaypointCell *)v4 contentView];
    [v6 setClipsToBounds:1];

    [(CarWaypointCell *)v5 _setupSubviews];
    [(CarWaypointCell *)v5 _setupConstraints];
    [(CarWaypointCell *)v5 _setupStyles];
  }

  return v5;
}

@end