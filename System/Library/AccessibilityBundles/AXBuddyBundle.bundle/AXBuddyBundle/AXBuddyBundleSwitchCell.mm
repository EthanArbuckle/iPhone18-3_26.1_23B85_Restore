@interface AXBuddyBundleSwitchCell
- (AXBuddyBundleSwitchCell)initWithCoder:(id)a3;
- (AXBuddyBundleSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AXBuddyBundleSwitchCellDelegate)delegate;
- (id)_commonSwitchCellInit;
- (void)switchChanged:(id)a3;
@end

@implementation AXBuddyBundleSwitchCell

- (id)_commonSwitchCellInit
{
  v3 = objc_opt_new();
  theSwitch = self->_theSwitch;
  self->_theSwitch = v3;

  [(AXBuddyBundleSwitchCell *)self setAccessoryView:self->_theSwitch];
  [(UISwitch *)self->_theSwitch addTarget:self action:"switchChanged:" forControlEvents:4096];
  return self;
}

- (AXBuddyBundleSwitchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AXBuddyBundleSwitchCell;
  v4 = [(AXBuddyBundleTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = [(AXBuddyBundleSwitchCell *)v4 _commonSwitchCellInit];

  return v5;
}

- (AXBuddyBundleSwitchCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXBuddyBundleSwitchCell;
  v3 = [(AXBuddyBundleTableCell *)&v6 initWithCoder:a3];
  v4 = [(AXBuddyBundleSwitchCell *)v3 _commonSwitchCellInit];

  return v4;
}

- (void)switchChanged:(id)a3
{
  v4 = [(AXBuddyBundleSwitchCell *)self delegate];
  [v4 buddyBundleSwitchCell:self switchChangedTo:{-[UISwitch isOn](self->_theSwitch, "isOn")}];
}

- (AXBuddyBundleSwitchCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end