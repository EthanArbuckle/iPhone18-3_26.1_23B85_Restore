@interface TransitSchedulesStopViewCell
- (TransitSchedulesStopViewCell)initWithFrame:(CGRect)frame;
- (id)createStationLinkSubview;
- (id)departureTimeColor;
- (id)primaryTextColor;
- (void)createSubviews;
- (void)createVehicleImageView;
- (void)prepareForReuse;
- (void)setHighlightStation:(BOOL)station;
- (void)setTransitLine:(id)line withTransitTripStop:(id)stop stopType:(unint64_t)type colorStyleType:(unint64_t)styleType vehiclePosition:(unint64_t)position showTimeZone:(BOOL)zone;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePrimaryTextFont;
- (void)updateTransitLinks;
@end

@implementation TransitSchedulesStopViewCell

- (id)primaryTextColor
{
  linkColorStyleType = self->_linkColorStyleType;
  theme = [(TransitSchedulesStopViewCell *)self theme];
  v4 = theme;
  if (linkColorStyleType == 2)
  {
    [theme transitSchedulesPastStopTextColor];
  }

  else
  {
    [theme transitSchedulesOnTimeStopTimeTextColor];
  }
  v5 = ;

  return v5;
}

- (id)departureTimeColor
{
  if (self->_linkColorStyleType == 2)
  {
    theme = [(TransitSchedulesStopViewCell *)self theme];
    transitSchedulesPastStopTextColor = [theme transitSchedulesPastStopTextColor];
  }

  else
  {
    transitLine = [(TransitSchedulesStopViewCell *)self transitLine];
    [transitLine departureTimeDisplayStyle];

    transitTripStop = [(TransitSchedulesStopViewCell *)self transitTripStop];
    departure = [transitTripStop departure];
    liveStatus = [departure liveStatus];

    if ([(TransitSchedulesStopViewCell *)self isHighlightedStation]&& (liveStatus & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v9 = +[UIColor systemRedColor];
      goto LABEL_8;
    }

    theme = [(TransitSchedulesStopViewCell *)self theme];
    transitSchedulesPastStopTextColor = [theme transitSchedulesOnTimeStopTimeTextColor];
  }

  v9 = transitSchedulesPastStopTextColor;

LABEL_8:

  return v9;
}

- (void)setHighlightStation:(BOOL)station
{
  if (self->_highlightStation != station)
  {
    self->_highlightStation = station;
    [(TransitSchedulesStopViewCell *)self updatePrimaryTextFont];
    departureTimeColor = [(TransitSchedulesStopViewCell *)self departureTimeColor];
    timeLabel = [(TransitSchedulesStopViewCell *)self timeLabel];
    [timeLabel setTextColor:departureTimeColor];

    [(TransitSchedulesStopViewCell *)self layoutIfNeeded];
  }
}

- (void)updatePrimaryTextFont
{
  if ([(TransitSchedulesStopViewCell *)self isHighlightedStation])
  {
    v3 = &stru_10165DA88;
  }

  else
  {
    v3 = &stru_10165D8C8;
  }

  v5 = objc_retainBlock(v3);
  primaryTextLabel = [(TransitSchedulesStopViewCell *)self primaryTextLabel];
  [DynamicTypeWizard autorefreshLabel:primaryTextLabel withFontProvider:v5];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = TransitSchedulesStopViewCell;
  changeCopy = change;
  [(MapsThemeCollectionViewListCell *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(TransitSchedulesStopViewCell *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(TransitSchedulesStopViewCell *)self updateTransitLinks];
  }
}

- (void)updateTransitLinks
{
  transitLine = [(TransitSchedulesStopViewCell *)self transitLine];

  if (transitLine)
  {
    if (self->_linkColorStyleType == 2)
    {
      theme = [(TransitSchedulesStopViewCell *)self theme];
      [theme transitSchedulesPastStopLinkColor];
    }

    else
    {
      theme = [(TransitSchedulesStopViewCell *)self transitLine];
      [UIColor _mapkit_colorForTransitLine:theme];
    }
    v23 = ;

    _maps_hexString = [v23 _maps_hexString];
    if ([(TransitSchedulesStopViewCell *)self stopType]== 1 || [(TransitSchedulesStopViewCell *)self stopType]== 3)
    {
      v6 = [MKTransitArtwork stationNodeArtworkWithHexColor:_maps_hexString];
    }

    else
    {
      v6 = [MKTransitArtwork stationNodeOutlinedArtworkWithHexColor:_maps_hexString];
    }

    v7 = v6;
    v8 = +[MKArtworkDataSourceCache sharedInstance];
    v9 = +[UIScreen mainScreen];
    [v9 scale];
    v11 = v10;

    if ([(TransitSchedulesStopViewCell *)self isHighlightedStation])
    {
      v12 = 5;
    }

    else
    {
      v12 = 3;
    }

    v13 = [v8 imageForArtwork:v7 size:v12 featureType:2 scale:-[TransitSchedulesStopViewCell _mapkit_isDarkModeEnabled](self nightMode:{"_mapkit_isDarkModeEnabled"), v11}];
    transitLineStopIndicatorImageView = [(TransitSchedulesStopViewCell *)self transitLineStopIndicatorImageView];
    [transitLineStopIndicatorImageView setImage:v13];

    linkColorStyleType = self->_linkColorStyleType;
    transitSchedulesPastStopLinkColor = v23;
    if (linkColorStyleType == 3)
    {
      transitLineStopIndicatorImageView = [(TransitSchedulesStopViewCell *)self theme];
      transitSchedulesPastStopLinkColor = [transitLineStopIndicatorImageView transitSchedulesPastStopLinkColor];
    }

    incomingTransitLineSection = [(TransitSchedulesStopViewCell *)self incomingTransitLineSection];
    [incomingTransitLineSection setLineColor:transitSchedulesPastStopLinkColor];

    if (linkColorStyleType == 3)
    {
    }

    outgoingTransitLineSection = [(TransitSchedulesStopViewCell *)self outgoingTransitLineSection];
    [outgoingTransitLineSection setLineColor:v23];

    v19 = [(TransitSchedulesStopViewCell *)self stopType]== 1;
    incomingTransitLineSection2 = [(TransitSchedulesStopViewCell *)self incomingTransitLineSection];
    [incomingTransitLineSection2 setHidden:v19];

    v21 = [(TransitSchedulesStopViewCell *)self stopType]== 3;
    outgoingTransitLineSection2 = [(TransitSchedulesStopViewCell *)self outgoingTransitLineSection];
    [outgoingTransitLineSection2 setHidden:v21];
  }
}

- (void)setTransitLine:(id)line withTransitTripStop:(id)stop stopType:(unint64_t)type colorStyleType:(unint64_t)styleType vehiclePosition:(unint64_t)position showTimeZone:(BOOL)zone
{
  zoneCopy = zone;
  positionCopy = position;
  lineCopy = line;
  stopCopy = stop;
  if (self->_stopType == type && self->_linkColorStyleType == styleType && [(GEOTransitLine *)self->_transitLine isEqual:lineCopy]&& ([(GEOTransitTripStop *)self->_transitTripStop isEqual:stopCopy]& 1) != 0)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&self->_transitLine, line);
  self->_stopType = type;
  objc_storeStrong(&self->_transitTripStop, stop);
  self->_linkColorStyleType = styleType;
  transitTripStop = [(TransitSchedulesStopViewCell *)self transitTripStop];
  displayName = [transitTripStop displayName];
  primaryTextLabel = [(TransitSchedulesStopViewCell *)self primaryTextLabel];
  [primaryTextLabel setText:displayName];

  [(TransitSchedulesStopViewCell *)self updatePrimaryTextFont];
  objc_initWeak(&location, self);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100FC46FC;
  v43[3] = &unk_101660218;
  objc_copyWeak(&v44, &location);
  primaryTextLabel2 = [(TransitSchedulesStopViewCell *)self primaryTextLabel];
  [primaryTextLabel2 setTextColorProvider:v43];

  transitTripStop2 = [(TransitSchedulesStopViewCell *)self transitTripStop];
  departure = [transitTripStop2 departure];

  if ([departure isCanceled])
  {
    isHighlightedStation = [(TransitSchedulesStopViewCell *)self isHighlightedStation];
    v21 = isHighlightedStation;
    if (isHighlightedStation)
    {
      transitTripStop2 = +[NSBundle mainBundle];
      transitTripStop3 = [transitTripStop2 localizedStringForKey:@"Schedules Stop Cell Canceled" value:@"localized string not found" table:0];
    }

    else
    {
      transitTripStop3 = 0;
    }

    timeLabel = [(TransitSchedulesStopViewCell *)self timeLabel];
    [timeLabel setText:transitTripStop3];

    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    transitTripStop2 = [departure departureDate];
    transitTripStop3 = [(TransitSchedulesStopViewCell *)self transitTripStop];
    timeZone = [transitTripStop3 timeZone];
    v24 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:transitTripStop2 inTimeZone:timeZone canIncludeDate:0 showTimeZone:zoneCopy useShortFormat:0];
    timeLabel2 = [(TransitSchedulesStopViewCell *)self timeLabel];
    [timeLabel2 setText:v24];
  }

LABEL_12:
  departureTimeColor = [(TransitSchedulesStopViewCell *)self departureTimeColor];
  timeLabel3 = [(TransitSchedulesStopViewCell *)self timeLabel];
  [timeLabel3 setTextColor:departureTimeColor];

  transitTripStop4 = [(TransitSchedulesStopViewCell *)self transitTripStop];
  labelItems = [transitTripStop4 labelItems];
  v31 = [labelItems count] == 0;

  connectingTransitShieldsLabelView = [(TransitSchedulesStopViewCell *)self connectingTransitShieldsLabelView];
  if (v31)
  {
    [connectingTransitShieldsLabelView setHidden:1];

    [NSLayoutConstraint deactivateConstraints:self->_connectingTransitShieldsConstraints];
    stopTextToBottomConstraint = self->_stopTextToBottomConstraint;
    v37 = [NSArray arrayWithObjects:&stopTextToBottomConstraint count:1];
    [NSLayoutConstraint activateConstraints:v37];

    connectingTransitShieldsLabelView2 = [(TransitSchedulesStopViewCell *)self connectingTransitShieldsLabelView];
    [connectingTransitShieldsLabelView2 setLabelItems:0];
  }

  else
  {
    [connectingTransitShieldsLabelView setHidden:0];

    v47 = self->_stopTextToBottomConstraint;
    v33 = [NSArray arrayWithObjects:&v47 count:1];
    [NSLayoutConstraint deactivateConstraints:v33];

    [NSLayoutConstraint activateConstraints:self->_connectingTransitShieldsConstraints];
    connectingTransitShieldsLabelView2 = [(TransitSchedulesStopViewCell *)self transitTripStop];
    labelItems2 = [connectingTransitShieldsLabelView2 labelItems];
    connectingTransitShieldsLabelView3 = [(TransitSchedulesStopViewCell *)self connectingTransitShieldsLabelView];
    [connectingTransitShieldsLabelView3 setLabelItems:labelItems2];
  }

  [(TransitSchedulesStopViewCell *)self updateTransitLinks];
  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
LABEL_16:
  if (positionCopy)
  {
    [(TransitSchedulesStopViewCell *)self createVehicleImageView];
    if (positionCopy == 1)
    {
      v38 = &OBJC_IVAR___TransitSchedulesStopViewCell__vehicleImageAtStationConstraint;
      v39 = &OBJC_IVAR___TransitSchedulesStopViewCell__vehicleImageLeavingStationConstraint;
      goto LABEL_21;
    }

    if (positionCopy == 2)
    {
      v38 = &OBJC_IVAR___TransitSchedulesStopViewCell__vehicleImageLeavingStationConstraint;
      v39 = &OBJC_IVAR___TransitSchedulesStopViewCell__vehicleImageAtStationConstraint;
LABEL_21:
      [*(&self->super + *v39) setActive:{0, positionCopy}];
      [*(&self->super + *v38) setActive:1];
    }
  }

  [(TransitSchedulesStopViewCell *)self setNeedsUpdateConstraints];
}

- (void)createVehicleImageView
{
  if (!self->_vehicleImageView)
  {
    v3 = [TransitVehicleLineAnnotation alloc];
    transitLine = [(TransitSchedulesStopViewCell *)self transitLine];
    v37 = [(TransitVehicleLineAnnotation *)v3 initWithTransitLine:transitLine];

    v5 = [(TransitVehiclePositionAnnotationView *)[TransitScheduleCardVehiclePositionAnnotationView alloc] initWithAnnotation:v37 reuseIdentifier:@"TransitVehiclePositionAnnotationView"];
    [(TransitSchedulesStopViewCell *)self setVehicleImageView:v5];

    vehicleImageView = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    [vehicleImageView setTranslatesAutoresizingMaskIntoConstraints:0];

    coloredTransitLineContainerView = [(TransitSchedulesStopViewCell *)self coloredTransitLineContainerView];
    vehicleImageView2 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    [coloredTransitLineContainerView addSubview:vehicleImageView2];

    vehicleImageView3 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    centerXAnchor = [vehicleImageView3 centerXAnchor];
    coloredTransitLineContainerView2 = [(TransitSchedulesStopViewCell *)self coloredTransitLineContainerView];
    centerXAnchor2 = [coloredTransitLineContainerView2 centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v38[0] = v32;
    vehicleImageView4 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    topAnchor = [vehicleImageView4 topAnchor];
    coloredTransitLineContainerView3 = [(TransitSchedulesStopViewCell *)self coloredTransitLineContainerView];
    topAnchor2 = [coloredTransitLineContainerView3 topAnchor];
    v11 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:0.0];
    v38[1] = v11;
    vehicleImageView5 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    bottomAnchor = [vehicleImageView5 bottomAnchor];
    coloredTransitLineContainerView4 = [(TransitSchedulesStopViewCell *)self coloredTransitLineContainerView];
    bottomAnchor2 = [coloredTransitLineContainerView4 bottomAnchor];
    v16 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:0.0];
    v38[2] = v16;
    v17 = [NSArray arrayWithObjects:v38 count:3];
    [NSLayoutConstraint activateConstraints:v17];

    vehicleImageView6 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    centerYAnchor = [vehicleImageView6 centerYAnchor];
    transitLineStopIndicatorImageView = [(TransitSchedulesStopViewCell *)self transitLineStopIndicatorImageView];
    centerYAnchor2 = [transitLineStopIndicatorImageView centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    vehicleImageAtStationConstraint = self->_vehicleImageAtStationConstraint;
    self->_vehicleImageAtStationConstraint = v22;

    vehicleImageView7 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    bottomAnchor3 = [vehicleImageView7 bottomAnchor];
    outgoingTransitLineSection = [(TransitSchedulesStopViewCell *)self outgoingTransitLineSection];
    bottomAnchor4 = [outgoingTransitLineSection bottomAnchor];
    v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    vehicleImageLeavingStationConstraint = self->_vehicleImageLeavingStationConstraint;
    self->_vehicleImageLeavingStationConstraint = v28;
  }
}

- (id)createStationLinkSubview
{
  v3 = objc_alloc_init(UIView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_alloc_init(TransitDirectionsColoredLine);
  [(TransitDirectionsColoredLine *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v4];
  [(TransitSchedulesStopViewCell *)self setIncomingTransitLineSection:v4];
  v5 = objc_alloc_init(TransitDirectionsColoredLine);
  [(TransitDirectionsColoredLine *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v5];
  [(TransitSchedulesStopViewCell *)self setOutgoingTransitLineSection:v5];
  v6 = objc_alloc_init(UIImageView);
  [(TransitSchedulesStopViewCell *)self setTransitLineStopIndicatorImageView:v6];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setContentMode:1];
  [v3 addSubview:v6];
  topAnchor = [(TransitDirectionsColoredLine *)v4 topAnchor];
  topAnchor2 = [v3 topAnchor];
  [topAnchor constraintEqualToAnchor:topAnchor2];
  v37 = v36 = v4;
  v40[0] = v37;
  centerXAnchor = [(TransitDirectionsColoredLine *)v4 centerXAnchor];
  centerXAnchor2 = [v3 centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v40[1] = v33;
  widthAnchor = [(TransitDirectionsColoredLine *)v4 widthAnchor];
  v31 = [widthAnchor constraintEqualToConstant:4.0];
  v40[2] = v31;
  bottomAnchor = [(TransitDirectionsColoredLine *)v4 bottomAnchor];
  topAnchor3 = [v6 topAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:1.0];
  v40[3] = v28;
  centerXAnchor3 = [v6 centerXAnchor];
  centerXAnchor4 = [v3 centerXAnchor];
  v25 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v40[4] = v25;
  topAnchor4 = [v6 topAnchor];
  topAnchor5 = [v3 topAnchor];
  v21 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5 constant:2.0];
  v40[5] = v21;
  topAnchor6 = [(TransitDirectionsColoredLine *)v5 topAnchor];
  bottomAnchor2 = [v6 bottomAnchor];
  v18 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:-1.0];
  v40[6] = v18;
  bottomAnchor3 = [(TransitDirectionsColoredLine *)v5 bottomAnchor];
  bottomAnchor4 = [v3 bottomAnchor];
  v8 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v40[7] = v8;
  v9 = v5;
  v24 = v5;
  centerXAnchor5 = [(TransitDirectionsColoredLine *)v5 centerXAnchor];
  centerXAnchor6 = [v3 centerXAnchor];
  v12 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v40[8] = v12;
  widthAnchor2 = [(TransitDirectionsColoredLine *)v9 widthAnchor];
  v14 = [widthAnchor2 constraintEqualToConstant:4.0];
  v40[9] = v14;
  v15 = [NSArray arrayWithObjects:v40 count:10];
  [NSLayoutConstraint activateConstraints:v15];

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TransitSchedulesStopViewCell;
  [(TransitSchedulesStopViewCell *)&v4 prepareForReuse];
  vehicleImageView = [(TransitSchedulesStopViewCell *)self vehicleImageView];
  [vehicleImageView removeFromSuperview];

  [(TransitSchedulesStopViewCell *)self setVehicleImageView:0];
}

- (void)createSubviews
{
  contentView = [(TransitSchedulesStopViewCell *)self contentView];
  [contentView setAccessibilityIdentifier:@"TransitSchedulesStopViewCell"];
  v4 = +[UIColor clearColor];
  [(TransitSchedulesStopViewCell *)self setBackgroundColor:v4];

  createStationLinkSubview = [(TransitSchedulesStopViewCell *)self createStationLinkSubview];
  [(TransitSchedulesStopViewCell *)self setColoredTransitLineContainerView:createStationLinkSubview];
  [contentView addSubview:createStationLinkSubview];
  v5 = objc_alloc_init(MapsThemeLabel);
  [(TransitSchedulesStopViewCell *)self setPrimaryTextLabel:v5];
  [(MapsThemeLabel *)v5 setNumberOfLines:2];
  [(MapsThemeLabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v5 setAccessibilityIdentifier:@"TransitSchedulesStopViewCellPrimaryTextLabel"];
  [contentView addSubview:v5];
  v6 = v5;
  LODWORD(v7) = 1148846080;
  [(MapsThemeLabel *)v5 setContentCompressionResistancePriority:1 forAxis:v7];
  v8 = objc_alloc_init(UILabel);
  [(TransitSchedulesStopViewCell *)self setTimeLabel:v8];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAccessibilityIdentifier:@"TransitSchedulesStopViewCellTimeLabel"];
  v71 = contentView;
  [contentView addSubview:v8];
  v74 = v8;
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v9];
  [DynamicTypeWizard autorefreshLabel:v8 withFontProvider:&stru_10165D928];
  v10 = [MKTransitInfoLabelView alloc];
  v11 = [v10 initWithLabelItems:0 iconSize:3 shieldSize:5 spaceBetweenShields:3.0 maxWidth:MKTransitInfoLabelViewNoMaxWidth];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setAccessibilityIdentifier:@"TransitSchedulesStopViewCellTransitInfoLabelView"];
  [contentView addSubview:v11];
  LODWORD(v12) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v13];
  [(TransitSchedulesStopViewCell *)self setConnectingTransitShieldsLabelView:v11];
  topAnchor = [v11 topAnchor];
  v72 = v6;
  bottomAnchor = [(MapsThemeLabel *)v6 bottomAnchor];
  v64 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:2.0];
  v76[0] = v64;
  leadingAnchor = [v11 leadingAnchor];
  leadingAnchor2 = [(MapsThemeLabel *)v6 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v76[1] = v14;
  v15 = v11;
  v70 = v11;
  trailingAnchor = [v11 trailingAnchor];
  contentView2 = [(TransitSchedulesStopViewCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v19 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-8.0];
  v76[2] = v19;
  bottomAnchor2 = [v15 bottomAnchor];
  contentView3 = [(TransitSchedulesStopViewCell *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  v23 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-10.0];
  v76[3] = v23;
  v24 = [NSArray arrayWithObjects:v76 count:4];
  connectingTransitShieldsConstraints = self->_connectingTransitShieldsConstraints;
  self->_connectingTransitShieldsConstraints = v24;

  bottomAnchor4 = [(MapsThemeLabel *)v72 bottomAnchor];
  bottomAnchor5 = [v71 bottomAnchor];
  v28 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:-28.0];
  stopTextToBottomConstraint = self->_stopTextToBottomConstraint;
  self->_stopTextToBottomConstraint = v28;

  topAnchor2 = [createStationLinkSubview topAnchor];
  topAnchor3 = [v71 topAnchor];
  v65 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v75[0] = v65;
  bottomAnchor6 = [createStationLinkSubview bottomAnchor];
  bottomAnchor7 = [v71 bottomAnchor];
  v59 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v75[1] = v59;
  leadingAnchor3 = [createStationLinkSubview leadingAnchor];
  leadingAnchor4 = [v71 leadingAnchor];
  v56 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v75[2] = v56;
  widthAnchor = [createStationLinkSubview widthAnchor];
  v54 = [widthAnchor constraintEqualToConstant:24.0];
  v75[3] = v54;
  topAnchor4 = [(MapsThemeLabel *)v72 topAnchor];
  topAnchor5 = [v71 topAnchor];
  v51 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5 constant:2.0];
  v75[4] = v51;
  centerYAnchor = [(MapsThemeLabel *)v72 centerYAnchor];
  transitLineStopIndicatorImageView = [(TransitSchedulesStopViewCell *)self transitLineStopIndicatorImageView];
  centerYAnchor2 = [transitLineStopIndicatorImageView centerYAnchor];
  v47 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v75[5] = v47;
  leadingAnchor5 = [(MapsThemeLabel *)v72 leadingAnchor];
  trailingAnchor3 = [createStationLinkSubview trailingAnchor];
  v44 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:8.0];
  v30 = self->_stopTextToBottomConstraint;
  v75[6] = v44;
  v75[7] = v30;
  leadingAnchor6 = [v74 leadingAnchor];
  trailingAnchor4 = [(MapsThemeLabel *)v72 trailingAnchor];
  v41 = [leadingAnchor6 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:8.0];
  v75[8] = v41;
  trailingAnchor5 = [v74 trailingAnchor];
  trailingAnchor6 = [v71 trailingAnchor];
  v33 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v75[9] = v33;
  firstBaselineAnchor = [v74 firstBaselineAnchor];
  firstBaselineAnchor2 = [(MapsThemeLabel *)v72 firstBaselineAnchor];
  v36 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v75[10] = v36;
  bottomAnchor8 = [v74 bottomAnchor];
  bottomAnchor9 = [v71 bottomAnchor];
  v39 = [bottomAnchor8 constraintLessThanOrEqualToAnchor:bottomAnchor9];
  v75[11] = v39;
  v40 = [NSArray arrayWithObjects:v75 count:12];
  [NSLayoutConstraint activateConstraints:v40];
}

- (TransitSchedulesStopViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TransitSchedulesStopViewCell;
  v3 = [(TransitSchedulesStopViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitSchedulesStopViewCell *)v3 createSubviews];
  }

  return v4;
}

@end