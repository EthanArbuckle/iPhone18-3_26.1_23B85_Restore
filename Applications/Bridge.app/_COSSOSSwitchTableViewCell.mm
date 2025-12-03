@interface _COSSOSSwitchTableViewCell
+ (NSString)reuseID;
- (_COSSOSSwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (_COSSOSSwitchTableViewCellDelegate)delegate;
- (void)_switchValueDidChange:(id)change;
- (void)prepareForReuse;
@end

@implementation _COSSOSSwitchTableViewCell

- (_COSSOSSwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = _COSSOSSwitchTableViewCell;
  v5 = [(_COSSOSSwitchTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    control = [(_COSSOSSwitchTableViewCell *)v5 control];
    [control addTarget:v6 action:"_switchValueDidChange:" forEvents:4096];
  }

  return v6;
}

+ (NSString)reuseID
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_switchValueDidChange:(id)change
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
  titleLabel = [(_COSSOSSwitchTableViewCell *)self titleLabel];
  [titleLabel setText:0];

  [(_COSSOSSwitchTableViewCell *)self setIcon:0];
}

- (_COSSOSSwitchTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end