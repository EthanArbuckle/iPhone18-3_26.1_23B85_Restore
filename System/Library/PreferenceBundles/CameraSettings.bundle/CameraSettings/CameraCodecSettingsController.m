@interface CameraCodecSettingsController
+ (id)_titleForColorSpace:(int64_t)a3;
- (id)_enhancedRAWResolution:(id)a3;
- (id)_enhancedResolution:(id)a3;
- (id)_enhancedResolutionFooterForPhotoEncodingBehavior:(int64_t)a3 allow48MP:(BOOL)a4 capabilities:(id)a5;
- (id)_photoResolutionValuesForPhotoEncodingBehavior:(int64_t)a3 allow48MP:(BOOL)a4 outTitles:(id *)a5 capabilities:(id)a6;
- (id)_selectedProRawFileFormat:(id)a3;
- (id)specifiers;
- (void)_setLinearDNGControlEnabled:(id)a3 specifier:(id)a4;
- (void)_setProResControlEnabled:(id)a3 specifier:(id)a4;
- (void)emitNavigationEvent;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CameraCodecSettingsController

- (id)specifiers
{
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_89;
  }

  v108 = OBJC_IVAR___PSListController__specifiers;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[CameraSettingsBaseController capabilities];
  if ([v5 isHEVCEncodingSupported])
  {
    v6 = sub_57BC(@"CAM_FORMATS_CAPTURE_FOOTER");
    v7 = [v5 back4kMaxFPS];
    v8 = [v5 backHighFrameRate1080pMaxFPS];
    if (v7 < 31 || v8 < 121)
    {
LABEL_13:
      v11 = sub_57BC(@"CAM_FORMATS_CAPTURE_TITLE");
      v12 = [PSSpecifier groupSpecifierWithName:v11];

      [v12 setProperty:v6 forKey:PSFooterTextGroupKey];
      [v12 setProperty:@"CameraCaptureGroupSpecifier" forKey:PSIDKey];
      [v12 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      v13 = sub_57BC(@"CAM_FORMATS_CAPTURE_HIGH_EFFICIENCY");
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

      v15 = sub_57BC(@"CAM_FORMATS_CAPTURE_MOST_COMPATIBLE");
      v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

      if (+[PFMediaCapabilities newFormatsConfiguration]== &dword_0 + 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      v18 = PSRadioGroupCheckedSpecifierKey;
      v19 = v17;
      [v12 setProperty:v19 forKey:v18];
      [v4 addObject:v12];
      [v4 addObject:v14];
      [v4 addObject:v16];

      goto LABEL_17;
    }

    if (v7 < 0x3D)
    {
      if ([v5 isCinematicModeSupported])
      {
        v9 = @"CAM_FORMATS_CAPTURE_FOOTER_CINEMATIC_4k60_1080P240_HDR_VIDEO";
      }

      else
      {
        if (![v5 isHDR10BitVideoSupported])
        {
          v95 = [NSBundle bundleForClass:objc_opt_class()];
          v10 = [v95 localizedStringForKey:@"CAM_FORMATS_CAPTURE_FOOTER_4k60_1080P240" value:&stru_2DB58 table:@"CameraSettings"];

          v6 = v95;
          goto LABEL_12;
        }

        v9 = @"CAM_FORMATS_CAPTURE_FOOTER_4k60_1080P240_HDR_VIDEO";
      }
    }

    else
    {
      v9 = @"CAM_FORMATS_CAPTURE_FOOTER_CINEMATIC_4k120_1080P240_HDR_VIDEO";
    }

    v10 = sub_57BC(v9);
LABEL_12:

    v6 = v10;
    goto LABEL_13;
  }

LABEL_17:
  v20 = [v5 isLinearDNGSupported];
  v21 = [v5 isPhotoResolutionSupported:3 forPhotoEncoding:1];
  v22 = [v5 isPhotoResolutionSupported:2 forPhotoEncoding:1];
  v98 = [v5 isProRawJpegXLSupported];
  v23 = [v5 isBackQuadraTeleSupported];
  if ((v20 & 1) != 0 || (v21 & 1) != 0 || v22)
  {
    v25 = sub_57BC(@"CAM_PHOTO_CAPTURE_HEADER");
    v24 = [PSSpecifier groupSpecifierWithName:v25];

    [v4 addObject:v24];
  }

  else
  {
    v24 = 0;
  }

  v105 = v21;
  if (v22)
  {
    v102 = v4;
    v26 = +[PFMediaCapabilities newFormatsConfiguration]!= &dword_0 + 1;
    if ([v5 isCameraButtonSupported])
    {
      v27 = @"ENHANCED_RESOLUTION_FOOTER_CAMERA_BUTTON";
    }

    else
    {
      v27 = @"ENHANCED_RESOLUTION_FOOTER";
    }

    v28 = sub_57BC(v27);
    v29 = PSFooterTextGroupKey;
    [v24 setObject:v28 forKeyedSubscript:PSFooterTextGroupKey];

    v96 = v23;
    if (v23)
    {
      v30 = sub_57BC(@"ENHANCED_RESOLUTION_FOOTER_FUSION_CAMERAS");
      [v24 setObject:v30 forKeyedSubscript:v29];
    }

    v31 = sub_57BC(@"ENHANCED_RESOLUTION_TITLE");
    v32 = v24;
    v33 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:"setPreferenceValue:specifier:" get:"_enhancedResolution:" detail:objc_opt_class() cell:2 edit:0];

    [v33 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v33 setObject:CAMUserPreferencePreferredHEICPhotoResolution forKeyedSubscript:PSKeyNameKey];
    [v33 setIdentifier:@"ENHANCED_RESOLUTION"];
    [v102 addObject:v33];
    v114 = 0;
    v34 = [(CameraCodecSettingsController *)self _photoResolutionValuesForPhotoEncodingBehavior:v26 allow48MP:0 outTitles:&v114 capabilities:v5];
    v35 = v114;
    [v33 setValues:v34 titles:v35 shortTitles:v35];
    v36 = v26;
    v4 = v102;
    v37 = [(CameraCodecSettingsController *)self _enhancedResolutionFooterForPhotoEncodingBehavior:v36 allow48MP:0 capabilities:v5];
    [v33 setObject:v37 forKeyedSubscript:PSStaticTextMessageKey];

    v24 = v32;
    v21 = v105;
    v23 = v96;
  }

  if (v20)
  {
    v38 = [v5 enhancedRAWResolutionSupported];
    v39 = [v5 isBackQuadraSuperWideSupported];
    if (v21)
    {
      v40 = v39;
      v41 = v23;
      v42 = sub_57BC(@"CAM_PRO_RAW_48MP_TITLE");
      v43 = [v5 isCameraButtonSupported];
      if (v22)
      {
        v44 = @"CAM_PRO_RAW_48MP_FOOTER_24MP";
        if (v43)
        {
          v44 = @"CAM_PRO_RAW_48MP_FOOTER_24MP_CAMERA_BUTTON";
        }

        v45 = @"CAM_PRO_RAW_48MP_FOOTER_ULTRA_WIDE_CAMERA_BUTTON";
        if (!v43)
        {
          v45 = @"CAM_PRO_RAW_48MP_FOOTER_ULTRA_WIDE";
        }

        if (v40)
        {
          v46 = v45;
        }

        else
        {
          v46 = v44;
        }

        v47 = sub_57BC(v46);
        if (v41)
        {
          v48 = sub_57BC(@"CAM_PRO_RAW_48MP_FOOTER_FUSION_CAMERAS");

          v47 = v48;
        }

LABEL_55:
        v56 = [v4 lastObject];

        v100 = v24;
        v103 = v47;
        v97 = v38;
        if (v56 == v24)
        {
          [v24 setObject:v47 forKeyedSubscript:PSFooterTextGroupKey];
        }

        else
        {
          v57 = [PSSpecifier groupSpecifierWithID:@"linearDNGGroup"];
          [v57 setObject:v47 forKeyedSubscript:PSFooterTextGroupKey];
          [v4 addObject:v57];
        }

        v58 = v4;
        v59 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:"_setLinearDNGControlEnabled:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
        v60 = PSDefaultsKey;
        [v59 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
        v61 = CAMUserPreferenceEnableLinearDNGControl;
        v62 = PSKeyNameKey;
        [v59 setObject:CAMUserPreferenceEnableLinearDNGControl forKeyedSubscript:PSKeyNameKey];
        [v59 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
        [v59 setIdentifier:@"CAMUserPreferenceEnableLinearDNGControl"];
        [v4 addObject:v59];
        if ((CFPreferencesGetAppBooleanValue(v61, @"com.apple.camera", 0) == 0 || (v97 & 1) == 0) | v105 & 1)
        {
          v63 = v4;
          v64 = v103;
          if (!v98)
          {
LABEL_63:

            v4 = v63;
            v24 = v100;
LABEL_66:

            goto LABEL_67;
          }

          v106 = v42;
          v65 = sub_57BC(@"CAM_PRO_RAW_ENCODING_TITLE");
          v66 = [PSSpecifier preferenceSpecifierNamed:v65 target:self set:0 get:"_selectedProRawFileFormat:" detail:objc_opt_class() cell:2 edit:0];

          [v4 addObject:v66];
        }

        else
        {
          v106 = v42;
          v67 = sub_57BC(@"CAM_PRO_RES_RESOLUTION");
          v66 = [PSSpecifier preferenceSpecifierNamed:v67 target:self set:"setPreferenceValue:specifier:" get:"_enhancedRAWResolution:" detail:objc_opt_class() cell:2 edit:0];

          v113 = 0;
          v68 = [(CameraCodecSettingsController *)self _photoResolutionValuesForPhotoEncodingBehavior:2 allow48MP:1 outTitles:&v113 capabilities:v5];
          v69 = v113;
          [v66 setValues:v68 titles:v69 shortTitles:v69];
          [v66 setObject:@"com.apple.camera" forKeyedSubscript:v60];
          [v66 setObject:CAMUserPreferenceMaximumRAWPhotoResolution forKeyedSubscript:v62];
          [v66 setIdentifier:@"CAM_PRO_RES_RESOLUTION"];
          v63 = v58;
          [v58 addObject:v66];
          v70 = [(CameraCodecSettingsController *)self _enhancedResolutionFooterForPhotoEncodingBehavior:2 allow48MP:1 capabilities:v5];
          [v66 setObject:v70 forKeyedSubscript:PSStaticTextMessageKey];

          v64 = v103;
        }

        v42 = v106;
        goto LABEL_63;
      }

      v53 = @"CAM_PRO_RAW_48MP_FOOTER";
      v54 = @"CAM_PRO_RAW_48MP_FOOTER_CAMERA_BUTTON";
    }

    else
    {
      v42 = sub_57BC(@"CAM_LINEAR_DNG_TITLE");
      if ((v38 & 1) == 0)
      {
        v55 = @"CAM_LINEAR_DNG_FOOTER";
LABEL_54:
        v47 = sub_57BC(v55);
        goto LABEL_55;
      }

      v43 = [v5 isCameraButtonSupported];
      v53 = @"CAM_LINEAR_DNG_10_BIT_NO_SIZE_FOOTER";
      v54 = @"CAM_LINEAR_DNG_10_BIT_NO_SIZE_FOOTER_CAMERA_BUTTON";
    }

    if (v43)
    {
      v55 = v54;
    }

    else
    {
      v55 = v53;
    }

    goto LABEL_54;
  }

  if (v21)
  {
    if ([v5 isCameraButtonSupported])
    {
      v49 = @"48MP_CONTROL_FOOTER_CAMERA_BUTTON";
    }

    else
    {
      v49 = @"48MP_CONTROL_FOOTER";
    }

    v42 = sub_57BC(v49);
    v50 = PSFooterTextGroupKey;
    v51 = [v24 objectForKeyedSubscript:PSFooterTextGroupKey];

    if (v51)
    {
      v52 = [PSSpecifier groupSpecifierWithID:@"48MPControlGroup"];
      [v52 setObject:v42 forKeyedSubscript:v50];
      [v4 addObject:v52];
    }

    else
    {
      [v24 setObject:v42 forKeyedSubscript:v50];
    }

    v71 = sub_57BC(@"48MP_CONTROL_TITLE");
    v64 = [PSSpecifier preferenceSpecifierNamed:v71 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    [v64 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    [v64 setObject:CAMUserPreferenceEnablePhotoFormatControl forKeyedSubscript:PSKeyNameKey];
    [v64 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
    [v4 addObject:v64];
    goto LABEL_66;
  }

LABEL_67:
  if ([v5 isProResVideoSupported])
  {
    v72 = sub_57BC(@"CAM_FORMATS_PRO_RES_TITLE");
    v73 = [v5 isProResVideoSupportedForMode:1 videoConfiguration:5 outputToExternalStorage:0 frontRearSimultaneousVideoEnabled:0];
    v74 = [v5 isProResVideoSupportedForMode:1 videoConfiguration:13 outputToExternalStorage:1 frontRearSimultaneousVideoEnabled:0];
    v75 = [v5 externalStorageSupported];
    v76 = @"CAM_FORMATS_PRO_RES_1080P_ONLY_FOOTER";
    if (v73)
    {
      v76 = @"CAM_FORMATS_PRO_RES_FOOTER";
    }

    v77 = @"CAM_FORMATS_PRO_RES_EXTERNAL_STORAGE_1080P_ONLY_FOOTER";
    if (v73)
    {
      v77 = @"CAM_FORMATS_PRO_RES_EXTERNAL_STORAGE_FOOTER";
    }

    if (v74)
    {
      v77 = @"CAM_FORMATS_PRO_RES_EXTERNAL_STORAGE_FOOTER_4k_120";
    }

    if (v75)
    {
      v78 = v77;
    }

    else
    {
      v78 = v76;
    }

    v79 = sub_57BC(v78);
    v80 = sub_57BC(@"CAM_FORMATS_VIDEO_CAPTURE_GROUP_TITLE");
    v81 = [PSSpecifier groupSpecifierWithName:v80];

    v107 = v79;
    [v81 setProperty:v79 forKey:PSFooterTextGroupKey];
    [v4 addObject:v81];
    v82 = [PSSpecifier preferenceSpecifierNamed:v72 target:self set:"_setProResControlEnabled:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
    [v82 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
    v83 = CAMUserPreferenceEnableProResControl;
    [v82 setObject:CAMUserPreferenceEnableProResControl forKeyedSubscript:PSKeyNameKey];
    [v82 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
    [v82 setIdentifier:@"CAMUserPreferenceEnableProResControl"];
    [v4 addObject:v82];
    if (CFPreferencesGetAppBooleanValue(v83, @"com.apple.camera", 0) && [v5 isProResLogColorSpaceSupported])
    {
      v99 = v72;
      v101 = v24;
      v104 = v4;
      v84 = [v5 supportedProResColorSpaces];
      v85 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v84, "count")}];
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v86 = v84;
      v87 = [v86 countByEnumeratingWithState:&v109 objects:v115 count:16];
      if (v87)
      {
        v88 = v87;
        v89 = *v110;
        do
        {
          for (i = 0; i != v88; i = i + 1)
          {
            if (*v110 != v89)
            {
              objc_enumerationMutation(v86);
            }

            v91 = [objc_opt_class() _titleForColorSpace:{objc_msgSend(*(*(&v109 + 1) + 8 * i), "integerValue")}];
            [v85 addObject:v91];
          }

          v88 = [v86 countByEnumeratingWithState:&v109 objects:v115 count:16];
        }

        while (v88);
      }

      v24 = v101;
      v4 = v104;
      v72 = v99;
    }
  }

  [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:v4];
  v92 = [v4 copy];
  v93 = *&self->super.PSListController_opaque[v108];
  *&self->super.PSListController_opaque[v108] = v92;

  v3 = *&self->super.PSListController_opaque[v108];
LABEL_89:

  return v3;
}

+ (id)_titleForColorSpace:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      v4 = @"PRO_RES_COLOR_SPACE_SDR";
LABEL_7:
      v5 = sub_57BC(v4);

      return v5;
    case 2:
      v4 = @"PRO_RES_COLOR_SPACE_HDR";
      goto LABEL_7;
    case 3:
      v4 = @"PRO_RES_COLOR_SPACE_LOG";
      goto LABEL_7;
  }

  v5 = 0;

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CameraCodecSettingsController;
  [(CameraSettingsBaseController *)&v4 viewDidLoad];
  v3 = sub_57BC(@"CAM_FORMATS_TITLE");
  [(CameraCodecSettingsController *)self setTitle:v3];
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Camera/CameraFormatsSettingsList"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundleURL];
  v8 = [v4 initWithKey:@"CAM_FORMATS_TITLE" table:@"CameraSettings" locale:v5 bundleURL:v7];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"CAMERA_SETTINGS_TITLE" table:@"CameraSettings" locale:v10 bundleURL:v12];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(CameraCodecSettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.camera" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = CameraCodecSettingsController;
  [(CameraCodecSettingsController *)&v15 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(CameraCodecSettingsController *)self specifierForID:@"CameraCaptureGroupSpecifier"];
  if (v7)
  {
    v8 = [(CameraCodecSettingsController *)self indexPathForSpecifier:v7];
    v9 = [v8 section];
  }

  else
  {
    v9 = -1;
  }

  if ([v6 section] == v9)
  {
    v10 = [v6 row] == &dword_0 + 1;
    v11 = +[PFMediaCapabilities newFormatsConfiguration];
    [PFMediaCapabilities setNewFormatsConfiguration:v10 fromSource:2];
    if (v11 != v10)
    {
      v12 = +[NSNotificationCenter defaultCenter];
      v16 = @"PFMediaCaptureEncodingBehaviorKey";
      v13 = [NSNumber numberWithInteger:v10];
      v17 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      [v12 postNotificationName:@"PFMediaCaptureEncodingBehaviorChangedNotification" object:self userInfo:v14];

      [(CameraSettingsBaseController *)self reloadSpecifiers];
    }
  }
}

- (void)_setLinearDNGControlEnabled:(id)a3 specifier:(id)a4
{
  CFPreferencesSetAppValue(CAMUserPreferenceEnableLinearDNGControl, a3, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");

  [(CameraSettingsBaseController *)self reloadSpecifiers];
}

- (void)_setProResControlEnabled:(id)a3 specifier:(id)a4
{
  CFPreferencesSetAppValue(CAMUserPreferenceEnableProResControl, a3, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");

  [(CameraSettingsBaseController *)self reloadSpecifiers];
}

- (id)_enhancedResolution:(id)a3
{
  v3 = +[PFMediaCapabilities newFormatsConfiguration]!= &dword_0 + 1;
  v4 = +[CameraSettingsBaseController capabilities];
  keyExistsAndHasValidFormat = 0;
  v5 = [NSNumber numberWithLong:CFPreferencesGetAppIntegerValue(CAMUserPreferencePreferredHEICPhotoResolution, @"com.apple.camera", &keyExistsAndHasValidFormat)];
  v6 = [v4 defaultPhotoResolutionForMode:0 devicePosition:0 encodingBehavior:v3];
  v7 = v6;
  if (keyExistsAndHasValidFormat)
  {
    v8 = [v5 integerValue];
  }

  else
  {
    v8 = v6;
  }

  if ([v4 isPhotoResolutionSupported:v8 forMode:0 device:0 photoEncoding:v3])
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [NSNumber numberWithInteger:v9];

  return v10;
}

- (id)_enhancedRAWResolution:(id)a3
{
  v3 = +[CameraSettingsBaseController capabilities];
  keyExistsAndHasValidFormat = 0;
  v4 = [NSNumber numberWithLong:CFPreferencesGetAppIntegerValue(CAMUserPreferenceMaximumRAWPhotoResolution, @"com.apple.camera", &keyExistsAndHasValidFormat)];
  v5 = [v3 defaultPhotoResolutionForMode:0 devicePosition:0 encodingBehavior:2];
  v6 = v5;
  if (keyExistsAndHasValidFormat)
  {
    v7 = [v4 integerValue];
  }

  else
  {
    v7 = v5;
  }

  if ([v3 isPhotoResolutionSupported:v7 forMode:0 device:0 photoEncoding:2])
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = [NSNumber numberWithInteger:v8];

  return v9;
}

- (id)_photoResolutionValuesForPhotoEncodingBehavior:(int64_t)a3 allow48MP:(BOOL)a4 outTitles:(id *)a5 capabilities:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  if ([v9 isPhotoResolutionSupported:1 forMode:0 device:0 photoEncoding:a3])
  {
    [v10 addObject:&off_32248];
    v12 = sub_57BC(@"CAM_PHOTO_RESOLUTION_12MP");
    [v11 addObject:v12];
  }

  if ([v9 isPhotoResolutionSupported:2 forMode:0 device:0 photoEncoding:a3])
  {
    [v10 addObject:&off_32260];
    v13 = sub_57BC(@"CAM_PHOTO_RESOLUTION_24MP");
    [v11 addObject:v13];
  }

  if (v7 && [v9 isPhotoResolutionSupported:3 forMode:0 device:0 photoEncoding:a3])
  {
    [v10 addObject:&off_32278];
    v14 = sub_57BC(@"CAM_PHOTO_RESOLUTION_48MP");
    [v11 addObject:v14];
  }

  v15 = v11;
  *a5 = v11;

  return v10;
}

- (id)_enhancedResolutionFooterForPhotoEncodingBehavior:(int64_t)a3 allow48MP:(BOOL)a4 capabilities:(id)a5
{
  v5 = a4;
  v7 = a5;
  if (a3 == 2)
  {
    v8 = @"ENHANCED_RAW_RESOLUTION_SIZE_FOOTER";
  }

  else
  {
    v8 = @"ENHANCED_RESOLUTION_SIZE_FOOTER";
  }

  v9 = sub_57BC(v8);
  v10 = [NSMutableString stringWithString:v9];

  if ([v7 isPhotoResolutionSupported:1 forMode:0 device:0 photoEncoding:a3])
  {
    if (a3 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_57BC(off_2CC10[a3]);
    }

    [v10 appendFormat:@"\n%@", v11];
  }

  if ([v7 isPhotoResolutionSupported:2 forMode:0 device:0 photoEncoding:a3])
  {
    if (a3 > 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_57BC(off_2CC28[a3]);
    }

    [v10 appendFormat:@"\n%@", v12];
  }

  if (v5 && [v7 isPhotoResolutionSupported:3 forMode:0 device:0 photoEncoding:a3])
  {
    if (a3 == 2)
    {
      v13 = @"ENHANCED_RAW_RESOLUTION_SIZE_FOOTER_48MP";
    }

    else
    {
      v13 = @"ENHANCED_RESOLUTION_SIZE_FOOTER_48MP";
    }

    v14 = sub_57BC(v13);
    [v10 appendFormat:@"\n%@", v14];
  }

  return v10;
}

- (id)_selectedProRawFileFormat:(id)a3
{
  v3 = +[CameraProRawCodecSettingsController selectedProRawFileFormat];
  v4 = [CameraProRawCodecSettingsController proRawFileFormatPreferenceTitleForValue:v3];

  return v4;
}

@end