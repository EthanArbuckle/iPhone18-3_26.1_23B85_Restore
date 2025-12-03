@interface AXLargeTextController
+ (void)initialize;
- (id)_customViewForSpecifier:(id)specifier class:(Class)class isHeader:(BOOL)header;
- (id)getSizeCategoryBlock;
- (id)getValueSelectedBlock;
- (id)readPreferredContentSizeCategoryName;
- (id)readPreferredContentSizeCategoryNameForAppID:(id)d;
- (id)setSizeCategoryBlock;
- (id)setValueSelectedBlock;
- (id)specifiers;
- (void)loadView;
- (void)resetContentSizeCategoryName;
- (void)savePreferredContentSizeCategoryName:(id)name;
- (void)setAppID:(id)d;
- (void)setSpecifier:(id)specifier;
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
    backgroundColor = [v3 backgroundColor];
    view = [(AXLargeTextController *)self view];
    [view setBackgroundColor:backgroundColor];

    v6 = sharedBFFStyle();
    backgroundColor2 = [v6 backgroundColor];
    table = [(AXLargeTextController *)self table];
    [table setBackgroundColor:backgroundColor2];
  }
}

- (void)viewDidLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = AXLargeTextController;
  [(AXLargeTextController *)&v34 viewDidLayoutSubviews];
  if (AXProcessIsSetup())
  {
    view = [(AXLargeTextController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [*&self->DBSLargeTextController_opaque[OBJC_IVAR___PSListController__table] setFrame:{v5, v7, v9, v11}];
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = __46__AXLargeTextController_viewDidLayoutSubviews__block_invoke;
    v32 = &unk_2553B0;
    selfCopy = self;
    AXPerformSafeBlock();
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    childViewControllers = [(AXLargeTextController *)self childViewControllers];
    v13 = [childViewControllers countByEnumeratingWithState:&v25 objects:v35 count:16];
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
            objc_enumerationMutation(childViewControllers);
          }

          v17 = *(*(&v25 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            view2 = [v18 view];
            [view2 frame];
            v21 = v20;
            v23 = v22;

            view3 = [v18 view];

            [view3 setFrame:{v5, v21, v9, v23}];
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [childViewControllers countByEnumeratingWithState:&v25 objects:v35 count:16];
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

    specifiers = v4;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AXLargeTextController;
    specifiers = [(AXLargeTextController *)&v14 specifiers];
  }

  return specifiers;
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = AXLargeTextController;
  specifierCopy = specifier;
  [(AXLargeTextController *)&v7 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"BundleIdentifier", v7.receiver, v7.super_class}];
  [(AXLargeTextController *)self setAppID:v5];

  v6 = [specifierCopy propertyForKey:PSTitleKey];

  if (v6)
  {
    [(AXLargeTextController *)self setTitle:v6];
  }
}

- (id)_customViewForSpecifier:(id)specifier class:(Class)class isHeader:(BOOL)header
{
  headerCopy = header;
  specifierCopy = specifier;
  v16.receiver = self;
  v16.super_class = AXLargeTextController;
  v9 = [(AXLargeTextController *)&v16 _customViewForSpecifier:specifierCopy class:class isHeader:headerCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    readPreferredContentSizeCategoryName = [(AXLargeTextController *)self readPreferredContentSizeCategoryName];
    [v10 setCategoryName:readPreferredContentSizeCategoryName];

    specifier = [(AXLargeTextController *)self specifier];
    v13 = [specifier propertyForKey:@"exampleText"];

    if (v13)
    {
      bodyExampleLabel = [v10 bodyExampleLabel];
      [bodyExampleLabel setText:v13];
    }
  }

  return v9;
}

- (void)setAppID:(id)d
{
  objc_storeStrong(&self->_appID, d);
  if (d)
  {
    [(AXLargeTextController *)self setShowsResetSliderButton:1];
    [(AXLargeTextController *)self setSavesCategoryNameOnlyOnSliderEvent:1];
    [(AXLargeTextController *)self reloadSpecifiers];

    [(AXLargeTextController *)self updateSlider];
  }
}

- (id)readPreferredContentSizeCategoryName
{
  getSizeCategoryBlock = [(AXLargeTextController *)self getSizeCategoryBlock];

  if (getSizeCategoryBlock)
  {
    getSizeCategoryBlock2 = [(AXLargeTextController *)self getSizeCategoryBlock];
    v5 = getSizeCategoryBlock2[2]();
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

- (void)savePreferredContentSizeCategoryName:(id)name
{
  nameCopy = name;
  setSizeCategoryBlock = [(AXLargeTextController *)self setSizeCategoryBlock];

  if (setSizeCategoryBlock)
  {
    setSizeCategoryBlock2 = [(AXLargeTextController *)self setSizeCategoryBlock];
    (setSizeCategoryBlock2)[2](setSizeCategoryBlock2, nameCopy);
    goto LABEL_3;
  }

  [(AXLargeTextController *)self savePreferredContentSizeCategoryName:nameCopy forAppID:self->_appID];
  if (self->_appID)
  {
    v6 = +[AXSettings sharedInstance];
    [v6 aggregatePerAppSettingsStatistics];

    setValueSelectedBlock = [(AXLargeTextController *)self setValueSelectedBlock];

    if (!setValueSelectedBlock)
    {
      goto LABEL_4;
    }

    setSizeCategoryBlock2 = [(AXLargeTextController *)self setValueSelectedBlock];
    if (nameCopy)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }

    v9 = [NSNumber numberWithInt:v8];
    (setSizeCategoryBlock2)[2](setSizeCategoryBlock2, v9);

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
  setSizeCategoryBlock = [(AXLargeTextController *)self setSizeCategoryBlock];

  if (setSizeCategoryBlock)
  {
    setSizeCategoryBlock2 = [(AXLargeTextController *)self setSizeCategoryBlock];
    v6 = setSizeCategoryBlock2[2];
LABEL_7:
    v6();

    goto LABEL_8;
  }

  setValueSelectedBlock = [(AXLargeTextController *)self setValueSelectedBlock];

  if (setValueSelectedBlock)
  {
    setSizeCategoryBlock2 = [(AXLargeTextController *)self setValueSelectedBlock];
    v6 = setSizeCategoryBlock2[2];
    goto LABEL_7;
  }

LABEL_8:
  [(AXLargeTextController *)self updateSlider];
}

- (id)readPreferredContentSizeCategoryNameForAppID:(id)d
{
  v3 = _AXSCopyPreferredContentSizeCategoryNameApp();

  return v3;
}

- (id)getValueSelectedBlock
{
  specifier = [(AXLargeTextController *)self specifier];
  v3 = [specifier propertyForKey:@"getValueSelectedBlock"];

  return v3;
}

- (id)setValueSelectedBlock
{
  specifier = [(AXLargeTextController *)self specifier];
  v3 = [specifier propertyForKey:@"setValueSelectedBlock"];

  return v3;
}

- (id)setSizeCategoryBlock
{
  specifier = [(AXLargeTextController *)self specifier];
  v3 = [specifier propertyForKey:@"setSizeCategory"];

  return v3;
}

- (id)getSizeCategoryBlock
{
  specifier = [(AXLargeTextController *)self specifier];
  v3 = [specifier propertyForKey:@"getSizeCategory"];

  return v3;
}

@end