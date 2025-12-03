@interface AMSUINotificationSettingsTableViewCell
- (AMSUINotificationInAppSettingsTableViewCellDelegate)delegate;
- (AMSUINotificationSettingsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setItem:(id)item;
- (void)switchToggled:(id)toggled;
@end

@implementation AMSUINotificationSettingsTableViewCell

- (AMSUINotificationSettingsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = AMSUINotificationSettingsTableViewCell;
  v4 = [(AMSUINotificationSettingsTableViewCell *)&v11 initWithStyle:3 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCFD0]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    itemSwitch = v4->_itemSwitch;
    v4->_itemSwitch = v6;

    [(UISwitch *)v4->_itemSwitch addTarget:v4 action:sel_switchToggled_ forControlEvents:4096];
    [(AMSUINotificationSettingsTableViewCell *)v4 setAccessoryView:v4->_itemSwitch];
    textLabel = [(AMSUINotificationSettingsTableViewCell *)v4 textLabel];
    [textLabel setNumberOfLines:0];

    textLabel2 = [(AMSUINotificationSettingsTableViewCell *)v4 textLabel];
    [textLabel2 setLineBreakMode:0];

    [(AMSUINotificationSettingsTableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)setItem:(id)item
{
  objc_storeStrong(&self->_item, item);
  itemCopy = item;
  title = [itemCopy title];
  textLabel = [(AMSUINotificationSettingsTableViewCell *)self textLabel];
  [textLabel setText:title];

  desc = [itemCopy desc];
  detailTextLabel = [(AMSUINotificationSettingsTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:desc];

  isEnabled = [itemCopy isEnabled];
  itemSwitch = [(AMSUINotificationSettingsTableViewCell *)self itemSwitch];
  [itemSwitch setOn:isEnabled];
}

- (void)switchToggled:(id)toggled
{
  isOn = [toggled isOn];
  item = [(AMSUINotificationSettingsTableViewCell *)self item];
  [item setEnabled:isOn];

  delegate = [(AMSUINotificationSettingsTableViewCell *)self delegate];
  LOBYTE(item) = objc_opt_respondsToSelector();

  if (item)
  {
    delegate2 = [(AMSUINotificationSettingsTableViewCell *)self delegate];
    itemSwitch = [(AMSUINotificationSettingsTableViewCell *)self itemSwitch];
    item2 = [(AMSUINotificationSettingsTableViewCell *)self item];
    [delegate2 notificationInAppSettingsTableViewCellDidToggleValue:itemSwitch forItem:item2];
  }
}

- (AMSUINotificationInAppSettingsTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end