@interface WFDevice(SystemSettings)
- (id)volumeWithError:()SystemSettings;
- (void)getAppearanceWithCompletion:()SystemSettings;
- (void)getBrightnessWithCompletion:()SystemSettings;
@end

@implementation WFDevice(SystemSettings)

- (void)getBrightnessWithCompletion:()SystemSettings
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__WFDevice_SystemSettings__getBrightnessWithCompletion___block_invoke;
  v5[3] = &unk_278C1AC28;
  v6 = v3;
  v4 = v3;
  [WFBrightnessSettingsClient createClientWithCompletionHandler:v5];
}

- (void)getAppearanceWithCompletion:()SystemSettings
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__WFDevice_SystemSettings__getAppearanceWithCompletion___block_invoke;
  v5[3] = &unk_278C1ABD8;
  v6 = v3;
  v4 = v3;
  [WFAppearanceSettingsClient createClientWithCompletionHandler:v5];
}

- (id)volumeWithError:()SystemSettings
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v0 = getAVSystemControllerClass_softClass;
  v11 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getAVSystemControllerClass_block_invoke;
    v7[3] = &unk_278C222B8;
    v7[4] = &v8;
    __getAVSystemControllerClass_block_invoke(v7);
    v0 = v9[3];
  }

  v1 = v0;
  _Block_object_dispose(&v8, 8);
  v2 = [v0 sharedAVSystemController];
  LODWORD(v7[0]) = 0;
  v6 = 0;
  v4 = 0;
  if ([v2 getActiveCategoryVolume:v7 andName:&v6])
  {
    LODWORD(v3) = v7[0];
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  }

  return v4;
}

@end