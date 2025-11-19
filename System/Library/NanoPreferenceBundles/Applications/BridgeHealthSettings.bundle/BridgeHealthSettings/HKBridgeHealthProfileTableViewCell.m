@interface HKBridgeHealthProfileTableViewCell
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (HKBridgeHealthProfileTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation HKBridgeHealthProfileTableViewCell

- (HKBridgeHealthProfileTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = HKBridgeHealthProfileTableViewCell;
  v4 = [(HKBridgeHealthProfileTableViewCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKBridgeHealthProfileTableViewCell *)v4 setAccessoryType:0];
    [(HKBridgeHealthProfileTableViewCell *)v5 setEditingAccessoryType:0];
    [(HKBridgeHealthProfileTableViewCell *)v5 setSelectionStyle:0];
    v6 = +[UIColor whiteColor];
    v7 = [(HKBridgeHealthProfileTableViewCell *)v5 textLabel];
    [v7 setTextColor:v6];

    v8 = +[UIColor grayColor];
    v9 = [(HKBridgeHealthProfileTableViewCell *)v5 detailTextLabel];
    [v9 setTextColor:v8];

    v10 = [(HKBridgeHealthProfileTableViewCell *)v5 textLabel];
    [v10 setNumberOfLines:0];

    v11 = [(HKBridgeHealthProfileTableViewCell *)v5 textLabel];
    [v11 setLineBreakMode:0];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v10.receiver = self;
  v10.super_class = HKBridgeHealthProfileTableViewCell;
  [(HKBridgeHealthProfileTableViewCell *)&v10 becomeFirstResponder];
  v3 = [(HKBridgeHealthProfileTableViewCell *)self textLabel];
  v4 = [v3 text];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CARDIO_FITNESS_RELATED_MEDICATIONS" value:&stru_188B0 table:@"Localizable"];

  if (v4 != v6)
  {
    v7 = BPSBridgeTintColor();
    v8 = [(HKBridgeHealthProfileTableViewCell *)self detailTextLabel];
    [v8 setTextColor:v7];
  }

  return 1;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = HKBridgeHealthProfileTableViewCell;
  [(HKBridgeHealthProfileTableViewCell *)&v6 resignFirstResponder];
  v3 = +[UIColor grayColor];
  v4 = [(HKBridgeHealthProfileTableViewCell *)self detailTextLabel];
  [v4 setTextColor:v3];

  return 1;
}

@end