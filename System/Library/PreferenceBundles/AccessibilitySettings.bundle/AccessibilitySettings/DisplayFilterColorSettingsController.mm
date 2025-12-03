@interface DisplayFilterColorSettingsController
- (double)_headerHeight;
- (id)_optionSpecifiersForType:(unint64_t)type;
- (id)accessibilityPreferenceForSpecifier:(id)specifier;
- (id)blueCorrectionIntensity:(id)intensity;
- (id)grayscaleCorrectionIntensity:(id)intensity;
- (id)greenCorrectionIntensity:(id)intensity;
- (id)redCorrectionIntensity:(id)intensity;
- (id)singleColorFilterHue:(id)hue;
- (id)singleColorFilterIntensity:(id)intensity;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (unint64_t)filterForCellIdentifier:(id)identifier;
- (void)_addFilterSpecifier:(id)specifier;
- (void)_addOptionSpecifier:(id)specifier forType:(unint64_t)type;
- (void)_setupPreviewRegion;
- (void)_updateFilterOptionSpecifiers;
- (void)_updateFilterSelectionSpecifiers;
- (void)_updateOptionVisibility;
- (void)accessibilitySetPreference:(id)preference specifier:(id)specifier;
- (void)accessibilitySettingsDidChange;
- (void)changePage:(id)page;
- (void)didSelectDisplayFilterPage:(int64_t)page;
- (void)reloadSpecifiers;
- (void)setBlueCorrectionIntensity:(id)intensity specifier:(id)specifier;
- (void)setGlobalFilterEnabled:(BOOL)enabled;
- (void)setGrayscaleCorrectionIntensity:(id)intensity specifier:(id)specifier;
- (void)setGreenCorrectionIntensity:(id)intensity specifier:(id)specifier;
- (void)setRedCorrectionIntensity:(id)intensity specifier:(id)specifier;
- (void)setSingleColorFilterHue:(id)hue specifier:(id)specifier;
- (void)setSingleColorFilterIntensity:(id)intensity specifier:(id)specifier;
- (void)updateSystemFilter;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DisplayFilterColorSettingsController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = DisplayFilterColorSettingsController;
  v4 = [(DisplayFilterColorSettingsController *)&v15 tableView:view cellForRowAtIndexPath:path];
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    specifier = [v4 specifier];
    properties = [specifier properties];
    v8 = [properties objectForKey:PSTitleKey];

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
  specifiersFromFile = [(DisplayFilterColorSettingsController *)self specifiersFromFile];
  v27 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = specifiersFromFile;
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
      properties = [v11 properties];
      v13 = [properties objectForKey:v9];

      if (![v13 length])
      {
        goto LABEL_13;
      }

      if (![v13 rangeOfString:@"OPTION_BLUE_ADJUST"])
      {
        selfCopy5 = self;
        v15 = v11;
        v16 = 8;
LABEL_24:
        [(DisplayFilterColorSettingsController *)selfCopy5 _addOptionSpecifier:v15 forType:v16];
        goto LABEL_25;
      }

      if (![v13 rangeOfString:@"OPTION_RED_ADJUST"])
      {
        selfCopy5 = self;
        v15 = v11;
        v16 = 2;
        goto LABEL_24;
      }

      if (![v13 rangeOfString:@"OPTION_GREEN_ADJUST"])
      {
        selfCopy5 = self;
        v15 = v11;
        v16 = 4;
        goto LABEL_24;
      }

      if (![v13 rangeOfString:@"OPTION_SINGLE_COLOR"])
      {
        selfCopy5 = self;
        v15 = v11;
        v16 = 16;
        goto LABEL_24;
      }

      if (![v13 rangeOfString:@"OPTION_GRAYSCALE"])
      {
        selfCopy5 = self;
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

  currentFilterSelectionSpecifiers = [(DisplayFilterColorSettingsController *)self currentFilterSelectionSpecifiers];
  v19 = [currentFilterSelectionSpecifiers count];

  if (v19)
  {
    currentFilterSelectionSpecifiers2 = [(DisplayFilterColorSettingsController *)self currentFilterSelectionSpecifiers];
    [v27 addObjectsFromArray:currentFilterSelectionSpecifiers2];
  }

  currentOptionSpecifiers = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
  v22 = [currentOptionSpecifiers count];

  if (v22)
  {
    currentOptionSpecifiers2 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
    [v27 addObjectsFromArray:currentOptionSpecifiers2];
  }

  v24 = *&self->super.AXUISettingsSetupCapableListController_opaque[v26];
  *&self->super.AXUISettingsSetupCapableListController_opaque[v26] = v27;

  v3 = *&self->super.AXUISettingsSetupCapableListController_opaque[v26];
LABEL_34:

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = DisplayFilterColorSettingsController;
  [(DisplayFilterColorSettingsController *)&v7 viewWillAppear:appear];
  table = [(DisplayFilterColorSettingsController *)self table];
  table2 = [(DisplayFilterColorSettingsController *)self table];
  [table2 contentInset];
  [table setContentOffset:0 animated:{0.0, -v6}];
}

- (void)viewDidLayoutSubviews
{
  view = [(DisplayFilterColorSettingsController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  table = [(DisplayFilterColorSettingsController *)self table];
  [table frame];
  v14 = v13;

  if (v14 == v7)
  {
    [(DisplayFilterColorSettingsController *)self _headerHeight];
    v16 = v15 + 6.0 + 16.0;
    v17 = v7 + v16 + 80.0;
    v18 = v11 - v16 + -80.0;
    table2 = [(DisplayFilterColorSettingsController *)self table];
    [table2 setFrame:{v5, v17, v9, v18}];
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

- (void)didSelectDisplayFilterPage:(int64_t)page
{
  pageControl = [(DisplayFilterColorSettingsController *)self pageControl];
  [pageControl setCurrentPage:page];
}

- (void)changePage:(id)page
{
  previewPageController = [(DisplayFilterColorSettingsController *)self previewPageController];
  pageControl = [(DisplayFilterColorSettingsController *)self pageControl];
  [previewPageController setCurrentPage:{objc_msgSend(pageControl, "currentPage")}];
}

- (void)_setupPreviewRegion
{
  previewPageController = [(DisplayFilterColorSettingsController *)self previewPageController];

  if (!previewPageController)
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
    view = [(DisplayFilterSettingsPreviewPageViewController *)v7 view];
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

    [v13 addSubview:view];
    [v13 addSubview:v8];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    addConstraint(view, 3, v13, 3, 8.0);
    addConstraint(view, 5, v13, 5, 0.0);
    v62 = view;
    addConstraint(view, 6, v13, 6, 0.0);
    addConstraint(v8, 4, v13, 4, -8.0);
    addConstraint(v8, 5, v13, 5, 0.0);
    addConstraint(v8, 6, v13, 6, 0.0);
    v60 = v8;
    v15 = [NSLayoutConstraint constraintWithItem:v8 attribute:3 relatedBy:0 toItem:view attribute:4 multiplier:1.0 constant:8.0];
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
    table = [(DisplayFilterColorSettingsController *)self table];
    superview = [table superview];
    [superview addSubview:v17];

    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [v17 topAnchor];
    view2 = [(DisplayFilterColorSettingsController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v64[0] = v55;
    leadingAnchor = [v17 leadingAnchor];
    selfCopy = self;
    view3 = [(DisplayFilterColorSettingsController *)self view];
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v64[1] = v21;
    trailingAnchor = [v17 trailingAnchor];
    view4 = [(DisplayFilterColorSettingsController *)self view];
    safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v64[2] = v26;
    heightAnchor = [v17 heightAnchor];
    v28 = [heightAnchor constraintEqualToConstant:v16];
    v64[3] = v28;
    v49 = [NSArray arrayWithObjects:v64 count:4];

    [NSLayoutConstraint activateConstraints:v49];
    table2 = [(DisplayFilterColorSettingsController *)selfCopy table];
    [table2 contentInset];
    v31 = v30;
    v33 = v32;
    v35 = v34;

    table3 = [(DisplayFilterColorSettingsController *)selfCopy table];
    [table3 setContentInset:{32.0, v31, v33, v35}];

    [v17 frame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    table4 = [(DisplayFilterColorSettingsController *)selfCopy table];
    [table4 frame];
    v45 = v44;

    [v17 setFrame:{v38, v40, v45, v42}];
    table5 = [(DisplayFilterColorSettingsController *)selfCopy table];
    table6 = [(DisplayFilterColorSettingsController *)selfCopy table];
    [table6 contentInset];
    [table5 setContentOffset:0 animated:{0.0, -v48}];
  }
}

- (unint64_t)filterForCellIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"grayscale"])
  {
    v4 = 1;
  }

  else if ([identifierCopy isEqualToString:@"redAdjust"])
  {
    v4 = 2;
  }

  else if ([identifierCopy isEqualToString:@"greenAdjust"])
  {
    v4 = 4;
  }

  else if ([identifierCopy isEqualToString:@"blueAdjust"])
  {
    v4 = 8;
  }

  else if ([identifierCopy isEqualToString:@"singleColor"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)accessibilitySetPreference:(id)preference specifier:(id)specifier
{
  preferenceCopy = preference;
  properties = [specifier properties];
  v9 = [properties objectForKey:PSKeyNameKey];

  bOOLValue = [preferenceCopy BOOLValue];
  if ([v9 isEqualToString:@"ColorFilterEnabled"])
  {
    [(DisplayFilterColorSettingsController *)self setGlobalFilterEnabled:bOOLValue];
  }
}

- (id)accessibilityPreferenceForSpecifier:(id)specifier
{
  properties = [specifier properties];
  v5 = [properties objectForKey:PSKeyNameKey];

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

- (void)setGlobalFilterEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = DisplayFilterColorSettingsController;
  [(DisplayFilterBaseSettingsController *)&v4 setGlobalFilterEnabled:enabled];
  [(DisplayFilterColorSettingsController *)self _updateOptionVisibility];
}

- (void)_addFilterSpecifier:(id)specifier
{
  if (specifier)
  {
    specifierCopy = specifier;
    filterSelectionSpecifiers = [(DisplayFilterColorSettingsController *)self filterSelectionSpecifiers];

    if (!filterSelectionSpecifiers)
    {
      v6 = +[NSMutableArray array];
      [(DisplayFilterColorSettingsController *)self setFilterSelectionSpecifiers:v6];
    }

    filterSelectionSpecifiers2 = [(DisplayFilterColorSettingsController *)self filterSelectionSpecifiers];
    [filterSelectionSpecifiers2 addObject:specifierCopy];
  }
}

- (void)_addOptionSpecifier:(id)specifier forType:(unint64_t)type
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v13 = specifierCopy;
    filterTypeToOptionSpecifiers = [(DisplayFilterColorSettingsController *)self filterTypeToOptionSpecifiers];

    if (!filterTypeToOptionSpecifiers)
    {
      v8 = +[NSMutableDictionary dictionary];
      [(DisplayFilterColorSettingsController *)self setFilterTypeToOptionSpecifiers:v8];
    }

    filterTypeToOptionSpecifiers2 = [(DisplayFilterColorSettingsController *)self filterTypeToOptionSpecifiers];
    v10 = [NSNumber numberWithUnsignedLongLong:type];
    v11 = [filterTypeToOptionSpecifiers2 objectForKey:v10];
    if (!v11)
    {
      v12 = objc_opt_new();
      [filterTypeToOptionSpecifiers2 setObject:v12 forKey:v10];
      v11 = [filterTypeToOptionSpecifiers2 objectForKey:v10];
    }

    [v11 addObject:v13];

    specifierCopy = v13;
  }
}

- (id)_optionSpecifiersForType:(unint64_t)type
{
  filterTypeToOptionSpecifiers = [(DisplayFilterColorSettingsController *)self filterTypeToOptionSpecifiers];
  v5 = [NSNumber numberWithUnsignedLongLong:type];
  v6 = [filterTypeToOptionSpecifiers objectForKey:v5];

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
  globalFilterEnabled = [(DisplayFilterBaseSettingsController *)self globalFilterEnabled];
  if (globalFilterEnabled != [(DisplayFilterColorSettingsController *)self displayingFilterSelection])
  {
    [(DisplayFilterColorSettingsController *)self setDisplayingFilterSelection:globalFilterEnabled];
    filterSelectionSpecifiers = [(DisplayFilterColorSettingsController *)self filterSelectionSpecifiers];
    if (globalFilterEnabled)
    {
      specifierBeforeSelectionTable = [(DisplayFilterColorSettingsController *)self specifierBeforeSelectionTable];
      [(DisplayFilterColorSettingsController *)self insertContiguousSpecifiers:filterSelectionSpecifiers afterSpecifier:specifierBeforeSelectionTable animated:1];

      filterSelectionSpecifiers2 = [(DisplayFilterColorSettingsController *)self filterSelectionSpecifiers];
      [(DisplayFilterColorSettingsController *)self setCurrentFilterSelectionSpecifiers:filterSelectionSpecifiers2];
    }

    else
    {
      [(DisplayFilterColorSettingsController *)self removeContiguousSpecifiers:filterSelectionSpecifiers animated:1];

      [(DisplayFilterColorSettingsController *)self setCurrentFilterSelectionSpecifiers:0];
    }
  }
}

- (void)_updateFilterOptionSpecifiers
{
  selectedFilter = [(DisplayFilterBaseSettingsController *)self selectedFilter];
  if ([(DisplayFilterBaseSettingsController *)self globalFilterEnabled])
  {
    if (selectedFilter == [(DisplayFilterColorSettingsController *)self displayingOptionsForType])
    {
      return;
    }

    currentOptionSpecifiers = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
    v5 = [currentOptionSpecifiers count];

    if (v5)
    {
      currentOptionSpecifiers2 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
      [(DisplayFilterColorSettingsController *)self removeContiguousSpecifiers:currentOptionSpecifiers2 animated:1];

      [(DisplayFilterColorSettingsController *)self setCurrentOptionSpecifiers:0];
    }

    v7 = [(DisplayFilterColorSettingsController *)self _optionSpecifiersForType:selectedFilter];
    [(DisplayFilterColorSettingsController *)self setCurrentOptionSpecifiers:v7];

    currentOptionSpecifiers3 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
    v9 = [currentOptionSpecifiers3 count];

    if (v9)
    {
      currentOptionSpecifiers4 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
      specifierBeforeFilterOptions = [(DisplayFilterColorSettingsController *)self specifierBeforeFilterOptions];
      [(DisplayFilterColorSettingsController *)self insertContiguousSpecifiers:currentOptionSpecifiers4 afterSpecifier:specifierBeforeFilterOptions animated:1];
    }
  }

  else
  {
    currentOptionSpecifiers5 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
    v13 = [currentOptionSpecifiers5 count];

    if (!v13)
    {
      return;
    }

    currentOptionSpecifiers6 = [(DisplayFilterColorSettingsController *)self currentOptionSpecifiers];
    [(DisplayFilterColorSettingsController *)self removeContiguousSpecifiers:currentOptionSpecifiers6 animated:1];

    [(DisplayFilterColorSettingsController *)self setCurrentOptionSpecifiers:0];
    selectedFilter = 0;
  }

  [(DisplayFilterColorSettingsController *)self setDisplayingOptionsForType:selectedFilter];
}

- (id)grayscaleCorrectionIntensity:(id)intensity
{
  MADisplayFilterPrefGetGrayscaleCorrectionIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setGrayscaleCorrectionIntensity:(id)intensity specifier:(id)specifier
{
  intensityCopy = intensity;
  MADisplayFilterPrefSuspendNotifications();
  [intensityCopy doubleValue];

  MADisplayFilterPrefSetGrayscaleCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

- (id)blueCorrectionIntensity:(id)intensity
{
  MADisplayFilterPrefGetBlueColorCorrectionIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setBlueCorrectionIntensity:(id)intensity specifier:(id)specifier
{
  intensityCopy = intensity;
  MADisplayFilterPrefSuspendNotifications();
  [intensityCopy doubleValue];

  MADisplayFilterPrefSetBlueColorCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

- (id)redCorrectionIntensity:(id)intensity
{
  MADisplayFilterPrefGetRedColorCorrectionIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setRedCorrectionIntensity:(id)intensity specifier:(id)specifier
{
  intensityCopy = intensity;
  MADisplayFilterPrefSuspendNotifications();
  [intensityCopy doubleValue];

  MADisplayFilterPrefSetRedColorCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

- (id)greenCorrectionIntensity:(id)intensity
{
  MADisplayFilterPrefGetGreenColorCorrectionIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setGreenCorrectionIntensity:(id)intensity specifier:(id)specifier
{
  intensityCopy = intensity;
  MADisplayFilterPrefSuspendNotifications();
  [intensityCopy doubleValue];

  MADisplayFilterPrefSetGreenColorCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

- (id)singleColorFilterHue:(id)hue
{
  MADisplayFilterPrefGetSingleColorHue();

  return [NSNumber numberWithDouble:?];
}

- (void)setSingleColorFilterHue:(id)hue specifier:(id)specifier
{
  hueCopy = hue;
  MADisplayFilterPrefSuspendNotifications();
  [hueCopy doubleValue];

  MADisplayFilterPrefSetSingleColorHue();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

- (id)singleColorFilterIntensity:(id)intensity
{
  MADisplayFilterPrefGetSingleColorIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setSingleColorFilterIntensity:(id)intensity specifier:(id)specifier
{
  intensityCopy = intensity;
  MADisplayFilterPrefSuspendNotifications();
  [intensityCopy doubleValue];

  MADisplayFilterPrefSetSingleColorIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  MADisplayFilterPrefSuspendNotifications();
}

@end