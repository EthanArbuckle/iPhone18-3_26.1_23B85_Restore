@interface AMSUINotificationSettingsTableViewCell
- (AMSUINotificationInAppSettingsTableViewCellDelegate)delegate;
- (AMSUINotificationSettingsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setItem:(id)a3;
- (void)switchToggled:(id)a3;
@end

@implementation AMSUINotificationSettingsTableViewCell

- (AMSUINotificationSettingsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = AMSUINotificationSettingsTableViewCell;
  v4 = [(AMSUINotificationSettingsTableViewCell *)&v11 initWithStyle:3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCFD0]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    itemSwitch = v4->_itemSwitch;
    v4->_itemSwitch = v6;

    [(UISwitch *)v4->_itemSwitch addTarget:v4 action:sel_switchToggled_ forControlEvents:4096];
    [(AMSUINotificationSettingsTableViewCell *)v4 setAccessoryView:v4->_itemSwitch];
    v8 = [(AMSUINotificationSettingsTableViewCell *)v4 textLabel];
    [v8 setNumberOfLines:0];

    v9 = [(AMSUINotificationSettingsTableViewCell *)v4 textLabel];
    [v9 setLineBreakMode:0];

    [(AMSUINotificationSettingsTableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)setItem:(id)a3
{
  objc_storeStrong(&self->_item, a3);
  v5 = a3;
  v6 = [v5 title];
  v7 = [(AMSUINotificationSettingsTableViewCell *)self textLabel];
  [v7 setText:v6];

  v8 = [v5 desc];
  v9 = [(AMSUINotificationSettingsTableViewCell *)self detailTextLabel];
  [v9 setText:v8];

  v10 = [v5 isEnabled];
  v11 = [(AMSUINotificationSettingsTableViewCell *)self itemSwitch];
  [v11 setOn:v10];
}

- (void)switchToggled:(id)a3
{
  v4 = [a3 isOn];
  v5 = [(AMSUINotificationSettingsTableViewCell *)self item];
  [v5 setEnabled:v4];

  v6 = [(AMSUINotificationSettingsTableViewCell *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = [(AMSUINotificationSettingsTableViewCell *)self delegate];
    v7 = [(AMSUINotificationSettingsTableViewCell *)self itemSwitch];
    v8 = [(AMSUINotificationSettingsTableViewCell *)self item];
    [v9 notificationInAppSettingsTableViewCellDidToggleValue:v7 forItem:v8];
  }
}

- (AMSUINotificationInAppSettingsTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end