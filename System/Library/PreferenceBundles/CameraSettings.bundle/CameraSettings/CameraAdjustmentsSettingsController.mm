@interface CameraAdjustmentsSettingsController
- (BOOL)_overlayControlsSectionIncludesRowAtIndexPath:(id)path;
- (_NSRange)_availableControlsSpecifiersRange;
- (id)_availableOverlayControlSpecifiers;
- (id)_createSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (void)_initializeOverlayControlLocalizationDictionary;
- (void)_saveCameraButtonControlSelection;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CameraAdjustmentsSettingsController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CameraAdjustmentsSettingsController;
  [(CameraSettingsBaseController *)&v4 viewDidLoad];
  v3 = sub_23D0(@"CAMERA_ADJUSTMENTS_CUSTOMIZE");
  [(CameraAdjustmentsSettingsController *)self setTitle:v3];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _createSpecifiers = [(CameraAdjustmentsSettingsController *)self _createSpecifiers];
    [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:_createSpecifiers];
    v6 = [_createSpecifiers copy];
    v7 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v6;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (id)_createSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = sub_23D0(@"CAMERA_ADJUSTMENTS_GESTURE_TITLE");
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = sub_23D0(@"CAMERA_ADJUSTMENTS_GESTURE_FOOTER");
  v28 = PSFooterTextGroupKey;
  v29 = v5;
  [v5 setProperty:v6 forKey:?];

  [v3 addObject:v5];
  v7 = sub_23D0(@"CAMERA_ADJUSTMENTS_GESTURE_LIGHT_PRESS");
  selfCopy = self;
  selfCopy2 = self;
  v9 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  v10 = PSDefaultsKey;
  v27 = PSDefaultsKey;
  [v9 setObject:@"com.apple.camera" forKeyedSubscript:PSDefaultsKey];
  v11 = PSKeyNameKey;
  v26 = PSKeyNameKey;
  [v9 setObject:@"systemOverlay.halfPressGestureEnabled" forKeyedSubscript:PSKeyNameKey];
  v12 = PSDefaultValueKey;
  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
  [v9 setIdentifier:@"CAMERA_ADJUSTMENTS_GESTURE_LIGHT_PRESS"];
  [v3 addObject:v9];
  v13 = sub_23D0(@"CAMERA_ADJUSTMENTS_GESTURE_SWIPE");
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:selfCopy2 set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v14 setObject:@"com.apple.camera" forKeyedSubscript:v10];
  [v14 setObject:@"systemOverlay.swipeToPresentEnabled" forKeyedSubscript:v11];
  [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:v12];
  [v14 setIdentifier:@"CAMERA_ADJUSTMENTS_GESTURE_SWIPE"];
  [v3 addObject:v14];
  v15 = [PSSpecifier groupSpecifierWithID:@"CAMOverlayControlsGroupSpecifier"];
  v16 = sub_23D0(@"CAPTURE_BUTTON_CONTROLS_TITLE");
  [v15 setName:v16];

  [v3 addObject:v15];
  v17 = [v3 count];
  _availableOverlayControlSpecifiers = [(CameraAdjustmentsSettingsController *)selfCopy _availableOverlayControlSpecifiers];
  [v3 addObjectsFromArray:_availableOverlayControlSpecifiers];
  v19 = [_availableOverlayControlSpecifiers count];
  *(&selfCopy->__availableOverlayControlLocalizationStrings + 1) = v17;
  *(&selfCopy->__availableControlsSpecifiersRange.location + 1) = v19;
  v20 = [PSSpecifier groupSpecifierWithID:@"cleanPreviewGroup"];
  v21 = sub_23D0(@"CAPTURE_BUTTON_HIDE_CONTROLS_FOOTER");
  [v20 setProperty:v21 forKey:v28];

  [v3 addObject:v20];
  v22 = sub_23D0(@"HIDE_CAMERA_CONTROLS");
  v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:selfCopy set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v23 setObject:@"com.apple.camera" forKeyedSubscript:v27];
  [v23 setObject:@"systemOverlay.hidesClientControls" forKeyedSubscript:v26];
  [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:v12];
  [v23 setIdentifier:@"CAMERA_BUTTON_HIDE_CONTROLS_SWITCH"];
  [v3 addObject:v23];

  return v3;
}

- (void)_initializeOverlayControlLocalizationDictionary
{
  if (!*(&self->super + 1))
  {
    v5[0] = CAMButtonControlZoomKey;
    v5[1] = CAMButtonControlCamerasKey;
    v6[0] = @"CAPTURE_BUTTON_CONTROL_ZOOM";
    v6[1] = @"CAPTURE_BUTTON_CONTROL_CAMERAS";
    v5[2] = CAMButtonControlStylesKey;
    v5[3] = CAMButtonControlToneKey;
    v6[2] = @"CAPTURE_BUTTON_CONTROL_STYLES";
    v6[3] = @"CAPTURE_BUTTON_CONTROL_TONE";
    v5[4] = CAMButtonControlDepthKey;
    v5[5] = CAMButtonControlExposureKey;
    v6[4] = @"CAPTURE_BUTTON_CONTROL_DEPTH";
    v6[5] = @"CAPTURE_BUTTON_CONTROL_EXPOSURE";
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6];
    v4 = *(&self->super + 1);
    *(&self->super + 1) = v3;
  }
}

- (BOOL)_overlayControlsSectionIncludesRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(CameraAdjustmentsSettingsController *)self specifierForID:@"CAMOverlayControlsGroupSpecifier"];
  if (v5)
  {
    v6 = [(CameraAdjustmentsSettingsController *)self indexPathForSpecifier:v5];
    section = [v6 section];
  }

  else
  {
    section = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [pathCopy section] == section;

  return v8;
}

- (id)_availableOverlayControlSpecifiers
{
  [(CameraAdjustmentsSettingsController *)self _initializeOverlayControlLocalizationDictionary];
  v25 = objc_alloc_init(NSMutableArray);
  v3 = CFPreferencesCopyAppValue(CAMUserPreferenceOverlayEnabledControls, @"com.apple.camera");
  keyExistsAndHasValidFormat = 0;
  v4 = CAMUserPreferenceCameraControlsSelectionDidMigrate;
  v5 = 0;
  if (!CFPreferencesGetAppBooleanValue(CAMUserPreferenceCameraControlsSelectionDidMigrate, @"com.apple.camera", &keyExistsAndHasValidFormat))
  {
    v32 = CAMButtonControlCamerasKey;
    v6 = [NSArray arrayWithObjects:&v32 count:1];
    v5 = [v3 isEqualToArray:v6];
  }

  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = CFPreferencesCopyAppValue(CAMUserPreferenceOverlayControlsOrder, @"com.apple.camera");
    if (!v8)
    {
      v33 = CAMButtonControlExposureKey;
      v34 = CAMButtonControlDepthKey;
      v35 = CAMButtonControlZoomKey;
      v36 = CAMButtonControlCamerasKey;
      v37 = CAMButtonControlStylesKey;
      v38 = CAMButtonControlToneKey;
      v8 = [NSArray arrayWithObjects:&v33 count:6];
    }

    v3 = v8;
  }

  if (!keyExistsAndHasValidFormat)
  {
    CFPreferencesSetAppValue(v4, &__kCFBooleanTrue, @"com.apple.camera");
  }

  v9 = v3;
  v10 = CFPreferencesCopyAppValue(CAMUserPreferenceOverlayControlsOrder, @"com.apple.camera");
  if (!v10)
  {
    v33 = CAMButtonControlExposureKey;
    v34 = CAMButtonControlDepthKey;
    v35 = CAMButtonControlZoomKey;
    v36 = CAMButtonControlCamerasKey;
    v37 = CAMButtonControlStylesKey;
    v38 = CAMButtonControlToneKey;
    v10 = [NSArray arrayWithObjects:&v33 count:6];
  }

  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [*(&self->super + 1) objectForKey:v15];
        v17 = v16;
        if (v16)
        {
          v18 = sub_23D0(v16);
        }

        else
        {
          v18 = v15;
        }

        v19 = v18;
        v20 = [v9 containsObject:v15];
        v21 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v21 setIdentifier:v15];
        v22 = [NSNumber numberWithBool:v20];
        [v21 setProperty:v22 forKey:@"CAMOverlayControlSelected"];

        [v25 addObject:v21];
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  return v25;
}

- (void)_saveCameraButtonControlSelection
{
  value = objc_alloc_init(NSMutableArray);
  v3 = objc_alloc_init(NSMutableArray);
  v4 = *(&self->__availableOverlayControlLocalizationStrings + 1);
  if (v4 < (v4 + *(&self->__availableControlsSpecifiersRange.location + 1)))
  {
    v5 = OBJC_IVAR___PSListController__specifiers;
    do
    {
      v6 = [*&self->super.PSListController_opaque[v5] objectAtIndexedSubscript:v4];
      identifier = [v6 identifier];
      [v3 addObject:identifier];

      v8 = [v6 propertyForKey:@"CAMOverlayControlSelected"];
      bOOLValue = [v8 BOOLValue];

      if (bOOLValue)
      {
        identifier2 = [v6 identifier];
        [value addObject:identifier2];
      }

      v4 = (v4 + 1);
    }

    while (v4 < (*(&self->__availableOverlayControlLocalizationStrings + 1) + *(&self->__availableControlsSpecifiersRange.location + 1)));
  }

  CFPreferencesSetAppValue(CAMUserPreferenceOverlayEnabledControls, value, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");
  CFPreferencesSetAppValue(CAMUserPreferenceOverlayControlsOrder, v3, @"com.apple.camera");
  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = CameraAdjustmentsSettingsController;
  [(CameraAdjustmentsSettingsController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  if ([(CameraAdjustmentsSettingsController *)self _overlayControlsSectionIncludesRowAtIndexPath:pathCopy])
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
    v8 = [(CameraAdjustmentsSettingsController *)self specifierAtIndexPath:pathCopy];
    v9 = [v8 propertyForKey:@"CAMOverlayControlSelected"];
    bOOLValue = [v9 BOOLValue];

    v11 = [NSNumber numberWithBool:bOOLValue ^ 1];
    [v8 setProperty:v11 forKey:@"CAMOverlayControlSelected"];

    [(CameraAdjustmentsSettingsController *)self reloadSpecifierID:@"CAMOverlayControlsGroupSpecifier"];
    [(CameraAdjustmentsSettingsController *)self _saveCameraButtonControlSelection];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([(CameraAdjustmentsSettingsController *)self _overlayControlsSectionIncludesRowAtIndexPath:pathCopy])
  {
    [cellCopy setShowsReorderControl:1];
    v8 = [(CameraAdjustmentsSettingsController *)self specifierAtIndexPath:pathCopy];
    v9 = [v8 propertyForKey:@"CAMOverlayControlSelected"];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    [cellCopy setAccessoryType:v11];
  }
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  section = [pathCopy section];
  if (section == [indexPathCopy section])
  {
    v11 = indexPathCopy;
  }

  else
  {
    section2 = [pathCopy section];
    if (section2 >= [indexPathCopy section])
    {
      v13 = 0;
    }

    else
    {
      v13 = [viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}] - 1;
    }

    v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v13, [pathCopy section]);
  }

  v14 = v11;

  return v14;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  v14 = [(CameraAdjustmentsSettingsController *)self specifierAtIndexPath:pathCopy];
  v9 = OBJC_IVAR___PSListController__specifiers;
  v10 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
  v11 = [(CameraAdjustmentsSettingsController *)self indexForIndexPath:pathCopy];

  [v10 removeObjectAtIndex:v11];
  v12 = [(CameraAdjustmentsSettingsController *)self indexForIndexPath:indexPathCopy];

  [v10 insertObject:v14 atIndex:v12];
  v13 = *&self->super.PSListController_opaque[v9];
  *&self->super.PSListController_opaque[v9] = v10;

  [(CameraAdjustmentsSettingsController *)self _saveCameraButtonControlSelection];
}

- (_NSRange)_availableControlsSpecifiersRange
{
  v2 = &self->__availableOverlayControlLocalizationStrings + 1;
  v3 = *(&self->__availableOverlayControlLocalizationStrings + 1);
  v4 = *(v2 + 1);
  result.length = v4;
  result.location = v3;
  return result;
}

@end