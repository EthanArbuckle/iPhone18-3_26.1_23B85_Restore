@interface AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster
- (AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster)initWithOutputSettingsPreset:(id)preset;
- (void)dealloc;
@end

@implementation AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster

- (AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster)initWithOutputSettingsPreset:(id)preset
{
  v7.receiver = self;
  v7.super_class = AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster;
  v4 = [(AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster *)&v7 init];
  if (v4)
  {
    v4->_outputSettingsPresetIdentifier = [preset copy];
    v5 = [AVExportSettingsForOutputSettingsPreset(preset) copy];
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
  v3.super_class = AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster;
  [(AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster *)&v3 dealloc];
}

@end