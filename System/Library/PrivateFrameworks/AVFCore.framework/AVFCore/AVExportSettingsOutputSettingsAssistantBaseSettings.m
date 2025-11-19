@interface AVExportSettingsOutputSettingsAssistantBaseSettings
- (AVExportSettingsOutputSettingsAssistantBaseSettings)initWithOutputSettingsPreset:(id)a3;
- (void)dealloc;
@end

@implementation AVExportSettingsOutputSettingsAssistantBaseSettings

- (AVExportSettingsOutputSettingsAssistantBaseSettings)initWithOutputSettingsPreset:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVExportSettingsOutputSettingsAssistantBaseSettings;
  v4 = [(AVExportSettingsOutputSettingsAssistantBaseSettings *)&v7 init];
  if (v4)
  {
    v5 = [AVExportSettingsForOutputSettingsPreset(a3) copy];
    v4->_exportSettings = v5;
    if (!v5)
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVExportSettingsOutputSettingsAssistantBaseSettings;
  [(AVExportSettingsOutputSettingsAssistantBaseSettings *)&v3 dealloc];
}

@end