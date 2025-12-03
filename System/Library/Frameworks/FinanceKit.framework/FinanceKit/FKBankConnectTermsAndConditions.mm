@interface FKBankConnectTermsAndConditions
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldNotifyAboutChanges;
- (FKBankConnectTermsAndConditions)initWithIdentifier:(id)identifier publishedAt:(id)at reviewedAt:(id)reviewedAt inEffectOn:(id)on;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKBankConnectTermsAndConditions

- (FKBankConnectTermsAndConditions)initWithIdentifier:(id)identifier publishedAt:(id)at reviewedAt:(id)reviewedAt inEffectOn:(id)on
{
  identifierCopy = identifier;
  atCopy = at;
  reviewedAtCopy = reviewedAt;
  onCopy = on;
  v24.receiver = self;
  v24.super_class = FKBankConnectTermsAndConditions;
  v14 = [(FKBankConnectTermsAndConditions *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [atCopy copy];
    publishedAt = v14->_publishedAt;
    v14->_publishedAt = v17;

    v19 = [reviewedAtCopy copy];
    reviewedAt = v14->_reviewedAt;
    v14->_reviewedAt = v19;

    v21 = [onCopy copy];
    inEffectOn = v14->_inEffectOn;
    v14->_inEffectOn = v21;
  }

  return v14;
}

- (BOOL)shouldNotifyAboutChanges
{
  inEffectOn = self->_inEffectOn;
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [(NSDate *)inEffectOn compare:v4];

  if (v5 == -1)
  {
    return 0;
  }

  publishedAt = self->_publishedAt;
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [(NSDate *)publishedAt compare:v7];

  if (v8 != -1)
  {
    return 0;
  }

  if (self->_reviewedAt)
  {
    return [(NSDate *)self->_publishedAt compare:?]== NSOrderedDescending;
  }

  return 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(FKBankConnectTermsAndConditions);
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSDate *)self->_publishedAt copyWithZone:zone];
  publishedAt = v5->_publishedAt;
  v5->_publishedAt = v8;

  v10 = [(NSDate *)self->_reviewedAt copyWithZone:zone];
  reviewedAt = v5->_reviewedAt;
  v5->_reviewedAt = v10;

  v12 = [(NSDate *)self->_inEffectOn copyWithZone:zone];
  inEffectOn = v5->_inEffectOn;
  v5->_inEffectOn = v12;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_publishedAt];
  [v3 safelyAddObject:self->_reviewedAt];
  [v3 safelyAddObject:self->_inEffectOn];
  v4 = FKCombinedHash(17, v3);

  return v4;
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
    if (FKEqualObjects(self->_identifier, v6[1]) && FKEqualObjects(self->_publishedAt, v6[2]) && FKEqualObjects(self->_reviewedAt, v6[3]))
    {
      v7 = FKEqualObjects(self->_inEffectOn, v6[4]);
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