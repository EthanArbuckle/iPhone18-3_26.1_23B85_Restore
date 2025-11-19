@interface CPUITemplateApplicationSceneSpecification
- (id)initialSettingsDiffActions;
@end

@implementation CPUITemplateApplicationSceneSpecification

- (id)initialSettingsDiffActions
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v9[0] = v2;
  v3 = objc_opt_new();
  v9[1] = v3;
  v4 = objc_opt_new();
  v9[2] = v4;
  v5 = objc_opt_new();
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end