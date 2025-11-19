@interface CameraVideoSettingsController
+ (id)_titleForVideoConfiguration:(int64_t)a3 isHEVCEnabled:(BOOL)a4 isHDR10BitVideoEnabled:(BOOL)a5;
+ (id)_videoConfigurationFooterForPrefixString:(id)a3 useHEVC:(BOOL)a4 useDolbyVision:(BOOL)a5;
+ (id)shortTitleForVideoConfiguration:(id)a3;
- (id)_isAutoLowLightVideoEnabled:(id)a3;
- (id)_isHDRVideoEnabled:(id)a3;
- (id)_isPALVideoEnabled:(id)a3;
- (id)_shouldDisableCameraSwitchingDuringVideoRecording:(id)a3;
- (id)_vfrVideoMode:(id)a3;
- (id)specifiers;
- (int64_t)_cinematicConfiguration;
- (int64_t)_slomoConfiguration;
- (int64_t)_videoConfiguration;
- (void)_handleConfirmHDRVideoHighEfficiencyLearnMore:(id)a3;
- (void)_handleConfirmHighEfficiencyLearnMore:(id)a3;
- (void)_handleHDR10BitVideoMostCompatibleConfirmed:(id)a3;
- (void)_handleVideoMostCompatibleConfirmed:(id)a3;
- (void)_setAutoLowLightVideoEnabled:(id)a3 specifier:(id)a4;
- (void)_setHDR10BitVideoEnabled:(id)a3 specifier:(id)a4;
- (void)_setPALVideoEnabled:(id)a3 specifier:(id)a4;
- (void)_setRecordVideoConfiguration:(id)a3;
- (void)_setShouldDisableCameraSwitchingDuringVideoRecording:(id)a3 specifier:(id)a4;
- (void)_showConfirmationSpecifierWithTitle:(id)a3 prompt:(id)a4 cancelText:(id)a5 okText:(id)a6 target:(id)a7 confirmationAction:(SEL)a8 cancelAction:(SEL)a9 value:(id)a10;
- (void)emitNavigationEvent;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CameraVideoSettingsController

- (id)specifiers
{
  v3 = +[CameraSettingsBaseController capabilities];
  if ([v3 isVariableFramerateVideoSupported])
  {
    [CAMUserPreferences performLowLightVideoMigrationWithCapabilities:v3];
  }

  if ([v3 responsiveShutterSupported])
  {
    [CAMUserPreferences performResponsiveShutterMigrationWithCapabilities:v3];
  }

  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v65 = OBJC_IVAR___PSListController__specifiers;
    v70 = objc_alloc_init(NSMutableArray);
    v71 = [(CameraVideoSettingsController *)self _videoConfiguration];
    v5 = [v3 back720pMaxFPS];
    v6 = [v3 back1080pMaxFPS];
    v7 = [v3 front1080pMaxFPS];
    v66 = v7;
    v9 = v6 > 59 || v7 > 59;
    v11 = v5 > 29 && v6 > 29;
    if ([v3 isHEVCEncodingSupported])
    {
      v73 = [(CameraVideoSettingsController *)self _showHEVCOnlyFormatsOnCapableDevices];
    }

    else
    {
      v73 = 0;
    }

    v67 = [v3 isBack4k30VideoSupported];
    v12 = [v3 isBack4k24VideoSupported];
    v68 = [v3 isBack4k60VideoSupported];
    v72 = [v3 isBack4k120VideoSupported];
    v13 = [v3 isBack4k120VideoSupported];
    v14 = [(CameraVideoSettingsController *)self _isHDRVideoEnabled:0];
    v69 = [v14 BOOLValue];

    if ([v3 isPALVideoSupported])
    {
      v15 = [(CameraVideoSettingsController *)self _isPALVideoEnabled];
    }

    else
    {
      v15 = 0;
    }

    v75 = [PSSpecifier groupSpecifierWithID:@"VideoConfigurationGroupSpecifierID"];
    [v75 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v16 = +[NSMutableString string];
    if ([v3 isTrueVideoSupported])
    {
      v17 = @"CAM_RECORD_VIDEO_FOOTER_TRUE_VIDEO";
    }

    else
    {
      if (![v3 deviceSupportsCTM])
      {
        goto LABEL_29;
      }

      v17 = @"CAM_RECORD_VIDEO_FOOTER_QUICKTAKE";
    }

    v18 = sub_BCD8(v17);
    [v16 appendFormat:@"%@\n\n", v18];

LABEL_29:
    v19 = sub_BCD8(@"CAM_RECORD_VIDEO_FOOTER_HEAD");
    [v16 appendString:v19];

    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_BE44;
    v92[3] = &unk_2CCF0;
    v20 = v3;
    v93 = v20;
    v74 = objc_retainBlock(v92);
    v76 = +[NSMutableArray array];
    if (v11)
    {
      [v76 addObject:&off_322C0];
    }

    if (v15 && (v74[2])(v74, 11))
    {
      [v76 addObject:&off_322D8];
    }

    [v76 addObject:&off_322F0];
    if (v9)
    {
      [v76 addObject:&off_32308];
      if (!v13)
      {
LABEL_36:
        if (!v12)
        {
LABEL_38:
          if (v15 && (v74[2])(v74, 12))
          {
            [v76 addObject:&off_32350];
          }

          if (v67)
          {
            [v76 addObject:&off_32368];
          }

          if (v68)
          {
            [v76 addObject:&off_32380];
          }

          if (v72)
          {
            if (v15)
            {
              [v76 addObject:&off_32398];
            }

            [v76 addObject:&off_323B0];
          }

          [v70 addObject:v75];
          v86 = 0;
          v87 = &v86;
          v88 = 0x3032000000;
          v89 = sub_BEB0;
          v90 = sub_BEC0;
          v91 = 0;
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = sub_BEC8;
          v77[3] = &unk_2CD18;
          v84 = v69;
          v21 = v20;
          v85 = v73;
          v78 = v21;
          v79 = self;
          v22 = v70;
          v82 = &v86;
          v83 = v71;
          v80 = v22;
          v23 = v16;
          v81 = v23;
          [v76 enumerateObjectsUsingBlock:v77];
          if (v66 >= 60 && v6 <= 59)
          {
            v24 = sub_BCD8(@"CAM_FORMATS_CAPTURE_FOOTER_1080p60_FRONT_ONLY");
            [v23 appendFormat:@"\n%@", v24];
          }

          v25 = PSFooterTextGroupKey;
          [v75 setProperty:v23 forKey:PSFooterTextGroupKey];
          [v75 setProperty:v87[5] forKey:PSRadioGroupCheckedSpecifierKey];
          if ([v21 isPALVideoSupported])
          {
            v26 = [PSSpecifier groupSpecifierWithName:0];
            v27 = sub_BCD8(@"CAM_PAL_VIDEO_FORMATS_FOOTER");
            [v26 setProperty:v27 forKey:v25];

            [v22 addObject:v26];
            v28 = sub_BCD8(@"CAM_PAL_VIDEO_FORMATS_TITLE");
            v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:"_setPALVideoEnabled:specifier:" get:"_isPALVideoEnabled:" detail:0 cell:6 edit:0];

            [v29 setIdentifier:@"CAM_PAL_VIDEO_FORMATS"];
            [v22 addObject:v29];
          }

          if ([v21 isEnhancedStabilizationSupported])
          {
            v30 = sub_BCD8(@"CAM_ENABLE_VIDEO_STABILIZATION_SWITCH");
            v31 = sub_BCD8(@"CAM_ENABLE_VIDEO_STABILIZATION_FOOTER");
            v32 = [PSSpecifier groupSpecifierWithName:0];
            [v32 setProperty:v31 forKey:v25];
            [v22 addObject:v32];
            v33 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
            [v33 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
            [v33 setObject:CAMUserPreferenceEnhancedVideoStabilization forKeyedSubscript:PSKeyNameKey];
            [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
            [v33 setIdentifier:@"CAM_ENABLE_VIDEO_STABILIZATION_SWITCH"];
            [v22 addObject:v33];
          }

          if ([v21 isActionModeControlSupported])
          {
            v34 = sub_BCD8(@"CAM_ACTION_MODE_LOW_LIGHT");
            v35 = sub_BCD8(@"CAM_ACTION_MODE_LOW_LIGHT_FOOTER");
            v36 = [PSSpecifier groupSpecifierWithName:0];
            [v36 setProperty:v35 forKey:v25];
            [v22 addObject:v36];
            v37 = [PSSpecifier preferenceSpecifierNamed:v34 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
            [v37 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
            [v37 setObject:CAMUserPreferenceActionModeLowLightEnabled forKeyedSubscript:PSKeyNameKey];
            [v37 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
            [v37 setIdentifier:@"CAM_ACTION_MODE_LOW_LIGHT"];
            [v22 addObject:v37];
          }

          if ([v21 isHDR10BitVideoSupported])
          {
            v38 = [v21 isHDR10BitVideoSupports60FPS];
            v39 = [v21 isCinematicModeSupported];
            if (v73)
            {
              v40 = @"CAM_HDR_VIDEO_TITLE";
            }

            else
            {
              v40 = @"CAM_HDR_VIDEO_MOST_COMPATIBLE_TITLE";
            }

            v41 = sub_BCD8(v40);
            v42 = @"CAM_HDR_VIDEO_FOOTER";
            if (v39)
            {
              v42 = @"CAM_HDR_VIDEO_AND_CINEMATIC_FOOTER";
            }

            if (!v38)
            {
              v42 = @"CAM_HDR_VIDEO_60FPS_UNSUPPORTED_FOOTER";
            }

            if (v72)
            {
              v43 = @"CAM_HDR_VIDEO_FOOTER_4k120";
            }

            else
            {
              v43 = v42;
            }

            v44 = sub_BCD8(v43);
            v45 = [PSSpecifier groupSpecifierWithName:0];
            [v45 setProperty:v44 forKey:v25];
            [v22 addObject:v45];
            v46 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:"_setHDR10BitVideoEnabled:specifier:" get:"_isHDRVideoEnabled:" detail:0 cell:6 edit:0];
            [v46 setIdentifier:@"CAM_HDR_VIDEO"];
            [v22 addObject:v46];
          }

          if ([v21 isVariableFramerateVideoSupported])
          {
            v47 = [PSSpecifier groupSpecifierWithName:0];
            v48 = sub_BCD8(@"CAM_AUTO_FPS_VFR_FOOTER");
            [v47 setProperty:v48 forKey:v25];

            [v22 addObject:v47];
            v49 = sub_BCD8(@"CAM_AUTO_FPS_TITLE");
            v50 = [PSSpecifier preferenceSpecifierNamed:v49 target:self set:0 get:"_vfrVideoMode:" detail:objc_opt_class() cell:2 edit:0];

            [v50 setIdentifier:@"CAM_AUTO_FPS"];
            [v22 addObject:v50];
          }

          else
          {
            if (![v21 isAutoLowLightVideoSupportedForMode:1 videoConfiguration:v71 videoEncodingBehavior:1])
            {
              goto LABEL_78;
            }

            v47 = [PSSpecifier groupSpecifierWithName:0];
            v51 = sub_BCD8(@"CAM_AUTO_LOW_LIGHT_FOOTER");
            [v47 setProperty:v51 forKey:v25];

            [v22 addObject:v47];
            v52 = sub_BCD8(@"CAM_AUTO_LOW_LIGHT_TITLE");
            v50 = [PSSpecifier preferenceSpecifierNamed:v52 target:self set:"_setAutoLowLightVideoEnabled:specifier:" get:"_isAutoLowLightVideoEnabled:" detail:0 cell:6 edit:0];

            [v22 addObject:v50];
          }

LABEL_78:
          if (([v21 isBackTelephotoSupported] & 1) != 0 || objc_msgSend(v21, "isBackSuperWideSupported"))
          {
            v53 = sub_BCD8(@"CAM_VIDEO_RECORDING_DISABLE_CAMERA_SWITCHING_TITLE");
            v54 = sub_BCD8(@"CAM_VIDEO_RECORDING_DISABLE_CAMERA_SWITCHING_FOOTER");
            v55 = [PSSpecifier groupSpecifierWithName:0];
            [v55 setProperty:v54 forKey:v25];
            [v22 addObject:v55];
            v56 = [PSSpecifier preferenceSpecifierNamed:v53 target:self set:"_setShouldDisableCameraSwitchingDuringVideoRecording:specifier:" get:"_shouldDisableCameraSwitchingDuringVideoRecording:" detail:0 cell:6 edit:0];
            [v56 setIdentifier:@"CAM_VIDEO_RECORDING_DISABLE_CAMERA_SWITCHING"];
            [v22 addObject:v56];
          }

          if ([v21 isWhiteBalanceLockingForVideoRecordingSupported])
          {
            v57 = sub_BCD8(@"CAM_VIDEO_RECORDING_LOCK_WHITE_BALANCE_TITLE");
            v58 = sub_BCD8(@"CAM_VIDEO_RECORDING_LOCK_WHITE_BALANCE_FOOTER");
            v59 = [PSSpecifier groupSpecifierWithName:0];
            [v59 setProperty:v58 forKey:v25];
            [v22 addObject:v59];
            v60 = [PSSpecifier preferenceSpecifierNamed:v57 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
            [v60 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
            [v60 setObject:CAMUserPreferenceLockWhiteBalanceDuringVideoRecording forKeyedSubscript:PSKeyNameKey];
            [v60 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
            [v60 setIdentifier:@"CAM_VIDEO_RECORDING_LOCK_WHITE_BALANCE"];
            [v22 addObject:v60];
          }

          [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:v22];
          v61 = [v22 copy];
          v62 = *&self->super.PSListController_opaque[v65];
          *&self->super.PSListController_opaque[v65] = v61;

          _Block_object_dispose(&v86, 8);
          v4 = *&self->super.PSListController_opaque[v65];
          goto LABEL_84;
        }

LABEL_37:
        [v76 addObject:&off_32338];
        goto LABEL_38;
      }
    }

    else if (!v13)
    {
      goto LABEL_36;
    }

    [v76 addObject:&off_32320];
    if (!v12)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_84:
  v63 = v4;

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CameraVideoSettingsController;
  [(CameraSettingsBaseController *)&v4 viewDidLoad];
  v3 = sub_BCD8(@"CAM_RECORD_VIDEO_TITLE");
  [(CameraVideoSettingsController *)self setTitle:v3];
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Camera/CameraVideoSettingsList"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundleURL];
  v8 = [v4 initWithKey:@"CAM_RECORD_VIDEO_TITLE" table:@"CameraSettings" locale:v5 bundleURL:v7];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"CAMERA_SETTINGS_TITLE" table:@"CameraSettings" locale:v10 bundleURL:v12];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(CameraVideoSettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.camera" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

- (int64_t)_videoConfiguration
{
  v2 = [NSNumber numberWithLong:CFPreferencesGetAppIntegerValue(CAMUserPreferenceVideoConfiguration, @"com.apple.camera", 0)];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)_cinematicConfiguration
{
  v2 = [NSNumber numberWithLong:CFPreferencesGetAppIntegerValue(CAMUserPreferenceCinematicConfiguration, @"com.apple.camera", 0)];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)_slomoConfiguration
{
  v2 = [NSNumber numberWithLong:CFPreferencesGetAppIntegerValue(CAMUserPreferenceSlomoConfiguration, @"com.apple.camera", 0)];
  v3 = [v2 integerValue];

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CameraVideoSettingsController;
  [(CameraVideoSettingsController *)&v12 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(CameraVideoSettingsController *)self specifierForID:@"VideoConfigurationGroupSpecifierID"];
  if (v7)
  {
    v8 = [(CameraVideoSettingsController *)self indexPathForSpecifier:v7];
    v9 = [v8 section];
  }

  else
  {
    v9 = -1;
  }

  if ([v6 section] == v9)
  {
    v10 = [(CameraVideoSettingsController *)self specifierAtIndexPath:v6];
    v11 = [v10 propertyForKey:PSValueKey];
    [(CameraVideoSettingsController *)self _setRecordVideoConfiguration:v11];
  }

  [(CameraSettingsBaseController *)self reloadSpecifiers];
}

+ (id)_titleForVideoConfiguration:(int64_t)a3 isHEVCEnabled:(BOOL)a4 isHDR10BitVideoEnabled:(BOOL)a5
{
  v6 = 0;
  v7 = a5 & ~a4;
  if (a3 > 8)
  {
    if (a3 > 11)
    {
      switch(a3)
      {
        case 12:
          v8 = @"CAM_RECORD_VIDEO_4K_25";
          v9 = @"CAM_RECORD_VIDEO_4K_25_MOST_COMPATIBLE";
          goto LABEL_25;
        case 13:
          v10 = @"CAM_RECORD_VIDEO_4K_120_MOST_COMPATIBLE";
          v11 = @"CAM_RECORD_VIDEO_4K_120";
          break;
        case 14:
          v10 = @"CAM_RECORD_VIDEO_4K_100_MOST_COMPATIBLE";
          v11 = @"CAM_RECORD_VIDEO_4K_100";
          break;
        default:
          goto LABEL_33;
      }
    }

    else
    {
      if (a3 != 9)
      {
        if (a3 == 10)
        {
          v8 = @"CAM_RECORD_VIDEO_4K_24";
          v9 = @"CAM_RECORD_VIDEO_4K_24_MOST_COMPATIBLE";
        }

        else
        {
          v8 = @"CAM_RECORD_VIDEO_1080p_25";
          v9 = @"CAM_RECORD_VIDEO_1080p_25_MOST_COMPATIBLE";
        }

        goto LABEL_25;
      }

      v10 = @"CAM_RECORD_VIDEO_4K_60_MOST_COMPATIBLE";
      v11 = @"CAM_RECORD_VIDEO_4K_60";
    }

    if (a4)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    goto LABEL_32;
  }

  if (a3 <= 4)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8 = @"CAM_RECORD_VIDEO_1080p_60";
        v9 = @"CAM_RECORD_VIDEO_1080p_60_MOST_COMPATIBLE";
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_33;
        }

        v7 = !a5 || a4;
        v8 = @"CAM_RECORD_VIDEO_1080P_120_MOST_COMPATIBLE";
        v9 = @"CAM_RECORD_VIDEO_1080P_120";
      }

      goto LABEL_25;
    }

    goto LABEL_14;
  }

  switch(a3)
  {
    case 5:
      v8 = @"CAM_RECORD_VIDEO_4K_30";
      v9 = @"CAM_RECORD_VIDEO_4K_30_MOST_COMPATIBLE";
      break;
    case 6:
      v8 = @"CAM_RECORD_VIDEO_720p_30";
      v9 = @"CAM_RECORD_VIDEO_720p_30_MOST_COMPATIBLE";
      break;
    case 7:
LABEL_14:
      v8 = @"CAM_RECORD_VIDEO_1080p_30";
      v9 = @"CAM_RECORD_VIDEO_1080p_30_MOST_COMPATIBLE";
      break;
    default:
      goto LABEL_33;
  }

LABEL_25:
  if (v7)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

LABEL_32:
  v6 = sub_BCD8(v12);
LABEL_33:

  return v6;
}

+ (id)shortTitleForVideoConfiguration:(id)a3
{
  v3 = [a3 integerValue];
  if (v3 <= 0xE && ((0x7EF3u >> v3) & 1) != 0)
  {
    v4 = sub_BCD8(off_2CD38[v3]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_videoConfigurationFooterForPrefixString:(id)a3 useHEVC:(BOOL)a4 useDolbyVision:(BOOL)a5
{
  v6 = @"_HEVC";
  if (!a4)
  {
    v6 = &stru_2DB58;
  }

  if (a5)
  {
    v7 = @"_DOLBY";
  }

  else
  {
    v7 = &stru_2DB58;
  }

  v8 = v6;
  v9 = [NSString stringWithFormat:@"%@%@%@_FOOTER", a3, v8, v7];

  return v9;
}

- (void)_setRecordVideoConfiguration:(id)a3
{
  v14 = a3;
  v4 = [v14 integerValue];
  v5 = v4 > 0xE || ((1 << v4) & 0x6210) == 0;
  if (v5 || (v6 = v4, +[CameraSettingsBaseController capabilities](CameraSettingsBaseController, "capabilities"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isHEVCEncodingSupported], v7, v9 = -[CameraVideoSettingsController _showHEVCOnlyFormatsOnCapableDevices](self, "_showHEVCOnlyFormatsOnCapableDevices"), !v8) || (v9 & 1) != 0 || v6 > 0xE || ((1 << v6) & 0x6210) == 0 || CFPreferencesGetAppBooleanValue(CAMUserPreferencesDidConfirmVideoMostCompatible, @"com.apple.camera", 0))
  {
    [PFMediaCapabilities setRecordVideoConfiguration:v14];
    CFPreferencesAppSynchronize(@"com.apple.camera");
  }

  else
  {
    v10 = 0;
    if (((1 << v6) & 0x6210) != 0)
    {
      v10 = sub_BCD8(@"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO");
      if (v10)
      {
        if ("_handleVideoMostCompatibleConfirmed:")
        {
          v11 = sub_BCD8(@"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_TITLE");
          v12 = sub_BCD8(@"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_LEARN_MORE");
          v13 = sub_BCD8(@"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_OK");
          [(CameraVideoSettingsController *)self _showConfirmationSpecifierWithTitle:v11 prompt:v10 cancelText:v12 okText:v13 target:self confirmationAction:"_handleVideoMostCompatibleConfirmed:" cancelAction:"_handleConfirmHighEfficiencyLearnMore:" value:v14];
        }
      }
    }
  }
}

- (void)_showConfirmationSpecifierWithTitle:(id)a3 prompt:(id)a4 cancelText:(id)a5 okText:(id)a6 target:(id)a7 confirmationAction:(SEL)a8 cancelAction:(SEL)a9 value:(id)a10
{
  v17 = a10;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = objc_alloc_init(PSConfirmationSpecifier);
  [v23 setTitle:v22];

  [v23 setPrompt:v21];
  [v23 setCancelButton:v20];

  [v23 setOkButton:v19];
  [v23 setUserInfo:v17];

  [v23 setTarget:v18];
  [v23 setConfirmationAction:a8];
  [v23 setConfirmationCancelAction:a9];
  [(CameraVideoSettingsController *)self showConfirmationViewForSpecifier:v23 useAlert:1];
}

- (void)_handleVideoMostCompatibleConfirmed:(id)a3
{
  v4 = [a3 userInfo];
  [PFMediaCapabilities setRecordVideoConfiguration:v4];
  CFPreferencesSetAppValue(CAMUserPreferencesDidConfirmVideoMostCompatible, &__kCFBooleanTrue, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");
  [(CameraSettingsBaseController *)self reloadSpecifiers];
}

- (void)_handleConfirmHighEfficiencyLearnMore:(id)a3
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v3 localizedStringForKey:@"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_LEARN_MORE_URL" value:&stru_2DB58 table:@"CameraSettings"];

  if (v6)
  {
    v4 = [NSURL URLWithString:?];
    if (v4)
    {
      v5 = +[UIApplication sharedApplication];
      [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
    }
  }

  _objc_release_x2();
}

- (void)_setHDR10BitVideoEnabled:(id)a3 specifier:(id)a4
{
  value = a3;
  if ([value BOOLValue] && (+[CameraSettingsBaseController capabilities](CameraSettingsBaseController, "capabilities"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isHEVCEncodingSupported"), v5, v7 = -[CameraVideoSettingsController _showHEVCOnlyFormatsOnCapableDevices](self, "_showHEVCOnlyFormatsOnCapableDevices"), v6) && (v7 & 1) == 0 && !CFPreferencesGetAppBooleanValue(didConfirmHDR10BitVideoMostCompatiblePreference, @"com.apple.camera", 0))
  {
    v8 = sub_BCD8(@"CAM_CONFIRM_HIGH_EFFICIENCY_HDR_VIDEO_TITLE");
    v9 = sub_BCD8(@"CAM_CONFIRM_HIGH_EFFICIENCY_HDR_VIDEO");
    v10 = sub_BCD8(@"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_LEARN_MORE");
    v11 = sub_BCD8(@"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_OK");
    [(CameraVideoSettingsController *)self _showConfirmationSpecifierWithTitle:v8 prompt:v9 cancelText:v10 okText:v11 target:self confirmationAction:"_handleHDR10BitVideoMostCompatibleConfirmed:" cancelAction:"_handleConfirmHDRVideoHighEfficiencyLearnMore:" value:0];
  }

  else
  {
    CFPreferencesSetAppValue(@"CAMUserPreferenceHDR10BitVideoEnabled", value, @"com.apple.camera");
    CFPreferencesAppSynchronize(@"com.apple.camera");
    [(CameraSettingsBaseController *)self reloadSpecifiers];
  }
}

- (void)_handleHDR10BitVideoMostCompatibleConfirmed:(id)a3
{
  CFPreferencesSetAppValue(@"CAMUserPreferenceHDR10BitVideoEnabled", &__kCFBooleanTrue, @"com.apple.camera");
  CFPreferencesSetAppValue(didConfirmHDR10BitVideoMostCompatiblePreference, &__kCFBooleanTrue, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");

  [(CameraSettingsBaseController *)self reloadSpecifiers];
}

- (void)_handleConfirmHDRVideoHighEfficiencyLearnMore:(id)a3
{
  v3 = sub_BCD8(@"CAM_CONFIRM_HIGH_EFFICIENCY_HDR_VIDEO_LEARN_MORE_URL");
  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
    if (v4)
    {
      v5 = +[UIApplication sharedApplication];
      [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
    }
  }

  _objc_release_x1();
}

- (id)_isHDRVideoEnabled:(id)a3
{
  v3 = [(CameraVideoSettingsController *)self _showHEVCOnlyFormatsOnCapableDevices];
  v4 = +[CameraSettingsBaseController capabilities];
  v5 = [NSNumber numberWithBool:[CAMUserPreferences shouldEnableHDR10BitVideoForHEVCEnabled:v3 capabilities:v4]];

  return v5;
}

- (id)_isPALVideoEnabled:(id)a3
{
  v3 = [(CameraVideoSettingsController *)self _isPALVideoEnabled];

  return [NSNumber numberWithBool:v3];
}

- (void)_setPALVideoEnabled:(id)a3 specifier:(id)a4
{
  v5 = CAMUserPreferenceEnablePALVideoFormats;
  v6 = a3;
  CFPreferencesSetAppValue(v5, v6, @"com.apple.camera");
  LOBYTE(v5) = [v6 BOOLValue];

  if ((v5 & 1) == 0)
  {
    v7 = [(CameraVideoSettingsController *)self _videoConfiguration];
    if ([CAMCaptureCapabilities isPALVideoConfiguration:v7])
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        if (v7 > 9999)
        {
          if (v7 > 10002)
          {
            switch(v7)
            {
              case 10003:
                v9 = @"ImagePickerVGA";
                break;
              case 10004:
                v9 = @"ImagePickeriFrame720p";
                break;
              case 10005:
                v9 = @"ImagePickeriFrame540p";
                break;
            }
          }

          else if (v7 == 10000)
          {
            v9 = @"ImagePickerHigh";
          }

          else if (v7 == 10001)
          {
            v9 = @"ImagePickerMedium";
          }

          else
          {
            v9 = @"ImagePickerLow";
          }
        }

        else
        {
          switch(v7)
          {
            case 0:
              v9 = @"Auto";
              break;
            case 1:
              v9 = @"1080p60";
              break;
            case 2:
              v9 = @"720p120";
              break;
            case 3:
              v9 = @"720p240";
              break;
            case 4:
              v9 = @"1080p120";
              break;
            case 5:
              v9 = @"4k30";
              break;
            case 6:
              v9 = @"720p30";
              break;
            case 7:
              v9 = @"1080p30";
              break;
            case 8:
              v9 = @"1080p240";
              break;
            case 9:
              v9 = @"4k60";
              break;
            case 10:
              v9 = @"4k24";
              break;
            case 11:
              v9 = @"1080p25";
              break;
            case 12:
              v9 = @"4k25";
              break;
            case 13:
              v9 = @"4k120";
              break;
            case 14:
              v9 = @"4k100";
              break;
            default:
              break;
          }
        }

        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Resetting PAL video configuration %{public}@ to Auto after disabling PAL", &v15, 0xCu);
      }

      CFPreferencesSetAppValue(CAMUserPreferenceVideoConfiguration, &off_322F0, @"com.apple.camera");
    }

    v10 = [(CameraVideoSettingsController *)self _cinematicConfiguration];
    if ([CAMCaptureCapabilities isPALVideoConfiguration:v10])
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        if (v10 > 9999)
        {
          if (v10 > 10002)
          {
            switch(v10)
            {
              case 10003:
                v12 = @"ImagePickerVGA";
                break;
              case 10004:
                v12 = @"ImagePickeriFrame720p";
                break;
              case 10005:
                v12 = @"ImagePickeriFrame540p";
                break;
            }
          }

          else if (v10 == 10000)
          {
            v12 = @"ImagePickerHigh";
          }

          else if (v10 == 10001)
          {
            v12 = @"ImagePickerMedium";
          }

          else
          {
            v12 = @"ImagePickerLow";
          }
        }

        else
        {
          switch(v10)
          {
            case 0:
              v12 = @"Auto";
              break;
            case 1:
              v12 = @"1080p60";
              break;
            case 2:
              v12 = @"720p120";
              break;
            case 3:
              v12 = @"720p240";
              break;
            case 4:
              v12 = @"1080p120";
              break;
            case 5:
              v12 = @"4k30";
              break;
            case 6:
              v12 = @"720p30";
              break;
            case 7:
              v12 = @"1080p30";
              break;
            case 8:
              v12 = @"1080p240";
              break;
            case 9:
              v12 = @"4k60";
              break;
            case 10:
              v12 = @"4k24";
              break;
            case 11:
              v12 = @"1080p25";
              break;
            case 12:
              v12 = @"4k25";
              break;
            case 13:
              v12 = @"4k120";
              break;
            case 14:
              v12 = @"4k100";
              break;
            default:
              break;
          }
        }

        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Resetting PAL cinematic video configuration %{public}@ to Auto after disabling PAL", &v15, 0xCu);
      }

      CFPreferencesSetAppValue(CAMUserPreferenceCinematicConfiguration, &off_322F0, @"com.apple.camera");
    }

    if ([CAMCaptureCapabilities isPALVideoConfiguration:[(CameraVideoSettingsController *)self _slomoConfiguration]])
    {
      v13 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        if (v10 > 9999)
        {
          if (v10 > 10002)
          {
            switch(v10)
            {
              case 10003:
                v14 = @"ImagePickerVGA";
                break;
              case 10004:
                v14 = @"ImagePickeriFrame720p";
                break;
              case 10005:
                v14 = @"ImagePickeriFrame540p";
                break;
            }
          }

          else if (v10 == 10000)
          {
            v14 = @"ImagePickerHigh";
          }

          else if (v10 == 10001)
          {
            v14 = @"ImagePickerMedium";
          }

          else
          {
            v14 = @"ImagePickerLow";
          }
        }

        else
        {
          switch(v10)
          {
            case 0:
              v14 = @"Auto";
              break;
            case 1:
              v14 = @"1080p60";
              break;
            case 2:
              v14 = @"720p120";
              break;
            case 3:
              v14 = @"720p240";
              break;
            case 4:
              v14 = @"1080p120";
              break;
            case 5:
              v14 = @"4k30";
              break;
            case 6:
              v14 = @"720p30";
              break;
            case 7:
              v14 = @"1080p30";
              break;
            case 8:
              v14 = @"1080p240";
              break;
            case 9:
              v14 = @"4k60";
              break;
            case 10:
              v14 = @"4k24";
              break;
            case 11:
              v14 = @"1080p25";
              break;
            case 12:
              v14 = @"4k25";
              break;
            case 13:
              v14 = @"4k120";
              break;
            case 14:
              v14 = @"4k100";
              break;
            default:
              break;
          }
        }

        v15 = 138543362;
        v16 = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Resetting PAL slomo video configuration %{public}@ to Auto after disabling PAL", &v15, 0xCu);
      }

      CFPreferencesSetAppValue(CAMUserPreferenceSlomoConfiguration, &off_322F0, @"com.apple.camera");
    }
  }

  CFPreferencesAppSynchronize(@"com.apple.camera");
  [(CameraSettingsBaseController *)self reloadSpecifiers];
}

- (id)_isAutoLowLightVideoEnabled:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceAutoLowLightVideoEnabled", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)_setAutoLowLightVideoEnabled:(id)a3 specifier:(id)a4
{
  CFPreferencesSetAppValue(@"CAMUserPreferenceAutoLowLightVideoEnabled", a3, @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (id)_vfrVideoMode:(id)a3
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceVFRMode", @"com.apple.camera", 0);
  v4 = 0;
  if (AppIntegerValue <= 2)
  {
    v4 = sub_BCD8(off_2CDB0[AppIntegerValue]);
  }

  return v4;
}

- (id)_shouldDisableCameraSwitchingDuringVideoRecording:(id)a3
{
  v3 = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceDisableCameraSwitchingDuringVideoRecording", @"com.apple.camera", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)_setShouldDisableCameraSwitchingDuringVideoRecording:(id)a3 specifier:(id)a4
{
  CFPreferencesSetAppValue(@"CAMUserPreferenceDisableCameraSwitchingDuringVideoRecording", a3, @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

@end