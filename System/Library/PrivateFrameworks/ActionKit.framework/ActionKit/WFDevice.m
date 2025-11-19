@interface WFDevice
@end

@implementation WFDevice

void __56__WFDevice_SystemSettings__getBrightnessWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__WFDevice_SystemSettings__getBrightnessWithCompletion___block_invoke_2;
    v5[3] = &unk_278C1AC00;
    v6 = *(a1 + 32);
    [a2 getValueWithCompletionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void __56__WFDevice_SystemSettings__getBrightnessWithCompletion___block_invoke_2(uint64_t a1, void *a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  *&v7 = a3;
  v8 = [v5 numberWithFloat:v7];
  (*(v4 + 16))(v4, v8, v6);
}

void __56__WFDevice_SystemSettings__getAppearanceWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    v8 = -[WFAppearanceSettingValue initWithSetting:]([WFAppearanceSettingValue alloc], "initWithSetting:", [a2 currentAppearance]);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a3;
    v7(v6, 0);
  }
}

@end