@interface CARColorFiltersPanel
+ (id)colorBlindnessTypes;
+ (id)colorFilters;
+ (id)intensities;
- (BOOL)colorFiltersSwitchIsOn;
- (BOOL)getColorFiltersPreferenceIsOn;
- (CARColorFiltersPanel)initWithPanelController:(id)a3;
- (double)selectedFilterIntensity;
- (id)_getColorFilterTypePerVehiclePrefForIndex:(unint64_t)a3;
- (id)cellSpecifier;
- (id)getColorFiltersIntensityPerVehiclePreferenceDict;
- (id)specifierSections;
- (int64_t)_getColorFiltersIntensityPerVehiclePrefForIndex:(unint64_t)a3;
- (int64_t)getColorFiltersPerVehiclePreferenceType;
- (unint64_t)getColorFiltersIntensityPreferenceTypeForIndex:(unint64_t)a3;
- (unint64_t)getColorFiltersPreferenceType;
- (unint64_t)selectedFilterIndexForType:(unint64_t)a3;
- (void)_updateSpecifiers;
- (void)setColorFiltersIntensityPreference;
- (void)setColorFiltersPreference;
- (void)setColorFiltersPreference:(BOOL)a3;
- (void)setSelectedFilterForType:(unint64_t)a3;
@end

@implementation CARColorFiltersPanel

- (CARColorFiltersPanel)initWithPanelController:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = CARColorFiltersPanel;
  v5 = [(CARSettingsPanel *)&v54 initWithPanelController:v4];
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
    v10 = [(CARColorFiltersPanel *)v5 getColorFiltersPreferenceIsOn];
    v11 = v5->_colorFilterSwitchSpecifier;
    v12 = [NSNumber numberWithBool:v10];
    [(CARSettingsCellSpecifier *)v11 setCellValue:v12];

    v13 = sub_10001C784();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      LODWORD(v56) = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Settings] Saved color filter preference is on: %{public}d", buf, 8u);
    }

    v14 = [CARSettingsGroupCellSpecifier alloc];
    v15 = [objc_opt_class() colorFilters];
    v16 = [v15 valueForKey:@"name"];
    v17 = [objc_opt_class() colorBlindnessTypes];
    v18 = [v17 valueForKey:@"name"];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10002930C;
    v49[3] = &unk_1000DB000;
    objc_copyWeak(&v50, &location);
    v19 = [(CARSettingsGroupCellSpecifier *)v14 initWithTitles:v16 subtitles:v18 actionBlock:v49];
    colorFilterPickerGroupSpecifier = v5->_colorFilterPickerGroupSpecifier;
    v5->_colorFilterPickerGroupSpecifier = v19;

    v21 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier groupSpecifiers];
    v22 = [v21 objectAtIndexedSubscript:0];
    [v22 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterGrayscale"];

    v23 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier groupSpecifiers];
    v24 = [v23 objectAtIndexedSubscript:1];
    [v24 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterRedGreen"];

    v25 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier groupSpecifiers];
    v26 = [v25 objectAtIndexedSubscript:2];
    [v26 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterGreenRed"];

    v27 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier groupSpecifiers];
    v28 = [v27 objectAtIndexedSubscript:3];
    [v28 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterBlueYellow"];

    v29 = [CARSettingsGroupCellSpecifier alloc];
    v30 = [objc_opt_class() intensities];
    v44 = _NSConcreteStackBlock;
    v45 = 3221225472;
    v46 = sub_100029420;
    v47 = &unk_1000DB000;
    objc_copyWeak(&v48, &location);
    v31 = [(CARSettingsGroupCellSpecifier *)v29 initWithTitles:v30 actionBlock:&v44];
    colorFilterIntensityPickerGroupSpecifier = v5->_colorFilterIntensityPickerGroupSpecifier;
    v5->_colorFilterIntensityPickerGroupSpecifier = v31;

    v33 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterIntensityPickerGroupSpecifier groupSpecifiers:v44];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterLowIntensity"];

    v35 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterIntensityPickerGroupSpecifier groupSpecifiers];
    v36 = [v35 objectAtIndexedSubscript:1];
    [v36 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterMediumIntensity"];

    v37 = [(CARSettingsGroupCellSpecifier *)v5->_colorFilterIntensityPickerGroupSpecifier groupSpecifiers];
    v38 = [v37 objectAtIndexedSubscript:2];
    [v38 setAccessibilityIdentifier:@"CPSettingsAccessibilityColorFilterHighIntensity"];

    v39 = [(CARColorFiltersPanel *)v5 getColorFiltersPreferenceType];
    [(CARSettingsGroupCellSpecifier *)v5->_colorFilterPickerGroupSpecifier setSelectedIndex:v39];
    v40 = sub_10001C784();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v56 = v39;
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
  v3 = [(CARColorFiltersPanel *)self colorFilterSwitchSpecifier];
  v25 = v3;
  v4 = [NSArray arrayWithObjects:&v25 count:1];

  v5 = [CARSettingsCellSpecifierSection alloc];
  v6 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_FOOTER");
  v7 = [(CARSettingsCellSpecifierSection *)v5 initWithTitle:0 footer:v6 specifiers:v4];

  v8 = [CARSettingsCellSpecifierSection alloc];
  v9 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  v10 = [v9 groupSpecifiers];
  v11 = [(CARSettingsCellSpecifierSection *)v8 initWithTitle:0 specifiers:v10];

  v12 = [CARSettingsCellSpecifierSection alloc];
  v13 = sub_10001C80C(@"ACCESSIBILITY_COLOR_FILTERS_INTENSITY");
  v14 = [(CARColorFiltersPanel *)self colorFilterIntensityPickerGroupSpecifier];
  v15 = [v14 groupSpecifiers];
  v16 = [(CARSettingsCellSpecifierSection *)v12 initWithTitle:v13 specifiers:v15];

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
  v2 = [(CARColorFiltersPanel *)self colorFilterSwitchSpecifier];
  v3 = [v2 cellValue];
  v4 = [v3 BOOLValue];

  return v4;
}

- (double)selectedFilterIntensity
{
  v2 = [(CARColorFiltersPanel *)self colorFilterIntensityPickerGroupSpecifier];
  v3 = [v2 selectedIndex];

  result = 0.660000026;
  if (v3 != 1)
  {
    result = 1.0;
  }

  if (!v3)
  {
    return 0.330000013;
  }

  return result;
}

- (void)setSelectedFilterForType:(unint64_t)a3
{
  v4 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  if (a3 - 2 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1000A1C58[a3 - 2];
  }

  v6 = v4;
  [v4 setSelectedIndex:v5];
}

- (unint64_t)selectedFilterIndexForType:(unint64_t)a3
{
  if (a3 - 2 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1000A1C58[a3 - 2];
  }
}

- (void)setColorFiltersPreference:(BOOL)a3
{
  v3 = a3;
  v5 = 1;
  MADisplayFilterPrefSetCategoryEnabled();
  v6 = [(CARSettingsPanel *)self panelController];
  v12 = [v6 vehicle];

  if (v3)
  {
    v5 = [(CARColorFiltersPanel *)self getColorFiltersPerVehiclePreferenceType];
  }

  [v12 setColorFilterPreference:v5];
  v7 = [(CARColorFiltersPanel *)self getColorFiltersIntensityPerVehiclePreferenceDict];
  [v12 setColorFilterIntensityPreference:v7];

  v8 = [(CARSettingsPanel *)self panelController];
  [v8 saveVehicle:v12];

  v9 = +[CARSettingsAnalytics sharedInstance];
  v10 = [(CARSettingsPanel *)self panelController];
  v11 = [v10 carSession];
  [v9 axColorFiltersPrefChangedForVehicle:v12 session:v11];
}

- (void)setColorFiltersPreference
{
  v3 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  [v3 selectedIndex];
  MADisplayFilterPrefSetType();

  v4 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  v5 = -[CARColorFiltersPanel getColorFiltersIntensityPreferenceTypeForIndex:](self, "getColorFiltersIntensityPreferenceTypeForIndex:", [v4 selectedIndex]);

  v6 = [(CARColorFiltersPanel *)self colorFilterIntensityPickerGroupSpecifier];
  v7 = [v6 selectedIndex];

  if (v7 != v5)
  {
    v8 = [(CARColorFiltersPanel *)self colorFilterIntensityPickerGroupSpecifier];
    [v8 setSelectedIndex:v5];
  }

  v9 = [(CARSettingsPanel *)self panelController];
  v15 = [v9 vehicle];

  v10 = [(CARColorFiltersPanel *)self getColorFiltersPerVehiclePreferenceType];
  if ([v15 colorFilterPreference] != v10)
  {
    [v15 setColorFilterPreference:v10];
    v11 = [(CARSettingsPanel *)self panelController];
    [v11 saveVehicle:v15];

    v12 = +[CARSettingsAnalytics sharedInstance];
    v13 = [(CARSettingsPanel *)self panelController];
    v14 = [v13 carSession];
    [v12 axColorFiltersPrefChangedForVehicle:v15 session:v14];
  }
}

- (void)setColorFiltersIntensityPreference
{
  v3 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  v4 = [v3 selectedIndex];

  [(CARColorFiltersPanel *)self selectedFilterIntensity];
  if (v4 <= 1)
  {
    if (v4 == 1)
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

  if (v4 != 2)
  {
    if (v4 == 3)
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
  v6 = [(CARSettingsPanel *)self panelController];
  v19 = [v6 vehicle];

  v7 = [v19 colorFilterIntensityPreference];
  v8 = [v7 mutableCopy];
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
  v13 = [NSNumber numberWithInteger:[(CARColorFiltersPanel *)self _getColorFiltersIntensityPerVehiclePrefForIndex:v4]];
  if (!v12 || ([v12 isEqualToNumber:v13] & 1) == 0)
  {
    [v11 setObject:v13 forKeyedSubscript:v5];
    v14 = [v11 copy];
    [v19 setColorFilterIntensityPreference:v14];

    v15 = [(CARSettingsPanel *)self panelController];
    [v15 saveVehicle:v19];

    v16 = +[CARSettingsAnalytics sharedInstance];
    v17 = [(CARSettingsPanel *)self panelController];
    v18 = [v17 carSession];
    [v16 axColorFiltersPrefChangedForVehicle:v19 session:v18];
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

- (unint64_t)getColorFiltersIntensityPreferenceTypeForIndex:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      MADisplayFilterPrefGetRedColorCorrectionIntensity();
      goto LABEL_9;
    }

LABEL_7:
    MADisplayFilterPrefGetGrayscaleCorrectionIntensity();
    goto LABEL_9;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
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
  v3 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  v4 = [v3 selectedTitle];
  v5 = [(CARColorFiltersPanel *)self cellSpecifier];
  [v5 setDetail:v4];

  v6 = [NSNumber numberWithBool:[(CARColorFiltersPanel *)self getColorFiltersPreferenceIsOn]];
  v7 = [(CARColorFiltersPanel *)self colorFilterSwitchSpecifier];
  [v7 setCellValue:v6];

  v8 = [(CARColorFiltersPanel *)self getColorFiltersPreferenceType];
  v9 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  [v9 setSelectedIndex:v8];

  [(CARSettingsTablePanel *)self reloadSpecifiers];
}

- (int64_t)getColorFiltersPerVehiclePreferenceType
{
  v2 = [(CARColorFiltersPanel *)self getColorFiltersPreferenceType];
  if (v2 >= 4)
  {
    return 0;
  }

  else
  {
    return v2 + 2;
  }
}

- (id)getColorFiltersIntensityPerVehiclePreferenceDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
  v5 = [v4 groupSpecifiers];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(CARColorFiltersPanel *)self _getColorFilterTypePerVehiclePrefForIndex:v7];
      v9 = [NSNumber numberWithInteger:[(CARColorFiltersPanel *)self _getColorFiltersIntensityPerVehiclePrefForIndex:v7]];
      [v3 setObject:v9 forKeyedSubscript:v8];

      ++v7;
      v10 = [(CARColorFiltersPanel *)self colorFilterPickerGroupSpecifier];
      v11 = [v10 groupSpecifiers];
      v12 = [v11 count];
    }

    while (v7 < v12);
  }

  v13 = [v3 copy];

  return v13;
}

- (id)_getColorFilterTypePerVehiclePrefForIndex:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"CARColorFilterIntensityGrayscaleKey";
  }

  else
  {
    return off_1000DB780[a3 - 1];
  }
}

- (int64_t)_getColorFiltersIntensityPerVehiclePrefForIndex:(unint64_t)a3
{
  v3 = [(CARColorFiltersPanel *)self getColorFiltersIntensityPreferenceTypeForIndex:a3];
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