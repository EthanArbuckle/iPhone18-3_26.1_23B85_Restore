@interface BSUIDailyReadingMetrics
+ (id)attributesKindMapping;
+ (id)supportedAttributes;
+ (unint64_t)defaultKindForAttribute:(unsigned __int16)attribute;
+ (void)registerAttributes;
- (BOOL)isAX;
- (BSUIDailyReadingMetrics)initWithNode:(id)node attributes:(id)attributes context:(id)context;
- (id)description;
- (void)configureIconMode:(BOOL)mode;
- (void)defaultsMissingMetrics;
- (void)parseDailyReadingData:(id)data;
- (void)updateWithConfiguration:(id)configuration context:(id)context;
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

+ (unint64_t)defaultKindForAttribute:(unsigned __int16)attribute
{
  attributeCopy = attribute;
  attributesKindMapping = [self attributesKindMapping];
  if (attributeCopy)
  {
    v5 = [TUIAttributeRegistry nameForAttribute:attributeCopy];
    v6 = [attributesKindMapping objectForKeyedSubscript:v5];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (BSUIDailyReadingMetrics)initWithNode:(id)node attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  v86.receiver = self;
  v86.super_class = BSUIDailyReadingMetrics;
  v10 = [(BSUIDailyReadingMetrics *)&v86 init];
  if (v10)
  {
    objc_opt_class();
    var0 = node.var0;
    v12 = [attributesCopy stringForAttribute:137 node:node.var0];
    v83 = BUDynamicCast();

    [attributesCopy floatForAttribute:BSUIAttributeReadingGoal node:var0];
    v70 = fmax(v13, 0.0);
    [attributesCopy floatForAttribute:BSUIAttributeReadingTime node:var0];
    v75 = fmax(v14, 0.0);
    [attributesCopy floatForAttribute:BSUIAttributeProgressToday node:var0];
    v16 = fmax(v15, 0.0);
    v17 = [attributesCopy BOOLForAttribute:BSUIAttributeIconMode node:var0];
    v18 = [attributesCopy stringForAttribute:206 node:var0];
    v19 = [attributesCopy stringForAttribute:BSUIAttributeDetailText node:var0];
    v64 = [attributesCopy stringForAttribute:BSUIAttributeTimeDisplayedText node:var0];
    v66 = [attributesCopy colorForAttribute:BSUIAttributeControlColor node:var0];
    v68 = [attributesCopy colorForAttribute:BSUIAttributeProgressColor node:var0];
    v73 = [attributesCopy colorForAttribute:30 node:var0];
    v77 = [attributesCopy colorForAttribute:BSUIAttributeTextColor node:var0];
    v20 = [attributesCopy fontSpecForNode:var0];
    v21 = 8;
    if (v17)
    {
      v21 = 3;
    }

    v81 = v20;
    v82 = v21;
    environment = [contextCopy environment];
    v80 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [environment contentSizeCategory]);

    environment2 = [contextCopy environment];
    v78 = [environment2 style] == &dword_0 + 2;

    environment3 = [contextCopy environment];
    v74 = [environment3 layoutDirection] == &dword_0 + 2;

    environment4 = [contextCopy environment];
    [environment4 contentsScale];
    v27 = v26;

    v72 = [attributesCopy stringForAttribute:142 node:var0];
    [attributesCopy floatForAttribute:143 node:var0];
    v29 = v28;
    v30 = [attributesCopy stringForAttribute:144 node:var0];
    v79 = [TUIBox triggerStateFromString:v30];

    environment5 = [contextCopy environment];
    useFontFallback = [environment5 useFontFallback];

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

    v10->_useFontFallback = useFontFallback;
    [(BSUIDailyReadingMetrics *)v10 defaultsMissingMetrics];
  }

  return v10;
}

- (void)updateWithConfiguration:(id)configuration context:(id)context
{
  configurationCopy = configuration;
  objc_opt_class();
  v6 = [configurationCopy dataForKey:@"daily-reading-data"];
  v35 = BUDynamicCast();

  v7 = [configurationCopy dataForKey:@"current-reading-time"];
  objc_opt_class();
  objc_opt_class();
  v8 = BUDynamicCast();
  value = [v8 value];
  v30 = v7;
  v10 = BUDynamicCast();

  objc_opt_class();
  v11 = [configurationCopy dataForKey:@"goal-reading-time"];
  v29 = BUDynamicCast();

  v12 = v10;
  objc_opt_class();
  v13 = [configurationCopy dataForKey:@"progress-today"];
  v34 = BUDynamicCast();

  v28 = [configurationCopy BOOLForKey:@"icon-mode"];
  v33 = [configurationCopy colorForKey:@"control-color"];
  v32 = [configurationCopy colorForKey:@"progress-color"];
  v14 = [configurationCopy colorForKey:@"background-color"];
  v15 = [configurationCopy colorForKey:@"text-color"];
  objc_opt_class();
  v16 = [configurationCopy dataForKey:@"arc-width"];
  v31 = BUDynamicCast();

  objc_opt_class();
  v17 = [configurationCopy dataForKey:@"progress-bar-width"];
  v18 = BUDynamicCast();

  objc_opt_class();
  v19 = [configurationCopy dataForKey:@"opacity"];
  v20 = BUDynamicCast();
  v21 = v20;
  v22 = &off_39B530;
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  v24 = [configurationCopy fontSpecForKey:@"time-text-style"];
  v25 = [configurationCopy BOOLForKey:@"clock-ticks"];
  v26 = [configurationCopy stringForKey:@"time-separator"];

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
  axValue = [(BSUIDailyReadingMetrics *)self axValue];
  v3 = [axValue integerValue] > 7;

  return v3;
}

- (void)parseDailyReadingData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v4 = [dataCopy objectForKeyedSubscript:@"dynamicProgressToday"];
  v5 = BUDynamicCast();

  if (v5)
  {
    objc_storeStrong(&self->_lastVisibleProgressToday, v5);
  }

  objc_opt_class();
  v6 = [dataCopy objectForKeyedSubscript:@"streakDayGoal"];
  v7 = BUDynamicCast();

  if (v7)
  {
    objc_storeStrong(&self->_dynamicStreakDayGoal, v7);
  }

  objc_opt_class();
  v8 = [dataCopy objectForKeyedSubscript:@"timeReadToday"];
  v9 = BUDynamicCast();

  if (v9)
  {
    objc_storeStrong(&self->_dynamicTimeReadToday, v9);
  }

  objc_opt_class();
  v10 = [dataCopy objectForKeyedSubscript:@"completedReadingGoal"];
  v11 = BUDynamicCast();

  if (v11)
  {
    objc_storeStrong(&self->_dynamicCompletedReadingGoal, v11);
  }
}

- (void)configureIconMode:(BOOL)mode
{
  self->_iconMode = mode;
  if (mode)
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
  name = [(BSUIDailyReadingMetrics *)self name];
  v38 = [NSNumber numberWithBool:[(BSUIDailyReadingMetrics *)self iconMode]];
  readingGoalSeconds = [(BSUIDailyReadingMetrics *)self readingGoalSeconds];
  actualReadingTimeSeconds = [(BSUIDailyReadingMetrics *)self actualReadingTimeSeconds];
  [(BSUIDailyReadingMetrics *)self progressToday];
  v5 = v4;
  lastVisibleProgressToday = [(BSUIDailyReadingMetrics *)self lastVisibleProgressToday];
  lastVisibleProgressToday2 = [(BSUIDailyReadingMetrics *)self lastVisibleProgressToday];
  value = [lastVisibleProgressToday2 value];
  dynamicStreakDayGoal = [(BSUIDailyReadingMetrics *)self dynamicStreakDayGoal];
  dynamicStreakDayGoal2 = [(BSUIDailyReadingMetrics *)self dynamicStreakDayGoal];
  value2 = [dynamicStreakDayGoal2 value];
  dynamicTimeReadToday = [(BSUIDailyReadingMetrics *)self dynamicTimeReadToday];
  dynamicTimeReadToday2 = [(BSUIDailyReadingMetrics *)self dynamicTimeReadToday];
  value3 = [dynamicTimeReadToday2 value];
  dynamicCompletedReadingGoal = [(BSUIDailyReadingMetrics *)self dynamicCompletedReadingGoal];
  dynamicCompletedReadingGoal2 = [(BSUIDailyReadingMetrics *)self dynamicCompletedReadingGoal];
  value4 = [dynamicCompletedReadingGoal2 value];
  title = [(BSUIDailyReadingMetrics *)self title];
  detailText = [(BSUIDailyReadingMetrics *)self detailText];
  timeDisplayedText = [(BSUIDailyReadingMetrics *)self timeDisplayedText];
  controlColor = [(BSUIDailyReadingMetrics *)self controlColor];
  progressColor = [(BSUIDailyReadingMetrics *)self progressColor];
  backgroundColor = [(BSUIDailyReadingMetrics *)self backgroundColor];
  textColor = [(BSUIDailyReadingMetrics *)self textColor];
  timeFontSpec = [(BSUIDailyReadingMetrics *)self timeFontSpec];
  arcWidth = [(BSUIDailyReadingMetrics *)self arcWidth];
  progressBarWidth = [(BSUIDailyReadingMetrics *)self progressBarWidth];
  axValue = [(BSUIDailyReadingMetrics *)self axValue];
  nightMode = [(BSUIDailyReadingMetrics *)self nightMode];
  rightToLeft = [(BSUIDailyReadingMetrics *)self rightToLeft];
  triggerName = [(BSUIDailyReadingMetrics *)self triggerName];
  triggerDelay = [(BSUIDailyReadingMetrics *)self triggerDelay];
  v11 = [NSNumber numberWithUnsignedInteger:[(BSUIDailyReadingMetrics *)self targetTriggerState]];
  opacity = [(BSUIDailyReadingMetrics *)self opacity];
  v20 = [NSString stringWithFormat:@"<%@(%p) n=%@ iconMode=%@ readingGoalSeconds=%@ actualReadingTimeSeconds=%@ progressToday=%.1f lastVisibleProgressToday=%@ [%@] dynamicStreakDayGoal=%@ [%@] dynamicTimeReadToday=%@ [%@] dynamicCompletedReadingGoal=%@ [%@] title=%@ detailText=%@ timeDisplayedText=%@ controlColor=%@ progressColor=%@ backgroundColor=%@ textColor=%@ timeFontSpec=%@ arcWidth=%@ progressBarWidth=%@ axValue=%@ nightMode=%@ rightToLeft=%@ triggerName:%@ triggerDelay:%@ triggerState: %@ opacity: %@>", v40, self, name, v38, readingGoalSeconds, actualReadingTimeSeconds, v5, lastVisibleProgressToday, value, dynamicStreakDayGoal, value2, dynamicTimeReadToday, value3, dynamicCompletedReadingGoal, value4, title, detailText, timeDisplayedText, controlColor, progressColor, backgroundColor, textColor, timeFontSpec, arcWidth, progressBarWidth, axValue, nightMode, rightToLeft, triggerName, triggerDelay, v11, opacity];

  return v20;
}

@end