@interface CNContactDataSourceSafeDelegate
- (CNContactDataSourceDelegate)delegate;
- (CNContactDataSourceSafeDelegate)initWithDelegate:(id)delegate;
- (void)contactDataSourceDidChange:(id)change;
@end

@implementation CNContactDataSourceSafeDelegate

- (CNContactDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactDataSourceDidChange:(id)change
{
  changeCopy = change;
  delegate = [(CNContactDataSourceSafeDelegate *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactDataSourceSafeDelegate *)self delegate];
    [delegate2 contactDataSourceDidChange:changeCopy];
  }
}

- (CNContactDataSourceSafeDelegate)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = CNContactDataSourceSafeDelegate;
  v5 = [(CNContactDataSourceSafeDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

@end