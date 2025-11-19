@interface CARSubtitleSettingsOptionsPairPanel
- (CARSubtitleSettingsOptionsPairPanel)initWithPanelController:(id)a3 title:(id)a4 primaryPicker:(id)a5 secondaryPicker:(id)a6 allowsOverride:(BOOL)a7 allowsOverrideSwitchHandler:(id)a8;
@end

@implementation CARSubtitleSettingsOptionsPairPanel

- (CARSubtitleSettingsOptionsPairPanel)initWithPanelController:(id)a3 title:(id)a4 primaryPicker:(id)a5 secondaryPicker:(id)a6 allowsOverride:(BOOL)a7 allowsOverrideSwitchHandler:(id)a8
{
  v9 = a7;
  objc_storeStrong(&self->_secondaryPicker, a6);
  v15 = a6;
  v16 = a8;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v15 specifierSection];
  v25 = v20;
  v21 = [NSArray arrayWithObjects:&v25 count:1];
  v24.receiver = self;
  v24.super_class = CARSubtitleSettingsOptionsPairPanel;
  v22 = [(CARSubtitleSettingOptionsPanel *)&v24 initWithPanelController:v19 title:v18 optionsPicker:v17 additionalSections:v21 allowsOverride:v9 allowsOverrideSwitchHandler:v16];

  return v22;
}

@end