@interface CarplayStaticEventDetailsTableViewCell
- (CarplayStaticEventDetailsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_createPrimaryView;
- (id)_createSecondaryView;
- (id)_createTertiaryView;
- (void)_updateLabelFilters;
- (void)cellWasTapped;
- (void)updateWithEvent:(id)event;
@end

@implementation CarplayStaticEventDetailsTableViewCell

- (CarplayStaticEventDetailsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v174.receiver = self;
  v174.super_class = CarplayStaticEventDetailsTableViewCell;
  v4 = [(CarplayStaticEventDetailsTableViewCell *)&v174 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CarplayStaticEventDetailsTableViewCell *)v4 setUserInteractionEnabled:0];
    v6 = +[UIColor clearColor];
    [(CarplayStaticEventDetailsTableViewCell *)v5 setBackgroundColor:v6];

    if (CalSystemSolariumEnabled())
    {
      v7 = objc_alloc_init(UIView);
      colorBarView = v5->_colorBarView;
      v5->_colorBarView = v7;

      [(UIView *)v5->_colorBarView setTranslatesAutoresizingMaskIntoConstraints:0];
      layer = [(UIView *)v5->_colorBarView layer];
      [layer setCornerRadius:1.75];

      [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_colorBarView];
    }

    _createPrimaryView = [(CarplayStaticEventDetailsTableViewCell *)v5 _createPrimaryView];
    titleView = v5->_titleView;
    v5->_titleView = _createPrimaryView;

    _createSecondaryView = [(CarplayStaticEventDetailsTableViewCell *)v5 _createSecondaryView];
    locationView = v5->_locationView;
    v5->_locationView = _createSecondaryView;

    v14 = +[UIColor labelColor];
    [(UILabel *)v5->_locationView setTextColor:v14];

    _createSecondaryView2 = [(CarplayStaticEventDetailsTableViewCell *)v5 _createSecondaryView];
    dateView = v5->_dateView;
    v5->_dateView = _createSecondaryView2;

    _createSecondaryView3 = [(CarplayStaticEventDetailsTableViewCell *)v5 _createSecondaryView];
    timeView = v5->_timeView;
    v5->_timeView = _createSecondaryView3;

    [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_titleView];
    [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_locationView];
    [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_dateView];
    [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_timeView];
    if (CalSystemSolariumEnabled())
    {
      _createTertiaryView = [(CarplayStaticEventDetailsTableViewCell *)v5 _createTertiaryView];
      additionalLabelView = v5->_additionalLabelView;
      v5->_additionalLabelView = _createTertiaryView;

      _createTertiaryView2 = [(CarplayStaticEventDetailsTableViewCell *)v5 _createTertiaryView];
      bottomLabelView = v5->_bottomLabelView;
      v5->_bottomLabelView = _createTertiaryView2;

      [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_additionalLabelView];
      [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_bottomLabelView];
    }

    font = [(UILabel *)v5->_dateView font];
    [font _scaledValueForValue:20.0];
    v25 = v24;

    font2 = [(UILabel *)v5->_timeView font];
    [font2 _scaledValueForValue:24.0];
    v28 = v27;

    font3 = [(UILabel *)v5->_timeView font];
    [font3 _scaledValueForValue:28.0];
    v31 = v30;

    font4 = [(UILabel *)v5->_dateView font];
    [font4 _scaledValueForValue:24.0];
    v34 = v33;

    font5 = [(UILabel *)v5->_dateView font];
    [font5 _scaledValueForValue:28.0];
    v37 = v36;

    font6 = [(UILabel *)v5->_locationView font];
    [font6 _scaledValueForValue:28.0];
    v40 = v39;

    firstBaselineAnchor = [(UILabel *)v5->_timeView firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v5->_dateView lastBaselineAnchor];
    v43 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v25];
    timeBaselineToDateBaselineConstraint = v5->_timeBaselineToDateBaselineConstraint;
    v5->_timeBaselineToDateBaselineConstraint = v43;

    firstBaselineAnchor2 = [(UILabel *)v5->_timeView firstBaselineAnchor];
    lastBaselineAnchor2 = [(UILabel *)v5->_titleView lastBaselineAnchor];
    v47 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:v28];
    timeBaselineToTitleBaselineConstraint = v5->_timeBaselineToTitleBaselineConstraint;
    v5->_timeBaselineToTitleBaselineConstraint = v47;

    firstBaselineAnchor3 = [(UILabel *)v5->_timeView firstBaselineAnchor];
    lastBaselineAnchor3 = [(UILabel *)v5->_locationView lastBaselineAnchor];
    v51 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor3 constant:v31];
    timeBaselineToLocationBaselineConstraint = v5->_timeBaselineToLocationBaselineConstraint;
    v5->_timeBaselineToLocationBaselineConstraint = v51;

    firstBaselineAnchor4 = [(UILabel *)v5->_dateView firstBaselineAnchor];
    lastBaselineAnchor4 = [(UILabel *)v5->_titleView lastBaselineAnchor];
    v55 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor4 constant:v34];
    dateBaselineToTitleBaselineConstraint = v5->_dateBaselineToTitleBaselineConstraint;
    v5->_dateBaselineToTitleBaselineConstraint = v55;

    firstBaselineAnchor5 = [(UILabel *)v5->_dateView firstBaselineAnchor];
    lastBaselineAnchor5 = [(UILabel *)v5->_locationView lastBaselineAnchor];
    v59 = [firstBaselineAnchor5 constraintEqualToAnchor:lastBaselineAnchor5 constant:v37];
    dateBaselineToLocationBaselineConstraint = v5->_dateBaselineToLocationBaselineConstraint;
    v5->_dateBaselineToLocationBaselineConstraint = v59;

    firstBaselineAnchor6 = [(UILabel *)v5->_locationView firstBaselineAnchor];
    lastBaselineAnchor6 = [(UILabel *)v5->_titleView lastBaselineAnchor];
    v63 = [firstBaselineAnchor6 constraintEqualToAnchor:lastBaselineAnchor6 constant:v40];
    locationBaselineToTitleBaselineConstraint = v5->_locationBaselineToTitleBaselineConstraint;
    v5->_locationBaselineToTitleBaselineConstraint = v63;

    if (CalSystemSolariumEnabled())
    {
      lastBaselineAnchor7 = [(UILabel *)v5->_timeView lastBaselineAnchor];
      lastBaselineAnchor8 = [(UIView *)v5->_colorBarView lastBaselineAnchor];
      v67 = [lastBaselineAnchor7 constraintEqualToAnchor:lastBaselineAnchor8 constant:-5.0];
      timeBottomToBottomAnchorConstraint = v5->_timeBottomToBottomAnchorConstraint;
      v5->_timeBottomToBottomAnchorConstraint = v67;

      firstBaselineAnchor7 = [(UILabel *)v5->_additionalLabelView firstBaselineAnchor];
      lastBaselineAnchor9 = [(UILabel *)v5->_timeView lastBaselineAnchor];
      v71 = [firstBaselineAnchor7 constraintEqualToAnchor:lastBaselineAnchor9 constant:v25];
      additionalLabelToTimeBaselineConstraint = v5->_additionalLabelToTimeBaselineConstraint;
      v5->_additionalLabelToTimeBaselineConstraint = v71;

      lastBaselineAnchor10 = [(UILabel *)v5->_additionalLabelView lastBaselineAnchor];
      lastBaselineAnchor11 = [(UIView *)v5->_colorBarView lastBaselineAnchor];
      v75 = [lastBaselineAnchor10 constraintEqualToAnchor:lastBaselineAnchor11 constant:-5.0];
      additionalLabelToBottomAnchorConstraint = v5->_additionalLabelToBottomAnchorConstraint;
      v5->_additionalLabelToBottomAnchorConstraint = v75;

      firstBaselineAnchor8 = [(UILabel *)v5->_bottomLabelView firstBaselineAnchor];
      lastBaselineAnchor12 = [(UILabel *)v5->_additionalLabelView lastBaselineAnchor];
      v79 = [firstBaselineAnchor8 constraintEqualToAnchor:lastBaselineAnchor12 constant:v25];
      bottomLabelToAdditionalLabelBaselineConstraint = v5->_bottomLabelToAdditionalLabelBaselineConstraint;
      v5->_bottomLabelToAdditionalLabelBaselineConstraint = v79;

      lastBaselineAnchor13 = [(UILabel *)v5->_bottomLabelView lastBaselineAnchor];
      lastBaselineAnchor14 = [(UIView *)v5->_colorBarView lastBaselineAnchor];
      v83 = [lastBaselineAnchor13 constraintEqualToAnchor:lastBaselineAnchor14 constant:-5.0];
      bottomLabelToBottomAnchorConstraint = v5->_bottomLabelToBottomAnchorConstraint;
      v5->_bottomLabelToBottomAnchorConstraint = v83;

      leadingAnchor = [(UIView *)v5->_colorBarView leadingAnchor];
      leadingAnchor2 = [(CarplayStaticEventDetailsTableViewCell *)v5 leadingAnchor];
      v168 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
      v177[0] = v168;
      topAnchor = [(UIView *)v5->_colorBarView topAnchor];
      topAnchor2 = [(CarplayStaticEventDetailsTableViewCell *)v5 topAnchor];
      v162 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
      v177[1] = v162;
      widthAnchor = [(UIView *)v5->_colorBarView widthAnchor];
      v158 = [widthAnchor constraintEqualToConstant:3.5];
      v177[2] = v158;
      bottomAnchor = [(UIView *)v5->_colorBarView bottomAnchor];
      bottomAnchor2 = [(CarplayStaticEventDetailsTableViewCell *)v5 bottomAnchor];
      v152 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
      v177[3] = v152;
      firstBaselineAnchor9 = [(UILabel *)v5->_titleView firstBaselineAnchor];
      topAnchor3 = [(UIView *)v5->_colorBarView topAnchor];
      v147 = [firstBaselineAnchor9 constraintEqualToAnchor:topAnchor3 constant:20.0];
      v177[4] = v147;
      leadingAnchor3 = [(UILabel *)v5->_titleView leadingAnchor];
      leadingAnchor4 = [(UIView *)v5->_colorBarView leadingAnchor];
      v141 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
      v177[5] = v141;
      trailingAnchor = [(UILabel *)v5->_titleView trailingAnchor];
      trailingAnchor2 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v135 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v177[6] = v135;
      leadingAnchor5 = [(UILabel *)v5->_locationView leadingAnchor];
      leadingAnchor6 = [(UIView *)v5->_colorBarView leadingAnchor];
      v129 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:12.0];
      v177[7] = v129;
      trailingAnchor3 = [(UILabel *)v5->_locationView trailingAnchor];
      trailingAnchor4 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v126 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v177[8] = v126;
      leadingAnchor7 = [(UILabel *)v5->_dateView leadingAnchor];
      leadingAnchor8 = [(UIView *)v5->_colorBarView leadingAnchor];
      v123 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:12.0];
      v177[9] = v123;
      trailingAnchor5 = [(UILabel *)v5->_dateView trailingAnchor];
      trailingAnchor6 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v120 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v177[10] = v120;
      firstBaselineAnchor10 = [(UILabel *)v5->_timeView firstBaselineAnchor];
      lastBaselineAnchor15 = [(UILabel *)v5->_dateView lastBaselineAnchor];
      v117 = [firstBaselineAnchor10 constraintEqualToAnchor:lastBaselineAnchor15 constant:v25];
      v177[11] = v117;
      leadingAnchor9 = [(UILabel *)v5->_timeView leadingAnchor];
      leadingAnchor10 = [(UIView *)v5->_colorBarView leadingAnchor];
      v114 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:12.0];
      v177[12] = v114;
      trailingAnchor7 = [(UILabel *)v5->_timeView trailingAnchor];
      trailingAnchor8 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v111 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      v177[13] = v111;
      leadingAnchor11 = [(UILabel *)v5->_additionalLabelView leadingAnchor];
      leadingAnchor12 = [(UIView *)v5->_colorBarView leadingAnchor];
      v108 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:12.0];
      v177[14] = v108;
      trailingAnchor9 = [(UILabel *)v5->_additionalLabelView trailingAnchor];
      trailingAnchor10 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v86 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
      v177[15] = v86;
      leadingAnchor13 = [(UILabel *)v5->_bottomLabelView leadingAnchor];
      leadingAnchor14 = [(UIView *)v5->_colorBarView leadingAnchor];
      v89 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:12.0];
      v177[16] = v89;
      trailingAnchor11 = [(UILabel *)v5->_bottomLabelView trailingAnchor];
      trailingAnchor12 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v92 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
      v177[17] = v92;
      v93 = [NSArray arrayWithObjects:v177 count:18];
      [NSLayoutConstraint activateConstraints:v93];
    }

    else
    {
      firstBaselineAnchor11 = [(UILabel *)v5->_titleView firstBaselineAnchor];
      topAnchor4 = [(CarplayStaticEventDetailsTableViewCell *)v5 topAnchor];
      v169 = [firstBaselineAnchor11 constraintEqualToAnchor:topAnchor4 constant:20.0];
      v176[0] = v169;
      leadingAnchor15 = [(UILabel *)v5->_titleView leadingAnchor];
      leadingAnchor16 = [(CarplayStaticEventDetailsTableViewCell *)v5 leadingAnchor];
      v163 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16 constant:12.0];
      v176[1] = v163;
      trailingAnchor13 = [(UILabel *)v5->_titleView trailingAnchor];
      trailingAnchor14 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v157 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
      v176[2] = v157;
      leadingAnchor17 = [(UILabel *)v5->_locationView leadingAnchor];
      leadingAnchor18 = [(CarplayStaticEventDetailsTableViewCell *)v5 leadingAnchor];
      v151 = [leadingAnchor17 constraintEqualToAnchor:leadingAnchor18 constant:12.0];
      v176[3] = v151;
      trailingAnchor15 = [(UILabel *)v5->_locationView trailingAnchor];
      trailingAnchor16 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v144 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16];
      v176[4] = v144;
      leadingAnchor19 = [(UILabel *)v5->_dateView leadingAnchor];
      leadingAnchor20 = [(CarplayStaticEventDetailsTableViewCell *)v5 leadingAnchor];
      v138 = [leadingAnchor19 constraintEqualToAnchor:leadingAnchor20 constant:12.0];
      v176[5] = v138;
      trailingAnchor17 = [(UILabel *)v5->_dateView trailingAnchor];
      trailingAnchor18 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v133 = [trailingAnchor17 constraintEqualToAnchor:trailingAnchor18];
      v176[6] = v133;
      leadingAnchor21 = [(UILabel *)v5->_timeView leadingAnchor];
      leadingAnchor22 = [(CarplayStaticEventDetailsTableViewCell *)v5 leadingAnchor];
      v95 = [leadingAnchor21 constraintEqualToAnchor:leadingAnchor22 constant:12.0];
      v176[7] = v95;
      trailingAnchor19 = [(UILabel *)v5->_timeView trailingAnchor];
      trailingAnchor20 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v98 = [trailingAnchor19 constraintEqualToAnchor:trailingAnchor20];
      v176[8] = v98;
      lastBaselineAnchor16 = [(UILabel *)v5->_timeView lastBaselineAnchor];
      bottomAnchor3 = [(CarplayStaticEventDetailsTableViewCell *)v5 bottomAnchor];
      v101 = [lastBaselineAnchor16 constraintEqualToAnchor:bottomAnchor3 constant:-14.0];
      v176[9] = v101;
      v102 = [NSArray arrayWithObjects:v176 count:10];
      [NSLayoutConstraint activateConstraints:v102];

      v103 = objc_opt_self();
      v175 = v103;
      v104 = [NSArray arrayWithObjects:&v175 count:1];
      v105 = [(CarplayStaticEventDetailsTableViewCell *)v5 registerForTraitChanges:v104 withAction:"_updateLabelFilters"];

      [(CarplayStaticEventDetailsTableViewCell *)v5 _updateLabelFilters];
    }
  }

  return v5;
}

- (void)_updateLabelFilters
{
  traitCollection = [(CarplayStaticEventDetailsTableViewCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v5 = &kCAFilterPlusL;
  if (userInterfaceStyle != 2)
  {
    v5 = &kCAFilterPlusD;
  }

  v10 = [CAFilter filterWithType:*v5];

  additionalLabelView = [(CarplayStaticEventDetailsTableViewCell *)self additionalLabelView];
  layer = [additionalLabelView layer];
  [layer setCompositingFilter:v10];

  bottomLabelView = [(CarplayStaticEventDetailsTableViewCell *)self bottomLabelView];
  layer2 = [bottomLabelView layer];
  [layer2 setCompositingFilter:v10];
}

- (id)_createPrimaryView
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[UIColor labelColor];
  [v3 setTextColor:v4];

  _titleFont = [(CarplayStaticEventDetailsTableViewCell *)self _titleFont];
  [v3 setFont:_titleFont];

  v6 = +[UIColor clearColor];
  [v3 setBackgroundColor:v6];

  [v3 setNumberOfLines:0];

  return v3;
}

- (id)_createSecondaryView
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[UIColor _carSystemPrimaryColor];
  [v3 setTextColor:v4];

  traitCollection = [(CarplayStaticEventDetailsTableViewCell *)self traitCollection];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:traitCollection];
  [v3 setFont:v6];

  return v3;
}

- (id)_createTertiaryView
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[UIColor _carSystemTertiaryColor];
  [v3 setTextColor:v4];

  traitCollection = [(CarplayStaticEventDetailsTableViewCell *)self traitCollection];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:traitCollection];
  [v3 setFont:v6];

  layer = [v3 layer];
  [layer setAllowsGroupBlending:0];

  return v3;
}

- (void)updateWithEvent:(id)event
{
  eventCopy = event;
  [(CarplayStaticEventDetailsTableViewCell *)self setEvent:eventCopy];
  virtualConference = [eventCopy virtualConference];
  joinMethods = [virtualConference joinMethods];
  firstObject = [joinMethods firstObject];
  v8 = [firstObject URL];
  v9 = v8;
  if (v8)
  {
    conferenceURLForDisplay = v8;
  }

  else
  {
    conferenceURLForDisplay = [eventCopy conferenceURLForDisplay];
  }

  v11 = conferenceURLForDisplay;

  virtualConference2 = [eventCopy virtualConference];
  joinMethods2 = [virtualConference2 joinMethods];
  firstObject2 = [joinMethods2 firstObject];
  isBroadcast = [firstObject2 isBroadcast];

  v16 = [CUIKLocationDescriptionGenerator conferenceStringForURL:v11 conferenceURLIsBroadcast:isBroadcast options:96];
  v17 = !+[CarplayUtilities eventCanDialIn:](CarplayUtilities, "eventCanDialIn:", eventCopy) && [v16 length] != 0;
  v100 = v11;
  if ([CarplayUtilities eventCanNavigate:eventCopy])
  {
    v18 = 0;
  }

  else
  {
    event = [(CarplayStaticEventDetailsTableViewCell *)self event];
    location = [event location];
    v18 = [location length] != 0;
  }

  v21 = v17 || v18;
  locationBaselineToTitleBaselineConstraint = [(CarplayStaticEventDetailsTableViewCell *)self locationBaselineToTitleBaselineConstraint];
  v23 = locationBaselineToTitleBaselineConstraint;
  v101 = v16;
  if (!v17 && !v18)
  {
    [locationBaselineToTitleBaselineConstraint setActive:0];

    [(UILabel *)self->_locationView setText:0];
    goto LABEL_23;
  }

  [locationBaselineToTitleBaselineConstraint setActive:1];

  if (!v17)
  {
    v25 = 0;
    if (!v18)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  string = [v16 string];
  v25 = [CarplayUtilities numberOfLinesInString:string];

  if (v18)
  {
LABEL_16:
    event2 = [(CarplayStaticEventDetailsTableViewCell *)self event];
    location2 = [event2 location];
    v25 += [CarplayUtilities numberOfLinesInString:location2];
  }

LABEL_17:
  [(UILabel *)self->_locationView setNumberOfLines:v25];
  v28 = objc_alloc_init(NSMutableAttributedString);
  if (v18)
  {
    v29 = [NSAttributedString alloc];
    event3 = [(CarplayStaticEventDetailsTableViewCell *)self event];
    location3 = [event3 location];
    v32 = [v29 initWithString:location3];
    [v28 appendAttributedString:v32];

    if (v17)
    {
      v33 = [[NSAttributedString alloc] initWithString:@"\n"];
      [v28 appendAttributedString:v33];

LABEL_21:
      [v28 appendAttributedString:v101];
    }
  }

  else if (v17)
  {
    goto LABEL_21;
  }

  v34 = objc_alloc_init(NSMutableParagraphStyle);
  [v34 setLineSpacing:-1.0];
  [v34 setLineBreakMode:4];
  [v28 addAttribute:NSParagraphStyleAttributeName value:v34 range:{0, objc_msgSend(v28, "length")}];
  [(UILabel *)self->_locationView setAttributedText:v28];

LABEL_23:
  v35 = CalSystemSolariumEnabled();
  event4 = [(CarplayStaticEventDetailsTableViewCell *)self event];
  if (v35)
  {
    memset(&v102[9], 0, 32);
    [(CarplayStaticEventDetailsTableViewCell *)self showDayName];
    CalDetailStringsForCarPlayCalendarEvent();
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;

    [(UILabel *)self->_dateView setAttributedText:v37];
    v99 = v38;
    [(UILabel *)self->_timeView setAttributedText:v38];
    [(UILabel *)self->_bottomLabelView setAttributedText:v40];
    v98 = v39;
    if (v39 || (-[CarplayStaticEventDetailsTableViewCell event](self, "event"), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 hasRecurrenceRules], v41, !v42))
    {
      [(UILabel *)self->_additionalLabelView setAttributedText:v39];
    }

    else
    {
      event5 = [(CarplayStaticEventDetailsTableViewCell *)self event];
      recurrenceRules = [event5 recurrenceRules];
      v95 = [recurrenceRules objectAtIndexedSubscript:0];

      event6 = [(CarplayStaticEventDetailsTableViewCell *)self event];
      startDate = [event6 startDate];
      v92 = CUIKStringForRecurrenceRule();

      v94 = [UIImage systemImageNamed:@"repeat"];
      v93 = [NSTextAttachment cuik_textAttachmentWithImage:v94];
      v96 = [NSAttributedString attributedStringWithAttachment:v93];
      v47 = [NSAttributedString alloc];
      v48 = +[NSBundle mainBundle];
      v49 = [v48 localizedStringForKey:@"%@ %@ %@" value:&stru_1002133B8 table:0];
      v91 = [v47 initWithString:v49];

      v50 = +[NSBundle mainBundle];
      v51 = [v50 localizedStringForKey:@"Repeats" value:&stru_1002133B8 table:0];
      v52 = [NSMutableAttributedString localizedAttributedStringWithFormat:v91, v96, v51, v92];
      [(UILabel *)self->_additionalLabelView setAttributedText:v52];
    }

    text = [(UILabel *)self->_additionalLabelView text];
    v59 = 1;
    v60 = 1;
    if (!text)
    {
      attributedText = [(UILabel *)self->_additionalLabelView attributedText];
      v60 = attributedText != 0;
    }

    timeBaselineToDateBaselineConstraint = [(CarplayStaticEventDetailsTableViewCell *)self timeBaselineToDateBaselineConstraint];
    [timeBaselineToDateBaselineConstraint setActive:1];

    dateBaselineToTitleBaselineConstraint = [(CarplayStaticEventDetailsTableViewCell *)self dateBaselineToTitleBaselineConstraint];
    [dateBaselineToTitleBaselineConstraint setActive:(v21 & 1) == 0];

    dateBaselineToLocationBaselineConstraint = [(CarplayStaticEventDetailsTableViewCell *)self dateBaselineToLocationBaselineConstraint];
    [dateBaselineToLocationBaselineConstraint setActive:v21 & 1];

    if (v40)
    {
      v65 = 1;
    }

    else
    {
      v65 = !v60;
    }

    if (v65 == 1)
    {
      if (v40)
      {
        v59 = v60;
      }

      else
      {
        v59 = 0;
      }

      v66 = v59 ^ 1;
      v56 = v100;
      v67 = v59;
      if ((v59 & 1) == 0 && v60)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v66 = 0;
      v67 = 0;
      v56 = v100;
    }

    timeBottomToBottomAnchorConstraint = [(CarplayStaticEventDetailsTableViewCell *)self timeBottomToBottomAnchorConstraint];
    [timeBottomToBottomAnchorConstraint setActive:v66];

    additionalLabelToBottomAnchorConstraint = [(CarplayStaticEventDetailsTableViewCell *)self additionalLabelToBottomAnchorConstraint];
    [additionalLabelToBottomAnchorConstraint setActive:v65 ^ 1u];

    additionalLabelToTimeBaselineConstraint = [(CarplayStaticEventDetailsTableViewCell *)self additionalLabelToTimeBaselineConstraint];
    [additionalLabelToTimeBaselineConstraint setActive:v59];

    bottomLabelToAdditionalLabelBaselineConstraint = [(CarplayStaticEventDetailsTableViewCell *)self bottomLabelToAdditionalLabelBaselineConstraint];
    [bottomLabelToAdditionalLabelBaselineConstraint setActive:v67];

    bottomLabelToBottomAnchorConstraint = [(CarplayStaticEventDetailsTableViewCell *)self bottomLabelToBottomAnchorConstraint];
    [bottomLabelToBottomAnchorConstraint setActive:v67];
  }

  else
  {
    memset(&v102[5], 0, 32);
    LOBYTE(v90) = ![(CarplayStaticEventDetailsTableViewCell *)self showDayName];
    CalDetailStringsForCalendarEvent();
    v37 = 0;
    v53 = 0;
    v54 = 0;
    v40 = 0;

    [(UILabel *)self->_dateView setText:v37, 0, 0, 0, v90];
    [(UILabel *)self->_timeView setText:v53];
    v55 = (v37 == 0) | v21 ^ 1;
    v98 = v54;
    v99 = v53;
    v97 = v37;
    if ((v37 == 0) | (v21 ^ 1) & 1)
    {
      if (((v37 != 0) & ~v21) != 0)
      {
        v68 = v40;
        v69 = 0;
        v70 = 0;
        v72 = 1;
        v71 = 1;
      }

      else if ((v21 ^ 1) & 1 | (v37 != 0))
      {
        if (v21 & 1 | (v37 != 0))
        {
          v56 = v100;
          v57 = v101;
          goto LABEL_54;
        }

        v68 = v40;
        v72 = 0;
        v70 = 0;
        v71 = 0;
        v69 = 1;
      }

      else
      {
        v68 = v40;
        v72 = 0;
        v69 = 0;
        v71 = 0;
        v70 = 1;
      }
    }

    else
    {
      v68 = v40;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 1;
    }

    timeBaselineToDateBaselineConstraint2 = [(CarplayStaticEventDetailsTableViewCell *)self timeBaselineToDateBaselineConstraint];
    [timeBaselineToDateBaselineConstraint2 setActive:v72];

    timeBaselineToTitleBaselineConstraint = [(CarplayStaticEventDetailsTableViewCell *)self timeBaselineToTitleBaselineConstraint];
    [timeBaselineToTitleBaselineConstraint setActive:v69];

    timeBaselineToLocationBaselineConstraint = [(CarplayStaticEventDetailsTableViewCell *)self timeBaselineToLocationBaselineConstraint];
    [timeBaselineToLocationBaselineConstraint setActive:v70];

    dateBaselineToTitleBaselineConstraint2 = [(CarplayStaticEventDetailsTableViewCell *)self dateBaselineToTitleBaselineConstraint];
    [dateBaselineToTitleBaselineConstraint2 setActive:v71];

    bottomLabelToBottomAnchorConstraint = [(CarplayStaticEventDetailsTableViewCell *)self dateBaselineToLocationBaselineConstraint];
    [bottomLabelToBottomAnchorConstraint setActive:(v55 & 1) == 0];
    v56 = v100;
    v40 = v68;
    v37 = v97;
  }

LABEL_53:
  v57 = v101;
  v54 = v98;
  v53 = v99;
LABEL_54:

  event7 = [(CarplayStaticEventDetailsTableViewCell *)self event];
  status = [event7 status];

  if (status == 3)
  {
    v84 = [NSAttributedString alloc];
    event8 = [(CarplayStaticEventDetailsTableViewCell *)self event];
    title = [event8 title];
    v103 = NSStrikethroughStyleAttributeName;
    v104 = &off_100219CD0;
    v87 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v88 = [v84 initWithString:title attributes:v87];
    [(UILabel *)self->_titleView setAttributedText:v88];
  }

  else
  {
    event8 = [(CarplayStaticEventDetailsTableViewCell *)self event];
    title = [event8 title];
    [(UILabel *)self->_titleView setText:title];
  }

  if (CalSystemSolariumEnabled())
  {
    traitCollection = [(CarplayStaticEventDetailsTableViewCell *)self traitCollection];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_10014C63C;
    v102[3] = &unk_10020EB00;
    v102[4] = self;
    [traitCollection performAsCurrentTraitCollection:v102];
  }
}

- (void)cellWasTapped
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CarplayStaticEventDetailsTableViewCell.m" lineNumber:375 description:{@"Static event details cell was tapped, but it should not have been able to be selected"}];
}

@end