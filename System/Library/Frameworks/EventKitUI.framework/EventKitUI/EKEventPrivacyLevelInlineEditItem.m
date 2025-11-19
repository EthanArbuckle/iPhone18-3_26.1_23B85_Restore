@interface EKEventPrivacyLevelInlineEditItem
- (BOOL)canBeConfiguredForCalendarConstraints:(id)a3;
- (BOOL)saveAndDismissWithForce:(BOOL)a3;
- (BOOL)shouldAppear;
- (double)footerHeightForWidth:(double)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)footerTitle;
- (void)_switchChanged:(id)a3;
- (void)refreshFromCalendarItemAndStore;
@end

@implementation EKEventPrivacyLevelInlineEditItem

- (BOOL)canBeConfiguredForCalendarConstraints:(id)a3
{
  v3 = a3;
  v4 = [v3 source];
  v5 = [v4 constraints];
  v6 = [v5 supportsPrivateEvents];

  v7 = [v3 sharingStatus];
  if (v7 == 2)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (BOOL)shouldAppear
{
  v2 = [(EKEventEditItem *)self event];
  v3 = [v2 allowsPrivacyLevelModifications];

  return v3;
}

- (void)refreshFromCalendarItemAndStore
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(EKEventEditItem *)self event];
  v4 = [v3 privacyLevel];

  self->_originalSwitchState = v4 != 0;
  self->_currentSwitchState = v4 != 0;
  v5 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = objc_opt_class();
    if (self->_currentSwitchState)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v9 = v7;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "Refreshed [%@].  Original toggle state: [%@]", &v10, 0x16u);
  }
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v4 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  v5 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  [v5 addTarget:self action:sel__switchChanged_ forControlEvents:4096];
  [v5 setOn:self->_originalSwitchState];
  [(EKUITableViewCell *)v4 setAccessoryView:v5];
  v6 = EventKitUIBundle();
  v7 = [v6 localizedStringForKey:@"Private" value:&stru_1F4EF6790 table:0];
  v8 = [(EKUITableViewCell *)v4 textLabel];
  [v8 setText:v7];

  return v4;
}

- (BOOL)saveAndDismissWithForce:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_currentSwitchState != self->_originalSwitchState)
  {
    if (self->_currentSwitchState)
    {
      v4 = [(EKEventEditItem *)self event];
      v5 = [v4 calendar];
      v6 = [v5 source];
      v7 = [v6 preferredEventPrivateValue];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(EKEventEditItem *)self event];
    [v8 setPrivacyLevel:v7];

    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [(EKEventEditItem *)self event];
      v12 = [v11 privacyLevelString];
      v13 = [(EKEventEditItem *)self event];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_INFO, "Setting the event's privacy level to [%@].  Event: [%@]", &v15, 0x16u);
    }

    self->_originalSwitchState = self->_currentSwitchState;
  }

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  return 1;
}

- (double)footerHeightForWidth:(double)a3
{
  result = *MEMORY[0x1E69DE3D0];
  if (!self->_currentSwitchState)
  {
    return 0.0;
  }

  return result;
}

- (id)footerTitle
{
  if (self->_currentSwitchState)
  {
    v2 = EventKitUIBundle();
    v3 = [v2 localizedStringForKey:@"The title value:location table:{and details of private events are not visible to others sharing this calendar.", &stru_1F4EF6790, 0}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_switchChanged:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  self->_currentSwitchState = [a3 isOn];
  [(EKCalendarItemEditItem *)self notifyDidStartEditing];
  [(EKCalendarItemEditItem *)self notifyDidEndEditing];
  v4 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    if (self->_currentSwitchState)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v8 = v6;
    _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_INFO, "[%@] toggle switched to [%@].", &v9, 0x16u);
  }
}

@end