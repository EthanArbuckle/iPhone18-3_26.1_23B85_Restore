@interface CameraFocalLengthSettingsController
+ (BOOL)canEnableCustomLenses;
+ (id)focalLengthStringForCustomLens:(int64_t)lens;
+ (id)selectedCustomLensGroup;
- (id)_customLensEnabled:(id)enabled;
- (id)_identifierForCustomLens:(int64_t)lens;
- (id)specifiers;
- (void)_handleDidChangeCustomLensGroup:(id)group;
- (void)_handledDidChangeDefaultCustomLensAtIndexPath:(id)path;
- (void)_persistCurrentDefaultCustomLens;
- (void)_readCurrentDefaultCustomLens;
- (void)_reloadDefaultGroup;
- (void)_setCustomLensEnabled:(id)enabled specifier:(id)specifier;
- (void)_updateCheckedDefaultIndex;
- (void)prepareSpecifiersMetadata;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CameraFocalLengthSettingsController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CameraFocalLengthSettingsController;
  [(CameraSettingsBaseController *)&v7 viewDidLoad];
  v3 = +[CAMCaptureCapabilities capabilities];
  isCameraButtonSupported = [v3 isCameraButtonSupported];

  if (isCameraButtonSupported)
  {
    v5 = @"FOCAL_LENGTH_ROW_TITLE_CAMERA_BUTTON";
  }

  else
  {
    v5 = @"FOCAL_LENGTH_ROW_TITLE";
  }

  v6 = sub_13828(v5);
  [(CameraFocalLengthSettingsController *)self setTitle:v6];
}

- (void)prepareSpecifiersMetadata
{
  v3.receiver = self;
  v3.super_class = CameraFocalLengthSettingsController;
  [(CameraFocalLengthSettingsController *)&v3 prepareSpecifiersMetadata];
  [(CameraFocalLengthSettingsController *)self _readCurrentDefaultCustomLens];
  [(CameraFocalLengthSettingsController *)self _updateCheckedDefaultIndex];
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[CameraSettingsBaseController capabilities];
  selfCopy = self;
  canEnableCustomLenses = [objc_opt_class() canEnableCustomLenses];
  v5 = [PSSpecifier groupSpecifierWithID:@"customLensesGroup"];
  v6 = sub_13828(@"FOCAL_LENGTH_HEADER");
  [v5 setName:v6];

  baseFocalLengthForWideCamera = [v4 baseFocalLengthForWideCamera];
  v8 = 0.0;
  if (baseFocalLengthForWideCamera <= 3)
  {
    v8 = dbl_1FF88[baseFocalLengthForWideCamera];
  }

  v9 = +[CameraSettingsBaseController integerFormatter];
  v10 = [NSNumber numberWithDouble:v8];
  v11 = [v9 stringFromNumber:v10];

  v12 = sub_13828(@"FOCAL_LENGTH_ROW_%@_MM_FOOTER");
  v13 = [NSString stringWithFormat:v12, v11];

  v53 = v11;
  if ((canEnableCustomLenses & 1) == 0)
  {
    if ([v4 isCameraButtonSupported])
    {
      v14 = @"FOCAL_LENGTH_DISABLED_FOOTER_CAMERA_BUTTON";
    }

    else
    {
      v14 = @"FOCAL_LENGTH_DISABLED_FOOTER";
    }

    sub_13828(v14);
    v16 = v15 = v13;
    v17 = [v15 stringByAppendingFormat:@"\n\n%@", v16];

    v13 = v17;
  }

  v52 = v13;
  [v5 setObject:v13 forKeyedSubscript:PSFooterTextGroupKey];
  v54 = v5;
  [v3 addObject:v5];
  v55 = v4;
  [v4 availableCustomLenses];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v72 = 0u;
  v18 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v70;
    v57 = PSEnabledKey;
    v58 = PSValueKey;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v70 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v69 + 1) + 8 * i);
        integerValue = [v22 integerValue];
        if (integerValue)
        {
          v24 = integerValue;
          v25 = sub_13828(@"FOCAL_LENGTH_%@_MM");
          v26 = [objc_opt_class() focalLengthStringForCustomLens:v24];
          v27 = [NSString stringWithFormat:v25, v26];

          v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:selfCopy set:"_setCustomLensEnabled:specifier:" get:"_customLensEnabled:" detail:0 cell:6 edit:0];
          [v28 setObject:v22 forKeyedSubscript:v58];
          v29 = [NSNumber numberWithBool:canEnableCustomLenses];
          [v28 setObject:v29 forKeyedSubscript:v57];

          [v3 addObject:v28];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    }

    while (v19);
  }

  v30 = +[CameraFocalLengthSettingsController selectedCustomLensGroup];
  if ([v30 count] >= 2)
  {
    v31 = [PSSpecifier groupSpecifierWithID:@"defaultFocalLengthGroup"];
    v32 = sub_13828(@"FOCAL_LENGTH_DEFAULT_TITLE");
    [v31 setName:v32];

    v63 = v3;
    v59 = v31;
    [v3 addObject:v31];
    v33 = +[CameraSettingsBaseController capabilities];
    v34 = +[CameraSettingsBaseController integerFormatter];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v61 = v30;
    v62 = v30;
    v35 = [v62 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v66;
      do
      {
        for (j = 0; j != v36; j = j + 1)
        {
          if (*v66 != v37)
          {
            objc_enumerationMutation(v62);
          }

          integerValue2 = [*(*(&v65 + 1) + 8 * j) integerValue];
          v40 = [v33 effectiveFocalLengthForCustomLens:integerValue2];
          v41 = 0.0;
          if (v40 <= 3)
          {
            v41 = dbl_1FF88[v40];
          }

          v42 = [NSNumber numberWithDouble:v41];
          v43 = [v34 stringFromNumber:v42];

          if (integerValue2 > 5)
          {
            v44 = NAN;
          }

          else
          {
            v44 = dbl_1FF58[integerValue2] / dbl_1FF28[integerValue2];
          }

          [v33 zoomFactorForCustomLensZoomFactor:v44];
          v46 = [CAMZoomButton textForZoomFactor:1 showZoomFactorSymbol:0 useLeadingZero:round(v45 * 10.0) / 10.0];
          v47 = sub_13828(@"FOCAL_LENGTH_DEFAULT_OPTION_%@_MM_%@_ZOOM");
          v48 = [NSString stringWithFormat:v47, v43, v46];

          v49 = [PSSpecifier preferenceSpecifierNamed:v48 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          v50 = [(CameraFocalLengthSettingsController *)selfCopy _identifierForCustomLens:integerValue2];
          [v49 setIdentifier:v50];

          [v63 addObject:v49];
        }

        v36 = [v62 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v36);
    }

    v3 = v63;
    v30 = v61;
  }

  [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:v3];
  objc_storeStrong(&selfCopy->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers], v3);

  return v3;
}

- (id)_identifierForCustomLens:(int64_t)lens
{
  v3 = [NSNumber numberWithInteger:lens];
  stringValue = [v3 stringValue];

  return stringValue;
}

+ (id)focalLengthStringForCustomLens:(int64_t)lens
{
  v4 = +[CameraSettingsBaseController capabilities];
  v5 = [v4 effectiveFocalLengthForCustomLens:lens];

  v6 = 0.0;
  if (v5 <= 3)
  {
    v6 = dbl_1FF88[v5];
  }

  v7 = +[CameraSettingsBaseController integerFormatter];
  v8 = [NSNumber numberWithDouble:v6];
  v9 = [v7 stringFromNumber:v8];

  return v9;
}

+ (id)selectedCustomLensGroup
{
  if (+[CameraFocalLengthSettingsController canEnableCustomLenses])
  {
    v2 = CFPreferencesCopyAppValue(CAMUserPreferencesSelectedCustomLensGroup, @"com.apple.camera");
    v3 = +[CameraSettingsBaseController capabilities];
    v4 = [v3 supportedCustomLensGroupForGroup:v2];
  }

  else
  {
    v4 = &off_321D0;
  }

  return v4;
}

+ (BOOL)canEnableCustomLenses
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(CAMUserPreferencePreferredHEICPhotoResolution, @"com.apple.camera", &keyExistsAndHasValidFormat);
  v3 = +[CameraSettingsBaseController capabilities];
  v4 = v3;
  if (!keyExistsAndHasValidFormat)
  {
    AppIntegerValue = [v3 defaultPhotoResolutionForMode:0 devicePosition:0 encodingBehavior:1];
  }

  v5 = [v4 isCustomLensSupportedForPhotoResolution:AppIntegerValue];

  return v5;
}

- (void)_setCustomLensEnabled:(id)enabled specifier:(id)specifier
{
  v6 = PSValueKey;
  enabledCopy = enabled;
  v12 = [specifier objectForKeyedSubscript:v6];
  bOOLValue = [enabledCopy BOOLValue];

  v9 = +[CameraFocalLengthSettingsController selectedCustomLensGroup];
  v10 = [NSMutableArray arrayWithArray:v9];
  v11 = v10;
  if (bOOLValue)
  {
    [v10 addObject:v12];
    [v11 sortUsingSelector:"compare:"];
  }

  else
  {
    [v10 removeObject:v12];
  }

  CFPreferencesSetAppValue(CAMUserPreferencesSelectedCustomLensGroup, v11, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");
  [(CameraFocalLengthSettingsController *)self _handleDidChangeCustomLensGroup:v11];
}

- (id)_customLensEnabled:(id)enabled
{
  v3 = [enabled objectForKeyedSubscript:PSValueKey];
  v4 = +[CameraFocalLengthSettingsController selectedCustomLensGroup];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsObject:v3]);

  return v5;
}

- (void)_readCurrentDefaultCustomLens
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(CAMUserPreferencesDefaultCustomLens, @"com.apple.camera", &keyExistsAndHasValidFormat);
  v4 = +[CameraSettingsBaseController capabilities];
  v5 = v4;
  if (keyExistsAndHasValidFormat)
  {
    v6 = +[CameraFocalLengthSettingsController selectedCustomLensGroup];
    resolvedDefaultCustomLens = [v5 supportedCustomLensForLens:AppIntegerValue inGroup:v6];
  }

  else
  {
    resolvedDefaultCustomLens = [v4 resolvedDefaultCustomLens];
  }

  [(CameraFocalLengthSettingsController *)self _setDefaultCustomLens:resolvedDefaultCustomLens];
}

- (void)_persistCurrentDefaultCustomLens
{
  _defaultCustomLens = [(CameraFocalLengthSettingsController *)self _defaultCustomLens];
  CFPreferencesSetAppValue(CAMUserPreferencesDefaultCustomLens, [NSNumber numberWithInteger:_defaultCustomLens], @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (void)_updateCheckedDefaultIndex
{
  v5 = [(CameraFocalLengthSettingsController *)self _identifierForCustomLens:[(CameraFocalLengthSettingsController *)self _defaultCustomLens]];
  v3 = [(CameraFocalLengthSettingsController *)self specifierForID:?];
  if (v3)
  {
    v4 = [(CameraFocalLengthSettingsController *)self indexOfSpecifier:v3];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(CameraFocalLengthSettingsController *)self _setCheckedDefaultIndex:v4];
}

- (void)_handleDidChangeCustomLensGroup:(id)group
{
  groupCopy = group;
  _defaultCustomLens = [(CameraFocalLengthSettingsController *)self _defaultCustomLens];
  v7 = +[CameraSettingsBaseController capabilities];
  v6 = [v7 supportedCustomLensForLens:_defaultCustomLens inGroup:groupCopy];

  if (_defaultCustomLens != v6)
  {
    [(CameraFocalLengthSettingsController *)self _setDefaultCustomLens:v6];
    [(CameraFocalLengthSettingsController *)self _persistCurrentDefaultCustomLens];
  }

  [(CameraFocalLengthSettingsController *)self _updateCheckedDefaultIndex];
  [(CameraSettingsBaseController *)self reloadSpecifiers];
}

- (void)_handledDidChangeDefaultCustomLensAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = +[CameraFocalLengthSettingsController selectedCustomLensGroup];
  v5 = [pathCopy row];

  if (v5 < [v7 count])
  {
    v6 = [v7 objectAtIndexedSubscript:v5];
    -[CameraFocalLengthSettingsController _setDefaultCustomLens:](self, "_setDefaultCustomLens:", [v6 integerValue]);
    [(CameraFocalLengthSettingsController *)self _persistCurrentDefaultCustomLens];
    [(CameraFocalLengthSettingsController *)self _updateCheckedDefaultIndex];
    [(CameraFocalLengthSettingsController *)self _reloadDefaultGroup];
  }
}

- (void)_reloadDefaultGroup
{
  v4 = [(CameraFocalLengthSettingsController *)self specifierForID:@"defaultFocalLengthGroup"];
  v3 = [(CameraFocalLengthSettingsController *)self indexOfSpecifier:?];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CameraFocalLengthSettingsController *)self reloadSpecifierAtIndex:v3 animated:1];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(CameraFocalLengthSettingsController *)self specifierForID:@"defaultFocalLengthGroup"];
  v8 = [(CameraFocalLengthSettingsController *)self indexOfSpecifier:v7];
  if ([(CameraFocalLengthSettingsController *)self indexForIndexPath:pathCopy]> v8)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    [(CameraFocalLengthSettingsController *)self _handledDidChangeDefaultCustomLensAtIndexPath:pathCopy];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = [(CameraFocalLengthSettingsController *)self specifierForID:@"defaultFocalLengthGroup"];
  v9 = [(CameraFocalLengthSettingsController *)self indexOfSpecifier:v8];
  v10 = [(CameraFocalLengthSettingsController *)self indexForIndexPath:pathCopy];

  if (v10 > v9)
  {
    [cellCopy setChecked:{v10 == -[CameraFocalLengthSettingsController _checkedDefaultIndex](self, "_checkedDefaultIndex")}];
  }
}

@end