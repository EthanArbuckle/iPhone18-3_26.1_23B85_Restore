@interface PHRecentCallDetailsView
- (NSCalendar)calendar;
- (NSDateFormatter)dateFormatter;
- (NSDateFormatter)timeFormatter;
- (NSNumberFormatter)numberFormatter;
- (PHRecentCallDetailsView)initWithCoder:(id)coder;
- (PHRecentCallDetailsView)initWithFrame:(CGRect)frame;
- (PHRecentCallDetailsViewDelegate)delegate;
- (id)callOccurrences;
- (id)emergencyItemLabelText:(id)text;
- (id)stringForDataUsage:(id)usage;
- (id)stringForTimeInterval:(double)interval;
- (void)_replaceSubviews;
- (void)addNotificationObservers;
- (void)dealloc;
- (void)handleFormattersDidChangeNotification:(id)notification;
- (void)loadSubviews;
- (void)presentConversationForUUID:(id)d;
- (void)setRecentCall:(id)call;
@end

@implementation PHRecentCallDetailsView

- (PHRecentCallDetailsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PHRecentCallDetailsView;
  v3 = [(PHRecentCallDetailsView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHRecentCallDetailsView *)v3 addNotificationObservers];
  }

  return v4;
}

- (PHRecentCallDetailsView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PHRecentCallDetailsView;
  v3 = [(PHRecentCallDetailsView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PHRecentCallDetailsView *)v3 addNotificationObservers];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHRecentCallDetailsView;
  [(PHRecentCallDetailsView *)&v4 dealloc];
}

- (NSCalendar)calendar
{
  v2 = sPHRecentCallDetailsViewCalendar;
  if (!sPHRecentCallDetailsViewCalendar)
  {
    v3 = +[NSCalendar currentCalendar];
    v4 = sPHRecentCallDetailsViewCalendar;
    sPHRecentCallDetailsViewCalendar = v3;

    v2 = sPHRecentCallDetailsViewCalendar;
  }

  return v2;
}

- (NSDateFormatter)dateFormatter
{
  v2 = sPHRecentCallDetailsViewDateFormatter;
  if (!sPHRecentCallDetailsViewDateFormatter)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    v4 = sPHRecentCallDetailsViewDateFormatter;
    sPHRecentCallDetailsViewDateFormatter = v3;

    [sPHRecentCallDetailsViewDateFormatter setDateStyle:3];
    [sPHRecentCallDetailsViewDateFormatter setDoesRelativeDateFormatting:1];
    [sPHRecentCallDetailsViewDateFormatter setTimeStyle:0];
    v2 = sPHRecentCallDetailsViewDateFormatter;
  }

  return v2;
}

- (NSNumberFormatter)numberFormatter
{
  v2 = sPHRecentCallDetailsViewNumberFormatter;
  if (!sPHRecentCallDetailsViewNumberFormatter)
  {
    v3 = objc_alloc_init(NSNumberFormatter);
    v4 = sPHRecentCallDetailsViewNumberFormatter;
    sPHRecentCallDetailsViewNumberFormatter = v3;

    v2 = sPHRecentCallDetailsViewNumberFormatter;
  }

  return v2;
}

- (NSDateFormatter)timeFormatter
{
  v2 = sPHRecentCallDetailsViewTimeFormatter;
  if (!sPHRecentCallDetailsViewTimeFormatter)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    v4 = sPHRecentCallDetailsViewTimeFormatter;
    sPHRecentCallDetailsViewTimeFormatter = v3;

    [sPHRecentCallDetailsViewTimeFormatter setDateStyle:0];
    [sPHRecentCallDetailsViewTimeFormatter setTimeStyle:1];
    v2 = sPHRecentCallDetailsViewTimeFormatter;
  }

  return v2;
}

- (void)setRecentCall:(id)call
{
  callCopy = call;
  if (self->_recentCall != callCopy)
  {
    v6 = callCopy;
    objc_storeStrong(&self->_recentCall, call);
    [(PHRecentCallDetailsView *)self loadSubviews];
    callCopy = v6;
  }
}

- (void)addNotificationObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleFormattersDidChangeNotification:" name:@"PHRecentCallDetailsViewFormattersDidChangeNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  if (!sPHRecentCallDetailsViewCurrentLocaleDidChangeNotificationObserver)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = +[NSOperationQueue mainQueue];
    v7 = [v5 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v6 usingBlock:&__block_literal_global_24];
    v8 = sPHRecentCallDetailsViewCurrentLocaleDidChangeNotificationObserver;
    sPHRecentCallDetailsViewCurrentLocaleDidChangeNotificationObserver = v7;
  }

  if (!sPHRecentCallDetailsViewSystemTimeZoneDidChangeNotificationObserver)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    v9 = +[NSOperationQueue mainQueue];
    v10 = [v12 addObserverForName:NSSystemTimeZoneDidChangeNotification object:0 queue:v9 usingBlock:&__block_literal_global_24];
    v11 = sPHRecentCallDetailsViewSystemTimeZoneDidChangeNotificationObserver;
    sPHRecentCallDetailsViewSystemTimeZoneDidChangeNotificationObserver = v10;
  }
}

- (void)handleFormattersDidChangeNotification:(id)notification
{
  recentCall = [(PHRecentCallDetailsView *)self recentCall];

  if (recentCall)
  {

    [(PHRecentCallDetailsView *)self _replaceSubviews];
  }
}

- (id)callOccurrences
{
  v3 = [NSSortDescriptor sortDescriptorWithKey:kCHCallOccurrenceDateKey ascending:0];
  recentCall = [(PHRecentCallDetailsView *)self recentCall];
  callOccurrences = [recentCall callOccurrences];
  v9 = v3;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [callOccurrences sortedArrayUsingDescriptors:v6];

  return v7;
}

- (void)loadSubviews
{
  v3 = +[NSMutableArray array];
  callOccurrences = [(PHRecentCallDetailsView *)self callOccurrences];
  v5 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = callOccurrences;
  v7 = [obj countByEnumeratingWithState:&v145 objects:v149 count:16];
  v8 = &UIDeviceProximityStateDidChangeNotification_ptr;
  if (!v7)
  {
    v137 = 0;
    goto LABEL_69;
  }

  v9 = v7;
  v137 = 0;
  v10 = *v146;
  v11 = kCHCallOccurrenceDateKey;
  v124 = kCHCallStatusUnknown;
  v122 = kCHCallOccurrenceDurationKey;
  v123 = kCHCallOccurrenceCallStatusKey;
  v120 = kCHCallOccurrenceVerificationStatusKey;
  v121 = kCHCallOccurrenceDataUsageKey;
  v119 = kCHCallStatusAnsweredElsewhere;
  v116 = kCHCallStatusCancelled;
  v115 = kCHCallStatusMissed;
  v114 = kCHCallStatusConnected;
  v113 = kCHCallStatusConnectedIncoming;
  v117 = CHCallScreenSharingTypeScreenShareOrRemoteControl;
  v118 = kCHCallOccurrenceUniqueIdKey;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  selfCopy = self;
  v128 = v3;
  v125 = kCHCallOccurrenceDateKey;
  v126 = *v146;
  do
  {
    v15 = 0;
    v130 = v9;
    do
    {
      if (*v146 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v145 + 1) + 8 * v15);
      v17 = [v16 objectForKeyedSubscript:v11];
      objc_opt_class();
      v144 = v17;
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v18 = v17) == 0)
      {
        v27 = 0;
        goto LABEL_55;
      }

      v19 = v18;
      v20 = [v16 objectForKeyedSubscript:v123];
      objc_opt_class();
      unsignedIntValue = v124;
      if (objc_opt_isKindOfClass())
      {
        unsignedIntValue = [v20 unsignedIntValue];
      }

      v22 = [v16 objectForKeyedSubscript:v122];
      objc_opt_class();
      v23 = 0.0;
      if (objc_opt_isKindOfClass())
      {
        [v22 doubleValue];
        v23 = v24;
      }

      v25 = [v16 objectForKeyedSubscript:v121];
      objc_opt_class();
      v134 = v25;
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v28 = [v16 objectForKeyedSubscript:v120];
      objc_opt_class();
      v135 = v22;
      v136 = v20;
      v132 = v28;
      v142 = (objc_opt_isKindOfClass() & 1) != 0 && [v28 unsignedIntValue] == 1;
      v29 = objc_alloc_init(UILabel);
      preferredSubheadline1Font = [(NSNotificationName *)v8[310] preferredSubheadline1Font];
      [v29 setFont:preferredSubheadline1Font];

      dateFormatter = [(PHRecentCallDetailsView *)self dateFormatter];
      v143 = v19;
      v32 = [dateFormatter stringFromDate:v19];
      [v29 setText:v32];

      [v29 setTextAlignment:4];
      [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v29 setAdjustsFontForContentSizeCategory:1];
      [v29 setNumberOfLines:0];
      [(PHRecentCallDetailsView *)self addSubview:v29];
      leadingAnchor = [v29 leadingAnchor];
      leadingAnchor2 = [(PHRecentCallDetailsView *)self leadingAnchor];
      v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v35 setActive:1];

      trailingAnchor = [v29 trailingAnchor];
      trailingAnchor2 = [(PHRecentCallDetailsView *)self trailingAnchor];
      v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v38 setActive:1];

      if (IsAccessibilityCategory)
      {
        topAnchor = [v29 topAnchor];
        topAnchor2 = [(PHRecentCallDetailsView *)self topAnchor];
        preferredSubheadline1Font2 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
        [preferredSubheadline1Font2 setActive:1];
      }

      else
      {
        topAnchor = [v29 bottomAnchor];
        topAnchor2 = [(PHRecentCallDetailsView *)self topAnchor];
        preferredSubheadline1Font2 = [(NSNotificationName *)v8[310] preferredSubheadline1Font];
        [preferredSubheadline1Font2 _scaledValueForValue:40.0];
        v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:ceil(v42)];
        [v43 setActive:1];
      }

      if (unsignedIntValue == v119)
      {
        v44 = &swift_dynamicCastClassUnconditional_ptr;
        v45 = +[NSBundle mainBundle];
        v46 = v45;
        v47 = @"CALL_STATUS_ANSWERED_ELSEWHERE";
        goto LABEL_28;
      }

      v44 = &swift_dynamicCastClassUnconditional_ptr;
      if (unsignedIntValue == v116)
      {
        v45 = +[NSBundle mainBundle];
        v46 = v45;
        v47 = @"CALL_STATUS_CANCELLED";
        goto LABEL_28;
      }

      if (unsignedIntValue == v115)
      {
        v45 = +[NSBundle mainBundle];
        v46 = v45;
        v47 = @"CALL_STATUS_MISSED";
LABEL_28:
        [v45 localizedStringForKey:v47 value:&stru_10028F310 table:@"PHCallHistory"];
        v141 = v140 = 0;
LABEL_29:

        goto LABEL_30;
      }

      if ((v114 & unsignedIntValue) != 0)
      {
        v83 = +[NSBundle mainBundle];
        v84 = v83;
        if (unsignedIntValue == v113)
        {
          v85 = @"CALL_STATUS_CONNECTED_INCOMING";
        }

        else
        {
          v85 = @"CALL_STATUS_CONNECTED_OUTGOING";
        }

        v141 = [v83 localizedStringForKey:v85 value:&stru_10028F310 table:@"PHCallHistory"];

        v86 = [(PHRecentCallDetailsView *)self stringForTimeInterval:v23];
        v46 = v86;
        if (v26)
        {
          v87 = [(PHRecentCallDetailsView *)self stringForDataUsage:v26];
          v88 = +[NSBundle mainBundle];
          v89 = [v88 localizedStringForKey:@"DURATION_DATA_FORMAT_%@_(%@)" value:&stru_10028F310 table:@"PHCallHistory"];

          v44 = &swift_dynamicCastClassUnconditional_ptr;
          v140 = [NSString stringWithFormat:v89, v46, v87];
        }

        else
        {
          v46 = v86;
          v140 = v46;
        }

        goto LABEL_29;
      }

      v140 = 0;
      v141 = 0;
LABEL_30:
      recentCall = [(PHRecentCallDetailsView *)self recentCall];
      wasEmergencyCall = [recentCall wasEmergencyCall];

      if (wasEmergencyCall)
      {
        v139 = [(PHRecentCallDetailsView *)self emergencyItemLabelText:v16];
      }

      else
      {
        v139 = 0;
      }

      recentCall2 = [(PHRecentCallDetailsView *)self recentCall];
      screenSharingType = [recentCall2 screenSharingType];

      if (screenSharingType)
      {
        recentCall3 = [(PHRecentCallDetailsView *)self recentCall];
        screenSharingType2 = [recentCall3 screenSharingType];

        if ((v117 & ~screenSharingType2) == 0)
        {
          mainBundle = [v44[356] mainBundle];
          mainBundle2 = mainBundle;
          v56 = @"SHARED_ALLOWED_REMOTE_CONTROL";
LABEL_40:
          v57 = [mainBundle localizedStringForKey:v56 value:&stru_10028F310 table:@"PHCallHistory"];
          recentCall4 = [(PHRecentCallDetailsView *)self recentCall];
          callerNameForDisplay = [recentCall4 callerNameForDisplay];
          v138 = [NSString localizedStringWithFormat:v57, callerNameForDisplay];

LABEL_41:
          goto LABEL_42;
        }

        if ((screenSharingType2 & 2) != 0)
        {
          mainBundle = [v44[356] mainBundle];
          mainBundle2 = mainBundle;
          v56 = @"REMOTE_CONTROL";
          goto LABEL_40;
        }

        if (screenSharingType2)
        {
          mainBundle2 = [v44[356] mainBundle];
          v138 = [mainBundle2 localizedStringForKey:@"SHARED_SCREEN" value:&stru_10028F310 table:@"PHCallHistory"];
          goto LABEL_41;
        }
      }

      v138 = 0;
LABEL_42:
      v60 = [v16 objectForKeyedSubscript:v118];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v61 = v60;
      }

      else
      {
        v61 = 0;
      }

      v133 = v26;
      if ([v61 length] && (-[PHRecentCallDetailsView delegate](self, "delegate"), v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "rttConversationForUUID:", v61), v63 = objc_claimAutoreleasedReturnValue(), v63, v62, v63))
      {
        delegate = [(PHRecentCallDetailsView *)self delegate];
        recentCallTTYType = [delegate recentCallTTYType];
      }

      else
      {
        recentCallTTYType = 0;
      }

      v66 = [PHRecentCallDetailsItemView alloc];
      timeFormatter = [(PHRecentCallDetailsView *)self timeFormatter];
      v68 = [timeFormatter stringFromDate:v143];
      LOBYTE(v112) = v142;
      v138 = [(PHRecentCallDetailsItemView *)v66 initWithFrame:v61 callUUID:recentCallTTYType ttyType:v68 timeLabel:v141 statusLabel:v140 durationAndDataText:v139 emergencyItemsText:CGRectZero.origin.x verified:y screenSharingTypeText:width, height, v112, v138];

      if (recentCallTTYType)
      {
        [(PHRecentCallDetailsItemView *)v138 setDelegate:self];
      }

      [(PHRecentCallDetailsItemView *)v138 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHRecentCallDetailsView *)self addSubview:v138];
      leadingAnchor3 = [(PHRecentCallDetailsItemView *)v138 leadingAnchor];
      leadingAnchor4 = [(PHRecentCallDetailsView *)self leadingAnchor];
      v72 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [v72 setActive:1];

      trailingAnchor3 = [(PHRecentCallDetailsItemView *)v138 trailingAnchor];
      trailingAnchor4 = [(PHRecentCallDetailsView *)self trailingAnchor];
      v75 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [v75 setActive:1];

      if ([v128 count])
      {
        lastObject = [v128 lastObject];
        topAnchor3 = [(PHRecentCallDetailsItemView *)v138 topAnchor];
        bottomAnchor = [lastObject bottomAnchor];
        v79 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:16.0];
        [v79 setActive:1];
      }

      else
      {
        v80 = +[UIFont preferredSubheadline1Font];
        [v80 _scaledValueForValue:10.0];
        v82 = v81;

        lastObject = [(PHRecentCallDetailsItemView *)v138 topAnchor];
        topAnchor3 = [v29 bottomAnchor];
        bottomAnchor = [lastObject constraintEqualToAnchor:topAnchor3 constant:ceil(v82)];
        [bottomAnchor setActive:1];
      }

      v137 |= v142;

      [v128 addObject:v138];
      v3 = v128;
      v10 = v126;
      self = selfCopy;
      v8 = &UIDeviceProximityStateDidChangeNotification_ptr;
      v9 = v130;
      v11 = v125;
      v27 = v143;
LABEL_55:

      v15 = v15 + 1;
    }

    while (v9 != v15);
    v90 = [obj countByEnumeratingWithState:&v145 objects:v149 count:16];
    v9 = v90;
  }

  while (v90);
LABEL_69:

  lastObject2 = [v3 lastObject];
  v92 = lastObject2;
  if (v137)
  {
    bottomAnchor4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(NSNotificationName *)v8[310] preferredCaption1Font];
    v95 = v94 = v3;
    [bottomAnchor4 setFont:v95];

    [bottomAnchor4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v96 = +[NSBundle mainBundle];
    v97 = [v96 localizedStringForKey:@"VERIFIED_EXPLANATION" value:&stru_10028F310 table:@"PHRecents"];
    [bottomAnchor4 setText:v97];

    v98 = +[UIColor dynamicSecondaryLabelColor];
    [bottomAnchor4 setTextColor:v98];

    [bottomAnchor4 setAdjustsFontForContentSizeCategory:1];
    [bottomAnchor4 setNumberOfLines:0];
    [(PHRecentCallDetailsView *)self addSubview:bottomAnchor4];
    leadingAnchor5 = [bottomAnchor4 leadingAnchor];
    leadingAnchor6 = [(PHRecentCallDetailsView *)self leadingAnchor];
    v101 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v101 setActive:1];

    trailingAnchor5 = [bottomAnchor4 trailingAnchor];
    trailingAnchor6 = [(PHRecentCallDetailsView *)self trailingAnchor];
    v104 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v104 setActive:1];

    topAnchor4 = [bottomAnchor4 topAnchor];
    lastBaselineAnchor = [v92 lastBaselineAnchor];
    v107 = [topAnchor4 constraintEqualToAnchor:lastBaselineAnchor constant:18.5];
    [v107 setActive:1];

    bottomAnchor2 = [(PHRecentCallDetailsView *)self bottomAnchor];
    bottomAnchor3 = [bottomAnchor4 bottomAnchor];
    preferredSubheadline1Font3 = [(NSNotificationName *)v8[310] preferredSubheadline1Font];
    [preferredSubheadline1Font3 _scaledValueForValue:14.0];
    v111 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:?];
    [v111 setActive:1];

    v3 = v94;
    goto LABEL_73;
  }

  if (lastObject2)
  {
    bottomAnchor4 = [(PHRecentCallDetailsView *)self bottomAnchor];
    bottomAnchor2 = [v92 bottomAnchor];
    bottomAnchor3 = [(NSNotificationName *)v8[310] preferredSubheadline1Font];
    [bottomAnchor3 _scaledValueForValue:14.0];
    preferredSubheadline1Font3 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:?];
    [preferredSubheadline1Font3 setActive:1];
LABEL_73:
  }

  [(PHRecentCallDetailsView *)self setSummaries:v3];
}

- (void)_replaceSubviews
{
  subviews = [(PHRecentCallDetailsView *)self subviews];
  [subviews makeObjectsPerformSelector:"removeFromSuperview"];

  [(PHRecentCallDetailsView *)self loadSubviews];
}

- (id)stringForTimeInterval:(double)interval
{
  intervalCopy = interval;
  if (interval)
  {
    if (intervalCopy > 0x3B)
    {
      if (intervalCopy > 0xE0F)
      {
        v19 = +[NSBundle mainBundle];
        v20 = v19;
        if (intervalCopy - 7200 >= 0xFFFFFFFFFFFFF1F0)
        {
          v21 = @"%@_HOUR";
        }

        else
        {
          v21 = @"%@_HOURS";
        }

        v22 = [v19 localizedStringForKey:v21 value:&stru_10028F310 table:@"PHCallHistory"];
        numberFormatter = [(PHRecentCallDetailsView *)self numberFormatter];
        0xE10 = [NSNumber numberWithUnsignedInteger:intervalCopy / 0xE10];
        v25 = [numberFormatter stringFromNumber:0xE10];
        v8 = [NSString stringWithFormat:v22, v25];

        if (intervalCopy % 0xE10 < 0x3C)
        {
          goto LABEL_22;
        }

        v26 = intervalCopy % 0xE10 / 0x3C;
        v27 = intervalCopy % 0xE10 - 120;
        v28 = +[NSBundle mainBundle];
        v29 = v28;
        if (v27 >= 0xFFFFFFFFFFFFFFC4)
        {
          v30 = @"%@_MINUTE";
        }

        else
        {
          v30 = @"%@_MINUTES";
        }

        v31 = [v28 localizedStringForKey:v30 value:&stru_10028F310 table:@"PHCallHistory"];
        numberFormatter2 = [(PHRecentCallDetailsView *)self numberFormatter];
        v33 = [NSNumber numberWithUnsignedInteger:v26];
        v34 = [numberFormatter2 stringFromNumber:v33];
        v6 = [NSString stringWithFormat:v31, v34];

        v12 = [NSString stringWithFormat:@"%@ %@", v8, v6];
      }

      else
      {
        v13 = interval / 0x3Cu;
        v14 = +[NSBundle mainBundle];
        v6 = v14;
        if (intervalCopy <= 0x77)
        {
          v15 = @"%@_MINUTE";
        }

        else
        {
          v15 = @"%@_MINUTES";
        }

        v8 = [v14 localizedStringForKey:v15 value:&stru_10028F310 table:@"PHCallHistory"];
        numberFormatter3 = [(PHRecentCallDetailsView *)self numberFormatter];
        v17 = [NSNumber numberWithUnsignedInteger:v13];
        v18 = [numberFormatter3 stringFromNumber:v17];
        v12 = [NSString stringWithFormat:v8, v18];
      }
    }

    else
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      if (intervalCopy == 1)
      {
        v7 = @"%@_SECOND";
      }

      else
      {
        v7 = @"%@_SECONDS";
      }

      v8 = [v5 localizedStringForKey:v7 value:&stru_10028F310 table:@"PHCallHistory"];
      numberFormatter4 = [(PHRecentCallDetailsView *)self numberFormatter];
      v10 = [NSNumber numberWithUnsignedInteger:intervalCopy];
      v11 = [numberFormatter4 stringFromNumber:v10];
      v12 = [NSString stringWithFormat:v8, v11];
    }

    v8 = v12;
  }

  else
  {
    v8 = 0;
  }

LABEL_22:

  return v8;
}

- (id)stringForDataUsage:(id)usage
{
  longLongValue = [usage longLongValue];

  return [NSByteCountFormatter stringFromByteCount:longLongValue countStyle:0];
}

- (id)emergencyItemLabelText:(id)text
{
  textCopy = text;
  v4 = [textCopy objectForKeyedSubscript:kCHCallOccurrenceEmergencyVideosCountKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v6 = [textCopy objectForKeyedSubscript:kCHCallOccurrenceEmergencyImagesCountKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue2 = [v6 integerValue];
    if (!integerValue)
    {
      goto LABEL_11;
    }
  }

  else
  {
    integerValue2 = 0;
    if (!integerValue)
    {
      goto LABEL_11;
    }
  }

  if (!integerValue2)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Shared %lu videos" value:&stru_10028F310 table:0];
LABEL_10:
    [NSString stringWithFormat:v9, integerValue, v14];
    v10 = LABEL_14:;

    goto LABEL_15;
  }

LABEL_11:
  if (!integerValue && integerValue2)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Shared %lu photos" value:&stru_10028F310 table:0];
    [NSString stringWithFormat:v9, integerValue2, v14];
    goto LABEL_14;
  }

  v10 = 0;
  if (integerValue && integerValue2)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Shared %lu videos and %lu photos" value:&stru_10028F310 table:0];
    v14 = integerValue2;
    goto LABEL_10;
  }

LABEL_15:
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = v10;
    v12 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ stringForEmergencyItemLabelText detailsItemViewEmergencyItemLabelText:%@", buf, 0x16u);
  }

  return v10;
}

- (void)presentConversationForUUID:(id)d
{
  dCopy = d;
  delegate = [(PHRecentCallDetailsView *)self delegate];
  [delegate presentConversationForUUID:dCopy];
}

- (PHRecentCallDetailsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end