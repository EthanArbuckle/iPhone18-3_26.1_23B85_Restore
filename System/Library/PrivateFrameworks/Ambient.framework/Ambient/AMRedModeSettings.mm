@interface AMRedModeSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation AMRedModeSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = AMRedModeSettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_onLuxThreshold = 5.0;
  self->_offLuxThreshold = 10.0;
}

+ (id)settingsControllerModule
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D43298] rowWithTitle:@"Activation Lux Threshold" valueKeyPath:@"onLuxThreshold"];
  v3 = [v2 minValue:0.1 maxValue:100.0];

  v4 = [MEMORY[0x277D43298] rowWithTitle:@"Deactivation Lux Threshold" valueKeyPath:@"offLuxThreshold"];
  v5 = [v4 minValue:0.1 maxValue:100.0];

  v6 = MEMORY[0x277D43218];
  v22[0] = v3;
  v22[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v8 = [v6 sectionWithRows:v7 title:@"Trigger Conditions - Ambient Illumination"];

  v9 = MEMORY[0x277D431A8];
  v10 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v11 = [v9 rowWithTitle:@"Restore Defaults" action:v10];

  v12 = MEMORY[0x277D43218];
  v21 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v14 = [v12 sectionWithRows:v13];

  v15 = MEMORY[0x277D43218];
  v20[0] = v8;
  v20[1] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v17 = [v15 moduleWithTitle:@"Red Mode" contents:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end