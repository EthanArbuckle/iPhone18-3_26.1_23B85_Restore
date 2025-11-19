@interface ICSettingsDestructiveTableCell
- (id)textLabel;
@end

@implementation ICSettingsDestructiveTableCell

- (id)textLabel
{
  [(ICSettingsDestructiveTableCell *)self setAlignment:2];
  v6.receiver = self;
  v6.super_class = ICSettingsDestructiveTableCell;
  v3 = [(ICSettingsDestructiveTableCell *)&v6 textLabel];
  v4 = +[UIColor systemRedColor];
  [v3 setTextColor:v4];

  return v3;
}

@end