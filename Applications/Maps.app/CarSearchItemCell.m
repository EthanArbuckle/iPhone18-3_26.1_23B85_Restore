@interface CarSearchItemCell
+ (id)distanceFormatter;
- (BOOL)_hasRealTimeChargerInfo:(id)a3;
- (BOOL)displaysThirdDetailLine;
- (BOOL)hasChargerNumberString;
- (BOOL)shouldShowRating;
- (BOOL)shouldShowThirdLine;
- (CarSearchItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_detourDistanceString;
- (id)_etaString;
- (id)_evChargerConstraints:(id)a3;
- (id)_firstLineString;
- (id)_leftSecondLineString;
- (id)_rightSecondLineString;
- (void)_refreshRouteETAIfCalculating;
- (void)_updateLabelColors:(BOOL)a3;
- (void)_updateSubtitle;
- (void)expectUpdatedRouteETA;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setRouteETA:(id)a3 animated:(BOOL)a4;
- (void)setupStyles;
- (void)setupSubviews;
- (void)setupWithModel:(id)a3 cellStyle:(int64_t)a4;
- (void)updateConstraints;
- (void)updateUIForError;
@end

@implementation CarSearchItemCell

- (void)updateUIForError
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(CarSearchItemCell *)self model];
    v5 = [v4 mapItem];
    v6 = [v5 _shortAddress];
    [(_MKRouteETA *)self->_routeETA travelTime];
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CarSearchItemCell: Setting ETA for address : %@, travel time: %ld", &v9, 0x16u);
  }

  v8 = [(CarSearchItemCell *)self trailingSubtitleLabel];
  [v8 setText:0];
}

- (void)expectUpdatedRouteETA
{
  if (!self->_routeETA && (!self->_calculatingRouteETA || !self->_delayedCalculatingTimer))
  {
    self->_calculatingRouteETA = 1;
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1007FE520;
    v5[3] = &unk_101661BC8;
    objc_copyWeak(&v6, &location);
    v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v5 block:0.5];
    delayedCalculatingTimer = self->_delayedCalculatingTimer;
    self->_delayedCalculatingTimer = v3;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_refreshRouteETAIfCalculating
{
  if (self->_calculatingRouteETA)
  {
    [(CarSearchItemCell *)self _updateSubtitle];
  }

  delayedCalculatingTimer = self->_delayedCalculatingTimer;
  self->_delayedCalculatingTimer = 0;
}

- (void)setRouteETA:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(CarSearchItemCell *)self model];
    v8 = [v7 mapItem];
    v9 = [v8 _shortAddress];
    v14 = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "CarSearchItemCell: Setting ETA for %@(model: %@) : %@", &v14, 0x20u);
  }

  [v5 travelTime];
  if (v10 >= 0.0 || !self->_routeETA)
  {
    [v5 travelTime];
    if (v11 < 0.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = v5;
    }

    objc_storeStrong(&self->_routeETA, v12);
    self->_calculatingRouteETA = 0;
    [(NSTimer *)self->_delayedCalculatingTimer invalidate];
    delayedCalculatingTimer = self->_delayedCalculatingTimer;
    self->_delayedCalculatingTimer = 0;

    [(CarSearchItemCell *)self _updateSubtitle];
  }
}

- (id)_detourDistanceString
{
  if (self->_calculatingRouteETA)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Calculating... [CarPlay]" value:@"localized string not found" table:0];
  }

  else
  {
    routeETA = self->_routeETA;
    if (!routeETA || ([(_MKRouteETA *)routeETA distance], v11 <= 0.0) || (v12 = v11, [(CarSearchItemCell *)self cellStyle]!= 2))
    {
      v4 = 0;
      goto LABEL_11;
    }

    v3 = [NSString _navigation_localizedStringForDistance:0 detail:1 unitFormat:0 locale:0 useMetric:0 useYards:v12];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"%@ miles away" value:@"localized string not found" table:0];
    v4 = [NSString localizedStringWithFormat:v14, v3];
  }

  if (v4)
  {
    v5 = [(CarSearchItemCell *)self _leftSecondLineString];
    v6 = [v5 length];

    if (v6)
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];

      v9 = [NSString stringWithFormat:@"%@%@", v8, v4];

      v4 = v9;
    }
  }

LABEL_11:

  return v4;
}

- (id)_etaString
{
  if (self->_calculatingRouteETA)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Calculating... [CarPlay]" value:@"localized string not found" table:0];

    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    routeETA = self->_routeETA;
    if (!routeETA || ([(_MKRouteETA *)routeETA travelTime], v6 <= 0.0))
    {
      v4 = 0;
      goto LABEL_13;
    }

    v4 = [NSString _maps_stringWithRemainingTime:?];
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v7 = [(CarSearchItemCell *)self _leftSecondLineString];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(CarSearchItemCell *)self traitCollection];
    v10 = [v9 layoutDirection];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@".[List view details separator]" value:@"localized string not found" table:0];

    if (v10 == 1)
    {
      [NSString stringWithFormat:@"%@ %@", v4, v12];
    }

    else
    {
      [NSString stringWithFormat:@"%@ %@", v12, v4];
    }
    v13 = ;

    v4 = v13;
  }

LABEL_13:

  return v4;
}

- (id)_rightSecondLineString
{
  v3 = [(CarSearchItemCell *)self cellStyle];
  if (v3 == 2)
  {
    v7 = [(CarSearchItemCell *)self _detourDistanceString];
  }

  else
  {
    if (v3 != 1)
    {
      if (v3)
      {
        v6 = 0;
      }

      else
      {
        v4 = [(CarSearchItemCell *)self model];
        v5 = [v4 mapItem];
        if (v5)
        {
          v6 = [(CarSearchItemCell *)self _etaString];
        }

        else
        {
          v6 = 0;
        }
      }

      goto LABEL_12;
    }

    v7 = [(CarSearchItemCell *)self _etaString];
  }

  v6 = v7;
LABEL_12:

  return v6;
}

- (id)_leftSecondLineString
{
  v3 = [(CarSearchItemCell *)self cellStyle];
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
      v5 = 0;
      goto LABEL_12;
    }

    v6 = [(CarSearchItemCell *)self model];
    v7 = [v6 mapItem];
    v8 = [v7 _detourInfo];
    if (v8)
    {
    }

    else
    {
      routeETA = self->_routeETA;

      if (routeETA)
      {
        v4 = [(CarSearchItemCell *)self model];
        v9 = [v4 mapItem];
        [(_MKRouteETA *)self->_routeETA travelTime];
        v10 = [v9 _maps_detourTextForIdiom:3 travelTime:?];
        goto LABEL_10;
      }
    }

    v4 = [(CarSearchItemCell *)self model];
    v9 = [v4 mapItem];
    v10 = [v9 _maps_detourTextForIdiom:3];
LABEL_10:
    v5 = v10;

    goto LABEL_11;
  }

  v4 = [(CarSearchItemCell *)self model];
  v5 = [v4 secondLine];
LABEL_11:

LABEL_12:

  return v5;
}

- (id)_firstLineString
{
  v3 = [(CarSearchItemCell *)self cellStyle];
  switch(v3)
  {
    case 2:
      goto LABEL_4;
    case 1:
      v4 = [(CarSearchItemCell *)self model];
      v6 = [v4 mapItem];
      v5 = [v6 _addressFormattedAsName];

      goto LABEL_6;
    case 0:
LABEL_4:
      v4 = [(CarSearchItemCell *)self model];
      v5 = [v4 firstLine];
LABEL_6:

      goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (void)_updateLabelColors:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v5 = ;
  v6 = [(CarSearchItemCell *)self titleLabel];
  [v6 setTextColor:v5];

  if ([(CarSearchItemCell *)self cellStyle]== 2)
  {
    +[UIColor systemGreenColor];
  }

  else
  {
    +[UIColor _carSystemPrimaryColor];
  }
  v15 = ;
  v7 = v15;
  if (v3)
  {
    v7 = +[UIColor _carSystemFocusLabelColor];
  }

  v8 = [(CarSearchItemCell *)self leadingSubtitleLabel];
  [v8 setTextColor:v7];

  if (v3)
  {

    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    +[UIColor _carSystemPrimaryColor];
  }
  v9 = ;
  v10 = [(CarSearchItemCell *)self trailingSubtitleLabel];
  [v10 setTextColor:v9];

  v11 = [(CarSearchItemCell *)self ratingView];
  [v11 setHighlighted:v3];

  v12 = [(CarSearchItemCell *)self model];
  if ([v12 isRecent])
  {
    v13 = [(CarSearchItemCell *)self model];
    v14 = [v13 isShowingStops];

    if (!v14)
    {
      goto LABEL_19;
    }

    if (v3)
    {
      +[UIColor _carSystemFocusLabelColor];
    }

    else
    {
      +[UIColor _carSystemPrimaryColor];
    }
    v12 = ;
    [(CarSearchResultEVChargerView *)self->_evChargerInfoView updateLabelColors:v12];
  }

LABEL_19:
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CarSearchItemCell;
  [(CarSearchItemCell *)&v6 setHighlighted:a3 animated:a4];
  [(CarSearchItemCell *)self _updateLabelColors:v4];
}

- (BOOL)hasChargerNumberString
{
  v2 = [(CarSearchItemCell *)self model];
  v3 = [v2 chargerNumberString];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)shouldShowThirdLine
{
  v3 = [(CarSearchItemCell *)self model];
  if ([v3 shouldShowChargerlabel])
  {
    v4 = [(CarSearchItemCell *)self cellStyle]!= 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldShowRating
{
  v3 = [(CarSearchItemCell *)self model];
  v4 = [v3 rating];
  if (v4)
  {
    v5 = [(CarSearchItemCell *)self model];
    v6 = ([v5 shouldShowChargerlabel] & 1) == 0 && -[CarSearchItemCell cellStyle](self, "cellStyle") != 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)displaysThirdDetailLine
{
  if ([(CarSearchItemCell *)self shouldShowRating])
  {
    return 1;
  }

  return [(CarSearchItemCell *)self shouldShowThirdLine];
}

- (id)_evChargerConstraints:(id)a3
{
  if (self->_evChargerInfoView)
  {
    v4 = a3;
    v5 = +[NSMutableArray array];
    v21 = [(CarSearchResultEVChargerView *)self->_evChargerInfoView firstBaselineAnchor];
    v20 = [v21 constraintEqualToAnchor:v4 constant:4.0];

    v22[0] = v20;
    v18 = [(CarSearchResultEVChargerView *)self->_evChargerInfoView leadingAnchor];
    v19 = [(CarSearchItemCell *)self contentView];
    v17 = [v19 leadingAnchor];
    v16 = [v18 constraintEqualToAnchor:v17 constant:6.0];
    v22[1] = v16;
    v6 = [(CarSearchResultEVChargerView *)self->_evChargerInfoView trailingAnchor];
    v7 = [(CarSearchItemCell *)self contentView];
    v8 = [v7 trailingAnchor];
    v9 = [v6 constraintLessThanOrEqualToAnchor:v8 constant:-6.0];
    v22[2] = v9;
    v10 = [(CarSearchResultEVChargerView *)self->_evChargerInfoView bottomAnchor];
    v11 = [(CarSearchItemCell *)self contentView];
    v12 = [v11 bottomAnchor];
    v13 = [v10 constraintLessThanOrEqualToAnchor:v12 constant:-4.0];
    v22[3] = v13;
    v14 = [NSArray arrayWithObjects:v22 count:4];
    [v5 addObjectsFromArray:v14];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)updateConstraints
{
  v86.receiver = self;
  v86.super_class = CarSearchItemCell;
  [(CarSearchItemCell *)&v86 updateConstraints];
  if (self->_currentConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  v85 = +[NSMutableArray array];
  v82 = [(CarSearchItemCell *)self _car_usingLargeTextSizes];
  v77 = [(UILabel *)self->_titleLabel trailingAnchor];
  v80 = [(CarSearchItemCell *)self contentView];
  v74 = [v80 trailingAnchor];
  v70 = [v77 constraintEqualToAnchor:v74 constant:-6.0];
  v90[0] = v70;
  v67 = [(UILabel *)self->_titleLabel leadingAnchor];
  v3 = [(CarSearchItemCell *)self contentView];
  v4 = [v3 leadingAnchor];
  v5 = [v67 constraintEqualToAnchor:v4 constant:6.0];
  v90[1] = v5;
  p_leadingSubtitleLabel = &self->_leadingSubtitleLabel;
  v6 = [(UILabel *)self->_leadingSubtitleLabel leadingAnchor];
  v7 = [(CarSearchItemCell *)self contentView];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:6.0];
  v90[2] = v9;
  v10 = [NSArray arrayWithObjects:v90 count:3];
  [v85 addObjectsFromArray:v10];

  v11 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v81 = [(CarSearchItemCell *)self contentView];
  v12 = [v81 topAnchor];
  v75 = v12;
  v78 = v11;
  if (v82)
  {
    v71 = [v11 constraintEqualToAnchor:v12 constant:22.0];
    v89[0] = v71;
    v68 = [(UILabel *)*p_leadingSubtitleLabel firstBaselineAnchor];
    v65 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v63 = [v68 constraintEqualToAnchor:v65 constant:17.0];
    v89[1] = v63;
    v59 = [(UILabel *)*p_leadingSubtitleLabel trailingAnchor];
    v61 = [(CarSearchItemCell *)self contentView];
    v57 = [v61 trailingAnchor];
    v56 = [v59 constraintLessThanOrEqualToAnchor:v57 constant:-6.0];
    v89[2] = v56;
    p_trailingSubtitleLabel = &self->_trailingSubtitleLabel;
    v14 = [(UILabel *)self->_trailingSubtitleLabel firstBaselineAnchor];
    v15 = [(UILabel *)*p_leadingSubtitleLabel firstBaselineAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:17.0];
    v89[3] = v16;
    v17 = [(UILabel *)self->_trailingSubtitleLabel leadingAnchor];
    v18 = [(UILabel *)*p_leadingSubtitleLabel leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v89[4] = v19;
    v20 = [NSArray arrayWithObjects:v89 count:5];
    [v85 addObjectsFromArray:v20];

    if ([(CarSearchItemCell *)self displaysThirdDetailLine])
    {
      if (![(CarSearchItemCell *)self shouldShowRating])
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v49 = &self->_leadingSubtitleLabel;
LABEL_19:
    v47 = [*p_trailingSubtitleLabel firstBaselineAnchor];
    v48 = [(CarSearchItemCell *)self _evChargerConstraints:v47];
    v46 = v85;
    goto LABEL_20;
  }

  v21 = [(CarSearchItemCell *)self displaysThirdDetailLine];
  v22 = 19.0;
  if (v21)
  {
    v22 = 20.0;
  }

  v72 = [v11 constraintEqualToAnchor:v12 constant:v22];
  v88[0] = v72;
  v23 = [(UILabel *)*p_leadingSubtitleLabel firstBaselineAnchor];
  v24 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v66 = v24;
  v25 = [(CarSearchItemCell *)self displaysThirdDetailLine];
  v26 = 17.0;
  if (v25)
  {
    v26 = 14.0;
  }

  v64 = [v23 constraintEqualToAnchor:v24 constant:v26];
  v88[1] = v64;
  v62 = [(UILabel *)self->_trailingSubtitleLabel firstBaselineAnchor];
  v60 = [(UILabel *)*p_leadingSubtitleLabel firstBaselineAnchor];
  v58 = [v62 constraintEqualToAnchor:v60];
  v88[2] = v58;
  v27 = [(UILabel *)self->_trailingSubtitleLabel leadingAnchor];
  v28 = [(UILabel *)*p_leadingSubtitleLabel trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:3.0];
  v88[3] = v29;
  v30 = [(UILabel *)self->_trailingSubtitleLabel trailingAnchor];
  v31 = [(CarSearchItemCell *)self contentView];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintLessThanOrEqualToAnchor:v32 constant:-6.0];
  v88[4] = v33;
  v34 = [NSArray arrayWithObjects:v88 count:5];
  [v85 addObjectsFromArray:v34];

  if (![(CarSearchItemCell *)self displaysThirdDetailLine])
  {
    v49 = &self->_leadingSubtitleLabel;
    p_trailingSubtitleLabel = &self->_leadingSubtitleLabel;
    goto LABEL_19;
  }

  p_trailingSubtitleLabel = &self->_leadingSubtitleLabel;
  if ([(CarSearchItemCell *)self shouldShowRating])
  {
LABEL_13:
    p_trailingSubtitleLabel = &self->_ratingView;
  }

LABEL_14:
  v35 = *p_trailingSubtitleLabel;
  v36 = [v35 firstBaselineAnchor];
  v79 = v36;
  v37 = [(UILabel *)self->_trailingSubtitleLabel firstBaselineAnchor];
  v76 = v37;
  v38 = 14.0;
  if (v82)
  {
    v38 = 20.0;
  }

  v83 = [v36 constraintEqualToAnchor:v37 constant:v38];
  v87[0] = v83;
  v69 = [v35 leadingAnchor];
  v73 = [(CarSearchItemCell *)self contentView];
  v39 = [v73 leadingAnchor];
  v40 = [v69 constraintEqualToAnchor:v39 constant:6.0];
  v87[1] = v40;
  v41 = [v35 trailingAnchor];
  v42 = [(CarSearchItemCell *)self contentView];
  v43 = [v42 trailingAnchor];
  v44 = [v41 constraintLessThanOrEqualToAnchor:v43 constant:-6.0];
  v87[2] = v44;
  v45 = [NSArray arrayWithObjects:v87 count:3];
  v46 = v85;
  [v85 addObjectsFromArray:v45];

  v47 = [v35 firstBaselineAnchor];
  v48 = [(CarSearchItemCell *)self _evChargerConstraints:v47];

  v49 = &self->_leadingSubtitleLabel;
LABEL_20:
  [v46 addObjectsFromArray:v48];

  v50 = [v46 copy];
  currentConstraints = self->_currentConstraints;
  self->_currentConstraints = v50;

  [NSLayoutConstraint activateConstraints:self->_currentConstraints];
  v52 = 750.0;
  if ([(CarSearchItemCell *)self cellStyle]== 2)
  {
    v53 = 999.0;
  }

  else
  {
    v53 = 750.0;
  }

  if ([(CarSearchItemCell *)self cellStyle]!= 2)
  {
    v52 = 999.0;
  }

  *&v54 = v53;
  [(UILabel *)*v49 setContentCompressionResistancePriority:0 forAxis:v54];
  *&v55 = v52;
  [(UILabel *)self->_trailingSubtitleLabel setContentCompressionResistancePriority:0 forAxis:v55];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CarSearchItemCell;
  [(CarSearchItemCell *)&v5 prepareForReuse];
  [(CarSearchItemCell *)self setModel:0];
  routeETA = self->_routeETA;
  self->_routeETA = 0;

  [(CarSearchResultEVChargerView *)self->_evChargerInfoView resetContents];
  self->_calculatingRouteETA = 0;
  [(NSTimer *)self->_delayedCalculatingTimer invalidate];
  delayedCalculatingTimer = self->_delayedCalculatingTimer;
  self->_delayedCalculatingTimer = 0;
}

- (void)_updateSubtitle
{
  v3 = [(CarSearchItemCell *)self _rightSecondLineString];
  v4 = [(CarSearchItemCell *)self trailingSubtitleLabel];
  [v4 setText:v3];

  v6 = [(CarSearchItemCell *)self _leftSecondLineString];
  v5 = [(CarSearchItemCell *)self leadingSubtitleLabel];
  [v5 setText:v6];
}

- (BOOL)_hasRealTimeChargerInfo:(id)a3
{
  v3 = a3;
  if (MapsFeature_IsEnabled_RealTimeEVCharger())
  {
    v4 = [v3 mapItem];
    v5 = [v4 _geoMapItem];
    v6 = [v5 _hasEVCharger];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setupWithModel:(id)a3 cellStyle:(int64_t)a4
{
  v6 = a3;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 mapItem];
    v9 = [v8 _shortAddress];
    v29 = 138412546;
    v30 = self;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CarSearchItemCell: Initialize cell:%@ with model: %@", &v29, 0x16u);
  }

  [(CarSearchItemCell *)self setModel:v6];
  [(CarSearchItemCell *)self setCellStyle:a4];
  v10 = [(CarSearchItemCell *)self _firstLineString];
  v11 = [(CarSearchItemCell *)self titleLabel];
  [v11 setText:v10];

  [(CarSearchItemCell *)self _updateSubtitle];
  v12 = [(CarSearchItemCell *)self ratingView];
  v13 = [v6 mapItem];
  [v12 setupWithMapItem:v13];

  LODWORD(v12) = [(CarSearchItemCell *)self shouldShowRating];
  v14 = [(CarSearchItemCell *)self ratingView];
  [v14 setHidden:v12 ^ 1];

  [(CarSearchItemCell *)self _updateLabelColors:[(CarSearchItemCell *)self isHighlighted]];
  v15 = [v6 mapItem];
  v16 = [v15 _realTimeAvailableEVCharger];

  v17 = [_TtC4Maps16EVChargerUtility realTimeEVChargerStatusWithEvCharger:v16];
  v18 = +[UIColor _carSystemSecondaryColor];
  if ([(CarSearchItemCell *)self _hasRealTimeChargerInfo:v6])
  {
    if (v17 == 1)
    {
      v19 = +[UIColor systemGreenColor];

      v18 = v19;
    }

    [(CarSearchResultEVChargerView *)self->_evChargerInfoView setTextAndIconColor:v18 status:v17];
    evChargerInfoView = self->_evChargerInfoView;
    v21 = [v6 evChargerLabelText];
    [(CarSearchResultEVChargerView *)evChargerInfoView updateContentsWithPlugStatus:v17 displayString:v21];
LABEL_11:

    goto LABEL_12;
  }

  v22 = [(CarSearchItemCell *)self model];
  v23 = [v22 chargerNumberString];
  v24 = [v23 length];

  if (v24)
  {
    [(CarSearchResultEVChargerView *)self->_evChargerInfoView setTextAndIconColor:v18 status:0];
    v25 = self->_evChargerInfoView;
    v26 = [(CarSearchItemCell *)self model];
    v27 = [v26 chargerNumberString];
    [(CarSearchResultEVChargerView *)v25 updateContentsWithPlugStatus:0 displayString:v27];

    v28 = 0;
    if ([v6 isShowingStops])
    {
      v28 = [v6 isRecent];
    }

    v21 = [(CarSearchResultEVChargerView *)self->_evChargerInfoView leadingIcon];
    [v21 setHidden:v28];
    goto LABEL_11;
  }

LABEL_12:
  [(CarSearchItemCell *)self setNeedsUpdateConstraints];
}

- (void)setupStyles
{
  v3 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
  v4 = [(CarSearchItemCell *)self titleLabel];
  [v4 setFont:v3];

  v5 = +[UIColor labelColor];
  v6 = [(CarSearchItemCell *)self titleLabel];
  [v6 setTextColor:v5];

  v7 = [(CarSearchItemCell *)self titleLabel];
  [v7 setAdjustsFontSizeToFitWidth:0];

  v8 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:3 grade:UIFontWeightRegular];
  v9 = [(CarSearchItemCell *)self leadingSubtitleLabel];
  [v9 setFont:v8];

  v10 = +[UIColor _carSystemPrimaryColor];
  v11 = [(CarSearchItemCell *)self leadingSubtitleLabel];
  [v11 setTextColor:v10];

  v12 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:3 grade:UIFontWeightRegular];
  v13 = [(CarSearchItemCell *)self trailingSubtitleLabel];
  [v13 setFont:v12];

  v15 = +[UIColor _carSystemPrimaryColor];
  v14 = [(CarSearchItemCell *)self trailingSubtitleLabel];
  [v14 setTextColor:v15];
}

- (void)setupSubviews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v7;

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1148829696;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:0 forAxis:v11];
  v12 = [(CarSearchItemCell *)self contentView];
  [v12 addSubview:self->_titleLabel];

  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  leadingSubtitleLabel = self->_leadingSubtitleLabel;
  self->_leadingSubtitleLabel = v13;

  [(UILabel *)self->_leadingSubtitleLabel setAccessibilityIdentifier:@"LeadingSubtitleLabel"];
  [(UILabel *)self->_leadingSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v15) = 1148846080;
  [(UILabel *)self->_leadingSubtitleLabel setContentHuggingPriority:1 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(UILabel *)self->_leadingSubtitleLabel setContentHuggingPriority:0 forAxis:v16];
  v17 = [(CarSearchItemCell *)self contentView];
  [v17 addSubview:self->_leadingSubtitleLabel];

  v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  trailingSubtitleLabel = self->_trailingSubtitleLabel;
  self->_trailingSubtitleLabel = v18;

  [(UILabel *)self->_trailingSubtitleLabel setAccessibilityIdentifier:@"TrailingSubtitleLabel"];
  [(UILabel *)self->_trailingSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v20) = 1148846080;
  [(UILabel *)self->_trailingSubtitleLabel setContentHuggingPriority:1 forAxis:v20];
  LODWORD(v21) = 1144750080;
  [(UILabel *)self->_trailingSubtitleLabel setContentHuggingPriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [(UILabel *)self->_trailingSubtitleLabel setContentCompressionResistancePriority:1 forAxis:v22];
  v23 = [(CarSearchItemCell *)self contentView];
  [v23 addSubview:self->_trailingSubtitleLabel];

  v24 = objc_alloc_init(CarStarRatingView);
  ratingView = self->_ratingView;
  self->_ratingView = v24;

  [(CarStarRatingView *)self->_ratingView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v26) = 1148846080;
  [(CarStarRatingView *)self->_ratingView setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [(CarStarRatingView *)self->_ratingView setContentHuggingPriority:1 forAxis:v27];
  v28 = [(CarSearchItemCell *)self contentView];
  [v28 addSubview:self->_ratingView];

  v29 = [[_TtC4Maps28CarSearchResultEVChargerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  evChargerInfoView = self->_evChargerInfoView;
  self->_evChargerInfoView = v29;

  [(CarSearchResultEVChargerView *)self->_evChargerInfoView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v31) = 1148846080;
  [(CarSearchResultEVChargerView *)self->_evChargerInfoView setContentHuggingPriority:1 forAxis:v31];
  LODWORD(v32) = 1144750080;
  [(CarSearchResultEVChargerView *)self->_evChargerInfoView setContentHuggingPriority:0 forAxis:v32];
  LODWORD(v33) = 1148846080;
  [(CarSearchResultEVChargerView *)self->_evChargerInfoView setContentCompressionResistancePriority:1 forAxis:v33];
  v34 = [(CarSearchItemCell *)self contentView];
  [v34 addSubview:self->_evChargerInfoView];
}

- (CarSearchItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CarSearchItemCell;
  v4 = [(CarSearchItemCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CarSearchItemCell *)v4 contentView];
    [v6 setClipsToBounds:1];

    [(CarSearchItemCell *)v5 setupSubviews];
    [(CarSearchItemCell *)v5 setupStyles];
  }

  return v5;
}

+ (id)distanceFormatter
{
  if (qword_10195D8E8 != -1)
  {
    dispatch_once(&qword_10195D8E8, &stru_10162AE68);
  }

  v3 = qword_10195D8E0;

  return v3;
}

@end