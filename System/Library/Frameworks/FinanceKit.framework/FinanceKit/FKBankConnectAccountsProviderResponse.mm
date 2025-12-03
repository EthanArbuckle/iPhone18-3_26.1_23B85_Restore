@interface FKBankConnectAccountsProviderResponse
- (FKBankConnectAccountsProviderResponse)initWithAccount:(id)account consentStatus:(unint64_t)status institution:(id)institution;
@end

@implementation FKBankConnectAccountsProviderResponse

- (FKBankConnectAccountsProviderResponse)initWithAccount:(id)account consentStatus:(unint64_t)status institution:(id)institution
{
  accountCopy = account;
  institutionCopy = institution;
  v16.receiver = self;
  v16.super_class = FKBankConnectAccountsProviderResponse;
  v10 = [(FKBankConnectAccountsProviderResponse *)&v16 init];
  if (v10)
  {
    v11 = [accountCopy copy];
    account = v10->_account;
    v10->_account = v11;

    v10->_consentStatus = status;
    v13 = [institutionCopy copy];
    institution = v10->_institution;
    v10->_institution = v13;
  }

  return v10;
}

@end