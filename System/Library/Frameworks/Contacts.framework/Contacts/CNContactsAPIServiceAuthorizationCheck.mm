@interface CNContactsAPIServiceAuthorizationCheck
- (BOOL)isAuthorized:(id)authorized;
- (CNContactsAPIServiceAuthorizationCheck)initWithLog:(id)log;
- (CNContactsAPIServiceAuthorizationCheck)initWithLog:(id)log tccServices:(id)services;
@end

@implementation CNContactsAPIServiceAuthorizationCheck

- (CNContactsAPIServiceAuthorizationCheck)initWithLog:(id)log
{
  v4 = MEMORY[0x1E6996850];
  logCopy = log;
  defaultTCC = [v4 defaultTCC];
  v7 = [(CNContactsAPIServiceAuthorizationCheck *)self initWithLog:logCopy tccServices:defaultTCC];

  return v7;
}

- (CNContactsAPIServiceAuthorizationCheck)initWithLog:(id)log tccServices:(id)services
{
  logCopy = log;
  servicesCopy = services;
  v13.receiver = self;
  v13.super_class = CNContactsAPIServiceAuthorizationCheck;
  v9 = [(CNContactsAPIServiceAuthorizationCheck *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_log, log);
    objc_storeStrong(&v10->_tccServices, services);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isAuthorized:(id)authorized
{
  authorizedCopy = authorized;
  v5 = [[_CNContactsAPIServiceAuthorizationChecker alloc] initWithConnection:authorizedCopy log:self->_log tccServices:self->_tccServices];

  [(_CNContactsAPIServiceAuthorizationChecker *)v5 setAllowContactProvidersWithoutTCCApproval:[(CNContactsAPIServiceAuthorizationCheck *)self requireTCCApprovalForContactProviders]^ 1];
  LOBYTE(self) = [(_CNContactsAPIServiceAuthorizationChecker *)v5 check];

  return self;
}

@end