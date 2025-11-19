@interface SFSettingsAlertStepper
@end

@implementation SFSettingsAlertStepper

_SFSettingsAlertButton *__66___SFSettingsAlertStepper_initUsingResetButton_usingTopSeparator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(_SFSettingsAlertButton);
  v7 = [(_SFSettingsAlertButton *)v6 textLabel];
  [v7 setTextAlignment:1];

  [(_SFSettingsAlertControl *)v6 setDefaultBackgroundMode:a3];
  [(_SFSettingsAlertButton *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_SFSettingsAlertButton *)v6 addTarget:*(a1 + 32) action:a2 forControlEvents:0x2000];
  [*(a1 + 32) addSubview:v6];

  return v6;
}

@end