@interface CPUITemplateInstrumentClusterSceneSpecification
- (id)initialActionHandlers;
- (id)initialSettingsDiffActions;
@end

@implementation CPUITemplateInstrumentClusterSceneSpecification

- (id)initialSettingsDiffActions
{
  v10[5] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v10[0] = v2;
  v3 = objc_opt_new();
  v10[1] = v3;
  v4 = objc_opt_new();
  v10[2] = v4;
  v5 = objc_opt_new();
  v10[3] = v5;
  v6 = objc_opt_new();
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)initialActionHandlers
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end