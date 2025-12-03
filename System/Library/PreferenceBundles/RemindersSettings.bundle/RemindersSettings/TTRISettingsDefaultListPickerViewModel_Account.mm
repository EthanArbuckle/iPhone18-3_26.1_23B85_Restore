@interface TTRISettingsDefaultListPickerViewModel_Account
- (TTRISettingsDefaultListPickerViewModel_Account)initWithAccount:(id)account;
@end

@implementation TTRISettingsDefaultListPickerViewModel_Account

- (TTRISettingsDefaultListPickerViewModel_Account)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = TTRISettingsDefaultListPickerViewModel_Account;
  v5 = [(TTRISettingsDefaultListPickerViewModel_Account *)&v9 init];
  if (v5)
  {
    displayName = [accountCopy displayName];
    [(TTRISettingsDefaultListPickerViewModel_Account *)v5 setName:displayName];

    v7 = +[NSArray array];
    [(TTRISettingsDefaultListPickerViewModel_Account *)v5 setLists:v7];
  }

  return v5;
}

@end