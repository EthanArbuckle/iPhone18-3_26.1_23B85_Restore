@interface SFSwitchTableViewCell
- (SFSwitchTableViewCell)initWithReuseIdentifier:(id)a3;
- (SFSwitchTableViewCellDelegate)delegate;
- (void)_switchViewStateDidChange:(id)a3;
- (void)setSwitchOn:(BOOL)a3;
@end

@implementation SFSwitchTableViewCell

- (SFSwitchTableViewCell)initWithReuseIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = SFSwitchTableViewCell;
  v3 = [(SFSwitchTableViewCell *)&v8 initWithStyle:0 reuseIdentifier:a3];
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

- (void)setSwitchOn:(BOOL)a3
{
  v3 = a3;
  if ([(UISwitch *)self->_switchView isOn]!= a3)
  {
    switchView = self->_switchView;

    [(UISwitch *)switchView setOn:v3];
  }
}

- (void)_switchViewStateDidChange:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained switchTableViewCell:self didChangeSwitchState:{objc_msgSend(v5, "isOn")}];
  }
}

- (SFSwitchTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end