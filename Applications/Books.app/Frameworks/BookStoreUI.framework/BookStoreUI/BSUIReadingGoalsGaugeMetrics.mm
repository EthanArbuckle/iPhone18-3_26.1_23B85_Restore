@interface BSUIReadingGoalsGaugeMetrics
+ (id)attributesKindMapping;
+ (id)supportedAttributes;
+ (unint64_t)defaultKindForAttribute:(unsigned __int16)attribute;
+ (void)registerAttributes;
- (BOOL)isAX;
- (BOOL)isEqual:(id)equal;
- (BSUIReadingGoalsGaugeMetrics)initWithNode:(id)node attributes:(id)attributes context:(id)context;
- (CGSize)size;
- (void)dealloc;
- (void)defaultsMissingMetrics;
- (void)dynamicProgressChanged:(id)changed;
- (void)updateWithConfiguration:(id)configuration context:(id)context;
@end

@implementation BSUIReadingGoalsGaugeMetrics

+ (void)registerAttributes
{
  BSUIAttributeControlColor = [TUIAttributeRegistry registerCustomAttributeWithName:@"control-color"];
  BSUIAttributeProgressColor = [TUIAttributeRegistry registerCustomAttributeWithName:@"progress-color"];
  BSUIAttributeNightMode = [TUIAttributeRegistry registerCustomAttributeWithName:@"night-mode"];
}

+ (id)supportedAttributes
{
  if (qword_3CA688 != -1)
  {
    sub_2BCCCC();
  }

  v3 = qword_3CA680;

  return v3;
}

+ (id)attributesKindMapping
{
  if (qword_3CA698 != -1)
  {
    sub_2BCCE0();
  }

  v3 = qword_3CA690;

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

- (BSUIReadingGoalsGaugeMetrics)initWithNode:(id)node attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  v36.receiver = self;
  v36.super_class = BSUIReadingGoalsGaugeMetrics;
  v10 = [(BSUIReadingGoalsGaugeMetrics *)&v36 init];
  if (v10)
  {
    objc_opt_class();
    v11 = [attributesCopy stringForAttribute:137 node:node.var0];
    v12 = BUDynamicCast();

    v13 = [attributesCopy stringForAttribute:206 node:node.var0];
    v14 = [attributesCopy colorForAttribute:BSUIAttributeControlColor node:node.var0];
    v15 = [attributesCopy colorForAttribute:BSUIAttributeProgressColor node:node.var0];
    environment = [contextCopy environment];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [environment contentSizeCategory]);

    [contextCopy environment];
    v18 = v35 = contextCopy;
    v19 = [v18 style] == &dword_0 + 2;

    name = v10->_name;
    v10->_name = v12;
    v34 = v12;

    title = v10->_title;
    v10->_title = v13;
    v22 = v13;

    controlColor = v10->_controlColor;
    v10->_controlColor = v14;
    v24 = v14;

    progressColor = v10->_progressColor;
    v10->_progressColor = v15;
    v26 = v15;

    axValue = v10->_axValue;
    v10->_axValue = v17;
    v28 = v17;

    v29 = [NSNumber numberWithBool:v19];
    nightMode = v10->_nightMode;
    v10->_nightMode = v29;

    contextCopy = v35;
    v31 = COERCE_FLOAT([attributesCopy lengthForAttribute:225 node:node.var0]);
    v32 = COERCE_FLOAT([attributesCopy lengthForAttribute:98 node:node.var0]);
    v10->_size.width = v31;
    v10->_size.height = v32;
    [(BSUIReadingGoalsGaugeMetrics *)v10 defaultsMissingMetrics];
  }

  return v10;
}

- (void)dealloc
{
  [(TUIDynamicProgress *)self->_readingProgress unregisterProgressObserver:self];
  v3.receiver = self;
  v3.super_class = BSUIReadingGoalsGaugeMetrics;
  [(BSUIReadingGoalsGaugeMetrics *)&v3 dealloc];
}

- (void)updateWithConfiguration:(id)configuration context:(id)context
{
  configurationCopy = configuration;
  v29 = [configurationCopy colorForKey:@"control-color"];
  v6 = [configurationCopy colorForKey:@"progress-color"];
  v7 = [configurationCopy dataForKey:@"current-reading-time"];
  objc_opt_class();
  objc_opt_class();
  v8 = BUDynamicCast();
  value = [v8 value];
  v27 = v7;
  v10 = BUDynamicCast();

  v11 = v10;
  objc_opt_class();
  v12 = [configurationCopy dataForKey:@"goal-reading-time"];
  v13 = BUDynamicCast();

  objc_opt_class();
  v14 = [configurationCopy dataForKey:@"opacity"];
  v15 = BUDynamicCast();
  v16 = v15;
  v17 = &off_39B500;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [configurationCopy fontSpecForKey:@"time-text-style"];
  v20 = [configurationCopy fontSpecForKey:@"streak-day-text-style"];

  if (v29)
  {
    [(BSUIReadingGoalsGaugeMetrics *)self setControlColor:v29];
  }

  if (v6)
  {
    [(BSUIReadingGoalsGaugeMetrics *)self setProgressColor:v6];
  }

  if (v11)
  {
    [(BSUIReadingGoalsGaugeMetrics *)self setActualReadingTimeSeconds:v11];
  }

  if (v13)
  {
    [(BSUIReadingGoalsGaugeMetrics *)self setReadingGoalSeconds:v13];
  }

  if (v19)
  {
    [(BSUIReadingGoalsGaugeMetrics *)self setTimeFontSpec:v19];
  }

  v28 = v6;
  if (v20)
  {
    [(BSUIReadingGoalsGaugeMetrics *)self setStreakFontSpec:v20];
  }

  v21 = +[BSUITemplate manager];
  dynamicRegistry = [v21 dynamicRegistry];

  v23 = +[BCReadingTimeToday kind];
  v24 = [dynamicRegistry progressProviderForKind:v23];
  v25 = [v24 dynamicProgressForKind:v23 instance:0 parameters:0];
  [(BSUIReadingGoalsGaugeMetrics *)self setReadingProgress:v25];

  readingProgress = [(BSUIReadingGoalsGaugeMetrics *)self readingProgress];
  [readingProgress registerProgressObserver:self];

  [(BSUIReadingGoalsGaugeMetrics *)self setOpacity:v18];
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
    self->_progressColor = [UIColor colorWithRed:0.0 green:0.615686275 blue:0.862745098 alpha:1.0];

    _objc_release_x1();
  }
}

- (BOOL)isAX
{
  axValue = [(BSUIReadingGoalsGaugeMetrics *)self axValue];
  v3 = [axValue integerValue] > 7;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = BUDynamicCast();

  objc_opt_class();
  axValue = [v5 axValue];
  v7 = BUDynamicCast();

  axValue2 = [(BSUIReadingGoalsGaugeMetrics *)self axValue];
  if (axValue2 | v7)
  {
    axValue3 = [(BSUIReadingGoalsGaugeMetrics *)self axValue];
    v10 = 0;
    if (axValue3 && v7)
    {
      axValue4 = [(BSUIReadingGoalsGaugeMetrics *)self axValue];
      v10 = [axValue4 isEqualToNumber:v7];
    }

    v31 = v10;
  }

  else
  {
    v31 = 1;
  }

  objc_opt_class();
  nightMode = [v5 nightMode];
  v13 = BUDynamicCast();

  nightMode2 = [(BSUIReadingGoalsGaugeMetrics *)self nightMode];
  if (nightMode2 | v13)
  {
    nightMode3 = [(BSUIReadingGoalsGaugeMetrics *)self nightMode];
    v16 = 0;
    if (nightMode3 && v13)
    {
      nightMode4 = [(BSUIReadingGoalsGaugeMetrics *)self nightMode];
      v16 = [nightMode4 isEqualToNumber:v13];
    }

    v30 = v16;
  }

  else
  {
    v30 = 1;
  }

  objc_opt_class();
  opacity = [v5 opacity];
  v19 = BUDynamicCast();

  opacity2 = [(BSUIReadingGoalsGaugeMetrics *)self opacity];
  if (opacity2 | v19)
  {
    opacity3 = [(BSUIReadingGoalsGaugeMetrics *)self opacity];
    v22 = 0;
    if (opacity3 && v19)
    {
      opacity4 = [(BSUIReadingGoalsGaugeMetrics *)self opacity];
      v22 = [opacity4 isEqualToNumber:v19];
    }
  }

  else
  {
    v22 = 1;
  }

  if (v5)
  {
    timeFontSpec = [(BSUIReadingGoalsGaugeMetrics *)self timeFontSpec];
    timeFontSpec2 = [v5 timeFontSpec];
    if ([timeFontSpec isEqual:timeFontSpec2])
    {
      streakFontSpec = [(BSUIReadingGoalsGaugeMetrics *)self streakFontSpec];
      streakFontSpec2 = [v5 streakFontSpec];
      if ([streakFontSpec isEqual:streakFontSpec2])
      {
        v28 = v31 & v30 & v22;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)dynamicProgressChanged:(id)changed
{
  changedCopy = changed;
  progress = [changedCopy progress];

  if (progress)
  {
    progress2 = [changedCopy progress];
    [progress2 doubleValue];
    v6 = [NSNumber numberWithDouble:?];
    [(BSUIReadingGoalsGaugeMetrics *)self setActualReadingTimeSeconds:v6];
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end