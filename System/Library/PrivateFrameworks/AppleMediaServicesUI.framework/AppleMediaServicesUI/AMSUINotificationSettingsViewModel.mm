@interface AMSUINotificationSettingsViewModel
- (AMSUINotificationSettingsViewModelDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)notificationInAppSettingsTableViewCellDidToggleValue:(id)a3 forItem:(id)a4;
@end

@implementation AMSUINotificationSettingsViewModel

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(AMSUINotificationSettingsViewModel *)self sections];
  v5 = [v4 count];
  v6 = v5 + [(AMSUINotificationSettingsViewModel *)self showAllowNotificationsButton];

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 || ![(AMSUINotificationSettingsViewModel *)self showAllowNotificationsButton])
  {
    v8 = [(AMSUINotificationSettingsViewModel *)self sections];
    v9 = [v8 count];
    v10 = a4 - [(AMSUINotificationSettingsViewModel *)self showAllowNotificationsButton];

    if (v9 <= v10)
    {
      v7 = 0;
    }

    else
    {
      v11 = [(AMSUINotificationSettingsViewModel *)self sections];
      v12 = [v11 objectAtIndexedSubscript:{a4 - -[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton")}];
      v13 = [v12 items];
      v7 = [v13 count];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] || !-[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton"))
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"kAMSUINotificationInAppSettingsCellIdentifier" forIndexPath:v7];
    v19 = [(AMSUINotificationSettingsViewModel *)self sections];
    v18 = [v19 objectAtIndexedSubscript:{objc_msgSend(v7, "section") - -[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton")}];

    v20 = [v18 items];
    v21 = [v20 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

    [v8 setDelegate:self];
    [v8 setItem:v21];
  }

  else
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"kAMSUINotificationInAppSettingsButtonCellIdentifier" forIndexPath:v7];
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    if (v10 == 1)
    {
      v12 = @"NOTIFICATIONS_SETTINGS_ALLOW_NOTIFICATIONS_IPAD";
    }

    else
    {
      v12 = @"NOTIFICATIONS_SETTINGS_ALLOW_NOTIFICATIONS_IPHONE";
    }

    v13 = AMSUILocalizedStringFromBundle(v12, 0, v11);
    v14 = [v8 textLabel];
    [v14 setText:v13];

    v15 = [MEMORY[0x1E69DC888] systemBlueColor];
    v16 = [v8 textLabel];
    [v16 setTextColor:v15];

    v17 = [v8 textLabel];
    [v17 setNumberOfLines:0];

    v18 = [v8 textLabel];
    [v18 setLineBreakMode:0];
  }

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ((a4 || !-[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton")) && (v7 = a4 - -[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton"), -[AMSUINotificationSettingsViewModel sections](self, "sections"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7 <= v9))
  {
    v11 = [(AMSUINotificationSettingsViewModel *)self sections];
    v12 = [v11 objectAtIndexedSubscript:{a4 - -[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton")}];

    v10 = [v12 title];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 || ![(AMSUINotificationSettingsViewModel *)self showAllowNotificationsButton])
  {
    v11 = a4 - [(AMSUINotificationSettingsViewModel *)self showAllowNotificationsButton];
    v12 = [(AMSUINotificationSettingsViewModel *)self sections];
    v13 = [v12 count];

    if (v11 > v13)
    {
      v14 = 0;
      goto LABEL_11;
    }

    v15 = [(AMSUINotificationSettingsViewModel *)self sections];
    v9 = [v15 objectAtIndexedSubscript:{a4 - -[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton")}];

    v16 = [v9 footer];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    if (v8 == 1)
    {
      v10 = @"NOTIFICATIONS_SETTINGS_ALLOW_NOTIFICATIONS_FOOTER_APPSTORE_IPAD";
    }

    else
    {
      v10 = @"NOTIFICATIONS_SETTINGS_ALLOW_NOTIFICATIONS_FOOTER_APPSTORE_IPHONE";
    }

    v16 = AMSUILocalizedStringFromBundle(v10, 0, v9);
  }

  v14 = v16;

LABEL_11:

  return v14;
}

- (void)notificationInAppSettingsTableViewCellDidToggleValue:(id)a3 forItem:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(AMSUINotificationSettingsViewModel *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(AMSUINotificationSettingsViewModel *)self delegate];
    [v9 viewModel:self didReceiveValueChange:v10 forItem:v6];
  }
}

- (AMSUINotificationSettingsViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end