@interface AXAggregateStatistics
+ (void)runStatistics;
- (AXAggregateStatistics)init;
- (id)globalDevicePreferences;
- (void)_logAccessibilityReaderStatistics;
- (void)_logAdaptiveVoiceShortcutsStatistics;
- (void)_logAssistiveTouchMouseStatistics;
- (void)_logBackTapStatistics;
- (void)_logCameraButtonStatistics;
- (void)_logCommandAndControlStatistics;
- (void)_logCommonStatistics;
- (void)_logCustomSoundDetection;
- (void)_logCustomSoundDetectionCustomTonesHaptics;
- (void)_logLaserAXStatistics;
- (void)_logMagnifierStatistics;
- (void)_logPerAppStatistics;
- (void)_logSoundDetectionCustomTonesHaptics;
- (void)_logStatistics;
- (void)_logTextSizes;
- (void)_logVoiceTriggerStatistics;
- (void)_logiOSStatistics;
- (void)_startLogging;
- (void)_updateCommandAndControlPurgability;
@end

@implementation AXAggregateStatistics

+ (void)runStatistics
{
  if (qword_24C38 != -1)
  {
    sub_10870();
  }
}

- (AXAggregateStatistics)init
{
  v11.receiver = self;
  v11.super_class = AXAggregateStatistics;
  v2 = [(AXAggregateStatistics *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("ax-aggd-stats", v3);
    [(AXAggregateStatistics *)v2 setQueue:v4];

    queue = [(AXAggregateStatistics *)v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1764;
    block[3] = &unk_1C678;
    v6 = v2;
    v10 = v6;
    dispatch_async(queue, block);

    v7 = v6;
  }

  return v2;
}

- (void)_startLogging
{
  v3 = +[AXSubsystemAXAggregateLogging sharedInstance];
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v5 = +[AXSubsystemAXAggregateLogging identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v10, 0xCu);
      }
    }
  }

  [(AXAggregateStatistics *)self _logStatistics];
}

- (void)_logCommandAndControlStatistics
{
  v54 = 0;
  v55 = &v54;
  v56 = 0x2050000000;
  v2 = qword_24C50;
  v57 = qword_24C50;
  if (!qword_24C50)
  {
    v49 = _NSConcreteStackBlock;
    v50 = 3221225472;
    v51 = sub_FD48;
    v52 = &unk_1D868;
    v53 = &v54;
    sub_FD48(&v49);
    v2 = v55[3];
  }

  v3 = v2;
  _Block_object_dispose(&v54, 8);
  sharedPreferences = [v2 sharedPreferences];
  alwaysShowOverlayType = [sharedPreferences alwaysShowOverlayType];
  if ([alwaysShowOverlayType isEqualToString:@"NumberedElements"])
  {
    v5 = 1;
  }

  else if ([alwaysShowOverlayType isEqualToString:@"NamedElements"])
  {
    v5 = 3;
  }

  else
  {
    v6 = [alwaysShowOverlayType isEqualToString:@"NumberedGrid"];
    v5 = 2;
    if (!v6)
    {
      v5 = 0;
    }
  }

  v44 = _NSConcreteStackBlock;
  v45 = 3221225472;
  v46 = sub_1E8C;
  v47 = &unk_1C698;
  v48 = v5;
  AnalyticsSendEventLazy();
  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_1F40;
  v42 = &unk_1C6C0;
  v24 = sharedPreferences;
  v43 = v24;
  AnalyticsSendEventLazy();
  v54 = 0;
  v55 = &v54;
  v56 = 0x2050000000;
  v7 = qword_24C60;
  v57 = qword_24C60;
  if (!qword_24C60)
  {
    v49 = _NSConcreteStackBlock;
    v50 = 3221225472;
    v51 = sub_FF10;
    v52 = &unk_1D868;
    v53 = &v54;
    sub_FF10(&v49);
    v7 = v55[3];
  }

  v8 = v7;
  _Block_object_dispose(&v54, 8);
  v26 = objc_alloc_init(v7);
  [v26 setUsedByPreferences:1];
  obj = [v26 nestedCommandGroupsAndItems];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = [obj countByEnumeratingWithState:&v35 objects:v59 count:16];
  if (v29)
  {
    v9 = 0;
    v10 = 0;
    v28 = *v36;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v28)
        {
          v12 = v11;
          objc_enumerationMutation(obj);
          v11 = v12;
        }

        v30 = v11;
        v13 = *(*(&v35 + 1) + 8 * v11);
        if (([v13 isGroup] & 1) == 0)
        {
          v22 = v13;
          _AXAssert();
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        commandsArray = [v13 commandsArray];
        v15 = [commandsArray countByEnumeratingWithState:&v31 objects:v58 count:16];
        if (v15)
        {
          v16 = *v32;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v32 != v16)
              {
                objc_enumerationMutation(commandsArray);
              }

              v18 = *(*(&v31 + 1) + 8 * i);
              if ([v18 isGroup])
              {
                v22 = v13;
                v23 = v18;
                _AXAssert();
              }

              isEnabled = [v18 isEnabled];
              if ([v18 isCustom])
              {
                customType = [v18 customType];
                v21 = [customType isEqualToString:@"RunGesture"];

                v9 |= v21;
              }

              v10 |= isEnabled ^ 1;
            }

            v15 = [commandsArray countByEnumeratingWithState:&v31 objects:v58 count:16];
          }

          while (v15);
        }

        v11 = v30 + 1;
      }

      while ((v30 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v59 count:16];
    }

    while (v29);
  }

  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
}

- (void)_updateCommandAndControlPurgability
{
  v2 = AXLogAggregate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "CommandAndControl Purgability updating", &buf, 2u);
  }

  v3 = _AXSAccessibilityPreferenceDomain();
  v4 = CFPreferencesCopyAppValue(@"LastPurgabilityUpdate", v3);
  if (v4)
  {
    v5 = AXLogAggregate();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "CommandAndControl Purgability was last set non-purgable at %@", &buf, 0xCu);
    }

    v6 = +[NSDate date];
    [v6 timeIntervalSinceDate:v4];
    v8 = v7;

    keyExistsAndHasValidFormat = 0;
    v9 = _AXSAccessibilityPreferenceDomain();
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"AutomationDaysToPreventVoiceControlPurging", v9, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v11 = AppIntegerValue;
      v12 = AXLogAggregate();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "CommandAndControl Purgability Using automation override timeout of %ld days", &buf, 0xCu);
      }

      v13 = (86400000000000 * v11);
    }

    else
    {
      v13 = 2.592e15;
    }

    if (v8 > v13)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v14 = off_24C68;
      v21 = off_24C68;
      if (!off_24C68)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v23 = sub_FF68;
        v24 = &unk_1D868;
        v25 = &v18;
        sub_FF68(&buf);
        v14 = v19[3];
      }

      _Block_object_dispose(&v18, 8);
      if (!v14)
      {
        sub_10884();
        __break(1u);
      }

      v14(0, 1936617575, &__NSArray0__struct);
      v15 = _AXSAccessibilityPreferenceDomain();
      CFPreferencesSetValue(@"LastPurgabilityUpdate", 0, v15, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v16 = AXLogAggregate();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "CommandAndControl assets have been marked as purgable", &buf, 2u);
      }
    }
  }
}

- (void)_logSoundDetectionCustomTonesHaptics
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = +[AXSDSettings sharedInstance];
  supportedSoundDetectionTypes = [v2 supportedSoundDetectionTypes];

  v4 = [supportedSoundDetectionTypes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(supportedSoundDetectionTypes);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = +[AXSDSettings sharedInstance];
        [v9 hasCustomToneForDetector:v8];

        v10 = +[AXSDSettings sharedInstance];
        [v10 hasCustomHapticForDetector:v8];

        AnalyticsSendEventLazy();
      }

      v5 = [supportedSoundDetectionTypes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_logCustomSoundDetection
{
  v2 = +[AXSDSettings sharedInstance];
  decodedKShotDetectors = [v2 decodedKShotDetectors];
  allValues = [decodedKShotDetectors allValues];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = allValues;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        category = [v9 category];
        v11 = [category isEqualToString:AXSDDetectorCategoryAlarm];

        if ((v11 & 1) == 0)
        {
          category2 = [v9 category];
          v13 = [category2 isEqualToString:AXSDDetectorCategoryAnimal];

          if ((v13 & 1) == 0)
          {
            category3 = [v9 category];
            v15 = [category3 isEqualToString:AXSDDetectorCategoryHousehold];

            if ((v15 & 1) == 0)
            {
              category4 = [v9 category];
              [category4 isEqualToString:AXSDDetectorCategoryPeople];
            }
          }
        }

        AnalyticsSendEventLazy();
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

- (void)_logCustomSoundDetectionCustomTonesHaptics
{
  v2 = +[AXSDSettings sharedInstance];
  decodedKShotDetectors = [v2 decodedKShotDetectors];
  allValues = [decodedKShotDetectors allValues];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = allValues;
  obj = [allValues axFilterObjectsUsingBlock:&stru_1C7F0];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        category = [v9 category];
        v11 = +[AXSDSettings sharedInstance];
        [v11 hasCustomToneForKshotDetector:v9];

        v12 = +[AXSDSettings sharedInstance];
        [v12 hasCustomHapticForKshotDetector:v9];

        v13 = category;
        AnalyticsSendEventLazy();
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)_logVoiceTriggerStatistics
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_3348;
  v14 = sub_3358;
  v15 = 0;
  v2 = +[AXSettings sharedInstance];
  assistiveTouchSwitches = [v2 assistiveTouchSwitches];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3360;
  v9[3] = &unk_1C818;
  v9[4] = &v10;
  [assistiveTouchSwitches enumerateObjectsUsingBlock:v9];

  v4 = v11[5];
  v5 = objc_opt_new();
  v6 = [NSNumber numberWithBool:v4 != 0];
  [v5 setObject:v6 forKeyedSubscript:@"enabled"];

  v7 = v11[5];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"name"];
  }

  v8 = v5;
  AnalyticsSendEventLazy();

  _Block_object_dispose(&v10, 8);
}

- (void)_logBackTapStatistics
{
  v2 = +[AXSettings sharedInstance];
  backTapEnabled = [v2 backTapEnabled];

  if (backTapEnabled)
  {
    v4 = +[AXSettings sharedInstance];
    backTapDoubleTapAction = [v4 backTapDoubleTapAction];
    v6 = backTapDoubleTapAction != 0;

    v7 = +[AXSettings sharedInstance];
    backTapTripleTapAction = [v7 backTapTripleTapAction];
    v9 = backTapTripleTapAction != 0;

    v10 = @"System";
  }

  else
  {
    v9 = 0;
    v6 = 0;
    v10 = &stru_1E058;
  }

  v40 = +[NSMutableArray array];
  if (v6)
  {
    v11 = +[AXSettings sharedInstance];
    backTapDoubleTapAction2 = [v11 backTapDoubleTapAction];
    [v40 addObject:backTapDoubleTapAction2];
  }

  if (v9)
  {
    v13 = +[AXSettings sharedInstance];
    backTapTripleTapAction2 = [v13 backTapTripleTapAction];
    [v40 addObject:backTapTripleTapAction2];
  }

  if (_AXSAssistiveTouchScannerEnabled())
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v61 = 0x2020000000;
    v62 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v15 = +[AXSettings sharedInstance];
    assistiveTouchSwitches = [v15 assistiveTouchSwitches];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_3B80;
    v54[3] = &unk_1C840;
    v54[4] = &buf;
    v54[5] = &v55;
    [assistiveTouchSwitches enumerateObjectsUsingBlock:v54];

    v17 = *(v56 + 24);
    if (*(*(&buf + 1) + 24) & 1) != 0 || (v17)
    {
      LOBYTE(v9) = v17 != 0;
      v10 = @"SwitchControl";
      LOBYTE(backTapEnabled) = 1;
      LOBYTE(v6) = *(*(&buf + 1) + 24);
    }

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&buf, 8);
  }

  if (_AXSVoiceOverTouchEnabled())
  {
    v18 = +[VOSCommandResolver resolverForCurrentHost];
    initPreferringUserProfile = [[VOSCommandManager alloc] initPreferringUserProfile];
    v20 = +[VOSGesture BackTapDoubleTap];
    v21 = [initPreferringUserProfile commandForTouchGesture:v20 withResolver:v18];
    v22 = v21 != 0;

    v23 = +[VOSGesture BackTapTripleTap];
    v24 = [initPreferringUserProfile commandForTouchGesture:v23 withResolver:v18];
    v25 = v24 != 0;

    if (v22 || v25)
    {
      LOBYTE(v6) = v22;
    }

    if (v22 || v25)
    {
      LOBYTE(v9) = v25;
    }

    v26 = @"VoiceOver";
    if (!v22 && !v25)
    {
      v26 = v10;
    }

    v10 = v26;

    LOBYTE(backTapEnabled) = (v22 || v25) | backTapEnabled;
  }

  v46 = _NSConcreteStackBlock;
  v47 = 3221225472;
  v48 = sub_3C34;
  v49 = &unk_1C868;
  v51 = backTapEnabled & 1;
  v27 = v10;
  v50 = v27;
  v52 = v6;
  v53 = v9;
  AnalyticsSendEventLazy();
  if (backTapEnabled)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v28 = v40;
    v29 = [v28 countByEnumeratingWithState:&v42 objects:v59 count:16];
    if (v29)
    {
      v30 = *v43;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v41 = *(*(&v42 + 1) + 8 * i);
          AnalyticsSendEventLazy();
        }

        v29 = [v28 countByEnumeratingWithState:&v42 objects:v59 count:16];
      }

      while (v29);
    }

    v32 = AXLogAggregate();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v28;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Back tap actions: %@", &buf, 0xCu);
    }

    v33 = +[AXSettings sharedInstance];
    v34 = [v33 backTapUsageCount] > 0;

    if (v34)
    {
      v35 = +[AXSettings sharedInstance];
      [v35 backTapUsageCount];

      AnalyticsSendEventLazy();
      v36 = AXLogAggregate();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = +[AXSettings sharedInstance];
        v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v37 backTapUsageCount]);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v38;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Resettting back tap usage count due to daily logging: %@", &buf, 0xCu);
      }

      v39 = +[AXSettings sharedInstance];
      [v39 setBackTapUsageCount:0];
    }
  }
}

- (void)_logMagnifierStatistics
{
  v15 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Accessibility.Magnifier"];
  AnalyticsSendEventLazy();
  [v15 setBool:0 forKey:@"peopleDetectionEnabledForAnalytics"];
  v14 = v15;
  AnalyticsSendEventLazy();
  [v14 setBool:0 forKey:@"doorDetectionEnabledForAnalytics"];
  v13 = v14;
  AnalyticsSendEventLazy();
  v12 = v13;
  AnalyticsSendEventLazy();
  v11 = v12;
  AnalyticsSendEventLazy();
  v10 = v11;
  AnalyticsSendEventLazy();
  [v10 setBool:0 forKey:@"pointSpeakEnabledForAnalytics"];
  v9 = v10;
  AnalyticsSendEventLazy();
  v8 = v9;
  AnalyticsSendEventLazy();
  [v8 setBool:0 forKey:@"textDetectionEnabledForAnalytics"];
  v7 = v8;
  AnalyticsSendEventLazy();
  [v7 setBool:0 forKey:@"objectUnderstandingEnabledForAnalytics"];
  v6 = v7;
  AnalyticsSendEventLazy();
  v5 = v6;
  AnalyticsSendEventLazy();
  [v5 setBool:0 forKey:@"savedActivityForAnalytics"];
  v4 = v5;
  AnalyticsSendEventLazy();
  [v4 setBool:0 forKey:@"switchedActivityForAnalytics"];
  v3 = v4;
  AnalyticsSendEventLazy();
  [v3 setBool:0 forKey:@"readerModeEnabledForAnalytics"];
  v2 = v3;
  AnalyticsSendEventLazy();
  [v2 setBool:0 forKey:{@"readerModeSpeechEnabledForAnalytics", _NSConcreteStackBlock, 3221225472, sub_5188, &unk_1C6C0}];
}

- (void)_logAdaptiveVoiceShortcutsStatistics
{
  AnalyticsSendEventLazy();

  AnalyticsSendEventLazy();
}

- (void)_logAccessibilityReaderStatistics
{
  AnalyticsSendEventLazy();

  AnalyticsSendEventLazy();
}

- (void)_logAssistiveTouchMouseStatistics
{
  if (_AXSAssistiveTouchEnabled())
  {
    if (!_AXSAssistiveTouchScannerEnabled())
    {
      v2 = +[AXMouseEventListener sharedInstance];
      discoveredMouseDevices = [v2 discoveredMouseDevices];

      if (discoveredMouseDevices)
      {
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        v16 = 0u;
        v4 = +[AXSettings sharedInstance];
        assistiveTouchMouseCustomizedClickActions = [v4 assistiveTouchMouseCustomizedClickActions];

        v6 = [assistiveTouchMouseCustomizedClickActions countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(assistiveTouchMouseCustomizedClickActions);
              }

              v10 = *(*(&v16 + 1) + 8 * i);
              AnalyticsSendEventLazy();
              if ([v10 hasCustomActions])
              {
                AnalyticsSendEventLazy();
              }
            }

            v7 = [assistiveTouchMouseCustomizedClickActions countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v7);
        }

        AnalyticsSendEventLazy();
        AnalyticsSendEventLazy();
        v11 = +[AXSettings sharedInstance];
        assistiveTouchMouseDwellControlEnabled = [v11 assistiveTouchMouseDwellControlEnabled];

        if (assistiveTouchMouseDwellControlEnabled)
        {
          v13 = +[AXSettings sharedInstance];
          assistiveTouchMouseDwellControlCornerCustomization = [v13 assistiveTouchMouseDwellControlCornerCustomization];

          if ([assistiveTouchMouseDwellControlCornerCustomization count])
          {
            v15 = assistiveTouchMouseDwellControlCornerCustomization;
            AnalyticsSendEventLazy();
          }
        }
      }
    }
  }
}

- (id)globalDevicePreferences
{
  v2 = +[BKSMousePointerService sharedInstance];
  globalDevicePreferences = [v2 globalDevicePreferences];

  if (!globalDevicePreferences)
  {
    globalDevicePreferences = [BKSMousePointerDevicePreferences defaultPreferencesForHardwareType:9];
  }

  return globalDevicePreferences;
}

- (void)_logLaserAXStatistics
{
  v3 = +[AXSettings sharedInstance];
  laserEnabled = [v3 laserEnabled];

  if (laserEnabled)
  {
    v5 = +[AXMouseEventListener sharedInstance];
    discoveredMouseDevices = [v5 discoveredMouseDevices];

    if (discoveredMouseDevices)
    {
      LODWORD(v9) = _AXSPointerStrokeColor();
      AnalyticsSendEventLazy();
      if (_AXSVoiceOverTouchEnabled())
      {
        AnalyticsSendEventLazy();
      }

      v7 = [AXSettings sharedInstance:_NSConcreteStackBlock];
      zoomEnabled = [v7 zoomEnabled];

      if (zoomEnabled)
      {
        AnalyticsSendEventLazy();
      }
    }
  }
}

- (void)_logCameraButtonStatistics
{
  v2 = [NSUserDefaults alloc];
  v3 = [v2 initWithSuiteName:AX_CameraBundleName];
  AnalyticsSendEventLazy();
  v7 = v3;
  AnalyticsSendEventLazy();
  v6 = v7;
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  v5 = v6;
  AnalyticsSendEventLazy();
  v4 = v5;
  AnalyticsSendEventLazy();
}

- (void)_logPerAppStatistics
{
  v2 = +[AXSettings sharedInstance];
  perAppSettingsStats = [v2 perAppSettingsStats];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = perAppSettingsStats;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = v4;
        AnalyticsSendEventLazy();
      }

      v6 = [v10 countByEnumeratingWithState:&v11 objects:v15 count:{16, _NSConcreteStackBlock, 3221225472, sub_6E04, &unk_1CA18}];
    }

    while (v6);
  }
}

- (void)_logCommonStatistics
{
  AnalyticsSendEventLazy();
  if (_AXSVoiceOverTouchEnabled())
  {
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    v2 = +[AXSettings sharedInstance];
    imageCaptionGenderStrategy = [v2 imageCaptionGenderStrategy];

    if (imageCaptionGenderStrategy > 2)
    {
      v4 = @"unknown";
    }

    else
    {
      v4 = *(&off_1D9D8 + imageCaptionGenderStrategy);
    }

    v84 = _NSConcreteStackBlock;
    v85 = 3221225472;
    v86 = sub_811C;
    v87 = &unk_1C6C0;
    v88 = v4;
    AnalyticsSendEventLazy();
  }

  v5 = _AXSAccessibilitySecureIntentProvider();
  v6 = v5 == 1;
  if (v5 == 2)
  {
    v6 = 2;
  }

  v79 = _NSConcreteStackBlock;
  v80 = 3221225472;
  v81 = sub_81A0;
  v82 = &unk_1C698;
  v83 = v6;
  AnalyticsSendEventLazy();
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v7 = +[AXSettings sharedInstance];
  voiceOverBrailleDisplays = [v7 voiceOverBrailleDisplays];

  v9 = [voiceOverBrailleDisplays countByEnumeratingWithState:&v75 objects:v97 count:16];
  if (v9)
  {
    v10 = *v76;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v76 != v10)
        {
          objc_enumerationMutation(voiceOverBrailleDisplays);
        }

        v12 = *(*(&v75 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v90 = 0;
          v91 = &v90;
          v92 = 0x2020000000;
          v13 = qword_24C78;
          v93 = qword_24C78;
          if (!qword_24C78)
          {
            v89[0] = _NSConcreteStackBlock;
            v89[1] = 3221225472;
            v89[2] = sub_1011C;
            v89[3] = &unk_1D868;
            v89[4] = &v90;
            sub_1011C(v89);
            v13 = v91[3];
          }

          _Block_object_dispose(&v90, 8);
          if (!v13)
          {
            sub_10884();
            __break(1u);
            goto LABEL_27;
          }

          v14 = *v13;
          v15 = [v12 objectForKey:v14];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v95 = @"displayidentifier";
            v96 = v15;
            v16 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
            AnalyticsSendEvent();
          }
        }
      }

      v9 = [voiceOverBrailleDisplays countByEnumeratingWithState:&v75 objects:v97 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (_AXSGreenRedFilterEnabled())
  {
    v17 = @"green-red";
  }

  else if (_AXSRedGreenFilterEnabled())
  {
    v17 = @"red-green";
  }

  else
  {
LABEL_27:
    if (_AXSGrayscaleEnabled())
    {
      v17 = @"grayscale";
    }

    else if (_AXSBlueYellowFilterEnabled())
    {
      v17 = @"blue-yellow";
    }

    else
    {
      if (!_AXSColorTintFilterEnabled())
      {
        goto LABEL_34;
      }

      v17 = @"color-tint";
    }
  }

  v70 = _NSConcreteStackBlock;
  v71 = 3221225472;
  v72 = sub_828C;
  v73 = &unk_1C6C0;
  v74 = v17;
  AnalyticsSendEventLazy();

LABEL_34:
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  if (_AXSHoverTextEnabled())
  {
    v18 = +[AXSettings sharedInstance];
    hoverTextDisplayMode = [v18 hoverTextDisplayMode];

    if (hoverTextDisplayMode > 4)
    {
      v20 = @"unknown";
    }

    else
    {
      v20 = *(&off_1D9F0 + hoverTextDisplayMode);
    }

    v65 = _NSConcreteStackBlock;
    v66 = 3221225472;
    v67 = sub_8480;
    v68 = &unk_1C6C0;
    v69 = v20;
    AnalyticsSendEventLazy();
  }

  AnalyticsSendEventLazy();
  LOBYTE(v89[0]) = 0;
  v21 = +[AXSettings sharedInstance];
  v22 = [v21 speechVoiceIdentifierForLanguage:0 sourceKey:AXSpeechSourceKeyVoiceOver exists:v89];

  v60 = _NSConcreteStackBlock;
  v61 = 3221225472;
  v62 = sub_85BC;
  v63 = &unk_1C6E0;
  v64 = v89[0];
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  [(AXAggregateStatistics *)self _logTextSizes];
  AnalyticsSendEventLazy();
  if (_AXSAssistiveTouchScannerEnabled())
  {
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    v23 = +[AXSettings sharedInstance];
    assistiveTouchSwitches = [v23 assistiveTouchSwitches];

    v55 = _NSConcreteStackBlock;
    v56 = 3221225472;
    v57 = sub_94A4;
    v58 = &unk_1C6C0;
    v59 = assistiveTouchSwitches;
    AnalyticsSendEventLazy();
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = v59;
    v26 = [v25 countByEnumeratingWithState:&v51 objects:v94 count:16];
    if (v26)
    {
      v27 = *v52;
      v28 = SCATSwitchSourceMFI;
      v29 = SCATSwitchSourceCamera;
      v48 = SCATSwitchSourceCameraHandGesture;
      v45 = v50;
      v46 = SCATSwitchSourceHeadGesture;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v52 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v51 + 1) + 8 * j);
          source = [v31 source];
          v33 = [source isEqualToString:v28];

          if ((v33 & 1) == 0)
          {
            source2 = [v31 source];
            v35 = [source2 isEqualToString:v29];

            if ((v35 & 1) == 0)
            {
              source3 = [v31 source];
              v37 = [source3 isEqualToString:v48];

              if (v37)
              {
                v50[3] = _NSConcreteStackBlock;
                v50[4] = 3221225472;
                v50[5] = sub_9560;
                v50[6] = &unk_1C6C0;
                v50[7] = v31;
                AnalyticsSendEventLazy();
              }

              else
              {
                source4 = [v31 source];
                v39 = [source4 isEqualToString:v46];

                if (v39)
                {
                  v50[0] = sub_9658;
                  v50[1] = &unk_1C6C0;
                  v50[2] = v31;
                  AnalyticsSendEventLazy();
                }
              }
            }
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v51 objects:v94 count:16];
      }

      while (v26);
    }

    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
  }

  v40 = _AXSTripleClickCopyOptions();
  AnalyticsSendEventLazy();
  v41 = +[AXSettings sharedInstance];
  if (![v41 didTriggerSOSValueSet])
  {
    goto LABEL_57;
  }

  IsD22 = AXDeviceIsD22();

  if (IsD22)
  {
    v43 = +[AXSettings sharedInstance];
    [v43 didTriggerSOSToday];

    v49 = v40;
    AnalyticsSendEventLazy();
    v44 = +[AXSettings sharedInstance];
    [v44 setDidTriggerSOSToday:0];

    v41 = v49;
LABEL_57:
  }

  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
}

- (void)_logTextSizes
{
  if (qword_24C48 != -1)
  {
    sub_108A8();
  }

  v2 = [AXCPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
  v3 = CFPreferencesCopyAppValue(@"UIPreferredContentSizeCategoryName", v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"UICTContentSizeCategoryL";
  }

  [qword_24C40 indexOfObject:v4];
  if (([(__CFString *)v3 isEqualToString:@"UICTContentSizeCategoryAccessibilityM"]& 1) == 0 && ([(__CFString *)v3 isEqualToString:@"UICTContentSizeCategoryAccessibilityL"]& 1) == 0 && ([(__CFString *)v3 isEqualToString:@"UICTContentSizeCategoryAccessibilityXL"]& 1) == 0 && ([(__CFString *)v3 isEqualToString:@"UICTContentSizeCategoryAccessibilityXXL"]& 1) == 0)
  {
    [(__CFString *)v3 isEqualToString:@"UICTContentSizeCategoryAccessibilityXXXL"];
  }

  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
}

- (void)_logiOSStatistics
{
  if (_AXSVoiceOverTouchEnabled())
  {
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    v2 = +[AXSettings sharedInstance];
    customPronunciationSubstitutions = [v2 customPronunciationSubstitutions];

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    obj = customPronunciationSubstitutions;
    v4 = 0;
    v5 = [obj countByEnumeratingWithState:&v123 objects:v143 count:16];
    if (v5)
    {
      v6 = *v124;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v124 != v6)
          {
            objc_enumerationMutation(obj);
          }

          phonemes = [*(*(&v123 + 1) + 8 * i) phonemes];
          if (phonemes)
          {
            ++v4;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v123 objects:v143 count:16];
      }

      while (v5);
    }

    v118 = _NSConcreteStackBlock;
    v119 = 3221225472;
    v120 = sub_C120;
    v121 = &unk_1C698;
    v122 = v4;
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    v9 = +[AXSettings sharedInstance];
    voiceOverBrailleTableIdentifier = [v9 voiceOverBrailleTableIdentifier];
    v11 = [voiceOverBrailleTableIdentifier isEqualToString:@"com.apple.scrod.braille.table.duxbury.eng-xueb"];

    v12 = +[AXSettings sharedInstance];
    voiceOverBrailleTableIdentifier2 = [v12 voiceOverBrailleTableIdentifier];
    LODWORD(voiceOverBrailleTableIdentifier) = [voiceOverBrailleTableIdentifier2 isEqualToString:@"com.apple.scrod.braille.table.duxbury.eng-xna"];

    if ((v11 | voiceOverBrailleTableIdentifier))
    {
      v113 = _NSConcreteStackBlock;
      v114 = 3221225472;
      v115 = sub_C384;
      v116 = &unk_1C6E0;
      v117 = v11;
      AnalyticsSendEventLazy();
    }

    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    v14 = +[AXSettings sharedInstance];
    voiceOverKeyboardModifierChoice = [v14 voiceOverKeyboardModifierChoice];

    v108 = _NSConcreteStackBlock;
    v109 = 3221225472;
    v110 = sub_C5F4;
    v111 = &unk_1C698;
    v112 = voiceOverKeyboardModifierChoice;
    AnalyticsSendEventLazy();
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v16 = +[AXSettings sharedInstance];
    v52 = [v16 selectedSpeechVoiceIdentifiersForSourceKey:AXSpeechSourceKeyVoiceOver];

    v17 = [v52 countByEnumeratingWithState:&v104 objects:v142 count:16];
    if (v17)
    {
      v18 = *v105;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v105 != v18)
          {
            objc_enumerationMutation(v52);
          }

          v20 = *(*(&v104 + 1) + 8 * j);
          v99 = _NSConcreteStackBlock;
          v100 = 3221225472;
          v101 = sub_C6A8;
          v102 = &unk_1C6C0;
          v103 = v20;
          AnalyticsSendEventLazy();
          v94 = _NSConcreteStackBlock;
          v95 = 3221225472;
          v96 = sub_C72C;
          v97 = &unk_1C6C0;
          v98 = v20;
          AnalyticsSendEventLazy();
        }

        v17 = [v52 countByEnumeratingWithState:&v104 objects:v142 count:16];
      }

      while (v17);
    }
  }

  AnalyticsSendEventLazy();
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v21 = +[AXSDSettings sharedInstance];
  enabledSoundDetectionTypes = [v21 enabledSoundDetectionTypes];

  v23 = [enabledSoundDetectionTypes countByEnumeratingWithState:&v90 objects:v141 count:16];
  if (v23)
  {
    v24 = *v91;
    do
    {
      for (k = 0; k != v23; k = k + 1)
      {
        if (*v91 != v24)
        {
          objc_enumerationMutation(enabledSoundDetectionTypes);
        }

        v26 = *(*(&v90 + 1) + 8 * k);
        v85 = _NSConcreteStackBlock;
        v86 = 3221225472;
        v87 = sub_C8EC;
        v88 = &unk_1C6C0;
        v89 = v26;
        AnalyticsSendEventLazy();
      }

      v23 = [enabledSoundDetectionTypes countByEnumeratingWithState:&v90 objects:v141 count:16];
    }

    while (v23);
  }

  AnalyticsSendEventLazy();
  if (_AXSHapticMusicEnabled())
  {
    v27 = +[AXSettings sharedInstance];
    hapticMusicAlgorithmSelections = [v27 hapticMusicAlgorithmSelections];

    v80 = _NSConcreteStackBlock;
    v81 = 3221225472;
    v82 = sub_CA3C;
    v83 = &unk_1C698;
    v84 = [hapticMusicAlgorithmSelections containsObject:SHHapticPatternAlgorithmVocals];
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    hapticMusicClient = self->_hapticMusicClient;
    if (!hapticMusicClient)
    {
      v30 = [[AXUIClient alloc] initWithIdentifier:@"HapticMusicClient-AggStats" serviceBundleName:@"AXHapticMusicServer"];
      v31 = self->_hapticMusicClient;
      self->_hapticMusicClient = v30;

      hapticMusicClient = self->_hapticMusicClient;
    }

    v32 = +[AXAccessQueue mainAccessQueue];
    [(AXUIClient *)hapticMusicClient sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:6 targetAccessQueue:v32 completion:&stru_1D1A0];
  }

  if (AXDeviceSupportsBootSound())
  {
    AnalyticsSendEventLazy();
  }

  AnalyticsSendEventLazy();
  v33 = [NSUserDefaults alloc];
  v75 = _NSConcreteStackBlock;
  v76 = 3221225472;
  v77 = sub_CDCC;
  v78 = &unk_1C6C0;
  v53 = [v33 initWithSuiteName:AX_SpringBoardBundleName];
  v79 = v53;
  AnalyticsSendEventLazy();
  CFPreferencesAppSynchronize(@"com.apple.backboardd");
  v70 = _NSConcreteStackBlock;
  v71 = 3221225472;
  v72 = sub_CE90;
  v73 = &unk_1C6E0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"BKEnableALS", @"com.apple.backboardd", 0);
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  [(AXAggregateStatistics *)self _logSideButtonClickSpeed];
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  if (AXDeviceSupportsPulseWidthMaximization())
  {
    AnalyticsSendEventLazy();
    keyExistsAndHasValidFormat[0] = 1;
    if (CFPreferencesGetAppBooleanValue(@"SBEnableAlwaysOn", @"com.apple.springboard", keyExistsAndHasValidFormat))
    {
      v34 = 1;
    }

    else
    {
      v34 = keyExistsAndHasValidFormat[0] == 0;
    }

    v35 = v34;
    v65 = _NSConcreteStackBlock;
    v66 = 3221225472;
    v67 = sub_E31C;
    v68 = &unk_1C6E0;
    v69 = v35;
    AnalyticsSendEventLazy();
  }

  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  v60 = _NSConcreteStackBlock;
  v61 = 3221225472;
  v62 = sub_E908;
  v63 = &unk_1C698;
  Type = MADisplayFilterPrefGetType();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  if (_AXSQuickSpeakEnabled() || _AXSSpeakThisEnabled())
  {
    AnalyticsSendEventLazy();
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v36 = +[AXSettings sharedInstance];
    obja = [v36 selectedSpeechVoiceIdentifiersForSourceKey:AXSpeechSourceKeySpeechFeatures];

    v37 = [obja countByEnumeratingWithState:&v56 objects:v140 count:16];
    if (v37)
    {
      v38 = *v57;
      do
      {
        for (m = 0; m != v37; m = m + 1)
        {
          if (*v57 != v38)
          {
            objc_enumerationMutation(obja);
          }

          v40 = *(*(&v56 + 1) + 8 * m);
          AnalyticsSendEventLazy();
          AnalyticsSendEventLazy();
        }

        v37 = [obja countByEnumeratingWithState:&v56 objects:v140 count:16];
      }

      while (v37);
    }
  }

  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  if (_AXSAccessibilityHasNoticedOpaqueTouchDevice())
  {
    AnalyticsSendEventLazy();
  }

  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  if (_AXSCommandAndControlEnabled())
  {
    [(AXAggregateStatistics *)self _logCommandAndControlStatistics];
  }

  else
  {
    [(AXAggregateStatistics *)self _updateCommandAndControlPurgability];
  }

  [(AXAggregateStatistics *)self _logVoiceTriggerStatistics];
  [(AXAggregateStatistics *)self _logBackTapStatistics];
  v138 = @"enabled";
  v41 = [NSNumber numberWithUnsignedChar:_AXSFullKeyboardAccessEnabled()];
  v139 = v41;
  v42 = [NSDictionary dictionaryWithObjects:&v139 forKeys:&v138 count:1];
  AnalyticsSendEvent();

  [(AXAggregateStatistics *)self _logAssistiveTouchMouseStatistics];
  [(AXAggregateStatistics *)self _logLaserAXStatistics];
  [(AXAggregateStatistics *)self _logPerAppStatistics];
  v132 = 0;
  v133 = &v132;
  v134 = 0x2050000000;
  v43 = qword_24CA8;
  v135 = qword_24CA8;
  if (!qword_24CA8)
  {
    *keyExistsAndHasValidFormat = _NSConcreteStackBlock;
    v128 = 3221225472;
    v129 = sub_10654;
    v130 = &unk_1D868;
    v131 = &v132;
    sub_10654(keyExistsAndHasValidFormat);
    v43 = v133[3];
  }

  v44 = v43;
  _Block_object_dispose(&v132, 8);
  sharedInstance = [v43 sharedInstance];
  v132 = 0;
  v133 = &v132;
  v134 = 0x2020000000;
  v46 = qword_24CB8;
  v135 = qword_24CB8;
  if (!qword_24CB8)
  {
    *keyExistsAndHasValidFormat = _NSConcreteStackBlock;
    v128 = 3221225472;
    v129 = sub_1080C;
    v130 = &unk_1D868;
    v131 = &v132;
    v47 = sub_10328();
    v48 = dlsym(v47, "AXHearingControlCenterBundleID");
    *(v131[1] + 24) = v48;
    qword_24CB8 = *(v131[1] + 24);
    v46 = v133[3];
  }

  _Block_object_dispose(&v132, 8);
  if (!v46)
  {
    sub_10884();
    __break(1u);
  }

  [sharedInstance getEnabledStateOfModuleWithIdentifier:*v46 completionHandler:&stru_1D840];

  [(AXAggregateStatistics *)self _logSoundDetectionCustomTonesHaptics];
  [(AXAggregateStatistics *)self _logCustomSoundDetection];
  [(AXAggregateStatistics *)self _logCustomSoundDetectionCustomTonesHaptics];
  [(AXAggregateStatistics *)self _logMagnifierStatistics];
  [(AXAggregateStatistics *)self _logAdaptiveVoiceShortcutsStatistics];
  if (AXDeviceSupportsCameraButton())
  {
    [(AXAggregateStatistics *)self _logCameraButtonStatistics];
  }

  v136 = @"enabled";
  v49 = [NSNumber numberWithUnsignedChar:_AXSAudioDonationSiriImprovementEnabled()];
  v137 = v49;
  v50 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
  AnalyticsSendEvent();

  if (AXDeviceSupportsNameRecognition())
  {
    [(AXAggregateStatistics *)self _logNameRecognitionStatistics];
  }

  if (AXDeviceSupportsAccessibilityReader())
  {
    [(AXAggregateStatistics *)self _logAccessibilityReaderStatistics];
  }
}

- (void)_logStatistics
{
  [(AXAggregateStatistics *)self _logCommonStatistics];

  [(AXAggregateStatistics *)self _logiOSStatistics];
}

@end