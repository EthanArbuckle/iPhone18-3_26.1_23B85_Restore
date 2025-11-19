@interface BSUIReadingGoalsGaugeMetrics
+ (id)attributesKindMapping;
+ (id)supportedAttributes;
+ (unint64_t)defaultKindForAttribute:(unsigned __int16)a3;
+ (void)registerAttributes;
- (BOOL)isAX;
- (BOOL)isEqual:(id)a3;
- (BSUIReadingGoalsGaugeMetrics)initWithNode:(id)a3 attributes:(id)a4 context:(id)a5;
- (CGSize)size;
- (void)dealloc;
- (void)defaultsMissingMetrics;
- (void)dynamicProgressChanged:(id)a3;
- (void)updateWithConfiguration:(id)a3 context:(id)a4;
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

- (BSUIReadingGoalsGaugeMetrics)initWithNode:(id)a3 attributes:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v36.receiver = self;
  v36.super_class = BSUIReadingGoalsGaugeMetrics;
  v10 = [(BSUIReadingGoalsGaugeMetrics *)&v36 init];
  if (v10)
  {
    objc_opt_class();
    v11 = [v8 stringForAttribute:137 node:a3.var0];
    v12 = BUDynamicCast();

    v13 = [v8 stringForAttribute:206 node:a3.var0];
    v14 = [v8 colorForAttribute:BSUIAttributeControlColor node:a3.var0];
    v15 = [v8 colorForAttribute:BSUIAttributeProgressColor node:a3.var0];
    v16 = [v9 environment];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 contentSizeCategory]);

    [v9 environment];
    v18 = v35 = v9;
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

    v9 = v35;
    v31 = COERCE_FLOAT([v8 lengthForAttribute:225 node:a3.var0]);
    v32 = COERCE_FLOAT([v8 lengthForAttribute:98 node:a3.var0]);
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

- (void)updateWithConfiguration:(id)a3 context:(id)a4
{
  v5 = a3;
  v29 = [v5 colorForKey:@"control-color"];
  v6 = [v5 colorForKey:@"progress-color"];
  v7 = [v5 dataForKey:@"current-reading-time"];
  objc_opt_class();
  objc_opt_class();
  v8 = BUDynamicCast();
  v9 = [v8 value];
  v27 = v7;
  v10 = BUDynamicCast();

  v11 = v10;
  objc_opt_class();
  v12 = [v5 dataForKey:@"goal-reading-time"];
  v13 = BUDynamicCast();

  objc_opt_class();
  v14 = [v5 dataForKey:@"opacity"];
  v15 = BUDynamicCast();
  v16 = v15;
  v17 = &off_39B500;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [v5 fontSpecForKey:@"time-text-style"];
  v20 = [v5 fontSpecForKey:@"streak-day-text-style"];

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
  v22 = [v21 dynamicRegistry];

  v23 = +[BCReadingTimeToday kind];
  v24 = [v22 progressProviderForKind:v23];
  v25 = [v24 dynamicProgressForKind:v23 instance:0 parameters:0];
  [(BSUIReadingGoalsGaugeMetrics *)self setReadingProgress:v25];

  v26 = [(BSUIReadingGoalsGaugeMetrics *)self readingProgress];
  [v26 registerProgressObserver:self];

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
  v2 = [(BSUIReadingGoalsGaugeMetrics *)self axValue];
  v3 = [v2 integerValue] > 7;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  objc_opt_class();
  v6 = [v5 axValue];
  v7 = BUDynamicCast();

  v8 = [(BSUIReadingGoalsGaugeMetrics *)self axValue];
  if (v8 | v7)
  {
    v9 = [(BSUIReadingGoalsGaugeMetrics *)self axValue];
    v10 = 0;
    if (v9 && v7)
    {
      v11 = [(BSUIReadingGoalsGaugeMetrics *)self axValue];
      v10 = [v11 isEqualToNumber:v7];
    }

    v31 = v10;
  }

  else
  {
    v31 = 1;
  }

  objc_opt_class();
  v12 = [v5 nightMode];
  v13 = BUDynamicCast();

  v14 = [(BSUIReadingGoalsGaugeMetrics *)self nightMode];
  if (v14 | v13)
  {
    v15 = [(BSUIReadingGoalsGaugeMetrics *)self nightMode];
    v16 = 0;
    if (v15 && v13)
    {
      v17 = [(BSUIReadingGoalsGaugeMetrics *)self nightMode];
      v16 = [v17 isEqualToNumber:v13];
    }

    v30 = v16;
  }

  else
  {
    v30 = 1;
  }

  objc_opt_class();
  v18 = [v5 opacity];
  v19 = BUDynamicCast();

  v20 = [(BSUIReadingGoalsGaugeMetrics *)self opacity];
  if (v20 | v19)
  {
    v21 = [(BSUIReadingGoalsGaugeMetrics *)self opacity];
    v22 = 0;
    if (v21 && v19)
    {
      v23 = [(BSUIReadingGoalsGaugeMetrics *)self opacity];
      v22 = [v23 isEqualToNumber:v19];
    }
  }

  else
  {
    v22 = 1;
  }

  if (v5)
  {
    v24 = [(BSUIReadingGoalsGaugeMetrics *)self timeFontSpec];
    v25 = [v5 timeFontSpec];
    if ([v24 isEqual:v25])
    {
      v26 = [(BSUIReadingGoalsGaugeMetrics *)self streakFontSpec];
      v27 = [v5 streakFontSpec];
      if ([v26 isEqual:v27])
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

- (void)dynamicProgressChanged:(id)a3
{
  v7 = a3;
  v4 = [v7 progress];

  if (v4)
  {
    v5 = [v7 progress];
    [v5 doubleValue];
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