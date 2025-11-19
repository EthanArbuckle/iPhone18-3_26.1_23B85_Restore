@interface AddItemViewControllerConfiguration
- (AddItemViewControllerConfiguration)initWithAddItemState:(id)a3;
@end

@implementation AddItemViewControllerConfiguration

- (AddItemViewControllerConfiguration)initWithAddItemState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AddItemViewControllerConfiguration;
  v6 = [(AddItemViewControllerConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_addItemState, a3);
  }

  return v7;
}

@end