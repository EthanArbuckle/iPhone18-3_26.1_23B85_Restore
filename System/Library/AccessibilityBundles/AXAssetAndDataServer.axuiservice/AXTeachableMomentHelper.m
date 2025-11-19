@interface AXTeachableMomentHelper
+ (id)_preferencesURLSubpathForFeature:(id)a3;
+ (id)notificationCenter;
+ (void)_sendUserNotification:(id)a3 title:(id)a4 subtitle:(id)a5 message:(id)a6 threadIdentifier:(id)a7 teachableItems:(id)a8 feature:(id)a9;
+ (void)handleTeachableMomentsNotifications;
@end

@implementation AXTeachableMomentHelper

+ (void)handleTeachableMomentsNotifications
{
  v2 = +[NSMutableArray array];
  if (_AXSVoiceOverTouchEnabled())
  {
    [v2 addObject:AXTeachableFeatureVoiceOver];
  }

  if (_AXSVoiceOverTouchEnabled())
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 voiceOverBrailleDisplays];
    if ([v4 count])
    {
    }

    else
    {
      v5 = +[AXSettings sharedInstance];
      v6 = [v5 voiceOverBrailleGesturesEnabled];

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    [v2 addObject:AXTeachableFeatureBraille];
  }

LABEL_8:
  if (UIAccessibilityIsSwitchControlRunning())
  {
    [v2 addObject:AXTeachableFeatureSwitchControl];
  }

  if (_AXSAssistiveTouchEnabled())
  {
    [v2 addObject:AXTeachableFeatureAssistiveTouch];
  }

  if (_AXSCommandAndControlEnabled())
  {
    [v2 addObject:AXTeachableFeatureVoiceControl];
  }

  if (_AXSLargeTextUsesExtendedRange())
  {
    [v2 addObject:AXTeachableFeatureDisplayTextSize];
  }

  if (_AXSSpeakThisEnabled())
  {
    [v2 addObject:AXTeachableFeatureReadAndSpeak];
  }

  if (_AXSHoverTextEnabled())
  {
    [v2 addObject:AXTeachableFeatureHoverText];
  }

  if (_AXSClarityUIEnabled())
  {
    [v2 addObject:AXTeachableFeatureAssistiveAccess];
  }

  v7 = _AXSTripleClickCopyOptions();
  v8 = _AXSTripleClickContainsOption();
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    [v2 addObject:AXTeachableFeatureLiveSpeech];
  }

  if (_AXSHapticMusicEnabled())
  {
    [v2 addObject:AXTeachableFeatureMusicHaptics];
  }

  if (_AXSOnDeviceEyeTrackingEnabled())
  {
    [v2 addObject:AXTeachableFeatureEyeTracking];
  }

  if (_AXSSoundDetectionRunning())
  {
    [v2 addObject:AXTeachableFeatureSoundRecognition];
  }

  if (_AXSMotionCuesEnabled())
  {
    [v2 addObject:AXTeachableFeatureMotionCues];
  }

  v9 = AXLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v2;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "TeachableMoment: Checking for teachable moments: %@", buf, 0xCu);
  }

  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  obj = v2;
  v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    v28 = v33;
    v13 = &AXColorizeFormatLog_ptr;
    do
    {
      v14 = 0;
      v29 = v11;
      do
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        if ([v13[113] teachableMomentSeenForNotification:{v15, v28}])
        {
          v16 = AXLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v47 = v15;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "TeachableMoment: Already saw notification for: %@", buf, 0xCu);
          }
        }

        else
        {
          v16 = [v13[113] teachableItemsForFeature:v15];
          if ([v16 count])
          {
            v17 = v12;
            v18 = [v13[113] whatsNewNotificationTitle];
            v19 = [v13[113] nameForFeature:v15];
            v20 = v13;
            v21 = [v13[113] summaryForFeature:v15];
            v22 = [a1 notificationCenter];
            v23 = AXLogCommon();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "TeachableMoment: Checking authorization", buf, 2u);
            }

            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v33[0] = sub_1BAC;
            v33[1] = &unk_C448;
            v40 = a1;
            v34 = v22;
            v35 = v18;
            v36 = v19;
            v37 = v21;
            v38 = v16;
            v39 = v15;
            v24 = v21;
            v25 = v19;
            v26 = v18;
            v27 = v22;
            [v27 requestAuthorizationWithOptions:32 completionHandler:v32];

            v12 = v17;
            v11 = v29;
            v13 = v20;
          }

          else
          {
            v27 = AXLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = v15;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "TeachableMoment: No items for %@", buf, 0xCu);
            }
          }
        }

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v11);
  }
}

+ (id)notificationCenter
{
  v2 = qword_111A0;
  if (!qword_111A0)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v3 = qword_111A8;
    v21 = qword_111A8;
    if (!qword_111A8)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_2604;
      v16 = &unk_C498;
      v17 = &v18;
      sub_2604(&v13);
      v3 = v19[3];
    }

    v4 = v3;
    _Block_object_dispose(&v18, 8);
    v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.accessibility.TeachableMomentsNotifications"];
    v6 = qword_111A0;
    qword_111A0 = v5;

    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v7 = qword_111B8;
    v21 = qword_111B8;
    if (!qword_111B8)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_27CC;
      v16 = &unk_C498;
      v17 = &v18;
      sub_27CC(&v13);
      v7 = v19[3];
    }

    v8 = v7;
    _Block_object_dispose(&v18, 8);
    v9 = [v7 categoryWithIdentifier:@"com.apple.accessibility.TeachableMomentsNotifications.message" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:0];
    v10 = qword_111A0;
    v11 = [NSSet setWithObject:v9];
    [v10 setNotificationCategories:v11];

    v2 = qword_111A0;
  }

  return v2;
}

+ (id)_preferencesURLSubpathForFeature:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:AXTeachableFeatureVoiceOver])
  {
    v4 = @"VOICEOVER_TITLE";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureBraille])
  {
    v4 = @"VOICEOVER_TITLE/Braille#Braille";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureSwitchControl])
  {
    v4 = @"ScannerSwitchTitle";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureAssistiveTouch])
  {
    v4 = @"TOUCH_REACHABILITY_TITLE/AIR_TOUCH_TITLE";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureLiveSpeech])
  {
    v4 = @"LIVE_SPEECH_TITLE";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureAssistiveAccess])
  {
    v4 = @"CLARITY_UI_TITLE";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureHoverText])
  {
    v4 = @"HOVERTEXT_TITLE";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureMusicHaptics])
  {
    v4 = @"HAPTIC_MUSIC";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureDisplayTextSize])
  {
    v4 = @"DISPLAY_AND_TEXT";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureEyeTracking])
  {
    v4 = @"OnDeviceEyeTracking";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureVoiceControl])
  {
    v4 = @"CommandAndControlTitle";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureLiveListen])
  {
    v4 = @"AUDIO_VISUAL_TITLE";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureReadAndSpeak])
  {
    v4 = @"SPEECH_TITLE";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureMotionCues])
  {
    v4 = @"MOTION_TITLE";
  }

  else if ([v3 isEqualToString:AXTeachableFeatureLiveCaptions])
  {
    v4 = @"LIVE_TRANSCRIPTION";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_sendUserNotification:(id)a3 title:(id)a4 subtitle:(id)a5 message:(id)a6 threadIdentifier:(id)a7 teachableItems:(id)a8 feature:(id)a9
{
  v34 = a3;
  v15 = a4;
  v36 = a5;
  v37 = a6;
  v35 = a7;
  v16 = a8;
  v17 = a9;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v18 = qword_111C0;
  v42 = qword_111C0;
  if (!qword_111C0)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v46 = sub_2824;
    v47 = &unk_C498;
    v48 = &v39;
    sub_2824(&buf);
    v18 = v40[3];
  }

  v19 = v18;
  _Block_object_dispose(&v39, 8);
  v20 = objc_opt_new();
  [v20 setBody:v37];
  [v20 setCategoryIdentifier:@"com.apple.accessibility.TeachableMomentsNotifications.message"];
  [v20 setTitle:v15];
  [v20 setSubtitle:v36];
  [v20 setInterruptionLevel:0];
  [v20 setThreadIdentifier:v35];
  [v20 setShouldSuppressDefaultAction:0];
  [v20 setShouldAuthenticateDefaultAction:0];
  v21 = [a1 _preferencesURLSubpathForFeature:v17];
  if ([v21 length])
  {
    v22 = [@"prefs:root=ACCESSIBILITY" stringByAppendingFormat:@"&path=%@", v21];
  }

  else
  {
    v22 = @"prefs:root=ACCESSIBILITY";
  }

  v23 = [NSURL URLWithString:v22];
  [v20 setDefaultActionURL:v23];

  v24 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
  v43[0] = @"title";
  v43[1] = @"teachableItems";
  v44[0] = v15;
  v44[1] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  [v20 setUserInfo:v25];

  v26 = +[NSDate date];
  v27 = [v26 dateByAddingTimeInterval:604800.0];
  [v20 setExpirationDate:v27];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v28 = qword_111C8;
  v42 = qword_111C8;
  if (!qword_111C8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v46 = sub_287C;
    v47 = &unk_C498;
    v48 = &v39;
    sub_287C(&buf);
    v28 = v40[3];
  }

  v29 = v28;
  _Block_object_dispose(&v39, 8);
  v30 = +[NSUUID UUID];
  v31 = [v30 UUIDString];
  v32 = [v28 requestWithIdentifier:v31 content:v20 trigger:0];

  v33 = AXLogCommon();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v32;
    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "TeachableMoments: Posting local notification: %@", &buf, 0xCu);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_2594;
  v38[3] = &unk_C470;
  v38[4] = v17;
  [v34 addNotificationRequest:v32 withCompletionHandler:v38];
}

@end