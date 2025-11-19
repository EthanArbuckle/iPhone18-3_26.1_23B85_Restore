@interface BSUIDailyReadingMetrics
+ (id)attributesKindMapping;
+ (id)supportedAttributes;
+ (unint64_t)defaultKindForAttribute:(unsigned __int16)a3;
+ (void)registerAttributes;
- (BOOL)isAX;
- (BSUIDailyReadingMetrics)initWithNode:(id)a3 attributes:(id)a4 context:(id)a5;
- (id)description;
- (void)configureIconMode:(BOOL)a3;
- (void)defaultsMissingMetrics;
- (void)parseDailyReadingData:(id)a3;
- (void)updateWithConfiguration:(id)a3 context:(id)a4;
@end

@implementation BSUIDailyReadingMetrics

+ (void)registerAttributes
{
  BSUIAttributeDailyReadingData = [TUIAttributeRegistry registerCustomAttributeWithName:@"daily-reading-data"];
  BSUIAttributeIconMode = [TUIAttributeRegistry registerCustomAttributeWithName:@"icon-mode"];
  BSUIAttributeDetailText = [TUIAttributeRegistry registerCustomAttributeWithName:@"detail-text"];
  BSUIAttributeTimeDisplayedText = [TUIAttributeRegistry registerCustomAttributeWithName:@"time-displayed-text"];
  BSUIAttributeReadingTime = [TUIAttributeRegistry registerCustomAttributeWithName:@"current-reading-time"];
  BSUIAttributeReadingGoal = [TUIAttributeRegistry registerCustomAttributeWithName:@"goal-reading-time"];
  BSUIAttributeProgressToday = [TUIAttributeRegistry registerCustomAttributeWithName:@"progress-today"];
  BSUIAttributeControlColor = [TUIAttributeRegistry registerCustomAttributeWithName:@"control-color"];
  BSUIAttributeProgressColor = [TUIAttributeRegistry registerCustomAttributeWithName:@"progress-color"];
  BSUIAttributeTextColor = [TUIAttributeRegistry registerCustomAttributeWithName:@"text-color"];
  BSUIAttributeNightMode = [TUIAttributeRegistry registerCustomAttributeWithName:@"night-mode"];
  BSUIAttributeRightToLeft = [TUIAttributeRegistry registerCustomAttributeWithName:@"right-to-left"];
}

+ (id)supportedAttributes
{
  if (qword_3CA730 != -1)
  {
    sub_2BD574();
  }

  v3 = qword_3CA728;

  return v3;
}

+ (id)attributesKindMapping
{
  if (qword_3CA740 != -1)
  {
    sub_2BD588();
  }

  v3 = qword_3CA738;

  return v3;
}

+ (unint64_t)defaultKindForAttribute:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [a1 attributesKindMapping];
  if (v3)
  {
    v5 = [TUIAttributeRegistry nameForAttribute:v3];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BSUIDailyReadingMetrics)initWithNode:(id)a3 attributes:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v86.receiver = self;
  v86.super_class = BSUIDailyReadingMetrics;
  v10 = [(BSUIDailyReadingMetrics *)&v86 init];
  if (v10)
  {
    objc_opt_class();
    var0 = a3.var0;
    v12 = [v8 stringForAttribute:137 node:a3.var0];
    v83 = BUDynamicCast();

    [v8 floatForAttribute:BSUIAttributeReadingGoal node:var0];
    v70 = fmax(v13, 0.0);
    [v8 floatForAttribute:BSUIAttributeReadingTime node:var0];
    v75 = fmax(v14, 0.0);
    [v8 floatForAttribute:BSUIAttributeProgressToday node:var0];
    v16 = fmax(v15, 0.0);
    v17 = [v8 BOOLForAttribute:BSUIAttributeIconMode node:var0];
    v18 = [v8 stringForAttribute:206 node:var0];
    v19 = [v8 stringForAttribute:BSUIAttributeDetailText node:var0];
    v64 = [v8 stringForAttribute:BSUIAttributeTimeDisplayedText node:var0];
    v66 = [v8 colorForAttribute:BSUIAttributeControlColor node:var0];
    v68 = [v8 colorForAttribute:BSUIAttributeProgressColor node:var0];
    v73 = [v8 colorForAttribute:30 node:var0];
    v77 = [v8 colorForAttribute:BSUIAttributeTextColor node:var0];
    v20 = [v8 fontSpecForNode:var0];
    v21 = 8;
    if (v17)
    {
      v21 = 3;
    }

    v81 = v20;
    v82 = v21;
    v22 = [v9 environment];
    v80 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 contentSizeCategory]);

    v23 = [v9 environment];
    v78 = [v23 style] == &dword_0 + 2;

    v24 = [v9 environment];
    v74 = [v24 layoutDirection] == &dword_0 + 2;

    v25 = [v9 environment];
    [v25 contentsScale];
    v27 = v26;

    v72 = [v8 stringForAttribute:142 node:var0];
    [v8 floatForAttribute:143 node:var0];
    v29 = v28;
    v30 = [v8 stringForAttribute:144 node:var0];
    v79 = [TUIBox triggerStateFromString:v30];

    v31 = [v9 environment];
    v85 = [v31 useFontFallback];

    name = v10->_name;
    v10->_name = v83;
    v84 = v83;

    v33 = [NSNumber numberWithInteger:v70];
    readingGoalSeconds = v10->_readingGoalSeconds;
    v10->_readingGoalSeconds = v33;

    v35 = [NSNumber numberWithInteger:v75];
    actualReadingTimeSeconds = v10->_actualReadingTimeSeconds;
    v10->_actualReadingTimeSeconds = v35;

    v10->_progressToday = v16;
    v10->_iconMode = v17;
    title = v10->_title;
    v10->_title = v18;
    v76 = v18;

    detailText = v10->_detailText;
    v10->_detailText = v19;
    v71 = v19;

    timeDisplayedText = v10->_timeDisplayedText;
    v10->_timeDisplayedText = v64;
    v65 = v64;

    controlColor = v10->_controlColor;
    v10->_controlColor = v66;
    v67 = v66;

    progressColor = v10->_progressColor;
    v10->_progressColor = v68;
    v69 = v68;

    backgroundColor = v10->_backgroundColor;
    v10->_backgroundColor = v73;
    v43 = v73;

    textColor = v10->_textColor;
    v10->_textColor = v77;
    v45 = v77;

    timeFontSpec = v10->_timeFontSpec;
    v10->_timeFontSpec = v81;
    v47 = v81;

    v48 = [NSNumber numberWithInteger:v82];
    progressBarWidth = v10->_progressBarWidth;
    v10->_progressBarWidth = v48;

    axValue = v10->_axValue;
    v10->_axValue = v80;
    v51 = v80;

    v52 = [NSNumber numberWithBool:v78];
    nightMode = v10->_nightMode;
    v10->_nightMode = v52;

    v54 = [NSNumber numberWithBool:v74];
    rightToLeft = v10->_rightToLeft;
    v10->_rightToLeft = v54;

    v56 = [NSNumber numberWithDouble:v27];
    contentsScale = v10->_contentsScale;
    v10->_contentsScale = v56;

    triggerName = v10->_triggerName;
    v10->_triggerName = v72;
    v59 = v72;

    v60 = [NSNumber numberWithDouble:v29];
    triggerDelay = v10->_triggerDelay;
    v10->_triggerDelay = v60;

    v10->_clockTicks = 0;
    timeSeparator = v10->_timeSeparator;
    v10->_targetTriggerState = v79;
    v10->_timeSeparator = 0;

    v10->_useFontFallback = v85;
    [(BSUIDailyReadingMetrics *)v10 defaultsMissingMetrics];
  }

  return v10;
}

- (void)updateWithConfiguration:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = [v5 dataForKey:@"daily-reading-data"];
  v35 = BUDynamicCast();

  v7 = [v5 dataForKey:@"current-reading-time"];
  objc_opt_class();
  objc_opt_class();
  v8 = BUDynamicCast();
  v9 = [v8 value];
  v30 = v7;
  v10 = BUDynamicCast();

  objc_opt_class();
  v11 = [v5 dataForKey:@"goal-reading-time"];
  v29 = BUDynamicCast();

  v12 = v10;
  objc_opt_class();
  v13 = [v5 dataForKey:@"progress-today"];
  v34 = BUDynamicCast();

  v28 = [v5 BOOLForKey:@"icon-mode"];
  v33 = [v5 colorForKey:@"control-color"];
  v32 = [v5 colorForKey:@"progress-color"];
  v14 = [v5 colorForKey:@"background-color"];
  v15 = [v5 colorForKey:@"text-color"];
  objc_opt_class();
  v16 = [v5 dataForKey:@"arc-width"];
  v31 = BUDynamicCast();

  objc_opt_class();
  v17 = [v5 dataForKey:@"progress-bar-width"];
  v18 = BUDynamicCast();

  objc_opt_class();
  v19 = [v5 dataForKey:@"opacity"];
  v20 = BUDynamicCast();
  v21 = v20;
  v22 = &off_39B530;
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  v24 = [v5 fontSpecForKey:@"time-text-style"];
  v25 = [v5 BOOLForKey:@"clock-ticks"];
  v26 = [v5 stringForKey:@"time-separator"];

  if (v35)
  {
    [(BSUIDailyReadingMetrics *)self parseDailyReadingData:v35];
  }

  if (v29)
  {
    [(BSUIDailyReadingMetrics *)self setReadingGoalSeconds:v29];
  }

  if (v12)
  {
    [(BSUIDailyReadingMetrics *)self setActualReadingTimeSeconds:v12];
  }

  if (v34)
  {
    [v34 floatValue];
    [(BSUIDailyReadingMetrics *)self setProgressToday:v27];
  }

  if (v28)
  {
    [(BSUIDailyReadingMetrics *)self configureIconMode:1];
  }

  if (v33)
  {
    [(BSUIDailyReadingMetrics *)self setControlColor:?];
  }

  if (v32)
  {
    [(BSUIDailyReadingMetrics *)self setProgressColor:?];
  }

  if (v14)
  {
    [(BSUIDailyReadingMetrics *)self setBackgroundColor:v14];
  }

  if (v15)
  {
    [(BSUIDailyReadingMetrics *)self setTextColor:v15];
  }

  [(BSUIDailyReadingMetrics *)self setArcWidth:v31];
  if (v18)
  {
    [(BSUIDailyReadingMetrics *)self setProgressBarWidth:v18];
  }

  if (v24)
  {
    [(BSUIDailyReadingMetrics *)self setTimeFontSpec:v24];
  }

  [(BSUIDailyReadingMetrics *)self setOpacity:v23];
  [(BSUIDailyReadingMetrics *)self setClockTicks:v25];
  [(BSUIDailyReadingMetrics *)self setTimeSeparator:v26];
}

- (void)defaultsMissingMetrics
{
  if (!self->_controlColor)
  {
    if ([(NSNumber *)self->_nightMode BOOLValue])
    {
      [UIColor colorWithRed:0.0980392157 green:0.0980392157 blue:0.0980392157 alpha:1.0];
    }

    else
    {
      [UIColor colorWithWhite:0.933333333 alpha:1.0];
    }
    v3 = ;
    controlColor = self->_controlColor;
    self->_controlColor = v3;
  }

  if (!self->_progressColor)
  {
    v5 = [UIColor colorWithRed:0.0 green:0.615686275 blue:0.862745098 alpha:1.0];
    progressColor = self->_progressColor;
    self->_progressColor = v5;
  }

  if (!self->_textColor)
  {
    if ([(NSNumber *)self->_nightMode BOOLValue])
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v7 = ;
    textColor = self->_textColor;
    self->_textColor = v7;
  }

  if (!self->_backgroundColor)
  {
    v9 = +[UIColor clearColor];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v9;
  }

  if (!self->_detailFontSpec)
  {
    [(NSNumber *)self->_actualReadingTimeSeconds floatValue];
    v12 = v11;
    [(NSNumber *)self->_readingGoalSeconds floatValue];
    if (v12 >= v13)
    {
      v14 = @"SFProText-Semibold";
    }

    else
    {
      v14 = @"SFProText-Regular";
    }

    self->_detailFontSpec = [TUIFontSpec fontSpecWithPostscriptName:v14 size:15.0];

    _objc_release_x1();
  }
}

- (BOOL)isAX
{
  v2 = [(BSUIDailyReadingMetrics *)self axValue];
  v3 = [v2 integerValue] > 7;

  return v3;
}

- (void)parseDailyReadingData:(id)a3
{
  v12 = a3;
  objc_opt_class();
  v4 = [v12 objectForKeyedSubscript:@"dynamicProgressToday"];
  v5 = BUDynamicCast();

  if (v5)
  {
    objc_storeStrong(&self->_lastVisibleProgressToday, v5);
  }

  objc_opt_class();
  v6 = [v12 objectForKeyedSubscript:@"streakDayGoal"];
  v7 = BUDynamicCast();

  if (v7)
  {
    objc_storeStrong(&self->_dynamicStreakDayGoal, v7);
  }

  objc_opt_class();
  v8 = [v12 objectForKeyedSubscript:@"timeReadToday"];
  v9 = BUDynamicCast();

  if (v9)
  {
    objc_storeStrong(&self->_dynamicTimeReadToday, v9);
  }

  objc_opt_class();
  v10 = [v12 objectForKeyedSubscript:@"completedReadingGoal"];
  v11 = BUDynamicCast();

  if (v11)
  {
    objc_storeStrong(&self->_dynamicCompletedReadingGoal, v11);
  }
}

- (void)configureIconMode:(BOOL)a3
{
  self->_iconMode = a3;
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 8;
  }

  self->_progressBarWidth = [NSNumber numberWithInteger:v4];

  _objc_release_x1();
}

- (id)description
{
  v3 = objc_opt_class();
  v40 = NSStringFromClass(v3);
  v41 = [(BSUIDailyReadingMetrics *)self name];
  v38 = [NSNumber numberWithBool:[(BSUIDailyReadingMetrics *)self iconMode]];
  v39 = [(BSUIDailyReadingMetrics *)self readingGoalSeconds];
  v18 = [(BSUIDailyReadingMetrics *)self actualReadingTimeSeconds];
  [(BSUIDailyReadingMetrics *)self progressToday];
  v5 = v4;
  v37 = [(BSUIDailyReadingMetrics *)self lastVisibleProgressToday];
  v23 = [(BSUIDailyReadingMetrics *)self lastVisibleProgressToday];
  v36 = [v23 value];
  v35 = [(BSUIDailyReadingMetrics *)self dynamicStreakDayGoal];
  v22 = [(BSUIDailyReadingMetrics *)self dynamicStreakDayGoal];
  v32 = [v22 value];
  v34 = [(BSUIDailyReadingMetrics *)self dynamicTimeReadToday];
  v21 = [(BSUIDailyReadingMetrics *)self dynamicTimeReadToday];
  v17 = [v21 value];
  v33 = [(BSUIDailyReadingMetrics *)self dynamicCompletedReadingGoal];
  v19 = [(BSUIDailyReadingMetrics *)self dynamicCompletedReadingGoal];
  v31 = [v19 value];
  v16 = [(BSUIDailyReadingMetrics *)self title];
  v30 = [(BSUIDailyReadingMetrics *)self detailText];
  v29 = [(BSUIDailyReadingMetrics *)self timeDisplayedText];
  v28 = [(BSUIDailyReadingMetrics *)self controlColor];
  v27 = [(BSUIDailyReadingMetrics *)self progressColor];
  v26 = [(BSUIDailyReadingMetrics *)self backgroundColor];
  v25 = [(BSUIDailyReadingMetrics *)self textColor];
  v24 = [(BSUIDailyReadingMetrics *)self timeFontSpec];
  v15 = [(BSUIDailyReadingMetrics *)self arcWidth];
  v14 = [(BSUIDailyReadingMetrics *)self progressBarWidth];
  v6 = [(BSUIDailyReadingMetrics *)self axValue];
  v7 = [(BSUIDailyReadingMetrics *)self nightMode];
  v8 = [(BSUIDailyReadingMetrics *)self rightToLeft];
  v9 = [(BSUIDailyReadingMetrics *)self triggerName];
  v10 = [(BSUIDailyReadingMetrics *)self triggerDelay];
  v11 = [NSNumber numberWithUnsignedInteger:[(BSUIDailyReadingMetrics *)self targetTriggerState]];
  v12 = [(BSUIDailyReadingMetrics *)self opacity];
  v20 = [NSString stringWithFormat:@"<%@(%p) n=%@ iconMode=%@ readingGoalSeconds=%@ actualReadingTimeSeconds=%@ progressToday=%.1f lastVisibleProgressToday=%@ [%@] dynamicStreakDayGoal=%@ [%@] dynamicTimeReadToday=%@ [%@] dynamicCompletedReadingGoal=%@ [%@] title=%@ detailText=%@ timeDisplayedText=%@ controlColor=%@ progressColor=%@ backgroundColor=%@ textColor=%@ timeFontSpec=%@ arcWidth=%@ progressBarWidth=%@ axValue=%@ nightMode=%@ rightToLeft=%@ triggerName:%@ triggerDelay:%@ triggerState: %@ opacity: %@>", v40, self, v41, v38, v39, v18, v5, v37, v36, v35, v32, v34, v17, v33, v31, v16, v30, v29, v28, v27, v26, v25, v24, v15, v14, v6, v7, v8, v9, v10, v11, v12];

  return v20;
}

@end