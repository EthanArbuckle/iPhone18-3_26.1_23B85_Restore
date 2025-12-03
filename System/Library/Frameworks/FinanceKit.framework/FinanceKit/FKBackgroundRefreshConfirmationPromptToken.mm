@interface FKBackgroundRefreshConfirmationPromptToken
- (BOOL)isEqual:(id)equal;
- (FKBackgroundRefreshConfirmationPromptToken)initWithFullyQualifiedAccountIdentifier:(id)identifier sequenceNumber:(int64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKBackgroundRefreshConfirmationPromptToken

- (FKBackgroundRefreshConfirmationPromptToken)initWithFullyQualifiedAccountIdentifier:(id)identifier sequenceNumber:(int64_t)number
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = FKBackgroundRefreshConfirmationPromptToken;
  v7 = [(FKBackgroundRefreshConfirmationPromptToken *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    fqaid = v7->_fqaid;
    v7->_fqaid = v8;

    v7->_sequenceNumber = number;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FKBackgroundRefreshConfirmationPromptToken alloc];
  fqaid = self->_fqaid;
  sequenceNumber = self->_sequenceNumber;

  return [(FKBackgroundRefreshConfirmationPromptToken *)v4 initWithFullyQualifiedAccountIdentifier:fqaid sequenceNumber:sequenceNumber];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_fqaid];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sequenceNumber];
  [v3 safelyAddObject:v4];

  v5 = FKCombinedHash(17, v3);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_fqaid, v6->_fqaid))
    {
      v7 = self->_sequenceNumber == v6->_sequenceNumber;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end