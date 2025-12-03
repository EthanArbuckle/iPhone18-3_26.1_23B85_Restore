@interface CARSubtitleSettingsOptionsPairPanel
- (CARSubtitleSettingsOptionsPairPanel)initWithPanelController:(id)controller title:(id)title primaryPicker:(id)picker secondaryPicker:(id)secondaryPicker allowsOverride:(BOOL)override allowsOverrideSwitchHandler:(id)handler;
@end

@implementation CARSubtitleSettingsOptionsPairPanel

- (CARSubtitleSettingsOptionsPairPanel)initWithPanelController:(id)controller title:(id)title primaryPicker:(id)picker secondaryPicker:(id)secondaryPicker allowsOverride:(BOOL)override allowsOverrideSwitchHandler:(id)handler
{
  overrideCopy = override;
  objc_storeStrong(&self->_secondaryPicker, secondaryPicker);
  secondaryPickerCopy = secondaryPicker;
  handlerCopy = handler;
  pickerCopy = picker;
  titleCopy = title;
  controllerCopy = controller;
  specifierSection = [secondaryPickerCopy specifierSection];
  v25 = specifierSection;
  v21 = [NSArray arrayWithObjects:&v25 count:1];
  v24.receiver = self;
  v24.super_class = CARSubtitleSettingsOptionsPairPanel;
  v22 = [(CARSubtitleSettingOptionsPanel *)&v24 initWithPanelController:controllerCopy title:titleCopy optionsPicker:pickerCopy additionalSections:v21 allowsOverride:overrideCopy allowsOverrideSwitchHandler:handlerCopy];

  return v22;
}

@end