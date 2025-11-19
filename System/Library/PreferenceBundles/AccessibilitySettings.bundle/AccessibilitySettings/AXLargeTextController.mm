@interface AXLargeTextController
+ (void)initialize;
- (id)_customViewForSpecifier:(id)a3 class:(Class)a4 isHeader:(BOOL)a5;
- (id)getSizeCategoryBlock;
- (id)getValueSelectedBlock;
- (id)readPreferredContentSizeCategoryName;
- (id)readPreferredContentSizeCategoryNameForAppID:(id)a3;
- (id)setSizeCategoryBlock;
- (id)setValueSelectedBlock;
- (id)specifiers;
- (void)loadView;
- (void)resetContentSizeCategoryName;
- (void)savePreferredContentSizeCategoryName:(id)a3;
- (void)setAppID:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation AXLargeTextController

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[AXLargeTextController initialize];
  }
}

void __35__AXLargeTextController_initialize__block_invoke(id a1)
{
  if (AXProcessIsSetup())
  {
    v1 = +[AXValidationManager sharedInstance];
    [v1 performValidations:&__block_literal_global_300 withPreValidationHandler:&__block_literal_global_302 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_311];
  }
}

BOOL __35__AXLargeTextController_initialize__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AXLargeTextController"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AXLargeTextController (Setup)"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __35__AXLargeTextController_initialize__block_invoke_4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"AXSettings_DBSLargeTextSliderListControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"AXSettings_DBSLargeTextExplanationViewOverride" canInteractWithTargetClass:1];
}

- (void)loadView
{
  [(AXLargeTextController *)self setShowsExtendedRangeSwitch:1];
  if (self->_appID)
  {
    [(AXLargeTextController *)self setSavesCategoryNameOnlyOnSliderEvent:1];
  }

  v9.receiver = self;
  v9.super_class = AXLargeTextController;
  [(AXLargeTextController *)&v9 loadView];
  if (AXProcessIsSetup())
  {
    v3 = sharedBFFStyle();
    v4 = [v3 backgroundColor];
    v5 = [(AXLargeTextController *)self view];
    [v5 setBackgroundColor:v4];

    v6 = sharedBFFStyle();
    v7 = [v6 backgroundColor];
    v8 = [(AXLargeTextController *)self table];
    [v8 setBackgroundColor:v7];
  }
}

- (void)viewDidLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = AXLargeTextController;
  [(AXLargeTextController *)&v34 viewDidLayoutSubviews];
  if (AXProcessIsSetup())
  {
    v3 = [(AXLargeTextController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [*&self->DBSLargeTextController_opaque[OBJC_IVAR___PSListController__table] setFrame:{v5, v7, v9, v11}];
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = __46__AXLargeTextController_viewDidLayoutSubviews__block_invoke;
    v32 = &unk_2553B0;
    v33 = self;
    AXPerformSafeBlock();
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [(AXLargeTextController *)self childViewControllers];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            v19 = [v18 view];
            [v19 frame];
            v21 = v20;
            v23 = v22;

            v24 = [v18 view];

            [v24 setFrame:{v5, v21, v9, v23}];
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v14);
    }
  }
}

- (id)specifiers
{
  if (self->_appID)
  {
    v3 = OBJC_IVAR___PSListController__specifiers;
    v4 = *&self->DBSLargeTextController_opaque[OBJC_IVAR___PSListController__specifiers];
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = +[PSSpecifier emptyGroupSpecifier];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [v6 setProperty:v8 forKey:PSFooterCellClassGroupKey];

      [v6 setProperty:self->_appID forKey:@"BundleIdentifier"];
      switchGroupSpecifier = self->_switchGroupSpecifier;
      self->_switchGroupSpecifier = v6;
      v10 = v6;

      [v5 addObject:v10];
      v11 = *&self->DBSLargeTextController_opaque[v3];
      *&self->DBSLargeTextController_opaque[v3] = v5;

      v4 = *&self->DBSLargeTextController_opaque[v3];
    }

    v12 = v4;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AXLargeTextController;
    v12 = [(AXLargeTextController *)&v14 specifiers];
  }

  return v12;
}

- (void)setSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = AXLargeTextController;
  v4 = a3;
  [(AXLargeTextController *)&v7 setSpecifier:v4];
  v5 = [v4 propertyForKey:{@"BundleIdentifier", v7.receiver, v7.super_class}];
  [(AXLargeTextController *)self setAppID:v5];

  v6 = [v4 propertyForKey:PSTitleKey];

  if (v6)
  {
    [(AXLargeTextController *)self setTitle:v6];
  }
}

- (id)_customViewForSpecifier:(id)a3 class:(Class)a4 isHeader:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v16.receiver = self;
  v16.super_class = AXLargeTextController;
  v9 = [(AXLargeTextController *)&v16 _customViewForSpecifier:v8 class:a4 isHeader:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    v11 = [(AXLargeTextController *)self readPreferredContentSizeCategoryName];
    [v10 setCategoryName:v11];

    v12 = [(AXLargeTextController *)self specifier];
    v13 = [v12 propertyForKey:@"exampleText"];

    if (v13)
    {
      v14 = [v10 bodyExampleLabel];
      [v14 setText:v13];
    }
  }

  return v9;
}

- (void)setAppID:(id)a3
{
  objc_storeStrong(&self->_appID, a3);
  if (a3)
  {
    [(AXLargeTextController *)self setShowsResetSliderButton:1];
    [(AXLargeTextController *)self setSavesCategoryNameOnlyOnSliderEvent:1];
    [(AXLargeTextController *)self reloadSpecifiers];

    [(AXLargeTextController *)self updateSlider];
  }
}

- (id)readPreferredContentSizeCategoryName
{
  v3 = [(AXLargeTextController *)self getSizeCategoryBlock];

  if (v3)
  {
    v4 = [(AXLargeTextController *)self getSizeCategoryBlock];
    v5 = v4[2]();
  }

  else
  {
    v5 = [(AXLargeTextController *)self readPreferredContentSizeCategoryNameForAppID:self->_appID];
    if (![v5 length])
    {
      v6 = _AXSCopyPreferredContentSizeCategoryNameGlobal();

      v5 = v6;
    }

    if (![v5 length] && self->_appID)
    {
      v7 = UIContentSizeCategoryLarge;

      v8 = AXSupportLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Return Default CategoryName", v10, 2u);
      }

      v5 = v7;
    }
  }

  return v5;
}

- (void)savePreferredContentSizeCategoryName:(id)a3
{
  v10 = a3;
  v4 = [(AXLargeTextController *)self setSizeCategoryBlock];

  if (v4)
  {
    v5 = [(AXLargeTextController *)self setSizeCategoryBlock];
    (v5)[2](v5, v10);
    goto LABEL_3;
  }

  [(AXLargeTextController *)self savePreferredContentSizeCategoryName:v10 forAppID:self->_appID];
  if (self->_appID)
  {
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];

    v7 = [(AXLargeTextController *)self setValueSelectedBlock];

    if (!v7)
    {
      goto LABEL_4;
    }

    v5 = [(AXLargeTextController *)self setValueSelectedBlock];
    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }

    v9 = [NSNumber numberWithInt:v8];
    (v5)[2](v5, v9);

LABEL_3:
LABEL_4:
    [(AXLargeTextController *)self reloadSpecifier:self->_switchGroupSpecifier];
  }
}

- (void)resetContentSizeCategoryName
{
  v3 = AXSupportLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Reset Per-App CategoryName", v8, 2u);
  }

  [(AXLargeTextController *)self savePreferredContentSizeCategoryName:0];
  v4 = [(AXLargeTextController *)self setSizeCategoryBlock];

  if (v4)
  {
    v5 = [(AXLargeTextController *)self setSizeCategoryBlock];
    v6 = v5[2];
LABEL_7:
    v6();

    goto LABEL_8;
  }

  v7 = [(AXLargeTextController *)self setValueSelectedBlock];

  if (v7)
  {
    v5 = [(AXLargeTextController *)self setValueSelectedBlock];
    v6 = v5[2];
    goto LABEL_7;
  }

LABEL_8:
  [(AXLargeTextController *)self updateSlider];
}

- (id)readPreferredContentSizeCategoryNameForAppID:(id)a3
{
  v3 = _AXSCopyPreferredContentSizeCategoryNameApp();

  return v3;
}

- (id)getValueSelectedBlock
{
  v2 = [(AXLargeTextController *)self specifier];
  v3 = [v2 propertyForKey:@"getValueSelectedBlock"];

  return v3;
}

- (id)setValueSelectedBlock
{
  v2 = [(AXLargeTextController *)self specifier];
  v3 = [v2 propertyForKey:@"setValueSelectedBlock"];

  return v3;
}

- (id)setSizeCategoryBlock
{
  v2 = [(AXLargeTextController *)self specifier];
  v3 = [v2 propertyForKey:@"setSizeCategory"];

  return v3;
}

- (id)getSizeCategoryBlock
{
  v2 = [(AXLargeTextController *)self specifier];
  v3 = [v2 propertyForKey:@"getSizeCategory"];

  return v3;
}

@end