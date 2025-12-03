@interface VMAccountsViewDataSource
- (VMAccountsViewDataSource)init;
- (VMAccountsViewDataSource)initWithAccounts:(id)accounts;
- (id)accountAtIndex:(unint64_t)index;
- (id)accountsView:(id)view buttonForRowAtIndex:(unint64_t)index;
- (unint64_t)numberOfRowsForAccountsView:(id)view;
@end

@implementation VMAccountsViewDataSource

- (VMAccountsViewDataSource)init
{
  [(VMAccountsViewDataSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMAccountsViewDataSource)initWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  v9.receiver = self;
  v9.super_class = VMAccountsViewDataSource;
  v5 = [(VMAccountsViewDataSource *)&v9 init];
  if (v5)
  {
    v6 = [accountsCopy copy];
    accounts = v5->_accounts;
    v5->_accounts = v6;
  }

  return v5;
}

- (id)accountAtIndex:(unint64_t)index
{
  accounts = [(VMAccountsViewDataSource *)self accounts];
  if ([accounts count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [accounts objectAtIndexedSubscript:index];
  }

  return v5;
}

- (id)accountsView:(id)view buttonForRowAtIndex:(unint64_t)index
{
  v6 = +[VMAccountButton accountButton];
  v7 = [(VMAccountsViewDataSource *)self accountAtIndex:index];
  accountDescription = [v7 accountDescription];
  [v6 setTitle:accountDescription forState:0];

  return v6;
}

- (unint64_t)numberOfRowsForAccountsView:(id)view
{
  accounts = [(VMAccountsViewDataSource *)self accounts];
  v4 = [accounts count];

  return v4;
}

@end