@interface HKBridgeSetupContactCell
- (HKBridgeSetupContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation HKBridgeSetupContactCell

- (HKBridgeSetupContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = HKBridgeSetupContactCell;
  v4 = [(HKBridgeSetupContactCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKBridgeSetupContactCell *)v4 setAccessoryType:0];
    [(HKBridgeSetupContactCell *)v5 setSelectionStyle:0];
    v6 = BPSTextColor();
    v7 = [(HKBridgeSetupContactCell *)v5 textLabel];
    [v7 setTextColor:v6];

    v8 = BPSDetailTextColor();
    v9 = [(HKBridgeSetupContactCell *)v5 detailTextLabel];
    [v9 setTextColor:v8];

    v10 = BPSForegroundColor();
    [(HKBridgeSetupContactCell *)v5 setBackgroundColor:v10];
  }

  return v5;
}

@end