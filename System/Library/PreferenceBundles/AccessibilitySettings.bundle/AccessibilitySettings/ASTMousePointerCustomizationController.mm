@interface ASTMousePointerCustomizationController
- (id)assistiveTouchMousePointerSizeMultiplier:(id)a3;
- (id)mousePointerColorDescription:(id)a3;
- (id)mousePointerTimeoutDescription:(id)a3;
- (id)selectSpecifier:(id)a3;
- (id)specifiers;
- (int64_t)selectedColorForSelectionController:(id)a3;
- (void)cursorColorSelectionController:(id)a3 selectedCursorColor:(int64_t)a4;
- (void)setAssistiveTouchMousePointerSizeMultiplier:(id)a3 specifier:(id)a4;
@end

@implementation ASTMousePointerCustomizationController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    objc_initWeak(location, self);
    v6 = settingsLocString(@"MOUSE_POINTER_SIZE_TITLE", @"HandSettings");
    v7 = [PSSpecifier groupSpecifierWithName:v6];

    v8 = PSIDKey;
    [v7 setProperty:@"MOUSE_POINTER_SIZE_TITLE" forKey:PSIDKey];
    [v5 addObject:v7];
    v9 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setAssistiveTouchMousePointerSizeMultiplier:specifier:" get:"assistiveTouchMousePointerSizeMultiplier:" detail:0 cell:5 edit:0];
    [v9 setProperty:&__kCFBooleanTrue forKey:PSSliderIsSegmented];
    [v9 setProperty:&__kCFBooleanTrue forKey:PSSliderLocksToSegment];
    [v9 setProperty:&__kCFBooleanTrue forKey:PSSliderSnapsToSegment];
    v10 = [NSNumber numberWithDouble:kAXSAssistiveTouchMousePointerSizeMultiplierMin];
    [v9 setProperty:v10 forKey:PSControlMinimumKey];

    v11 = [NSNumber numberWithDouble:kAXSAssistiveTouchMousePointerSizeMultiplierMax];
    [v9 setProperty:v11 forKey:PSControlMaximumKey];

    [v9 setProperty:&off_27ADB8 forKey:PSSliderSegmentCount];
    [v5 addObject:v9];
    v12 = settingsLocString(@"MOUSE_POINTER_VISUAL_APPEARANCE", @"HandSettings");
    v13 = [PSSpecifier groupSpecifierWithName:v12];

    [v13 setProperty:@"MOUSE_POINTER_VISUAL_APPEARANCE" forKey:v8];
    [v5 addObject:v13];
    v14 = settingsLocString(@"MOUSE_POINTER_COLOR", @"HandSettings");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"mousePointerColorDescription:" detail:objc_opt_class() cell:2 edit:0];

    [v15 setProperty:&stru_25D420 forKey:PSSpecifierSearchPlistKey];
    [v15 setProperty:@"MOUSE_POINTER_COLOR" forKey:v8];
    [v5 addObject:v15];
    v16 = +[AXSettings sharedInstance];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = __52__ASTMousePointerCustomizationController_specifiers__block_invoke;
    v32[3] = &unk_255818;
    objc_copyWeak(&v34, location);
    v17 = v15;
    v33 = v17;
    [v16 registerUpdateBlock:v32 forRetrieveSelector:"assistiveTouchMousePointerColor" withListener:self];

    objc_destroyWeak(&v34);
    v18 = settingsLocString(@"MOUSE_POINTER_TIMEOUT", @"HandSettings");
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:"mousePointerTimeoutDescription:" detail:objc_opt_class() cell:2 edit:0];

    [v19 setProperty:@"MOUSE_POINTER_TIMEOUT" forKey:v8];
    v20 = +[AXSettings sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __52__ASTMousePointerCustomizationController_specifiers__block_invoke_2;
    v29[3] = &unk_255818;
    objc_copyWeak(&v31, location);
    v21 = v19;
    v30 = v21;
    [v20 registerUpdateBlock:v29 forRetrieveSelector:"assistiveTouchMousePointerTimeout" withListener:self];

    objc_destroyWeak(&v31);
    v22 = +[AXSettings sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __52__ASTMousePointerCustomizationController_specifiers__block_invoke_3;
    v26[3] = &unk_255818;
    objc_copyWeak(&v28, location);
    v23 = v21;
    v27 = v23;
    [v22 registerUpdateBlock:v26 forRetrieveSelector:"assistiveTouchMousePointerTimeoutEnabled" withListener:self];

    objc_destroyWeak(&v28);
    [v5 addObject:v23];
    v24 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    objc_destroyWeak(location);
    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

void __52__ASTMousePointerCustomizationController_specifiers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32) animated:0];
}

void __52__ASTMousePointerCustomizationController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32) animated:0];
}

void __52__ASTMousePointerCustomizationController_specifiers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32) animated:0];
}

- (id)selectSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASTMousePointerCustomizationController;
  v4 = [(ASTMousePointerCustomizationController *)&v6 selectSpecifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDelegate:self];
  }

  return v4;
}

- (id)assistiveTouchMousePointerSizeMultiplier:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchMousePointerSizeMultiplier];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (void)setAssistiveTouchMousePointerSizeMultiplier:(id)a3 specifier:(id)a4
{
  [a3 floatValue];
  v5 = v4;
  v6 = +[AXSettings sharedInstance];
  [v6 setAssistiveTouchMousePointerSizeMultiplier:v5];
}

- (id)mousePointerColorDescription:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchMousePointerColor];
  v4 = AXAssistiveTouchScannerColorDescription();

  return v4;
}

- (id)mousePointerTimeoutDescription:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMousePointerTimeoutEnabled];

  if (v4)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 assistiveTouchMousePointerTimeout];
    v6 = AXLocalizedTimeSummary();
  }

  else
  {
    v6 = settingsLocString(@"MOUSE_POINTER_TIMEOUT_DISABLED", @"HandSettings");
  }

  return v6;
}

- (void)cursorColorSelectionController:(id)a3 selectedCursorColor:(int64_t)a4
{
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchMousePointerColor:a4];
}

- (int64_t)selectedColorForSelectionController:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMousePointerColor];

  return v4;
}

@end