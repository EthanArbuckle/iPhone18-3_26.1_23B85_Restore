@interface AACustodianPasswordResetInformation
- (AACustodianPasswordResetInformation)initWithCoder:(id)a3;
- (AACustodianPasswordResetInformation)initWithRecoveryToken:(id)a3 ownerAppleID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AACustodianPasswordResetInformation

- (AACustodianPasswordResetInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AACustodianPasswordResetInformation;
  v5 = [(AACustodianPasswordResetInformation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianRecoveryToken"];
    custodianRecoveryToken = v5->_custodianRecoveryToken;
    v5->_custodianRecoveryToken = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ownerAppleID"];
    ownerAppleID = v5->_ownerAppleID;
    v5->_ownerAppleID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  custodianRecoveryToken = self->_custodianRecoveryToken;
  v5 = a3;
  [v5 encodeObject:custodianRecoveryToken forKey:@"_custodianRecoveryToken"];
  [v5 encodeObject:self->_ownerAppleID forKey:@"_ownerAppleID"];
}

- (AACustodianPasswordResetInformation)initWithRecoveryToken:(id)a3 ownerAppleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AACustodianPasswordResetInformation;
  v9 = [(AACustodianPasswordResetInformation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_custodianRecoveryToken, a3);
    objc_storeStrong(&v10->_ownerAppleID, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
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