@interface PHRecentCallDetailsView
- (NSCalendar)calendar;
- (NSDateFormatter)dateFormatter;
- (NSDateFormatter)timeFormatter;
- (NSNumberFormatter)numberFormatter;
- (PHRecentCallDetailsView)initWithCoder:(id)a3;
- (PHRecentCallDetailsView)initWithFrame:(CGRect)a3;
- (PHRecentCallDetailsViewDelegate)delegate;
- (id)callOccurrences;
- (id)emergencyItemLabelText:(id)a3;
- (id)stringForDataUsage:(id)a3;
- (id)stringForTimeInterval:(double)a3;
- (void)_replaceSubviews;
- (void)addNotificationObservers;
- (void)dealloc;
- (void)handleFormattersDidChangeNotification:(id)a3;
- (void)loadSubviews;
- (void)presentConversationForUUID:(id)a3;
- (void)setRecentCall:(id)a3;
@end

@implementation PHRecentCallDetailsView

- (PHRecentCallDetailsView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PHRecentCallDetailsView;
  v3 = [(PHRecentCallDetailsView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHRecentCallDetailsView *)v3 addNotificationObservers];
  }

  return v4;
}

- (PHRecentCallDetailsView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PHRecentCallDetailsView;
  v3 = [(PHRecentCallDetailsView *)&v6 initWithCoder:a3];
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
  v2 = qword_1001269C8;
  if (!qword_1001269C8)
  {
    v3 = +[NSCalendar currentCalendar];
    v4 = qword_1001269C8;
    qword_1001269C8 = v3;

    v2 = qword_1001269C8;
  }

  return v2;
}

- (NSDateFormatter)dateFormatter
{
  v2 = qword_1001269D0;
  if (!qword_1001269D0)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    v4 = qword_1001269D0;
    qword_1001269D0 = v3;

    [qword_1001269D0 setDateStyle:3];
    [qword_1001269D0 setDoesRelativeDateFormatting:1];
    [qword_1001269D0 setTimeStyle:0];
    v2 = qword_1001269D0;
  }

  return v2;
}

- (NSNumberFormatter)numberFormatter
{
  v2 = qword_1001269D8;
  if (!qword_1001269D8)
  {
    v3 = objc_alloc_init(NSNumberFormatter);
    v4 = qword_1001269D8;
    qword_1001269D8 = v3;

    v2 = qword_1001269D8;
  }

  return v2;
}

- (NSDateFormatter)timeFormatter
{
  v2 = qword_1001269E0;
  if (!qword_1001269E0)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    v4 = qword_1001269E0;
    qword_1001269E0 = v3;

    [qword_1001269E0 setDateStyle:0];
    [qword_1001269E0 setTimeStyle:1];
    v2 = qword_1001269E0;
  }

  return v2;
}

- (void)setRecentCall:(id)a3
{
  v5 = a3;
  if (self->_recentCall != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_recentCall, a3);
    [(PHRecentCallDetailsView *)self loadSubviews];
    v5 = v6;
  }
}

- (void)addNotificationObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleFormattersDidChangeNotification:" name:@"PHRecentCallDetailsViewFormattersDidChangeNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  if (!qword_1001269B8)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = +[NSOperationQueue mainQueue];
    v7 = [v5 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v6 usingBlock:&stru_10010B3C0];
    v8 = qword_1001269B8;
    qword_1001269B8 = v7;
  }

  if (!qword_1001269C0)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    v9 = +[NSOperationQueue mainQueue];
    v10 = [v12 addObserverForName:NSSystemTimeZoneDidChangeNotification object:0 queue:v9 usingBlock:&stru_10010B3C0];
    v11 = qword_1001269C0;
    qword_1001269C0 = v10;
  }
}

- (void)handleFormattersDidChangeNotification:(id)a3
{
  v4 = [(PHRecentCallDetailsView *)self recentCall];

  if (v4)
  {

    [(PHRecentCallDetailsView *)self _replaceSubviews];
  }
}

- (id)callOccurrences
{
  v3 = [NSSortDescriptor sortDescriptorWithKey:kCHCallOccurrenceDateKey ascending:0];
  v4 = [(PHRecentCallDetailsView *)self recentCall];
  v5 = [v4 callOccurrences];
  v9 = v3;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  return v7;
}

- (void)loadSubviews
{
  v3 = +[NSMutableArray array];
  v4 = [(PHRecentCallDetailsView *)self callOccurrences];
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v145 objects:v149 count:16];
  v8 = OS_os_log_ptr;
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
  v127 = self;
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
      v21 = v124;
      if (objc_opt_isKindOfClass())
      {
        v21 = [v20 unsignedIntValue];
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
      v30 = [v8[69] preferredSubheadline1Font];
      [v29 setFont:v30];

      v31 = [(PHRecentCallDetailsView *)self dateFormatter];
      v143 = v19;
      v32 = [v31 stringFromDate:v19];
      [v29 setText:v32];

      [v29 setTextAlignment:4];
      [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v29 setAdjustsFontForContentSizeCategory:1];
      [v29 setNumberOfLines:0];
      [(PHRecentCallDetailsView *)self addSubview:v29];
      v33 = [v29 leadingAnchor];
      v34 = [(PHRecentCallDetailsView *)self leadingAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];
      [v35 setActive:1];

      v36 = [v29 trailingAnchor];
      v37 = [(PHRecentCallDetailsView *)self trailingAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];
      [v38 setActive:1];

      if (IsAccessibilityCategory)
      {
        v39 = [v29 topAnchor];
        v40 = [(PHRecentCallDetailsView *)self topAnchor];
        v41 = [v39 constraintEqualToAnchor:v40 constant:14.0];
        [v41 setActive:1];
      }

      else
      {
        v39 = [v29 bottomAnchor];
        v40 = [(PHRecentCallDetailsView *)self topAnchor];
        v41 = [v8[69] preferredSubheadline1Font];
        [v41 _scaledValueForValue:40.0];
        v43 = [v39 constraintEqualToAnchor:v40 constant:ceil(v42)];
        [v43 setActive:1];
      }

      if (v21 == v119)
      {
        v44 = &_ss17_bridgeCocoaArrayySayxGyXllF_ptr;
        v45 = +[NSBundle mainBundle];
        v46 = v45;
        v47 = @"CALL_STATUS_ANSWERED_ELSEWHERE";
        goto LABEL_28;
      }

      v44 = &_ss17_bridgeCocoaArrayySayxGyXllF_ptr;
      if (v21 == v116)
      {
        v45 = +[NSBundle mainBundle];
        v46 = v45;
        v47 = @"CALL_STATUS_CANCELLED";
        goto LABEL_28;
      }

      if (v21 == v115)
      {
        v45 = +[NSBundle mainBundle];
        v46 = v45;
        v47 = @"CALL_STATUS_MISSED";
LABEL_28:
        [v45 localizedStringForKey:v47 value:&stru_10010E930 table:@"PHCallHistory"];
        v141 = v140 = 0;
LABEL_29:

        goto LABEL_30;
      }

      if ((v114 & v21) != 0)
      {
        v83 = +[NSBundle mainBundle];
        v84 = v83;
        if (v21 == v113)
        {
          v85 = @"CALL_STATUS_CONNECTED_INCOMING";
        }

        else
        {
          v85 = @"CALL_STATUS_CONNECTED_OUTGOING";
        }

        v141 = [v83 localizedStringForKey:v85 value:&stru_10010E930 table:@"PHCallHistory"];

        v86 = [(PHRecentCallDetailsView *)self stringForTimeInterval:v23];
        v46 = v86;
        if (v26)
        {
          v87 = [(PHRecentCallDetailsView *)self stringForDataUsage:v26];
          v88 = +[NSBundle mainBundle];
          v89 = [v88 localizedStringForKey:@"DURATION_DATA_FORMAT_%@_(%@)" value:&stru_10010E930 table:@"PHCallHistory"];

          v44 = &_ss17_bridgeCocoaArrayySayxGyXllF_ptr;
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
      v48 = [(PHRecentCallDetailsView *)self recentCall];
      v49 = [v48 wasEmergencyCall];

      if (v49)
      {
        v139 = [(PHRecentCallDetailsView *)self emergencyItemLabelText:v16];
      }

      else
      {
        v139 = 0;
      }

      v50 = [(PHRecentCallDetailsView *)self recentCall];
      v51 = [v50 screenSharingType];

      if (v51)
      {
        v52 = [(PHRecentCallDetailsView *)self recentCall];
        v53 = [v52 screenSharingType];

        if ((v117 & ~v53) == 0)
        {
          v54 = [v44[400] mainBundle];
          v55 = v54;
          v56 = @"SHARED_ALLOWED_REMOTE_CONTROL";
LABEL_40:
          v57 = [v54 localizedStringForKey:v56 value:&stru_10010E930 table:@"PHCallHistory"];
          v58 = [(PHRecentCallDetailsView *)self recentCall];
          v59 = [v58 callerNameForDisplay];
          v138 = [NSString localizedStringWithFormat:v57, v59];

LABEL_41:
          goto LABEL_42;
        }

        if ((v53 & 2) != 0)
        {
          v54 = [v44[400] mainBundle];
          v55 = v54;
          v56 = @"REMOTE_CONTROL";
          goto LABEL_40;
        }

        if (v53)
        {
          v55 = [v44[400] mainBundle];
          v138 = [v55 localizedStringForKey:@"SHARED_SCREEN" value:&stru_10010E930 table:@"PHCallHistory"];
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
        v64 = [(PHRecentCallDetailsView *)self delegate];
        v65 = [v64 recentCallTTYType];
      }

      else
      {
        v65 = 0;
      }

      v66 = [PHRecentCallDetailsItemView alloc];
      v67 = [(PHRecentCallDetailsView *)self timeFormatter];
      v68 = [v67 stringFromDate:v143];
      LOBYTE(v112) = v142;
      v69 = [(PHRecentCallDetailsItemView *)v66 initWithFrame:v61 callUUID:v65 ttyType:v68 timeLabel:v141 statusLabel:v140 durationAndDataText:v139 emergencyItemsText:CGRectZero.origin.x verified:y screenSharingTypeText:width, height, v112, v138];

      if (v65)
      {
        [(PHRecentCallDetailsItemView *)v69 setDelegate:self];
      }

      [(PHRecentCallDetailsItemView *)v69 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHRecentCallDetailsView *)self addSubview:v69];
      v70 = [(PHRecentCallDetailsItemView *)v69 leadingAnchor];
      v71 = [(PHRecentCallDetailsView *)self leadingAnchor];
      v72 = [v70 constraintEqualToAnchor:v71];
      [v72 setActive:1];

      v73 = [(PHRecentCallDetailsItemView *)v69 trailingAnchor];
      v74 = [(PHRecentCallDetailsView *)self trailingAnchor];
      v75 = [v73 constraintEqualToAnchor:v74];
      [v75 setActive:1];

      if ([v128 count])
      {
        v76 = [v128 lastObject];
        v77 = [(PHRecentCallDetailsItemView *)v69 topAnchor];
        v78 = [v76 bottomAnchor];
        v79 = [v77 constraintEqualToAnchor:v78 constant:16.0];
        [v79 setActive:1];
      }

      else
      {
        v80 = +[UIFont preferredSubheadline1Font];
        [v80 _scaledValueForValue:10.0];
        v82 = v81;

        v76 = [(PHRecentCallDetailsItemView *)v69 topAnchor];
        v77 = [v29 bottomAnchor];
        v78 = [v76 constraintEqualToAnchor:v77 constant:ceil(v82)];
        [v78 setActive:1];
      }

      v137 |= v142;

      [v128 addObject:v69];
      v3 = v128;
      v10 = v126;
      self = v127;
      v8 = OS_os_log_ptr;
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

  v91 = [v3 lastObject];
  v92 = v91;
  if (v137)
  {
    v93 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v8[69] preferredCaption1Font];
    v95 = v94 = v3;
    [v93 setFont:v95];

    [v93 setTranslatesAutoresizingMaskIntoConstraints:0];
    v96 = +[NSBundle mainBundle];
    v97 = [v96 localizedStringForKey:@"VERIFIED_EXPLANATION" value:&stru_10010E930 table:@"PHRecents"];
    [v93 setText:v97];

    v98 = +[UIColor dynamicSecondaryLabelColor];
    [v93 setTextColor:v98];

    [v93 setAdjustsFontForContentSizeCategory:1];
    [v93 setNumberOfLines:0];
    [(PHRecentCallDetailsView *)self addSubview:v93];
    v99 = [v93 leadingAnchor];
    v100 = [(PHRecentCallDetailsView *)self leadingAnchor];
    v101 = [v99 constraintEqualToAnchor:v100];
    [v101 setActive:1];

    v102 = [v93 trailingAnchor];
    v103 = [(PHRecentCallDetailsView *)self trailingAnchor];
    v104 = [v102 constraintEqualToAnchor:v103];
    [v104 setActive:1];

    v105 = [v93 topAnchor];
    v106 = [v92 lastBaselineAnchor];
    v107 = [v105 constraintEqualToAnchor:v106 constant:18.5];
    [v107 setActive:1];

    v108 = [(PHRecentCallDetailsView *)self bottomAnchor];
    v109 = [v93 bottomAnchor];
    v110 = [v8[69] preferredSubheadline1Font];
    [v110 _scaledValueForValue:14.0];
    v111 = [v108 constraintEqualToAnchor:v109 constant:?];
    [v111 setActive:1];

    v3 = v94;
    goto LABEL_73;
  }

  if (v91)
  {
    v93 = [(PHRecentCallDetailsView *)self bottomAnchor];
    v108 = [v92 bottomAnchor];
    v109 = [v8[69] preferredSubheadline1Font];
    [v109 _scaledValueForValue:14.0];
    v110 = [v93 constraintEqualToAnchor:v108 constant:?];
    [v110 setActive:1];
LABEL_73:
  }

  [(PHRecentCallDetailsView *)self setSummaries:v3];
}

- (void)_replaceSubviews
{
  v3 = [(PHRecentCallDetailsView *)self subviews];
  [v3 makeObjectsPerformSelector:"removeFromSuperview"];

  [(PHRecentCallDetailsView *)self loadSubviews];
}

- (id)stringForTimeInterval:(double)a3
{
  v3 = a3;
  if (a3)
  {
    if (v3 > 0x3B)
    {
      if (v3 > 0xE0F)
      {
        v19 = +[NSBundle mainBundle];
        v20 = v19;
        if (v3 - 7200 >= 0xFFFFFFFFFFFFF1F0)
        {
          v21 = @"%@_HOUR";
        }

        else
        {
          v21 = @"%@_HOURS";
        }

        v22 = [v19 localizedStringForKey:v21 value:&stru_10010E930 table:@"PHCallHistory"];
        v23 = [(PHRecentCallDetailsView *)self numberFormatter];
        v24 = [NSNumber numberWithUnsignedInteger:v3 / 0xE10];
        v25 = [v23 stringFromNumber:v24];
        v8 = [NSString stringWithFormat:v22, v25];

        if (v3 % 0xE10 < 0x3C)
        {
          goto LABEL_22;
        }

        v26 = v3 % 0xE10 / 0x3C;
        v27 = v3 % 0xE10 - 120;
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

        v31 = [v28 localizedStringForKey:v30 value:&stru_10010E930 table:@"PHCallHistory"];
        v32 = [(PHRecentCallDetailsView *)self numberFormatter];
        v33 = [NSNumber numberWithUnsignedInteger:v26];
        v34 = [v32 stringFromNumber:v33];
        v6 = [NSString stringWithFormat:v31, v34];

        v12 = [NSString stringWithFormat:@"%@ %@", v8, v6];
      }

      else
      {
        v13 = a3 / 0x3Cu;
        v14 = +[NSBundle mainBundle];
        v6 = v14;
        if (v3 <= 0x77)
        {
          v15 = @"%@_MINUTE";
        }

        else
        {
          v15 = @"%@_MINUTES";
        }

        v8 = [v14 localizedStringForKey:v15 value:&stru_10010E930 table:@"PHCallHistory"];
        v16 = [(PHRecentCallDetailsView *)self numberFormatter];
        v17 = [NSNumber numberWithUnsignedInteger:v13];
        v18 = [v16 stringFromNumber:v17];
        v12 = [NSString stringWithFormat:v8, v18];
      }
    }

    else
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      if (v3 == 1)
      {
        v7 = @"%@_SECOND";
      }

      else
      {
        v7 = @"%@_SECONDS";
      }

      v8 = [v5 localizedStringForKey:v7 value:&stru_10010E930 table:@"PHCallHistory"];
      v9 = [(PHRecentCallDetailsView *)self numberFormatter];
      v10 = [NSNumber numberWithUnsignedInteger:v3];
      v11 = [v9 stringFromNumber:v10];
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

- (id)stringForDataUsage:(id)a3
{
  v3 = [a3 longLongValue];

  return [NSByteCountFormatter stringFromByteCount:v3 countStyle:0];
}

- (id)emergencyItemLabelText:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:kCHCallOccurrenceEmergencyVideosCountKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 objectForKeyedSubscript:kCHCallOccurrenceEmergencyImagesCountKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 integerValue];
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (!v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Shared %lu videos" value:&stru_10010E930 table:0];
LABEL_10:
    [NSString stringWithFormat:v9, v5, v14];
    v10 = LABEL_14:;

    goto LABEL_15;
  }

LABEL_11:
  if (!v5 && v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Shared %lu photos" value:&stru_10010E930 table:0];
    [NSString stringWithFormat:v9, v7, v14];
    goto LABEL_14;
  }

  v10 = 0;
  if (v5 && v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Shared %lu videos and %lu photos" value:&stru_10010E930 table:0];
    v14 = v7;
    goto LABEL_10;
  }

LABEL_15:
  v11 = sub_100003B9C();
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

- (void)presentConversationForUUID:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentCallDetailsView *)self delegate];
  [v5 presentConversationForUUID:v4];
}

- (PHRecentCallDetailsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end