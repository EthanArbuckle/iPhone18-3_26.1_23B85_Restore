@interface BSUIWeeklyProgressMetrics
+ (id)attributesKindMapping;
+ (id)parseCalendarData:(id)a3;
+ (id)supportedAttributes;
+ (unint64_t)defaultKindForAttribute:(unsigned __int16)a3;
+ (void)registerAttributes;
- (BOOL)isEqual:(id)a3;
- (BSUIWeeklyProgressMetrics)initWithNode:(id)a3 attributes:(id)a4 context:(id)a5;
- (id)description;
- (void)parseCalendarData:(id)a3;
- (void)updateWithConfiguration:(id)a3 context:(id)a4;
@end

@implementation BSUIWeeklyProgressMetrics

+ (void)registerAttributes
{
  BSUIAttributeCalendarData = [TUIAttributeRegistry registerCustomAttributeWithName:@"calendar-data"];
  BSUIAttributeCompletedTextColor = [TUIAttributeRegistry registerCustomAttributeWithName:@"completed-text-color"];
  BSUIAttributeFutureDayTextColor = [TUIAttributeRegistry registerCustomAttributeWithName:@"future-day-text-color"];
  BSUIAttributePreviousDayBorderColor = [TUIAttributeRegistry registerCustomAttributeWithName:@"previous-day-border-color"];
  BSUIAttributePreviousDayTextColor = [TUIAttributeRegistry registerCustomAttributeWithName:@"previous-day-text-color"];
}

+ (id)supportedAttributes
{
  if (qword_3CA798 != -1)
  {
    sub_2BD748();
  }

  v3 = qword_3CA790;

  return v3;
}

+ (id)attributesKindMapping
{
  if (qword_3CA7A8 != -1)
  {
    sub_2BD75C();
  }

  v3 = qword_3CA7A0;

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

- (BSUIWeeklyProgressMetrics)initWithNode:(id)a3 attributes:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v108.receiver = self;
  v108.super_class = BSUIWeeklyProgressMetrics;
  v10 = [(BSUIWeeklyProgressMetrics *)&v108 init];
  if (!v10)
  {
    goto LABEL_39;
  }

  objc_opt_class();
  var0 = a3.var0;
  v12 = [v8 objectForAttribute:BSUIAttributeCalendarData node:a3.var0];
  v13 = BUDynamicCast();

  v93 = [objc_opt_class() parseCalendarData:v13];
  objc_opt_class();
  v14 = [v13 objectForKeyedSubscript:@"runningStreak"];
  v15 = BUDynamicCast();
  v91 = [v15 BOOLValue];

  objc_opt_class();
  v16 = [v13 objectForKeyedSubscript:@"dailyReadingGoal"];
  v17 = BUDynamicCast();
  v87 = [v17 integerValue];

  [v8 floatForAttribute:BSUIAttributeProgressToday node:var0];
  v19 = v18;
  objc_opt_class();
  v96 = v13;
  v20 = [v13 objectForKeyedSubscript:@"dynamicProgressToday"];
  v84 = BUDynamicCast();

  v21 = [v8 colorForAttribute:BSUIAttributeControlColor node:var0];
  v22 = [v8 colorForAttribute:BSUIAttributeProgressColor node:var0];
  v82 = [v8 colorForAttribute:30 node:var0];
  v105 = [v8 colorForAttribute:BSUIAttributeTextColor node:var0];
  v97 = [v8 colorForAttribute:BSUIAttributeCompletedTextColor node:var0];
  v86 = [v8 fontSpecForNode:var0];
  v23 = [v8 colorForAttribute:BSUIAttributeFutureDayTextColor node:var0];
  v101 = [v8 colorForAttribute:BSUIAttributePreviousDayBorderColor node:var0];
  v102 = [v8 colorForAttribute:BSUIAttributePreviousDayTextColor node:var0];
  v24 = [v9 environment];
  v89 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 contentSizeCategory]);

  v25 = [v9 environment];
  v103 = [v25 style];

  v26 = [v9 environment];
  v81 = [v26 layoutDirection];

  v90 = [v8 stringForAttribute:142 node:var0];
  [v8 floatForAttribute:143 node:var0];
  v28 = v27;
  v29 = [v8 stringForAttribute:144 node:var0];
  v95 = [TUIBox triggerStateFromString:v29];

  v99 = v21;
  if (v21)
  {
    if (v22)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v99 = [UIColor colorWithWhite:dbl_2E1370[v103 == &dword_0 + 2] alpha:1.0];
    if (v22)
    {
      goto LABEL_4;
    }
  }

  v22 = [UIColor colorWithRed:0.0 green:0.615686275 blue:0.862745098 alpha:1.0, v81];
LABEL_4:
  v30 = v97;
  v31 = v105;
  v32 = v82;
  if (v82)
  {
    if (v105)
    {
      goto LABEL_16;
    }

    if (v103 != &dword_0 + 2)
    {
LABEL_14:
      v33 = +[UIColor blackColor];
      goto LABEL_15;
    }
  }

  else
  {
    if (v103 != &dword_0 + 2)
    {
      v32 = [UIColor colorWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.3];
      if (v105)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v32 = [UIColor colorWithWhite:0.2 alpha:1.0];
    if (v105)
    {
      goto LABEL_16;
    }
  }

  v33 = +[UIColor whiteColor];
LABEL_15:
  v31 = v33;
LABEL_16:
  if (v97)
  {
    if (v23)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v30 = +[UIColor whiteColor];
    if (v23)
    {
LABEL_18:
      if (!v101)
      {
        v34 = 0.0;
        if (v103 != &dword_0 + 2)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      goto LABEL_27;
    }
  }

  if (v103 == &dword_0 + 2)
  {
    v23 = [UIColor colorWithWhite:0.301960784 alpha:1.0];
    if (!v101)
    {
LABEL_24:
      v34 = 1.0;
LABEL_26:
      v101 = [UIColor colorWithWhite:v34 alpha:0.15, v81];
    }
  }

  else
  {
    v34 = 0.0;
    v23 = [UIColor colorWithWhite:0.0 alpha:0.2];
    if (!v101)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  if (!v102)
  {
    if (v103 == &dword_0 + 2)
    {
      v35 = 0.45;
      v36 = 1.0;
    }

    else
    {
      v35 = 0.2;
      v36 = 0.0;
    }

    v102 = [UIColor colorWithWhite:v36 alpha:v35, v81];
  }

  v106 = v31;
  v83 = v22;
  v98 = v9;
  v37 = fmax(v19, 0.0);
  v38 = v86;
  if (!v86 || ([(TUIFontSpec *)v86 font], v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
  {
    v40 = +[TUIFontSpec defaultFontSpec];
    v41 = [v40 fontSpecWithDesign:UIFontDescriptorSystemDesignDefault];
    [v41 fontSpecWithWeight:UIFontWeightSemibold];
    v42 = v32;
    v43 = v23;
    v45 = v44 = v30;
    v46 = [v45 fontSpecWithPointSize:12.0];

    v30 = v44;
    v23 = v43;
    v32 = v42;

    v38 = v46;
  }

  v47 = v103 == &dword_0 + 2;
  if ([(NSNumber *)v10->_axValue integerValue]<= 6)
  {
    v48 = 12.0;
  }

  else
  {
    v48 = 6.0;
  }

  days = v10->_days;
  v10->_days = v93;
  v104 = v93;

  v10->_isRunningStreak = v91;
  v10->_progressToday = v37;
  lastVisibleProgressToday = v10->_lastVisibleProgressToday;
  v10->_dailyReadingGoal = v87;
  v10->_lastVisibleProgressToday = v84;
  v94 = v84;

  controlColor = v10->_controlColor;
  v10->_controlColor = v99;
  v100 = v99;

  progressColor = v10->_progressColor;
  v10->_progressColor = v83;
  v92 = v83;

  previousDayBackgroundColor = v10->_previousDayBackgroundColor;
  v10->_previousDayBackgroundColor = v32;
  v88 = v32;

  textColor = v10->_textColor;
  v10->_textColor = v106;
  v107 = v106;

  completedTextColor = v10->_completedTextColor;
  v10->_completedTextColor = v30;
  v85 = v30;

  futureDayTextColor = v10->_futureDayTextColor;
  v10->_futureDayTextColor = v23;
  v57 = v23;

  previousDayBorderColor = v10->_previousDayBorderColor;
  v10->_previousDayBorderColor = v101;
  v59 = v101;

  previousDayTextColor = v10->_previousDayTextColor;
  v10->_previousDayTextColor = v102;
  v61 = v102;

  fontSpec = v10->_fontSpec;
  v10->_fontSpec = v38;
  v63 = v38;

  v64 = [NSNumber numberWithDouble:v48];
  spacerWidth = v10->_spacerWidth;
  v10->_spacerWidth = v64;

  v66 = [NSNumber numberWithDouble:3.0];
  spacerHeight = v10->_spacerHeight;
  v10->_spacerHeight = v66;

  axValue = v10->_axValue;
  v10->_axValue = v89;
  v69 = v89;

  v70 = [NSNumber numberWithBool:v47];
  nightMode = v10->_nightMode;
  v10->_nightMode = v70;

  v72 = [NSNumber numberWithBool:v81 == &dword_0 + 2];
  rightToLeft = v10->_rightToLeft;
  v10->_rightToLeft = v72;

  v74 = +[UIColor systemBackgroundColor];
  backgroundColor = v10->_backgroundColor;
  v10->_backgroundColor = v74;

  triggerName = v10->_triggerName;
  v10->_triggerName = v90;
  v77 = v90;

  v78 = [NSNumber numberWithDouble:v28];
  triggerDelay = v10->_triggerDelay;
  v10->_triggerDelay = v78;

  v10->_targetTriggerState = v95;
  v9 = v98;
LABEL_39:

  return v10;
}

- (void)updateWithConfiguration:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = [v5 colorForKey:@"control-color"];
  v34 = BUDynamicCast();

  objc_opt_class();
  v7 = [v5 colorForKey:@"progress-color"];
  v29 = BUDynamicCast();

  objc_opt_class();
  v8 = [v5 colorForKey:@"previous-day-background-color"];
  v28 = BUDynamicCast();

  objc_opt_class();
  v9 = [v5 colorForKey:@"previous-day-border-color"];
  v33 = BUDynamicCast();

  objc_opt_class();
  v10 = [v5 colorForKey:@"text-color"];
  v32 = BUDynamicCast();

  objc_opt_class();
  v11 = [v5 colorForKey:@"completed-text-color"];
  v31 = BUDynamicCast();

  objc_opt_class();
  v12 = [v5 colorForKey:@"previous-day-text-color"];
  v30 = BUDynamicCast();

  objc_opt_class();
  v13 = [v5 colorForKey:@"future-day-text-color"];
  v14 = BUDynamicCast();

  objc_opt_class();
  v15 = [v5 colorForKey:@"background-color"];
  v16 = BUDynamicCast();

  objc_opt_class();
  v17 = [v5 fontSpecForKey:@"font-spec"];
  v18 = BUDynamicCast();

  objc_opt_class();
  v19 = [v5 dataForKey:@"progress-today"];
  v20 = BUDynamicCast();

  objc_opt_class();
  v21 = [v5 dataForKey:@"spacer-width"];
  v22 = BUDynamicCast();

  objc_opt_class();
  v23 = [v5 dataForKey:@"spacer-height"];
  v24 = BUDynamicCast();

  objc_opt_class();
  v25 = [v5 dataForKey:@"calendar-data"];

  v26 = BUDynamicCast();

  if (v34)
  {
    [(BSUIWeeklyProgressMetrics *)self setControlColor:v34];
  }

  if (v29)
  {
    [(BSUIWeeklyProgressMetrics *)self setProgressColor:v29];
  }

  if (v28)
  {
    [(BSUIWeeklyProgressMetrics *)self setPreviousDayBackgroundColor:v28];
  }

  if (v33)
  {
    [(BSUIWeeklyProgressMetrics *)self setPreviousDayBorderColor:?];
  }

  if (v32)
  {
    [(BSUIWeeklyProgressMetrics *)self setTextColor:?];
  }

  if (v31)
  {
    [(BSUIWeeklyProgressMetrics *)self setCompletedTextColor:?];
  }

  if (v30)
  {
    [(BSUIWeeklyProgressMetrics *)self setPreviousDayTextColor:?];
  }

  if (v14)
  {
    [(BSUIWeeklyProgressMetrics *)self setFutureDayTextColor:v14];
  }

  if (v18)
  {
    [(BSUIWeeklyProgressMetrics *)self setFontSpec:v18];
  }

  if (v20)
  {
    [v20 floatValue];
    [(BSUIWeeklyProgressMetrics *)self setProgressToday:v27];
  }

  if (v22)
  {
    [(BSUIWeeklyProgressMetrics *)self setSpacerWidth:v22];
  }

  if (v24)
  {
    [(BSUIWeeklyProgressMetrics *)self setSpacerHeight:v24];
  }

  if (v26)
  {
    [(BSUIWeeklyProgressMetrics *)self parseCalendarData:v26];
  }

  if (v16)
  {
    [(BSUIWeeklyProgressMetrics *)self setBackgroundColor:v16];
  }
}

+ (id)parseCalendarData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v24 = v3;
  v4 = [v3 objectForKeyedSubscript:@"progressDays"];
  v5 = BUDynamicCast();

  v26 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        v11 = [v10 objectForKeyedSubscript:@"percentComplete"];
        v12 = BUDynamicCast();
        [v12 floatValue];
        v14 = v13;

        objc_opt_class();
        v15 = [v10 objectForKeyedSubscript:@"dayLabel"];
        v16 = BUDynamicCast();

        objc_opt_class();
        v17 = [v10 objectForKeyedSubscript:@"dayType"];
        v18 = BUDynamicCast();
        v19 = [v18 integerValue];

        objc_opt_class();
        v20 = [v10 objectForKeyedSubscript:@"dateShortString"];
        v21 = BUDynamicCast();

        v22 = [[BSUIWeeklyProgressDay alloc] initWithType:v19 progress:v16 text:v21 dateShortString:v14];
        [v26 addObject:v22];
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  return v26;
}

- (void)parseCalendarData:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() parseCalendarData:v4];
  [(BSUIWeeklyProgressMetrics *)self setDays:v5];
  objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:@"runningStreak"];
  v7 = BUDynamicCast();
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [(BSUIWeeklyProgressMetrics *)self setIsRunningStreak:1];
  }

  objc_opt_class();
  v9 = [v4 objectForKeyedSubscript:@"dynamicProgressToday"];
  v10 = BUDynamicCast();

  [(BSUIWeeklyProgressMetrics *)self setLastVisibleProgressToday:v10];
  objc_opt_class();
  v11 = [v4 objectForKeyedSubscript:@"dailyReadingGoal"];
  v12 = BUDynamicCast();

  if (v12)
  {
    -[BSUIWeeklyProgressMetrics setDailyReadingGoal:](self, "setDailyReadingGoal:", [v12 integerValue]);
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_26F14;
  v19 = sub_26F24;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_26F2C;
  v14[3] = &unk_387B48;
  v14[4] = &v15;
  [v5 enumerateObjectsUsingBlock:v14];
  v13 = [v16[5] dateShortString];
  [(BSUIWeeklyProgressMetrics *)self setCurrentDayShortString:v13];

  _Block_object_dispose(&v15, 8);
}

- (id)description
{
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  v18 = [(BSUIWeeklyProgressMetrics *)self days];
  v17 = [(BSUIWeeklyProgressMetrics *)self isRunningStreak];
  [(BSUIWeeklyProgressMetrics *)self progressToday];
  v5 = v4;
  v25 = [(BSUIWeeklyProgressMetrics *)self lastVisibleProgressToday];
  v16 = [(BSUIWeeklyProgressMetrics *)self controlColor];
  v24 = [(BSUIWeeklyProgressMetrics *)self progressColor];
  v23 = [(BSUIWeeklyProgressMetrics *)self previousDayBackgroundColor];
  v22 = [(BSUIWeeklyProgressMetrics *)self textColor];
  v21 = [(BSUIWeeklyProgressMetrics *)self completedTextColor];
  v15 = [(BSUIWeeklyProgressMetrics *)self futureDayTextColor];
  v6 = [(BSUIWeeklyProgressMetrics *)self previousDayBorderColor];
  v7 = [(BSUIWeeklyProgressMetrics *)self previousDayTextColor];
  v14 = [(BSUIWeeklyProgressMetrics *)self fontSpec];
  v8 = [(BSUIWeeklyProgressMetrics *)self axValue];
  v9 = [(BSUIWeeklyProgressMetrics *)self nightMode];
  v10 = [(BSUIWeeklyProgressMetrics *)self rightToLeft];
  v11 = [(BSUIWeeklyProgressMetrics *)self triggerName];
  v12 = [(BSUIWeeklyProgressMetrics *)self triggerDelay];
  v20 = [NSString stringWithFormat:@"<%@(%p) days=%@ isRunningStreak=%d progressToday=%.1f lastVisibleProgressToday=%@ controlColor=%@ progressColor=%@ previousDayBackgroundColor=%@ textColor=%@ completedTextColor=%@ futureDayTextColor=%@ previousDayBorderColor=%@ previousDayTextColor=%@ fontSpec=%@ axValue=%@ nightMode=%@ rightToLeft=%@ triggerName:%@ triggerDelay:%@ triggerState: %ld >", v19, self, v18, v17, v5, v25, v16, v24, v23, v22, v21, v15, v6, v7, v14, v8, v9, v10, v11, v12, [(BSUIWeeklyProgressMetrics *)self targetTriggerState]];

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [(BSUIWeeklyProgressMetrics *)self days];
    v7 = [v5 days];
    if ([v6 isEqualToArray:v7] && (v8 = -[BSUIWeeklyProgressMetrics isRunningStreak](self, "isRunningStreak"), v8 == objc_msgSend(v5, "isRunningStreak")) && (-[BSUIWeeklyProgressMetrics progressToday](self, "progressToday"), v10 = v9, objc_msgSend(v5, "progressToday"), v10 == v11))
    {
      v12 = [(BSUIWeeklyProgressMetrics *)self lastVisibleProgressToday];
      v13 = [v5 lastVisibleProgressToday];
      if (v12 == v13)
      {
        v16 = [(BSUIWeeklyProgressMetrics *)self fontSpec];
        v17 = [v5 fontSpec];
        if ([v16 isEqual:v17])
        {
          v18 = [(BSUIWeeklyProgressMetrics *)self axValue];
          v19 = [v5 axValue];
          if ([v18 isEqualToNumber:v19])
          {
            v26 = v18;
            v20 = [(BSUIWeeklyProgressMetrics *)self nightMode];
            v21 = [v5 nightMode];
            v27 = v20;
            v22 = v20;
            v23 = v21;
            if ([v22 isEqualToNumber:v21])
            {
              v25 = [(BSUIWeeklyProgressMetrics *)self rightToLeft];
              v24 = [v5 rightToLeft];
              v14 = [v25 isEqualToNumber:v24];
            }

            else
            {
              v14 = 0;
            }

            v18 = v26;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end