@interface TTRISettingsDefaultListPickerViewModel_Account
- (TTRISettingsDefaultListPickerViewModel_Account)initWithAccount:(id)a3;
@end

@implementation TTRISettingsDefaultListPickerViewModel_Account

- (TTRISettingsDefaultListPickerViewModel_Account)initWithAccount:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TTRISettingsDefaultListPickerViewModel_Account;
  v5 = [(TTRISettingsDefaultListPickerViewModel_Account *)&v9 init];
  if (v5)
  {
    v6 = [v4 displayName];
    [(TTRISettingsDefaultListPickerViewModel_Account *)v5 setName:v6];

    v7 = +[NSArray array];
    [(TTRISettingsDefaultListPickerViewModel_Account *)v5 setLists:v7];
  }

  return v5;
}

@end