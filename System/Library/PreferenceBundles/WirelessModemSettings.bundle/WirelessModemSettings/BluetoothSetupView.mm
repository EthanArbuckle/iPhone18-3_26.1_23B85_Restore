@interface BluetoothSetupView
- (BluetoothSetupView)initWithFrame:(CGRect)frame;
@end

@implementation BluetoothSetupView

- (BluetoothSetupView)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = BluetoothSetupView;
  v3 = [(SetupView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"CONNECT_OVER_BLUETOOTH_LABEL" value:&stru_284EED640 table:@"WirelessModemSettings"];
    [(SetupView *)v3 setTitle:v5];

    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:2 scale:30.0];
    v8 = [v6 _systemImageNamed:@"bluetooth" withConfiguration:v7];
    [(SetupView *)v3 setIcon:v8];

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = MEMORY[0x277CCACA8];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    model = [currentDevice model];
    uppercaseString = [model uppercaseString];
    v14 = [v10 stringWithFormat:@"%@_%@", @"CONNECT_OVER_BLUETOOTH_STEP_1", uppercaseString];
    v15 = [v9 localizedStringForKey:v14 value:&stru_284EED640 table:@"WirelessModemSettings"];
    [(SetupView *)v3 addStep:v15];

    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = MEMORY[0x277CCACA8];
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    model2 = [currentDevice2 model];
    uppercaseString2 = [model2 uppercaseString];
    v21 = [v17 stringWithFormat:@"%@_%@", @"CONNECT_OVER_BLUETOOTH_STEP_2", uppercaseString2];
    v22 = [v16 localizedStringForKey:v21 value:&stru_284EED640 table:@"WirelessModemSettings"];
    [(SetupView *)v3 addStep:v22];

    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = MEMORY[0x277CCACA8];
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    model3 = [currentDevice3 model];
    uppercaseString3 = [model3 uppercaseString];
    v28 = [v24 stringWithFormat:@"%@_%@", @"CONNECT_OVER_BLUETOOTH_STEP_3", uppercaseString3];
    v29 = [v23 localizedStringForKey:v28 value:&stru_284EED640 table:@"WirelessModemSettings"];
    [(SetupView *)v3 addStep:v29];
  }

  return v3;
}

@end