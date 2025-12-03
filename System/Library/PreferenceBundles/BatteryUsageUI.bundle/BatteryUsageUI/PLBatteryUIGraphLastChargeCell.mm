@interface PLBatteryUIGraphLastChargeCell
+ (BOOL)isChargeTimeEnabled;
+ (id)dateComponentFormatter;
- (PLBatteryUIGraphLastChargeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (PLBatteryUITapDelegate)delegate;
- (id)getLabelTextForSlowCharger;
- (id)getLabelWithTitle:(id)title withRGB:(id)b withFont:(id)font andTextAlignment:(int64_t)alignment;
- (id)timeEstimateStringWithChargeTarget:(int)target;
- (void)dealloc;
- (void)handleTapGesture:(id)gesture;
- (void)infoSymbolTapped:(id)tapped;
- (void)layoutSubviews;
- (void)populatePausedChargingStrings:(id)strings percentLabel:(id)label lastChargeText:(id)text lastChargeDate:(id)date;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
- (void)updateLabelsWithSpecifier:(id)specifier;
@end

@implementation PLBatteryUIGraphLastChargeCell

- (id)getLabelWithTitle:(id)title withRGB:(id)b withFont:(id)font andTextAlignment:(int64_t)alignment
{
  fontCopy = font;
  bCopy = b;
  titleCopy = title;
  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v12 setFont:fontCopy];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setAccessibilityIdentifier:titleCopy];

  [v12 setTextColor:bCopy];
  [v12 setTextAlignment:alignment];
  v13 = +[UIColor clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setHidden:0];
  [v12 setLineBreakMode:0];
  [v12 setNumberOfLines:0];

  return v12;
}

- (PLBatteryUIGraphLastChargeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  identifierCopy = identifier;
  specifierCopy = specifier;
  v28.receiver = self;
  v28.super_class = PLBatteryUIGraphLastChargeCell;
  v10 = [(PLBatteryUIGraphLastChargeCell *)&v28 initWithStyle:style reuseIdentifier:identifierCopy specifier:specifierCopy];
  v11 = v10;
  if (v10)
  {
    contentView = [(PLBatteryUIGraphLastChargeCell *)v10 contentView];
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

    [contentView addSubview:v11->_lastChargeTitleLabel];
    [contentView addSubview:v11->_timeStrLabel];
    [(PLBatteryUIGraphLastChargeCell *)v11 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    v29[0] = v11->_lastChargeTitleLabel;
    v29[1] = v11->_timeStrLabel;
    v21 = [NSArray arrayWithObjects:v29 count:2];
    [contentView setAccessibilityElements:v21];

    [(PLBatteryUIGraphLastChargeCell *)v11 refreshCellContentsWithSpecifier:specifierCopy];
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
    lastChargeTitleLabel = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    [lastChargeTitleLabel sizeToFit];

    percentLabel = [(PLBatteryUIGraphLastChargeCell *)self percentLabel];
    [percentLabel sizeToFit];

    timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
    [timeStrLabel sizeToFit];

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
    lastChargeTitleLabel2 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    percentLabel2 = [(PLBatteryUIGraphLastChargeCell *)self percentLabel];
    v13 = [NSLayoutConstraint constraintWithItem:lastChargeTitleLabel2 attribute:7 relatedBy:0 toItem:percentLabel2 attribute:7 multiplier:1.2 constant:0.0];

    timeStrLabel2 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
    percentLabel3 = [(PLBatteryUIGraphLastChargeCell *)self percentLabel];
    v16 = [NSLayoutConstraint constraintWithItem:timeStrLabel2 attribute:7 relatedBy:0 toItem:percentLabel3 attribute:7 multiplier:1.2 constant:0.0];

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

- (void)infoSymbolTapped:(id)tapped
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

- (void)populatePausedChargingStrings:(id)strings percentLabel:(id)label lastChargeText:(id)text lastChargeDate:(id)date
{
  stringsCopy = strings;
  labelCopy = label;
  textCopy = text;
  dateCopy = date;
  v12 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_112770();
  }

  v13 = [stringsCopy propertyForKey:@"PLBatteryUIPausedChargingKey"];
  v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIPausedChargingStateKey"];
  intValue = [v14 intValue];

  v16 = [v13 objectForKeyedSubscript:@"PLBatteryUIPausedChargingCurrentPercentageKey"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v13 objectForKeyedSubscript:@"PLBatteryUIPausedChargingFixedChargeLimitKey"];

  if (v19)
  {
    v20 = [v13 objectForKeyedSubscript:@"PLBatteryUIPausedChargingFixedChargeLimitKey"];
    intValue2 = [v20 intValue];

    v22 = intValue2;
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

  v111 = dateCopy;

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
      intValue = [v36 intValue];
      v38 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v126 = intValue;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Overriding Paused Charging State with BUICTL: %d", buf, 8u);
      }
    }
  }

  v39 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v126 = intValue;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Paused Charging State: %d", buf, 8u);
  }

  v40 = objc_opt_new();
  v41 = [NSNumber numberWithInt:intValue];
  [v40 setObject:v41 forKeyedSubscript:@"type"];

  v42 = v40;
  AnalyticsSendEventLazy();
  if (intValue <= 400)
  {
    if (intValue > 204)
    {
      if (intValue > 300)
      {
        if (intValue != 301)
        {
          if (intValue != 302)
          {
            if (intValue == 306)
            {
              v43 = stringsCopy;
              v51 = +[BatteryUIResourceClass get_log_handle_bui];
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                sub_112C3C();
              }

              lastChargeTitleLabel = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
              [NSString stringWithFormat:v122, v118];
              goto LABEL_81;
            }

            goto LABEL_174;
          }

          v110 = stringsCopy;
          v101 = +[BatteryUIResourceClass get_log_handle_bui];
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
          {
            sub_112CD8();
          }

          AnalyticsSendEventLazy();
          lastChargeTitleLabel2 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
          [NSString stringWithFormat:v122, v118];
          v102 = LABEL_158:;
          [lastChargeTitleLabel2 setText:v102];

          timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
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
          [timeStrLabel setText:v67];

LABEL_173:
          stringsCopy = v110;
          v86 = v111;
          goto LABEL_178;
        }

        v91 = stringsCopy;
        v92 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
        {
          sub_112D0C();
        }

        AnalyticsSendEventLazy();
        lastChargeTitleLabel3 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        v118 = [NSString stringWithFormat:v122, v118];
        [lastChargeTitleLabel3 setText:v118];

        stringsCopy = v91;
        v86 = v111;
        if (v120 && [v120 length])
        {
          timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
          v120 = [NSString stringWithFormat:v115, v120];
LABEL_151:
          v100 = v120;
          [timeStrLabel setText:v120];

          stringsCopy = v91;
          goto LABEL_178;
        }

        goto LABEL_179;
      }

      v110 = stringsCopy;
      if (intValue == 205)
      {
        v79 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          sub_112CA4();
        }
      }

      else
      {
        if (intValue != 206)
        {
          goto LABEL_174;
        }

        v79 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          sub_112C70();
        }
      }

      lastChargeTitleLabel4 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
      v121 = [NSString stringWithFormat:v33, v121];
      [lastChargeTitleLabel4 setText:v121];
    }

    else
    {
      if (intValue <= 200)
      {
        if (intValue == 100)
        {
          v110 = stringsCopy;
          v90 = +[BatteryUIResourceClass get_log_handle_bui];
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            sub_112998();
          }

          goto LABEL_176;
        }

        if (intValue != 200)
        {
          goto LABEL_174;
        }

        goto LABEL_100;
      }

      v110 = stringsCopy;
      if (intValue == 201)
      {
        v90 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          sub_112A34();
        }

        goto LABEL_176;
      }

      if (intValue == 202)
      {
        v90 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          sub_112A68();
        }

        goto LABEL_176;
      }

      if (intValue != 203)
      {
LABEL_174:
        v110 = stringsCopy;
        v90 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          sub_112DA8();
        }

LABEL_176:

        AnalyticsSendEventLazy();
        lastChargeTitleLabel5 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        [NSString stringWithFormat:textCopy, labelCopy];
        goto LABEL_177;
      }

      v46 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        sub_112A9C();
      }

      AnalyticsSendEventLazy();
      lastChargeTitleLabel6 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v48 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v48 = BatteryUILocalization(@"CHARGING_COMPLETE_CONNECTED");
      }

      [lastChargeTitleLabel6 setText:v48];
    }

    timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
    v107 = [PLBatteryUIUtilities getRelativeDateStringForDate:v119];
    [timeStrLabel setText:v107];

    goto LABEL_173;
  }

  if (intValue > 502)
  {
    if (intValue <= 506)
    {
      if (intValue == 503 || intValue == 505)
      {
        v43 = stringsCopy;
        v80 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          sub_112B04();
        }

        AnalyticsSendEventLazy();
        lastChargeTitleLabel7 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        labelCopy = [NSString stringWithFormat:textCopy, labelCopy];
        [lastChargeTitleLabel7 setText:labelCopy];

        timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
        [timeStrLabel setText:v117];
        goto LABEL_130;
      }

      if (intValue == 506)
      {
        v43 = stringsCopy;
        v44 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_112AD0();
        }

        lastChargeTitleLabel = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        [NSString stringWithFormat:textCopy, labelCopy];
        v52 = LABEL_81:;
        [lastChargeTitleLabel setText:v52];

        timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
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
        [timeStrLabel setText:v54];

LABEL_130:
        stringsCopy = v43;
        goto LABEL_131;
      }

      goto LABEL_174;
    }

    switch(intValue)
    {
      case 0x1FB:
        v110 = stringsCopy;
        v96 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          sub_112A00();
        }

        break;
      case 0x1FC:
        v110 = stringsCopy;
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

          lastChargeTitleLabel8 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
          getLabelTextForSlowCharger = [(PLBatteryUIGraphLastChargeCell *)self getLabelTextForSlowCharger];
          [lastChargeTitleLabel8 setAttributedText:getLabelTextForSlowCharger];

          lastChargeTitleLabel9 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
          v60 = +[UIColor systemOrangeColor];
          [lastChargeTitleLabel9 setTextColor:v60];

          lastChargeTitleLabel10 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
          [lastChargeTitleLabel10 setUserInteractionEnabled:1];

          timeStrLabel = [[UITapGestureRecognizer alloc] initWithTarget:self action:"infoSymbolTapped:"];
          [timeStrLabel setNumberOfTapsRequired:1];
          lastChargeTitleLabel11 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
          [lastChargeTitleLabel11 addGestureRecognizer:timeStrLabel];

          goto LABEL_113;
        }

LABEL_100:
        v69 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          sub_112D40();
        }

        AnalyticsSendEventLazy();
        lastChargeTitleLabel12 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        v1182 = [NSString stringWithFormat:v122, v118];
        [lastChargeTitleLabel12 setText:v1182];

        v72 = [stringsCopy objectForKeyedSubscript:@"PLBatteryUIGraphLastChargeCellSelectedChargeLimit"];
        timeStrLabel = v72;
        if (v72)
        {
          if (v18 < [v72 intValue])
          {
            [stringsCopy objectForKeyedSubscript:@"PLBatteryUIGraphLastChargeCellSelectedChargeLimit"];
            v74 = v73 = stringsCopy;
            timeStrLabel3 = -[PLBatteryUIGraphLastChargeCell timeToChargeTo:](self, "timeToChargeTo:", [v74 intValue]);

            stringsCopy = v73;
            if (timeStrLabel3)
            {
              timeStrLabel2 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
              v77 = timeStrLabel2;
              v78 = timeStrLabel3;
LABEL_114:
              [timeStrLabel2 setText:v78];

LABEL_131:
              v86 = v111;
LABEL_178:

              goto LABEL_179;
            }
          }
        }

LABEL_113:
        timeStrLabel3 = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
        v77 = [PLBatteryUIUtilities getRelativeDateStringForDate:v119];
        timeStrLabel2 = timeStrLabel3;
        v78 = v77;
        goto LABEL_114;
      default:
        goto LABEL_174;
    }

    lastChargeTitleLabel5 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    [NSString stringWithFormat:v34, v121];
    v108 = LABEL_177:;
    [lastChargeTitleLabel5 setText:v108];

    timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
    v86 = v111;
    v109 = [PLBatteryUIUtilities getRelativeDateStringForDate:v111];
    [timeStrLabel setText:v109];

    stringsCopy = v110;
    goto LABEL_178;
  }

  if (intValue <= 405)
  {
    if (intValue != 401)
    {
      if (intValue != 402)
      {
        goto LABEL_174;
      }

      v110 = stringsCopy;
      v63 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        sub_112BD4();
      }

      AnalyticsSendEventLazy();
      lastChargeTitleLabel13 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
      v65 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PAUSED_TLC"];
      v66 = BatteryUILocalization(v65);
      [lastChargeTitleLabel13 setText:v66];

      timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
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
    lastChargeTitleLabel14 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v99 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v99 = BatteryUILocalization(@"PAUSED_OBC");
    }

    [lastChargeTitleLabel14 setText:v99];

    v86 = v111;
    if (v120 && [v120 length])
    {
      timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
      [NSString stringWithFormat:v115, v120];
      goto LABEL_150;
    }
  }

  else
  {
    if (intValue != 406)
    {
      if (intValue == 501)
      {
        v43 = stringsCopy;
        v87 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
        {
          sub_112B6C();
        }

        AnalyticsSendEventLazy();
        lastChargeTitleLabel15 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
        labelCopy2 = [NSString stringWithFormat:textCopy, labelCopy];
        [lastChargeTitleLabel15 setText:labelCopy2];

        timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
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

      if (intValue != 502)
      {
        goto LABEL_174;
      }

      v110 = stringsCopy;
      v49 = +[BatteryUIResourceClass get_log_handle_bui];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        sub_112B38();
      }

      AnalyticsSendEventLazy();
      lastChargeTitleLabel2 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
      [NSString stringWithFormat:textCopy, labelCopy];
      goto LABEL_158;
    }

    v83 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      sub_112BA0();
    }

    lastChargeTitleLabel16 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v85 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v85 = BatteryUILocalization(@"PAUSED_CEC");
    }

    [lastChargeTitleLabel16 setText:v85];

    v86 = v111;
    if (v116 && [v116 length])
    {
      timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
      [NSString stringWithFormat:v114, v116];
      v120 = LABEL_150:;
      v91 = stringsCopy;
      goto LABEL_151;
    }
  }

LABEL_179:
}

- (void)updateLabelsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v6 = [WeakRetained propertyForKey:@"PLBatteryUIGraphTapDelegateWrapperKey"];

  if (v6)
  {
    v7 = [specifierCopy propertyForKey:@"PLBatteryUIGraphTapDelegateWrapperKey"];
    buiViewController = [v7 buiViewController];
    [(PLBatteryUIGraphLastChargeCell *)self setDelegate:buiViewController];
  }

  if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v9 = _CFPreferencesCopyValueWithContainer()) == 0))
  {
    v9 = BatteryUILocalization(@"LAST_CHARGE");
  }

  v10 = [specifierCopy propertyForKey:@"PLBatteryUILastChargeKey"];
  v11 = [v10 objectForKeyedSubscript:@"PLBatteryUILevelKey"];
  [v11 doubleValue];
  v12 = [PLBatteryUIUtilities localizedStringWithPercentage:?];

  v13 = [v10 objectForKeyedSubscript:@"PLBatteryUITimestampKey"];
  unsignedLongValue = [v13 unsignedLongValue];

  v15 = [NSDate dateWithTimeIntervalSince1970:unsignedLongValue];
  v16 = _os_feature_enabled_impl();
  v17 = +[BatteryUIResourceClass get_log_handle_bui];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v18)
    {
      sub_112E10();
    }

    [(PLBatteryUIGraphLastChargeCell *)self populatePausedChargingStrings:specifierCopy percentLabel:v12 lastChargeText:v9 lastChargeDate:v15];
  }

  else
  {
    if (v18)
    {
      sub_112DDC();
    }

    lastChargeTitleLabel = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
    v20 = [NSString stringWithFormat:v9, v12];
    [lastChargeTitleLabel setText:v20];

    timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
    v22 = [PLBatteryUIUtilities getRelativeDateStringForDate:v15];
    [timeStrLabel setText:v22];
  }

  [(PLBatteryUIGraphLastChargeCell *)self setNeedsUpdateConstraints];
  [(PLBatteryUIGraphLastChargeCell *)self setNeedsDisplay];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = PLBatteryUIGraphLastChargeCell;
  specifierCopy = specifier;
  [(PLBatteryUIGraphLastChargeCell *)&v5 refreshCellContentsWithSpecifier:specifierCopy];
  [(PLBatteryUIGraphLastChargeCell *)self updateLabelsWithSpecifier:specifierCopy, v5.receiver, v5.super_class];
}

- (void)handleTapGesture:(id)gesture
{
  delegate = [(PLBatteryUIGraphLastChargeCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(PLBatteryUIGraphLastChargeCell *)self delegate];
    [delegate2 didTappedBar:&off_173718];
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
  lastChargeTitleLabel = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
  [lastChargeTitleLabel setText:&stru_16CDB8];

  v5 = +[UIColor labelColor];
  lastChargeTitleLabel2 = [(PLBatteryUIGraphLastChargeCell *)self lastChargeTitleLabel];
  [lastChargeTitleLabel2 setColor:v5];

  percentLabel = [(PLBatteryUIGraphLastChargeCell *)self percentLabel];
  [percentLabel setText:&stru_16CDB8];

  timeStrLabel = [(PLBatteryUIGraphLastChargeCell *)self timeStrLabel];
  [timeStrLabel setText:&stru_16CDB8];
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

- (id)timeEstimateStringWithChargeTarget:(int)target
{
  v5 = BatteryUILocalization(@"CHRAGE_TIME_ESTIMATE");
  estimatedChargedDate = [(PLBatteryUIGraphLastChargeCell *)self estimatedChargedDate];
  v7 = +[NSDate date];
  [estimatedChargedDate timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = +[PLBatteryUIGraphLastChargeCell dateComponentFormatter];
  v11 = [v10 stringFromTimeInterval:v9];

  if (target == 100)
  {
    v12 = BatteryUILocalization(@"NO_LIMIT_CHARGE_TARGET");
  }

  else
  {
    v13 = [NSString alloc];
    v14 = BatteryUILocalization(@"CHARGE_TARGET");
    v15 = [PLBatteryUIUtilities localizedStringWithPercentage:target];
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