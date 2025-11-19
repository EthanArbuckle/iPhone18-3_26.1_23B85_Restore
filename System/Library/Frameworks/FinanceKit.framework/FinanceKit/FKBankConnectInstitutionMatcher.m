@interface FKBankConnectInstitutionMatcher
- (FKBankConnectInstitutionMatcher)init;
@end

@implementation FKBankConnectInstitutionMatcher

- (FKBankConnectInstitutionMatcher)init
{
  v6.receiver = self;
  v6.super_class = FKBankConnectInstitutionMatcher;
  v2 = [(FKBankConnectInstitutionMatcher *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC10FinanceKit29BankConnectInstitutionMatcher);
    wrappedMatcher = v2->_wrappedMatcher;
    v2->_wrappedMatcher = v3;
  }

  return v2;
}

@end