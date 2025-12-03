@interface AACustodianPasswordResetInformation
- (AACustodianPasswordResetInformation)initWithCoder:(id)coder;
- (AACustodianPasswordResetInformation)initWithRecoveryToken:(id)token ownerAppleID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AACustodianPasswordResetInformation

- (AACustodianPasswordResetInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AACustodianPasswordResetInformation;
  v5 = [(AACustodianPasswordResetInformation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianRecoveryToken"];
    custodianRecoveryToken = v5->_custodianRecoveryToken;
    v5->_custodianRecoveryToken = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ownerAppleID"];
    ownerAppleID = v5->_ownerAppleID;
    v5->_ownerAppleID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  custodianRecoveryToken = self->_custodianRecoveryToken;
  coderCopy = coder;
  [coderCopy encodeObject:custodianRecoveryToken forKey:@"_custodianRecoveryToken"];
  [coderCopy encodeObject:self->_ownerAppleID forKey:@"_ownerAppleID"];
}

- (AACustodianPasswordResetInformation)initWithRecoveryToken:(id)token ownerAppleID:(id)d
{
  tokenCopy = token;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = AACustodianPasswordResetInformation;
  v9 = [(AACustodianPasswordResetInformation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_custodianRecoveryToken, token);
    objc_storeStrong(&v10->_ownerAppleID, d);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AACustodianPasswordResetInformation allocWithZone:?]];
  v5 = [(NSString *)self->_custodianRecoveryToken copy];
  custodianRecoveryToken = v4->_custodianRecoveryToken;
  v4->_custodianRecoveryToken = v5;

  v7 = [(NSString *)self->_ownerAppleID copy];
  ownerAppleID = v4->_ownerAppleID;
  v4->_ownerAppleID = v7;

  return v4;
}

@end