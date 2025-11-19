@interface PLBatteryUIGraphLastChargeCell
+ (BOOL)isChargeTimeEnabled;
+ (id)dateComponentFormatter;
- (PLBatteryUIGraphLastChargeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (PLBatteryUITapDelegate)delegate;
- (id)getLabelTextForSlowCharger;
- (id)getLabelWithTitle:(id)a3 withRGB:(id)a4 withFont:(id)a5 andTextAlignment:(int64_t)a6;
- (id)timeEstimateStringWithChargeTarget:(int)a3;
- (void)dealloc;
- (void)handleTapGesture:(id)a3;
- (void)infoSymbolTapped:(id)a3;
- (void)layoutSubviews;
- (void)populatePausedChargingStrings:(id)a3 percentLabel:(id)a4 lastChargeText:(id)a5 lastChargeDate:(id)a6;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
- (void)updateLabelsWithSpecifier:(id)a3;
@end

@implementation PLBatteryUIGraphLastChargeCell

- (id)getLabelWithTitle:(id)a3 withRGB:(id)a4 withFont:(id)a5 andTextAlignment:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v12 setFont:v9];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setAccessibilityIdentifier:v11];

  [v12 setTextColor:v10];
  [v12 setTextAlignment:a6];
  v13 = +[UIColor clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setHidden:0];
  [v12 setLineBreakMode:0];
  [v12 setNumberOfLines:0];

  return v12;
}

- (PLBatteryUIGraphLastChargeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v28.receiver = self;
  v28.super_class = PLBatteryUIGraphLastChargeCell;
  v10 = [(PLBatteryUIGraphLastChargeCell *)&v28 initWithStyle:a3 reuseIdentifier:v8 specifier:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [(PLBatteryUIGraphLastChargeCell *)v10 contentView];
    v13 = +[UIColor systemGrayColor];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v15 = [(PLBatteryUIGraphLastChargeCell *)v11 getLabelWithTitle:&stru_16CDB8 withRGB:v13 withFont:v14 andTextAlignment:+[PLBatteryUIUtilities localizedLeftTextAlignment]];
    timeStrLabel = v11->_timeStrLabel;
    v11->_timeStrLabel = v15;

    v17 = +[UIColor _labelColor];
    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v19 = [(PLBatteryUIGraphLastChargeCell *)v11 getLabelWithTitle:&stru_16CDB8 withRGB:v17 withFont:v18 andTextAlignment:+[PLBatteryUIUtilities localizedLeftTextAlignment]];
    lastChargeTitleLabel = v11->_lastChargeTitleLabel;
    v11->_lastChargeTitleLabel = v19;

    [v12 addSubview:v11->_lastChargeTitleLabel];
    [v12 addSubview:v11->_timeStrLabel];
    [(PLBatteryUIGraphLastChargeCell *)v11 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    v29[0] = v11->_lastChargeTitleLabel;
    v29[1] = v11->_timeStrLabel;
    v21 = [NSArray arrayWithObjects:v29 count:2];
    [v12 setAccessibilityElements:v21];

    [(PLBatteryUIGraphLastChargeCell *)v11 refreshCellContentsWithSpecifier:v9];
    v22 = [[UITapGestureRecognizer alloc] initWithTarget:v11 action:"handleTapGesture:"];
    [v22 setNumberOfTapsRequired:1];
    [(PLBatteryUIGraphLastChargeCell *)v11 addGestureRecognizer:v22];
    [(PLBatteryUIGraphLastChargeCell *)v11 setConstraintsAdded:0];
    if (+[PLBatteryUIGraphLastChargeCell isChargeTimeEnabled])
    {
      v11->_chargeTimeEstimationChangedToken = 0;
      objc_initWeak(&location, v11);
      v23 = &_dispatch_main_q;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_2570C;
      handler[3] = &unk_163E28;
      objc_copyWeak(&v26, &location);
      notify_register_dispatch("com.apple.batteryintelligence.ChargeEstimateChanged", &v11->_chargeTimeEstimationChangedToken, &_dispatch_main_q, handler);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }

  return v11;
}

- (void)layoutSubviews
{
  if (_os_feature_enabled_impl())
  {
    [(PLBatteryUIGraphLastChargeCell *)self setSeparatorStyle:1];
    [(PLBatteryUIGraphLastChargeCell *)self setSeparatorInset:0.0, 0.0, 0.0, 0.0];
  }

  v3.receiver = self;
  v3.super_class = PLBatteryUIGraphLastChargeCell;
  [(PLBatteryUIGraphLastChargeCell *)&v3 layoutSubviews];
}

- (void)updateConstraints
{
  if ([(PLBatteryUIGraphLastChargeCell *)self constraintsAdded])
  {
    v19.receiver = self;
    v19.super_class = PLBatteryUIGraphLastChargeCell;
    [(PLBatteryUIGraphLastChargeCell *)&v19 updateConstraints];
  }

  else
  {
    v3 = +[NSMutableArray array];
    [(PLBatteryUIGraphLastChargeCell *)self setSeparatorStyle:1];
    [(PLBatteryUIGraphLastChargeCell *)self setSeparatorInset:0.0, 15.0, 0.0, 0.0];
    v4 = _NSDictionaryOfVariableBindings(@"_lastChargeTitleLabel,_timeStrLabel", self->_lastChargeTitleLabel, self->_timeStrLabel, 0);
    v5 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    [v5 sizeToFit];

    v6 = [(PLBatteryUIGraphLastChargeCell *)self percentLabel];
    [v6 sizeToFit];

    v7 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
    [v7 sizeToFit];

    v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-15-[_lastChargeTitleLabel]|", 0, 0, v4);
    v8 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-15-[_timeStrLabel]|", 0, 0, v4);
    if (_os_feature_enabled_impl())
    {
      v9 = @"V:|-12-[_lastChargeTitleLabel]-3-[_timeStrLabel]-9-|";
    }

    else
    {
      v9 = @"V:|-9-[_lastChargeTitleLabel]-3-[_timeStrLabel]-9-|";
    }

    v10 = [NSLayoutConstraint constraintsWithVisualFormat:v9 options:0 metrics:0 views:v4];
    v11 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    v12 = [(PLBatteryUIGraphLastChargeCell *)self percentLabel];
    v13 = [NSLayoutConstraint constraintWithItem:v11 attribute:7 relatedBy:0 toItem:v12 attribute:7 multiplier:1.2 constant:0.0];

    v14 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
    v15 = [(PLBatteryUIGraphLastChargeCell *)self percentLabel];
    v16 = [NSLayoutConstraint constraintWithItem:v14 attribute:7 relatedBy:0 toItem:v15 attribute:7 multiplier:1.2 constant:0.0];

    [v3 addObjectsFromArray:v17];
    [v3 addObjectsFromArray:v8];
    [v3 addObjectsFromArray:v10];
    [v3 addObject:v13];
    [v3 addObject:v16];
    [NSLayoutConstraint activateConstraints:v3];
    [(PLBatteryUIGraphLastChargeCell *)self setConstraintsAdded:1];
    v18.receiver = self;
    v18.super_class = PLBatteryUIGraphLastChargeCell;
    [(PLBatteryUIGraphLastChargeCell *)&v18 updateConstraints];
  }
}

- (id)getLabelTextForSlowCharger
{
  v2 = [NSAttributedString alloc];
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v3 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v3 = BatteryUILocalization(@"CURRENT_SLOW_CHARGING");
  }

  v4 = [v2 initWithString:v3];

  v5 = objc_alloc_init(NSTextAttachment);
  v6 = [UIImage systemImageNamed:@"info.circle.fill"];
  v7 = +[UIColor systemOrangeColor];
  v8 = [v6 imageWithTintColor:v7];
  [v5 setImage:v8];

  v9 = [NSAttributedString attributedStringWithAttachment:v5];
  v10 = [NSMutableAttributedString localizedAttributedStringWithFormat:v4, v9];

  return v10;
}

- (void)infoSymbolTapped:(id)a3
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1126C4();
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v4 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v4 = BatteryUILocalization(@"SLOW_CHARGING_URL");
  }

  v5 = [NSURL URLWithString:v4];
  v6 = +[UIApplication sharedApplication];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_25DF0;
  v8[3] = &unk_164948;
  v9 = v4;
  v7 = v4;
  [v6 openURL:v5 options:&__NSDictionary0__struct completionHandler:v8];
}

- (void)populatePausedChargingStrings:(id)a3 percentLabel:(id)a4 lastChargeText:(id)a5 lastChargeDate:(id)a6
{
  v10 = a3;
  v124 = a4;
  v123 = a5;
  v11 = a6;
  v12 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_112770();
  }

  v13 = [v10 propertyForKey:@"PLBatteryUIPausedChargingKey"];
  v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIPausedChargingStateKey"];
  v15 = [v14 intValue];

  v16 = [v13 objectForKeyedSubscript:@"PLBatteryUIPausedChargingCurrentPercentageKey"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v13 objectForKeyedSubscript:@"PLBatteryUIPausedChargingFixedChargeLimitKey"];

  if (v19)
  {
    v20 = [v13 objectForKeyedSubscript:@"PLBatteryUIPausedChargingFixedChargeLimitKey"];
    v21 = [v20 intValue];

    v22 = v21;
  }

  else
  {
    v22 = 80.0;
  }

  v118 = [PLBatteryUIUtilities localizedStringWithPercentage:v18];
  v119 = +[NSDate date];
  v23 = [v13 objectForKey:@"PLBatteryUIScheduleOBCKey"];

  if (v23)
  {
    v24 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1127A4();
    }

    v25 = [v13 objectForKeyedSubscript:@"PLBatteryUIScheduleOBCKey"];
    v26 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_1127D8();
    }

    v120 = [PLBatteryUIUtilities getLocalizedTimeStringFromFutureDate:v25];
    v27 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_112848();
    }
  }

  else
  {
    v120 = 0;
    v25 = 0;
  }

  v28 = [v13 objectForKeyedSubscript:@"PLBatteryUIScheduleCECKey"];

  if (v28)
  {
    v112 = [v13 objectForKeyedSubscript:@"PLBatteryUIScheduleCECKey"];
    v116 = [PLBatteryUIUtilities getLocalizedTimeStringFromFutureDate:?];
    v29 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_112848();
    }
  }

  else
  {
    v116 = 0;
    v112 = 0;
  }

  v113 = v25;
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v30 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v30 = BatteryUILocalization(@"CEC_SCHEDULE");
  }

  v114 = v30;
  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v122 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v122 = BatteryUILocalization(@"CURRENTLY_CHARGING");
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v31 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v31 = BatteryUILocalization(@"OBC_SCHEDULE");
  }

  v115 = v31;
  v117 = BatteryUILocalization(@"PREVIOUS_CAMERA_STREAMING");
  v32 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_1128B8();
  }

  v111 = v11;

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v33 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v33 = BatteryUILocalization(@"CURRENT_CHARGING_LIMITED_FIXED");
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v34 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v34 = BatteryUILocalization(@"CHARGING_LIMITED_FIXED");
  }

  v121 = [PLBatteryUIUtilities localizedStringWithPercentage:v22];
  v35 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    sub_112928();
  }

  if (+[PLBatteryUIUtilities inDemoMode])
  {
    v36 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUI_DEMO_PausedCharging"];
    v37 = v36;
    if (v36)
    {
      v15 = [v36 intValue];
      v38 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v126 = v15;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Overriding Paused Charging State with BUICTL: %d", buf, 8u);
      }
    }
  }

  v39 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v126 = v15;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Paused Charging State: %d", buf, 8u);
  }

  v40 = objc_opt_new();
  v41 = [NSNumber numberWithInt:v15];
  [v40 setObject:v41 forKeyedSubscript:@"type"];

  v42 = v40;
  AnalyticsSendEventLazy();
  if (v15 <= 400)
  {
    if (v15 > 204)
    {
      if (v15 > 300)
      {
        if (v15 != 301)
        {
          if (v15 != 302)
          {
            if (v15 == 306)
            {
              v43 = v10;
              v51 = +[BatteryUIResourceClass get_log_handle_bui];
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                sub_112C3C();
              }

              v45 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
              [NSString stringWithFormat:v122, v118];
              goto LABEL_81;
            }

            goto LABEL_174;
          }

          v110 = v10;
          v101 = +[BatteryUIResourceClass get_log_handle_bui];
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
          {
            sub_112CD8();
          }

          AnalyticsSendEventLazy();
          v50 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
          [NSString stringWithFormat:v122, v118];
          v102 = LABEL_158:;
          [v50 setText:v102];

          v53 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
          if (+[BatteryUIResourceClass inDemoMode])
          {
            [UIDevice modelSpecificLocalizedStringKeyForKey:@"PREVIOUS_TLC"];
            +[BatteryUIResourceClass containerPath];
            v67 = _CFPreferencesCopyValueWithContainer();
            if (v67)
            {
              goto LABEL_162;
            }
          }

          v68 = @"PREVIOUS_TLC";
LABEL_161:
          v103 = [UIDevice modelSpecificLocalizedStringKeyForKey:v68];
          v67 = BatteryUILocalization(v103);

LABEL_162:
          [v53 setText:v67];

LABEL_173:
          v10 = v110;
          v86 = v111;
          goto LABEL_178;
        }

        v91 = v10;
        v92 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
        {
          sub_112D0C();
        }

        AnalyticsSendEventLazy();
        v93 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        v94 = [NSString stringWithFormat:v122, v118];
        [v93 setText:v94];

        v10 = v91;
        v86 = v111;
        if (v120 && [v120 length])
        {
          v53 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
          v95 = [NSString stringWithFormat:v115, v120];
LABEL_151:
          v100 = v95;
          [v53 setText:v95];

          v10 = v91;
          goto LABEL_178;
        }

        goto LABEL_179;
      }

      v110 = v10;
      if (v15 == 205)
      {
        v79 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          sub_112CA4();
        }
      }

      else
      {
        if (v15 != 206)
        {
          goto LABEL_174;
        }

        v79 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          sub_112C70();
        }
      }

      v105 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
      v106 = [NSString stringWithFormat:v33, v121];
      [v105 setText:v106];
    }

    else
    {
      if (v15 <= 200)
      {
        if (v15 == 100)
        {
          v110 = v10;
          v90 = +[BatteryUIResourceClass get_log_handle_bui];
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            sub_112998();
          }

          goto LABEL_176;
        }

        if (v15 != 200)
        {
          goto LABEL_174;
        }

        goto LABEL_100;
      }

      v110 = v10;
      if (v15 == 201)
      {
        v90 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          sub_112A34();
        }

        goto LABEL_176;
      }

      if (v15 == 202)
      {
        v90 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          sub_112A68();
        }

        goto LABEL_176;
      }

      if (v15 != 203)
      {
LABEL_174:
        v110 = v10;
        v90 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          sub_112DA8();
        }

LABEL_176:

        AnalyticsSendEventLazy();
        v104 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        [NSString stringWithFormat:v123, v124];
        goto LABEL_177;
      }

      v46 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        sub_112A9C();
      }

      AnalyticsSendEventLazy();
      v47 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v48 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v48 = BatteryUILocalization(@"CHARGING_COMPLETE_CONNECTED");
      }

      [v47 setText:v48];
    }

    v53 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
    v107 = [PLBatteryUIUtilities getRelativeDateStringForDate:v119];
    [v53 setText:v107];

    goto LABEL_173;
  }

  if (v15 > 502)
  {
    if (v15 <= 506)
    {
      if (v15 == 503 || v15 == 505)
      {
        v43 = v10;
        v80 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          sub_112B04();
        }

        AnalyticsSendEventLazy();
        v81 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        v82 = [NSString stringWithFormat:v123, v124];
        [v81 setText:v82];

        v53 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
        [v53 setText:v117];
        goto LABEL_130;
      }

      if (v15 == 506)
      {
        v43 = v10;
        v44 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_112AD0();
        }

        v45 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        [NSString stringWithFormat:v123, v124];
        v52 = LABEL_81:;
        [v45 setText:v52];

        v53 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
        if (+[BatteryUIResourceClass inDemoMode])
        {
          +[BatteryUIResourceClass containerPath];
          v54 = _CFPreferencesCopyValueWithContainer();
          if (v54)
          {
            goto LABEL_129;
          }
        }

        v55 = @"PREVIOUS_CEC";
LABEL_128:
        v54 = BatteryUILocalization(v55);
LABEL_129:
        [v53 setText:v54];

LABEL_130:
        v10 = v43;
        goto LABEL_131;
      }

      goto LABEL_174;
    }

    switch(v15)
    {
      case 0x1FB:
        v110 = v10;
        v96 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          sub_112A00();
        }

        break;
      case 0x1FC:
        v110 = v10;
        v96 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          sub_1129CC();
        }

        break;
      case 0x259:
        if (+[PLModelingUtilities supportsSlowCharging])
        {
          v56 = +[BatteryUIResourceClass get_log_handle_bui];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            sub_112D74();
          }

          v57 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
          v58 = [(PLBatteryUIGraphLastChargeCell *)self getLabelTextForSlowCharger];
          [v57 setAttributedText:v58];

          v59 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
          v60 = +[UIColor systemOrangeColor];
          [v59 setTextColor:v60];

          v61 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
          [v61 setUserInteractionEnabled:1];

          v53 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"infoSymbolTapped:"];
          [v53 setNumberOfTapsRequired:1];
          v62 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
          [v62 addGestureRecognizer:v53];

          goto LABEL_113;
        }

LABEL_100:
        v69 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          sub_112D40();
        }

        AnalyticsSendEventLazy();
        v70 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        v71 = [NSString stringWithFormat:v122, v118];
        [v70 setText:v71];

        v72 = [v10 objectForKeyedSubscript:@"PLBatteryUIGraphLastChargeCellSelectedChargeLimit"];
        v53 = v72;
        if (v72)
        {
          if (v18 < [v72 intValue])
          {
            [v10 objectForKeyedSubscript:@"PLBatteryUIGraphLastChargeCellSelectedChargeLimit"];
            v74 = v73 = v10;
            v75 = -[PLBatteryUIGraphLastChargeCell timeToChargeTo:](self, "timeToChargeTo:", [v74 intValue]);

            v10 = v73;
            if (v75)
            {
              v76 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
              v77 = v76;
              v78 = v75;
LABEL_114:
              [v76 setText:v78];

LABEL_131:
              v86 = v111;
LABEL_178:

              goto LABEL_179;
            }
          }
        }

LABEL_113:
        v75 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
        v77 = [PLBatteryUIUtilities getRelativeDateStringForDate:v119];
        v76 = v75;
        v78 = v77;
        goto LABEL_114;
      default:
        goto LABEL_174;
    }

    v104 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    [NSString stringWithFormat:v34, v121];
    v108 = LABEL_177:;
    [v104 setText:v108];

    v53 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
    v86 = v111;
    v109 = [PLBatteryUIUtilities getRelativeDateStringForDate:v111];
    [v53 setText:v109];

    v10 = v110;
    goto LABEL_178;
  }

  if (v15 <= 405)
  {
    if (v15 != 401)
    {
      if (v15 != 402)
      {
        goto LABEL_174;
      }

      v110 = v10;
      v63 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        sub_112BD4();
      }

      AnalyticsSendEventLazy();
      v64 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
      v65 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PAUSED_TLC"];
      v66 = BatteryUILocalization(v65);
      [v64 setText:v66];

      v53 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
      if (+[BatteryUIResourceClass inDemoMode])
      {
        [UIDevice modelSpecificLocalizedStringKeyForKey:@"RESUME_TEMP"];
        +[BatteryUIResourceClass containerPath];
        v67 = _CFPreferencesCopyValueWithContainer();
        if (v67)
        {
          goto LABEL_162;
        }
      }

      v68 = @"RESUME_TEMP";
      goto LABEL_161;
    }

    v97 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      sub_112C08();
    }

    AnalyticsSendEventLazy();
    v98 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v99 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v99 = BatteryUILocalization(@"PAUSED_OBC");
    }

    [v98 setText:v99];

    v86 = v111;
    if (v120 && [v120 length])
    {
      v53 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
      [NSString stringWithFormat:v115, v120];
      goto LABEL_150;
    }
  }

  else
  {
    if (v15 != 406)
    {
      if (v15 == 501)
      {
        v43 = v10;
        v87 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
        {
          sub_112B6C();
        }

        AnalyticsSendEventLazy();
        v88 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        v89 = [NSString stringWithFormat:v123, v124];
        [v88 setText:v89];

        v53 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
        if (+[BatteryUIResourceClass inDemoMode])
        {
          +[BatteryUIResourceClass containerPath];
          v54 = _CFPreferencesCopyValueWithContainer();
          if (v54)
          {
            goto LABEL_129;
          }
        }

        v55 = @"PREVIOUS_OBC";
        goto LABEL_128;
      }

      if (v15 != 502)
      {
        goto LABEL_174;
      }

      v110 = v10;
      v49 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        sub_112B38();
      }

      AnalyticsSendEventLazy();
      v50 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
      [NSString stringWithFormat:v123, v124];
      goto LABEL_158;
    }

    v83 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      sub_112BA0();
    }

    v84 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v85 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v85 = BatteryUILocalization(@"PAUSED_CEC");
    }

    [v84 setText:v85];

    v86 = v111;
    if (v116 && [v116 length])
    {
      v53 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
      [NSString stringWithFormat:v114, v116];
      v95 = LABEL_150:;
      v91 = v10;
      goto LABEL_151;
    }
  }

LABEL_179:
}

- (void)updateLabelsWithSpecifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v6 = [WeakRetained propertyForKey:@"PLBatteryUIGraphTapDelegateWrapperKey"];

  if (v6)
  {
    v7 = [v4 propertyForKey:@"PLBatteryUIGraphTapDelegateWrapperKey"];
    v8 = [v7 buiViewController];
    [(PLBatteryUIGraphLastChargeCell *)self setDelegate:v8];
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v9 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v9 = BatteryUILocalization(@"LAST_CHARGE");
  }

  v10 = [v4 propertyForKey:@"PLBatteryUILastChargeKey"];
  v11 = [v10 objectForKeyedSubscript:@"PLBatteryUILevelKey"];
  [v11 doubleValue];
  v12 = [PLBatteryUIUtilities localizedStringWithPercentage:?];

  v13 = [v10 objectForKeyedSubscript:@"PLBatteryUITimestampKey"];
  v14 = [v13 unsignedLongValue];

  v15 = [NSDate dateWithTimeIntervalSince1970:v14];
  v16 = _os_feature_enabled_impl();
  v17 = +[BatteryUIResourceClass get_log_handle_bui];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v18)
    {
      sub_112E10();
    }

    [(PLBatteryUIGraphLastChargeCell *)self populatePausedChargingStrings:v4 percentLabel:v12 lastChargeText:v9 lastChargeDate:v15];
  }

  else
  {
    if (v18)
    {
      sub_112DDC();
    }

    v19 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    v20 = [NSString stringWithFormat:v9, v12];
    [v19 setText:v20];

    v21 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
    v22 = [PLBatteryUIUtilities getRelativeDateStringForDate:v15];
    [v21 setText:v22];
  }

  [(PLBatteryUIGraphLastChargeCell *)self setNeedsUpdateConstraints];
  [(PLBatteryUIGraphLastChargeCell *)self setNeedsDisplay];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = PLBatteryUIGraphLastChargeCell;
  v4 = a3;
  [(PLBatteryUIGraphLastChargeCell *)&v5 refreshCellContentsWithSpecifier:v4];
  [(PLBatteryUIGraphLastChargeCell *)self updateLabelsWithSpecifier:v4, v5.receiver, v5.super_class];
}

- (void)handleTapGesture:(id)a3
{
  v4 = [(PLBatteryUIGraphLastChargeCell *)self delegate];

  if (v4)
  {
    v5 = [(PLBatteryUIGraphLastChargeCell *)self delegate];
    [v5 didTappedBar:&off_173718];
  }
}

- (void)prepareForReuse
{
  v3 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "prepareForReuse called on LastChargeCell", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = PLBatteryUIGraphLastChargeCell;
  [(PLBatteryUIGraphLastChargeCell *)&v9 prepareForReuse];
  v4 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
  [v4 setText:&stru_16CDB8];

  v5 = +[UIColor labelColor];
  v6 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
  [v6 setColor:v5];

  v7 = [(PLBatteryUIGraphLastChargeCell *)self percentLabel];
  [v7 setText:&stru_16CDB8];

  v8 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
  [v8 setText:&stru_16CDB8];
}

+ (BOOL)isChargeTimeEnabled
{
  if (qword_187B90 != -1)
  {
    sub_112E44();
  }

  return byte_187B88;
}

+ (id)dateComponentFormatter
{
  if (qword_187BA0 != -1)
  {
    sub_112E58();
  }

  v3 = qword_187B98;

  return v3;
}

- (id)timeEstimateStringWithChargeTarget:(int)a3
{
  v5 = BatteryUILocalization(@"CHRAGE_TIME_ESTIMATE");
  v6 = [(PLBatteryUIGraphLastChargeCell *)self estimatedChargedDate];
  v7 = +[NSDate date];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = +[PLBatteryUIGraphLastChargeCell dateComponentFormatter];
  v11 = [v10 stringFromTimeInterval:v9];

  if (a3 == 100)
  {
    v12 = BatteryUILocalization(@"NO_LIMIT_CHARGE_TARGET");
  }

  else
  {
    v13 = [NSString alloc];
    v14 = BatteryUILocalization(@"CHARGE_TARGET");
    v15 = [PLBatteryUIUtilities localizedStringWithPercentage:a3];
    v12 = [v13 initWithFormat:v14, v15];
  }

  v16 = [[NSString alloc] initWithFormat:v5, v11, v12];

  return v16;
}

- (void)dealloc
{
  notify_cancel(self->_chargeTimeEstimationChangedToken);
  v3.receiver = self;
  v3.super_class = PLBatteryUIGraphLastChargeCell;
  [(PLBatteryUIGraphLastChargeCell *)&v3 dealloc];
}

- (PLBatteryUITapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end