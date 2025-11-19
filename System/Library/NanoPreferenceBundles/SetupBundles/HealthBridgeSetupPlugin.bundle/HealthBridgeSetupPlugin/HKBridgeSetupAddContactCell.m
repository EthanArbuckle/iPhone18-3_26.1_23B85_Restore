@interface HKBridgeSetupAddContactCell
- (HKBridgeSetupAddContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation HKBridgeSetupAddContactCell

- (HKBridgeSetupAddContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = HKBridgeSetupAddContactCell;
  v4 = [(HKBridgeSetupAddContactCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKBridgeSetupAddContactCell *)v4 setAccessoryType:0];
    [(HKBridgeSetupAddContactCell *)v5 setSelectionStyle:2];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"TINKER_ADD_EMERGENCY_CONTACT" value:&stru_C4D8 table:@"Localizable-tinker"];
    v8 = [(HKBridgeSetupAddContactCell *)v5 textLabel];
    [v8 setText:v7];

    v9 = BPSBridgeTintColor();
    v10 = [(HKBridgeSetupAddContactCell *)v5 textLabel];
    [v10 setTextColor:v9];

    v11 = BPSForegroundColor();
    [(HKBridgeSetupAddContactCell *)v5 setBackgroundColor:v11];
  }

  return v5;
}

@end