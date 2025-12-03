@interface PHRecentsHeaderView
+ (id)headerViewWithFrame:(CGRect)frame recentCall:(id)call;
- (CGSize)intrinsicContentSize;
- (PHRecentsHeaderView)init;
- (PHRecentsHeaderView)initWithFrame:(CGRect)frame;
- (id)_initWithFrame:(CGRect)frame recentCall:(id)call;
- (id)calendar;
- (id)dateFormatter;
- (id)newSummaryViewForRecentCall:(id)call occurrenceDate:(id)date status:(unsigned int)status duration:(double)duration type:(unsigned int)type dataUsage:(int64_t)usage;
- (id)timeFormatter;
- (void)_buildView;
- (void)addNotificationObservers;
- (void)dealloc;
- (void)formattersDidChange:(id)change;
@end

@implementation PHRecentsHeaderView

- (PHRecentsHeaderView)initWithFrame:(CGRect)frame
{
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Please don't call [PHRecentsPersonHeaderView initWithFrame:] instead call +[PHRecentsPersonHeaderView headerViewWithFrame:recentCall:]", frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);;
  NSLog(@"** TUAssertion failure: %@", v5);

  if (_TUAssertShouldCrashApplication())
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PHRecentsHeaderView.m" lineNumber:66 description:@"Please don't call -[PHRecentsPersonHeaderView initWithFrame:]; instead call +[PHRecentsPersonHeaderView headerViewWithFrame:recentCall:]"];
  }

  return 0;
}

- (PHRecentsHeaderView)init
{
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Please don't call [PHRecentsPersonHeaderView init] instead call +[PHRecentsPersonHeaderView headerViewWithFrame:recentCall:]");;
  NSLog(@"** TUAssertion failure: %@", v4);

  if (_TUAssertShouldCrashApplication())
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHRecentsHeaderView.m" lineNumber:71 description:@"Please don't call -[PHRecentsPersonHeaderView init]; instead call +[PHRecentsPersonHeaderView headerViewWithFrame:recentCall:]"];
  }

  return 0;
}

- (id)_initWithFrame:(CGRect)frame recentCall:(id)call
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  callCopy = call;
  v14.receiver = self;
  v14.super_class = PHRecentsHeaderView;
  height = [(PHRecentsHeaderView *)&v14 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_recentCall, call);
    [(PHRecentsHeaderView *)v12 addNotificationObservers];
    [(PHRecentsHeaderView *)v12 _buildView];
  }

  return v12;
}

- (void)addNotificationObservers
{
  TUAddLocalNSObserver();
  if (!qword_100126A28)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    v3 = +[NSOperationQueue mainQueue];
    v4 = [v2 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v3 usingBlock:&stru_10010B598];
    v5 = qword_100126A28;
    qword_100126A28 = v4;
  }

  if (!qword_100126A30)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    v6 = +[NSOperationQueue mainQueue];
    v7 = [v9 addObserverForName:NSSystemTimeZoneDidChangeNotification object:0 queue:v6 usingBlock:&stru_10010B598];
    v8 = qword_100126A30;
    qword_100126A30 = v7;
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHRecentsHeaderView;
  [(PHRecentsHeaderView *)&v4 dealloc];
}

+ (id)headerViewWithFrame:(CGRect)frame recentCall:(id)call
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  callCopy = call;
  v11 = callCopy;
  if (callCopy)
  {
    callType = [callCopy callType];
    if ((kCHCallTypeTelephony & callType) != 0)
    {
      v13 = &off_1001095C0;
LABEL_9:
      v18 = [objc_alloc(*v13) _initWithFrame:v11 recentCall:{x, y, width, height}];
      goto LABEL_11;
    }

    callType2 = [v11 callType];
    if (callType2 == kCHCallTypeFaceTimeVideo || (v17 = [v11 callType], v17 == kCHCallTypeFaceTimeAudio))
    {
      v13 = off_1001095B0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = [NSString stringWithFormat:@"Initializing PHRecentsPersonHeaderView with nil recentCall not allowed"];
    NSLog(@"** TUAssertion failure: %@", v14);

    if (_TUAssertShouldCrashApplication())
    {
      v15 = +[NSAssertionHandler currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PHRecentsHeaderView.m" lineNumber:107 description:@"Initializing PHRecentsPersonHeaderView with nil recentCall not allowed"];
    }
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (void)_buildView
{
  v117 = [UIFont phPreferredFontForTextStyle:UIFontDescriptorTextStyleSubheadline];
  v133 = [UIFont phPreferredFontForTextStyle:UIFontDescriptorTextStyleCaption1];
  v3 = +[NSMutableArray array];
  v134 = +[NSMutableArray array];
  if ([UIApp userInterfaceStyle] == 1)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }

  v127 = v126 = v3;
  v4 = kCHCallOccurrenceDateKey;
  v5 = [NSSortDescriptor sortDescriptorWithKey:kCHCallOccurrenceDateKey ascending:0];
  headerViewShowsAllRecentCalls = [UIApp headerViewShowsAllRecentCalls];
  recentCall = [(PHRecentsHeaderView *)self recentCall];
  callOccurrences = [recentCall callOccurrences];
  v9 = callOccurrences;
  v116 = v5;
  if (headerViewShowsAllRecentCalls)
  {
    v147 = v5;
    v10 = [NSArray arrayWithObjects:&v147 count:1];
    v11 = [v9 sortedArrayUsingDescriptors:v10];
  }

  else
  {
    v12 = [callOccurrences count];

    recentCall2 = [(PHRecentsHeaderView *)self recentCall];
    callOccurrences2 = [recentCall2 callOccurrences];
    v146 = v5;
    v15 = [NSArray arrayWithObjects:&v146 count:1];
    recentCall = [callOccurrences2 sortedArrayUsingDescriptors:v15];

    headerViewNumberOfCallsToShow = [UIApp headerViewNumberOfCallsToShow];
    if (v12 >= headerViewNumberOfCallsToShow)
    {
      v17 = headerViewNumberOfCallsToShow;
    }

    else
    {
      v17 = v12;
    }

    v11 = [recentCall subarrayWithRange:{0, v17}];
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = v11;
  v132 = [obj countByEnumeratingWithState:&v137 objects:v145 count:16];
  if (v132)
  {
    v124 = 0;
    v18 = *v138;
    v19 = kCHCallOccurrenceCallTypeKey;
    v131 = kCHCallTypeUnknown;
    v120 = kCHCallOccurrenceCallStatusKey;
    v119 = kCHCallOccurrenceDurationKey;
    v20 = 0.0;
    v118 = kCHCallOccurrenceDataUsageKey;
    v122 = *v138;
    v123 = v4;
    v121 = kCHCallOccurrenceCallTypeKey;
    do
    {
      for (i = 0; i != v132; i = i + 1)
      {
        if (*v138 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v137 + 1) + 8 * i);
        v23 = [v22 objectForKeyedSubscript:v4];
        v24 = [v22 objectForKeyedSubscript:v19];
        intValue = [v24 intValue];

        v135 = intValue;
        if (v23)
        {
          v26 = intValue == v131;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          v27 = [v22 objectForKeyedSubscript:v120];
          intValue2 = [v27 intValue];

          v28 = [v22 objectForKeyedSubscript:v119];
          [v28 doubleValue];
          v30 = v29;

          v31 = [v22 objectForKeyedSubscript:v118];
          integerValue = [v31 integerValue];

          calendar = [(PHRecentsHeaderView *)self calendar];
          v33 = [calendar components:28 fromDate:v23];

          v136 = v23;
          v130 = v33;
          if (!v33 || v124 && ([v33 isEqual:v124] & 1) != 0)
          {
            v34 = &_ss17_bridgeCocoaArrayySayxGyXllF_ptr;
            v35 = &_ss17_bridgeCocoaArrayySayxGyXllF_ptr;
            v36 = v126;
          }

          else
          {
            v37 = v33;

            v38 = objc_alloc_init(UILabel);
            [v38 setFont:v117];
            [v38 setTextColor:v127];
            dateFormatter = [(PHRecentsHeaderView *)self dateFormatter];
            v40 = [dateFormatter stringFromDate:v23];
            [v38 setText:v40];

            [v38 setTextAlignment:4];
            [v38 intrinsicContentSize];
            v42 = v41;
            [(PHRecentsHeaderView *)self addSubview:v38];
            [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
            LODWORD(v43) = 1148846080;
            [v38 setContentCompressionResistancePriority:0 forAxis:v43];
            LODWORD(v44) = 1148846080;
            [v38 setContentCompressionResistancePriority:1 forAxis:v44];
            LODWORD(v45) = 1148846080;
            [v38 setContentHuggingPriority:0 forAxis:v45];
            LODWORD(v46) = 1148846080;
            [v38 setContentHuggingPriority:1 forAxis:v46];
            v143 = @"Header";
            v144 = v38;
            v47 = [NSDictionary dictionaryWithObjects:&v144 forKeys:&v143 count:1];
            v48 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-0@1000-[Header]-0@1000-|", 0, 0, v47);
            [(PHRecentsHeaderView *)self addConstraints:v48];

            v36 = v126;
            if ([v126 count])
            {
              v49 = [v134 objectAtIndexedSubscript:{objc_msgSend(v134, "count") - 1}];
              [v133 _bodyLeading];
              LODWORD(v51) = 1148846080;
              v52 = [NSLayoutConstraint constraintWithItem:v38 attribute:3 relatedBy:0 toItem:v49 attribute:11 multiplier:1.0 constant:v50 * 0.75 priority:v51];
              [(PHRecentsHeaderView *)self addConstraint:v52];

              [v133 _bodyLeading];
              v54 = v53;
              [v38 _baselineOffsetFromBottom];
              v56 = -(v55 - v54 * 0.75);
            }

            else
            {
              [v117 ascender];
              v58 = v57;
              [v117 capHeight];
              LODWORD(v60) = 1148846080;
              v61 = [NSLayoutConstraint constraintWithItem:v38 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v59 - v58 + 16.0 priority:v60];
              [(PHRecentsHeaderView *)self addConstraint:v61];

              [v117 ascender];
              v63 = v62;
              [v117 capHeight];
              v56 = v64 - v63 + 16.0;
            }

            v35 = &_ss17_bridgeCocoaArrayySayxGyXllF_ptr;
            v20 = v20 + v42 + v56;
            [v126 addObject:v38];
            v65 = +[NSNull null];
            [v134 addObject:v65];

            v124 = v37;
            v34 = &_ss17_bridgeCocoaArrayySayxGyXllF_ptr;
          }

          v66 = objc_alloc_init(UILabel);
          [v66 setFont:v133];
          [v66 setTextColor:v127];
          timeFormatter = [(PHRecentsHeaderView *)self timeFormatter];
          v68 = [timeFormatter stringFromDate:v136];
          [v66 setText:v68];

          [(PHRecentsHeaderView *)self addSubview:v66];
          [v66 setTextAlignment:4];
          [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
          LODWORD(v69) = 1144750080;
          [v66 setContentCompressionResistancePriority:0 forAxis:v69];
          LODWORD(v70) = 1148846080;
          [v66 setContentCompressionResistancePriority:1 forAxis:v70];
          LODWORD(v71) = 1148846080;
          [v66 setContentHuggingPriority:1 forAxis:v71];
          v72 = v34[407];
          v73 = [v36 objectAtIndexedSubscript:{objc_msgSend(v36, "count") - 1}];
          [v133 _bodyLeading];
          v75 = v74 * 0.75;
          v76 = [v134 objectAtIndexedSubscript:{objc_msgSend(v134, "count") - 1}];
          [v35[329] null];
          v77 = v35;
          v79 = v78 = v34;
          if (v76 == v79)
          {
            *&v80 = 1000.0;
          }

          else
          {
            *&v80 = 750.0;
          }

          v81 = [v72 constraintWithItem:v66 attribute:3 relatedBy:0 toItem:v73 attribute:11 multiplier:1.0 constant:v75 priority:v80];
          [(PHRecentsHeaderView *)self addConstraint:v81];

          v82 = [v134 objectAtIndexedSubscript:{objc_msgSend(v134, "count") - 1}];
          null = [v77[329] null];

          if (v82 == null)
          {
            [v133 _bodyLeading];
            v97 = v96;
            v92 = [v126 objectAtIndexedSubscript:{objc_msgSend(v126, "count") - 1}];
            [v92 _baselineOffsetFromBottom];
            v95 = -(v98 - v97 * 0.75);
          }

          else
          {
            v84 = v78[407];
            v85 = [v134 objectAtIndexedSubscript:{objc_msgSend(v134, "count") - 1}];
            bottommostLabel = [v85 bottommostLabel];
            [v133 _bodyLeading];
            LODWORD(v88) = 1148846080;
            v89 = [v84 constraintWithItem:v66 attribute:3 relatedBy:0 toItem:bottommostLabel attribute:11 multiplier:1.0 constant:v87 * 0.75 priority:v88];
            [(PHRecentsHeaderView *)self addConstraint:v89];

            [v133 _bodyLeading];
            v91 = v90;
            v92 = [v134 objectAtIndexedSubscript:{objc_msgSend(v134, "count") - 1}];
            bottommostLabel2 = [v92 bottommostLabel];
            [bottommostLabel2 _baselineOffsetFromBottom];
            v95 = -(v94 - v91 * 0.75);
          }

          v4 = v123;

          recentCall3 = [(PHRecentsHeaderView *)self recentCall];
          v23 = v136;
          v100 = [(PHRecentsHeaderView *)self newSummaryViewForRecentCall:recentCall3 occurrenceDate:v136 status:intValue2 duration:v135 type:integerValue dataUsage:v30];

          [(PHRecentsHeaderView *)self addSubview:v100];
          [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
          LODWORD(v101) = 1144750080;
          [v100 setContentCompressionResistancePriority:0 forAxis:v101];
          LODWORD(v102) = 1148846080;
          [v100 setContentCompressionResistancePriority:1 forAxis:v102];
          LODWORD(v103) = 1148846080;
          [v100 setContentHuggingPriority:0 forAxis:v103];
          LODWORD(v104) = 1148846080;
          [v100 setContentHuggingPriority:1 forAxis:v104];
          v105 = v78[407];
          v141[0] = @"Time";
          v141[1] = @"Summary";
          v142[0] = v66;
          v142[1] = v100;
          v106 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:2];
          v107 = [v105 constraintsWithVisualFormat:@"|-0@1000-[Time(==90@1000)]-3@1000-[Summary]-15@1000-|" options:0 metrics:0 views:v106];
          [(PHRecentsHeaderView *)self addConstraints:v107];

          v108 = v78[407];
          topmostLabel = [v100 topmostLabel];
          LODWORD(v110) = 1148846080;
          v111 = [v108 constraintWithItem:topmostLabel attribute:11 relatedBy:0 toItem:v66 attribute:11 multiplier:1.0 constant:0.0 priority:v110];
          [(PHRecentsHeaderView *)self addConstraint:v111];

          [v100 intrinsicContentSize];
          v20 = v20 + v95 + v112;
          [v134 addObject:v100];

          v19 = v121;
          v18 = v122;
        }
      }

      v132 = [obj countByEnumeratingWithState:&v137 objects:v145 count:16];
    }

    while (v132);
  }

  else
  {
    v124 = 0;
    v20 = 0.0;
  }

  if ([v134 count])
  {
    v113 = [v134 objectAtIndexedSubscript:{objc_msgSend(v134, "count") - 1}];
    bottommostLabel3 = [v113 bottommostLabel];
    [bottommostLabel3 _baselineOffsetFromBottom];
    v20 = v20 + 16.0 - v115;
  }

  [(PHRecentsHeaderView *)self setIntrinsicContentHeight:v20];
  [(PHRecentsHeaderView *)self setDateLabels:v126];
  [(PHRecentsHeaderView *)self setSummaries:v134];
}

- (CGSize)intrinsicContentSize
{
  [(PHRecentsHeaderView *)self intrinsicContentHeight];
  v3 = v2;
  v4 = 285.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (id)calendar
{
  v2 = qword_100126A38;
  if (!qword_100126A38)
  {
    v3 = +[NSCalendar currentCalendar];
    v4 = qword_100126A38;
    qword_100126A38 = v3;

    v2 = qword_100126A38;
  }

  return v2;
}

- (id)dateFormatter
{
  v2 = qword_100126A40;
  if (!qword_100126A40)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    v4 = qword_100126A40;
    qword_100126A40 = v3;

    [qword_100126A40 setDateStyle:3];
    [qword_100126A40 setDoesRelativeDateFormatting:1];
    [qword_100126A40 setTimeStyle:0];
    v2 = qword_100126A40;
  }

  return v2;
}

- (id)timeFormatter
{
  v2 = qword_100126A48;
  if (!qword_100126A48)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    v4 = qword_100126A48;
    qword_100126A48 = v3;

    [qword_100126A48 setDateStyle:0];
    [qword_100126A48 setTimeStyle:1];
    v2 = qword_100126A48;
  }

  return v2;
}

- (void)formattersDidChange:(id)change
{
  subviews = [(PHRecentsHeaderView *)self subviews];
  [subviews makeObjectsPerformSelector:"removeFromSuperview"];

  [(PHRecentsHeaderView *)self _buildView];
}

- (id)newSummaryViewForRecentCall:(id)call occurrenceDate:(id)date status:(unsigned int)status duration:(double)duration type:(unsigned int)type dataUsage:(int64_t)usage
{
  duration = [NSString stringWithFormat:@"Subclasses of PHRecentsPersonHeaderView must implement _createSummaryViewAtIndex:size:", date, *&status, *&type, usage, duration];
  NSLog(@"** TUAssertion failure: %@", duration);

  if (_TUAssertShouldCrashApplication())
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PHRecentsHeaderView.m" lineNumber:342 description:@"Subclasses of PHRecentsPersonHeaderView must implement _createSummaryViewAtIndex:size:"];
  }

  return 0;
}

@end