@interface HDClinicalIngestionTaskPerAccountInfo
- (HDClinicalIngestionTaskPerAccountInfo)initWithAccountIdentifier:(id)identifier;
@end

@implementation HDClinicalIngestionTaskPerAccountInfo

- (HDClinicalIngestionTaskPerAccountInfo)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HDClinicalIngestionTaskPerAccountInfo;
  v5 = [(HDClinicalIngestionTaskPerAccountInfo *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;
  }

  return v5;
}

@end