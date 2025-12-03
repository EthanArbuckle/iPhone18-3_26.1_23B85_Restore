@interface CARColorFiltersPanel
+ (id)colorBlindnessTypes;
+ (id)colorFilters;
+ (id)intensities;
- (BOOL)colorFiltersSwitchIsOn;
- (BOOL)getColorFiltersPreferenceIsOn;
- (CARColorFiltersPanel)initWithPanelController:(id)controller;
- (double)selectedFilterIntensity;
- (id)_getColorFilterTypePerVehiclePrefForIndex:(unint64_t)index;
- (id)cellSpecifier;
- (id)getColorFiltersIntensityPerVehiclePreferenceDict;
- (id)specifierSections;
- (int64_t)_getColorFiltersIntensityPerVehiclePrefForIndex:(unint64_t)index;
- (int64_t)getColorFiltersPerVehiclePreferenceType;
- (unint64_t)getColorFiltersIntensityPreferenceTypeForIndex:(unint64_t)index;
- (unint64_t)getColorFiltersPreferenceType;
- (unint64_t)selectedFilterIndexForType:(unint64_t)type;
- (void)_updateSpecifiers;
- (void)setColorFiltersIntensityPreference;
- (void)setColorFiltersPreference;
- (void)setColorFiltersPreference:(BOOL)preference;
- (void)setSelectedFilterForType:(unint64_t)type;
@end

@implementation CARColorFiltersPanel

- (CARColorFiltersPanel)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v54.receiver = self;
  v54.super_class = CARColorFiltersPanel;
  v5 = [(CARSettingsPanel *)&v54 initWithPanelController:controllerCopy];
  if (v5)
  {
    objc_initWeak(&location, v5);
    [(CARColorFiltersPanel *)v5 setDomainOverride];
    v6 = [CARSettingsSwitchCellSpecifier alloc];
    v7 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS");
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100029220;
    v51[3] = &unk_1000DAE68;
    objc_copyWeak(&v52, &location);
    v8 = [(CARSettingsSwitchCellSpecifier *)v6 initWithTitle:v7 image:0 icon:0 actionBlock:v51];
    colorFilterSwitchSpecifier = v5->_colorFilterSwitchSpecifier;
    v5->_colorFilterSwitchSpecifier = v8;

    [(CARSettingsCellSpecifier *)v5->_colorFilterSwitchSpecifier setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterToggle"];
    getColorFiltersPreferenceIsOn = [(CARColorFiltersPanel *)v5 getColorFiltersPreferenceIsOn];
    v11 = v5->_colorFilterSwitchSpecifier;
    v12 = [NSNumber numberWithBool:getColorFiltersPreferenceIsOn];
    [(CARSettingsCellSpecifier *)v11 setCellValue:v12];

    v13 = sub_10001C784();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      LODWORD(v56) = getColorFiltersPreferenceIsOn;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Settings] Saved color filter preference is on: %{public}d", buf, 8u);
    }

    v14 = [CARSettingsGroupCellSpecifier alloc];
    colorFilters = [objc_opt_class() colorFilters];
    v16 = [colorFilters valueForKey:@"name"];
    colorBlindnessTypes = [objc_opt_class() colorBlindnessTypes];
    v18 = [colorBlindnessTypes valueForKey:@"name"];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10002930C;
    v49[3] = &unk_1000DB000;
    objc_copyWeak(&v50, &location);
    v19 = [(CARSettingsGroupCellSpecifier *)v14 initWithTitles:v16 subtitles:v18 actionBlock:v49];
    colorFilterPickerGroupSpecifier = v5->_colorFilterPickerGroupSpecifier;
    v5->_colorFilterPickerGroupSpecifier = v19;

    groupSpecifiers = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier groupSpecifiers];
    v22 = [groupSpecifiers objectAtIndexedSubscript:0];
    [v22 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterGrayscale"];

    groupSpecifiers2 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier groupSpecifiers];
    v24 = [groupSpecifiers2 objectAtIndexedSubscript:1];
    [v24 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterRedGreen"];

    groupSpecifiers3 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier groupSpecifiers];
    v26 = [groupSpecifiers3 objectAtIndexedSubscript:2];
    [v26 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterGreenRed"];

    groupSpecifiers4 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier groupSpecifiers];
    v28 = [groupSpecifiers4 objectAtIndexedSubscript:3];
    [v28 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterBlueYellow"];

    v29 = [CARSettingsGroupCellSpecifier alloc];
    intensities = [objc_opt_class() intensities];
    v44 = _NSConcreteStackBlock;
    v45 = 3221225472;
    v46 = sub_100029420;
    v47 = &unk_1000DB000;
    objc_copyWeak(&v48, &location);
    v31 = [(CARSettingsGroupCellSpecifier *)v29 initWithTitles:intensities actionBlock:&v44];
    colorFilterIntensityPickerGroupSpecifier = v5->_colorFilterIntensityPickerGroupSpecifier;
    v5->_colorFilterIntensityPickerGroupSpecifier = v31;

    v33 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterIntensityPickerGroupSpecifier groupSpecifiers:v44];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterLowIntensity"];

    groupSpecifiers5 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterIntensityPickerGroupSpecifier groupSpecifiers];
    v36 = [groupSpecifiers5 objectAtIndexedSubscript:1];
    [v36 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterMediumIntensity"];

    groupSpecifiers6 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterIntensityPickerGroupSpecifier groupSpecifiers];
    v38 = [groupSpecifiers6 objectAtIndexedSubscript:2];
    [v38 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterHighIntensity"];

    getColorFiltersPreferenceType = [(CARColorFiltersPanel *)v5 getColorFiltersPreferenceType];
    [(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier setSelectedIndex:getColorFiltersPreferenceType];
    v40 = sub_10001C784();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v56 = getColorFiltersPreferenceType;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[Settings] Saved color filter selected index: %{public}lu", buf, 0xCu);
    }

    v41 = [(CARColorFiltersPanel *)v5 getColorFiltersIntensityPreferenceTypeForIndex:[(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier selectedIndex]];
    [(CARSettingsGroupCellSpecifier *)v5->_colorFilterIntensityPickerGroupSpecifier setSelectedIndex:v41];
    v42 = sub_10001C784();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v56 = v41;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[Settings] Saved color filter intensity selected index: %{public}lu", buf, 0xCu);
    }

    [(CARColorFiltersPanel *)v5 _updateSpecifiers];
    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.dark-mode"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100029690;
    v10[3] = &unk_1000DAE40;
    objc_copyWeak(&v11, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:v10];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  return cellSpecifier;
}

- (id)specifierSections
{
  colorFilterSwitchSpecifier = [(CARColorFiltersPanel *)self colorFilterSwitchSpecifier];
  v25 = colorFilterSwitchSpecifier;
  v4 = [NSArray arrayWithObjects:&v25 count:1];

  v5 = [CARSettingsCellSpecifierSection alloc];
  v6 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_FOOTER");
  v7 = [(CARSettingsCellSpecifierSection *)v5 initWithTitle:0 footer:v6 specifiers:v4];

  v8 = [CARSettingsCellSpecifierSection alloc];
  colorFilterPickerGroupSpecifier = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  groupSpecifiers = [colorFilterPickerGroupSpecifier groupSpecifiers];
  v11 = [(CARSettingsCellSpecifierSection *)v8 initWithTitle:0 specifiers:groupSpecifiers];

  v12 = [CARSettingsCellSpecifierSection alloc];
  v13 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_INTENSITY");
  colorFilterIntensityPickerGroupSpecifier = [(CARColorFiltersPanel *)self colorFilterIntensityPickerGroupSpecifier];
  groupSpecifiers2 = [colorFilterIntensityPickerGroupSpecifier groupSpecifiers];
  v16 = [(CARSettingsCellSpecifierSection *)v12 initWithTitle:v13 specifiers:groupSpecifiers2];

  if ([(CARColorFiltersPanel *)self colorFiltersSwitchIsOn])
  {
    v22 = v7;
    v23 = v11;
    v24 = v16;
    v17 = &v22;
    v18 = 3;
  }

  else
  {
    v21 = v7;
    v17 = &v21;
    v18 = 1;
  }

  v19 = [NSArray arrayWithObjects:v17 count:v18, v21, v22, v23, v24];

  return v19;
}

- (BOOL)colorFiltersSwitchIsOn
{
  colorFilterSwitchSpecifier = [(CARColorFiltersPanel *)self colorFilterSwitchSpecifier];
  cellValue = [colorFilterSwitchSpecifier cellValue];
  bOOLValue = [cellValue BOOLValue];

  return bOOLValue;
}

- (double)selectedFilterIntensity
{
  colorFilterIntensityPickerGroupSpecifier = [(CARColorFiltersPanel *)self colorFilterIntensityPickerGroupSpecifier];
  selectedIndex = [colorFilterIntensityPickerGroupSpecifier selectedIndex];

  result = 0.660000026;
  if (selectedIndex != 1)
  {
    result = 1.0;
  }

  if (!selectedIndex)
  {
    return 0.330000013;
  }

  return result;
}

- (void)setSelectedFilterForType:(unint64_t)type
{
  colorFilterPickerGroupSpecifier = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  if (type - 2 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1000A1C58[type - 2];
  }

  v6 = colorFilterPickerGroupSpecifier;
  [colorFilterPickerGroupSpecifier setSelectedIndex:v5];
}

- (unint64_t)selectedFilterIndexForType:(unint64_t)type
{
  if (type - 2 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1000A1C58[type - 2];
  }
}

- (void)setColorFiltersPreference:(BOOL)preference
{
  preferenceCopy = preference;
  getColorFiltersPerVehiclePreferenceType = 1;
  MADisplayFilterPrefSetCategoryEnabled();
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  if (preferenceCopy)
  {
    getColorFiltersPerVehiclePreferenceType = [(CARColorFiltersPanel *)self getColorFiltersPerVehiclePreferenceType];
  }

  [vehicle setColorFilterPreference:getColorFiltersPerVehiclePreferenceType];
  getColorFiltersIntensityPerVehiclePreferenceDict = [(CARColorFiltersPanel *)self getColorFiltersIntensityPerVehiclePreferenceDict];
  [vehicle setColorFilterIntensityPreference:getColorFiltersIntensityPerVehiclePreferenceDict];

  panelController2 = [(CARSettingsPanel *)self panelController];
  [panelController2 saveVehicle:vehicle];

  v9 = +[CARSettingsAnalytics sharedInstance];
  panelController3 = [(CARSettingsPanel *)self panelController];
  carSession = [panelController3 carSession];
  [v9 axColorFiltersPrefChangedForVehicle:vehicle session:carSession];
}

- (void)setColorFiltersPreference
{
  colorFilterPickerGroupSpecifier = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  [colorFilterPickerGroupSpecifier selectedIndex];
  MADisplayFilterPrefSetType();

  colorFilterPickerGroupSpecifier2 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  v5 = -[CARColorFiltersPanel getColorFiltersIntensityPreferenceTypeForIndex:](self, "getColorFiltersIntensityPreferenceTypeForIndex:", [colorFilterPickerGroupSpecifier2 selectedIndex]);

  colorFilterIntensityPickerGroupSpecifier = [(CARColorFiltersPanel *)self colorFilterIntensityPickerGroupSpecifier];
  selectedIndex = [colorFilterIntensityPickerGroupSpecifier selectedIndex];

  if (selectedIndex != v5)
  {
    colorFilterIntensityPickerGroupSpecifier2 = [(CARColorFiltersPanel *)self colorFilterIntensityPickerGroupSpecifier];
    [colorFilterIntensityPickerGroupSpecifier2 setSelectedIndex:v5];
  }

  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  getColorFiltersPerVehiclePreferenceType = [(CARColorFiltersPanel *)self getColorFiltersPerVehiclePreferenceType];
  if ([vehicle colorFilterPreference] != getColorFiltersPerVehiclePreferenceType)
  {
    [vehicle setColorFilterPreference:getColorFiltersPerVehiclePreferenceType];
    panelController2 = [(CARSettingsPanel *)self panelController];
    [panelController2 saveVehicle:vehicle];

    v12 = +[CARSettingsAnalytics sharedInstance];
    panelController3 = [(CARSettingsPanel *)self panelController];
    carSession = [panelController3 carSession];
    [v12 axColorFiltersPrefChangedForVehicle:vehicle session:carSession];
  }
}

- (void)setColorFiltersIntensityPreference
{
  colorFilterPickerGroupSpecifier = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  selectedIndex = [colorFilterPickerGroupSpecifier selectedIndex];

  [(CARColorFiltersPanel *)self selectedFilterIntensity];
  if (selectedIndex <= 1)
  {
    if (selectedIndex == 1)
    {
      MADisplayFilterPrefSetRedColorCorrectionIntensity();
      v5 = @"CARColorFilterIntensityRedGreenKey";
      goto LABEL_9;
    }

LABEL_7:
    MADisplayFilterPrefSetGrayscaleCorrectionIntensity();
    v5 = @"CARColorFilterIntensityGrayscaleKey";
    goto LABEL_9;
  }

  if (selectedIndex != 2)
  {
    if (selectedIndex == 3)
    {
      MADisplayFilterPrefSetBlueColorCorrectionIntensity();
      v5 = @"CARColorFilterIntensityBlueYellowKey";
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  MADisplayFilterPrefSetGreenColorCorrectionIntensity();
  v5 = @"CARColorFilterIntensityGreenRedKey";
LABEL_9:
  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];

  colorFilterIntensityPreference = [vehicle colorFilterIntensityPreference];
  v8 = [colorFilterIntensityPreference mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = +[NSMutableDictionary dictionary];
  }

  v11 = v10;

  v12 = [v11 objectForKeyedSubscript:v5];
  v13 = [NSNumber numberWithInteger:[(CARColorFiltersPanel *)self _getColorFiltersIntensityPerVehiclePrefForIndex:selectedIndex]];
  if (!v12 || ([v12 isEqualToNumber:v13] & 1) == 0)
  {
    [v11 setObject:v13 forKeyedSubscript:v5];
    v14 = [v11 copy];
    [vehicle setColorFilterIntensityPreference:v14];

    panelController2 = [(CARSettingsPanel *)self panelController];
    [panelController2 saveVehicle:vehicle];

    v16 = +[CARSettingsAnalytics sharedInstance];
    panelController3 = [(CARSettingsPanel *)self panelController];
    carSession = [panelController3 carSession];
    [v16 axColorFiltersPrefChangedForVehicle:vehicle session:carSession];
  }
}

- (BOOL)getColorFiltersPreferenceIsOn
{
  CategoryEnabled = MADisplayFilterPrefGetCategoryEnabled();
  Type = MADisplayFilterPrefGetType();
  return CategoryEnabled && [(CARColorFiltersPanel *)self isSupportedCarPlayFilterType:Type];
}

- (unint64_t)getColorFiltersPreferenceType
{
  Type = MADisplayFilterPrefGetType();
  if (![(CARColorFiltersPanel *)self isSupportedCarPlayFilterType:Type])
  {
    return 0;
  }

  return [(CARColorFiltersPanel *)self selectedFilterIndexForType:Type];
}

- (unint64_t)getColorFiltersIntensityPreferenceTypeForIndex:(unint64_t)index
{
  if (index <= 1)
  {
    if (index == 1)
    {
      MADisplayFilterPrefGetRedColorCorrectionIntensity();
      goto LABEL_9;
    }

LABEL_7:
    MADisplayFilterPrefGetGrayscaleCorrectionIntensity();
    goto LABEL_9;
  }

  if (index != 2)
  {
    if (index == 3)
    {
      MADisplayFilterPrefGetBlueColorCorrectionIntensity();
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  MADisplayFilterPrefGetGreenColorCorrectionIntensity();
LABEL_9:
  v4 = 2;
  if (v3 <= 0.660000026)
  {
    v4 = 1;
  }

  if (v3 <= 0.330000013)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

+ (id)colorFilters
{
  if (qword_100101EF0 != -1)
  {
    sub_100091998();
  }

  v3 = qword_100101EF8;

  return v3;
}

+ (id)colorBlindnessTypes
{
  if (qword_100101F00 != -1)
  {
    sub_1000919AC();
  }

  v3 = qword_100101F08;

  return v3;
}

+ (id)intensities
{
  v2 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_INTENSITY_LOW");
  v7[0] = v2;
  v3 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_INTENSITY_MEDIUM");
  v7[1] = v3;
  v4 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_INTENSITY_HIGH");
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

- (void)_updateSpecifiers
{
  [(CARColorFiltersPanel *)self setSelectedFilterForType:[(CARColorFiltersPanel *)self getColorFiltersPreferenceType]];
  colorFilterPickerGroupSpecifier = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  selectedTitle = [colorFilterPickerGroupSpecifier selectedTitle];
  cellSpecifier = [(CARColorFiltersPanel *)self cellSpecifier];
  [cellSpecifier setDetail:selectedTitle];

  v6 = [NSNumber numberWithBool:[(CARColorFiltersPanel *)self getColorFiltersPreferenceIsOn]];
  colorFilterSwitchSpecifier = [(CARColorFiltersPanel *)self colorFilterSwitchSpecifier];
  [colorFilterSwitchSpecifier setCellValue:v6];

  getColorFiltersPreferenceType = [(CARColorFiltersPanel *)self getColorFiltersPreferenceType];
  colorFilterPickerGroupSpecifier2 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  [colorFilterPickerGroupSpecifier2 setSelectedIndex:getColorFiltersPreferenceType];

  [(CARSettingsTablePanel *)self reloadSpecifiers];
}

- (int64_t)getColorFiltersPerVehiclePreferenceType
{
  getColorFiltersPreferenceType = [(CARColorFiltersPanel *)self getColorFiltersPreferenceType];
  if (getColorFiltersPreferenceType >= 4)
  {
    return 0;
  }

  else
  {
    return getColorFiltersPreferenceType + 2;
  }
}

- (id)getColorFiltersIntensityPerVehiclePreferenceDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  colorFilterPickerGroupSpecifier = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  groupSpecifiers = [colorFilterPickerGroupSpecifier groupSpecifiers];
  v6 = [groupSpecifiers count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(CARColorFiltersPanel *)self _getColorFilterTypePerVehiclePrefForIndex:v7];
      v9 = [NSNumber numberWithInteger:[(CARColorFiltersPanel *)self _getColorFiltersIntensityPerVehiclePrefForIndex:v7]];
      [v3 setObject:v9 forKeyedSubscript:v8];

      ++v7;
      colorFilterPickerGroupSpecifier2 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
      groupSpecifiers2 = [colorFilterPickerGroupSpecifier2 groupSpecifiers];
      v12 = [groupSpecifiers2 count];
    }

    while (v7 < v12);
  }

  v13 = [v3 copy];

  return v13;
}

- (id)_getColorFilterTypePerVehiclePrefForIndex:(unint64_t)index
{
  if (index - 1 > 2)
  {
    return @"CARColorFilterIntensityGrayscaleKey";
  }

  else
  {
    return off_1000DB780[index - 1];
  }
}

- (int64_t)_getColorFiltersIntensityPerVehiclePrefForIndex:(unint64_t)index
{
  v3 = [(CARColorFiltersPanel *)self getColorFiltersIntensityPreferenceTypeForIndex:index];
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 3;
  }
}

@end