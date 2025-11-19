@interface TransitSchedulesStopViewCell
- (TransitSchedulesStopViewCell)initWithFrame:(CGRect)a3;
- (id)createStationLinkSubview;
- (id)departureTimeColor;
- (id)primaryTextColor;
- (void)createSubviews;
- (void)createVehicleImageView;
- (void)prepareForReuse;
- (void)setHighlightStation:(BOOL)a3;
- (void)setTransitLine:(id)a3 withTransitTripStop:(id)a4 stopType:(unint64_t)a5 colorStyleType:(unint64_t)a6 vehiclePosition:(unint64_t)a7 showTimeZone:(BOOL)a8;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePrimaryTextFont;
- (void)updateTransitLinks;
@end

@implementation TransitSchedulesStopViewCell

- (id)primaryTextColor
{
  linkColorStyleType = self->_linkColorStyleType;
  v3 = [(TransitSchedulesStopViewCell *)self theme];
  v4 = v3;
  if (linkColorStyleType == 2)
  {
    [v3 transitSchedulesPastStopTextColor];
  }

  else
  {
    [v3 transitSchedulesOnTimeStopTimeTextColor];
  }
  v5 = ;

  return v5;
}

- (id)departureTimeColor
{
  if (self->_linkColorStyleType == 2)
  {
    v3 = [(TransitSchedulesStopViewCell *)self theme];
    v4 = [v3 transitSchedulesPastStopTextColor];
  }

  else
  {
    v5 = [(TransitSchedulesStopViewCell *)self transitLine];
    [v5 departureTimeDisplayStyle];

    v6 = [(TransitSchedulesStopViewCell *)self transitTripStop];
    v7 = [v6 departure];
    v8 = [v7 liveStatus];

    if ([(TransitSchedulesStopViewCell *)self isHighlightedStation]&& (v8 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v9 = +[UIColor systemRedColor];
      goto LABEL_8;
    }

    v3 = [(TransitSchedulesStopViewCell *)self theme];
    v4 = [v3 transitSchedulesOnTimeStopTimeTextColor];
  }

  v9 = v4;

LABEL_8:

  return v9;
}

- (void)setHighlightStation:(BOOL)a3
{
  if (self->_highlightStation != a3)
  {
    self->_highlightStation = a3;
    [(TransitSchedulesStopViewCell *)self updatePrimaryTextFont];
    v5 = [(TransitSchedulesStopViewCell *)self departureTimeColor];
    v6 = [(TransitSchedulesStopViewCell *)self timeLabel];
    [v6 setTextColor:v5];

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
  v4 = [(TransitSchedulesStopViewCell *)self primaryTextLabel];
  [DynamicTypeWizard autorefreshLabel:v4 withFontProvider:v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = TransitSchedulesStopViewCell;
  v4 = a3;
  [(MapsThemeCollectionViewListCell *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(TransitSchedulesStopViewCell *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    [(TransitSchedulesStopViewCell *)self updateTransitLinks];
  }
}

- (void)updateTransitLinks
{
  v3 = [(TransitSchedulesStopViewCell *)self transitLine];

  if (v3)
  {
    if (self->_linkColorStyleType == 2)
    {
      v4 = [(TransitSchedulesStopViewCell *)self theme];
      [v4 transitSchedulesPastStopLinkColor];
    }

    else
    {
      v4 = [(TransitSchedulesStopViewCell *)self transitLine];
      [UIColor _mapkit_colorForTransitLine:v4];
    }
    v23 = ;

    v5 = [v23 _maps_hexString];
    if ([(TransitSchedulesStopViewCell *)self stopType]== 1 || [(TransitSchedulesStopViewCell *)self stopType]== 3)
    {
      v6 = [MKTransitArtwork stationNodeArtworkWithHexColor:v5];
    }

    else
    {
      v6 = [MKTransitArtwork stationNodeOutlinedArtworkWithHexColor:v5];
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
    v14 = [(TransitSchedulesStopViewCell *)self transitLineStopIndicatorImageView];
    [v14 setImage:v13];

    linkColorStyleType = self->_linkColorStyleType;
    v16 = v23;
    if (linkColorStyleType == 3)
    {
      v14 = [(TransitSchedulesStopViewCell *)self theme];
      v16 = [v14 transitSchedulesPastStopLinkColor];
    }

    v17 = [(TransitSchedulesStopViewCell *)self incomingTransitLineSection];
    [v17 setLineColor:v16];

    if (linkColorStyleType == 3)
    {
    }

    v18 = [(TransitSchedulesStopViewCell *)self outgoingTransitLineSection];
    [v18 setLineColor:v23];

    v19 = [(TransitSchedulesStopViewCell *)self stopType]== 1;
    v20 = [(TransitSchedulesStopViewCell *)self incomingTransitLineSection];
    [v20 setHidden:v19];

    v21 = [(TransitSchedulesStopViewCell *)self stopType]== 3;
    v22 = [(TransitSchedulesStopViewCell *)self outgoingTransitLineSection];
    [v22 setHidden:v21];
  }
}

- (void)setTransitLine:(id)a3 withTransitTripStop:(id)a4 stopType:(unint64_t)a5 colorStyleType:(unint64_t)a6 vehiclePosition:(unint64_t)a7 showTimeZone:(BOOL)a8
{
  v8 = a8;
  v40 = a7;
  v42 = a3;
  v41 = a4;
  if (self->_stopType == a5 && self->_linkColorStyleType == a6 && [(GEOTransitLine *)self->_transitLine isEqual:v42]&& ([(GEOTransitTripStop *)self->_transitTripStop isEqual:v41]& 1) != 0)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&self->_transitLine, a3);
  self->_stopType = a5;
  objc_storeStrong(&self->_transitTripStop, a4);
  self->_linkColorStyleType = a6;
  v14 = [(TransitSchedulesStopViewCell *)self transitTripStop];
  v15 = [v14 displayName];
  v16 = [(TransitSchedulesStopViewCell *)self primaryTextLabel];
  [v16 setText:v15];

  [(TransitSchedulesStopViewCell *)self updatePrimaryTextFont];
  objc_initWeak(&location, self);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100FC46FC;
  v43[3] = &unk_101660218;
  objc_copyWeak(&v44, &location);
  v17 = [(TransitSchedulesStopViewCell *)self primaryTextLabel];
  [v17 setTextColorProvider:v43];

  v18 = [(TransitSchedulesStopViewCell *)self transitTripStop];
  v19 = [v18 departure];

  if ([v19 isCanceled])
  {
    v20 = [(TransitSchedulesStopViewCell *)self isHighlightedStation];
    v21 = v20;
    if (v20)
    {
      v18 = +[NSBundle mainBundle];
      v22 = [v18 localizedStringForKey:@"Schedules Stop Cell Canceled" value:@"localized string not found" table:0];
    }

    else
    {
      v22 = 0;
    }

    v26 = [(TransitSchedulesStopViewCell *)self timeLabel];
    [v26 setText:v22];

    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = [v19 departureDate];
    v22 = [(TransitSchedulesStopViewCell *)self transitTripStop];
    v23 = [v22 timeZone];
    v24 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v18 inTimeZone:v23 canIncludeDate:0 showTimeZone:v8 useShortFormat:0];
    v25 = [(TransitSchedulesStopViewCell *)self timeLabel];
    [v25 setText:v24];
  }

LABEL_12:
  v27 = [(TransitSchedulesStopViewCell *)self departureTimeColor];
  v28 = [(TransitSchedulesStopViewCell *)self timeLabel];
  [v28 setTextColor:v27];

  v29 = [(TransitSchedulesStopViewCell *)self transitTripStop];
  v30 = [v29 labelItems];
  v31 = [v30 count] == 0;

  v32 = [(TransitSchedulesStopViewCell *)self connectingTransitShieldsLabelView];
  if (v31)
  {
    [v32 setHidden:1];

    [NSLayoutConstraint deactivateConstraints:self->_connectingTransitShieldsConstraints];
    stopTextToBottomConstraint = self->_stopTextToBottomConstraint;
    v37 = [NSArray arrayWithObjects:&stopTextToBottomConstraint count:1];
    [NSLayoutConstraint activateConstraints:v37];

    v34 = [(TransitSchedulesStopViewCell *)self connectingTransitShieldsLabelView];
    [v34 setLabelItems:0];
  }

  else
  {
    [v32 setHidden:0];

    v47 = self->_stopTextToBottomConstraint;
    v33 = [NSArray arrayWithObjects:&v47 count:1];
    [NSLayoutConstraint deactivateConstraints:v33];

    [NSLayoutConstraint activateConstraints:self->_connectingTransitShieldsConstraints];
    v34 = [(TransitSchedulesStopViewCell *)self transitTripStop];
    v35 = [v34 labelItems];
    v36 = [(TransitSchedulesStopViewCell *)self connectingTransitShieldsLabelView];
    [v36 setLabelItems:v35];
  }

  [(TransitSchedulesStopViewCell *)self updateTransitLinks];
  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
LABEL_16:
  if (v40)
  {
    [(TransitSchedulesStopViewCell *)self createVehicleImageView];
    if (v40 == 1)
    {
      v38 = &OBJC_IVAR___TransitSchedulesStopViewCell__vehicleImageAtStationConstraint;
      v39 = &OBJC_IVAR___TransitSchedulesStopViewCell__vehicleImageLeavingStationConstraint;
      goto LABEL_21;
    }

    if (v40 == 2)
    {
      v38 = &OBJC_IVAR___TransitSchedulesStopViewCell__vehicleImageLeavingStationConstraint;
      v39 = &OBJC_IVAR___TransitSchedulesStopViewCell__vehicleImageAtStationConstraint;
LABEL_21:
      [*(&self->super + *v39) setActive:{0, v40}];
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
    v4 = [(TransitSchedulesStopViewCell *)self transitLine];
    v37 = [(TransitVehicleLineAnnotation *)v3 initWithTransitLine:v4];

    v5 = [(TransitVehiclePositionAnnotationView *)[TransitScheduleCardVehiclePositionAnnotationView alloc] initWithAnnotation:v37 reuseIdentifier:@"TransitVehiclePositionAnnotationView"];
    [(TransitSchedulesStopViewCell *)self setVehicleImageView:v5];

    v6 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(TransitSchedulesStopViewCell *)self coloredTransitLineContainerView];
    v8 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    [v7 addSubview:v8];

    v36 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    v34 = [v36 centerXAnchor];
    v35 = [(TransitSchedulesStopViewCell *)self coloredTransitLineContainerView];
    v33 = [v35 centerXAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v38[0] = v32;
    v31 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    v30 = [v31 topAnchor];
    v9 = [(TransitSchedulesStopViewCell *)self coloredTransitLineContainerView];
    v10 = [v9 topAnchor];
    v11 = [v30 constraintGreaterThanOrEqualToAnchor:v10 constant:0.0];
    v38[1] = v11;
    v12 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    v13 = [v12 bottomAnchor];
    v14 = [(TransitSchedulesStopViewCell *)self coloredTransitLineContainerView];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintLessThanOrEqualToAnchor:v15 constant:0.0];
    v38[2] = v16;
    v17 = [NSArray arrayWithObjects:v38 count:3];
    [NSLayoutConstraint activateConstraints:v17];

    v18 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    v19 = [v18 centerYAnchor];
    v20 = [(TransitSchedulesStopViewCell *)self transitLineStopIndicatorImageView];
    v21 = [v20 centerYAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    vehicleImageAtStationConstraint = self->_vehicleImageAtStationConstraint;
    self->_vehicleImageAtStationConstraint = v22;

    v24 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
    v25 = [v24 bottomAnchor];
    v26 = [(TransitSchedulesStopViewCell *)self outgoingTransitLineSection];
    v27 = [v26 bottomAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
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
  v39 = [(TransitDirectionsColoredLine *)v4 topAnchor];
  v38 = [v3 topAnchor];
  [v39 constraintEqualToAnchor:v38];
  v37 = v36 = v4;
  v40[0] = v37;
  v35 = [(TransitDirectionsColoredLine *)v4 centerXAnchor];
  v34 = [v3 centerXAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v40[1] = v33;
  v32 = [(TransitDirectionsColoredLine *)v4 widthAnchor];
  v31 = [v32 constraintEqualToConstant:4.0];
  v40[2] = v31;
  v30 = [(TransitDirectionsColoredLine *)v4 bottomAnchor];
  v29 = [v6 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:1.0];
  v40[3] = v28;
  v27 = [v6 centerXAnchor];
  v26 = [v3 centerXAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v40[4] = v25;
  v23 = [v6 topAnchor];
  v22 = [v3 topAnchor];
  v21 = [v23 constraintGreaterThanOrEqualToAnchor:v22 constant:2.0];
  v40[5] = v21;
  v20 = [(TransitDirectionsColoredLine *)v5 topAnchor];
  v19 = [v6 bottomAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:-1.0];
  v40[6] = v18;
  v17 = [(TransitDirectionsColoredLine *)v5 bottomAnchor];
  v7 = [v3 bottomAnchor];
  v8 = [v17 constraintEqualToAnchor:v7];
  v40[7] = v8;
  v9 = v5;
  v24 = v5;
  v10 = [(TransitDirectionsColoredLine *)v5 centerXAnchor];
  v11 = [v3 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v40[8] = v12;
  v13 = [(TransitDirectionsColoredLine *)v9 widthAnchor];
  v14 = [v13 constraintEqualToConstant:4.0];
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
  v3 = [(TransitSchedulesStopViewCell *)self vehicleImageView];
  [v3 removeFromSuperview];

  [(TransitSchedulesStopViewCell *)self setVehicleImageView:0];
}

- (void)createSubviews
{
  v3 = [(TransitSchedulesStopViewCell *)self contentView];
  [v3 setAccessibilityIdentifier:@"TransitSchedulesStopViewCell"];
  v4 = +[UIColor clearColor];
  [(TransitSchedulesStopViewCell *)self setBackgroundColor:v4];

  v73 = [(TransitSchedulesStopViewCell *)self createStationLinkSubview];
  [(TransitSchedulesStopViewCell *)self setColoredTransitLineContainerView:v73];
  [v3 addSubview:v73];
  v5 = objc_alloc_init(MapsThemeLabel);
  [(TransitSchedulesStopViewCell *)self setPrimaryTextLabel:v5];
  [(MapsThemeLabel *)v5 setNumberOfLines:2];
  [(MapsThemeLabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeLabel *)v5 setAccessibilityIdentifier:@"TransitSchedulesStopViewCellPrimaryTextLabel"];
  [v3 addSubview:v5];
  v6 = v5;
  LODWORD(v7) = 1148846080;
  [(MapsThemeLabel *)v5 setContentCompressionResistancePriority:1 forAxis:v7];
  v8 = objc_alloc_init(UILabel);
  [(TransitSchedulesStopViewCell *)self setTimeLabel:v8];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAccessibilityIdentifier:@"TransitSchedulesStopViewCellTimeLabel"];
  v71 = v3;
  [v3 addSubview:v8];
  v74 = v8;
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v9];
  [DynamicTypeWizard autorefreshLabel:v8 withFontProvider:&stru_10165D928];
  v10 = [MKTransitInfoLabelView alloc];
  v11 = [v10 initWithLabelItems:0 iconSize:3 shieldSize:5 spaceBetweenShields:3.0 maxWidth:MKTransitInfoLabelViewNoMaxWidth];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setAccessibilityIdentifier:@"TransitSchedulesStopViewCellTransitInfoLabelView"];
  [v3 addSubview:v11];
  LODWORD(v12) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v13];
  [(TransitSchedulesStopViewCell *)self setConnectingTransitShieldsLabelView:v11];
  v68 = [v11 topAnchor];
  v72 = v6;
  v66 = [(MapsThemeLabel *)v6 bottomAnchor];
  v64 = [v68 constraintEqualToAnchor:v66 constant:2.0];
  v76[0] = v64;
  v62 = [v11 leadingAnchor];
  v60 = [(MapsThemeLabel *)v6 leadingAnchor];
  v14 = [v62 constraintEqualToAnchor:v60];
  v76[1] = v14;
  v15 = v11;
  v70 = v11;
  v16 = [v11 trailingAnchor];
  v17 = [(TransitSchedulesStopViewCell *)self contentView];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintLessThanOrEqualToAnchor:v18 constant:-8.0];
  v76[2] = v19;
  v20 = [v15 bottomAnchor];
  v21 = [(TransitSchedulesStopViewCell *)self contentView];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:-10.0];
  v76[3] = v23;
  v24 = [NSArray arrayWithObjects:v76 count:4];
  connectingTransitShieldsConstraints = self->_connectingTransitShieldsConstraints;
  self->_connectingTransitShieldsConstraints = v24;

  v26 = [(MapsThemeLabel *)v72 bottomAnchor];
  v27 = [v71 bottomAnchor];
  v28 = [v26 constraintLessThanOrEqualToAnchor:v27 constant:-28.0];
  stopTextToBottomConstraint = self->_stopTextToBottomConstraint;
  self->_stopTextToBottomConstraint = v28;

  v69 = [v73 topAnchor];
  v67 = [v71 topAnchor];
  v65 = [v69 constraintEqualToAnchor:v67];
  v75[0] = v65;
  v63 = [v73 bottomAnchor];
  v61 = [v71 bottomAnchor];
  v59 = [v63 constraintEqualToAnchor:v61];
  v75[1] = v59;
  v58 = [v73 leadingAnchor];
  v57 = [v71 leadingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57 constant:16.0];
  v75[2] = v56;
  v55 = [v73 widthAnchor];
  v54 = [v55 constraintEqualToConstant:24.0];
  v75[3] = v54;
  v53 = [(MapsThemeLabel *)v72 topAnchor];
  v52 = [v71 topAnchor];
  v51 = [v53 constraintGreaterThanOrEqualToAnchor:v52 constant:2.0];
  v75[4] = v51;
  v49 = [(MapsThemeLabel *)v72 centerYAnchor];
  v50 = [(TransitSchedulesStopViewCell *)self transitLineStopIndicatorImageView];
  v48 = [v50 centerYAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v75[5] = v47;
  v46 = [(MapsThemeLabel *)v72 leadingAnchor];
  v45 = [v73 trailingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45 constant:8.0];
  v30 = self->_stopTextToBottomConstraint;
  v75[6] = v44;
  v75[7] = v30;
  v43 = [v74 leadingAnchor];
  v42 = [(MapsThemeLabel *)v72 trailingAnchor];
  v41 = [v43 constraintGreaterThanOrEqualToAnchor:v42 constant:8.0];
  v75[8] = v41;
  v31 = [v74 trailingAnchor];
  v32 = [v71 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-16.0];
  v75[9] = v33;
  v34 = [v74 firstBaselineAnchor];
  v35 = [(MapsThemeLabel *)v72 firstBaselineAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v75[10] = v36;
  v37 = [v74 bottomAnchor];
  v38 = [v71 bottomAnchor];
  v39 = [v37 constraintLessThanOrEqualToAnchor:v38];
  v75[11] = v39;
  v40 = [NSArray arrayWithObjects:v75 count:12];
  [NSLayoutConstraint activateConstraints:v40];
}

- (TransitSchedulesStopViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TransitSchedulesStopViewCell;
  v3 = [(TransitSchedulesStopViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitSchedulesStopViewCell *)v3 createSubviews];
  }

  return v4;
}

@end