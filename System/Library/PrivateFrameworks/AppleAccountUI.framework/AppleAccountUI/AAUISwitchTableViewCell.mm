@interface AAUISwitchTableViewCell
- (AAUISwitchTableViewCell)initWithCoder:(id)coder;
- (AAUISwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AAUISwitchTableViewCellDelegate)delegate;
- (void)_delegate_switchTableViewCellDidUpdateValue;
@end

@implementation AAUISwitchTableViewCell

- (AAUISwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AAUISwitchTableViewCell;
  v4 = [(AAUISwitchTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    _AAUISwitchTableViewCellInit(v4);
  }

  return v5;
}

- (AAUISwitchTableViewCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AAUISwitchTableViewCell;
  v3 = [(AAUISwitchTableViewCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    _AAUISwitchTableViewCellInit(v3);
  }

  return v4;
}

- (void)_delegate_switchTableViewCellDidUpdateValue
{
  delegate = [(AAUISwitchTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate switchTableViewCellDidUpdateValue:self];
  }
}

- (AAUISwitchTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end