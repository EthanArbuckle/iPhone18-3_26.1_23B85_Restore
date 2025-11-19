@interface DisplayFilterColorSettingsController
- (double)_headerHeight;
- (id)_optionSpecifiersForType:(unint64_t)a3;
- (id)accessibilityPreferenceForSpecifier:(id)a3;
- (id)blueCorrectionIntensity:(id)a3;
- (id)grayscaleCorrectionIntensity:(id)a3;
- (id)greenCorrectionIntensity:(id)a3;
- (id)redCorrectionIntensity:(id)a3;
- (id)singleColorFilterHue:(id)a3;
- (id)singleColorFilterIntensity:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (unint64_t)filterForCellIdentifier:(id)a3;
- (void)_addFilterSpecifier:(id)a3;
- (void)_addOptionSpecifier:(id)a3 forType:(unint64_t)a4;
- (void)_setupPreviewRegion;
- (void)_updateFilterOptionSpecifiers;
- (void)_updateFilterSelectionSpecifiers;
- (void)_updateOptionVisibility;
- (void)accessibilitySetPreference:(id)a3 specifier:(id)a4;
- (void)accessibilitySettingsDidChange;
- (void)changePage:(id)a3;
- (void)didSelectDisplayFilterPage:(int64_t)a3;
- (void)reloadSpecifiers;
- (void)setBlueCorrectionIntensity:(id)a3 specifier:(id)a4;
- (void)setGlobalFilterEnabled:(BOOL)a3;
- (void)setGrayscaleCorrectionIntensity:(id)a3 specifier:(id)a4;
- (void)setGreenCorrectionIntensity:(id)a3 specifier:(id)a4;
- (void)setRedCorrectionIntensity:(id)a3 specifier:(id)a4;
- (void)setSingleColorFilterHue:(id)a3 specifier:(id)a4;
- (void)setSingleColorFilterIntensity:(id)a3 specifier:(id)a4;
- (void)updateSystemFilter;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DisplayFilterColorSettingsController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = DisplayFilterColorSettingsController;
  v4 = [(DisplayFilterColorSettingsController *)&v15 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = [v4 specifier];
    v7 = [v6 properties];
    v8 = [v7 objectForKey:PSTitleKey];

    v9 = v8;
    v10 = [v9 stringByAppendingString:@".subtitle"];
    v11 = settingsLocString(v9, @"DisplayFilterColorSettings");

    v12 = settingsLocString(v10, @"DisplayFilterColorSettings");
    [v4 setTitle:v11];
    if ([v12 length])
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    [v4 setSubtitle:v13];
  }

  return v4;
}

- (double)_headerHeight
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  if (v4 >= v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v8 = 264.0;
  if (v7 < 1350.0)
  {
    v8 = 200.0;
  }

  v9 = v7 < 590.0;
  result = 175.0;
  if (!v9)
  {
    return v8;
  }

  return result;
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_34;
  }

  v26 = OBJC_IVAR___PSListController__specifiers;
  [(DisplayFilterColorSettingsController *)self setFilterTypeToOptionSpecifiers:0];
  [(DisplayFilterColorSettingsController *)self setFilterSelectionSpecifiers:0];
  [(DisplayFilterColorSettingsController *)self setCurrentFilterSelectionSpecifiers:0];
  [(DisplayFilterColorSettingsController *)self setCurrentOptionSpecifiers:0];
  [(DisplayFilterColorSettingsController *)self setDisplayingFilterSelection:0];
  [(DisplayFilterColorSettingsController *)self setDisplayingOptionsForType:0];
  [(DisplayFilterColorSettingsController *)self setSpecifierBeforeSelectionTable:0];
  v4 = [(DisplayFilterColorSettingsController *)self specifiersFromFile];
  v27 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v6)
  {
    goto LABEL_29;
  }

  v7 = v6;
  v8 = *v29;
  v9 = PSKeyNameKey;
  do
  {
    v10 = 0;
    do
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v28 + 1) + 8 * v10);
      v12 = [v11 properties];
      v13 = [v12 objectForKey:v9];

      if (![v13 length])
      {
        goto LABEL_13;
      }

      if (![v13 rangeOfString:@"OPTION_BLUE_ADJUST"])
      {
        v14 = self;
        v15 = v11;
        v16 = 8;
LABEL_24:
        [(DisplayFilterColorSettingsController *)v14 _addOptionSpecifier:v15 forType:v16];
        goto LABEL_25;
      }

      if (![v13 rangeOfString:@"OPTION_RED_ADJUST"])
      {
        v14 = self;
        v15 = v11;
        v16 = 2;
        goto LABEL_24;
      }

      if (![v13 rangeOfString:@"OPTION_GREEN_ADJUST"])
      {
        v14 = self;
        v15 = v11;
        v16 = 4;
        goto LABEL_24;
      }

      if (![v13 rangeOfString:@"OPTION_SINGLE_COLOR"])
      {
        v14 = self;
        v15 = v11;
        v16 = 16;
        goto LABEL_24;
      }

      if (![v13 rangeOfString:@"OPTION_GRAYSCALE"])
      {
        v14 = self;
        v15 = v11;
        v16 = 1;
        goto LABEL_24;
      }

LABEL_13:
      [(DisplayFilterColorSettingsController *)self setSpecifierBeforeFilterOptions:v11];
      if (([v13 isEqual:@"GRAYSCALE"] & 1) != 0 || (objc_msgSend(v13, "isEqual:", @"RED_ADJUST") & 1) != 0 || (objc_msgSend(v13, "isEqual:", @"GREEN_ADJUST") & 1) != 0 || objc_msgSend(v13, "isEqual:", @"BLUE_ADJUST") || objc_msgSend(v13, "isEqual:", @"SINGLE_COLOR_ADJUST"))
      {
        [(DisplayFilterColorSettingsController *)self _addFilterSpecifier:v11];
      }

      else
      {
        [(DisplayFilterColorSettingsController *)self setSpecifierBeforeSelectionTable:v11];
        [v27 addObject:v11];
      }

LABEL_25:

      v10 = v10 + 1;
    }

    while (v7 != v10);
    v17 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    v7 = v17;
  }

  while (v17);
LABEL_29:

  v18 = [(DisplayFilterColorSettingsController *)self currentFilterSelectionSpecifiers];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [(DisplayFilterColorSettingsController *)self currentFilterSelectionSpecifiers];
    [v27 addObjectsFromArray:v20];
  }

  v21 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
    [v27 addObjectsFromArray:v23];
  }

  v24 = *&self->super.AXUISettingsSetupCapableListController_opaque[v26];
  *&self->super.AXUISettingsSetupCapableListController_opaque[v26] = v27;

  v3 = *&self->super.AXUISettingsSetupCapableListController_opaque[v26];
LABEL_34:

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = DisplayFilterColorSettingsController;
  [(DisplayFilterColorSettingsController *)&v7 viewWillAppear:a3];
  v4 = [(DisplayFilterColorSettingsController *)self table];
  v5 = [(DisplayFilterColorSettingsController *)self table];
  [v5 contentInset];
  [v4 setContentOffset:0 animated:{0.0, -v6}];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(DisplayFilterColorSettingsController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(DisplayFilterColorSettingsController *)self table];
  [v12 frame];
  v14 = v13;

  if (v14 == v7)
  {
    [(DisplayFilterColorSettingsController *)self _headerHeight];
    v16 = v15 + 6.0 + 16.0;
    v17 = v7 + v16 + 80.0;
    v18 = v11 - v16 + -80.0;
    v19 = [(DisplayFilterColorSettingsController *)self table];
    [v19 setFrame:{v5, v17, v9, v18}];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = DisplayFilterColorSettingsController;
  [(DisplayFilterColorSettingsController *)&v3 viewDidLoad];
  [(DisplayFilterColorSettingsController *)self _setupPreviewRegion];
  [(DisplayFilterColorSettingsController *)self _updateOptionVisibility];
}

- (void)didSelectDisplayFilterPage:(int64_t)a3
{
  v4 = [(DisplayFilterColorSettingsController *)self pageControl];
  [v4 setCurrentPage:a3];
}

- (void)changePage:(id)a3
{
  v5 = [(DisplayFilterColorSettingsController *)self previewPageController];
  v4 = [(DisplayFilterColorSettingsController *)self pageControl];
  [v5 setCurrentPage:{objc_msgSend(v4, "currentPage")}];
}

- (void)_setupPreviewRegion
{
  v3 = [(DisplayFilterColorSettingsController *)self previewPageController];

  if (!v3)
  {
    [(DisplayFilterColorSettingsController *)self _headerHeight];
    v5 = v4;
    v6 = v4 + 6.0 + 8.0;
    v7 = objc_alloc_init(DisplayFilterSettingsPreviewPageViewController);
    [(DisplayFilterSettingsPreviewPageViewController *)v7 setPageHeight:v5];
    [(DisplayFilterSettingsPreviewPageViewController *)v7 setDisplayFilterPageDelegate:self];
    [(DisplayFilterColorSettingsController *)self setPreviewPageController:v7];
    v8 = [[UIPageControl alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];
    [(DisplayFilterColorSettingsController *)self setPageControl:v8];
    v9 = [(DisplayFilterSettingsPreviewPageViewController *)v7 view];
    v10 = +[UIColor labelColor];
    [v8 setCurrentPageIndicatorTintColor:v10];

    v11 = +[UIColor secondaryLabelColor];
    [v8 setPageIndicatorTintColor:v11];

    v12 = +[UIColor secondarySystemBackgroundColor];
    [v8 setBackgroundColor:v12];

    v63 = v7;
    [v8 setNumberOfPages:{-[DisplayFilterSettingsPreviewPageViewController pageCount](v7, "pageCount")}];
    [v8 setCurrentPage:{-[DisplayFilterSettingsPreviewPageViewController currentPage](v7, "currentPage")}];
    [v8 addTarget:self action:"changePage:" forControlEvents:4096];
    v13 = [[UIView alloc] initWithFrame:{0.0, 0.0, 10.0, v5 + 8.0 + 8.0}];
    v14 = +[UIColor secondarySystemBackgroundColor];
    [v13 setBackgroundColor:v14];

    [v13 addSubview:v9];
    [v13 addSubview:v8];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    addConstraint(v9, 3, v13, 3, 8.0);
    addConstraint(v9, 5, v13, 5, 0.0);
    v62 = v9;
    addConstraint(v9, 6, v13, 6, 0.0);
    addConstraint(v8, 4, v13, 4, -8.0);
    addConstraint(v8, 5, v13, 5, 0.0);
    addConstraint(v8, 6, v13, 6, 0.0);
    v60 = v8;
    v15 = [NSLayoutConstraint constraintWithItem:v8 attribute:3 relatedBy:0 toItem:v9 attribute:4 multiplier:1.0 constant:8.0];
    [v13 addConstraint:v15];
    v61 = [NSLayoutConstraint constraintWithItem:v8 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:6.0];

    [v8 addConstraint:v61];
    v16 = v6 + 1.0 + 8.0 + 8.0;
    v17 = [[UIView alloc] initWithFrame:{0.0, 0.0, 10.0, v16}];
    v18 = +[UIColor tableSeparatorLightColor];
    [v17 setBackgroundColor:v18];

    [v17 addSubview:v13];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    addConstraint(v13, 3, v17, 3, 0.0);
    addConstraint(v13, 4, v17, 4, -1.0);
    addConstraint(v13, 5, v17, 5, 0.0);
    addConstraint(v13, 6, v17, 6, 0.0);
    v19 = [(DisplayFilterColorSettingsController *)self table];
    v20 = [v19 superview];
    [v20 addSubview:v17];

    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = [v17 topAnchor];
    v59 = [(DisplayFilterColorSettingsController *)self view];
    v57 = [v59 safeAreaLayoutGuide];
    v56 = [v57 topAnchor];
    v55 = [v58 constraintEqualToAnchor:v56];
    v64[0] = v55;
    v52 = [v17 leadingAnchor];
    v54 = self;
    v53 = [(DisplayFilterColorSettingsController *)self view];
    v51 = [v53 safeAreaLayoutGuide];
    v50 = [v51 leadingAnchor];
    v21 = [v52 constraintEqualToAnchor:v50];
    v64[1] = v21;
    v22 = [v17 trailingAnchor];
    v23 = [(DisplayFilterColorSettingsController *)self view];
    v24 = [v23 safeAreaLayoutGuide];
    v25 = [v24 trailingAnchor];
    v26 = [v22 constraintEqualToAnchor:v25];
    v64[2] = v26;
    v27 = [v17 heightAnchor];
    v28 = [v27 constraintEqualToConstant:v16];
    v64[3] = v28;
    v49 = [NSArray arrayWithObjects:v64 count:4];

    [NSLayoutConstraint activateConstraints:v49];
    v29 = [(DisplayFilterColorSettingsController *)v54 table];
    [v29 contentInset];
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v36 = [(DisplayFilterColorSettingsController *)v54 table];
    [v36 setContentInset:{32.0, v31, v33, v35}];

    [v17 frame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [(DisplayFilterColorSettingsController *)v54 table];
    [v43 frame];
    v45 = v44;

    [v17 setFrame:{v38, v40, v45, v42}];
    v46 = [(DisplayFilterColorSettingsController *)v54 table];
    v47 = [(DisplayFilterColorSettingsController *)v54 table];
    [v47 contentInset];
    [v46 setContentOffset:0 animated:{0.0, -v48}];
  }
}

- (unint64_t)filterForCellIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"grayscale"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"redAdjust"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"greenAdjust"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"blueAdjust"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"singleColor"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)accessibilitySetPreference:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 properties];
  v9 = [v7 objectForKey:PSKeyNameKey];

  v8 = [v6 BOOLValue];
  if ([v9 isEqualToString:@"ColorFilterEnabled"])
  {
    [(DisplayFilterColorSettingsController *)self setGlobalFilterEnabled:v8];
  }
}

- (id)accessibilityPreferenceForSpecifier:(id)a3
{
  v4 = [a3 properties];
  v5 = [v4 objectForKey:PSKeyNameKey];

  if ([v5 isEqualToString:@"ColorFilterEnabled"])
  {
    v6 = [NSNumber numberWithBool:[(DisplayFilterBaseSettingsController *)self globalFilterEnabled]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)accessibilitySettingsDidChange
{
  v3.receiver = self;
  v3.super_class = DisplayFilterColorSettingsController;
  [(DisplayFilterBaseSettingsController *)&v3 accessibilitySettingsDidChange];
  [(DisplayFilterColorSettingsController *)self _updateOptionVisibility];
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = DisplayFilterColorSettingsController;
  [(DisplayFilterColorSettingsController *)&v3 reloadSpecifiers];
  [(DisplayFilterColorSettingsController *)self _updateOptionVisibility];
}

- (void)setGlobalFilterEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = DisplayFilterColorSettingsController;
  [(DisplayFilterBaseSettingsController *)&v4 setGlobalFilterEnabled:a3];
  [(DisplayFilterColorSettingsController *)self _updateOptionVisibility];
}

- (void)_addFilterSpecifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(DisplayFilterColorSettingsController *)self filterSelectionSpecifiers];

    if (!v5)
    {
      v6 = +[NSMutableArray array];
      [(DisplayFilterColorSettingsController *)self setFilterSelectionSpecifiers:v6];
    }

    v7 = [(DisplayFilterColorSettingsController *)self filterSelectionSpecifiers];
    [v7 addObject:v4];
  }
}

- (void)_addOptionSpecifier:(id)a3 forType:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v13 = v6;
    v7 = [(DisplayFilterColorSettingsController *)self filterTypeToOptionSpecifiers];

    if (!v7)
    {
      v8 = +[NSMutableDictionary dictionary];
      [(DisplayFilterColorSettingsController *)self setFilterTypeToOptionSpecifiers:v8];
    }

    v9 = [(DisplayFilterColorSettingsController *)self filterTypeToOptionSpecifiers];
    v10 = [NSNumber numberWithUnsignedLongLong:a4];
    v11 = [v9 objectForKey:v10];
    if (!v11)
    {
      v12 = objc_opt_new();
      [v9 setObject:v12 forKey:v10];
      v11 = [v9 objectForKey:v10];
    }

    [v11 addObject:v13];

    v6 = v13;
  }
}

- (id)_optionSpecifiersForType:(unint64_t)a3
{
  v4 = [(DisplayFilterColorSettingsController *)self filterTypeToOptionSpecifiers];
  v5 = [NSNumber numberWithUnsignedLongLong:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (void)updateSystemFilter
{
  v3.receiver = self;
  v3.super_class = DisplayFilterColorSettingsController;
  [(DisplayFilterBaseSettingsController *)&v3 updateSystemFilter];
  [(DisplayFilterColorSettingsController *)self _updateOptionVisibility];
}

- (void)_updateOptionVisibility
{
  [(DisplayFilterColorSettingsController *)self _updateFilterSelectionSpecifiers];

  [(DisplayFilterColorSettingsController *)self _updateFilterOptionSpecifiers];
}

- (void)_updateFilterSelectionSpecifiers
{
  v3 = [(DisplayFilterBaseSettingsController *)self globalFilterEnabled];
  if (v3 != [(DisplayFilterColorSettingsController *)self displayingFilterSelection])
  {
    [(DisplayFilterColorSettingsController *)self setDisplayingFilterSelection:v3];
    v4 = [(DisplayFilterColorSettingsController *)self filterSelectionSpecifiers];
    if (v3)
    {
      v5 = [(DisplayFilterColorSettingsController *)self specifierBeforeSelectionTable];
      [(DisplayFilterColorSettingsController *)self insertContiguousSpecifiers:v4 afterSpecifier:v5 animated:1];

      v6 = [(DisplayFilterColorSettingsController *)self filterSelectionSpecifiers];
      [(DisplayFilterColorSettingsController *)self setCurrentFilterSelectionSpecifiers:v6];
    }

    else
    {
      [(DisplayFilterColorSettingsController *)self removeContiguousSpecifiers:v4 animated:1];

      [(DisplayFilterColorSettingsController *)self setCurrentFilterSelectionSpecifiers:0];
    }
  }
}

- (void)_updateFilterOptionSpecifiers
{
  v3 = [(DisplayFilterBaseSettingsController *)self selectedFilter];
  if ([(DisplayFilterBaseSettingsController *)self globalFilterEnabled])
  {
    if (v3 == [(DisplayFilterColorSettingsController *)self displayingOptionsForType])
    {
      return;
    }

    v4 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
      [(DisplayFilterColorSettingsController *)self removeContiguousSpecifiers:v6 animated:1];

      [(DisplayFilterColorSettingsController *)self setCurrentOptionSpecifiers:0];
    }

    v7 = [(DisplayFilterColorSettingsController *)self _optionSpecifiersForType:v3];
    [(DisplayFilterColorSettingsController *)self setCurrentOptionSpecifiers:v7];

    v8 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
      v11 = [(DisplayFilterColorSettingsController *)self specifierBeforeFilterOptions];
      [(DisplayFilterColorSettingsController *)self insertContiguousSpecifiers:v10 afterSpecifier:v11 animated:1];
    }
  }

  else
  {
    v12 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
    v13 = [v12 count];

    if (!v13)
    {
      return;
    }

    v14 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
    [(DisplayFilterColorSettingsController *)self removeContiguousSpecifiers:v14 animated:1];

    [(DisplayFilterColorSettingsController *)self setCurrentOptionSpecifiers:0];
    v3 = 0;
  }

  [(DisplayFilterColorSettingsController *)self setDisplayingOptionsForType:v3];
}

- (id)grayscaleCorrectionIntensity:(id)a3
{
  MADisplayFilterPrefGetGrayscaleCorrectionIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setGrayscaleCorrectionIntensity:(id)a3 specifier:(id)a4
{
  v4 = a3;
  MADisplayFilterPrefSuspendNotifications();
  [v4 doubleValue];

  MADisplayFilterPrefSetGrayscaleCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

- (id)blueCorrectionIntensity:(id)a3
{
  MADisplayFilterPrefGetBlueColorCorrectionIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setBlueCorrectionIntensity:(id)a3 specifier:(id)a4
{
  v4 = a3;
  MADisplayFilterPrefSuspendNotifications();
  [v4 doubleValue];

  MADisplayFilterPrefSetBlueColorCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

- (id)redCorrectionIntensity:(id)a3
{
  MADisplayFilterPrefGetRedColorCorrectionIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setRedCorrectionIntensity:(id)a3 specifier:(id)a4
{
  v4 = a3;
  MADisplayFilterPrefSuspendNotifications();
  [v4 doubleValue];

  MADisplayFilterPrefSetRedColorCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

- (id)greenCorrectionIntensity:(id)a3
{
  MADisplayFilterPrefGetGreenColorCorrectionIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setGreenCorrectionIntensity:(id)a3 specifier:(id)a4
{
  v4 = a3;
  MADisplayFilterPrefSuspendNotifications();
  [v4 doubleValue];

  MADisplayFilterPrefSetGreenColorCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

- (id)singleColorFilterHue:(id)a3
{
  MADisplayFilterPrefGetSingleColorHue();

  return [NSNumber numberWithDouble:?];
}

- (void)setSingleColorFilterHue:(id)a3 specifier:(id)a4
{
  v4 = a3;
  MADisplayFilterPrefSuspendNotifications();
  [v4 doubleValue];

  MADisplayFilterPrefSetSingleColorHue();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

- (id)singleColorFilterIntensity:(id)a3
{
  MADisplayFilterPrefGetSingleColorIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setSingleColorFilterIntensity:(id)a3 specifier:(id)a4
{
  v4 = a3;
  MADisplayFilterPrefSuspendNotifications();
  [v4 doubleValue];

  MADisplayFilterPrefSetSingleColorIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

@end