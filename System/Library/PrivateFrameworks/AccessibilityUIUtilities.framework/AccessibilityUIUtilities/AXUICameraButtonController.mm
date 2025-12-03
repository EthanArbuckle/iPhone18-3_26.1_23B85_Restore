@interface AXUICameraButtonController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_cameraButtonEnabled:(id)enabled;
- (id)specifiers;
- (void)_launchCameraButtonTips:(id)tips;
- (void)_setCameraButtonEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActive;
@end

@implementation AXUICameraButtonController

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C57B8]);
  if (!v3)
  {
    v64 = *MEMORY[0x1E69C57B8];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    v7 = MEMORY[0x1E696AEC0];
    v8 = AXUILocalizedStringForKeyWithTable(@"CAMERA_BUTTON_TOGGLE_FOOTER", @"Accessibility-D93");
    v9 = AXUILocalizedStringForKeyWithTable(@"CAMERA_BUTTON_LEARN_MORE_TITLE", @"Accessibility-D93");
    v10 = [v7 stringWithFormat:v8, v9];

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [emptyGroupSpecifier setProperty:v12 forKey:*MEMORY[0x1E69C58D8]];

    [emptyGroupSpecifier setProperty:v10 forKey:*MEMORY[0x1E69C58F8]];
    v13 = AXUILocalizedStringForKeyWithTable(@"CAMERA_BUTTON_LEARN_MORE_TITLE", @"Accessibility-D93");
    v66.location = [v10 rangeOfString:v13];
    v14 = NSStringFromRange(v66);
    [emptyGroupSpecifier setProperty:v14 forKey:*MEMORY[0x1E69C58E8]];

    v15 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
    [emptyGroupSpecifier setProperty:v15 forKey:*MEMORY[0x1E69C58F0]];

    v16 = NSStringFromSelector(sel__launchCameraButtonTips_);
    [emptyGroupSpecifier setProperty:v16 forKey:*MEMORY[0x1E69C58E0]];

    [array addObject:emptyGroupSpecifier];
    v17 = MEMORY[0x1E69C5748];
    v18 = AXUILocalizedStringForKeyWithTable(@"CAMERA_BUTTON_TITLE", @"Accessibility-D93");
    v19 = [v17 preferenceSpecifierNamed:v18 target:self set:sel__setCameraButtonEnabled_specifier_ get:sel__cameraButtonEnabled_ detail:0 cell:6 edit:0];

    v20 = *MEMORY[0x1E69C5918];
    [v19 setProperty:@"CAMERA_CONTROL_SWITCH" forKey:*MEMORY[0x1E69C5918]];
    [array addObject:v19];
    v21 = MEMORY[0x1E69C5748];
    v22 = AXUILocalizedStringForKeyWithTable(@"SENSITIVITY_HEADER", @"Accessibility-D93");
    v23 = [v21 groupSpecifierWithName:v22];

    [v23 setProperty:@"LIGHT_PRESS_FORCE" forKey:v20];
    [array addObject:v23];
    [array2 addObject:v23];
    v24 = MEMORY[0x1E69C5748];
    v25 = AXUILocalizedStringForKeyWithTable(@"SENSITIVITY_SOFTER", @"Accessibility-D93");
    v26 = [v24 preferenceSpecifierNamed:v25 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v26 setProperty:&unk_1F4051A40 forKey:@"SENSTIVITY_VALUE"];
    [array addObject:v26];
    [array2 addObject:v26];
    v27 = MEMORY[0x1E69C5748];
    v28 = AXUILocalizedStringForKeyWithTable(@"SENSITIVITY_DEFAULT", @"Accessibility-D93");
    v29 = [v27 preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v29 setProperty:&unk_1F4051A58 forKey:@"SENSTIVITY_VALUE"];
    [array addObject:v29];
    [array2 addObject:v29];
    v30 = MEMORY[0x1E69C5748];
    v31 = AXUILocalizedStringForKeyWithTable(@"SENSITIVITY_HARDER", @"Accessibility-D93");
    v32 = [v30 preferenceSpecifierNamed:v31 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v32 setProperty:&unk_1F4051A70 forKey:@"SENSTIVITY_VALUE"];
    [array addObject:v32];
    [array2 addObject:v32];
    emptyGroupSpecifier2 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];

    v34 = AXUILocalizedStringForKeyWithTable(@"SENSITIVITY_TESTER_FOOTER", @"Accessibility-D93");
    [emptyGroupSpecifier2 setProperty:v34 forKey:*MEMORY[0x1E69C5900]];

    [array addObject:emptyGroupSpecifier2];
    [array2 addObject:emptyGroupSpecifier2];
    v35 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v35 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
    [v35 setProperty:@"AXCameraButtonPracticeCell" forKey:v20];
    [array addObject:v35];
    [array2 addObject:v35];
    v36 = MEMORY[0x1E69C5748];
    v37 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_PRESS_SPEED_HEADER", @"Accessibility-D93");
    v38 = [v36 groupSpecifierWithName:v37];

    [v38 setProperty:@"SENSITIVITY" forKey:v20];
    [array addObject:v38];
    [array2 addObject:v38];
    v39 = MEMORY[0x1E69C5748];
    v40 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_PRESS_SPEED_DEFAULT", @"Accessibility-D93");
    v41 = [v39 preferenceSpecifierNamed:v40 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v41 setProperty:&unk_1F4051A88 forKey:@"DOUBLE_PRESS_SPEED_VALUE"];
    [array addObject:v41];
    [array2 addObject:v41];
    v42 = MEMORY[0x1E69C5748];
    v43 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_PRESS_SPEED_SLOW", @"Accessibility-D93");
    v44 = [v42 preferenceSpecifierNamed:v43 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v44 setProperty:&unk_1F4051AA0 forKey:@"DOUBLE_PRESS_SPEED_VALUE"];
    [array addObject:v44];
    [array2 addObject:v44];
    v45 = MEMORY[0x1E69C5748];
    v46 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_PRESS_SPEED_SLOWER", @"Accessibility-D93");
    v47 = [v45 preferenceSpecifierNamed:v46 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v47 setProperty:&unk_1F4051AB8 forKey:@"DOUBLE_PRESS_SPEED_VALUE"];
    [array addObject:v47];
    [array2 addObject:v47];
    v48 = MEMORY[0x1E69C5748];
    v49 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_CLICK_SPEED_HEADER", @"Accessibility-D93");
    v50 = [v48 groupSpecifierWithName:v49];

    [v50 setProperty:@"CLICK_SENSITIVITY" forKey:v20];
    [array addObject:v50];
    [array2 addObject:v50];
    v51 = MEMORY[0x1E69C5748];
    v52 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_CLICK_SPEED_DEFAULT", @"Accessibility-D93");
    v53 = [v51 preferenceSpecifierNamed:v52 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v53 setProperty:&unk_1F4051AD0 forKey:@"DOUBLE_CLICK_SPEED_VALUE"];
    [array addObject:v53];
    [array2 addObject:v53];
    v54 = MEMORY[0x1E69C5748];
    v55 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_CLICK_SPEED_SLOW", @"Accessibility-D93");
    v56 = [v54 preferenceSpecifierNamed:v55 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v56 setProperty:&unk_1F4051AE8 forKey:@"DOUBLE_CLICK_SPEED_VALUE"];
    [array addObject:v56];
    [array2 addObject:v56];
    v57 = MEMORY[0x1E69C5748];
    v58 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_CLICK_SPEED_SLOWER", @"Accessibility-D93");
    v59 = [v57 preferenceSpecifierNamed:v58 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v59 setProperty:&unk_1F4051B00 forKey:@"DOUBLE_CLICK_SPEED_VALUE"];
    [array addObject:v59];
    [array2 addObject:v59];
    [(AXUISettingsBaseListController *)self setDetailItems:array2];
    v60 = [(AXUICameraButtonController *)self _cameraButtonEnabled:0];
    v61 = -[AXUISettingsBaseListController specifiersByRemovingDetailItemsFromOriginalSpecifiers:ifHidden:](self, "specifiersByRemovingDetailItemsFromOriginalSpecifiers:ifHidden:", array, [v60 BOOLValue] ^ 1);
    v62 = *(&self->super.super.super.super.super.super.super.super.isa + v64);
    *(&self->super.super.super.super.super.super.super.super.isa + v64) = v61;

    v3 = *(&self->super.super.super.super.super.super.super.super.isa + v64);
  }

  return v3;
}

- (void)willBecomeActive
{
  v4.receiver = self;
  v4.super_class = AXUICameraButtonController;
  [(AXUICameraButtonController *)&v4 willBecomeActive];
  v3 = [(AXUICameraButtonController *)self _cameraButtonEnabled:0];
  -[AXUISettingsBaseListController setDetailItemsHidden:](self, "setDetailItemsHidden:", [v3 BOOLValue] ^ 1);
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXUICameraButtonController;
  [(AXUICameraButtonController *)&v4 viewWillAppear:appear];
  [(AXUICameraButtonController *)self reloadSpecifiers];
}

- (void)_launchCameraButtonTips:(id)tips
{
  v6 = [MEMORY[0x1E69A45C0] URLWithTopicID:@"iph0c397b154"];
  v4 = [MEMORY[0x1E69A45C0] helpViewControllerWithURL:v6];
  [v4 setShowTopicViewOnLoad:1];
  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  [v5 setModalPresentationStyle:1];
  [(AXUICameraButtonController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(AXUISettingsBaseListController *)self specifierForIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 propertyForKey:@"SENSTIVITY_VALUE"];

    if (v8)
    {
      v9 = [v7 propertyForKey:@"SENSTIVITY_VALUE"];
      [v9 doubleValue];
      v11 = v10;
      mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
      [mEMORY[0x1E6989890] cameraButtonSensitivity];
      v14 = vabdd_f64(v11, v13);

LABEL_15:
      [cellCopy setChecked:v14 < 0.001];
      goto LABEL_16;
    }

    v15 = [v7 propertyForKey:@"DOUBLE_PRESS_SPEED_VALUE"];

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x1E695E000]);
      v17 = [v16 initWithSuiteName:*MEMORY[0x1E6988710]];
      v18 = [v17 objectForKey:@"systemOverlay.menuToggleMaxIntervalMilliseconds"];
      intValue = [v18 intValue];

      if (intValue)
      {
        v20 = intValue;
      }

      else
      {
        v20 = 500;
      }

      v21 = @"DOUBLE_PRESS_SPEED_VALUE";
LABEL_14:
      v9 = [v7 propertyForKey:v21];
      v14 = vabdd_f64([v9 intValue], v20);
      goto LABEL_15;
    }

    v22 = [v7 propertyForKey:@"DOUBLE_CLICK_SPEED_VALUE"];

    if (v22)
    {
      v23 = objc_alloc(MEMORY[0x1E695E000]);
      v24 = [v23 initWithSuiteName:*MEMORY[0x1E6988710]];
      v25 = [v24 objectForKey:@"systemOverlay.doubleClickMaxIntervalMilliseconds"];
      intValue2 = [v25 intValue];

      if (intValue2)
      {
        v20 = intValue2;
      }

      else
      {
        v20 = 400;
      }

      v21 = @"DOUBLE_CLICK_SPEED_VALUE";
      goto LABEL_14;
    }

    v27 = [v7 propertyForKey:*MEMORY[0x1E69C5918]];
    v28 = [v27 isEqualToString:@"AXCameraButtonPracticeCell"];

    if (v28)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [cellCopy setBackgroundColor:clearColor];
    }
  }

LABEL_16:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = AXUICameraButtonController;
  [(AXUISettingsSetupCapableListController *)&v26 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXUISettingsBaseListController *)self specifierForIndexPath:pathCopy];
  v8 = [v7 propertyForKey:@"SENSTIVITY_VALUE"];

  if (v8)
  {
    v9 = [v7 propertyForKey:@"SENSTIVITY_VALUE"];
    [v9 doubleValue];
    v11 = v10;

    mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
    [mEMORY[0x1E6989890] setCameraButtonSensitivity:v11];

    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&dword_1C0DFB000, v13, OS_LOG_TYPE_DEFAULT, "CameraButton: setting camera sensitivity: %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v15 = [v7 propertyForKey:@"DOUBLE_PRESS_SPEED_VALUE"];

  if (v15)
  {
    v16 = [v7 propertyForKey:@"DOUBLE_PRESS_SPEED_VALUE"];
    intValue = [v16 intValue];

    v18 = objc_alloc(MEMORY[0x1E695E000]);
    v19 = [v18 initWithSuiteName:*MEMORY[0x1E6988710]];
    v13 = v19;
    v20 = intValue;
    v21 = @"systemOverlay.menuToggleMaxIntervalMilliseconds";
LABEL_8:
    [v19 setInteger:v20 forKey:v21];
LABEL_9:

    [(AXUISettingsBaseListController *)self updateTableCheckedSelection:pathCopy];
    goto LABEL_10;
  }

  v22 = [v7 propertyForKey:@"DOUBLE_CLICK_SPEED_VALUE"];

  if (v22)
  {
    v23 = [v7 propertyForKey:@"DOUBLE_CLICK_SPEED_VALUE"];
    intValue2 = [v23 intValue];

    v25 = objc_alloc(MEMORY[0x1E695E000]);
    v19 = [v25 initWithSuiteName:*MEMORY[0x1E6988710]];
    v13 = v19;
    v20 = intValue2;
    v21 = @"systemOverlay.doubleClickMaxIntervalMilliseconds";
    goto LABEL_8;
  }

LABEL_10:
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AXUICameraButtonController *)self specifierAtIndex:[(AXUICameraButtonController *)self indexForIndexPath:pathCopy]];
  v9 = [v8 propertyForKey:*MEMORY[0x1E69C5860]];
  v10 = objc_opt_class();

  if (v9 == v10)
  {
    v12 = 279.0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AXUICameraButtonController;
    [(AXUICameraButtonController *)&v14 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v12 = v11;
  }

  return v12;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [(AXUISettingsBaseListController *)self specifierForIndexPath:path];
  v5 = [v4 propertyForKey:*MEMORY[0x1E69C5918]];
  v6 = [v5 isEqualToString:@"AXCameraButtonPracticeCell"];

  return v6 ^ 1;
}

- (void)_setCameraButtonEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  -[AXUISettingsBaseListController setDetailItemsHidden:](self, "setDetailItemsHidden:", [enabledCopy BOOLValue] ^ 1);
  v6 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x1E6988738]];
  LODWORD(self) = [enabledCopy BOOLValue];

  [v7 setBool:self ^ 1 forKey:@"SBDisableCaptureButton"];
}

- (id)_cameraButtonEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x1E6988738]];
  v6 = [v5 BOOLForKey:@"SBDisableCaptureButton"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6 ^ 1u];
  v8 = __UIAccessibilitySafeClass();

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E695E118];
  }

  v10 = v9;

  return v9;
}

@end