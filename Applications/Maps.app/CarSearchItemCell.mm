@interface CarSearchItemCell
+ (id)distanceFormatter;
- (BOOL)_hasRealTimeChargerInfo:(id)info;
- (BOOL)displaysThirdDetailLine;
- (BOOL)hasChargerNumberString;
- (BOOL)shouldShowRating;
- (BOOL)shouldShowThirdLine;
- (CarSearchItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_detourDistanceString;
- (id)_etaString;
- (id)_evChargerConstraints:(id)constraints;
- (id)_firstLineString;
- (id)_leftSecondLineString;
- (id)_rightSecondLineString;
- (void)_refreshRouteETAIfCalculating;
- (void)_updateLabelColors:(BOOL)colors;
- (void)_updateSubtitle;
- (void)expectUpdatedRouteETA;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setRouteETA:(id)a animated:(BOOL)animated;
- (void)setupStyles;
- (void)setupSubviews;
- (void)setupWithModel:(id)model cellStyle:(int64_t)style;
- (void)updateConstraints;
- (void)updateUIForError;
@end

@implementation CarSearchItemCell

- (void)updateUIForError
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    model = [(CarSearchItemCell *)self model];
    mapItem = [model mapItem];
    _shortAddress = [mapItem _shortAddress];
    [(_MKRouteETA *)self->_routeETA travelTime];
    v9 = 138412546;
    v10 = _shortAddress;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CarSearchItemCell: Setting ETA for address : %@, travel time: %ld", &v9, 0x16u);
  }

  trailingSubtitleLabel = [(CarSearchItemCell *)self trailingSubtitleLabel];
  [trailingSubtitleLabel setText:0];
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

- (void)setRouteETA:(id)a animated:(BOOL)animated
{
  aCopy = a;
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    model = [(CarSearchItemCell *)self model];
    mapItem = [model mapItem];
    _shortAddress = [mapItem _shortAddress];
    v14 = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = _shortAddress;
    v18 = 2112;
    v19 = aCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "CarSearchItemCell: Setting ETA for %@(model: %@) : %@", &v14, 0x20u);
  }

  [aCopy travelTime];
  if (v10 >= 0.0 || !self->_routeETA)
  {
    [aCopy travelTime];
    if (v11 < 0.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = aCopy;
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
    _leftSecondLineString = [(CarSearchItemCell *)self _leftSecondLineString];
    v6 = [_leftSecondLineString length];

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

  _leftSecondLineString = [(CarSearchItemCell *)self _leftSecondLineString];
  v8 = [_leftSecondLineString length];

  if (v8)
  {
    traitCollection = [(CarSearchItemCell *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@".[List view details separator]" value:@"localized string not found" table:0];

    if (layoutDirection == 1)
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
  cellStyle = [(CarSearchItemCell *)self cellStyle];
  if (cellStyle == 2)
  {
    _detourDistanceString = [(CarSearchItemCell *)self _detourDistanceString];
  }

  else
  {
    if (cellStyle != 1)
    {
      if (cellStyle)
      {
        _etaString = 0;
      }

      else
      {
        model = [(CarSearchItemCell *)self model];
        mapItem = [model mapItem];
        if (mapItem)
        {
          _etaString = [(CarSearchItemCell *)self _etaString];
        }

        else
        {
          _etaString = 0;
        }
      }

      goto LABEL_12;
    }

    _detourDistanceString = [(CarSearchItemCell *)self _etaString];
  }

  _etaString = _detourDistanceString;
LABEL_12:

  return _etaString;
}

- (id)_leftSecondLineString
{
  cellStyle = [(CarSearchItemCell *)self cellStyle];
  if (cellStyle >= 2)
  {
    if (cellStyle != 2)
    {
      secondLine = 0;
      goto LABEL_12;
    }

    model = [(CarSearchItemCell *)self model];
    mapItem = [model mapItem];
    _detourInfo = [mapItem _detourInfo];
    if (_detourInfo)
    {
    }

    else
    {
      routeETA = self->_routeETA;

      if (routeETA)
      {
        model2 = [(CarSearchItemCell *)self model];
        mapItem2 = [model2 mapItem];
        [(_MKRouteETA *)self->_routeETA travelTime];
        v10 = [mapItem2 _maps_detourTextForIdiom:3 travelTime:?];
        goto LABEL_10;
      }
    }

    model2 = [(CarSearchItemCell *)self model];
    mapItem2 = [model2 mapItem];
    v10 = [mapItem2 _maps_detourTextForIdiom:3];
LABEL_10:
    secondLine = v10;

    goto LABEL_11;
  }

  model2 = [(CarSearchItemCell *)self model];
  secondLine = [model2 secondLine];
LABEL_11:

LABEL_12:

  return secondLine;
}

- (id)_firstLineString
{
  cellStyle = [(CarSearchItemCell *)self cellStyle];
  switch(cellStyle)
  {
    case 2:
      goto LABEL_4;
    case 1:
      model = [(CarSearchItemCell *)self model];
      mapItem = [model mapItem];
      _addressFormattedAsName = [mapItem _addressFormattedAsName];

      goto LABEL_6;
    case 0:
LABEL_4:
      model = [(CarSearchItemCell *)self model];
      _addressFormattedAsName = [model firstLine];
LABEL_6:

      goto LABEL_8;
  }

  _addressFormattedAsName = 0;
LABEL_8:

  return _addressFormattedAsName;
}

- (void)_updateLabelColors:(BOOL)colors
{
  colorsCopy = colors;
  if (colors)
  {
    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v5 = ;
  titleLabel = [(CarSearchItemCell *)self titleLabel];
  [titleLabel setTextColor:v5];

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
  if (colorsCopy)
  {
    v7 = +[UIColor _carSystemFocusLabelColor];
  }

  leadingSubtitleLabel = [(CarSearchItemCell *)self leadingSubtitleLabel];
  [leadingSubtitleLabel setTextColor:v7];

  if (colorsCopy)
  {

    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    +[UIColor _carSystemPrimaryColor];
  }
  v9 = ;
  trailingSubtitleLabel = [(CarSearchItemCell *)self trailingSubtitleLabel];
  [trailingSubtitleLabel setTextColor:v9];

  ratingView = [(CarSearchItemCell *)self ratingView];
  [ratingView setHighlighted:colorsCopy];

  model = [(CarSearchItemCell *)self model];
  if ([model isRecent])
  {
    model2 = [(CarSearchItemCell *)self model];
    isShowingStops = [model2 isShowingStops];

    if (!isShowingStops)
    {
      goto LABEL_19;
    }

    if (colorsCopy)
    {
      +[UIColor _carSystemFocusLabelColor];
    }

    else
    {
      +[UIColor _carSystemPrimaryColor];
    }
    model = ;
    [(CarSearchResultEVChargerView *)self->_evChargerInfoView updateLabelColors:model];
  }

LABEL_19:
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = CarSearchItemCell;
  [(CarSearchItemCell *)&v6 setHighlighted:highlighted animated:animated];
  [(CarSearchItemCell *)self _updateLabelColors:highlightedCopy];
}

- (BOOL)hasChargerNumberString
{
  model = [(CarSearchItemCell *)self model];
  chargerNumberString = [model chargerNumberString];
  v4 = chargerNumberString != 0;

  return v4;
}

- (BOOL)shouldShowThirdLine
{
  model = [(CarSearchItemCell *)self model];
  if ([model shouldShowChargerlabel])
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
  model = [(CarSearchItemCell *)self model];
  rating = [model rating];
  if (rating)
  {
    model2 = [(CarSearchItemCell *)self model];
    v6 = ([model2 shouldShowChargerlabel] & 1) == 0 && -[CarSearchItemCell cellStyle](self, "cellStyle") != 1;
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

- (id)_evChargerConstraints:(id)constraints
{
  if (self->_evChargerInfoView)
  {
    constraintsCopy = constraints;
    v5 = +[NSMutableArray array];
    firstBaselineAnchor = [(CarSearchResultEVChargerView *)self->_evChargerInfoView firstBaselineAnchor];
    v20 = [firstBaselineAnchor constraintEqualToAnchor:constraintsCopy constant:4.0];

    v22[0] = v20;
    leadingAnchor = [(CarSearchResultEVChargerView *)self->_evChargerInfoView leadingAnchor];
    contentView = [(CarSearchItemCell *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
    v22[1] = v16;
    trailingAnchor = [(CarSearchResultEVChargerView *)self->_evChargerInfoView trailingAnchor];
    contentView2 = [(CarSearchItemCell *)self contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v9 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-6.0];
    v22[2] = v9;
    bottomAnchor = [(CarSearchResultEVChargerView *)self->_evChargerInfoView bottomAnchor];
    contentView3 = [(CarSearchItemCell *)self contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v13 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-4.0];
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
  _car_usingLargeTextSizes = [(CarSearchItemCell *)self _car_usingLargeTextSizes];
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  contentView = [(CarSearchItemCell *)self contentView];
  trailingAnchor2 = [contentView trailingAnchor];
  v70 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-6.0];
  v90[0] = v70;
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  contentView2 = [(CarSearchItemCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
  v90[1] = v5;
  p_leadingSubtitleLabel = &self->_leadingSubtitleLabel;
  leadingAnchor3 = [(UILabel *)self->_leadingSubtitleLabel leadingAnchor];
  contentView3 = [(CarSearchItemCell *)self contentView];
  leadingAnchor4 = [contentView3 leadingAnchor];
  v9 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:6.0];
  v90[2] = v9;
  v10 = [NSArray arrayWithObjects:v90 count:3];
  [v85 addObjectsFromArray:v10];

  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  contentView4 = [(CarSearchItemCell *)self contentView];
  topAnchor = [contentView4 topAnchor];
  v75 = topAnchor;
  v78 = firstBaselineAnchor;
  if (_car_usingLargeTextSizes)
  {
    v71 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:22.0];
    v89[0] = v71;
    firstBaselineAnchor2 = [(UILabel *)*p_leadingSubtitleLabel firstBaselineAnchor];
    firstBaselineAnchor3 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v63 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:17.0];
    v89[1] = v63;
    trailingAnchor3 = [(UILabel *)*p_leadingSubtitleLabel trailingAnchor];
    contentView5 = [(CarSearchItemCell *)self contentView];
    trailingAnchor4 = [contentView5 trailingAnchor];
    v56 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-6.0];
    v89[2] = v56;
    p_trailingSubtitleLabel = &self->_trailingSubtitleLabel;
    firstBaselineAnchor4 = [(UILabel *)self->_trailingSubtitleLabel firstBaselineAnchor];
    firstBaselineAnchor5 = [(UILabel *)*p_leadingSubtitleLabel firstBaselineAnchor];
    v16 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5 constant:17.0];
    v89[3] = v16;
    leadingAnchor5 = [(UILabel *)self->_trailingSubtitleLabel leadingAnchor];
    leadingAnchor6 = [(UILabel *)*p_leadingSubtitleLabel leadingAnchor];
    v19 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
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
    firstBaselineAnchor6 = [*p_trailingSubtitleLabel firstBaselineAnchor];
    v48 = [(CarSearchItemCell *)self _evChargerConstraints:firstBaselineAnchor6];
    v46 = v85;
    goto LABEL_20;
  }

  displaysThirdDetailLine = [(CarSearchItemCell *)self displaysThirdDetailLine];
  v22 = 19.0;
  if (displaysThirdDetailLine)
  {
    v22 = 20.0;
  }

  v72 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:v22];
  v88[0] = v72;
  firstBaselineAnchor7 = [(UILabel *)*p_leadingSubtitleLabel firstBaselineAnchor];
  firstBaselineAnchor8 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v66 = firstBaselineAnchor8;
  displaysThirdDetailLine2 = [(CarSearchItemCell *)self displaysThirdDetailLine];
  v26 = 17.0;
  if (displaysThirdDetailLine2)
  {
    v26 = 14.0;
  }

  v64 = [firstBaselineAnchor7 constraintEqualToAnchor:firstBaselineAnchor8 constant:v26];
  v88[1] = v64;
  firstBaselineAnchor9 = [(UILabel *)self->_trailingSubtitleLabel firstBaselineAnchor];
  firstBaselineAnchor10 = [(UILabel *)*p_leadingSubtitleLabel firstBaselineAnchor];
  v58 = [firstBaselineAnchor9 constraintEqualToAnchor:firstBaselineAnchor10];
  v88[2] = v58;
  leadingAnchor7 = [(UILabel *)self->_trailingSubtitleLabel leadingAnchor];
  trailingAnchor5 = [(UILabel *)*p_leadingSubtitleLabel trailingAnchor];
  v29 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:3.0];
  v88[3] = v29;
  trailingAnchor6 = [(UILabel *)self->_trailingSubtitleLabel trailingAnchor];
  contentView6 = [(CarSearchItemCell *)self contentView];
  trailingAnchor7 = [contentView6 trailingAnchor];
  v33 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:trailingAnchor7 constant:-6.0];
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
  firstBaselineAnchor11 = [v35 firstBaselineAnchor];
  v79 = firstBaselineAnchor11;
  firstBaselineAnchor12 = [(UILabel *)self->_trailingSubtitleLabel firstBaselineAnchor];
  v76 = firstBaselineAnchor12;
  v38 = 14.0;
  if (_car_usingLargeTextSizes)
  {
    v38 = 20.0;
  }

  v83 = [firstBaselineAnchor11 constraintEqualToAnchor:firstBaselineAnchor12 constant:v38];
  v87[0] = v83;
  leadingAnchor8 = [v35 leadingAnchor];
  contentView7 = [(CarSearchItemCell *)self contentView];
  leadingAnchor9 = [contentView7 leadingAnchor];
  v40 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:6.0];
  v87[1] = v40;
  trailingAnchor8 = [v35 trailingAnchor];
  contentView8 = [(CarSearchItemCell *)self contentView];
  trailingAnchor9 = [contentView8 trailingAnchor];
  v44 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:trailingAnchor9 constant:-6.0];
  v87[2] = v44;
  v45 = [NSArray arrayWithObjects:v87 count:3];
  v46 = v85;
  [v85 addObjectsFromArray:v45];

  firstBaselineAnchor6 = [v35 firstBaselineAnchor];
  v48 = [(CarSearchItemCell *)self _evChargerConstraints:firstBaselineAnchor6];

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
  _rightSecondLineString = [(CarSearchItemCell *)self _rightSecondLineString];
  trailingSubtitleLabel = [(CarSearchItemCell *)self trailingSubtitleLabel];
  [trailingSubtitleLabel setText:_rightSecondLineString];

  _leftSecondLineString = [(CarSearchItemCell *)self _leftSecondLineString];
  leadingSubtitleLabel = [(CarSearchItemCell *)self leadingSubtitleLabel];
  [leadingSubtitleLabel setText:_leftSecondLineString];
}

- (BOOL)_hasRealTimeChargerInfo:(id)info
{
  infoCopy = info;
  if (MapsFeature_IsEnabled_RealTimeEVCharger())
  {
    mapItem = [infoCopy mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    _hasEVCharger = [_geoMapItem _hasEVCharger];
  }

  else
  {
    _hasEVCharger = 0;
  }

  return _hasEVCharger;
}

- (void)setupWithModel:(id)model cellStyle:(int64_t)style
{
  modelCopy = model;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    mapItem = [modelCopy mapItem];
    _shortAddress = [mapItem _shortAddress];
    v29 = 138412546;
    selfCopy = self;
    v31 = 2112;
    v32 = _shortAddress;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CarSearchItemCell: Initialize cell:%@ with model: %@", &v29, 0x16u);
  }

  [(CarSearchItemCell *)self setModel:modelCopy];
  [(CarSearchItemCell *)self setCellStyle:style];
  _firstLineString = [(CarSearchItemCell *)self _firstLineString];
  titleLabel = [(CarSearchItemCell *)self titleLabel];
  [titleLabel setText:_firstLineString];

  [(CarSearchItemCell *)self _updateSubtitle];
  ratingView = [(CarSearchItemCell *)self ratingView];
  mapItem2 = [modelCopy mapItem];
  [ratingView setupWithMapItem:mapItem2];

  LODWORD(ratingView) = [(CarSearchItemCell *)self shouldShowRating];
  ratingView2 = [(CarSearchItemCell *)self ratingView];
  [ratingView2 setHidden:ratingView ^ 1];

  [(CarSearchItemCell *)self _updateLabelColors:[(CarSearchItemCell *)self isHighlighted]];
  mapItem3 = [modelCopy mapItem];
  _realTimeAvailableEVCharger = [mapItem3 _realTimeAvailableEVCharger];

  v17 = [_TtC4Maps16EVChargerUtility realTimeEVChargerStatusWithEvCharger:_realTimeAvailableEVCharger];
  v18 = +[UIColor _carSystemSecondaryColor];
  if ([(CarSearchItemCell *)self _hasRealTimeChargerInfo:modelCopy])
  {
    if (v17 == 1)
    {
      v19 = +[UIColor systemGreenColor];

      v18 = v19;
    }

    [(CarSearchResultEVChargerView *)self->_evChargerInfoView setTextAndIconColor:v18 status:v17];
    evChargerInfoView = self->_evChargerInfoView;
    evChargerLabelText = [modelCopy evChargerLabelText];
    [(CarSearchResultEVChargerView *)evChargerInfoView updateContentsWithPlugStatus:v17 displayString:evChargerLabelText];
LABEL_11:

    goto LABEL_12;
  }

  model = [(CarSearchItemCell *)self model];
  chargerNumberString = [model chargerNumberString];
  v24 = [chargerNumberString length];

  if (v24)
  {
    [(CarSearchResultEVChargerView *)self->_evChargerInfoView setTextAndIconColor:v18 status:0];
    v25 = self->_evChargerInfoView;
    model2 = [(CarSearchItemCell *)self model];
    chargerNumberString2 = [model2 chargerNumberString];
    [(CarSearchResultEVChargerView *)v25 updateContentsWithPlugStatus:0 displayString:chargerNumberString2];

    isRecent = 0;
    if ([modelCopy isShowingStops])
    {
      isRecent = [modelCopy isRecent];
    }

    evChargerLabelText = [(CarSearchResultEVChargerView *)self->_evChargerInfoView leadingIcon];
    [evChargerLabelText setHidden:isRecent];
    goto LABEL_11;
  }

LABEL_12:
  [(CarSearchItemCell *)self setNeedsUpdateConstraints];
}

- (void)setupStyles
{
  v3 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
  titleLabel = [(CarSearchItemCell *)self titleLabel];
  [titleLabel setFont:v3];

  v5 = +[UIColor labelColor];
  titleLabel2 = [(CarSearchItemCell *)self titleLabel];
  [titleLabel2 setTextColor:v5];

  titleLabel3 = [(CarSearchItemCell *)self titleLabel];
  [titleLabel3 setAdjustsFontSizeToFitWidth:0];

  v8 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:3 grade:UIFontWeightRegular];
  leadingSubtitleLabel = [(CarSearchItemCell *)self leadingSubtitleLabel];
  [leadingSubtitleLabel setFont:v8];

  v10 = +[UIColor _carSystemPrimaryColor];
  leadingSubtitleLabel2 = [(CarSearchItemCell *)self leadingSubtitleLabel];
  [leadingSubtitleLabel2 setTextColor:v10];

  v12 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:3 grade:UIFontWeightRegular];
  trailingSubtitleLabel = [(CarSearchItemCell *)self trailingSubtitleLabel];
  [trailingSubtitleLabel setFont:v12];

  v15 = +[UIColor _carSystemPrimaryColor];
  trailingSubtitleLabel2 = [(CarSearchItemCell *)self trailingSubtitleLabel];
  [trailingSubtitleLabel2 setTextColor:v15];
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
  contentView = [(CarSearchItemCell *)self contentView];
  [contentView addSubview:self->_titleLabel];

  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  leadingSubtitleLabel = self->_leadingSubtitleLabel;
  self->_leadingSubtitleLabel = v13;

  [(UILabel *)self->_leadingSubtitleLabel setAccessibilityIdentifier:@"LeadingSubtitleLabel"];
  [(UILabel *)self->_leadingSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v15) = 1148846080;
  [(UILabel *)self->_leadingSubtitleLabel setContentHuggingPriority:1 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(UILabel *)self->_leadingSubtitleLabel setContentHuggingPriority:0 forAxis:v16];
  contentView2 = [(CarSearchItemCell *)self contentView];
  [contentView2 addSubview:self->_leadingSubtitleLabel];

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
  contentView3 = [(CarSearchItemCell *)self contentView];
  [contentView3 addSubview:self->_trailingSubtitleLabel];

  v24 = objc_alloc_init(CarStarRatingView);
  ratingView = self->_ratingView;
  self->_ratingView = v24;

  [(CarStarRatingView *)self->_ratingView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v26) = 1148846080;
  [(CarStarRatingView *)self->_ratingView setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [(CarStarRatingView *)self->_ratingView setContentHuggingPriority:1 forAxis:v27];
  contentView4 = [(CarSearchItemCell *)self contentView];
  [contentView4 addSubview:self->_ratingView];

  height = [[_TtC4Maps28CarSearchResultEVChargerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  evChargerInfoView = self->_evChargerInfoView;
  self->_evChargerInfoView = height;

  [(CarSearchResultEVChargerView *)self->_evChargerInfoView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v31) = 1148846080;
  [(CarSearchResultEVChargerView *)self->_evChargerInfoView setContentHuggingPriority:1 forAxis:v31];
  LODWORD(v32) = 1144750080;
  [(CarSearchResultEVChargerView *)self->_evChargerInfoView setContentHuggingPriority:0 forAxis:v32];
  LODWORD(v33) = 1148846080;
  [(CarSearchResultEVChargerView *)self->_evChargerInfoView setContentCompressionResistancePriority:1 forAxis:v33];
  contentView5 = [(CarSearchItemCell *)self contentView];
  [contentView5 addSubview:self->_evChargerInfoView];
}

- (CarSearchItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CarSearchItemCell;
  v4 = [(CarSearchItemCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(CarSearchItemCell *)v4 contentView];
    [contentView setClipsToBounds:1];

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