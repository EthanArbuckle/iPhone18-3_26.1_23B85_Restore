@interface FKBankConnectAccountsProviderResponse
- (FKBankConnectAccountsProviderResponse)initWithAccount:(id)a3 consentStatus:(unint64_t)a4 institution:(id)a5;
@end

@implementation FKBankConnectAccountsProviderResponse

- (FKBankConnectAccountsProviderResponse)initWithAccount:(id)a3 consentStatus:(unint64_t)a4 institution:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = FKBankConnectAccountsProviderResponse;
  v10 = [(FKBankConnectAccountsProviderResponse *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    account = v10->_account;
    v10->_account = v11;

    v10->_consentStatus = a4;
    v13 = [v9 copy];
    institution = v10->_institution;
    v10->_institution = v13;
  }

  return v10;
}

@end