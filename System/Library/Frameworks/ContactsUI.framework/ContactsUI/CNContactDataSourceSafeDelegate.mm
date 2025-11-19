@interface CNContactDataSourceSafeDelegate
- (CNContactDataSourceDelegate)delegate;
- (CNContactDataSourceSafeDelegate)initWithDelegate:(id)a3;
- (void)contactDataSourceDidChange:(id)a3;
@end

@implementation CNContactDataSourceSafeDelegate

- (CNContactDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactDataSourceDidChange:(id)a3
{
  v7 = a3;
  v4 = [(CNContactDataSourceSafeDelegate *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactDataSourceSafeDelegate *)self delegate];
    [v6 contactDataSourceDidChange:v7];
  }
}

- (CNContactDataSourceSafeDelegate)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNContactDataSourceSafeDelegate;
  v5 = [(CNContactDataSourceSafeDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = v6;
  }

  return v6;
}

@end