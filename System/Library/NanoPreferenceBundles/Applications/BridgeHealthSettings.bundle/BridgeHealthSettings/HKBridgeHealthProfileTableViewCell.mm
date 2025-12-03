@interface HKBridgeHealthProfileTableViewCell
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (HKBridgeHealthProfileTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation HKBridgeHealthProfileTableViewCell

- (HKBridgeHealthProfileTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = HKBridgeHealthProfileTableViewCell;
  v4 = [(HKBridgeHealthProfileTableViewCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKBridgeHealthProfileTableViewCell *)v4 setAccessoryType:0];
    [(HKBridgeHealthProfileTableViewCell *)v5 setEditingAccessoryType:0];
    [(HKBridgeHealthProfileTableViewCell *)v5 setSelectionStyle:0];
    v6 = +[UIColor whiteColor];
    textLabel = [(HKBridgeHealthProfileTableViewCell *)v5 textLabel];
    [textLabel setTextColor:v6];

    v8 = +[UIColor grayColor];
    detailTextLabel = [(HKBridgeHealthProfileTableViewCell *)v5 detailTextLabel];
    [detailTextLabel setTextColor:v8];

    textLabel2 = [(HKBridgeHealthProfileTableViewCell *)v5 textLabel];
    [textLabel2 setNumberOfLines:0];

    textLabel3 = [(HKBridgeHealthProfileTableViewCell *)v5 textLabel];
    [textLabel3 setLineBreakMode:0];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v10.receiver = self;
  v10.super_class = HKBridgeHealthProfileTableViewCell;
  [(HKBridgeHealthProfileTableViewCell *)&v10 becomeFirstResponder];
  textLabel = [(HKBridgeHealthProfileTableViewCell *)self textLabel];
  text = [textLabel text];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CARDIO_FITNESS_RELATED_MEDICATIONS" value:&stru_188B0 table:@"Localizable"];

  if (text != v6)
  {
    v7 = BPSBridgeTintColor();
    detailTextLabel = [(HKBridgeHealthProfileTableViewCell *)self detailTextLabel];
    [detailTextLabel setTextColor:v7];
  }

  return 1;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = HKBridgeHealthProfileTableViewCell;
  [(HKBridgeHealthProfileTableViewCell *)&v6 resignFirstResponder];
  v3 = +[UIColor grayColor];
  detailTextLabel = [(HKBridgeHealthProfileTableViewCell *)self detailTextLabel];
  [detailTextLabel setTextColor:v3];

  return 1;
}

@end