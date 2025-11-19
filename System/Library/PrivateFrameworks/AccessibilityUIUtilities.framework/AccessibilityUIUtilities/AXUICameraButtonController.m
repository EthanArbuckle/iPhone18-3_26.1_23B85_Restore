@interface AXUICameraButtonController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_cameraButtonEnabled:(id)a3;
- (id)specifiers;
- (void)_launchCameraButtonTips:(id)a3;
- (void)_setCameraButtonEnabled:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation AXUICameraButtonController

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C57B8]);
  if (!v3)
  {
    v64 = *MEMORY[0x1E69C57B8];
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    v7 = MEMORY[0x1E696AEC0];
    v8 = AXUILocalizedStringForKeyWithTable(@"CAMERA_BUTTON_TOGGLE_FOOTER", @"Accessibility-D93");
    v9 = AXUILocalizedStringForKeyWithTable(@"CAMERA_BUTTON_LEARN_MORE_TITLE", @"Accessibility-D93");
    v10 = [v7 stringWithFormat:v8, v9];

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v6 setProperty:v12 forKey:*MEMORY[0x1E69C58D8]];

    [v6 setProperty:v10 forKey:*MEMORY[0x1E69C58F8]];
    v13 = AXUILocalizedStringForKeyWithTable(@"CAMERA_BUTTON_LEARN_MORE_TITLE", @"Accessibility-D93");
    v66.location = [v10 rangeOfString:v13];
    v14 = NSStringFromRange(v66);
    [v6 setProperty:v14 forKey:*MEMORY[0x1E69C58E8]];

    v15 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
    [v6 setProperty:v15 forKey:*MEMORY[0x1E69C58F0]];

    v16 = NSStringFromSelector(sel__launchCameraButtonTips_);
    [v6 setProperty:v16 forKey:*MEMORY[0x1E69C58E0]];

    [v4 addObject:v6];
    v17 = MEMORY[0x1E69C5748];
    v18 = AXUILocalizedStringForKeyWithTable(@"CAMERA_BUTTON_TITLE", @"Accessibility-D93");
    v19 = [v17 preferenceSpecifierNamed:v18 target:self set:sel__setCameraButtonEnabled_specifier_ get:sel__cameraButtonEnabled_ detail:0 cell:6 edit:0];

    v20 = *MEMORY[0x1E69C5918];
    [v19 setProperty:@"CAMERA_CONTROL_SWITCH" forKey:*MEMORY[0x1E69C5918]];
    [v4 addObject:v19];
    v21 = MEMORY[0x1E69C5748];
    v22 = AXUILocalizedStringForKeyWithTable(@"SENSITIVITY_HEADER", @"Accessibility-D93");
    v23 = [v21 groupSpecifierWithName:v22];

    [v23 setProperty:@"LIGHT_PRESS_FORCE" forKey:v20];
    [v4 addObject:v23];
    [v5 addObject:v23];
    v24 = MEMORY[0x1E69C5748];
    v25 = AXUILocalizedStringForKeyWithTable(@"SENSITIVITY_SOFTER", @"Accessibility-D93");
    v26 = [v24 preferenceSpecifierNamed:v25 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v26 setProperty:&unk_1F4051A40 forKey:@"SENSTIVITY_VALUE"];
    [v4 addObject:v26];
    [v5 addObject:v26];
    v27 = MEMORY[0x1E69C5748];
    v28 = AXUILocalizedStringForKeyWithTable(@"SENSITIVITY_DEFAULT", @"Accessibility-D93");
    v29 = [v27 preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v29 setProperty:&unk_1F4051A58 forKey:@"SENSTIVITY_VALUE"];
    [v4 addObject:v29];
    [v5 addObject:v29];
    v30 = MEMORY[0x1E69C5748];
    v31 = AXUILocalizedStringForKeyWithTable(@"SENSITIVITY_HARDER", @"Accessibility-D93");
    v32 = [v30 preferenceSpecifierNamed:v31 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v32 setProperty:&unk_1F4051A70 forKey:@"SENSTIVITY_VALUE"];
    [v4 addObject:v32];
    [v5 addObject:v32];
    v33 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];

    v34 = AXUILocalizedStringForKeyWithTable(@"SENSITIVITY_TESTER_FOOTER", @"Accessibility-D93");
    [v33 setProperty:v34 forKey:*MEMORY[0x1E69C5900]];

    [v4 addObject:v33];
    [v5 addObject:v33];
    v35 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v35 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
    [v35 setProperty:@"AXCameraButtonPracticeCell" forKey:v20];
    [v4 addObject:v35];
    [v5 addObject:v35];
    v36 = MEMORY[0x1E69C5748];
    v37 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_PRESS_SPEED_HEADER", @"Accessibility-D93");
    v38 = [v36 groupSpecifierWithName:v37];

    [v38 setProperty:@"SENSITIVITY" forKey:v20];
    [v4 addObject:v38];
    [v5 addObject:v38];
    v39 = MEMORY[0x1E69C5748];
    v40 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_PRESS_SPEED_DEFAULT", @"Accessibility-D93");
    v41 = [v39 preferenceSpecifierNamed:v40 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v41 setProperty:&unk_1F4051A88 forKey:@"DOUBLE_PRESS_SPEED_VALUE"];
    [v4 addObject:v41];
    [v5 addObject:v41];
    v42 = MEMORY[0x1E69C5748];
    v43 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_PRESS_SPEED_SLOW", @"Accessibility-D93");
    v44 = [v42 preferenceSpecifierNamed:v43 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v44 setProperty:&unk_1F4051AA0 forKey:@"DOUBLE_PRESS_SPEED_VALUE"];
    [v4 addObject:v44];
    [v5 addObject:v44];
    v45 = MEMORY[0x1E69C5748];
    v46 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_PRESS_SPEED_SLOWER", @"Accessibility-D93");
    v47 = [v45 preferenceSpecifierNamed:v46 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v47 setProperty:&unk_1F4051AB8 forKey:@"DOUBLE_PRESS_SPEED_VALUE"];
    [v4 addObject:v47];
    [v5 addObject:v47];
    v48 = MEMORY[0x1E69C5748];
    v49 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_CLICK_SPEED_HEADER", @"Accessibility-D93");
    v50 = [v48 groupSpecifierWithName:v49];

    [v50 setProperty:@"CLICK_SENSITIVITY" forKey:v20];
    [v4 addObject:v50];
    [v5 addObject:v50];
    v51 = MEMORY[0x1E69C5748];
    v52 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_CLICK_SPEED_DEFAULT", @"Accessibility-D93");
    v53 = [v51 preferenceSpecifierNamed:v52 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v53 setProperty:&unk_1F4051AD0 forKey:@"DOUBLE_CLICK_SPEED_VALUE"];
    [v4 addObject:v53];
    [v5 addObject:v53];
    v54 = MEMORY[0x1E69C5748];
    v55 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_CLICK_SPEED_SLOW", @"Accessibility-D93");
    v56 = [v54 preferenceSpecifierNamed:v55 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v56 setProperty:&unk_1F4051AE8 forKey:@"DOUBLE_CLICK_SPEED_VALUE"];
    [v4 addObject:v56];
    [v5 addObject:v56];
    v57 = MEMORY[0x1E69C5748];
    v58 = AXUILocalizedStringForKeyWithTable(@"DOUBLE_CLICK_SPEED_SLOWER", @"Accessibility-D93");
    v59 = [v57 preferenceSpecifierNamed:v58 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v59 setProperty:&unk_1F4051B00 forKey:@"DOUBLE_CLICK_SPEED_VALUE"];
    [v4 addObject:v59];
    [v5 addObject:v59];
    [(AXUISettingsBaseListController *)self setDetailItems:v5];
    v60 = [(AXUICameraButtonController *)self _cameraButtonEnabled:0];
    v61 = -[AXUISettingsBaseListController specifiersByRemovingDetailItemsFromOriginalSpecifiers:ifHidden:](self, "specifiersByRemovingDetailItemsFromOriginalSpecifiers:ifHidden:", v4, [v60 BOOLValue] ^ 1);
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXUICameraButtonController;
  [(AXUICameraButtonController *)&v4 viewWillAppear:a3];
  [(AXUICameraButtonController *)self reloadSpecifiers];
}

- (void)_launchCameraButtonTips:(id)a3
{
  v6 = [MEMORY[0x1E69A45C0] URLWithTopicID:@"iph0c397b154"];
  v4 = [MEMORY[0x1E69A45C0] helpViewControllerWithURL:v6];
  [v4 setShowTopicViewOnLoad:1];
  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  [v5 setModalPresentationStyle:1];
  [(AXUICameraButtonController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v30 = a4;
  v7 = [(AXUISettingsBaseListController *)self specifierForIndexPath:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 propertyForKey:@"SENSTIVITY_VALUE"];

    if (v8)
    {
      v9 = [v7 propertyForKey:@"SENSTIVITY_VALUE"];
      [v9 doubleValue];
      v11 = v10;
      v12 = [MEMORY[0x1E6989890] sharedInstance];
      [v12 cameraButtonSensitivity];
      v14 = vabdd_f64(v11, v13);

LABEL_15:
      [v30 setChecked:v14 < 0.001];
      goto LABEL_16;
    }

    v15 = [v7 propertyForKey:@"DOUBLE_PRESS_SPEED_VALUE"];

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x1E695E000]);
      v17 = [v16 initWithSuiteName:*MEMORY[0x1E6988710]];
      v18 = [v17 objectForKey:@"systemOverlay.menuToggleMaxIntervalMilliseconds"];
      v19 = [v18 intValue];

      if (v19)
      {
        v20 = v19;
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
      v26 = [v25 intValue];

      if (v26)
      {
        v20 = v26;
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
      v29 = [MEMORY[0x1E69DC888] clearColor];
      [v30 setBackgroundColor:v29];
    }
  }

LABEL_16:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v26.receiver = self;
  v26.super_class = AXUICameraButtonController;
  [(AXUISettingsSetupCapableListController *)&v26 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXUISettingsBaseListController *)self specifierForIndexPath:v6];
  v8 = [v7 propertyForKey:@"SENSTIVITY_VALUE"];

  if (v8)
  {
    v9 = [v7 propertyForKey:@"SENSTIVITY_VALUE"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [MEMORY[0x1E6989890] sharedInstance];
    [v12 setCameraButtonSensitivity:v11];

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
    v17 = [v16 intValue];

    v18 = objc_alloc(MEMORY[0x1E695E000]);
    v19 = [v18 initWithSuiteName:*MEMORY[0x1E6988710]];
    v13 = v19;
    v20 = v17;
    v21 = @"systemOverlay.menuToggleMaxIntervalMilliseconds";
LABEL_8:
    [v19 setInteger:v20 forKey:v21];
LABEL_9:

    [(AXUISettingsBaseListController *)self updateTableCheckedSelection:v6];
    goto LABEL_10;
  }

  v22 = [v7 propertyForKey:@"DOUBLE_CLICK_SPEED_VALUE"];

  if (v22)
  {
    v23 = [v7 propertyForKey:@"DOUBLE_CLICK_SPEED_VALUE"];
    v24 = [v23 intValue];

    v25 = objc_alloc(MEMORY[0x1E695E000]);
    v19 = [v25 initWithSuiteName:*MEMORY[0x1E6988710]];
    v13 = v19;
    v20 = v24;
    v21 = @"systemOverlay.doubleClickMaxIntervalMilliseconds";
    goto LABEL_8;
  }

LABEL_10:
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXUICameraButtonController *)self specifierAtIndex:[(AXUICameraButtonController *)self indexForIndexPath:v7]];
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
    [(AXUICameraButtonController *)&v14 tableView:v6 heightForRowAtIndexPath:v7];
    v12 = v11;
  }

  return v12;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [(AXUISettingsBaseListController *)self specifierForIndexPath:a4];
  v5 = [v4 propertyForKey:*MEMORY[0x1E69C5918]];
  v6 = [v5 isEqualToString:@"AXCameraButtonPracticeCell"];

  return v6 ^ 1;
}

- (void)_setCameraButtonEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  -[AXUISettingsBaseListController setDetailItemsHidden:](self, "setDetailItemsHidden:", [v5 BOOLValue] ^ 1);
  v6 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x1E6988738]];
  LODWORD(self) = [v5 BOOLValue];

  [v7 setBool:self ^ 1 forKey:@"SBDisableCaptureButton"];
}

- (id)_cameraButtonEnabled:(id)a3
{
  v3 = a3;
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