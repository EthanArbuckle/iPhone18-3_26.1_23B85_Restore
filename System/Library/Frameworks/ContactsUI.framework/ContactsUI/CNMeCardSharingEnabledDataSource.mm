@interface CNMeCardSharingEnabledDataSource
- (CNMeCardSharingEnabledDataSource)initWithSharingEnabled:(BOOL)enabled;
- (CNMeCardSharingEnabledDelegate)delegate;
- (void)buildItems;
- (void)didToggleEnabledSwitch:(id)switch;
- (void)setSharingEnabled:(BOOL)enabled;
@end

@implementation CNMeCardSharingEnabledDataSource

- (CNMeCardSharingEnabledDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didToggleEnabledSwitch:(id)switch
{
  self->_sharingEnabled = [(UISwitch *)self->_enabledSwitch isOn];
  delegate = [(CNMeCardSharingEnabledDataSource *)self delegate];
  [delegate sharingEnabledDataSource:self didChangeEnabledState:self->_sharingEnabled];
}

- (void)buildItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [CNMeCardSharingRowItem alloc];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SHARING_ENABLED_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [(CNMeCardSharingRowItem *)v3 initWithLabel:v5 accessoryView:self->_enabledSwitch];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  items = self->_items;
  self->_items = v7;
}

- (void)setSharingEnabled:(BOOL)enabled
{
  if (self->_sharingEnabled != enabled)
  {
    self->_sharingEnabled = enabled;
    [(UISwitch *)self->_enabledSwitch setOn:?];
  }
}

- (CNMeCardSharingEnabledDataSource)initWithSharingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10.receiver = self;
  v10.super_class = CNMeCardSharingEnabledDataSource;
  v4 = [(CNMeCardSharingEnabledDataSource *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_sharingEnabled = enabledCopy;
    v6 = [objc_alloc(MEMORY[0x1E69DCFD0]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    enabledSwitch = v5->_enabledSwitch;
    v5->_enabledSwitch = v6;

    [(UISwitch *)v5->_enabledSwitch setOn:enabledCopy];
    [(UISwitch *)v5->_enabledSwitch addTarget:v5 action:sel_didToggleEnabledSwitch_ forControlEvents:4096];
    [(CNMeCardSharingEnabledDataSource *)v5 buildItems];
    v8 = v5;
  }

  return v5;
}

@end