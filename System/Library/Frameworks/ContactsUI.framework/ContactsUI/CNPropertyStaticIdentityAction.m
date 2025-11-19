@interface CNPropertyStaticIdentityAction
- (CNContactContentViewControllerDelegate)contactDelegate;
- (void)dealloc;
@end

@implementation CNPropertyStaticIdentityAction

- (CNContactContentViewControllerDelegate)contactDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactDelegate);

  return WeakRetained;
}

- (void)dealloc
{
  objc_storeWeak(&self->_contactDelegate, 0);
  v3.receiver = self;
  v3.super_class = CNPropertyStaticIdentityAction;
  [(CNPropertyStaticIdentityAction *)&v3 dealloc];
}

@end