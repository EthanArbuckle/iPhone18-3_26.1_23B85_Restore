@interface USBSetupView
- (USBSetupView)initWithFrame:(CGRect)a3;
@end

@implementation USBSetupView

- (USBSetupView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = USBSetupView;
  v3 = [(SetupView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"CONNECT_OVER_USB_LABEL" value:&stru_284EED640 table:@"WirelessModemSettings"];
    [(SetupView *)v3 setTitle:v5];

    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:2 scale:30.0];
    v8 = [v6 _systemImageNamed:@"usb" withConfiguration:v7];
    [(SetupView *)v3 setIcon:v8];

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 model];
    v13 = [v12 uppercaseString];
    v14 = [v10 stringWithFormat:@"%@_%@", @"CONNECT_OVER_USB_STEP_1", v13];
    v15 = [v9 localizedStringForKey:v14 value:&stru_284EED640 table:@"WirelessModemSettings"];
    [(SetupView *)v3 addStep:v15];

    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277D75418] currentDevice];
    v19 = [v18 model];
    v20 = [v19 uppercaseString];
    v21 = [v17 stringWithFormat:@"%@_%@", @"CONNECT_OVER_USB_STEP_2", v20];
    v22 = [v16 localizedStringForKey:v21 value:&stru_284EED640 table:@"WirelessModemSettings"];
    [(SetupView *)v3 addStep:v22];
  }

  return v3;
}

@end