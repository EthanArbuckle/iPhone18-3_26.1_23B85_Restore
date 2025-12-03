@interface EKEventPrivacyLevelDetailItem
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)_switchChanged:(id)changed;
- (void)setEvent:(id)event reminder:(id)reminder store:(id)store;
@end

@implementation EKEventPrivacyLevelDetailItem

- (void)setEvent:(id)event reminder:(id)reminder store:(id)store
{
  v6.receiver = self;
  v6.super_class = EKEventPrivacyLevelDetailItem;
  [(EKEventDetailItem *)&v6 setEvent:event reminder:reminder store:store];
  self->_switchStateIsOn = [(EKEvent *)self->super._event privacyLevel]!= 0;
  [(UISwitch *)self->_control setOn:?];
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  if (!self->_cell)
  {
    v4 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    cell = self->_cell;
    self->_cell = &v4->super;

    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Private" value:&stru_1F4EF6790 table:0];
    textLabel = [(UITableViewCell *)self->_cell textLabel];
    [textLabel setText:v7];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    textLabel2 = [(UITableViewCell *)self->_cell textLabel];
    [textLabel2 setTextColor:labelColor];

    [(UITableViewCell *)self->_cell setSelectionStyle:0];
    v11 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    control = self->_control;
    self->_control = v11;

    [(UISwitch *)self->_control addTarget:self action:sel__switchChanged_ forControlEvents:4096];
    [(UITableViewCell *)self->_cell setAccessoryView:self->_control];
  }

  [(UISwitch *)self->_control setOn:self->_switchStateIsOn];
  v13 = self->_cell;

  return v13;
}

- (void)_switchChanged:(id)changed
{
  v17 = *MEMORY[0x1E69E9840];
  isOn = [changed isOn];
  self->_switchStateIsOn = isOn;
  if (isOn)
  {
    calendar = [(EKEvent *)self->super._event calendar];
    source = [calendar source];
    preferredEventPrivateValue = [source preferredEventPrivateValue];
  }

  else
  {
    preferredEventPrivateValue = 0;
  }

  [(EKEvent *)self->super._event setPrivacyLevel:preferredEventPrivateValue];
  v8 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
  {
    event = self->super._event;
    v10 = v8;
    privacyLevelString = [(EKEvent *)event privacyLevelString];
    v12 = self->super._event;
    v13 = 138412546;
    v14 = privacyLevelString;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_INFO, "Setting the event's privacy level to [%@].  Event: [%@]", &v13, 0x16u);
  }

  [(EKEventDetailItem *)self notifySubitemDidSave:0];
  [(EKEventDetailItem *)self editItemViewController:0 didCompleteWithAction:2];
}

@end