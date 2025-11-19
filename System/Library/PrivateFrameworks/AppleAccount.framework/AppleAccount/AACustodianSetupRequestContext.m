@interface AACustodianSetupRequestContext
- (AACustodianSetupRequestContext)initWithCoder:(id)a3;
- (AACustodianSetupRequestContext)initWithHandle:(id)a3 authResults:(id)a4;
- (void)_parseAuthResults:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AACustodianSetupRequestContext

- (AACustodianSetupRequestContext)initWithHandle:(id)a3 authResults:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = AACustodianSetupRequestContext;
  v9 = [(AACustodianSetupRequestContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handle, a3);
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    telemetryFlowID = v10->_telemetryFlowID;
    v10->_telemetryFlowID = v12;

    [(AACustodianSetupRequestContext *)v10 _parseAuthResults:v8];
  }

  return v10;
}

- (AACustodianSetupRequestContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AACustodianSetupRequestContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianSetupToken"];
    custodianSetupToken = v5->_custodianSetupToken;
    v5->_custodianSetupToken = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactID"];
    contactID = v5->_contactID;
    v5->_contactID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v5 = a3;
  [v5 encodeObject:handle forKey:@"_handle"];
  [v5 encodeObject:self->_custodianSetupToken forKey:@"_custodianSetupToken"];
  [v5 encodeObject:self->_contactID forKey:@"_contactID"];
  [v5 encodeObject:self->_altDSID forKey:@"_altDSID"];
  [v5 encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
}

- (void)_parseAuthResults:(id)a3
{
  v6 = [a3 objectForKeyedSubscript:*MEMORY[0x1E698DB98]];
  v4 = [v6 objectForKeyedSubscript:@"com.apple.gs.idms.custodian.add"];
  custodianSetupToken = self->_custodianSetupToken;
  self->_custodianSetupToken = v4;
}

@end