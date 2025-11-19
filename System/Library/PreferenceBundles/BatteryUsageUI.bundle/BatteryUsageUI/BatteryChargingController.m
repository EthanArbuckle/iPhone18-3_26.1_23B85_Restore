@interface BatteryChargingController
- (BOOL)shouldShowRCLCard;
- (BatteryChargingController)init;
- (float)getHighlightValue;
- (float)getSegmentedControlValue;
- (id)chargingLimitGroup;
- (id)chargingLimitSlider;
- (id)cleanEnergyChargingGroupSpecifier;
- (id)defaults;
- (id)getCleanChargingSwitchState;
- (id)localizedObcFooter;
- (id)obcToggleGroup;
- (id)recommendedChargingLimitCard;
- (id)refreshSmartChargingSwitchState:(id)a3;
- (id)specifiers;
- (void)applicationWillSuspend;
- (void)logRecommendationAnalytics;
- (void)moveToValue:(unint64_t)a3;
- (void)reloadSpecifierID:(id)a3;
- (void)removeRCLCard;
- (void)setAboutChargingLimitLink;
- (void)setAboutCleanEnergyChargingLink;
- (void)setAsRecommended;
- (void)setChargeLimit:(unint64_t)a3;
- (void)setCleanChargingSwitchState:(id)a3;
- (void)setLearnMoreLink;
- (void)setSegmentedControlValue:(float)a3;
- (void)setSmartChargingSwitchState:(id)a3;
- (void)showLimitToFullAlert;
- (void)showOBCToOffAlert;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)updateCleanEnergyChargingState;
- (void)viewDidLoad;
@end

@implementation BatteryChargingController

- (id)chargingLimitGroup
{
  v3 = +[NSMutableArray array];
  v4 = [(BatteryChargingController *)self defaults];
  [v4 doubleForKey:@"PRIOR_MCL_LIMIT_KEY"];
  [(BatteryChargingController *)self setPriorLimit:v5];

  v6 = [PSSpecifier groupSpecifierWithName:0];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v7 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v7 = BatteryUILocalization(@"CHARGING_LIMIT_FOOTER");
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v8 = BatteryUILocalization(@"CHARGING_LIMIT_LINK");
  }

  v9 = [NSString stringWithFormat:v7, v8];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v6 setProperty:v11 forKey:PSFooterCellClassGroupKey];

  [v6 setProperty:v9 forKey:PSFooterHyperlinkViewTitleKey];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v12 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v12 = BatteryUILocalization(@"CHARGING_LIMIT_LINK");
  }

  v41 = v9;
  v46.location = [v9 rangeOfString:v12];
  v13 = NSStringFromRange(v46);
  [v6 setProperty:v13 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v14 = [NSValue valueWithNonretainedObject:self];
  [v6 setProperty:v14 forKey:PSFooterHyperlinkViewTargetKey];

  [v6 setProperty:@"setAboutChargingLimitLink" forKey:PSFooterHyperlinkViewActionKey];
  v43 = v3;
  [v3 addObject:v6];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v15 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v15 = BatteryUILocalization(@"CHARGING_LIMIT_HEADER");
  }

  v42 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v16 = +[NSCalendar currentCalendar];
  v17 = objc_alloc_init(NSDateFormatter);
  v18 = +[NSLocale currentLocale];
  [v17 setLocale:v18];

  if (+[PLBatteryUIUtilities is24HourClock])
  {
    v19 = @"H:mm";
  }

  else
  {
    v19 = @"h:mm a";
  }

  [v17 setLocalizedDateFormatFromTemplate:v19];
  v20 = objc_alloc_init(NSDateComponents);
  [v20 setHour:6];
  v40 = v16;
  v39 = [v16 dateFromComponents:v20];
  v21 = [v17 stringFromDate:?];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v22 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v22 = BatteryUILocalization(@"CHARGING_LIMIT_TEMP_DISABLE_FOOTER");
  }

  v23 = [PLBatteryUIUtilities localizedStringWithPercentage:[(BatteryChargingController *)self priorLimit]];
  v24 = [NSString stringWithFormat:v22, v23, v21];

  v25 = [(BatteryChargingController *)self chargingClient];
  v44 = 0;
  v26 = [v25 isMCLCurrentlyEnabled:&v44];

  if (v26 == &dword_0 + 3 && [(BatteryChargingController *)self priorLimit])
  {
    v27 = PSFooterTextGroupKey;
    v28 = v42;
    v29 = v42;
    v30 = v24;
  }

  else
  {
    v27 = PSFooterTextGroupKey;
    v30 = @" ";
    v28 = v42;
    v29 = v42;
  }

  [v29 setObject:v30 forKeyedSubscript:v27];
  [v43 addObject:v28];
  v31 = [(BatteryChargingController *)self chargingLimitSlider];
  [v43 addObject:v31];
  v32 = [(BatteryChargingController *)self shouldShowRCLCard];
  v33 = [(BatteryChargingController *)self recommendationAnalyticsDictionary];
  v34 = v33;
  if (v32)
  {
    [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isShownRecommendation"];

    v35 = [(BatteryChargingController *)self recommendedChargingLimitCard];
    [v43 addObject:v35];
  }

  else
  {
    v36 = [v33 objectForKeyedSubscript:@"isShownRecommendation"];

    if (v36)
    {
      goto LABEL_28;
    }

    v35 = [(BatteryChargingController *)self recommendationAnalyticsDictionary];
    [v35 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isShownRecommendation"];
  }

LABEL_28:
  v37 = [(BatteryChargingController *)self obcToggleGroup];
  [v43 addObjectsFromArray:v37];

  return v43;
}

- (void)setAboutChargingLimitLink
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v2 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v2 = BatteryUILocalization(@"CHARGING_LIMIT_URL");
  }

  v5 = v2;
  v3 = [NSURL URLWithString:v2];
  v4 = +[UIApplication sharedApplication];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:&stru_163F90];
}

- (id)defaults
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.batteryui.charging"];

  return v2;
}

- (id)chargingLimitSlider
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v3 setIdentifier:@"CHARGING_LIMIT_SLIDER_IDENTIFIER"];
  [v3 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v3 setProperty:&off_1735E0 forKey:@"PLSegmentedLabelSliderCellMaxValueKey"];
  [v3 setProperty:&off_1735F8 forKey:@"PLSegmentedLabelSliderCellMinValueKey"];
  [v3 setProperty:&off_173610 forKey:@"PLSegmentedLabelSliderCellSegmentCountKey"];
  v4 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v3 setProperty:v4 forKey:PSTableCellHeightKey];

  [v3 setProperty:self forKey:@"PLSegmentedLabelSliderCellDelegateKey"];

  return v3;
}

- (float)getSegmentedControlValue
{
  v3 = [(BatteryChargingController *)self chargingClient];
  v9 = 0;
  v4 = [v3 getMCLLimitWithError:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = [(BatteryChargingController *)self BHUILog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_110328();
    }

LABEL_9:

    v7 = 0.0;
    goto LABEL_10;
  }

  if (v4 - 80 > 0x14 || v4 != 5 * ((205 * v4) >> 10))
  {
    v6 = [(BatteryChargingController *)self BHUILog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_110398();
    }

    goto LABEL_9;
  }

  v7 = v4;
LABEL_10:

  return v7;
}

- (void)setSegmentedControlValue:(float)a3
{
  if (a3 > 100.0 || a3 < 80.0 || (-858993459 * a3 + 429496729) >= 0x33333333)
  {
    v7 = [(BatteryChargingController *)self BHUILog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_11040C();
    }
  }

  else
  {
    [(BatteryChargingController *)self getSegmentedControlValue];
    if (v8 != a3)
    {
      if (a3 == 100.0)
      {
        v9 = [(BatteryChargingController *)self BHUILog];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10[0] = 67109120;
          v10[1] = 100;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "MCL limit being set to MAX: %d", v10, 8u);
        }

        [(BatteryChargingController *)self showLimitToFullAlert];
      }

      else
      {

        [(BatteryChargingController *)self setChargeLimit:a3];
      }
    }
  }
}

- (void)setChargeLimit:(unint64_t)a3
{
  if ([(BatteryChargingController *)self shouldShowRCLCard])
  {
    [(BatteryChargingController *)self removeRCLCard];
  }

  if (a3 == 100)
  {
    v5 = 1;
  }

  else
  {
    [(BatteryChargingController *)self getSegmentedControlValue];
    v5 = v6 == 100.0;
  }

  v7 = [(BatteryChargingController *)self defaults];
  [v7 setDouble:@"PRIOR_MCL_LIMIT_KEY" forKey:a3];

  v8 = [(BatteryChargingController *)self chargingClient];
  v20 = 0;
  v9 = [v8 setMCLLimit:a3 error:&v20];
  v10 = v20;

  v11 = [(BatteryChargingController *)self BHUILog];
  v12 = v11;
  if (!v9 || v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_110488();
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = a3;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "MCL set to %d", buf, 8u);
    }

    v13 = [NSNumber numberWithInt:a3];
    v14 = [(BatteryChargingController *)self interactionAnalyticsDictionary];
    [v14 setObject:v13 forKeyedSubscript:@"value"];

    v15 = [(BatteryChargingController *)self interactionAnalyticsDictionary];
    v16 = [v15 objectForKeyedSubscript:@"action"];

    if (!v16)
    {
      v17 = [(BatteryChargingController *)self interactionAnalyticsDictionary];
      [v17 setObject:@"sliderInteracted" forKeyedSubscript:@"action"];
    }

    block[5] = _NSConcreteStackBlock;
    block[6] = 3221225472;
    block[7] = sub_F1D4;
    block[8] = &unk_163870;
    block[9] = self;
    AnalyticsSendEventLazy();
    if (v5)
    {
      v18 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F24C;
      block[3] = &unk_163FF8;
      block[4] = self;
      dispatch_after(v18, &_dispatch_main_q, block);
    }
  }
}

- (float)getHighlightValue
{
  if (+[BatteryUIResourceClass inDemoMode])
  {
    v3 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUICTL_RecommendedChargeLimit"];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 intValue];
      goto LABEL_11;
    }
  }

  v6 = [(BatteryChargingController *)self chargingClient];
  v11 = 0;
  v7 = [v6 currentRecommendedChargeLimitWithError:&v11];
  v4 = v11;

  if (v4)
  {
    v8 = [(BatteryChargingController *)self BHUILog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1104F0();
    }

LABEL_10:

    v5 = 0.0;
    goto LABEL_11;
  }

  v9 = [(BatteryChargingController *)self BHUILog];
  v8 = v9;
  if ((v7 - 101) <= 0xFFFFFFFFFFFFFFEALL)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_110558();
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Recommended limit returned as: %d", buf, 8u);
  }

  v5 = v7;
LABEL_11:

  return v5;
}

- (id)recommendedChargingLimitCard
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v3 setIdentifier:@"CHARGING_LIMIT_RECOMMENDATION_CARD"];
  [v3 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v4 = BatteryUILocalization(@"RECOMMENDED_CHARGE_LIMIT");
  }

  [v3 setProperty:v4 forKey:@"ClosableActionCardViewCellTitleKey"];

  [(BatteryChargingController *)self getHighlightValue];
  v6 = v5;
  v7 = [NSString alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v8 = BatteryUILocalization(@"RECOMMENDED_CHARGE_LIMIT_INFO");
  }

  v9 = [PLBatteryUIUtilities localizedStringWithPercentage:v6];
  v10 = [v7 initWithFormat:v8, v9];

  [v3 setProperty:v10 forKey:@"ClosableActionCardViewCellSubtitleKey"];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v11 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v11 = BatteryUILocalization(@"SET_RECOMMENDED_CHARGE_LIMIT");
  }

  [v3 setProperty:v11 forKey:@"ClosableActionCardViewCellActionTitleKey"];

  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_F894;
  v19[3] = &unk_164020;
  objc_copyWeak(&v20, &location);
  v12 = objc_retainBlock(v19);
  [v3 setProperty:v12 forKey:@"ClosableActionCardViewCellActionKey"];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_F8D4;
  v17[3] = &unk_164020;
  objc_copyWeak(&v18, &location);
  v13 = objc_retainBlock(v17);
  [v3 setProperty:v13 forKey:@"ClosableActionCardViewCellCloseKey"];

  v14 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v3 setProperty:v14 forKey:PSTableCellHeightKey];

  v15 = [(BatteryChargingController *)self BHUILog];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v6;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Recommended charge limit card shown with: %d", buf, 8u);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v3;
}

- (void)setAsRecommended
{
  v3 = [(BatteryChargingController *)self interactionAnalyticsDictionary];
  [v3 setObject:@"setToRecommendationTapped" forKeyedSubscript:@"action"];

  [(BatteryChargingController *)self getHighlightValue];
  [(BatteryChargingController *)self moveToValue:v4];

  [(BatteryChargingController *)self removeRCLCard];
}

- (void)moveToValue:(unint64_t)a3
{
  v6 = [(BatteryChargingController *)self specifierForID:@"CHARGING_LIMIT_SLIDER_IDENTIFIER"];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  [v6 setProperty:v5 forKey:@"PLSegmentedLabelSliderCellMoveToValueKey"];

  [(BatteryChargingController *)self reloadSpecifierID:@"CHARGING_LIMIT_SLIDER_IDENTIFIER"];
}

- (void)removeRCLCard
{
  [(BatteryChargingController *)self removeSpecifierID:@"CHARGING_LIMIT_RECOMMENDATION_CARD" animated:0];
  [(BatteryChargingController *)self getHighlightValue];
  v4 = v3;
  v5 = [(BatteryChargingController *)self defaults];
  v6 = v4;
  [v5 setDouble:@"HAS_DISMISSED_CHARGE_LIMIT_RECOMMENDATION" forKey:v6];

  v7 = [(BatteryChargingController *)self BHUILog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Removed RCL banner with recommendation value: %f", &v8, 0xCu);
  }
}

- (BOOL)shouldShowRCLCard
{
  [(BatteryChargingController *)self getHighlightValue];
  v4 = v3;
  v5 = [(BatteryChargingController *)self defaults];
  [v5 doubleForKey:@"HAS_DISMISSED_CHARGE_LIMIT_RECOMMENDATION"];
  v7 = v6;

  if (v4 == 0.0)
  {
    v9 = 1;
  }

  else
  {
    v8 = v7;
    v9 = v4 == v8;
  }

  if (v9)
  {
    v10 = [(BatteryChargingController *)self BHUILog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v4;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Recommendation not shown for value: %f", &v13, 0xCu);
    }

    return 0;
  }

  else
  {
    [(BatteryChargingController *)self getSegmentedControlValue];
    return v4 < v11;
  }
}

- (id)obcToggleGroup
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"OBC_TOGGLE_GROUP"];
  [v3 addObject:v4];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v5 = BatteryUILocalization(@"SC_TITLE");
  }

  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setSmartChargingSwitchState:" get:"refreshSmartChargingSwitchState:" detail:0 cell:6 edit:0];

  [v6 setIdentifier:@"OBC_TOGGLE_SPECIFIER"];
  [v6 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
  v7 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v6 setObject:v7 forKeyedSubscript:PSTableCellHeightKey];

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
  [v3 addObject:v6];

  return v3;
}

- (id)refreshSmartChargingSwitchState:(id)a3
{
  v4 = a3;
  [(BatteryChargingController *)self getSegmentedControlValue];
  v6 = [NSNumber numberWithInt:v5 == 100];
  [v4 setObject:v6 forKeyedSubscript:PSEnabledKey];

  v7 = [(BatteryChargingController *)self chargingClient];
  v17 = 0;
  v8 = [v7 isSmartChargingCurrentlyEnabled:&v17];
  v9 = v17;
  [(BatteryChargingController *)self setSmartChargingState:v8];

  if (v9)
  {
    v10 = [(BatteryChargingController *)self BHUILog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1105CC();
    }
  }

  v11 = [(BatteryChargingController *)self specifierForID:@"OBC_TOGGLE_GROUP"];
  v12 = [(BatteryChargingController *)self localizedObcFooter];
  [v11 setObject:v12 forKeyedSubscript:PSFooterTextGroupKey];

  if ([(BatteryChargingController *)self smartChargingState]== &dword_0 + 1)
  {
    [(BatteryChargingController *)self getSegmentedControlValue];
    v14 = v13 == 100.0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [NSNumber numberWithInt:v14];

  return v15;
}

- (id)localizedObcFooter
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v3 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v3 = BatteryUILocalization(@"CHARGING_OPTIMIZED_BATTERY_CHARGING_FOOTER_WITH_CHARGE_LIMIT");
  }

  v4 = [PLBatteryUIUtilities localizedStringWithPercentage:100.0];
  v5 = [PLBatteryUIUtilities localizedStringWithPercentage:80.0];
  v6 = [NSString stringWithFormat:v3, v4, v5];

  if ([(BatteryChargingController *)self smartChargingState]== &dword_0 + 3)
  {
    v7 = +[NSCalendar currentCalendar];
    v8 = objc_alloc_init(NSDateFormatter);
    v9 = +[NSLocale currentLocale];
    [v8 setLocale:v9];

    if (+[PLBatteryUIUtilities is24HourClock])
    {
      v10 = @"H:mm";
    }

    else
    {
      v10 = @"h:mm a";
    }

    [v8 setLocalizedDateFormatFromTemplate:v10];
    v11 = objc_alloc_init(NSDateComponents);
    [v11 setHour:6];
    v12 = [v7 dateFromComponents:v11];
    v13 = [v8 stringFromDate:v12];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v14 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v14 = BatteryUILocalization(@"SC_FOOTER_TEXT_TEMP_DISABLE_ADDITION");
    }

    v15 = [NSString stringWithFormat:v14, v13];

    v16 = [NSString stringWithFormat:@"%@ %@", v6, v15];

    v6 = v16;
  }

  return v6;
}

- (void)setSmartChargingSwitchState:(id)a3
{
  if ([a3 BOOLValue])
  {
    v4 = [(BatteryChargingController *)self BHUILog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User enabled smart charging", buf, 2u);
    }

    v5 = [(BatteryChargingController *)self chargingClient];
    v11 = 0;
    v6 = [v5 enableSmartCharging:&v11];
    v7 = v11;

    v8 = [(BatteryChargingController *)self BHUILog];
    v9 = v8;
    if (!v6 || v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10FE80();
      }

      ADClientAddValueForScalarKey();
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Smart charging enabled", v10, 2u);
      }

      ADClientAddValueForScalarKey();
      ADClientSetValueForScalarKey();
    }

    [(BatteryChargingController *)self reloadSpecifierID:@"OBC_TOGGLE_GROUP"];
  }

  else
  {

    [(BatteryChargingController *)self showOBCToOffAlert];
  }
}

- (void)showLimitToFullAlert
{
  v3 = [NSString alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v4 = BatteryUILocalization(@"CHARGING_LIMIT_TO_FULL_ALERT_BODY");
  }

  v5 = [PLBatteryUIUtilities localizedStringWithPercentage:100.0];
  v6 = [v3 initWithFormat:v4, v5];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v7 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v7 = BatteryUILocalization(@"CHARGING_LIMIT_TO_FULL_ALERT_TITLE");
  }

  v8 = [UIAlertController alertControllerWithTitle:v7 message:v6 preferredStyle:1];

  v9 = [NSString alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v10 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v10 = BatteryUILocalization(@"CHARGING_LIMIT_TO_FULL_ALERT_SET_TO_FULL");
  }

  v11 = [PLBatteryUIUtilities localizedStringWithPercentage:100.0];
  v12 = [v9 initWithFormat:v10, v11];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_109CC;
  v20[3] = &unk_163898;
  v20[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v20];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v14 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v14 = BatteryUILocalization(@"CHARGING_LIMIT_TO_FULL_ALERT_CANCEL");
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10AA8;
  v19[3] = &unk_163898;
  v19[4] = self;
  v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v19];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v16 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v16 = BatteryUILocalization(@"CHARGING_LIMIT_TO_FULL_ALERT_ALLOW_ONCE");
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10B98;
  v18[3] = &unk_163898;
  v18[4] = self;
  v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:v18];

  [v8 addAction:v17];
  [v8 addAction:v13];
  [v8 addAction:v15];
  [v8 setPreferredAction:v17];
  [(BatteryChargingController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)logRecommendationAnalytics
{
  v3 = [(BatteryChargingController *)self recommendationAnalyticsDictionary];
  v4 = [v3 objectForKeyedSubscript:@"isShownRecommendation"];

  if (v4)
  {
    [(BatteryChargingController *)self getSegmentedControlValue];
    v6 = [NSNumber numberWithInt:v5];
    v7 = [(BatteryChargingController *)self recommendationAnalyticsDictionary];
    [v7 setObject:v6 forKeyedSubscript:@"setValue"];

    [(BatteryChargingController *)self getHighlightValue];
    v9 = [NSNumber numberWithInt:v8];
    v10 = [(BatteryChargingController *)self recommendationAnalyticsDictionary];
    [v10 setObject:v9 forKeyedSubscript:@"recommendationValue"];

    v11 = [(BatteryChargingController *)self recommendationAnalyticsDictionary];
    v12 = [v11 copy];

    v13 = v12;
    AnalyticsSendEventLazy();
  }
}

- (void)applicationWillSuspend
{
  [(BatteryChargingController *)self logRecommendationAnalytics];
  v3.receiver = self;
  v3.super_class = BatteryChargingController;
  [(BatteryChargingController *)&v3 applicationWillSuspend];
}

- (void)reloadSpecifierID:(id)a3
{
  v4 = a3;
  v5 = [(BatteryChargingController *)self specifierForID:@"CHARGING_LIMIT_SLIDER_IDENTIFIER"];
  v6 = [(BatteryChargingController *)self cachedCellForSpecifierID:@"CHARGING_LIMIT_SLIDER_IDENTIFIER"];
  [v6 frame];
  v8 = [NSNumber numberWithDouble:v7];
  v9 = PSTableCellHeightKey;
  [v5 setObject:v8 forKeyedSubscript:PSTableCellHeightKey];

  v11.receiver = self;
  v11.super_class = BatteryChargingController;
  [(BatteryChargingController *)&v11 reloadSpecifierID:v4];

  v10 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v5 setObject:v10 forKeyedSubscript:v9];
}

- (BatteryChargingController)init
{
  v12.receiver = self;
  v12.super_class = BatteryChargingController;
  v2 = [(BatteryChargingController *)&v12 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.batteryui.health", "");
    if (!v3)
    {
      v3 = &_os_log_default;
      v4 = &_os_log_default;
    }

    objc_storeStrong(&v2->_BHUILog, v3);
    v5 = [PowerUISmartChargeClient alloc];
    v6 = [v5 initWithClientName:PowerUISmartChargeClientSettings];
    chargingClient = v2->_chargingClient;
    v2->_chargingClient = v6;

    v8 = objc_opt_new();
    [(BatteryChargingController *)v2 setInteractionAnalyticsDictionary:v8];

    v9 = objc_opt_new();
    [(BatteryChargingController *)v2 setRecommendationAnalyticsDictionary:v9];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v10 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v10 = BatteryUILocalization(@"CHARGING_TITLE_CHARGING");
    }

    [(BatteryChargingController *)v2 setTitle:v10];
  }

  return v2;
}

- (void)updateCleanEnergyChargingState
{
  v3 = [(BatteryChargingController *)self chargingClient];
  v8 = 0;
  v4 = [v3 isCECCurrentlyEnabled:&v8];
  v5 = v8;

  v6 = [(BatteryChargingController *)self BHUILog];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_110980();
    }

    [(BatteryChargingController *)self setSmartChargingState:1];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Got clean energy charging state: %lu", buf, 0xCu);
    }

    [(BatteryChargingController *)self setCleanChargingState:v4];
  }
}

- (void)showOBCToOffAlert
{
  v3 = [(BatteryChargingController *)self BHUILog];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v4 = BatteryUILocalization(@"SC_ALERT_TITLE");
  }

  v5 = [UIAlertController alertControllerWithTitle:v4 message:0 preferredStyle:1];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v6 = BatteryUILocalization(@"SC_ALERT_DISABLE");
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_15568;
  v17[3] = &unk_163898;
  v17[4] = self;
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v17];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v8 = BatteryUILocalization(@"SC_ALERT_LEAVE_ON");
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_15678;
  v14[3] = &unk_164190;
  v9 = v3;
  v15 = v9;
  v16 = self;
  v10 = [UIAlertAction actionWithTitle:v8 style:0 handler:v14];

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v11 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v11 = BatteryUILocalization(@"SC_ALERT_TEMP_DISABLE");
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_156EC;
  v13[3] = &unk_163898;
  v13[4] = self;
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:v13];

  [v5 addAction:v12];
  [v5 addAction:v7];
  [v5 addAction:v10];
  [v5 setPreferredAction:v12];
  [(BatteryChargingController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if ([v7 section])
    {
      v8 = [(BatteryChargingController *)self BHUILog];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_110B54(v7);
      }

LABEL_46:

      goto LABEL_47;
    }

    v47.receiver = self;
    v47.super_class = BatteryChargingController;
    [(BatteryChargingController *)&v47 tableView:v6 didSelectRowAtIndexPath:v7];
    v9 = [(BatteryChargingController *)self BHUILog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_110BD4(v7);
    }

    v10 = [(BatteryChargingController *)self state];
    v11 = &_s7SwiftUI24ButtonStyleConfigurationV9isPressedSbvg_ptr;
    if ([v7 row])
    {
      if ([v7 row] == &dword_0 + 1)
      {
        v12 = [(BatteryChargingController *)self BHUILog];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_110CF0();
        }

        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"FIXED_FOOTER"), +[BatteryUIResourceClass containerPath], (v13 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v14 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"FIXED_FOOTER"];
          v13 = BatteryUILocalization(v14);
        }

        v15 = [NSNumberFormatter localizedStringFromNumber:&off_174D40 numberStyle:3];
        v8 = [NSString stringWithFormat:v13, v15];

        [(BatteryChargingController *)self setState:1];
        AnalyticsSendEventLazy();
        goto LABEL_37;
      }

      if ([v7 row] != &dword_0 + 2)
      {
        v8 = &stru_16CDB8;
LABEL_37:
        v28 = [(BatteryChargingController *)self groupSpecifier];
        [v28 setProperty:v8 forKey:PSFooterTextGroupKey];

        v29 = v11[459];
        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v30 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v30 = BatteryUILocalization(@"LEARN_MORE_LINK");
        }

        v31 = [v29 stringWithFormat:@"%@ %@", v8, v30];

        v32 = [(BatteryChargingController *)self BHUILog];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_110D58();
        }

        v33 = [(BatteryChargingController *)self groupSpecifier];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        [v33 setProperty:v35 forKey:PSFooterCellClassGroupKey];

        v36 = [(BatteryChargingController *)self groupSpecifier];
        [v36 setProperty:v31 forKey:PSFooterHyperlinkViewTitleKey];

        v37 = [(BatteryChargingController *)self groupSpecifier];
        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v38 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v38 = BatteryUILocalization(@"LEARN_MORE_LINK");
        }

        v48.location = [v31 rangeOfString:v38];
        v39 = NSStringFromRange(v48);
        [v37 setProperty:v39 forKey:PSFooterHyperlinkViewLinkRangeKey];

        v40 = [(BatteryChargingController *)self groupSpecifier];
        v41 = [NSValue valueWithNonretainedObject:self];
        [v40 setProperty:v41 forKey:PSFooterHyperlinkViewTargetKey];

        v42 = [(BatteryChargingController *)self groupSpecifier];
        [v42 setProperty:@"setLearnMoreLink" forKey:PSFooterHyperlinkViewActionKey];

        v43 = [(BatteryChargingController *)self groupSpecifier];
        [(BatteryChargingController *)self reloadSpecifier:v43];

        v8 = v31;
        goto LABEL_46;
      }

      v21 = [(BatteryChargingController *)self BHUILog];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_110C54();
      }

      [(BatteryChargingController *)self setSetTempFooter:0];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"OFF_FOOTER"), +[BatteryUIResourceClass containerPath], (v8 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v22 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"OFF_FOOTER"];
        v8 = BatteryUILocalization(v22);
      }

      if (!v10)
      {
        v44 = [(BatteryChargingController *)self BHUILog];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_110CBC();
        }

        [(BatteryChargingController *)self showOBCToOffAlert];
        goto LABEL_46;
      }

      v23 = [(BatteryChargingController *)self chargingClient];
      v46 = 0;
      v24 = [v23 disableSmartCharging:&v46];
      v17 = v46;

      v25 = [(BatteryChargingController *)self chargingClient];
      v45 = 0;
      v26 = [v25 disableMCL:&v45];
      v18 = v45;

      v11 = &_s7SwiftUI24ButtonStyleConfigurationV9isPressedSbvg_ptr;
      if (!v24 || !v26 || v17 | v18)
      {
        v27 = [(BatteryChargingController *)self BHUILog];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_110C88();
        }
      }

      v19 = self;
      v20 = 2;
    }

    else
    {
      v16 = [(BatteryChargingController *)self BHUILog];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_110D24();
      }

      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v17 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v17 = BatteryUILocalization(@"SC_FOOTER_TEXT");
      }

      v18 = [NSNumberFormatter localizedStringFromNumber:&off_174D40 numberStyle:3];
      v8 = [NSString stringWithFormat:v17, v18];
      v19 = self;
      v20 = 0;
    }

    [(BatteryChargingController *)v19 setState:v20];

    goto LABEL_37;
  }

LABEL_47:
}

- (void)setLearnMoreLink
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"LEARN_MORE_URL"), +[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v2 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"LEARN_MORE_URL"];
    v5 = BatteryUILocalization(v2);
  }

  v3 = [NSURL URLWithString:v5];
  v4 = +[UIApplication sharedApplication];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:&stru_164210];
}

- (id)cleanEnergyChargingGroupSpecifier
{
  v3 = +[NSMutableArray array];
  v4 = [(BatteryChargingController *)self chargingClient];
  if ([v4 isCECSupported])
  {
    v5 = [PSSpecifier groupSpecifierWithID:0];
    [v3 addObject:v5];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v6 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v6 = BatteryUILocalization(@"CLEAN_ENERGY_TITLE");
    }

    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setCleanChargingSwitchState:" get:"getCleanChargingSwitchState" detail:0 cell:6 edit:0];

    [v7 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v7 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
    v8 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
    [v7 setObject:v8 forKeyedSubscript:PSTableCellHeightKey];

    [v7 setIdentifier:@"CEC_TOGGLE_IDENTIFIER"];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v9 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v9 = BatteryUILocalization(@"CLEAN_ENERGY_FOOTER");
    }

    v10 = [(BatteryChargingController *)self cleanChargingState];
    v11 = &_s7SwiftUI24ButtonStyleConfigurationV9isPressedSbvg_ptr;
    if (v10 == 3)
    {
      v32 = v3;
      v12 = +[NSCalendar currentCalendar];
      v13 = objc_alloc_init(NSDateFormatter);
      v14 = +[NSLocale currentLocale];
      [v13 setLocale:v14];

      if (+[PLBatteryUIUtilities is24HourClock])
      {
        v15 = @"H:mm";
      }

      else
      {
        v15 = @"h:mm a";
      }

      [v13 setLocalizedDateFormatFromTemplate:v15];
      v16 = objc_alloc_init(NSDateComponents);
      [v16 setHour:6];
      v31 = v12;
      v30 = [v12 dateFromComponents:v16];
      v17 = [v13 stringFromDate:?];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v18 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v18 = BatteryUILocalization(@"CEC_FOOTER_TEXT_TEMP_DISABLE_ADDITION");
      }

      v19 = [NSString stringWithFormat:v18, v17];

      v20 = [NSString stringWithFormat:@"%@ %@", v9, v19];

      v9 = v20;
      v11 = &_s7SwiftUI24ButtonStyleConfigurationV9isPressedSbvg_ptr;
      v3 = v32;
    }

    v21 = v11[459];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v22 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v22 = BatteryUILocalization(@"CEC_LINK");
    }

    v23 = [v21 stringWithFormat:@"%@ %@", v9, v22];

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [v5 setProperty:v25 forKey:PSFooterCellClassGroupKey];

    [v5 setProperty:v23 forKey:PSFooterHyperlinkViewTitleKey];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v26 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v26 = BatteryUILocalization(@"CEC_LINK");
    }

    v34.location = [v23 rangeOfString:v26];
    v27 = NSStringFromRange(v34);
    [v5 setProperty:v27 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v28 = [NSValue valueWithNonretainedObject:self];
    [v5 setProperty:v28 forKey:PSFooterHyperlinkViewTargetKey];

    [v5 setProperty:@"setAboutCleanEnergyChargingLink" forKey:PSFooterHyperlinkViewActionKey];
    [v3 addObject:v7];
  }

  else if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_110DCC();
  }

  return v3;
}

- (void)setAboutCleanEnergyChargingLink
{
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v3 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v3 = BatteryUILocalization(@"CEC_URL");
  }

  if (os_log_type_enabled(self->_BHUILog, OS_LOG_TYPE_DEBUG))
  {
    sub_110E00();
  }

  v4 = [NSURL URLWithString:v3];
  v5 = +[UIApplication sharedApplication];
  [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:&stru_164250];
}

- (id)getCleanChargingSwitchState
{
  if ([(BatteryChargingController *)self cleanChargingState]== &dword_0 + 1)
  {
    return &off_173640;
  }

  else
  {
    return &off_173628;
  }
}

- (void)setCleanChargingSwitchState:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = [(BatteryChargingController *)self BHUILog];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "User enabled clean energy charging", buf, 2u);
    }

    v7 = [(BatteryChargingController *)self chargingClient];
    v36 = 0;
    v8 = [v7 enableCEC:&v36];
    v9 = v36;

    v10 = [(BatteryChargingController *)self BHUILog];
    v11 = v10;
    if (!v8 || v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_110E74();
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Clean energy charging enabled", buf, 2u);
    }

    [(BatteryChargingController *)self reloadSpecifiers];
  }

  else
  {
    v12 = [(BatteryChargingController *)self chargingClient];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v13 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v13 = BatteryUILocalization(@"CEC_ALERT_TITLE");
    }

    v9 = [UIAlertController alertControllerWithTitle:v13 message:0 preferredStyle:1];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v14 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v14 = BatteryUILocalization(@"CEC_ALERT_DISABLE");
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_16D94;
    v32[3] = &unk_164298;
    v15 = v6;
    v33 = v15;
    v16 = v12;
    v34 = v16;
    v35 = self;
    v17 = [UIAlertAction actionWithTitle:v14 style:0 handler:v32];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v18 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v18 = BatteryUILocalization(@"CEC_ALERT_LEAVE_ON");
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_16EA8;
    v29[3] = &unk_164190;
    v19 = v15;
    v30 = v19;
    v31 = self;
    v20 = [UIAlertAction actionWithTitle:v18 style:0 handler:v29];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v21 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v21 = BatteryUILocalization(@"CEC_ALERT_TEMP_DISABLE");
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_16F14;
    v25[3] = &unk_164298;
    v26 = v19;
    v27 = v16;
    v28 = self;
    v22 = v16;
    v23 = v19;
    v24 = [UIAlertAction actionWithTitle:v21 style:0 handler:v25];

    [v9 addAction:v24];
    [v9 addAction:v17];
    [v9 addAction:v20];
    [v9 setPreferredAction:v24];
    [(BatteryChargingController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (id)specifiers
{
  v3 = [(BatteryChargingController *)self BHUILog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_110FAC();
  }

  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v5)
  {
    v6 = +[NSMutableArray array];
    v61.receiver = self;
    v61.super_class = BatteryChargingController;
    v7 = [(BatteryChargingController *)&v61 specifiers];
    [v6 addObjectsFromArray:v7];

    v8 = [v6 firstObject];
    v9 = [(BatteryChargingController *)self chargingClient];
    v60 = 0;
    v10 = [v9 isMCLCurrentlyEnabled:&v60];
    v58 = v60;
    [(BatteryChargingController *)self setManualChargingState:v10];

    v11 = [(BatteryChargingController *)self chargingClient];
    v59 = 0;
    v12 = [v11 isSmartChargingCurrentlyEnabled:&v59];
    v57 = v59;
    [(BatteryChargingController *)self setSmartChargingState:v12];

    v13 = [(BatteryChargingController *)self BHUILog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_110FE0(self);
    }

    v14 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
    if ([(BatteryChargingController *)self manualChargingState])
    {
      v15 = [(BatteryChargingController *)self BHUILog];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_111088();
      }

      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"FIXED_FOOTER"), +[BatteryUIResourceClass containerPath], (v16 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v23 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"FIXED_FOOTER"];
        v16 = BatteryUILocalization(v23);
      }

      v20 = [NSNumberFormatter localizedStringFromNumber:&off_174D40 numberStyle:3];
      v21 = [NSString stringWithFormat:v16, v20];
      v22 = 1;
      v14 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
    }

    else
    {
      v17 = [(BatteryChargingController *)self smartChargingState];
      v18 = [(BatteryChargingController *)self BHUILog];
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
      if (v17 == 1)
      {
        if (v19)
        {
          sub_1110F0();
        }

        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v16 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v16 = BatteryUILocalization(@"SC_FOOTER_TEXT");
        }

        v20 = [NSNumberFormatter localizedStringFromNumber:&off_174D40 numberStyle:3];
        v21 = [NSString stringWithFormat:v16, v20];
        v22 = 0;
      }

      else
      {
        if (v19)
        {
          sub_1110BC();
        }

        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[UIDevice modelSpecificLocalizedStringKeyForKey:](UIDevice, "modelSpecificLocalizedStringKeyForKey:", @"OFF_FOOTER"), +[BatteryUIResourceClass containerPath], (v21 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v36 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"OFF_FOOTER"];
          v21 = BatteryUILocalization(v36);
        }

        v37 = [(BatteryChargingController *)self BHUILog];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [(BatteryChargingController *)self smartChargingState];
          *buf = 134217984;
          v63 = v38;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Smart charging temp disabled: %lu", buf, 0xCu);
        }

        if ([(BatteryChargingController *)self smartChargingState]!= &dword_0 + 3)
        {
          v22 = 2;
LABEL_22:
          [(BatteryChargingController *)self setState:v22];
          if (![v14 + 752 inDemoMode] || (objc_msgSend(v14 + 752, "containerPath"), (v24 = _CFPreferencesCopyValueWithContainer()) == 0))
          {
            v24 = BatteryUILocalization(@"LEARN_MORE_LINK");
          }

          v25 = [NSString stringWithFormat:@"%@ %@", v21, v24];

          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          [v8 setProperty:v27 forKey:PSFooterCellClassGroupKey];

          [v8 setProperty:v25 forKey:PSFooterHyperlinkViewTitleKey];
          if (![v14 + 752 inDemoMode] || (objc_msgSend(v14 + 752, "containerPath"), (v28 = _CFPreferencesCopyValueWithContainer()) == 0))
          {
            v28 = BatteryUILocalization(@"LEARN_MORE_LINK");
          }

          v65.location = [v25 rangeOfString:v28];
          v29 = NSStringFromRange(v65);
          [v8 setProperty:v29 forKey:PSFooterHyperlinkViewLinkRangeKey];

          v30 = [NSValue valueWithNonretainedObject:self];
          [v8 setProperty:v30 forKey:PSFooterHyperlinkViewTargetKey];

          [v8 setProperty:@"setLearnMoreLink" forKey:PSFooterHyperlinkViewActionKey];
          if (_os_feature_enabled_impl())
          {
            v31 = [(BatteryChargingController *)self chargingLimitGroup];
            [v6 addObjectsFromArray:v31];
          }

          if (+[PLBatteryUIBackendModel shouldShowChargingController])
          {
            [(BatteryChargingController *)self updateCleanEnergyChargingState];
            v32 = [(BatteryChargingController *)self cleanEnergyChargingGroupSpecifier];
            [v6 addObjectsFromArray:v32];
          }

          [(BatteryChargingController *)self setGroupSpecifier:v8];
          v33 = *&self->PSListItemsController_opaque[v4];
          *&self->PSListItemsController_opaque[v4] = v6;
          v34 = v6;

          v5 = *&self->PSListItemsController_opaque[v4];
          goto LABEL_33;
        }

        v39 = [(BatteryChargingController *)self BHUILog];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v63) = 3;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Smart Charging Temp state: %d", buf, 8u);
        }

        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v16 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v16 = BatteryUILocalization(@"SC_FOOTER_TEXT");
        }

        v20 = [NSNumberFormatter localizedStringFromNumber:&off_174D40 numberStyle:3];
        v55 = [NSString stringWithFormat:v16, v20];

        v40 = objc_alloc_init(NSDateComponents);
        v41 = [(BatteryChargingController *)self BHUILog];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = v40;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Components: %@", buf, 0xCu);
        }

        [v40 setHour:6];
        v42 = [(BatteryChargingController *)self BHUILog];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v40 hour];
          *buf = 134217984;
          v63 = v43;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "Components Hours: %ld", buf, 0xCu);
        }

        v56 = v40;

        v44 = +[NSCalendar currentCalendar];
        v45 = [(BatteryChargingController *)self BHUILog];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = v44;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "Calendar: %@", buf, 0xCu);
        }

        v46 = objc_alloc_init(NSDateFormatter);
        v47 = +[NSLocale currentLocale];
        [v46 setLocale:v47];

        if (+[PLBatteryUIUtilities is24HourClock])
        {
          v48 = @"H:mm";
        }

        else
        {
          v48 = @"h:mm a";
        }

        [v46 setLocalizedDateFormatFromTemplate:v48];
        v54 = v44;
        v52 = [v44 dateFromComponents:v56];
        v53 = v46;
        v49 = [v46 stringFromDate:?];
        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v50 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v50 = BatteryUILocalization(@"SC_FOOTER_TEXT_TEMP_DISABLE_ADDITION");
        }

        v51 = [NSString stringWithFormat:v50, v49];

        v21 = [NSString stringWithFormat:@"%@ %@", v55, v51];

        v14 = &OBJC_IVAR___PLBatteryUITimeUsageCell__bottomMarginConstraints;
        v22 = 2;
      }
    }

    goto LABEL_22;
  }

LABEL_33:

  return v5;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setAccessibilityIdentifier:@"LEARN_MORE_FOOTER"];
  }
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = BatteryChargingController;
  [(BatteryChargingController *)&v2 viewDidLoad];
  AnalyticsSendEventLazy();
  notify_post([@"com.apple.powerlogd.logBatteryChargingUIVisit" UTF8String]);
}

@end