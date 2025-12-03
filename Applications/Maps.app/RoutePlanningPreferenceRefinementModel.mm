@interface RoutePlanningPreferenceRefinementModel
- (BOOL)shouldShowHighlighted;
- (id)titleText;
- (int)buttonPressUsageAction;
- (void)_assertValidValue;
@end

@implementation RoutePlanningPreferenceRefinementModel

- (void)_assertValidValue
{
  value = [(RoutePlanningRefinementModel *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    value2 = [(RoutePlanningRefinementModel *)self value];

    if (value2)
    {
      v4 = sub_10006D178();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [NSString stringWithFormat:@"Wrong type"];
        *buf = 136316162;
        v10 = "[RoutePlanningPreferenceRefinementModel _assertValidValue]";
        v11 = 2080;
        v12 = "RoutePlanningPreferenceRefinementModel.m";
        v13 = 1024;
        v14 = 116;
        v15 = 2080;
        v16 = "[self.value isKindOfClass:[WatchSyncedPreferences class]] || !self.value";
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (sub_100E03634())
      {
        v6 = sub_10006D178();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v10 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }
}

- (BOOL)shouldShowHighlighted
{
  value = [(RoutePlanningRefinementModel *)self value];
  hasAnyNonStandardPreferences = [value hasAnyNonStandardPreferences];

  return hasAnyNonStandardPreferences;
}

- (int)buttonPressUsageAction
{
  value = [(RoutePlanningRefinementModel *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 311;
  }

  else
  {
    return 313;
  }
}

- (id)titleText
{
  value = [(RoutePlanningRefinementModel *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value2 = [(RoutePlanningRefinementModel *)self value];
  value4 = value2;
  if (isKindOfClass)
  {
    if (![value2 avoidTolls]|| ([value4 avoidHighways]& 1) == 0)
    {
      if (([value4 avoidTolls]& 1) != 0)
      {
        v7 = @"[Preferences Picker] Avoid Tolls";
LABEL_32:
        v24 = +[NSBundle mainBundle];
        v25 = [v24 localizedStringForKey:v7 value:@"localized string not found" table:0];

        goto LABEL_77;
      }

      if ([value4 avoidHighways])
      {
        v7 = @"[Preferences Picker] Avoid Highways";
        goto LABEL_32;
      }

      goto LABEL_59;
    }

LABEL_9:
    v7 = @"[Preferences Picker] Avoid 2";
    goto LABEL_32;
  }

  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  value3 = [(RoutePlanningRefinementModel *)self value];
  value4 = value3;
  if (v8)
  {
    if ([value3 avoidHills]&& ([value4 avoidBusyRoads]& 1) != 0)
    {
      goto LABEL_9;
    }

    if (([value4 avoidHills]& 1) != 0)
    {
      v7 = @"[Preferences Picker] Avoid Hills";
      goto LABEL_32;
    }

    if ([value4 avoidBusyRoads])
    {
      v7 = @"[Preferences Picker] Avoid Busy Roads";
      goto LABEL_32;
    }

LABEL_59:

LABEL_60:
    value4 = +[NSBundle mainBundle];
    v25 = [value4 localizedStringForKey:@"[Preferences Picker] Avoid" value:@"localized string not found" table:0];
    goto LABEL_77;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  value4 = [(RoutePlanningRefinementModel *)self value];
  if ((v10 & 1) == 0)
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if ((v12 & 1) == 0)
    {
      v27 = sub_10006D178();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v43 = "[RoutePlanningPreferenceRefinementModel titleText]";
        v44 = 2080;
        v45 = "RoutePlanningPreferenceRefinementModel.m";
        v46 = 1024;
        v47 = 84;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (!sub_100E03634())
      {
        goto LABEL_60;
      }

      value4 = sub_10006D178();
      if (os_log_type_enabled(value4, OS_LOG_TYPE_ERROR))
      {
        v28 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v43 = v28;
        _os_log_impl(&_mh_execute_header, value4, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      goto LABEL_59;
    }

    value4 = [(RoutePlanningRefinementModel *)self value];
    if (![value4 disabledModes])
    {
      v32 = +[NSBundle mainBundle];
      v17 = v32;
      v33 = @"[Preferences Picker] Prefer";
      goto LABEL_62;
    }

    disabledModes = [value4 disabledModes];
    v14 = disabledModes & 0xF ^ 0xFLL;
    if ((disabledModes & 0xF) == 0)
    {
      v38 = sub_10006D178();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = [NSString stringWithFormat:@"Ended up with all transit modes preferred, even though we expected some disabled"];
        *buf = 136316162;
        v43 = "[RoutePlanningPreferenceRefinementModel titleText]";
        v44 = 2080;
        v45 = "RoutePlanningPreferenceRefinementModel.m";
        v46 = 1024;
        v47 = 61;
        v48 = 2080;
        v49 = "preferredModes != TransitModeAll";
        v50 = 2112;
        v51 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (sub_100E03634())
      {
        v40 = sub_10006D178();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v43 = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v15 = objc_alloc_init(NSMutableArray);
    v16 = v15;
    if (v14)
    {
      [v15 addObject:&off_1016E7700];
      if ((v14 & 2) == 0)
      {
LABEL_22:
        if ((v14 & 4) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_22;
    }

    [v16 addObject:&off_1016E7718];
    if ((v14 & 4) == 0)
    {
LABEL_24:
      if (v14 >= 8)
      {
        [v16 addObject:&off_1016E7748];
      }

      v17 = [v16 copy];

      v18 = [v17 count];
      if (v18 == 1)
      {
        lastObject = [v17 lastObject];
        v20 = [lastObject integerValue] - 1;
        if (v20 < 8 && ((0x8Bu >> v20) & 1) != 0)
        {
          v21 = *(&off_10162D838 + v20);
          v22 = +[NSBundle mainBundle];
          v23 = [v22 localizedStringForKey:v21 value:@"localized string not found" table:0];
LABEL_75:
          v25 = v23;

          goto LABEL_76;
        }

        v34 = sub_10006D178();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v43 = "[RoutePlanningPreferenceRefinementModel titleText]";
          v44 = 2080;
          v45 = "RoutePlanningPreferenceRefinementModel.m";
          v46 = 1024;
          v47 = 76;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v35 = sub_10006D178();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v43 = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      lastObject = +[NSBundle mainBundle];
      v22 = [lastObject localizedStringForKey:@"[Preferences Picker] Prefer #" value:@"localized string not found" table:0];
      v23 = [NSString localizedStringWithFormat:v22, v18];
      goto LABEL_75;
    }

LABEL_23:
    [v16 addObject:&off_1016E7730];
    goto LABEL_24;
  }

  if (sub_100F2C748())
  {
    avoidHills = [value4 avoidHills];
  }

  else
  {
    avoidHills = 0;
  }

  if (sub_100F2C748())
  {
    avoidBusyRoads = [value4 avoidBusyRoads];
  }

  else
  {
    avoidBusyRoads = 0;
  }

  if ((sub_100F2C7A8() & 1) == 0)
  {
    if (avoidHills & avoidBusyRoads)
    {
      v30 = @"[Preferences Picker] Avoid 2";
      goto LABEL_61;
    }

    avoidStairs = 0;
LABEL_52:
    v31 = @"[Preferences Picker] Avoid Stairs";
    if (avoidBusyRoads)
    {
      v31 = @"[Preferences Picker] Avoid Busy Roads";
    }

    if (avoidHills)
    {
      v30 = @"[Preferences Picker] Avoid Hills";
    }

    else
    {
      v30 = v31;
    }

    if (((avoidHills | avoidBusyRoads) & 1) == 0 && !avoidStairs)
    {
      goto LABEL_59;
    }

    goto LABEL_61;
  }

  avoidStairs = [value4 avoidStairs];
  if ((avoidHills & avoidBusyRoads) != 1 || (avoidStairs & 1) == 0)
  {
    v30 = @"[Preferences Picker] Avoid 2";
    if (!((avoidBusyRoads ^ 1) & (avoidStairs ^ 1) & 1 | ((avoidHills & 1) == 0)) || ((avoidBusyRoads ^ 1 | avoidStairs ^ 1) & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_52;
  }

  v30 = @"[Preferences Picker] Avoid 3";
LABEL_61:
  v32 = +[NSBundle mainBundle];
  v17 = v32;
  v33 = v30;
LABEL_62:
  v25 = [v32 localizedStringForKey:v33 value:@"localized string not found" table:0];
LABEL_76:

LABEL_77:

  return v25;
}

@end