@interface AAUISwitchTableViewCell
- (AAUISwitchTableViewCell)initWithCoder:(id)a3;
- (AAUISwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AAUISwitchTableViewCellDelegate)delegate;
- (void)_delegate_switchTableViewCellDidUpdateValue;
@end

@implementation AAUISwitchTableViewCell

- (AAUISwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AAUISwitchTableViewCell;
  v4 = [(AAUISwitchTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    _AAUISwitchTableViewCellInit(v4);
  }

  return v5;
}

- (AAUISwitchTableViewCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUISwitchTableViewCell;
  v3 = [(AAUISwitchTableViewCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    _AAUISwitchTableViewCellInit(v3);
  }

  return v4;
}

- (void)_delegate_switchTableViewCellDidUpdateValue
{
  v3 = [(AAUISwitchTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 switchTableViewCellDidUpdateValue:self];
  }
}

- (AAUISwitchTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end