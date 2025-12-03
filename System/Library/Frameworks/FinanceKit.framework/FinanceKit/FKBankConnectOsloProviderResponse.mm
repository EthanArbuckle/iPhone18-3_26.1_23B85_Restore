@interface FKBankConnectOsloProviderResponse
+ (id)makeErrorResponse;
- (BOOL)isEqual:(id)equal;
- (FKBankConnectOsloProviderResponse)initWithDictionary:(id)dictionary;
- (id)balanceForPrimaryIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForError;
- (unint64_t)count;
@end

@implementation FKBankConnectOsloProviderResponse

- (id)balanceForPrimaryIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_primaryAccountIdentifiersToAccounts objectForKey:identifier];
  balance = [v3 balance];

  return balance;
}

- (FKBankConnectOsloProviderResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FKBankConnectOsloProviderResponse;
  v5 = [(FKBankConnectOsloProviderResponse *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_isErrorResponse = 0;
    v7 = [dictionaryCopy copy];
    primaryAccountIdentifiersToAccounts = v6->_primaryAccountIdentifiersToAccounts;
    v6->_primaryAccountIdentifiersToAccounts = v7;
  }

  return v6;
}

- (id)initForError
{
  v6.receiver = self;
  v6.super_class = FKBankConnectOsloProviderResponse;
  v2 = [(FKBankConnectOsloProviderResponse *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_isErrorResponse = 1;
    primaryAccountIdentifiersToAccounts = v2->_primaryAccountIdentifiersToAccounts;
    v2->_primaryAccountIdentifiersToAccounts = MEMORY[0x1E695E0F8];
  }

  return v3;
}

+ (id)makeErrorResponse
{
  initForError = [[FKBankConnectOsloProviderResponse alloc] initForError];

  return initForError;
}

- (unint64_t)count
{
  if (self->_isErrorResponse)
  {
    return 1;
  }

  else
  {
    return [(NSDictionary *)self->_primaryAccountIdentifiersToAccounts count];
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; %@>", objc_opt_class(), self, self->_primaryAccountIdentifiersToAccounts];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FKBankConnectOsloProviderResponse allocWithZone:?]];
  v4->_isErrorResponse = self->_isErrorResponse;
  v5 = [(NSDictionary *)self->_primaryAccountIdentifiersToAccounts copy];
  primaryAccountIdentifiersToAccounts = v4->_primaryAccountIdentifiersToAccounts;
  v4->_primaryAccountIdentifiersToAccounts = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isErrorResponse = self->_isErrorResponse;
      v7 = isErrorResponse == [(FKBankConnectOsloProviderResponse *)v5 isErrorResponse]&& [(NSDictionary *)self->_primaryAccountIdentifiersToAccounts isEqualToDictionary:v5->_primaryAccountIdentifiersToAccounts];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end