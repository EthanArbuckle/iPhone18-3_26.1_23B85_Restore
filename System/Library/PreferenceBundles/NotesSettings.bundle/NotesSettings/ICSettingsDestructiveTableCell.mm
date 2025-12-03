@interface ICSettingsDestructiveTableCell
- (id)textLabel;
@end

@implementation ICSettingsDestructiveTableCell

- (id)textLabel
{
  [(ICSettingsDestructiveTableCell *)self setAlignment:2];
  v6.receiver = self;
  v6.super_class = ICSettingsDestructiveTableCell;
  textLabel = [(ICSettingsDestructiveTableCell *)&v6 textLabel];
  v4 = +[UIColor systemRedColor];
  [textLabel setTextColor:v4];

  return textLabel;
}

@end