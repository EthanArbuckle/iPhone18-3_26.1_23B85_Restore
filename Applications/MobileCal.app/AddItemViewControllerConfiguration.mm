@interface AddItemViewControllerConfiguration
- (AddItemViewControllerConfiguration)initWithAddItemState:(id)state;
@end

@implementation AddItemViewControllerConfiguration

- (AddItemViewControllerConfiguration)initWithAddItemState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = AddItemViewControllerConfiguration;
  v6 = [(AddItemViewControllerConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_addItemState, state);
  }

  return v7;
}

@end