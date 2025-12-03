@interface USBSetupView
- (USBSetupView)initWithFrame:(CGRect)frame;
@end

@implementation USBSetupView

- (USBSetupView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = USBSetupView;
  v3 = [(SetupView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    model = [currentDevice model];
    uppercaseString = [model uppercaseString];
    v14 = [v10 stringWithFormat:@"%@_%@", @"CONNECT_OVER_USB_STEP_1", uppercaseString];
    v15 = [v9 localizedStringForKey:v14 value:&stru_284EED640 table:@"WirelessModemSettings"];
    [(SetupView *)v3 addStep:v15];

    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = MEMORY[0x277CCACA8];
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    model2 = [currentDevice2 model];
    uppercaseString2 = [model2 uppercaseString];
    v21 = [v17 stringWithFormat:@"%@_%@", @"CONNECT_OVER_USB_STEP_2", uppercaseString2];
    v22 = [v16 localizedStringForKey:v21 value:&stru_284EED640 table:@"WirelessModemSettings"];
    [(SetupView *)v3 addStep:v22];
  }

  return v3;
}

@end