@interface FKBankConnectInstitutionsProviderResponse
- (FKBankConnectInstitutionsProviderResponse)initWithInstitution:(id)a3 consentStatus:(unint64_t)a4;
@end

@implementation FKBankConnectInstitutionsProviderResponse

- (FKBankConnectInstitutionsProviderResponse)initWithInstitution:(id)a3 consentStatus:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = FKBankConnectInstitutionsProviderResponse;
  v7 = [(FKBankConnectInstitutionsProviderResponse *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    institution = v7->_institution;
    v7->_institution = v8;

    v7->_consentStatus = a4;
  }

  return v7;
}

@end