@interface TransitSchedulesDepartureCollectionViewCell
- (TransitSchedulesDepartureCollectionViewCell)init;
- (TransitSchedulesDepartureCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)_selectedStatusLabelFontProvider;
- (id)_selectedTimeLabelFontProvider;
- (id)attributedTimeString;
- (id)dateFormatter;
- (id)liveStatusColor;
- (id)realTimeStatusIndicatorColor;
- (id)statusString;
- (id)statusStringAttributes;
- (id)statusStringTextColor;
- (id)timeTextColor;
- (void)configureViews;
- (void)setDeparture:(id)departure withReferenceDate:(id)date timeZone:(id)zone timeDisplayStyle:(unint64_t)style;
- (void)setReferenceDate:(id)date;
- (void)setSelected:(BOOL)selected;
- (void)updateCellStyling;
- (void)updateLiveStatusLabelFont;
- (void)updateShadow;
- (void)updateStrings;
- (void)updateTimeLabelFont;
@end

@implementation TransitSchedulesDepartureCollectionViewCell

- (id)liveStatusColor
{
  departure = [(TransitSchedulesDepartureCollectionViewCell *)self departure];
  isPastDeparture = [departure isPastDeparture];

  if (isPastDeparture)
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    departure2 = [(TransitSchedulesDepartureCollectionViewCell *)self departure];
    [(TransitSchedulesDepartureBaseViewCell *)self effectiveLiveStatusForDeparture:departure2];

    MKTransitLiveDepartureColorForViewWithLiveStatus();
  }
  v5 = ;

  return v5;
}

- (id)statusStringTextColor
{
  if ([(TransitSchedulesDepartureCollectionViewCell *)self isSelected])
  {
    liveStatusColor = [(TransitSchedulesDepartureCollectionViewCell *)self liveStatusColor];
  }

  else
  {
    v4 = +[UIColor labelColor];
    liveStatusColor = [v4 colorWithAlphaComponent:0.400000006];
  }

  return liveStatusColor;
}

- (id)realTimeStatusIndicatorColor
{
  if ([(TransitSchedulesDepartureCollectionViewCell *)self isSelected])
  {
    liveStatusColor = [(TransitSchedulesDepartureCollectionViewCell *)self liveStatusColor];
  }

  else
  {
    v4 = +[UIColor labelColor];
    liveStatusColor = [v4 colorWithAlphaComponent:0.800000012];
  }

  return liveStatusColor;
}

- (id)timeTextColor
{
  isSelected = [(TransitSchedulesDepartureCollectionViewCell *)self isSelected];
  v3 = +[UIColor labelColor];
  v4 = v3;
  if ((isSelected & 1) == 0)
  {
    v5 = [v3 colorWithAlphaComponent:0.699999988];

    v4 = v5;
  }

  return v4;
}

- (void)updateShadow
{
  selectedBackgroundView = [(TransitSchedulesDepartureCollectionViewCell *)self selectedBackgroundView];
  layer = [selectedBackgroundView layer];

  if ([(TransitSchedulesDepartureCollectionViewCell *)self isSelected])
  {
    v4 = +[UIColor blackColor];
    v5 = [v4 colorWithAlphaComponent:0.140000001];
    [layer setShadowColor:{objc_msgSend(v5, "CGColor")}];

    v6 = 1.0;
    v7 = 1.0;
  }

  else
  {
    v4 = +[UIColor clearColor];
    [layer setShadowColor:{objc_msgSend(v4, "CGColor")}];
    v7 = 0.0;
    v6 = 0.0;
  }

  [layer setShadowOffset:{0.0, v6}];
  [layer setShadowRadius:v6];
  *&v8 = v7;
  [layer setShadowOpacity:v8];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = TransitSchedulesDepartureCollectionViewCell;
  [(TransitSchedulesDepartureCollectionViewCell *)&v4 setSelected:selected];
  [(TransitSchedulesDepartureCollectionViewCell *)self updateCellStyling];
}

- (void)updateLiveStatusLabelFont
{
  if (([(TransitSchedulesDepartureCollectionViewCell *)self isSelected]& 1) != 0)
  {
    _selectedStatusLabelFontProvider = [(TransitSchedulesDepartureCollectionViewCell *)self _selectedStatusLabelFontProvider];
    v5 = objc_retainBlock(_selectedStatusLabelFontProvider);
  }

  else
  {
    v5 = objc_retainBlock(&stru_10165D908);
  }

  liveStatusLabel = [(TransitSchedulesDepartureCollectionViewCell *)self liveStatusLabel];
  [DynamicTypeWizard autorefreshLabel:liveStatusLabel withFontProvider:v5];
}

- (void)updateTimeLabelFont
{
  if (([(TransitSchedulesDepartureCollectionViewCell *)self isSelected]& 1) != 0)
  {
    _selectedTimeLabelFontProvider = [(TransitSchedulesDepartureCollectionViewCell *)self _selectedTimeLabelFontProvider];
    v5 = objc_retainBlock(_selectedTimeLabelFontProvider);
  }

  else
  {
    v5 = objc_retainBlock(&stru_10165D8E8);
  }

  timeLabel = [(TransitSchedulesDepartureCollectionViewCell *)self timeLabel];
  [DynamicTypeWizard autorefreshLabel:timeLabel withFontProvider:v5];
}

- (void)updateCellStyling
{
  attributedTimeString = [(TransitSchedulesDepartureCollectionViewCell *)self attributedTimeString];
  timeLabel = [(TransitSchedulesDepartureCollectionViewCell *)self timeLabel];
  [timeLabel setAttributedText:attributedTimeString];

  statusString = [(TransitSchedulesDepartureCollectionViewCell *)self statusString];
  liveStatusLabel = [(TransitSchedulesDepartureCollectionViewCell *)self liveStatusLabel];
  [liveStatusLabel setAttributedText:statusString];

  [(TransitSchedulesDepartureCollectionViewCell *)self updateTimeLabelFont];
  [(TransitSchedulesDepartureCollectionViewCell *)self updateLiveStatusLabelFont];
  [(TransitSchedulesDepartureCollectionViewCell *)self updateShadow];

  [(TransitSchedulesDepartureCollectionViewCell *)self invalidateIntrinsicContentSize];
}

- (id)dateFormatter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A05460;
  block[3] = &unk_101661B18;
  block[4] = self;
  if (qword_10195E150 != -1)
  {
    dispatch_once(&qword_10195E150, block);
  }

  return qword_10195E148;
}

- (id)statusString
{
  statusStringAttributes = [(TransitSchedulesDepartureCollectionViewCell *)self statusStringAttributes];
  departure = [(TransitSchedulesDepartureCollectionViewCell *)self departure];
  isCanceled = [departure isCanceled];

  if (isCanceled)
  {
    v6 = [NSAttributedString alloc];
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"Schedules Departure cell status - Canceled";
LABEL_5:
    v14 = [v7 localizedStringForKey:v9 value:@"localized string not found" table:0];
    v15 = [v6 initWithString:v14 attributes:statusStringAttributes];

    goto LABEL_13;
  }

  departure2 = [(TransitSchedulesDepartureCollectionViewCell *)self departure];
  v11 = [departure2 liveStatus] == 0;

  departure3 = [(TransitSchedulesDepartureCollectionViewCell *)self departure];
  referenceDate = [(TransitSchedulesDepartureBaseViewCell *)self referenceDate];
  LODWORD(v11) = [departure3 isPastDepartureRelativeToDate:referenceDate usingGracePeriod:v11];

  if (v11)
  {
    v6 = [NSAttributedString alloc];
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    v9 = @"Schedules Departure cell status - Departed";
    goto LABEL_5;
  }

  departure4 = [(TransitSchedulesDepartureCollectionViewCell *)self departure];
  liveStatusString = [departure4 liveStatusString];

  if (liveStatusString)
  {
    v18 = [MKServerFormattedStringParameters alloc];
    MKFormattedStringOptionsMakeDefault();
    v19 = [v18 initWithOptions:&v33 variableOverrides:0];
    v20 = [[MKServerFormattedString alloc] initWithGeoServerString:liveStatusString parameters:v19];
    v21 = [v20 multiPartAttributedStringWithAttributes:&__NSDictionary0__struct];
    attributedString = [v21 attributedString];

    if ([(TransitSchedulesDepartureCollectionViewCell *)self isSelected])
    {
      v15 = attributedString;
    }

    else
    {
      v29 = [NSAttributedString alloc];
      string = [attributedString string];
      statusStringAttributes2 = [(TransitSchedulesDepartureCollectionViewCell *)self statusStringAttributes];
      v15 = [v29 initWithString:string attributes:statusStringAttributes2];
    }
  }

  else
  {
    departure5 = [(TransitSchedulesDepartureCollectionViewCell *)self departure];
    v19 = [(TransitSchedulesDepartureBaseViewCell *)self emphasizedLowFrequencyDepartureDateForDeparture:departure5];

    dateFormatter = [(TransitSchedulesDepartureCollectionViewCell *)self dateFormatter];
    v25 = [dateFormatter stringFromDate:v19];

    departure6 = [(TransitSchedulesDepartureCollectionViewCell *)self departure];
    v27 = [(TransitSchedulesDepartureBaseViewCell *)self effectiveLiveStatusForDeparture:departure6];

    v28 = [NSString _navigation_formattedDescriptionForLiveStatus:v27 updatedDepartureTimeString:v25];
    v15 = [[NSAttributedString alloc] initWithString:v28 attributes:statusStringAttributes];
  }

LABEL_13:

  return v15;
}

- (id)statusStringAttributes
{
  v5 = NSForegroundColorAttributeName;
  statusStringTextColor = [(TransitSchedulesDepartureCollectionViewCell *)self statusStringTextColor];
  v6 = statusStringTextColor;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (void)updateStrings
{
  attributedTimeString = [(TransitSchedulesDepartureCollectionViewCell *)self attributedTimeString];
  timeLabel = [(TransitSchedulesDepartureCollectionViewCell *)self timeLabel];
  [timeLabel setAttributedText:attributedTimeString];

  statusString = [(TransitSchedulesDepartureCollectionViewCell *)self statusString];
  liveStatusLabel = [(TransitSchedulesDepartureCollectionViewCell *)self liveStatusLabel];
  [liveStatusLabel setAttributedText:statusString];

  v7 = +[NSBundle mainBundle];
  v13 = [v7 localizedStringForKey:@"[Transit Schedule] Departure cell accessibility label" value:@"localized string not found" table:0];

  timeLabel2 = [(TransitSchedulesDepartureCollectionViewCell *)self timeLabel];
  accessibilityLabel = [timeLabel2 accessibilityLabel];
  liveStatusLabel2 = [(TransitSchedulesDepartureCollectionViewCell *)self liveStatusLabel];
  accessibilityLabel2 = [liveStatusLabel2 accessibilityLabel];
  v12 = [NSString stringWithFormat:v13, accessibilityLabel, accessibilityLabel2];
  [(TransitSchedulesDepartureCollectionViewCell *)self setAccessibilityLabel:v12];
}

- (id)attributedTimeString
{
  departure = [(TransitSchedulesDepartureCollectionViewCell *)self departure];
  v4 = [(TransitSchedulesDepartureBaseViewCell *)self timeStringForDeparture:departure];
  v10 = NSForegroundColorAttributeName;
  timeTextColor = [(TransitSchedulesDepartureCollectionViewCell *)self timeTextColor];
  v11 = timeTextColor;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  realTimeStatusIndicatorColor = [(TransitSchedulesDepartureCollectionViewCell *)self realTimeStatusIndicatorColor];
  v8 = [NSAttributedString _mapkit_attributedLiveTransitStringFromDepartureString:v4 departure:departure textAttributes:v6 darkMode:[(TransitSchedulesDepartureCollectionViewCell *)self _mapkit_isDarkModeEnabled] symbolOverrideColor:realTimeStatusIndicatorColor];

  return v8;
}

- (void)setReferenceDate:(id)date
{
  v4.receiver = self;
  v4.super_class = TransitSchedulesDepartureCollectionViewCell;
  [(TransitSchedulesDepartureBaseViewCell *)&v4 setReferenceDate:date];
  [(TransitSchedulesDepartureCollectionViewCell *)self updateStrings];
}

- (void)setDeparture:(id)departure withReferenceDate:(id)date timeZone:(id)zone timeDisplayStyle:(unint64_t)style
{
  departureCopy = departure;
  dateCopy = date;
  zoneCopy = zone;
  if (![(GEOTransitDeparture *)self->_departure isEqual:departureCopy])
  {
    goto LABEL_7;
  }

  timeZone = [(TransitSchedulesDepartureBaseViewCell *)self timeZone];
  if (![timeZone isEqual:zoneCopy] || -[TransitSchedulesDepartureBaseViewCell timeDisplayStyle](self, "timeDisplayStyle") != style)
  {

    goto LABEL_7;
  }

  referenceDate = [(TransitSchedulesDepartureBaseViewCell *)self referenceDate];
  v15 = [referenceDate isEqualToDate:dateCopy];

  if ((v15 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_departure, departure);
    [(TransitSchedulesDepartureBaseViewCell *)self setTimeDisplayStyle:style];
    [(TransitSchedulesDepartureCollectionViewCell *)self setReferenceDate:dateCopy];
    [(TransitSchedulesDepartureBaseViewCell *)self setTimeZone:zoneCopy];
    [(TransitSchedulesDepartureCollectionViewCell *)self updateStrings];
  }
}

- (id)_selectedStatusLabelFontProvider
{
  v2 = objc_retainBlock(&stru_10165D948);

  return v2;
}

- (id)_selectedTimeLabelFontProvider
{
  v2 = objc_retainBlock(&stru_10165D8A8);

  return v2;
}

- (void)configureViews
{
  v41 = objc_alloc_init(MKVibrantView);
  [(TransitSchedulesDepartureCollectionViewCell *)self setBackgroundView:v41];
  [v41 _setCornerRadius:10.0];
  [(TransitSchedulesDepartureCollectionViewCell *)self setAccessibilityIdentifier:@"TransitSchedulesDepartureCollectionViewCell"];
  v40 = objc_alloc_init(UIView);
  v3 = +[UIColor tertiarySystemBackgroundColor];
  [v40 setBackgroundColor:v3];

  [(TransitSchedulesDepartureCollectionViewCell *)self setSelectedBackgroundView:v40];
  layer = [v40 layer];
  [layer setCornerRadius:10.0];

  contentView = [(TransitSchedulesDepartureCollectionViewCell *)self contentView];
  v6 = objc_alloc_init(UILabel);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTextAlignment:1];
  [v6 setAccessibilityIdentifier:@"TransitSchedulesDepartureCollectionViewCellTimeLabel"];
  [contentView addSubview:v6];
  [(TransitSchedulesDepartureCollectionViewCell *)self setTimeLabel:v6];
  v7 = objc_alloc_init(UILabel);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTextAlignment:1];
  [v7 setAccessibilityIdentifier:@"TransitSchedulesDepartureCollectionViewCellStatusLabel"];
  [contentView addSubview:v7];
  [(TransitSchedulesDepartureCollectionViewCell *)self setLiveStatusLabel:v7];
  [(TransitSchedulesDepartureCollectionViewCell *)self updateCellStyling];
  firstBaselineAnchor = [v6 firstBaselineAnchor];
  topAnchor = [contentView topAnchor];
  v37 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  _selectedTimeLabelFontProvider = [(TransitSchedulesDepartureCollectionViewCell *)self _selectedTimeLabelFontProvider];
  v35 = [DynamicTypeWizard autoscaledConstraint:v37 constant:_selectedTimeLabelFontProvider withFontProvider:25.0];
  v42[0] = v35;
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  v42[1] = v32;
  trailingAnchor = [v6 trailingAnchor];
  v28 = contentView;
  trailingAnchor2 = [contentView trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
  v42[2] = v29;
  firstBaselineAnchor2 = [v7 firstBaselineAnchor];
  lastBaselineAnchor = [v6 lastBaselineAnchor];
  v25 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  _selectedTimeLabelFontProvider2 = [(TransitSchedulesDepartureCollectionViewCell *)self _selectedTimeLabelFontProvider];
  v23 = [DynamicTypeWizard autoscaledConstraint:v25 constant:_selectedTimeLabelFontProvider2 withFontProvider:18.0];
  v42[3] = v23;
  lastBaselineAnchor2 = [v7 lastBaselineAnchor];
  bottomAnchor = [contentView bottomAnchor];
  v20 = [lastBaselineAnchor2 constraintEqualToAnchor:bottomAnchor];
  _selectedStatusLabelFontProvider = [(TransitSchedulesDepartureCollectionViewCell *)self _selectedStatusLabelFontProvider];
  v18 = [DynamicTypeWizard autoscaledConstraint:v20 constant:_selectedStatusLabelFontProvider withFontProvider:-11.0];
  v42[4] = v18;
  leadingAnchor3 = [v7 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v10 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:15.0];
  v42[5] = v10;
  trailingAnchor3 = [v7 trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-15.0];
  v42[6] = v13;
  v14 = [NSArray arrayWithObjects:v42 count:7];
  [NSLayoutConstraint activateConstraints:v14];

  LODWORD(v15) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v16];
  [(TransitSchedulesDepartureCollectionViewCell *)self setIsAccessibilityElement:1];
  accessibilityTraits = [(TransitSchedulesDepartureCollectionViewCell *)self accessibilityTraits];
  [(TransitSchedulesDepartureCollectionViewCell *)self setAccessibilityTraits:UIAccessibilityTraitButton | accessibilityTraits];
}

- (TransitSchedulesDepartureCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TransitSchedulesDepartureCollectionViewCell;
  v3 = [(TransitSchedulesDepartureCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitSchedulesDepartureCollectionViewCell *)v3 configureViews];
  }

  return v4;
}

- (TransitSchedulesDepartureCollectionViewCell)init
{
  v5.receiver = self;
  v5.super_class = TransitSchedulesDepartureCollectionViewCell;
  v2 = [(TransitSchedulesDepartureCollectionViewCell *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TransitSchedulesDepartureCollectionViewCell *)v2 configureViews];
  }

  return v3;
}

@end