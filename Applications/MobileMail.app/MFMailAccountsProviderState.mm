@interface MFMailAccountsProviderState
- (id)initFromProvider:(id)a3;
@end

@implementation MFMailAccountsProviderState

- (id)initFromProvider:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MFMailAccountsProviderState;
  v5 = [(MFMailAccountsProviderState *)&v16 init];
  if (v5)
  {
    v5->_numberOfActiveAccounts = [v4 numberOfActiveAccounts];
    v5->_numberOfInactiveAccounts = [v4 numberOfInactiveAccounts];
    v6 = [v4 _displayedAccountsIdentifiers];
    v7 = [v6 copy];
    displayedAccountsIdentifiers = v5->_displayedAccountsIdentifiers;
    v5->_displayedAccountsIdentifiers = v7;

    v9 = [v4 _focusedAccountsIdentifiers];
    v10 = [v9 copy];
    focusedAccountsIdentifiers = v5->_focusedAccountsIdentifiers;
    v5->_focusedAccountsIdentifiers = v10;

    v12 = [v4 mailAccounts];
    v13 = [v12 copy];
    mailAccounts = v5->_mailAccounts;
    v5->_mailAccounts = v13;
  }

  return v5;
}

@end