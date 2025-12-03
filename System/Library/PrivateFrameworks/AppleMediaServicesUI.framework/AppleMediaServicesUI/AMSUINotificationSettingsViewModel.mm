@interface AMSUINotificationSettingsViewModel
- (AMSUINotificationSettingsViewModelDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)notificationInAppSettingsTableViewCellDidToggleValue:(id)value forItem:(id)item;
@end

@implementation AMSUINotificationSettingsViewModel

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(AMSUINotificationSettingsViewModel *)self sections];
  v5 = [sections count];
  v6 = v5 + [(AMSUINotificationSettingsViewModel *)self showAllowNotificationsButton];

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section || ![(AMSUINotificationSettingsViewModel *)self showAllowNotificationsButton])
  {
    sections = [(AMSUINotificationSettingsViewModel *)self sections];
    v9 = [sections count];
    v10 = section - [(AMSUINotificationSettingsViewModel *)self showAllowNotificationsButton];

    if (v9 <= v10)
    {
      v7 = 0;
    }

    else
    {
      sections2 = [(AMSUINotificationSettingsViewModel *)self sections];
      v12 = [sections2 objectAtIndexedSubscript:{section - -[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton")}];
      items = [v12 items];
      v7 = [items count];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] || !-[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton"))
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"kAMSUINotificationInAppSettingsCellIdentifier" forIndexPath:pathCopy];
    sections = [(AMSUINotificationSettingsViewModel *)self sections];
    textLabel4 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section") - -[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton")}];

    items = [textLabel4 items];
    v21 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    [v8 setDelegate:self];
    [v8 setItem:v21];
  }

  else
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"kAMSUINotificationInAppSettingsButtonCellIdentifier" forIndexPath:pathCopy];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    if (userInterfaceIdiom == 1)
    {
      v12 = @"NOTIFICATIONS_SETTINGS_ALLOW_NOTIFICATIONS_IPAD";
    }

    else
    {
      v12 = @"NOTIFICATIONS_SETTINGS_ALLOW_NOTIFICATIONS_IPHONE";
    }

    v13 = AMSUILocalizedStringFromBundle(v12, 0, v11);
    textLabel = [v8 textLabel];
    [textLabel setText:v13];

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    textLabel2 = [v8 textLabel];
    [textLabel2 setTextColor:systemBlueColor];

    textLabel3 = [v8 textLabel];
    [textLabel3 setNumberOfLines:0];

    textLabel4 = [v8 textLabel];
    [textLabel4 setLineBreakMode:0];
  }

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ((section || !-[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton")) && (v7 = section - -[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton"), -[AMSUINotificationSettingsViewModel sections](self, "sections"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7 <= v9))
  {
    sections = [(AMSUINotificationSettingsViewModel *)self sections];
    v12 = [sections objectAtIndexedSubscript:{section - -[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton")}];

    title = [v12 title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section || ![(AMSUINotificationSettingsViewModel *)self showAllowNotificationsButton])
  {
    v11 = section - [(AMSUINotificationSettingsViewModel *)self showAllowNotificationsButton];
    sections = [(AMSUINotificationSettingsViewModel *)self sections];
    v13 = [sections count];

    if (v11 > v13)
    {
      v14 = 0;
      goto LABEL_11;
    }

    sections2 = [(AMSUINotificationSettingsViewModel *)self sections];
    v9 = [sections2 objectAtIndexedSubscript:{section - -[AMSUINotificationSettingsViewModel showAllowNotificationsButton](self, "showAllowNotificationsButton")}];

    footer = [v9 footer];
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    if (userInterfaceIdiom == 1)
    {
      v10 = @"NOTIFICATIONS_SETTINGS_ALLOW_NOTIFICATIONS_FOOTER_APPSTORE_IPAD";
    }

    else
    {
      v10 = @"NOTIFICATIONS_SETTINGS_ALLOW_NOTIFICATIONS_FOOTER_APPSTORE_IPHONE";
    }

    footer = AMSUILocalizedStringFromBundle(v10, 0, v9);
  }

  v14 = footer;

LABEL_11:

  return v14;
}

- (void)notificationInAppSettingsTableViewCellDidToggleValue:(id)value forItem:(id)item
{
  valueCopy = value;
  itemCopy = item;
  delegate = [(AMSUINotificationSettingsViewModel *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(AMSUINotificationSettingsViewModel *)self delegate];
    [delegate2 viewModel:self didReceiveValueChange:valueCopy forItem:itemCopy];
  }
}

- (AMSUINotificationSettingsViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end