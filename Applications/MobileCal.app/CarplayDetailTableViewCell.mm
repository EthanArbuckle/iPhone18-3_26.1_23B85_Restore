@interface CarplayDetailTableViewCell
+ (id)reuseIdentifier;
- (DetailTableViewCellDelegate)delegate;
- (void)cellWasTapped;
- (void)updateWithEvent:(id)event;
@end

@implementation CarplayDetailTableViewCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (DetailTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateWithEvent:(id)event
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)cellWasTapped
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end