@interface HKBridgeSetupContactCell
- (HKBridgeSetupContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation HKBridgeSetupContactCell

- (HKBridgeSetupContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = HKBridgeSetupContactCell;
  v4 = [(HKBridgeSetupContactCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKBridgeSetupContactCell *)v4 setAccessoryType:0];
    [(HKBridgeSetupContactCell *)v5 setSelectionStyle:0];
    v6 = BPSTextColor();
    textLabel = [(HKBridgeSetupContactCell *)v5 textLabel];
    [textLabel setTextColor:v6];

    v8 = BPSDetailTextColor();
    detailTextLabel = [(HKBridgeSetupContactCell *)v5 detailTextLabel];
    [detailTextLabel setTextColor:v8];

    v10 = BPSForegroundColor();
    [(HKBridgeSetupContactCell *)v5 setBackgroundColor:v10];
  }

  return v5;
}

@end