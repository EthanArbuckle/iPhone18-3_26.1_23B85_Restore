@interface AACustodianRecoveryRequestContext
- (AACustodianRecoveryRequestContext)init;
- (AACustodianRecoveryRequestContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AACustodianRecoveryRequestContext

- (AACustodianRecoveryRequestContext)init
{
  v7.receiver = self;
  v7.super_class = AACustodianRecoveryRequestContext;
  v2 = [(AACustodianRecoveryRequestContext *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    telemetryFlowID = v2->_telemetryFlowID;
    v2->_telemetryFlowID = v4;
  }

  return v2;
}

- (AACustodianRecoveryRequestContext)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = AACustodianRecoveryRequestContext;
  v5 = [(AACustodianRecoveryRequestContext *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ownerAppleID"];
    ownerAppleID = v5->_ownerAppleID;
    v5->_ownerAppleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recoverySessionID"];
    recoverySessionID = v5->_recoverySessionID;
    v5->_recoverySessionID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_code"];
    recoveryCode = v5->_recoveryCode;
    v5->_recoveryCode = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianUUID"];
    custodianUUID = v5->_custodianUUID;
    v5->_custodianUUID = v12;

    v5->_CLIMode = [v4 decodeBoolForKey:@"_cliMode"];
    v5->_dataOnlyRecovery = [v4 decodeBoolForKey:@"_dataOnlyRecovery"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianRecoveryToken"];
    custodianRecoveryToken = v5->_custodianRecoveryToken;
    v5->_custodianRecoveryToken = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordBuildVersion"];
    recordBuildVersion = v5->_recordBuildVersion;
    v5->_recordBuildVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v20;

    v5->_isAccountRecovery = [v4 decodeBoolForKey:@"_isAccountRecovery"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  ownerAppleID = self->_ownerAppleID;
  v5 = a3;
  [v5 encodeObject:ownerAppleID forKey:@"_ownerAppleID"];
  [v5 encodeObject:self->_recoverySessionID forKey:@"_recoverySessionID"];
  [v5 encodeObject:self->_recoveryCode forKey:@"_code"];
  [v5 encodeObject:self->_custodianUUID forKey:@"_custodianUUID"];
  [v5 encodeBool:self->_CLIMode forKey:@"_cliMode"];
  [v5 encodeBool:self->_dataOnlyRecovery forKey:@"_dataOnlyRecovery"];
  [v5 encodeObject:self->_custodianRecoveryToken forKey:@"_custodianRecoveryToken"];
  [v5 encodeObject:self->_recordBuildVersion forKey:@"_recordBuildVersion"];
  [v5 encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
  [v5 encodeObject:self->_altDSID forKey:@"_altDSID"];
  [v5 encodeBool:self->_isAccountRecovery forKey:@"_isAccountRecovery"];
}

- (id)copyWithZone:(_NSZone *)a3
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