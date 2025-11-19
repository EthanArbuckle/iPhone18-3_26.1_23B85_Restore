@interface FKBankConnectAuthorizationSessionProvider
- (FKBankConnectAuthorizationSessionProvider)init;
@end

@implementation FKBankConnectAuthorizationSessionProvider

- (FKBankConnectAuthorizationSessionProvider)init
{
  v10.receiver = self;
  v10.super_class = FKBankConnectAuthorizationSessionProvider;
  v2 = [(FKBankConnectAuthorizationSessionProvider *)&v10 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v9 = 0;
  v3 = [_TtC10FinanceKit39BankConnectAuthorizationSessionProvider makeProviderAndReturnError:&v9];
  v4 = v9;
  wrappedProvider = v2->_wrappedProvider;
  v2->_wrappedProvider = v3;

  if (v2->_wrappedProvider)
  {

LABEL_4:
    v6 = v2;
    goto LABEL_8;
  }

  v7 = os_log_create("com.apple.FinanceKit", "BankConnect");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(FKBankConnectInstitutionsProvider *)v4 init];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

@end