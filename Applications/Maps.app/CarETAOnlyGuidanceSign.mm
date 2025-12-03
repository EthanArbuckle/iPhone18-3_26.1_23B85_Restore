@interface CarETAOnlyGuidanceSign
+ ($739592BE61D20756836E46D36864A6CE)viewMetrics;
- (CarETAOnlyGuidanceSign)initWithFrame:(CGRect)frame;
- (id)viewForLastBaselineLayout;
- (void)_addDescriptionLabel;
- (void)_refreshBottomConstraint;
- (void)_updateContents;
- (void)setDescriptionText:(id)text;
- (void)setLatestETA:(id)a;
- (void)setNumberOfStops:(unint64_t)stops;
- (void)setShowsEvLabel:(BOOL)label;
- (void)setSubtitleOverride:(id)override;
- (void)setTitle:(id)title;
@end

@implementation CarETAOnlyGuidanceSign

- (id)viewForLastBaselineLayout
{
  IsEnabled_LocationIntelligenceMaps = MapsFeature_IsEnabled_LocationIntelligenceMaps();
  showsEvLabel = [(CarETAOnlyGuidanceSign *)self showsEvLabel];
  if (IsEnabled_LocationIntelligenceMaps)
  {
    if ((showsEvLabel & 1) == 0)
    {
      descriptionLabel = [(CarETAOnlyGuidanceSign *)self descriptionLabel];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (showsEvLabel)
  {
LABEL_5:
    descriptionLabel = [(CarETAOnlyGuidanceSign *)self evArrivalInfoLabel];
    goto LABEL_7;
  }

  descriptionLabel = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
LABEL_7:

  return descriptionLabel;
}

- (void)_refreshBottomConstraint
{
  if (self->_bottomConstraint)
  {
    bottomConstraint = self->_bottomConstraint;
    v3 = [NSArray arrayWithObjects:&bottomConstraint count:1];
    [NSLayoutConstraint deactivateConstraints:v3];
  }

  if (!MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    if (self->_showsEvLabel)
    {
      v5 = &OBJC_IVAR___CarETAOnlyGuidanceSign__evArrivalInfoLabel;
    }

    else
    {
      v5 = &OBJC_IVAR___CarETAOnlyGuidanceSign__subtitleLabel;
    }

    v4 = *v5;
    goto LABEL_10;
  }

  if (self->_showsEvLabel)
  {
    v4 = 80;
LABEL_10:
    v6 = *(&self->super.super.super.isa + v4);
    goto LABEL_14;
  }

  p_descriptionLabel = &self->_descriptionLabel;
  text = [(UILabel *)self->_descriptionLabel text];
  if (![text length])
  {
    p_descriptionLabel = &self->_subtitleLabel;
  }

  v6 = *p_descriptionLabel;

LABEL_14:
  lastBaselineAnchor = [(UILabel *)v6 lastBaselineAnchor];
  bottomAnchor = [(CarETAOnlyGuidanceSign *)self bottomAnchor];
  LODWORD(v11) = 1148829696;
  v12 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:0.0 priority:v11];
  v13 = self->_bottomConstraint;
  self->_bottomConstraint = v12;

  v15 = self->_bottomConstraint;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_descriptionText] & 1) == 0)
  {
    objc_storeStrong(&self->_descriptionText, text);
    descriptionText = self->_descriptionText;
    descriptionLabel = [(CarETAOnlyGuidanceSign *)self descriptionLabel];
    [descriptionLabel setText:descriptionText];
  }

  [(CarETAOnlyGuidanceSign *)self _refreshBottomConstraint];
}

- (void)setLatestETA:(id)a
{
  aCopy = a;
  if (self->_latestETA != aCopy)
  {
    v6 = aCopy;
    objc_storeStrong(&self->_latestETA, a);
    [(CarETAOnlyGuidanceSign *)self _updateContents];
    aCopy = v6;
  }
}

- (void)setSubtitleOverride:(id)override
{
  overrideCopy = override;
  if (([overrideCopy isEqualToString:self->_subtitleOverride] & 1) == 0)
  {
    objc_storeStrong(&self->_subtitleOverride, override);
    [(CarETAOnlyGuidanceSign *)self _updateContents];
  }
}

- (void)setNumberOfStops:(unint64_t)stops
{
  if (self->_numberOfStops != stops)
  {
    self->_numberOfStops = stops;
    [(CarETAOnlyGuidanceSign *)self _updateContents];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (([titleCopy isEqualToString:self->_title] & 1) == 0)
  {
    objc_storeStrong(&self->_title, title);
    [(CarETAOnlyGuidanceSign *)self _updateContents];
  }
}

- (void)setShowsEvLabel:(BOOL)label
{
  if (self->_showsEvLabel != label)
  {
    self->_showsEvLabel = label;
    [(CarETAOnlyGuidanceSign *)self _refreshBottomConstraint];
  }
}

- (void)_updateContents
{
  v3 = objc_alloc_init(NSMutableParagraphStyle);
  LODWORD(v4) = 1036831949;
  [v3 setHyphenationFactor:v4];
  [v3 setLineBreakMode:4];
  v41 = NSParagraphStyleAttributeName;
  v42 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v6 = [NSAttributedString alloc];
  title = [(CarETAOnlyGuidanceSign *)self title];
  v8 = title;
  if (title)
  {
    v9 = title;
  }

  else
  {
    v9 = &stru_1016631F0;
  }

  v10 = [v6 initWithString:v9 attributes:v5];
  titleLabel = [(CarETAOnlyGuidanceSign *)self titleLabel];
  [titleLabel setAttributedText:v10];

  subtitleLabel2 = 40;
  if (self->_numberOfStops)
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Number of stops [Route Genius]" value:@"localized string not found" table:0];
    v15 = [NSString localizedStringWithFormat:v14, self->_numberOfStops];
  }

  else
  {
    v15 = 0;
  }

  latestETA = [(CarETAOnlyGuidanceSign *)self latestETA];

  if (latestETA)
  {
    subtitleLabel4 = [[NSMutableArray alloc] initWithCapacity:2];
    latestETA2 = [(CarETAOnlyGuidanceSign *)self latestETA];
    etaDateString = [latestETA2 etaDateString];
    [subtitleLabel4 addObject:etaDateString];

    if (v15)
    {
      [subtitleLabel4 addObject:v15];
    }

    else
    {
      latestETA3 = [(CarETAOnlyGuidanceSign *)self latestETA];
      v22 = +[NSString _navigation_stringWithMinutes:andAbbreviationType:](NSString, "_navigation_stringWithMinutes:andAbbreviationType:", [latestETA3 remainingMinutes], 1);

      [subtitleLabel4 addObject:v22];
    }

    v23 = +[NSBundle mainBundle];
    subtitleLabel6 = [v23 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];

    v25 = +[UIApplication sharedApplication];
    userInterfaceLayoutDirection = [v25 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v27 = [NSMutableArray alloc];
      reverseObjectEnumerator = [subtitleLabel4 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v30 = [v27 initWithArray:allObjects];

      subtitleLabel4 = v30;
    }

    v31 = [subtitleLabel4 componentsJoinedByString:subtitleLabel6];
    subtitleLabel = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
    [subtitleLabel setText:v31];

    subtitleLabel2 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
    [subtitleLabel2 setNumberOfLines:1];
  }

  else
  {
    if (v15)
    {
      subtitleLabel3 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
      [subtitleLabel3 setNumberOfLines:0];

      subtitleLabel4 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
      [subtitleLabel4 setText:v15];
      goto LABEL_18;
    }

    subtitleOverride = [(CarETAOnlyGuidanceSign *)self subtitleOverride];

    subtitleLabel5 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
    v40 = subtitleLabel5;
    if (subtitleOverride)
    {
      [subtitleLabel5 setNumberOfLines:0];

      subtitleLabel4 = [(CarETAOnlyGuidanceSign *)self subtitleOverride];
      subtitleLabel6 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
      [subtitleLabel6 setText:subtitleLabel4];
      goto LABEL_17;
    }

    [subtitleLabel5 setNumberOfLines:1];

    subtitleLabel4 = +[NSBundle mainBundle];
    subtitleLabel6 = [subtitleLabel4 localizedStringForKey:@"Car_PROACTIVE_Calculating ETA" value:@"localized string not found" table:0];
    subtitleLabel2 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
    [subtitleLabel2 setText:subtitleLabel6];
  }

LABEL_17:
LABEL_18:

  latestETA4 = [(CarETAOnlyGuidanceSign *)self latestETA];
  arrivalBatteryCharge = [latestETA4 arrivalBatteryCharge];
  [(CarETAOnlyGuidanceSign *)self setShowsEvLabel:arrivalBatteryCharge != 0];

  showsEvLabel = [(CarETAOnlyGuidanceSign *)self showsEvLabel];
  if (showsEvLabel)
  {
    latestETA4 = [(CarETAOnlyGuidanceSign *)self latestETA];
    subtitleLabel2 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
    v36 = [latestETA4 extendedArrivalBatteryChargeStringWithFont:subtitleLabel2];
  }

  else
  {
    v36 = 0;
  }

  evArrivalInfoLabel = [(CarETAOnlyGuidanceSign *)self evArrivalInfoLabel];
  [evArrivalInfoLabel setAttributedText:v36];

  if (showsEvLabel)
  {
  }
}

- (void)_addDescriptionLabel
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v3;

  [(UILabel *)self->_descriptionLabel setAccessibilityIdentifier:@"RouteDescriptionLabel"];
  [(UILabel *)self->_descriptionLabel setLineBreakMode:4];
  v5 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  [(UILabel *)self->_descriptionLabel setFont:v5];

  [(UILabel *)self->_descriptionLabel setMinimumScaleFactor:0.699999988];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:2];
  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor _carSystemSecondaryColor];
  [(UILabel *)self->_descriptionLabel setTextColor:v6];

  LODWORD(v7) = 1148846080;
  [(UILabel *)self->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [(UILabel *)self->_descriptionLabel setContentHuggingPriority:1 forAxis:v8];
  v9 = self->_descriptionLabel;

  [(CarETAOnlyGuidanceSign *)self addSubview:v9];
}

- (CarETAOnlyGuidanceSign)initWithFrame:(CGRect)frame
{
  v68.receiver = self;
  v68.super_class = CarETAOnlyGuidanceSign;
  v3 = [(CarETAOnlyGuidanceSign *)&v68 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v3;
  if (v3)
  {
    LODWORD(v4) = 1148829696;
    [(CarETAOnlyGuidanceSign *)v3 setContentHuggingPriority:1 forAxis:v4];
    [(CarETAOnlyGuidanceSign *)v5 setAccessibilityIdentifier:@"ETAOnlyGuidanceSign"];
    v5->_showsEvLabel = 0;
    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v10;

    [(UILabel *)v5->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    v12 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightSemibold];
    [(UILabel *)v5->_titleLabel setFont:v12];

    v13 = +[UIColor labelColor];
    [(UILabel *)v5->_titleLabel setTextColor:v13];

    [(UILabel *)v5->_titleLabel setLineBreakMode:4];
    [(UILabel *)v5->_titleLabel setNumberOfLines:3];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148829696;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:1 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UILabel *)v5->_titleLabel setContentHuggingPriority:1 forAxis:v15];
    [(CarETAOnlyGuidanceSign *)v5 addSubview:v5->_titleLabel];
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v16;

    [(UILabel *)v5->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
    [(UILabel *)v5->_subtitleLabel setLineBreakMode:4];
    v18 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
    [(UILabel *)v5->_subtitleLabel setFont:v18];

    [(UILabel *)v5->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v5->_subtitleLabel setMinimumScaleFactor:0.699999988];
    [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = +[UIColor _carSystemPrimaryColor];
    [(UILabel *)v5->_subtitleLabel setTextColor:v19];

    LODWORD(v20) = 1148846080;
    [(UILabel *)v5->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(UILabel *)v5->_subtitleLabel setContentHuggingPriority:1 forAxis:v21];
    [(CarETAOnlyGuidanceSign *)v5 addSubview:v5->_subtitleLabel];
    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    evArrivalInfoLabel = v5->_evArrivalInfoLabel;
    v5->_evArrivalInfoLabel = v22;

    [(UILabel *)v5->_evArrivalInfoLabel setAccessibilityIdentifier:@"EVArrivalInfoLabel"];
    [(UILabel *)v5->_evArrivalInfoLabel setLineBreakMode:4];
    v24 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
    [(UILabel *)v5->_evArrivalInfoLabel setFont:v24];

    [(UILabel *)v5->_evArrivalInfoLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v5->_evArrivalInfoLabel setMinimumScaleFactor:0.699999988];
    [(UILabel *)v5->_evArrivalInfoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = +[UIColor _carSystemPrimaryColor];
    [(UILabel *)v5->_evArrivalInfoLabel setTextColor:v25];

    LODWORD(v26) = 1148846080;
    [(UILabel *)v5->_evArrivalInfoLabel setContentCompressionResistancePriority:1 forAxis:v26];
    LODWORD(v27) = 1148846080;
    [(UILabel *)v5->_evArrivalInfoLabel setContentHuggingPriority:1 forAxis:v27];
    [(CarETAOnlyGuidanceSign *)v5 addSubview:v5->_evArrivalInfoLabel];
    v28 = objc_opt_new();
    firstBaselineAnchor = [(UILabel *)v5->_titleLabel firstBaselineAnchor];
    topAnchor = [(CarETAOnlyGuidanceSign *)v5 topAnchor];
    v31 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:18.0];
    [v28 addObject:v31];

    leadingAnchor = [(UILabel *)v5->_titleLabel leadingAnchor];
    leadingAnchor2 = [(CarETAOnlyGuidanceSign *)v5 leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    [v28 addObject:v34];

    trailingAnchor = [(UILabel *)v5->_titleLabel trailingAnchor];
    trailingAnchor2 = [(CarETAOnlyGuidanceSign *)v5 trailingAnchor];
    v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    [v28 addObject:v37];

    firstBaselineAnchor2 = [(UILabel *)v5->_subtitleLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v5->_titleLabel lastBaselineAnchor];
    v40 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:18.0];
    [v28 addObject:v40];

    leadingAnchor3 = [(UILabel *)v5->_subtitleLabel leadingAnchor];
    leadingAnchor4 = [(CarETAOnlyGuidanceSign *)v5 leadingAnchor];
    v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
    [v28 addObject:v43];

    trailingAnchor3 = [(UILabel *)v5->_subtitleLabel trailingAnchor];
    trailingAnchor4 = [(CarETAOnlyGuidanceSign *)v5 trailingAnchor];
    v46 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
    [v28 addObject:v46];

    if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
    {
      [(CarETAOnlyGuidanceSign *)v5 _addDescriptionLabel];
      firstBaselineAnchor3 = [(UILabel *)v5->_descriptionLabel firstBaselineAnchor];
      lastBaselineAnchor2 = [(UILabel *)v5->_subtitleLabel lastBaselineAnchor];
      v48 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:18.0];
      v69[0] = v48;
      leadingAnchor5 = [(UILabel *)v5->_descriptionLabel leadingAnchor];
      leadingAnchor6 = [(CarETAOnlyGuidanceSign *)v5 leadingAnchor];
      v65 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
      v69[1] = v65;
      trailingAnchor5 = [(UILabel *)v5->_descriptionLabel trailingAnchor];
      trailingAnchor6 = [(CarETAOnlyGuidanceSign *)v5 trailingAnchor];
      v49 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-10.0];
      v69[2] = v49;
      firstBaselineAnchor4 = [(UILabel *)v5->_evArrivalInfoLabel firstBaselineAnchor];
      lastBaselineAnchor3 = [(UILabel *)v5->_descriptionLabel lastBaselineAnchor];
      v52 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor3 constant:16.0];
      v69[3] = v52;
      v53 = [NSArray arrayWithObjects:v69 count:4];
      [v28 addObjectsFromArray:v53];

      firstBaselineAnchor5 = firstBaselineAnchor3;
    }

    else
    {
      firstBaselineAnchor5 = [(UILabel *)v5->_evArrivalInfoLabel firstBaselineAnchor];
      lastBaselineAnchor2 = [(UILabel *)v5->_subtitleLabel lastBaselineAnchor];
      v48 = [firstBaselineAnchor5 constraintEqualToAnchor:lastBaselineAnchor2 constant:16.0];
      [v28 addObject:v48];
    }

    leadingAnchor7 = [(UILabel *)v5->_evArrivalInfoLabel leadingAnchor];
    leadingAnchor8 = [(CarETAOnlyGuidanceSign *)v5 leadingAnchor];
    v57 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:10.0];
    [v28 addObject:v57];

    trailingAnchor7 = [(UILabel *)v5->_evArrivalInfoLabel trailingAnchor];
    trailingAnchor8 = [(CarETAOnlyGuidanceSign *)v5 trailingAnchor];
    v60 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-10.0];
    [v28 addObject:v60];

    [(CarETAOnlyGuidanceSign *)v5 _refreshBottomConstraint];
    [NSLayoutConstraint activateConstraints:v28];
  }

  return v5;
}

+ ($739592BE61D20756836E46D36864A6CE)viewMetrics
{
  *&retstr->var0 = xmmword_101216030;
  *&retstr->var2 = unk_101216040;
  retstr->var4 = 16.0;
  return result;
}

@end