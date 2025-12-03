@interface EKEventPrivacyLevelInlineEditItem
- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (BOOL)shouldAppear;
- (double)footerHeightForWidth:(double)width;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)footerTitle;
- (void)_switchChanged:(id)changed;
- (void)refreshFromCalendarItemAndStore;
@end

@implementation EKEventPrivacyLevelInlineEditItem

- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints
{
  constraintsCopy = constraints;
  source = [constraintsCopy source];
  constraints = [source constraints];
  supportsPrivateEvents = [constraints supportsPrivateEvents];

  sharingStatus = [constraintsCopy sharingStatus];
  if (sharingStatus == 2)
  {
    return 0;
  }

  else
  {
    return supportsPrivateEvents;
  }
}

- (BOOL)shouldAppear
{
  event = [(EKEventEditItem *)self event];
  allowsPrivacyLevelModifications = [event allowsPrivacyLevelModifications];

  return allowsPrivacyLevelModifications;
}

- (void)refreshFromCalendarItemAndStore
{
  v14 = *MEMORY[0x1E69E9840];
  event = [(EKEventEditItem *)self event];
  privacyLevel = [event privacyLevel];

  self->_originalSwitchState = privacyLevel != 0;
  self->_currentSwitchState = privacyLevel != 0;
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

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v4 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  v5 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  [v5 addTarget:self action:sel__switchChanged_ forControlEvents:4096];
  [v5 setOn:self->_originalSwitchState];
  [(EKUITableViewCell *)v4 setAccessoryView:v5];
  v6 = EventKitUIBundle();
  v7 = [v6 localizedStringForKey:@"Private" value:&stru_1F4EF6790 table:0];
  textLabel = [(EKUITableViewCell *)v4 textLabel];
  [textLabel setText:v7];

  return v4;
}

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_currentSwitchState != self->_originalSwitchState)
  {
    if (self->_currentSwitchState)
    {
      event = [(EKEventEditItem *)self event];
      calendar = [event calendar];
      source = [calendar source];
      preferredEventPrivateValue = [source preferredEventPrivateValue];
    }

    else
    {
      preferredEventPrivateValue = 0;
    }

    event2 = [(EKEventEditItem *)self event];
    [event2 setPrivacyLevel:preferredEventPrivateValue];

    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      event3 = [(EKEventEditItem *)self event];
      privacyLevelString = [event3 privacyLevelString];
      event4 = [(EKEventEditItem *)self event];
      v15 = 138412546;
      v16 = privacyLevelString;
      v17 = 2112;
      v18 = event4;
      _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_INFO, "Setting the event's privacy level to [%@].  Event: [%@]", &v15, 0x16u);
    }

    self->_originalSwitchState = self->_currentSwitchState;
  }

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  return 1;
}

- (double)footerHeightForWidth:(double)width
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

- (void)_switchChanged:(id)changed
{
  v13 = *MEMORY[0x1E69E9840];
  self->_currentSwitchState = [changed isOn];
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