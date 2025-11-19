@interface RoutePlanningPreferenceRefinementModel
- (BOOL)shouldShowHighlighted;
- (id)titleText;
- (int)buttonPressUsageAction;
- (void)_assertValidValue;
@end

@implementation RoutePlanningPreferenceRefinementModel

- (void)_assertValidValue
{
  v8 = [(RoutePlanningRefinementModel *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v3 = [(RoutePlanningRefinementModel *)self value];

    if (v3)
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
  v2 = [(RoutePlanningRefinementModel *)self value];
  v3 = [v2 hasAnyNonStandardPreferences];

  return v3;
}

- (int)buttonPressUsageAction
{
  v2 = [(RoutePlanningRefinementModel *)self value];
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
  v3 = [(RoutePlanningRefinementModel *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(RoutePlanningRefinementModel *)self value];
  v6 = v5;
  if (isKindOfClass)
  {
    if (![v5 avoidTolls]|| ([v6 avoidHighways]& 1) == 0)
    {
      if (([v6 avoidTolls]& 1) != 0)
      {
        v7 = @"[Preferences Picker] Avoid Tolls";
LABEL_32:
        v24 = +[NSBundle mainBundle];
        v25 = [v24 localizedStringForKey:v7 value:@"localized string not found" table:0];

        goto LABEL_77;
      }

      if ([v6 avoidHighways])
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

  v9 = [(RoutePlanningRefinementModel *)self value];
  v6 = v9;
  if (v8)
  {
    if ([v9 avoidHills]&& ([v6 avoidBusyRoads]& 1) != 0)
    {
      goto LABEL_9;
    }

    if (([v6 avoidHills]& 1) != 0)
    {
      v7 = @"[Preferences Picker] Avoid Hills";
      goto LABEL_32;
    }

    if ([v6 avoidBusyRoads])
    {
      v7 = @"[Preferences Picker] Avoid Busy Roads";
      goto LABEL_32;
    }

LABEL_59:

LABEL_60:
    v6 = +[NSBundle mainBundle];
    v25 = [v6 localizedStringForKey:@"[Preferences Picker] Avoid" value:@"localized string not found" table:0];
    goto LABEL_77;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  v6 = [(RoutePlanningRefinementModel *)self value];
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

      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v28 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v43 = v28;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      goto LABEL_59;
    }

    v6 = [(RoutePlanningRefinementModel *)self value];
    if (![v6 disabledModes])
    {
      v32 = +[NSBundle mainBundle];
      v17 = v32;
      v33 = @"[Preferences Picker] Prefer";
      goto LABEL_62;
    }

    v13 = [v6 disabledModes];
    v14 = v13 & 0xF ^ 0xFLL;
    if ((v13 & 0xF) == 0)
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
        v19 = [v17 lastObject];
        v20 = [v19 integerValue] - 1;
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

      v19 = +[NSBundle mainBundle];
      v22 = [v19 localizedStringForKey:@"[Preferences Picker] Prefer #" value:@"localized string not found" table:0];
      v23 = [NSString localizedStringWithFormat:v22, v18];
      goto LABEL_75;
    }

LABEL_23:
    [v16 addObject:&off_1016E7730];
    goto LABEL_24;
  }

  if (sub_100F2C748())
  {
    v11 = [v6 avoidHills];
  }

  else
  {
    v11 = 0;
  }

  if (sub_100F2C748())
  {
    v26 = [v6 avoidBusyRoads];
  }

  else
  {
    v26 = 0;
  }

  if ((sub_100F2C7A8() & 1) == 0)
  {
    if (v11 & v26)
    {
      v30 = @"[Preferences Picker] Avoid 2";
      goto LABEL_61;
    }

    v29 = 0;
LABEL_52:
    v31 = @"[Preferences Picker] Avoid Stairs";
    if (v26)
    {
      v31 = @"[Preferences Picker] Avoid Busy Roads";
    }

    if (v11)
    {
      v30 = @"[Preferences Picker] Avoid Hills";
    }

    else
    {
      v30 = v31;
    }

    if (((v11 | v26) & 1) == 0 && !v29)
    {
      goto LABEL_59;
    }

    goto LABEL_61;
  }

  v29 = [v6 avoidStairs];
  if ((v11 & v26) != 1 || (v29 & 1) == 0)
  {
    v30 = @"[Preferences Picker] Avoid 2";
    if (!((v26 ^ 1) & (v29 ^ 1) & 1 | ((v11 & 1) == 0)) || ((v26 ^ 1 | v29 ^ 1) & 1) == 0)
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