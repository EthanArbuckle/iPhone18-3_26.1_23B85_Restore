@interface AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster
- (AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster)initWithOutputSettingsPreset:(id)a3;
- (void)dealloc;
@end

@implementation AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster

- (AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster)initWithOutputSettingsPreset:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster;
  v4 = [(AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster *)&v7 init];
  if (v4)
  {
    v4->_outputSettingsPresetIdentifier = [a3 copy];
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
  v3.super_class = AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster;
  [(AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster *)&v3 dealloc];
}

@end