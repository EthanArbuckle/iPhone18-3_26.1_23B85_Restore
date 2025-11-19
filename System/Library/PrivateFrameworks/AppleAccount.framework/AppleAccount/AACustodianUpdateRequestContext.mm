@interface AACustodianUpdateRequestContext
- (AACustodianUpdateRequestContext)initWithCoder:(id)a3;
- (AACustodianUpdateRequestContext)initWithCustodianID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AACustodianUpdateRequestContext

- (AACustodianUpdateRequestContext)initWithCustodianID:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AACustodianUpdateRequestContext;
  v6 = [(AACustodianUpdateRequestContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_custodianID, a3);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    telemetryFlowID = v7->_telemetryFlowID;
    v7->_telemetryFlowID = v9;
  }

  return v7;
}

- (AACustodianUpdateRequestContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AACustodianUpdateRequestContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianID"];
    custodianID = v5->_custodianID;
    v5->_custodianID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  custodianID = self->_custodianID;
  v5 = a3;
  [v5 encodeObject:custodianID forKey:@"_custodianID"];
  [v5 encodeObject:self->_altDSID forKey:@"_altDSID"];
  [v5 encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
}

@end