@interface HKBridgeSetupAddContactCell
- (HKBridgeSetupAddContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation HKBridgeSetupAddContactCell

- (HKBridgeSetupAddContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = HKBridgeSetupAddContactCell;
  v4 = [(HKBridgeSetupAddContactCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKBridgeSetupAddContactCell *)v4 setAccessoryType:0];
    [(HKBridgeSetupAddContactCell *)v5 setSelectionStyle:2];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"TINKER_ADD_EMERGENCY_CONTACT" value:&stru_C4D8 table:@"Localizable-tinker"];
    textLabel = [(HKBridgeSetupAddContactCell *)v5 textLabel];
    [textLabel setText:v7];

    v9 = BPSBridgeTintColor();
    textLabel2 = [(HKBridgeSetupAddContactCell *)v5 textLabel];
    [textLabel2 setTextColor:v9];

    v11 = BPSForegroundColor();
    [(HKBridgeSetupAddContactCell *)v5 setBackgroundColor:v11];
  }

  return v5;
}

@end