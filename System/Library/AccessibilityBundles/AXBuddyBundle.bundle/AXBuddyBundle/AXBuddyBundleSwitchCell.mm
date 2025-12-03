@interface AXBuddyBundleSwitchCell
- (AXBuddyBundleSwitchCell)initWithCoder:(id)coder;
- (AXBuddyBundleSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AXBuddyBundleSwitchCellDelegate)delegate;
- (id)_commonSwitchCellInit;
- (void)switchChanged:(id)changed;
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

- (AXBuddyBundleSwitchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AXBuddyBundleSwitchCell;
  v4 = [(AXBuddyBundleTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  _commonSwitchCellInit = [(AXBuddyBundleSwitchCell *)v4 _commonSwitchCellInit];

  return _commonSwitchCellInit;
}

- (AXBuddyBundleSwitchCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AXBuddyBundleSwitchCell;
  v3 = [(AXBuddyBundleTableCell *)&v6 initWithCoder:coder];
  _commonSwitchCellInit = [(AXBuddyBundleSwitchCell *)v3 _commonSwitchCellInit];

  return _commonSwitchCellInit;
}

- (void)switchChanged:(id)changed
{
  delegate = [(AXBuddyBundleSwitchCell *)self delegate];
  [delegate buddyBundleSwitchCell:self switchChangedTo:{-[UISwitch isOn](self->_theSwitch, "isOn")}];
}

- (AXBuddyBundleSwitchCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end