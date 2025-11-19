@interface CarETAOnlyGuidanceSign
+ ($739592BE61D20756836E46D36864A6CE)viewMetrics;
- (CarETAOnlyGuidanceSign)initWithFrame:(CGRect)a3;
- (id)viewForLastBaselineLayout;
- (void)_addDescriptionLabel;
- (void)_refreshBottomConstraint;
- (void)_updateContents;
- (void)setDescriptionText:(id)a3;
- (void)setLatestETA:(id)a3;
- (void)setNumberOfStops:(unint64_t)a3;
- (void)setShowsEvLabel:(BOOL)a3;
- (void)setSubtitleOverride:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation CarETAOnlyGuidanceSign

- (id)viewForLastBaselineLayout
{
  IsEnabled_LocationIntelligenceMaps = MapsFeature_IsEnabled_LocationIntelligenceMaps();
  v4 = [(CarETAOnlyGuidanceSign *)self showsEvLabel];
  if (IsEnabled_LocationIntelligenceMaps)
  {
    if ((v4 & 1) == 0)
    {
      v5 = [(CarETAOnlyGuidanceSign *)self descriptionLabel];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    v5 = [(CarETAOnlyGuidanceSign *)self evArrivalInfoLabel];
    goto LABEL_7;
  }

  v5 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
LABEL_7:

  return v5;
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
  v8 = [(UILabel *)self->_descriptionLabel text];
  if (![v8 length])
  {
    p_descriptionLabel = &self->_subtitleLabel;
  }

  v6 = *p_descriptionLabel;

LABEL_14:
  v9 = [(UILabel *)v6 lastBaselineAnchor];
  v10 = [(CarETAOnlyGuidanceSign *)self bottomAnchor];
  LODWORD(v11) = 1148829696;
  v12 = [v9 constraintEqualToAnchor:v10 constant:0.0 priority:v11];
  v13 = self->_bottomConstraint;
  self->_bottomConstraint = v12;

  v15 = self->_bottomConstraint;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)setDescriptionText:(id)a3
{
  v7 = a3;
  if (([v7 isEqualToString:self->_descriptionText] & 1) == 0)
  {
    objc_storeStrong(&self->_descriptionText, a3);
    descriptionText = self->_descriptionText;
    v6 = [(CarETAOnlyGuidanceSign *)self descriptionLabel];
    [v6 setText:descriptionText];
  }

  [(CarETAOnlyGuidanceSign *)self _refreshBottomConstraint];
}

- (void)setLatestETA:(id)a3
{
  v5 = a3;
  if (self->_latestETA != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_latestETA, a3);
    [(CarETAOnlyGuidanceSign *)self _updateContents];
    v5 = v6;
  }
}

- (void)setSubtitleOverride:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_subtitleOverride] & 1) == 0)
  {
    objc_storeStrong(&self->_subtitleOverride, a3);
    [(CarETAOnlyGuidanceSign *)self _updateContents];
  }
}

- (void)setNumberOfStops:(unint64_t)a3
{
  if (self->_numberOfStops != a3)
  {
    self->_numberOfStops = a3;
    [(CarETAOnlyGuidanceSign *)self _updateContents];
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_title] & 1) == 0)
  {
    objc_storeStrong(&self->_title, a3);
    [(CarETAOnlyGuidanceSign *)self _updateContents];
  }
}

- (void)setShowsEvLabel:(BOOL)a3
{
  if (self->_showsEvLabel != a3)
  {
    self->_showsEvLabel = a3;
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
  v7 = [(CarETAOnlyGuidanceSign *)self title];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1016631F0;
  }

  v10 = [v6 initWithString:v9 attributes:v5];
  v11 = [(CarETAOnlyGuidanceSign *)self titleLabel];
  [v11 setAttributedText:v10];

  v12 = 40;
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

  v16 = [(CarETAOnlyGuidanceSign *)self latestETA];

  if (v16)
  {
    v17 = [[NSMutableArray alloc] initWithCapacity:2];
    v18 = [(CarETAOnlyGuidanceSign *)self latestETA];
    v19 = [v18 etaDateString];
    [v17 addObject:v19];

    if (v15)
    {
      [v17 addObject:v15];
    }

    else
    {
      v21 = [(CarETAOnlyGuidanceSign *)self latestETA];
      v22 = +[NSString _navigation_stringWithMinutes:andAbbreviationType:](NSString, "_navigation_stringWithMinutes:andAbbreviationType:", [v21 remainingMinutes], 1);

      [v17 addObject:v22];
    }

    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];

    v25 = +[UIApplication sharedApplication];
    v26 = [v25 userInterfaceLayoutDirection];

    if (v26 == 1)
    {
      v27 = [NSMutableArray alloc];
      v28 = [v17 reverseObjectEnumerator];
      v29 = [v28 allObjects];
      v30 = [v27 initWithArray:v29];

      v17 = v30;
    }

    v31 = [v17 componentsJoinedByString:v24];
    v32 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
    [v32 setText:v31];

    v12 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
    [v12 setNumberOfLines:1];
  }

  else
  {
    if (v15)
    {
      v20 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
      [v20 setNumberOfLines:0];

      v17 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
      [v17 setText:v15];
      goto LABEL_18;
    }

    v38 = [(CarETAOnlyGuidanceSign *)self subtitleOverride];

    v39 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
    v40 = v39;
    if (v38)
    {
      [v39 setNumberOfLines:0];

      v17 = [(CarETAOnlyGuidanceSign *)self subtitleOverride];
      v24 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
      [v24 setText:v17];
      goto LABEL_17;
    }

    [v39 setNumberOfLines:1];

    v17 = +[NSBundle mainBundle];
    v24 = [v17 localizedStringForKey:@"Car_PROACTIVE_Calculating ETA" value:@"localized string not found" table:0];
    v12 = [(CarETAOnlyGuidanceSign *)self subtitleLabel];
    [v12 setText:v24];
  }

LABEL_17:
LABEL_18:

  v33 = [(CarETAOnlyGuidanceSign *)self latestETA];
  v34 = [v33 arrivalBatteryCharge];
  [(CarETAOnlyGuidanceSign *)self setShowsEvLabel:v34 != 0];

  v35 = [(CarETAOnlyGuidanceSign *)self showsEvLabel];
  if (v35)
  {
    v33 = [(CarETAOnlyGuidanceSign *)self latestETA];
    v12 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
    v36 = [v33 extendedArrivalBatteryChargeStringWithFont:v12];
  }

  else
  {
    v36 = 0;
  }

  v37 = [(CarETAOnlyGuidanceSign *)self evArrivalInfoLabel];
  [v37 setAttributedText:v36];

  if (v35)
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

- (CarETAOnlyGuidanceSign)initWithFrame:(CGRect)a3
{
  v68.receiver = self;
  v68.super_class = CarETAOnlyGuidanceSign;
  v3 = [(CarETAOnlyGuidanceSign *)&v68 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v29 = [(UILabel *)v5->_titleLabel firstBaselineAnchor];
    v30 = [(CarETAOnlyGuidanceSign *)v5 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:18.0];
    [v28 addObject:v31];

    v32 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v33 = [(CarETAOnlyGuidanceSign *)v5 leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:10.0];
    [v28 addObject:v34];

    v35 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v36 = [(CarETAOnlyGuidanceSign *)v5 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:-10.0];
    [v28 addObject:v37];

    v38 = [(UILabel *)v5->_subtitleLabel firstBaselineAnchor];
    v39 = [(UILabel *)v5->_titleLabel lastBaselineAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:18.0];
    [v28 addObject:v40];

    v41 = [(UILabel *)v5->_subtitleLabel leadingAnchor];
    v42 = [(CarETAOnlyGuidanceSign *)v5 leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:10.0];
    [v28 addObject:v43];

    v44 = [(UILabel *)v5->_subtitleLabel trailingAnchor];
    v45 = [(CarETAOnlyGuidanceSign *)v5 trailingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:-10.0];
    [v28 addObject:v46];

    if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
    {
      [(CarETAOnlyGuidanceSign *)v5 _addDescriptionLabel];
      v64 = [(UILabel *)v5->_descriptionLabel firstBaselineAnchor];
      v47 = [(UILabel *)v5->_subtitleLabel lastBaselineAnchor];
      v48 = [v64 constraintEqualToAnchor:v47 constant:18.0];
      v69[0] = v48;
      v67 = [(UILabel *)v5->_descriptionLabel leadingAnchor];
      v66 = [(CarETAOnlyGuidanceSign *)v5 leadingAnchor];
      v65 = [v67 constraintEqualToAnchor:v66 constant:10.0];
      v69[1] = v65;
      v63 = [(UILabel *)v5->_descriptionLabel trailingAnchor];
      v62 = [(CarETAOnlyGuidanceSign *)v5 trailingAnchor];
      v49 = [v63 constraintEqualToAnchor:v62 constant:-10.0];
      v69[2] = v49;
      v50 = [(UILabel *)v5->_evArrivalInfoLabel firstBaselineAnchor];
      v51 = [(UILabel *)v5->_descriptionLabel lastBaselineAnchor];
      v52 = [v50 constraintEqualToAnchor:v51 constant:16.0];
      v69[3] = v52;
      v53 = [NSArray arrayWithObjects:v69 count:4];
      [v28 addObjectsFromArray:v53];

      v54 = v64;
    }

    else
    {
      v54 = [(UILabel *)v5->_evArrivalInfoLabel firstBaselineAnchor];
      v47 = [(UILabel *)v5->_subtitleLabel lastBaselineAnchor];
      v48 = [v54 constraintEqualToAnchor:v47 constant:16.0];
      [v28 addObject:v48];
    }

    v55 = [(UILabel *)v5->_evArrivalInfoLabel leadingAnchor];
    v56 = [(CarETAOnlyGuidanceSign *)v5 leadingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:10.0];
    [v28 addObject:v57];

    v58 = [(UILabel *)v5->_evArrivalInfoLabel trailingAnchor];
    v59 = [(CarETAOnlyGuidanceSign *)v5 trailingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:-10.0];
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