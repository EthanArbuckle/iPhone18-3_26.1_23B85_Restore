@interface _COSSOSSwitchTableViewCell
+ (NSString)reuseID;
- (_COSSOSSwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (_COSSOSSwitchTableViewCellDelegate)delegate;
- (void)_switchValueDidChange:(id)a3;
- (void)prepareForReuse;
@end

@implementation _COSSOSSwitchTableViewCell

- (_COSSOSSwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = _COSSOSSwitchTableViewCell;
  v5 = [(_COSSOSSwitchTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(_COSSOSSwitchTableViewCell *)v5 control];
    [v7 addTarget:v6 action:"_switchValueDidChange:" forEvents:4096];
  }

  return v6;
}

+ (NSString)reuseID
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_switchValueDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 switchCellDidChangeValue:self];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _COSSOSSwitchTableViewCell;
  [(_COSSOSSwitchTableViewCell *)&v4 prepareForReuse];
  v3 = [(_COSSOSSwitchTableViewCell *)self titleLabel];
  [v3 setText:0];

  [(_COSSOSSwitchTableViewCell *)self setIcon:0];
}

- (_COSSOSSwitchTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end