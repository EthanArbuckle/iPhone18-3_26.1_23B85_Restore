@interface CNContactsAPIServiceAuthorizationCheck
- (BOOL)isAuthorized:(id)a3;
- (CNContactsAPIServiceAuthorizationCheck)initWithLog:(id)a3;
- (CNContactsAPIServiceAuthorizationCheck)initWithLog:(id)a3 tccServices:(id)a4;
@end

@implementation CNContactsAPIServiceAuthorizationCheck

- (CNContactsAPIServiceAuthorizationCheck)initWithLog:(id)a3
{
  v4 = MEMORY[0x1E6996850];
  v5 = a3;
  v6 = [v4 defaultTCC];
  v7 = [(CNContactsAPIServiceAuthorizationCheck *)self initWithLog:v5 tccServices:v6];

  return v7;
}

- (CNContactsAPIServiceAuthorizationCheck)initWithLog:(id)a3 tccServices:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactsAPIServiceAuthorizationCheck;
  v9 = [(CNContactsAPIServiceAuthorizationCheck *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_log, a3);
    objc_storeStrong(&v10->_tccServices, a4);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isAuthorized:(id)a3
{
  v4 = a3;
  v5 = [[_CNContactsAPIServiceAuthorizationChecker alloc] initWithConnection:v4 log:self->_log tccServices:self->_tccServices];

  [(_CNContactsAPIServiceAuthorizationChecker *)v5 setAllowContactProvidersWithoutTCCApproval:[(CNContactsAPIServiceAuthorizationCheck *)self requireTCCApprovalForContactProviders]^ 1];
  LOBYTE(self) = [(_CNContactsAPIServiceAuthorizationChecker *)v5 check];

  return self;
}

@end