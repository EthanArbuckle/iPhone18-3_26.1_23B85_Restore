@interface CARSubtitleSettingOptionsPanel
- (CARSubtitleSettingOptionsPanel)initWithPanelController:(id)controller title:(id)title options:(id)options selectedValue:(id)value selectionHandler:(id)handler allowsOverride:(BOOL)override allowsOverrideSwitchHandler:(id)switchHandler;
- (CARSubtitleSettingOptionsPanel)initWithPanelController:(id)controller title:(id)title optionsPicker:(id)picker additionalSections:(id)sections allowsOverride:(BOOL)override allowsOverrideSwitchHandler:(id)handler;
- (id)_overrideFromVideoSectionWithAllowsOverride:(BOOL)override switchHandler:(id)handler;
@end

@implementation CARSubtitleSettingOptionsPanel

- (CARSubtitleSettingOptionsPanel)initWithPanelController:(id)controller title:(id)title options:(id)options selectedValue:(id)value selectionHandler:(id)handler allowsOverride:(BOOL)override allowsOverrideSwitchHandler:(id)switchHandler
{
  overrideCopy = override;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000217E4;
  v22[3] = &unk_1000DB518;
  handlerCopy = handler;
  v15 = handlerCopy;
  switchHandlerCopy = switchHandler;
  titleCopy = title;
  controllerCopy = controller;
  v19 = [CARSettingsOptionsPicker pickerWithOptions:options selectedValue:value selectionHandler:v22];
  v20 = [(CARSubtitleSettingOptionsPanel *)self initWithPanelController:controllerCopy title:titleCopy optionsPicker:v19 additionalSections:&__NSArray0__struct allowsOverride:overrideCopy allowsOverrideSwitchHandler:switchHandlerCopy];

  return v20;
}

- (CARSubtitleSettingOptionsPanel)initWithPanelController:(id)controller title:(id)title optionsPicker:(id)picker additionalSections:(id)sections allowsOverride:(BOOL)override allowsOverrideSwitchHandler:(id)handler
{
  overrideCopy = override;
  sectionsCopy = sections;
  pickerCopy = picker;
  titleCopy = title;
  controllerCopy = controller;
  v18 = [(CARSubtitleSettingOptionsPanel *)self _overrideFromVideoSectionWithAllowsOverride:overrideCopy switchHandler:handler];
  if (sectionsCopy)
  {
    v19 = [sectionsCopy mutableCopy];
  }

  else
  {
    v19 = +[NSMutableArray array];
  }

  v20 = v19;
  [v19 addObject:v18];
  v23.receiver = self;
  v23.super_class = CARSubtitleSettingOptionsPanel;
  v21 = [(CARSettingsOptionsPickerPanel *)&v23 initWithPanelController:controllerCopy title:titleCopy image:0 optionsPicker:pickerCopy additionalSections:v20];

  return v21;
}

- (id)_overrideFromVideoSectionWithAllowsOverride:(BOOL)override switchHandler:(id)handler
{
  overrideCopy = override;
  handlerCopy = handler;
  v6 = [CARSettingsSwitchCellSpecifier alloc];
  v7 = sub_10001C80C(@"SUBTITLES_VIDEO_OVERRIDE");
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100021B20;
  v17[3] = &unk_1000DB540;
  v18 = handlerCopy;
  v8 = handlerCopy;
  v9 = [(CARSettingsSwitchCellSpecifier *)v6 initWithTitle:v7 image:0 icon:0 actionBlock:v17];

  v10 = [NSNumber numberWithBool:overrideCopy];
  [(CARSettingsCellSpecifier *)v9 setCellValue:v10];

  v11 = [CARSettingsCellSpecifierSection alloc];
  v12 = sub_10001C80C(@"SUBTITLES_VIDEO_OVERRIDE_TITLE");
  localizedUppercaseString = [v12 localizedUppercaseString];
  v19 = v9;
  v14 = [NSArray arrayWithObjects:&v19 count:1];
  v15 = [(CARSettingsCellSpecifierSection *)v11 initWithTitle:localizedUppercaseString specifiers:v14];

  return v15;
}

@end