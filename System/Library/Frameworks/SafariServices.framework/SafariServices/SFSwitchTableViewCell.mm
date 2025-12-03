@interface SFSwitchTableViewCell
- (SFSwitchTableViewCell)initWithReuseIdentifier:(id)identifier;
- (SFSwitchTableViewCellDelegate)delegate;
- (void)_switchViewStateDidChange:(id)change;
- (void)setSwitchOn:(BOOL)on;
@end

@implementation SFSwitchTableViewCell

- (SFSwitchTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = SFSwitchTableViewCell;
  v3 = [(SFSwitchTableViewCell *)&v8 initWithStyle:0 reuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    switchView = v3->_switchView;
    v3->_switchView = v4;

    [(UISwitch *)v3->_switchView addTarget:v3 action:sel__switchViewStateDidChange_ forControlEvents:4096];
    [(SFSwitchTableViewCell *)v3 setAccessoryView:v3->_switchView];
    v6 = v3;
  }

  return v3;
}

- (void)setSwitchOn:(BOOL)on
{
  onCopy = on;
  if ([(UISwitch *)self->_switchView isOn]!= on)
  {
    switchView = self->_switchView;

    [(UISwitch *)switchView setOn:onCopy];
  }
}

- (void)_switchViewStateDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained switchTableViewCell:self didChangeSwitchState:{objc_msgSend(changeCopy, "isOn")}];
  }
}

- (SFSwitchTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end