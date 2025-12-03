@interface AACustodianRecoveryRequestContext
- (AACustodianRecoveryRequestContext)init;
- (AACustodianRecoveryRequestContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AACustodianRecoveryRequestContext

- (AACustodianRecoveryRequestContext)init
{
  v7.receiver = self;
  v7.super_class = AACustodianRecoveryRequestContext;
  v2 = [(AACustodianRecoveryRequestContext *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    telemetryFlowID = v2->_telemetryFlowID;
    v2->_telemetryFlowID = uUIDString;
  }

  return v2;
}

- (AACustodianRecoveryRequestContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = AACustodianRecoveryRequestContext;
  v5 = [(AACustodianRecoveryRequestContext *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ownerAppleID"];
    ownerAppleID = v5->_ownerAppleID;
    v5->_ownerAppleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recoverySessionID"];
    recoverySessionID = v5->_recoverySessionID;
    v5->_recoverySessionID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_code"];
    recoveryCode = v5->_recoveryCode;
    v5->_recoveryCode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianUUID"];
    custodianUUID = v5->_custodianUUID;
    v5->_custodianUUID = v12;

    v5->_CLIMode = [coderCopy decodeBoolForKey:@"_cliMode"];
    v5->_dataOnlyRecovery = [coderCopy decodeBoolForKey:@"_dataOnlyRecovery"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianRecoveryToken"];
    custodianRecoveryToken = v5->_custodianRecoveryToken;
    v5->_custodianRecoveryToken = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recordBuildVersion"];
    recordBuildVersion = v5->_recordBuildVersion;
    v5->_recordBuildVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v20;

    v5->_isAccountRecovery = [coderCopy decodeBoolForKey:@"_isAccountRecovery"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  ownerAppleID = self->_ownerAppleID;
  coderCopy = coder;
  [coderCopy encodeObject:ownerAppleID forKey:@"_ownerAppleID"];
  [coderCopy encodeObject:self->_recoverySessionID forKey:@"_recoverySessionID"];
  [coderCopy encodeObject:self->_recoveryCode forKey:@"_code"];
  [coderCopy encodeObject:self->_custodianUUID forKey:@"_custodianUUID"];
  [coderCopy encodeBool:self->_CLIMode forKey:@"_cliMode"];
  [coderCopy encodeBool:self->_dataOnlyRecovery forKey:@"_dataOnlyRecovery"];
  [coderCopy encodeObject:self->_custodianRecoveryToken forKey:@"_custodianRecoveryToken"];
  [coderCopy encodeObject:self->_recordBuildVersion forKey:@"_recordBuildVersion"];
  [coderCopy encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
  [coderCopy encodeBool:self->_isAccountRecovery forKey:@"_isAccountRecovery"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AACustodianRecoveryRequestContext allocWithZone:?]];
  v5 = [(NSString *)self->_ownerAppleID copy];
  ownerAppleID = v4->_ownerAppleID;
  v4->_ownerAppleID = v5;

  v7 = [(NSString *)self->_recoverySessionID copy];
  recoverySessionID = v4->_recoverySessionID;
  v4->_recoverySessionID = v7;

  v9 = [(NSString *)self->_recoveryCode copy];
  recoveryCode = v4->_recoveryCode;
  v4->_recoveryCode = v9;

  v11 = [(NSUUID *)self->_custodianUUID copy];
  custodianUUID = v4->_custodianUUID;
  v4->_custodianUUID = v11;

  v4->_CLIMode = self->_CLIMode;
  v4->_dataOnlyRecovery = self->_dataOnlyRecovery;
  v13 = [(NSString *)self->_custodianRecoveryToken copy];
  custodianRecoveryToken = v4->_custodianRecoveryToken;
  v4->_custodianRecoveryToken = v13;

  v15 = [(NSString *)self->_recordBuildVersion copy];
  recordBuildVersion = v4->_recordBuildVersion;
  v4->_recordBuildVersion = v15;

  v17 = [(NSString *)self->_telemetryFlowID copy];
  telemetryFlowID = v4->_telemetryFlowID;
  v4->_telemetryFlowID = v17;

  v19 = [(NSString *)self->_altDSID copy];
  altDSID = v4->_altDSID;
  v4->_altDSID = v19;

  v4->_isAccountRecovery = self->_isAccountRecovery;
  return v4;
}

- (id)description
{
  v2 = @"NO";
  if (self->_dataOnlyRecovery)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_isAccountRecovery)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"CustodianRecoveryRequestContext with ownerAppleID: %@ \nsessionID: %@ \nrecoveryCode: %@ \ncustodianUUID: %@ \nrecoveryToken: %@ \ncliMode: %i \ndataOnly: %@, recordBuildVersion: %@, flowID: %@, altDSID: %{sensitive}@, isAccountRecovery: %@", self->_ownerAppleID, self->_recoverySessionID, self->_recoveryCode, self->_custodianUUID, self->_custodianRecoveryToken, self->_CLIMode, v3, *&self->_recordBuildVersion, self->_altDSID, v2];
}

@end