@interface CNContactDowntimeWhitelistCell
- (CNContactDowntimeWhitelistCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CNContactDowntimeWhitelistCell

- (CNContactDowntimeWhitelistCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = CNContactDowntimeWhitelistCell;
  v4 = [(CNContactCell *)&v14 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(CNContactDowntimeWhitelistCell *)v4 textLabel];
    [textLabel setNumberOfLines:4];

    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"DOWNTIME_WARNING" value:&stru_1F0CE7398 table:@"Localized"];
    textLabel2 = [(CNContactDowntimeWhitelistCell *)v5 textLabel];
    [textLabel2 setText:v8];

    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    textLabel3 = [(CNContactDowntimeWhitelistCell *)v5 textLabel];
    [textLabel3 setFont:v10];

    v12 = v5;
  }

  return v5;
}

@end