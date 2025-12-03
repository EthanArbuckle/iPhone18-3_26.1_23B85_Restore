@interface FKBankConnectInstitutionsProviderResponse
- (FKBankConnectInstitutionsProviderResponse)initWithInstitution:(id)institution consentStatus:(unint64_t)status;
@end

@implementation FKBankConnectInstitutionsProviderResponse

- (FKBankConnectInstitutionsProviderResponse)initWithInstitution:(id)institution consentStatus:(unint64_t)status
{
  institutionCopy = institution;
  v11.receiver = self;
  v11.super_class = FKBankConnectInstitutionsProviderResponse;
  v7 = [(FKBankConnectInstitutionsProviderResponse *)&v11 init];
  if (v7)
  {
    v8 = [institutionCopy copy];
    institution = v7->_institution;
    v7->_institution = v8;

    v7->_consentStatus = status;
  }

  return v7;
}

@end