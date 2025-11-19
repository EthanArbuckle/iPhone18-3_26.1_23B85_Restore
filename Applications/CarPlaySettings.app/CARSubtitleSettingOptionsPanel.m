@interface CARSubtitleSettingOptionsPanel
- (CARSubtitleSettingOptionsPanel)initWithPanelController:(id)a3 title:(id)a4 options:(id)a5 selectedValue:(id)a6 selectionHandler:(id)a7 allowsOverride:(BOOL)a8 allowsOverrideSwitchHandler:(id)a9;
- (CARSubtitleSettingOptionsPanel)initWithPanelController:(id)a3 title:(id)a4 optionsPicker:(id)a5 additionalSections:(id)a6 allowsOverride:(BOOL)a7 allowsOverrideSwitchHandler:(id)a8;
- (id)_overrideFromVideoSectionWithAllowsOverride:(BOOL)a3 switchHandler:(id)a4;
@end

@implementation CARSubtitleSettingOptionsPanel

- (CARSubtitleSettingOptionsPanel)initWithPanelController:(id)a3 title:(id)a4 options:(id)a5 selectedValue:(id)a6 selectionHandler:(id)a7 allowsOverride:(BOOL)a8 allowsOverrideSwitchHandler:(id)a9
{
  v9 = a8;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000217E4;
  v22[3] = &unk_1000DB518;
  v23 = a7;
  v15 = v23;
  v16 = a9;
  v17 = a4;
  v18 = a3;
  v19 = [CARSettingsOptionsPicker pickerWithOptions:a5 selectedValue:a6 selectionHandler:v22];
  v20 = [(CARSubtitleSettingOptionsPanel *)self initWithPanelController:v18 title:v17 optionsPicker:v19 additionalSections:&__NSArray0__struct allowsOverride:v9 allowsOverrideSwitchHandler:v16];

  return v20;
}

- (CARSubtitleSettingOptionsPanel)initWithPanelController:(id)a3 title:(id)a4 optionsPicker:(id)a5 additionalSections:(id)a6 allowsOverride:(BOOL)a7 allowsOverrideSwitchHandler:(id)a8
{
  v9 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(CARSubtitleSettingOptionsPanel *)self _overrideFromVideoSectionWithAllowsOverride:v9 switchHandler:a8];
  if (v14)
  {
    v19 = [v14 mutableCopy];
  }

  else
  {
    v19 = +[NSMutableArray array];
  }

  v20 = v19;
  [v19 addObject:v18];
  v23.receiver = self;
  v23.super_class = CARSubtitleSettingOptionsPanel;
  v21 = [(CARSettingsOptionsPickerPanel *)&v23 initWithPanelController:v17 title:v16 image:0 optionsPicker:v15 additionalSections:v20];

  return v21;
}

- (id)_overrideFromVideoSectionWithAllowsOverride:(BOOL)a3 switchHandler:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [CARSettingsSwitchCellSpecifier alloc];
  v7 = sub_10001C80C(@"SUBTITLES_VIDEO_OVERRIDE");
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100021B20;
  v17[3] = &unk_1000DB540;
  v18 = v5;
  v8 = v5;
  v9 = [(CARSettingsSwitchCellSpecifier *)v6 initWithTitle:v7 image:0 icon:0 actionBlock:v17];

  v10 = [NSNumber numberWithBool:v4];
  [(CARSettingsCellSpecifier *)v9 setCellValue:v10];

  v11 = [CARSettingsCellSpecifierSection alloc];
  v12 = sub_10001C80C(@"SUBTITLES_VIDEO_OVERRIDE_TITLE");
  v13 = [v12 localizedUppercaseString];
  v19 = v9;
  v14 = [NSArray arrayWithObjects:&v19 count:1];
  v15 = [(CARSettingsCellSpecifierSection *)v11 initWithTitle:v13 specifiers:v14];

  return v15;
}

@end