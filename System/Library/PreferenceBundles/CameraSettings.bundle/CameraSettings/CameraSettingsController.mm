@interface CameraSettingsController
- (BOOL)_isHDRVideoEnabled;
- (BOOL)_shouldDisplayIndicatorsSpecifier;
- (id)_cinematicSpecifier;
- (id)_currentSmartStyleName:(id)name;
- (id)_getAssociatedAppDisplayName:(id)name;
- (id)_initializeSpecifiers;
- (id)_isMacroControlEnabled:(id)enabled;
- (id)_isSaveAssetsPhotoLibraryEnabled:(id)enabled;
- (id)_isSmudgeDetectionEnabled:(id)enabled;
- (id)_recordCinematicConfiguration:(id)configuration;
- (id)_recordSlomoConfiguration:(id)configuration;
- (id)_recordVideoConfiguration:(id)configuration;
- (id)_sharedLibrarySpecifier;
- (id)specifiers;
- (void)_createAndPrewarmSmartStylesController;
- (void)_handleConfirmHighEfficiencyLearnMore:(id)more;
- (void)_handleSlomoMostCompatibleConfirmed:(id)confirmed;
- (void)_launchCameraButtonTips:(id)tips;
- (void)_launchSemanticStylesSettings:(id)settings;
- (void)_launchSmartStylesSettings:(id)settings;
- (void)_privacyButtonPressed:(id)pressed;
- (void)_setMacroControlEnabled:(id)enabled specifier:(id)specifier;
- (void)_setRecordCinematicConfiguration:(id)configuration specifier:(id)specifier;
- (void)_setRecordSlomoConfiguration:(id)configuration specifier:(id)specifier;
- (void)_setSaveAssetsPhotoLibraryEnabled:(id)enabled specifier:(id)specifier;
- (void)_setSmudgeDetectionEnabled:(id)enabled specifier:(id)specifier;
- (void)cameraCaptureButtonAppConfigurationCoordinator:(id)coordinator didChangeAssociatedAppBundleID:(id)d;
- (void)emitNavigationEvent;
- (void)viewDidLoad;
@end

@implementation CameraSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _initializeSpecifiers = [(CameraSettingsController *)self _initializeSpecifiers];
    v6 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = _initializeSpecifiers;

    [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:*&self->super.PSListController_opaque[v3]];
    v7 = +[CameraSettingsBaseController capabilities];
    smartStylesSupported = [v7 smartStylesSupported];

    if (smartStylesSupported)
    {
      [(CameraSettingsController *)self _createAndPrewarmSmartStylesController];
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"_handleApplicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (id)_initializeSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[CameraSettingsBaseController capabilities];
  if ([v4 isSuperWideAutoMacroSupported])
  {
    [CAMUserPreferences performSuperWideAutoMacroMigrationWithCapabilities:v4];
  }

  [CAMUserPreferences performHorizonLevelUpgradeWithCapabilities:v4];
  [CAMUserPreferences performAudioConfigurationMigrationWithCapabilities:v4];
  [CAMUserPreferences performMostCompatibleConfirmationMigrationWithCapabilities:v4];
  isCameraButtonSupported = [v4 isCameraButtonSupported];
  selfCopy = self;
  smartStylesSupported = [v4 smartStylesSupported];
  if ((smartStylesSupported & 1) != 0 || isCameraButtonSupported)
  {
    if (isCameraButtonSupported)
    {
      v6 = sub_11414(@"SYSTEM_SETTINGS_HEADER");
    }

    else
    {
      v6 = 0;
    }

    v7 = [PSSpecifier groupSpecifierWithID:@"systemSettings" name:v6];
    [v3 addObject:v7];
    v8 = v7;
    v9 = v8;
    if (isCameraButtonSupported)
    {
      v10 = *(&self->super + 1);
      if (!v10)
      {
        v11 = [CameraSettingsUtilities appConfigurationCoordinatorForController:self];
        v12 = *(&self->super + 1);
        *(&self->super + 1) = v11;

        v10 = *(&self->super + 1);
      }

      [v10 addObserver:self];
      v13 = sub_11414(@"CAMERA_BUTTON_TITLE");
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"_getAssociatedAppDisplayName:" detail:objc_opt_class() cell:2 edit:0];

      [v14 setIdentifier:@"CAMERA_BUTTON_SETTINGS"];
      [v3 addObject:v14];
      v15 = sub_11414(@"CAMERA_BUTTON_%@_FOOTER");
      v16 = sub_11414(@"CAMERA_BUTTON_LEARN_MORE_TITLE");
      v17 = [NSString stringWithFormat:v15, v16];

      self = selfCopy;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [v9 setProperty:v19 forKey:PSFooterCellClassGroupKey];

      [v9 setProperty:v17 forKey:PSFooterHyperlinkViewTitleKey];
      v20 = sub_11414(@"CAMERA_BUTTON_LEARN_MORE_TITLE");
      v307.location = [v17 rangeOfString:v20];
      v21 = NSStringFromRange(v307);
      [v9 setProperty:v21 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v22 = [NSValue valueWithNonretainedObject:selfCopy];
      [v9 setProperty:v22 forKey:PSFooterHyperlinkViewTargetKey];

      v23 = NSStringFromSelector("_launchCameraButtonTips:");
      [v9 setProperty:v23 forKey:PSFooterHyperlinkViewActionKey];

      v24 = v9;
      if (!smartStylesSupported)
      {
        goto LABEL_15;
      }

      v25 = sub_11414(@"APP_SETTINGS_HEADER");
      v24 = [PSSpecifier groupSpecifierWithName:v25];

      [v3 addObject:v24];
    }

    else
    {
      v24 = v8;
      if (!smartStylesSupported)
      {
LABEL_15:
        v29 = [PSSpecifier groupSpecifierWithName:0];
        [v3 addObject:v29];

        goto LABEL_16;
      }
    }

    v26 = sub_11414(@"SYSTEM_STYLES_TITLE");
    v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:0 get:"_currentSmartStyleName:" detail:objc_opt_class() cell:2 edit:0];

    [v27 setProperty:@"SMART_STYLES" forKey:PSIDKey];
    [v27 setButtonAction:"_launchSmartStylesSettings:"];
    [v3 addObject:v27];
    v28 = sub_11414(@"SYSTEM_STYLES_FOOTER");
    [v24 setObject:v28 forKeyedSubscript:PSFooterTextGroupKey];

    goto LABEL_15;
  }

LABEL_16:
  back720pMaxFPS = [v4 back720pMaxFPS];
  back1080pMaxFPS = [v4 back1080pMaxFPS];
  v32 = back1080pMaxFPS;
  v34 = back720pMaxFPS > 29 && back1080pMaxFPS > 29;
  if ([v4 isHEVCEncodingSupported])
  {
    _showHEVCOnlyFormatsOnCapableDevices = [(CameraSettingsController *)self _showHEVCOnlyFormatsOnCapableDevices];
  }

  else
  {
    v36 = [v3 specifierForID:@"CameraFormatsSettingsList"];
    if (v36)
    {
      v37 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v38;
        v305 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Hiding formats specifiers", buf, 0x16u);
      }

      [v3 removeObject:v36];
    }

    _showHEVCOnlyFormatsOnCapableDevices = 0;
  }

  back4kMaxFPS = [v4 back4kMaxFPS];
  v40 = v32 > 59 || v34;
  if ((v40 & 1) != 0 || back4kMaxFPS >= 30)
  {
    v41 = sub_11414(@"CAM_RECORD_VIDEO_TITLE");
    v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:0 get:"_recordVideoConfiguration:" detail:objc_opt_class() cell:2 edit:0];

    [v42 setIdentifier:@"CameraVideoSettingsList"];
    [v3 addObject:v42];
  }

  backHighFrameRate720pMaxFPS = [v4 backHighFrameRate720pMaxFPS];
  backHighFrameRate1080pMaxFPS = [v4 backHighFrameRate1080pMaxFPS];
  backHighFrameRate4kMaxFPS = [v4 backHighFrameRate4kMaxFPS];
  v285 = v4;
  v45 = _showHEVCOnlyFormatsOnCapableDevices & (backHighFrameRate1080pMaxFPS > 239);
  if (backHighFrameRate720pMaxFPS < 240)
  {
    v45 = 1;
  }

  v286 = v3;
  if (backHighFrameRate720pMaxFPS <= 239 && backHighFrameRate1080pMaxFPS < 120)
  {
    v287 = &stru_2DB58;
    goto LABEL_118;
  }

  v279 = v45;
  v277 = sub_11414(@"CAM_RECORD_SLOMO_TITLE");
  v46 = [PSSpecifier preferenceSpecifierNamed:v277 target:self set:"_setRecordSlomoConfiguration:specifier:" get:"_recordSlomoConfiguration:" detail:objc_opt_class() cell:2 edit:0];
  [v46 setIdentifier:@"CameraSlomoSettingsList"];
  v47 = +[NSMutableString string];
  isFrontSlomoSupported = [v4 isFrontSlomoSupported];
  frontHighFrameRate1080pMaxFPS = [v4 frontHighFrameRate1080pMaxFPS];
  if (isFrontSlomoSupported && backHighFrameRate1080pMaxFPS >= 240 && frontHighFrameRate1080pMaxFPS <= 239)
  {
    v50 = sub_11414(@"CAM_RECORD_SLOMO_FOOTER_FFC_120_ONLY");
    [v47 appendFormat:@"%@\n\n", v50];
  }

  v51 = sub_11414(@"CAM_RECORD_SLOMO_FOOTER_HEAD");
  [v47 appendFormat:@"%@", v51];

  v281 = +[NSMutableArray array];
  obj = +[NSMutableArray array];
  v52 = +[NSMutableArray array];
  _isHDRVideoEnabled = [(CameraSettingsController *)self _isHDRVideoEnabled];
  v275 = _isHDRVideoEnabled;
  if (backHighFrameRate4kMaxFPS > 119)
  {
    v54 = _isHDRVideoEnabled;
  }

  else
  {
    v54 = 0;
  }

  if (v54)
  {
    v55 = 0;
    v56 = 0;
  }

  else
  {
    if (backHighFrameRate1080pMaxFPS > 239)
    {
      v55 = v279;
    }

    else
    {
      v55 = 0;
    }

    v56 = v55 ^ 1;
  }

  v273 = v56;
  if (backHighFrameRate1080pMaxFPS < 120)
  {
    [v281 addObject:&off_32410];
    v57 = sub_11414(@"CAM_RECORD_SLOMO_720p_120");
    [obj addObject:v57];

    v58 = sub_11414(@"CAM_RECORD_SLOMO_720p_120_SHORT");
    [v52 addObject:v58];

    v59 = sub_11414(@"CAM_RECORD_SLOMO_720p_120_FOOTER");
    [v47 appendFormat:@"\n%@", v59];
    v287 = &stru_2DB58;
LABEL_85:

    goto LABEL_86;
  }

  v272 = _showHEVCOnlyFormatsOnCapableDevices;
  v271 = v46;
  if (_showHEVCOnlyFormatsOnCapableDevices)
  {
    _isHDRVideoEnabled2 = 1;
    v61 = @"CAM_RECORD_SLOMO_1080p_120";
  }

  else
  {
    _isHDRVideoEnabled2 = [(CameraSettingsController *)selfCopy _isHDRVideoEnabled];
    if (_isHDRVideoEnabled2)
    {
      v61 = @"CAM_RECORD_SLOMO_1080p_120_MOST_COMPATIBLE";
    }

    else
    {
      v61 = @"CAM_RECORD_SLOMO_1080p_120";
    }
  }

  if (v54)
  {
    v62 = 0;
  }

  else
  {
    v62 = 4;
  }

  if (v54)
  {
    v63 = @"CAM_RECORD_SLOMO_1080p_120_HEVC_FOOTER_DEFAULT";
  }

  else
  {
    v63 = @"CAM_RECORD_SLOMO_1080p_120_HEVC_FOOTER";
  }

  if (v54)
  {
    v64 = @"CAM_RECORD_SLOMO_1080p_120_FOOTER_DEFAULT";
  }

  else
  {
    v64 = @"CAM_RECORD_SLOMO_1080p_120_FOOTER";
  }

  v65 = [NSNumber numberWithInteger:v62];
  [v281 addObject:v65];

  if (backHighFrameRate4kMaxFPS <= 119)
  {
    v66 = @"CAM_RECORD_SLOMO_1080p_120";
  }

  else
  {
    v66 = v61;
  }

  v67 = sub_11414(v66);
  v68 = sub_11414(@"CAM_RECORD_SLOMO_1080p_120_SHORT");
  if (_isHDRVideoEnabled2)
  {
    v69 = v63;
  }

  else
  {
    v69 = v64;
  }

  v287 = v69;
  v70 = sub_11414(v69);
  [obj addObject:v67];
  [v52 addObject:v68];
  [v47 appendFormat:@"\n%@", v70];

  v4 = v285;
  self = selfCopy;
  _showHEVCOnlyFormatsOnCapableDevices = v272;
  v46 = v271;
  if (backHighFrameRate1080pMaxFPS > 239)
  {
    if (v55)
    {
      v71 = 0;
    }

    else
    {
      v71 = 8;
    }

    v72 = @"CAM_RECORD_SLOMO_1080p_240_FOOTER";
    if (v55)
    {
      v72 = @"CAM_RECORD_SLOMO_1080p_240_FOOTER_DEFAULT";
    }

    v288 = v72;
    v73 = [NSNumber numberWithInteger:v71];
    [v281 addObject:v73];

    if (v272)
    {
      v74 = @"CAM_RECORD_SLOMO_1080p_240";
    }

    else
    {
      v74 = @"CAM_RECORD_SLOMO_1080p_240_MOST_COMPATIBLE";
    }

    v59 = v74;
    v75 = [NSBundle bundleForClass:objc_opt_class()];
    v76 = [v75 localizedStringForKey:v59 value:&stru_2DB58 table:@"CameraSettings"];

    v77 = [NSBundle bundleForClass:objc_opt_class()];
    v78 = [v77 localizedStringForKey:@"CAM_RECORD_SLOMO_1080p_240_SHORT" value:&stru_2DB58 table:@"CameraSettings"];

    v79 = v288;
    v46 = v271;
    v80 = [NSBundle bundleForClass:objc_opt_class()];
    v287 = v79;
    v81 = [v80 localizedStringForKey:v79 value:&stru_2DB58 table:@"CameraSettings"];

    _showHEVCOnlyFormatsOnCapableDevices = v272;
    [obj addObject:v76];
    [v52 addObject:v78];
    [v47 appendFormat:@"\n%@", v81];

    goto LABEL_85;
  }

LABEL_86:
  if (v279)
  {
    v82 = v277;
    v83 = v281;
  }

  else
  {
    if (v273)
    {
      v84 = 0;
    }

    else
    {
      v84 = 3;
    }

    if (v273)
    {
      v85 = @"CAM_RECORD_SLOMO_720p_240_HEVC_FOOTER_DEFAULT";
    }

    else
    {
      v85 = @"CAM_RECORD_SLOMO_720p_240_HEVC_FOOTER";
    }

    if (v273)
    {
      v86 = @"CAM_RECORD_SLOMO_720p_240_FOOTER_DEFAULT";
    }

    else
    {
      v86 = @"CAM_RECORD_SLOMO_720p_240_FOOTER";
    }

    v87 = [NSNumber numberWithInteger:v84];
    v83 = v281;
    [v281 addObject:v87];

    v88 = sub_11414(@"CAM_RECORD_SLOMO_720p_240");
    [obj addObject:v88];

    v89 = sub_11414(@"CAM_RECORD_SLOMO_720p_240_SHORT");
    [v52 addObject:v89];

    if (_showHEVCOnlyFormatsOnCapableDevices)
    {
      v90 = v85;
    }

    else
    {
      v90 = v86;
    }

    v287 = v90;
    v91 = sub_11414(v90);
    [v47 appendFormat:@"\n%@", v91];

    v82 = v277;
  }

  if (backHighFrameRate4kMaxFPS >= 120)
  {
    if ([(CameraSettingsController *)self _isPALVideoEnabled])
    {
      [v83 addObject:&off_32428];
      if (_showHEVCOnlyFormatsOnCapableDevices)
      {
        v92 = @"CAM_RECORD_SLOMO_4k_100";
      }

      else
      {
        v92 = @"CAM_RECORD_SLOMO_4k_100_MOST_COMPATIBLE";
      }

      v93 = sub_11414(v92);
      [obj addObject:v93];

      v94 = sub_11414(@"CAM_RECORD_SLOMO_4k_100_SHORT");
      [v52 addObject:v94];

      if (v275)
      {
        v95 = @"CAM_RECORD_SLOMO_4k_100_FOOTER_HDR";
      }

      else
      {
        v95 = @"CAM_RECORD_SLOMO_4k_100_FOOTER";
      }

      v96 = sub_11414(v95);
      [v47 appendFormat:@"\n%@", v96];
    }

    [v83 addObject:&off_32440];
    if (_showHEVCOnlyFormatsOnCapableDevices)
    {
      v97 = @"CAM_RECORD_SLOMO_4k_120";
    }

    else
    {
      v97 = @"CAM_RECORD_SLOMO_4k_120_MOST_COMPATIBLE";
    }

    v98 = sub_11414(v97);
    [obj addObject:v98];

    v99 = sub_11414(@"CAM_RECORD_SLOMO_4k_120_SHORT");
    [v52 addObject:v99];

    if (v275)
    {
      v100 = @"CAM_RECORD_SLOMO_4k_120_FOOTER_HDR";
    }

    else
    {
      v100 = @"CAM_RECORD_SLOMO_4k_120_FOOTER";
    }

    v101 = sub_11414(v100);
    [v47 appendFormat:@"\n%@", v101];
  }

  [v46 setValues:v83 titles:obj shortTitles:v52];
  [v46 setProperty:v47 forKey:PSStaticTextMessageKey];
  [v286 addObject:v46];

  v3 = v286;
LABEL_118:
  if ([v4 cinematic4KSupported])
  {
    _cinematicSpecifier = [(CameraSettingsController *)self _cinematicSpecifier];
    [v3 addObject:_cinematicSpecifier];
  }

  if (([v4 isStereoAudioRecordingSupported] & 1) != 0 || (objc_msgSend(v4, "isCinematicAudioSupported") & 1) != 0 || objc_msgSend(v4, "isWindRemovalSupported"))
  {
    v103 = sub_11414(@"CAM_AUDIO_CONFIGURATION_TITLE");
    v104 = objc_opt_class();
    v105 = [PSSpecifier preferenceSpecifierNamed:v103 target:v104 set:0 get:"titleForSelectedAudioConfiguration" detail:objc_opt_class() cell:2 edit:0];

    [v105 setIdentifier:@"CameraAudioSettingsList"];
    [v3 addObject:v105];
  }

  v284 = [(CameraSettingsController *)self loadSpecifiersFromPlistName:@"CameraSettings" target:self];
  [v3 addObjectsFromArray:?];
  v106 = [v3 indexOfSpecifierWithID:@"CameraPreserveSettingsSwitch"];
  if ([v4 isLongPressVideoCaptureFromPhotoModeSupported] && objc_msgSend(v4, "multipleCaptureFeaturesSupported"))
  {
    v107 = sub_11414(@"VOLUME_UP_BURST");
    v108 = [PSSpecifier preferenceSpecifierNamed:v107 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    [v108 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v108 setObject:@"CAMUserPreferenceVolumeUpBurst" forKeyedSubscript:PSKeyNameKey];
    [v108 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
    [v108 setIdentifier:@"VOLUME_UP_BURST"];
    v109 = 0x7FFFFFFFFFFFFFFFLL;
    if (v106 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v109 = (v106 + 2);
      [v3 insertObject:v108 atIndex:v106 + 1];
    }

    v106 = v109;
  }

  if ([v4 isImageAnalysisSupported])
  {
    v110 = +[NSUserDefaults standardUserDefaults];
    v111 = [v110 objectForKey:@"AppleLiveTextEnabled" inDomain:NSGlobalDomain];

    if (v111)
    {
      bOOLValue = [v111 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_132;
    }

    v215 = +[NSLocale _deviceLanguage];
    *buf = v215;
    v216 = [NSArray arrayWithObjects:buf count:1];
    v217 = [NSLocale matchedLanguagesFromAvailableLanguages:&off_32170 forPreferredLanguages:v216];

    v218 = [v217 count];
    if (v218)
    {
LABEL_132:
      v113 = sub_11414(@"QR_CODES");
      v114 = [PSSpecifier preferenceSpecifierNamed:v113 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

      [v114 setIdentifier:@"CameraQRBannerSwitch"];
      v115 = PSDefaultsKey;
      [v114 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
      v116 = PSKeyNameKey;
      [v114 setObject:@"CAMUserPreferenceShowQRCodeBanners" forKeyedSubscript:PSKeyNameKey];
      v117 = PSDefaultValueKey;
      [v114 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
      [v286 insertObject:v114 atIndex:v106];
      v118 = sub_11414(@"TEXT_ANALYSIS");
      v119 = [PSSpecifier preferenceSpecifierNamed:v118 target:selfCopy set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

      self = selfCopy;
      [v119 setObject:@"com.apple.camera" forKeyedSubscript:v115];
      v120 = v116;
      v3 = v286;
      [v119 setObject:@"CAMUserPreferenceShowImageAnalysis" forKeyedSubscript:v120];
      v121 = [NSNumber numberWithBool:1];
      [v119 setObject:v121 forKeyedSubscript:v117];

      [v119 setIdentifier:@"TEXT_ANALYSIS"];
      [v286 insertObject:v119 atIndex:v106 + 1];

      v106 += 2;
    }
  }

LABEL_133:
  if ([CAMUserPreferences isSharedLibrarySupportedAndEnabledForCapabilities:v4])
  {
    v122 = [PSSpecifier groupSpecifierWithID:@"autoAddSharedLibraryGroup"];
    [v3 insertObject:v122 atIndex:v106];
    _sharedLibrarySpecifier = [(CameraSettingsController *)self _sharedLibrarySpecifier];
    [v3 insertObject:_sharedLibrarySpecifier atIndex:v106 + 1];
  }

  v124 = [v3 indexOfSpecifierWithID:@"CameraLevelSwitch"];
  v125 = v124 + 1;
  if ([v4 isMirroredFrontCapturesSupported])
  {
    if ([v4 isMirroredFrontVideosSupported])
    {
      v126 = @"MIRROR_FRONT_CAPTURES";
    }

    else
    {
      v126 = @"MIRROR_FRONT_PHOTOS";
    }

    v127 = sub_11414(v126);

    v128 = [PSSpecifier preferenceSpecifierNamed:v127 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
    [v128 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v128 setObject:@"CAMUserPreferenceMirrorFrontCameraCaptures" forKeyedSubscript:PSKeyNameKey];
    [v128 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
    [v128 setIdentifier:@"MIRROR"];
    [v3 insertObject:v128 atIndex:v125];

    v125 = v124 + 2;
  }

  if ([v4 isSpatialOverCaptureSupported])
  {
    v129 = sub_11414(@"OVER_CAPTURE_VIEW_OUTSIDE_THE_FRAME_SWITCH");
    v130 = [PSSpecifier preferenceSpecifierNamed:v129 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
    [v130 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v130 setObject:@"CAMUserPreferenceEnableViewOutsideTheFrame" forKeyedSubscript:PSKeyNameKey];
    [v130 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
    [v130 setIdentifier:@"OVER_CAPTURE_VIEW_OUTSIDE_THE_FRAME_SWITCH"];
    [v3 insertObject:v130 atIndex:v125];

    ++v125;
  }

  if ([(CameraSettingsController *)self _shouldDisplayIndicatorsSpecifier])
  {
    v131 = sub_11414(@"CAM_INDICATORS_TITLE");
    v132 = [PSSpecifier preferenceSpecifierNamed:v131 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v132 setIdentifier:@"CameraIndicatorsSettingsList"];
    [v3 insertObject:v132 atIndex:v125];

    ++v125;
  }

  if (([v4 semanticStylesSupport] & 8) != 0)
  {
    v133 = smartStylesSupported;
  }

  else
  {
    v133 = 1;
  }

  v134 = v125;
  if ((v133 & 1) == 0)
  {
    v135 = [PSSpecifier groupSpecifierWithID:@"semanticStyles"];
    v136 = sub_11414(@"SEMANTIC_STYLES_ROW_FOOTER");
    [v135 setObject:v136 forKeyedSubscript:PSFooterTextGroupKey];

    [v3 insertObject:v135 atIndex:v125];
    v137 = sub_11414(@"SEMANTIC_STYLES_ROW_TITLE");
    v138 = [PSSpecifier preferenceSpecifierNamed:v137 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v138 setProperty:@"PHOTOGRAPHIC_STYLES" forKey:PSIDKey];
    [v138 setButtonAction:"_launchSemanticStylesSettings:"];
    v134 = v125 + 2;
    [v3 insertObject:v138 atIndex:v125 + 1];
  }

  if ([v4 focalLengthPickerSupported])
  {
    v282 = v125;
    baseFocalLengthForWideCamera = [v4 baseFocalLengthForWideCamera];
    v140 = 0.0;
    if (baseFocalLengthForWideCamera <= 3)
    {
      v140 = dbl_1FF08[baseFocalLengthForWideCamera];
    }

    integerFormatter = [objc_opt_class() integerFormatter];
    v142 = [NSNumber numberWithDouble:v140];
    v143 = [integerFormatter stringFromNumber:v142];

    v144 = sub_11414(@"FOCAL_LENGTH_ROW_%@_MM_FOOTER");
    v278 = v143;
    v143 = [NSString stringWithFormat:v144, v143];

    v146 = [PSSpecifier groupSpecifierWithID:@"focalLength"];
    v276 = v143;
    [v146 setObject:v143 forKeyedSubscript:PSFooterTextGroupKey];
    v274 = v146;
    v280 = v134;
    [v3 insertObject:v146 atIndex:v134];
    supportedCustomLensGroups = [v4 supportedCustomLensGroups];
    v148 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [supportedCustomLensGroups count]);
    v294 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [supportedCustomLensGroups count]);
    v298 = 0u;
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    obja = supportedCustomLensGroups;
    v149 = [obja countByEnumeratingWithState:&v298 objects:v303 count:16];
    if (v149)
    {
      v150 = v149;
      v151 = *v299;
      do
      {
        for (i = 0; i != v150; i = i + 1)
        {
          if (*v299 != v151)
          {
            objc_enumerationMutation(obja);
          }

          v153 = *(*(&v298 + 1) + 8 * i);
          v154 = [(CameraSettingsController *)self _focalLengthStringForCustomLens:0];
          if ([v153 count] == &dword_0 + 1)
          {
            v155 = sub_11414(@"FOCAL_LENGTH_GROUP_%@_MM_ONLY");
            v154 = [NSString stringWithFormat:v155, v154];
            [v294 addObject:v154];

            [v148 addObject:v153];
          }

          else if ([v153 count] == &dword_0 + 2)
          {
            v157 = [v153 objectAtIndexedSubscript:1];
            v158 = -[CameraSettingsController _focalLengthStringForCustomLens:](self, "_focalLengthStringForCustomLens:", [v157 integerValue]);

            v159 = sub_11414(@"FOCAL_LENGTH_GROUP_%@_AND_%@_MM");
            v158 = [NSString stringWithFormat:v159, v154, v158];

            [v294 addObject:v158];
            [v148 addObject:v153];
          }

          else if ([v153 count] == &dword_0 + 3)
          {
            v161 = [v153 objectAtIndexedSubscript:1];
            v162 = -[CameraSettingsController _focalLengthStringForCustomLens:](self, "_focalLengthStringForCustomLens:", [v161 integerValue]);

            v163 = [v153 objectAtIndexedSubscript:2];
            v164 = -[CameraSettingsController _focalLengthStringForCustomLens:](self, "_focalLengthStringForCustomLens:", [v163 integerValue]);

            v165 = sub_11414(@"FOCAL_LENGTH_GROUP_%@_AND_%@_AND_%@_MM");
            v164 = [NSString stringWithFormat:v165, v154, v162, v164];

            self = selfCopy;
            [v294 addObject:v164];
            [v148 addObject:v153];
          }
        }

        v150 = [obja countByEnumeratingWithState:&v298 objects:v303 count:16];
      }

      while (v150);
    }

    v4 = v285;
    if ([v285 isCameraButtonSupported])
    {
      v167 = @"FOCAL_LENGTH_ROW_TITLE_CAMERA_BUTTON";
    }

    else
    {
      v167 = @"FOCAL_LENGTH_ROW_TITLE";
    }

    v168 = sub_11414(v167);
    v169 = [PSSpecifier preferenceSpecifierNamed:v168 target:self set:0 get:"_selectedCustomLensGroup" detail:objc_opt_class() cell:2 edit:0];

    [v169 setIdentifier:@"CameraFocalLengthSettingsList"];
    [v169 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v169 setObject:CAMUserPreferencesSelectedCustomLensGroup forKeyedSubscript:PSKeyNameKey];
    lastObject = [v148 lastObject];
    [v169 setObject:lastObject forKeyedSubscript:PSDefaultValueKey];

    [v169 setObject:v276 forKeyedSubscript:PSStaticTextMessageKey];
    [v169 setValues:v148 titles:v294];
    v3 = v286;
    [v286 insertObject:v169 atIndex:v280 + 1];

    v134 = v280 + 2;
    v125 = v282;
  }

  if ([v4 semanticDevelopmentSupported])
  {
    v171 = [PSSpecifier groupSpecifierWithID:@"semanticDevelopmentGroup"];
    v172 = sub_11414(@"SEM_DEV_GROUP_FOOTER");
    [v171 setObject:v172 forKeyedSubscript:PSFooterTextGroupKey];

    [v3 insertObject:v171 atIndex:v134];
    v173 = sub_11414(@"SEM_DEV_SWITCH");
    v174 = [PSSpecifier preferenceSpecifierNamed:v173 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    [v174 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v174 setObject:@"CAMUserPreferenceEnableSemanticDevelopment" forKeyedSubscript:PSKeyNameKey];
    [v174 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
    [v3 insertObject:v174 atIndex:v134 + 1];

    v134 += 2;
  }

  if ([v4 photoModeDepthSuggestionSupported])
  {
    v175 = [PSSpecifier groupSpecifierWithID:@"depthInPhotoModeGroup"];
    v176 = sub_11414(@"PHOTO_MODE_DEPTH_GROUP_FOOTER");
    [v175 setObject:v176 forKeyedSubscript:PSFooterTextGroupKey];

    [v3 insertObject:v175 atIndex:v134];
    sub_11414(@"PHOTO_MODE_DEPTH_SWITCH");
    v178 = v177 = v134;
    v179 = [PSSpecifier preferenceSpecifierNamed:v178 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    [v179 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v179 setObject:@"CAMUserPreferenceEnableDepthSuggestion" forKeyedSubscript:PSKeyNameKey];
    [v179 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
    [v179 setIdentifier:@"PHOTO_MODE_DEPTH_SWITCH"];
    v134 = v177 + 2;
    [v3 insertObject:v179 atIndex:v177 + 1];
  }

  if ([v4 responsiveShutterSupported])
  {
    v180 = [PSSpecifier groupSpecifierWithID:@"dynamicCaptureGroup"];
    v181 = sub_11414(@"CAM_CAPTURE_GROUP_FOOTER");
    [v180 setObject:v181 forKeyedSubscript:PSFooterTextGroupKey];

    [v3 insertObject:v180 atIndex:v134];
    sub_11414(@"CAM_CAPTURE_DYNAMIC_SHUTTER_SWITCH");
    v183 = v182 = v134;
    v184 = [PSSpecifier preferenceSpecifierNamed:v183 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    [v184 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v184 setObject:@"CAMUserPreferenceEnableResponsiveShutter" forKeyedSubscript:PSKeyNameKey];
    [v184 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
    [v184 setIdentifier:@"CAM_CAPTURE_DYNAMIC_SHUTTER_SWITCH"];
    v134 = v182 + 2;
    [v3 insertObject:v184 atIndex:v182 + 1];
  }

  if ([v4 contentAwareDistortionCorrectionSupported])
  {
    v185 = [PSSpecifier groupSpecifierWithID:@"intelligentDistortionCorrectionGroup"];
    if ([v4 isBackSuperWideSupported])
    {
      v186 = @"IDC_FOOTER";
    }

    else
    {
      v186 = @"IDC_FOOTER_FRONT_ONLY";
    }

    v187 = sub_11414(v186);

    [v185 setObject:v187 forKeyedSubscript:PSFooterTextGroupKey];
    [v3 insertObject:v185 atIndex:v134];
    v188 = v134;
    sub_11414(@"IDC_SWITCH");
    v190 = v189 = v125;
    v191 = [PSSpecifier preferenceSpecifierNamed:v190 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    v125 = v189;
    [v191 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v191 setObject:@"CAMUserPreferenceContentAwareDistortionCorrection" forKeyedSubscript:PSKeyNameKey];
    [v191 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
    [v191 setIdentifier:@"IDC_SWITCH"];
    v134 += 2;
    v192 = (v188 + 1);
    v193 = v3;
    v4 = v285;
    [v3 insertObject:v191 atIndex:v192];
  }

  else
  {
    v193 = v3;
  }

  if ([v4 isSuperWideAutoMacroSupported])
  {
    v194 = [PSSpecifier groupSpecifierWithID:@"superWideAutoMacroGroup"];
    v195 = sub_11414(@"AUTO_MACRO_GROUP_FOOTER");
    [v194 setObject:v195 forKeyedSubscript:PSFooterTextGroupKey];

    v196 = v193;
    [v193 insertObject:v194 atIndex:v134];
    sub_11414(@"AUTO_MACRO_SWITCH");
    v198 = v197 = v134;
    v199 = [PSSpecifier preferenceSpecifierNamed:v198 target:self set:"_setMacroControlEnabled:specifier:" get:"_isMacroControlEnabled:" detail:0 cell:6 edit:0];

    [v199 setIdentifier:@"AUTO_MACRO_SWITCH"];
    v134 = v197 + 2;
    [v196 insertObject:v199 atIndex:v197 + 1];
  }

  else
  {
    v196 = v193;
  }

  v200 = [v196 specifierForID:@"hdrTitleGroup"];
  if (v125 != v134)
  {
    v201 = [v196 objectAtIndexedSubscript:v125];
    v202 = sub_11414(@"CAM_PHOTO_CAPTURE_GROUP_TITLE");
    [v201 setName:v202];

    [v200 setName:0];
  }

  if ([v4 isHDRSettingAllowed])
  {
    isModernHDRSupported = [v4 isModernHDRSupported];
    isSmartHDRSupported = [v4 isSmartHDRSupported];
    isHDREV0CaptureSupported = [v4 isHDREV0CaptureSupported];
    if (isSmartHDRSupported)
    {
      v206 = [v196 indexOfObject:v200];
      if (v206 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v207 = v206;
        name = [v200 name];
        target = [v200 target];
        v210 = [PSSpecifier preferenceSpecifierNamed:name target:target set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:0 edit:0];

        if (isHDREV0CaptureSupported)
        {
          v211 = @"CAM_MODERN_HDR_SMART_HDR_FOOTER";
        }

        else if ([v4 isFrontSmartHDRSupported])
        {
          v211 = @"CAM_MODERN_HDR_SMART_HDR_FOOTER_EV0_UNAVAILABLE";
        }

        else
        {
          v211 = @"CAM_MODERN_HDR_SMART_HDR_AUTO_HDR_FOOTER";
        }

        v220 = [NSBundle bundleForClass:objc_opt_class()];
        v221 = [v220 localizedStringForKey:v211 value:&stru_2DB58 table:@"CameraSettings"];
        [v210 setObject:v221 forKeyedSubscript:PSFooterTextGroupKey];

        [v196 setObject:v210 atIndexedSubscript:v207];
      }

      v214 = @"CAM_MODERN_HDR_SMART_HDR";
    }

    else
    {
      if (!isModernHDRSupported)
      {
        v219 = 0;
LABEL_209:

        goto LABEL_210;
      }

      v214 = @"CAM_MODERN_HDR_AUTO_HDR";
    }

    v222 = [NSBundle bundleForClass:objc_opt_class()];
    v219 = [v222 localizedStringForKey:v214 value:&stru_2DB58 table:@"CameraSettings"];

    v223 = [v196 indexOfSpecifierWithID:@"hdrKeepOriginalPhotoSwitch"];
    if (v223 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v224 = v223;
      v225 = [NSBundle bundleForClass:objc_opt_class()];
      v226 = [v225 localizedStringForKey:@"HDR_KEEP_ORIGINAL_PHOTO" value:&stru_2DB58 table:@"CameraSettings"];

      objb = v226;
      v227 = [PSSpecifier preferenceSpecifierNamed:v226 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
      LOBYTE(v225) = isHDREV0CaptureSupported;
      v228 = PSDefaultsKey;
      [v227 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
      v229 = PSKeyNameKey;
      [v227 setObject:@"CAMUserPreferenceModernHDRKeepNormalPhoto" forKeyedSubscript:PSKeyNameKey];
      v230 = PSDefaultValueKey;
      [v227 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
      [v196 replaceObjectAtIndex:v224 withObject:v227];
      if ((v225 & 1) == 0)
      {
        [v196 removeObjectAtIndex:v224];
      }

      v231 = [PSSpecifier preferenceSpecifierNamed:v219 target:selfCopy set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

      [v231 setObject:@"com.apple.camera" forKeyedSubscript:v228];
      [v231 setObject:@"CAMUserPreferenceModernHDRBehavior" forKeyedSubscript:v229];
      [v231 setObject:&__kCFBooleanTrue forKeyedSubscript:v230];
      [v196 insertObject:v231 atIndex:v224];

      v4 = v285;
    }

    goto LABEL_209;
  }

  v212 = [v196 indexOfSpecifierWithID:@"hdrTitleGroup"];
  if (v212 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v196 removeObjectAtIndex:v212];
  }

  v213 = [v196 indexOfSpecifierWithID:@"hdrKeepOriginalPhotoSwitch"];
  if (v213 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v196 removeObjectAtIndex:v213];
  }

LABEL_210:
  v232 = +[CAMCaptureCapabilities capabilities];
  if ([v232 isSmudgeDetectionSupported])
  {
    v233 = +[CAMCaptureCapabilities isCameraAppInstalled];

    if (!v233)
    {
      goto LABEL_214;
    }

    v232 = [PSSpecifier groupSpecifierWithID:@"smudgeDetectionHintsGroup"];
    v234 = sub_11414(@"SMUDGE_DETECTION_FOOTER");
    [v232 setObject:v234 forKeyedSubscript:PSFooterTextGroupKey];

    [v196 addObject:v232];
    v235 = sub_11414(@"SMUDGE_DETECTION_SWITCH");
    v236 = [PSSpecifier preferenceSpecifierNamed:v235 target:selfCopy set:"_setSmudgeDetectionEnabled:specifier:" get:"_isSmudgeDetectionEnabled:" detail:0 cell:6 edit:0];

    [v236 setIdentifier:@"SMUDGE_DETECTION_SWITCH"];
    [v196 addObject:v236];
  }

LABEL_214:
  if (+[CAMCaptureCapabilities isCameraAppInstalled])
  {
    v237 = [PSSpecifier groupSpecifierWithID:@"lockScreenCameraSwipeGestureGroup"];
    v238 = +[UIApplication sharedApplication];
    if ([v238 userInterfaceLayoutDirection] == &dword_0 + 1)
    {
      v239 = @"SWIPE_RIGHT";
    }

    else
    {
      v239 = @"SWIPE_LEFT";
    }

    v240 = sub_11414(v239);

    v241 = sub_11414(@"LOCK_SCREEN_SWIPE_%@_FOOTER");
    v240 = [NSString stringWithFormat:v241, v240];

    [v237 setObject:v240 forKeyedSubscript:PSFooterTextGroupKey];
    [v196 addObject:v237];
    sub_11414(@"LOCK_SCREEN_SWIPE_SWITCH");
    v244 = v243 = v200;
    v245 = [PSSpecifier preferenceSpecifierNamed:v244 target:selfCopy set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    v200 = v243;
    [v245 setIdentifier:@"LOCK_SCREEN_SWIPE_SWITCH"];
    [v245 setObject:@"com.apple.springboard" forKeyedSubscript:PSDefaultsKey];
    [v245 setObject:@"SBLockScreenCameraSwipeEnabled" forKeyedSubscript:PSKeyNameKey];
    [v245 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
    [v196 addObject:v245];
  }

  if (+[CAMCaptureCapabilities isMessagesAppInstalled])
  {
    v246 = sub_11414(@"CAM_SAVE_MESSAGES_ASSETS_PHOTO_LIBRARY_TITLE");
    v247 = [PSSpecifier groupSpecifierWithName:v246];

    v248 = sub_11414(@"CAM_SAVE_MESSAGES_ASSETS_PHOTO_LIBRARY_FOOTER");
    [v247 setObject:v248 forKeyedSubscript:PSFooterTextGroupKey];

    [v196 addObject:v247];
    v249 = sub_11414(@"CAM_SAVE_MESSAGES_ASSETS_PHOTO_LIBRARY_SWITCH");
    v250 = [PSSpecifier preferenceSpecifierNamed:v249 target:selfCopy set:"_setSaveAssetsPhotoLibraryEnabled:specifier:" get:"_isSaveAssetsPhotoLibraryEnabled:" detail:0 cell:6 edit:0];

    [v250 setIdentifier:@"CAM_SAVE_MESSAGES_ASSETS_PHOTO_LIBRARY_SWITCH"];
    [v196 addObject:v250];
  }

  if ([v4 isTimeOfFlightSupported])
  {
    v251 = +[OBBundleManager sharedManager];
    v252 = [v251 bundleWithIdentifier:@"com.apple.onboarding.camera"];

    privacyFlow = [v252 privacyFlow];
    localizedButtonTitle = [privacyFlow localizedButtonTitle];
    v255 = [localizedButtonTitle rangeOfString:localizedButtonTitle];
    v256 = v200;
    v258 = v257;
    v259 = [PSSpecifier groupSpecifierWithID:@"Privacy"];
    v260 = objc_opt_class();
    v261 = NSStringFromClass(v260);
    [v259 setProperty:v261 forKey:PSFooterCellClassGroupKey];

    [v259 setProperty:localizedButtonTitle forKey:PSFooterHyperlinkViewTitleKey];
    v308.location = v255;
    v308.length = v258;
    v200 = v256;
    v262 = NSStringFromRange(v308);
    [v259 setProperty:v262 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v263 = [NSValue valueWithNonretainedObject:selfCopy];
    [v259 setProperty:v263 forKey:PSFooterHyperlinkViewTargetKey];

    v264 = NSStringFromSelector("_privacyButtonPressed:");
    [v259 setProperty:v264 forKey:PSFooterHyperlinkViewActionKey];

    [v196 addObject:v259];
  }

  if ((+[CAMCaptureCapabilities isCameraAppInstalled](CAMCaptureCapabilities, "isCameraAppInstalled") & 1) == 0 && (+[CAMCaptureCapabilities isMessagesAppInstalled]& 1) == 0)
  {
    v302[0] = @"systemSettings";
    v302[1] = @"CAMERA_BUTTON_SETTINGS";
    v265 = [NSArray arrayWithObjects:v302 count:2];
    v266 = +[NSMutableArray array];
    v295[0] = _NSConcreteStackBlock;
    v295[1] = 3221225472;
    v295[2] = sub_11580;
    v295[3] = &unk_2CDF0;
    v267 = v196;
    v296 = v267;
    v268 = v266;
    v297 = v268;
    [v265 enumerateObjectsUsingBlock:v295];
    v196 = v268;
  }

  v269 = v196;

  return v196;
}

- (void)_handleConfirmHighEfficiencyLearnMore:(id)more
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

- (id)_recordVideoConfiguration:(id)configuration
{
  v3 = +[CameraSettingsBaseController capabilities];
  v4 = [NSNumber numberWithLong:CFPreferencesGetAppIntegerValue(CAMUserPreferenceVideoConfiguration, @"com.apple.camera", 0)];
  integerValue = [v4 integerValue];
  if (([v3 isSupportedVideoConfiguration:integerValue forMode:1 device:1] & 1) == 0 && (objc_msgSend(v3, "isSupportedVideoConfiguration:forMode:device:", integerValue, 1, 0) & 1) == 0)
  {

    v4 = &off_32458;
  }

  v6 = [CameraVideoSettingsController shortTitleForVideoConfiguration:v4];

  return v6;
}

- (id)_recordSlomoConfiguration:(id)configuration
{
  values = [configuration values];
  v4 = [PFMediaCapabilities recordSlomoConfigurationWithValidValues:values];

  return v4;
}

- (void)_setRecordSlomoConfiguration:(id)configuration specifier:(id)specifier
{
  configurationCopy = configuration;
  integerValue = [configurationCopy integerValue];
  v6 = integerValue - 13 < 2 || integerValue == &dword_8;
  if ((v6 || integerValue == &dword_4 && -[CameraSettingsController _isHDRVideoEnabled](self, "_isHDRVideoEnabled")) && (+[CameraSettingsBaseController capabilities](CameraSettingsBaseController, "capabilities"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isHEVCEncodingSupported], v7, v9 = -[CameraSettingsController _showHEVCOnlyFormatsOnCapableDevices](self, "_showHEVCOnlyFormatsOnCapableDevices"), v8) && (v9 & 1) == 0 && !CFPreferencesGetAppBooleanValue(CAMUserPreferencesDidConfirmSlomoMostCompatible, @"com.apple.camera", 0))
  {
    v10 = objc_alloc_init(PSConfirmationSpecifier);
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_TITLE" value:&stru_2DB58 table:@"CameraSettings"];
    [v10 setTitle:v12];

    if ([(CameraSettingsController *)self _isHDRVideoEnabled])
    {
      v13 = @"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_SLOMO_HDR";
    }

    else
    {
      v13 = @"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_SLOMO";
    }

    v14 = sub_11414(v13);
    [v10 setPrompt:v14];

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_LEARN_MORE" value:&stru_2DB58 table:@"CameraSettings"];
    [v10 setCancelButton:v16];

    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"CAM_CONFIRM_HIGH_EFFICIENCY_VIDEO_OK" value:&stru_2DB58 table:@"CameraSettings"];
    [v10 setOkButton:v18];

    [v10 setTarget:self];
    [v10 setConfirmationAction:"_handleSlomoMostCompatibleConfirmed:"];
    [v10 setConfirmationCancelAction:"_handleConfirmHighEfficiencyLearnMore:"];
    [v10 setUserInfo:configurationCopy];
    [(CameraSettingsController *)self showConfirmationViewForSpecifier:v10 useAlert:1];
  }

  else
  {
    [PFMediaCapabilities setRecordSlomoConfiguration:configurationCopy];
    CFPreferencesAppSynchronize(@"com.apple.camera");
  }
}

- (void)_handleSlomoMostCompatibleConfirmed:(id)confirmed
{
  userInfo = [confirmed userInfo];
  [PFMediaCapabilities setRecordSlomoConfiguration:userInfo];
  CFPreferencesSetAppValue(CAMUserPreferencesDidConfirmSlomoMostCompatible, &__kCFBooleanTrue, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (BOOL)_isHDRVideoEnabled
{
  _showHEVCOnlyFormatsOnCapableDevices = [(CameraSettingsController *)self _showHEVCOnlyFormatsOnCapableDevices];
  v3 = +[CameraSettingsBaseController capabilities];
  v4 = [CAMUserPreferences shouldEnableHDR10BitVideoForHEVCEnabled:_showHEVCOnlyFormatsOnCapableDevices capabilities:v3];

  return v4;
}

- (id)_cinematicSpecifier
{
  v3 = sub_11414(@"CAM_RECORD_CINEMATIC_TITLE");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"_setRecordCinematicConfiguration:specifier:" get:"_recordCinematicConfiguration:" detail:objc_opt_class() cell:2 edit:0];
  [v4 setIdentifier:@"CameraCinematicSettingsList"];
  v5 = +[CameraSettingsBaseController capabilities];
  if ([v5 isPALVideoSupported])
  {
    _isPALVideoEnabled = [(CameraSettingsController *)self _isPALVideoEnabled];
  }

  else
  {
    _isPALVideoEnabled = 0;
  }

  v7 = +[NSMutableString string];
  v8 = sub_11414(@"CAM_RECORD_CINEMATIC_FOOTER_HEAD");
  [v7 appendFormat:@"%@", v8];

  v9 = +[NSMutableArray array];
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  [v9 addObject:&off_32458];
  v12 = sub_11414(@"CAM_RECORD_VIDEO_1080p_30");
  [v10 addObject:v12];

  v13 = sub_11414(@"CAM_RECORD_VIDEO_1080p_30_SHORT");
  [v11 addObject:v13];

  v14 = sub_11414(@"CAM_RECORD_VIDEO_1080p_30_HEVC_FOOTER");
  [v7 appendFormat:@"\n%@", v14];

  [v9 addObject:&off_32470];
  v15 = sub_11414(@"CAM_RECORD_VIDEO_4K_24");
  [v10 addObject:v15];

  v16 = sub_11414(@"CAM_RECORD_VIDEO_4K_24_SHORT");
  [v11 addObject:v16];

  v17 = sub_11414(@"CAM_RECORD_VIDEO_4K_24_HEVC_FOOTER");
  [v7 appendFormat:@"\n%@", v17];

  if (_isPALVideoEnabled)
  {
    [v9 addObject:&off_32488];
    v18 = sub_11414(@"CAM_RECORD_VIDEO_4K_25");
    [v10 addObject:v18];

    v19 = sub_11414(@"CAM_RECORD_VIDEO_4K_25_SHORT");
    [v11 addObject:v19];

    v20 = sub_11414(@"CAM_RECORD_VIDEO_4K_25_HEVC_FOOTER");
    [v7 appendFormat:@"\n%@", v20];
  }

  [v9 addObject:&off_324A0];
  v21 = sub_11414(@"CAM_RECORD_VIDEO_4K_30");
  [v10 addObject:v21];

  v22 = sub_11414(@"CAM_RECORD_VIDEO_4K_30_SHORT");
  [v11 addObject:v22];

  v23 = sub_11414(@"CAM_RECORD_VIDEO_4K_30_HEVC_FOOTER");
  [v7 appendFormat:@"\n%@", v23];

  [v4 setValues:v9 titles:v10 shortTitles:v11];
  [v4 setProperty:v7 forKey:PSStaticTextMessageKey];

  return v4;
}

- (void)_setRecordCinematicConfiguration:(id)configuration specifier:(id)specifier
{
  CFPreferencesSetAppValue(CAMUserPreferenceCinematicConfiguration, configuration, @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (id)_recordCinematicConfiguration:(id)configuration
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(CAMUserPreferenceCinematicConfiguration, @"com.apple.camera", 0);

  return [NSNumber numberWithLong:AppIntegerValue];
}

- (id)_sharedLibrarySpecifier
{
  v3 = sub_11414(@"CAM_SHARED_LIBRARY_GROUP_HEADER");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  return v4;
}

- (id)_isMacroControlEnabled:(id)enabled
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceEnableSuperWideAutoMacro", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    macroControlEnabledByDefault = AppBooleanValue == 0;
  }

  else
  {
    v5 = +[CAMCaptureCapabilities capabilities];
    macroControlEnabledByDefault = [v5 macroControlEnabledByDefault];
  }

  v6 = [NSNumber numberWithBool:macroControlEnabledByDefault];

  return v6;
}

- (void)_setMacroControlEnabled:(id)enabled specifier:(id)specifier
{
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [enabled BOOLValue] ^ 1);
  CFPreferencesSetAppValue(@"CAMUserPreferenceEnableSuperWideAutoMacro", v4, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (id)_isSaveAssetsPhotoLibraryEnabled:(id)enabled
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMUserPreferencesSaveMessagesCapturesPhotoLibrary", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = [NSNumber numberWithBool:AppBooleanValue != 0];
  }

  else
  {
    v4 = &__kCFBooleanTrue;
  }

  return v4;
}

- (void)_setSaveAssetsPhotoLibraryEnabled:(id)enabled specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"CAMUserPreferencesSaveMessagesCapturesPhotoLibrary", enabled, @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (id)_isSmudgeDetectionEnabled:(id)enabled
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceEnableSmudgeNotifications", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = [NSNumber numberWithBool:AppBooleanValue != 0];
  }

  else
  {
    v4 = &__kCFBooleanTrue;
  }

  return v4;
}

- (void)_setSmudgeDetectionEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  CFPreferencesSetAppValue(@"CAMUserPreferenceEnableSmudgeNotifications", enabledCopy, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");
  bOOLValue = [enabledCopy BOOLValue];

  if (bOOLValue)
  {

    +[CAMUserPreferences resetSmudgeDetectionDisplay];
  }
}

- (void)_launchSemanticStylesSettings:(id)settings
{
  v4 = objc_alloc_init(CAMSemanticStyleSettingsController);
  [v4 setModalPresentationStyle:0];
  [(CameraSettingsController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_createAndPrewarmSmartStylesController
{
  v3 = objc_alloc_init(CAMSmartStyleSettingsController);
  v4 = *(&self->__captureButtonAppConfigurationCoordinator + 1);
  *(&self->__captureButtonAppConfigurationCoordinator + 1) = v3;

  view = [*(&self->__captureButtonAppConfigurationCoordinator + 1) view];
}

- (void)_launchSmartStylesSettings:(id)settings
{
  v4 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Settings: presenting smart style settings", v6, 2u);
  }

  _prewarmedSmartStylesController = [(CameraSettingsController *)self _prewarmedSmartStylesController];
  [_prewarmedSmartStylesController setModalPresentationStyle:0];
  [(CameraSettingsController *)self presentViewController:_prewarmedSmartStylesController animated:1 completion:0];
  [(CameraSettingsController *)self set_prewarmedSmartStylesController:0];
}

- (void)_privacyButtonPressed:(id)pressed
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.camera"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CameraSettingsController;
  [(CameraSettingsBaseController *)&v4 viewDidLoad];
  v3 = sub_11414(@"CAMERA_SETTINGS_TITLE");
  [(CameraSettingsController *)self setTitle:v3];
}

- (void)emitNavigationEvent
{
  v8 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Camera"];
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v5 bundleURL];
  v7 = [v3 initWithKey:@"CAMERA_SETTINGS_TITLE" table:@"CameraSettings" locale:v4 bundleURL:bundleURL];

  [(CameraSettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.camera" title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v8];
}

- (void)_launchCameraButtonTips:(id)tips
{
  v7 = sub_11414(@"CAMERA_BUTTON_TIPS_URL_TOPIC_ID");
  v4 = [HLPHelpViewController URLWithTopicID:v7];
  v5 = [HLPHelpViewController helpViewControllerWithURL:v4];
  [v5 setShowTopicViewOnLoad:1];
  v6 = [[UINavigationController alloc] initWithRootViewController:v5];
  [v6 setModalPresentationStyle:1];
  [(CameraSettingsController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)_currentSmartStyleName:(id)name
{
  v3 = +[CAMSmartStyleUtilities readAVCaptureSystemStyle];
  cast = [v3 cast];
  if ([cast isEqualToString:AVSmartStyleCastTypeTanWarm])
  {
    v5 = 1;
    v6 = 2;
  }

  else if ([cast isEqualToString:AVSmartStyleCastTypeBlushWarm])
  {
    v5 = 1;
    v6 = 3;
  }

  else if ([cast isEqualToString:AVSmartStyleCastTypeGoldWarm])
  {
    v5 = 1;
    v6 = 4;
  }

  else if ([cast isEqualToString:AVSmartStyleCastTypeCool])
  {
    v5 = 1;
    v6 = 5;
  }

  else if ([cast isEqualToString:AVSmartStyleCastTypeNeutral])
  {
    v5 = 1;
    v6 = 6;
  }

  else
  {
    v7 = [cast isEqualToString:AVSmartStyleCastTypeBrightPop];
    v5 = v7;
    if (v7)
    {
      v6 = 16;
    }

    else
    {
      v6 = 1;
    }
  }

  v8 = [CEKSmartStyle alloc];
  [v3 intensity];
  v10 = v9;
  [v3 toneBias];
  v12 = v11;
  [v3 colorBias];
  v14 = [v8 initWithPresetType:v6 castIntensity:v10 toneBias:v12 colorBias:v13];
  isNeutral = [v14 isNeutral];
  v16 = [CEKSmartStyle displayNameForPresetType:v6];
  if ((v5 & 1) == 0 && (isNeutral & 1) == 0)
  {
    v17 = sub_11414(@"SMART_STYLE_LABEL_SYSTEM_CUSTOMIZED");

    v16 = v17;
  }

  return v16;
}

- (void)cameraCaptureButtonAppConfigurationCoordinator:(id)coordinator didChangeAssociatedAppBundleID:(id)d
{
  v5 = [(CameraSettingsController *)self getGroupSpecifierForSpecifierID:@"systemSettings", d];
  if (v5)
  {
    [(CameraSettingsController *)self reloadSpecifier:v5];
  }

  _objc_release_x1();
}

- (id)_getAssociatedAppDisplayName:(id)name
{
  associatedAppBundleID = [*(&self->super + 1) associatedAppBundleID];
  v4 = [CameraSettingsUtilities displayNameForBundleID:associatedAppBundleID];

  return v4;
}

- (BOOL)_shouldDisplayIndicatorsSpecifier
{
  v2 = +[CameraSettingsUtilities isIPad];
  v3 = +[CameraSettingsBaseController capabilities];
  isActionModeControlSupported = [v3 isActionModeControlSupported];

  v5 = +[CameraSettingsBaseController capabilities];
  v6 = isActionModeControlSupported | [v5 isFrontRearSimultaneousVideoSupported];

  return v6 & 1 | ((v2 & 1) == 0);
}

@end