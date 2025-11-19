@interface VMAccountsViewDataSource
- (VMAccountsViewDataSource)init;
- (VMAccountsViewDataSource)initWithAccounts:(id)a3;
- (id)accountAtIndex:(unint64_t)a3;
- (id)accountsView:(id)a3 buttonForRowAtIndex:(unint64_t)a4;
- (unint64_t)numberOfRowsForAccountsView:(id)a3;
@end

@implementation VMAccountsViewDataSource

- (VMAccountsViewDataSource)init
{
  [(VMAccountsViewDataSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMAccountsViewDataSource)initWithAccounts:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VMAccountsViewDataSource;
  v5 = [(VMAccountsViewDataSource *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    accounts = v5->_accounts;
    v5->_accounts = v6;
  }

  return v5;
}

- (id)accountAtIndex:(unint64_t)a3
{
  v4 = [(VMAccountsViewDataSource *)self accounts];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)accountsView:(id)a3 buttonForRowAtIndex:(unint64_t)a4
{
  v6 = +[VMAccountButton accountButton];
  v7 = [(VMAccountsViewDataSource *)self accountAtIndex:a4];
  v8 = [v7 accountDescription];
  [v6 setTitle:v8 forState:0];

  return v6;
}

- (unint64_t)numberOfRowsForAccountsView:(id)a3
{
  v3 = [(VMAccountsViewDataSource *)self accounts];
  v4 = [v3 count];

  return v4;
}

@end