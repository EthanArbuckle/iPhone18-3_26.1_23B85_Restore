@interface CameraPreserveSettingsController
- (id)_groupSpecifierWithID:(id)a3 footer:(id)a4;
- (id)specifiers;
- (void)emitNavigationEvent;
- (void)viewDidLoad;
@end

@implementation CameraPreserveSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_59;
  }

  v5 = +[CameraSettingsBaseController capabilities];
  [CAMUserPreferences performApertureMigrationWithCapabilities:v5];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CAM_PRESERVE_CAMERA_MODE_SWITCH" value:&stru_2DB58 table:@"CameraSettings"];
  v8 = [v6 localizedStringForKey:@"CAM_PRESERVE_CAMERA_MODE_VIDEO_FOOTER" value:&stru_2DB58 table:@"CameraSettings"];
  v80 = v7;
  v9 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v7 key:@"CAMUserPreferencePreserveCaptureMode" defaultValue:0];
  v79 = v8;
  v10 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"modeGroup" footer:v8];
  v78 = v9;
  v11 = [NSMutableArray arrayWithObjects:v10, v9, 0];
  v77 = [v5 isLivePhotoSupported];
  v12 = [v5 featureDevelopmentPreserveLastOpenedControlSupported];
  if ([v5 wantsFullscreenViewfinder] && v12)
  {
    v13 = sub_A8E4(@"CAM_PRESERVE_LAST_OPENED_DRAWER_CONTROL_FOOTER");
    v14 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"preserveLastOpenedDrawerControlGroup" footer:v13];
    [v11 addObject:v14];

    v15 = sub_A8E4(@"CAM_PRESERVE_LAST_OPENED_DRAWER_CONTROL_SWITCH");
    v16 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v15 key:CAMUserPreferencePreservePreferredDrawerControl defaultValue:0];
    [v11 addObject:v16];
  }

  if ([v5 smartStylesSupported])
  {
    v17 = sub_A8E4(@"CAM_PRESERVE_SMART_STYLE_FOOTER");
    v18 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"preserveSmartStyleGroup" footer:v17];
    [v11 addObject:v18];

    v19 = sub_A8E4(@"CAM_PRESERVE_SMART_STYLE_SWITCH");
    v20 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v19 key:CAMUserPreferencePreserveSmartStyle defaultValue:0];
    [v11 addObject:v20];
  }

  if ([v5 isPreserveCreativeControlsSupported])
  {
    v21 = [v6 localizedStringForKey:@"CAM_PRESERVE_CREATIVE_CONTROLS_SWITCH" value:&stru_2DB58 table:@"CameraSettings"];
    v22 = [v6 localizedStringForKey:@"CAM_PRESERVE_PHOTO_ASPECT_FOOTER" value:&stru_2DB58 table:@"CameraSettings"];
    if ([v5 arePortraitEffectsSupported] && (objc_msgSend(v5, "isLiveFilteringSupported") & 1) != 0)
    {
      v23 = @"CAM_PRESERVE_PHOTO_FILTER_LIGHTING_ASPECT_FOOTER";
    }

    else if ([v5 arePortraitEffectsSupported] && !objc_msgSend(v5, "isLiveFilteringSupported"))
    {
      v23 = @"CAM_PRESERVE_PHOTO_LIGHTING_ASPECT_FOOTER";
    }

    else
    {
      if (([v5 arePortraitEffectsSupported] & 1) != 0 || !objc_msgSend(v5, "isLiveFilteringSupported"))
      {
        goto LABEL_18;
      }

      v23 = @"CAM_PRESERVE_PHOTO_FILTER_ASPECT_FOOTER";
    }

    v24 = [v6 localizedStringForKey:v23 value:&stru_2DB58 table:@"CameraSettings"];

    v22 = v24;
LABEL_18:
    v25 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v21 key:CAMUserPreferencePreserveEffectFilter defaultValue:0];
    v26 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"filterGroup" footer:v22];
    [v11 addObject:v26];
    [v11 addObject:v25];
  }

  if ([v5 isDepthEffectApertureSupported])
  {
    v27 = [v6 localizedStringForKey:@"CAM_PRESERVE_APERTURE_SWITCH" value:&stru_2DB58 table:@"CameraSettings"];
    if ([v5 photoModeDepthSuggestionSupported])
    {
      v28 = @"CAM_PRESERVE_APERTURE_FOOTER_PHOTO_MODE";
    }

    else
    {
      v28 = @"CAM_PRESERVE_APERTURE_FOOTER";
    }

    v29 = sub_A8E4(v28);
    v30 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v27 key:CAMUserPreferencePreserveAperture defaultValue:0];
    v31 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"apertureGroup" footer:v29];
    [v11 addObject:v31];
    [v11 addObject:v30];
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceEnableSuperWideAutoMacro", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    if (AppBooleanValue)
    {
      goto LABEL_30;
    }
  }

  else if (([v5 macroControlEnabledByDefault] & 1) == 0)
  {
    goto LABEL_30;
  }

  if ([v5 isSuperWideAutoMacroSupported])
  {
    v33 = sub_A8E4(@"AUTO_MACRO_SWITCH");
    v34 = sub_A8E4(@"CAM_PRESERVE_AUTO_MACRO_FOOTER");
    v35 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v33 key:@"CAMUserPreferencePreserveSuperWideAutoMacro" defaultValue:0];
    v36 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"autoMacroGroup" footer:v34];
    [v11 addObject:v36];
    [v11 addObject:v35];
  }

LABEL_30:
  if ([v5 isExposureSliderSupported])
  {
    v37 = [v6 localizedStringForKey:@"CAM_PRESERVE_EXPOSURE_SWITCH" value:&stru_2DB58 table:@"CameraSettings"];
    v38 = [v6 localizedStringForKey:@"CAM_PRESERVE_EXPOSURE_FOOTER" value:&stru_2DB58 table:@"CameraSettings"];
    v39 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v37 key:@"CAMUserPreferencePreserveExposure" defaultValue:0];
    v40 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"exposureGroup" footer:v38];
    [v11 addObject:v40];
    [v11 addObject:v39];
  }

  if ([v5 isNightModeSupported])
  {
    v41 = [v6 localizedStringForKey:@"CAM_PRESERVE_NIGHT_MODE_SWITCH" value:&stru_2DB58 table:@"CameraSettings"];
    v42 = [v6 localizedStringForKey:@"CAM_PRESERVE_NIGHT_MODE_FOOTER" value:&stru_2DB58 table:@"CameraSettings"];
    v43 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v41 key:@"CAMUserPreferencePreserveNightMode" defaultValue:0];
    v44 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"nightModeGroup" footer:v42];
    [v11 addObject:v44];
    [v11 addObject:v43];
  }

  if ([v5 portraitZoomSupported])
  {
    v45 = sub_A8E4(@"CAM_PRESERVE_PORTRAIT_ZOOM_SWITCH");
    v46 = sub_A8E4(@"CAM_PRESERVE_PORTRAIT_ZOOM_FOOTER");
    v47 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v45 key:@"CAMUserPreferencePreservePortraitZoom" defaultValue:1];
    v48 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"portraitZoomGroup" footer:v46];
    [v11 addObject:v48];
    [v11 addObject:v47];
  }

  if ([v5 isActionModeControlSupported])
  {
    v49 = sub_A8E4(@"CAM_PRESERVE_VIDEO_STABILIZATION_SWITCH");
    v50 = sub_A8E4(@"CAM_PRESERVE_VIDEO_STABILIZATION_FOOTER");
    v51 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v49 key:CAMUserPreferencePreserveVideoStabilization defaultValue:0];
    v52 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"videoStabilizationGroup" footer:v50];
    [v11 addObject:v52];
    [v11 addObject:v51];
  }

  v53 = [v5 isPhotoResolutionSupported:3 forPhotoEncoding:1];
  v54 = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceEnableLinearDNGControl", @"com.apple.camera", 0);
  v55 = [v5 isLinearDNGSupported];
  v56 = CFPreferencesGetAppBooleanValue(CAMUserPreferenceEnablePhotoFormatControl, @"com.apple.camera", 0);
  if (v55)
  {
    if (!v54)
    {
      goto LABEL_53;
    }

    if (v53)
    {
      v57 = @"CAM_PRESERVE_PRO_RAW_48MP_SWITCH";
    }

    else
    {
      v57 = @"CAM_PRESERVE_LINEAR_DNG_SWITCH";
    }

    if (v53)
    {
      v58 = @"CAM_PRESERVE_PRO_RAW_48MP_FOOTER";
    }

    else
    {
      v58 = @"CAM_PRESERVE_LINEAR_DNG_FOOTER";
    }

    v59 = sub_A8E4(v57);
    v60 = sub_A8E4(v58);
    v61 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v59 key:@"CAMUserPreferencePreserveRAW" defaultValue:0];
    v62 = @"rawGroup";
  }

  else
  {
    if (v56)
    {
      v63 = v53;
    }

    else
    {
      v63 = 0;
    }

    if (v63 != 1)
    {
      goto LABEL_53;
    }

    v59 = sub_A8E4(@"CAM_PRESERVE_48MP_CONTROL_SWITCH");
    v60 = sub_A8E4(@"CAM_PRESERVE_48MP_CONTROL_FOOTER");
    v61 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v59 key:CAMUserPreferencePreservePhotoResolution defaultValue:0];
    v62 = @"photoFormatControlGroup";
  }

  v64 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:v62 footer:v60];
  [v11 addObject:v64];
  [v11 addObject:v61];

LABEL_53:
  v65 = CFPreferencesGetAppBooleanValue(CAMUserPreferenceEnableProResControl, @"com.apple.camera", 0);
  if ([v5 isProResVideoSupported] && v65)
  {
    v66 = sub_A8E4(@"CAM_PRESERVE_PRO_RES_SWITCH");
    v67 = sub_A8E4(@"CAM_PRESERVE_PRO_RES_FOOTER");
    v68 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v66 key:@"CAMUserPreferencePreserveProRes" defaultValue:0];
    v69 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"proResGroup" footer:v67];
    [v11 addObject:v69];
    [v11 addObject:v68];
  }

  if (v77)
  {
    v70 = [v6 localizedStringForKey:@"CAM_PRESERVE_LIVE_PHOTO_SWITCH" value:&stru_2DB58 table:@"CameraSettings"];
    v71 = [v6 localizedStringForKey:@"CAM_PRESERVE_LIVE_PHOTO_FOOTER" value:&stru_2DB58 table:@"CameraSettings"];
    v72 = [(CameraPreserveSettingsController *)self _switchSpecifierWithLabel:v70 key:@"CAMUserPreferencePreserveLivePhoto" defaultValue:1];
    v73 = [(CameraPreserveSettingsController *)self _groupSpecifierWithID:@"livePhotoGroup" footer:v71];
    [v11 addObject:v73];
    [v11 addObject:v72];
  }

  [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:v11];
  v74 = [v11 copy];
  v75 = *&self->super.PSListController_opaque[v3];
  *&self->super.PSListController_opaque[v3] = v74;

  v4 = *&self->super.PSListController_opaque[v3];
LABEL_59:

  return v4;
}

- (id)_groupSpecifierWithID:(id)a3 footer:(id)a4
{
  v5 = a4;
  v6 = [PSSpecifier groupSpecifierWithID:a3];
  [v6 setObject:v5 forKeyedSubscript:PSFooterTextGroupKey];

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CameraPreserveSettingsController;
  [(CameraSettingsBaseController *)&v4 viewDidLoad];
  v3 = sub_A8E4(@"CAM_PRESERVE_SETTINGS_TITLE");
  [(CameraPreserveSettingsController *)self setTitle:v3];
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Camera/CameraPreserveSettingsSwitch"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundleURL];
  v8 = [v4 initWithKey:@"CAM_PRESERVE_SETTINGS_TITLE" table:@"CameraSettings" locale:v5 bundleURL:v7];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"CAMERA_SETTINGS_TITLE" table:@"CameraSettings" locale:v10 bundleURL:v12];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(CameraPreserveSettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.camera" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

@end